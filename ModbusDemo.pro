#-------------------------------------------------
#
# Project created by QtCreator 2015-09-15T16:24:18
#
#-------------------------------------------------

QT       += core gui
include(qextserialport/src/qextserialport.pri)
TARGET = ModbusDemo
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    modbusmanager.cpp \
    ztool.cpp \
    mythread.cpp

HEADERS  += mainwindow.h \
    modbusmanager.h \
    ztool.h \
    mythread.h

FORMS    += mainwindow.ui



DEFINES += ARM
#DEFINES += X86



contains( DEFINES, ARM ) {


    mytarget.commands = scp ./${TARGET} root@192.168.1.243:/
}


mytarget.target = a

mytarget.depends = all



QMAKE_EXTRA_TARGETS += mytarget