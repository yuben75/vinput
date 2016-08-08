#!/bin/bash


#################################
# ./makeall.sh  x86
# ./makeall.sh  arm          
#################################

TARGET=$1


if [ "$TARGET" == "arm" ]; then
	export PATH=$PATH:/home/dikey/yocto/fsl-release-bsp/build/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi
	echo "build arm"
	make -f Makefile.arm
	#make -f Makefile.arm clean
fi


if [ "$TARGET" == "x86" ]; then
	echo "build x86"
	#make -f Makefile.x86
	make -f Makefile.x86 clean
fi




