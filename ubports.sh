# Ubport GSI installer Script
# erfanoabdi @ xda-developers
OUTFD=/proc/self/fd/$1;

# ui_print <text>
ui_print() { echo -e "ui_print $1\nui_print" > $OUTFD; }

## GSI install

cp -fpr /data/ubports/data/* /data/;

mkdir /r;

mv /data/system.img /data/android-rootfs.img

ui_print "Resizing rootfs to 8GB";
e2fsck -fy /data/rootfs.img
resize2fs /data/rootfs.img 8G

## end install
