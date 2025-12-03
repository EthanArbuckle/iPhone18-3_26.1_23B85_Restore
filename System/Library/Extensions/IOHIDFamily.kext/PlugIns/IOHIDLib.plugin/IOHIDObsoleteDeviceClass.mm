@interface IOHIDObsoleteDeviceClass
- (IOHIDObsoleteDeviceClass)init;
- (IOHIDOutputTransactionInterface)allocOutputTransaction;
- (IOHIDQueueInterface)allocQueue;
- (int)copyMatchingElements:(__CFDictionary *)elements element:(const __CFArray *)element;
- (int)queryInterface:(id)interface outInterface:(void *)outInterface;
- (int)setInterruptReportHandlerCallback:(void *)callback reportBufferSize:(unsigned int)size callback:(void *)a5 callbackTarget:(void *)target callbackRefcon:(void *)refcon;
- (int)setRemovalCallback:(void *)callback removalTarget:(void *)target removalRefcon:(void *)refcon;
- (void)dealloc;
@end

@implementation IOHIDObsoleteDeviceClass

- (int)queryInterface:(id)interface outInterface:(void *)outInterface
{
  v5 = *&interface.var8;
  v6 = *&interface.var0;
  v8 = CFUUIDCreateFromUUIDBytes(0, interface);
  v9 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v8, v9) || (v10 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), CFEqual(v8, v10)))
  {
    v11 = 16;
LABEL_4:
    *outInterface = self + v11;
    CFRetain(self);
    Interface_outInterface = 0;
    goto LABEL_5;
  }

  v14 = CFUUIDGetConstantUUIDWithBytes(0, 0x78u, 0xBDu, 0x42u, 0xCu, 0x6Fu, 0x14u, 0x11u, 0xD4u, 0x94u, 0x74u, 0, 5u, 2u, 0x8Fu, 0x18u, 0xD5u);
  if (CFEqual(v8, v14) || (v15 = CFUUIDGetConstantUUIDWithBytes(0, 0xB7u, 0xAu, 0xBFu, 0x31u, 0x16u, 0xD5u, 0x11u, 0xD7u, 0xABu, 0x35u, 0, 3u, 0x93u, 0x99u, 0x2Eu, 0x38u), CFEqual(v8, v15)))
  {
    v11 = 176;
    goto LABEL_4;
  }

  v16 = CFUUIDGetConstantUUIDWithBytes(0, 0x81u, 0x38u, 0x62u, 0x9Eu, 0x6Fu, 0x14u, 0x11u, 0xD4u, 0x97u, 0xEu, 0, 5u, 2u, 0x8Fu, 0x18u, 0xD5u);
  if (CFEqual(v8, v16))
  {
    v17 = IOHIDObsoleteQueueClass;
LABEL_15:
    v19 = [v17 alloc];
    v21 = objc_msgSend_initWithDevice_(v19, v20, self);
    Interface_outInterface = objc_msgSend_queryInterface_outInterface_(v21, v22, v6, v5, outInterface);

    goto LABEL_5;
  }

  v18 = CFUUIDGetConstantUUIDWithBytes(0, 0x80u, 0xCDu, 0xCCu, 0, 0x75u, 0x5Du, 0x11u, 0xD4u, 0x80u, 0xEFu, 0, 5u, 2u, 0x8Fu, 0x18u, 0xD5u);
  if (CFEqual(v8, v18))
  {
    v17 = IOHIDOutputTransactionClass;
    goto LABEL_15;
  }

  Interface_outInterface = -2147483644;
LABEL_5:
  if (v8)
  {
    CFRelease(v8);
  }

  return Interface_outInterface;
}

- (int)setRemovalCallback:(void *)callback removalTarget:(void *)target removalRefcon:(void *)refcon
{
  self->_removalTarget = target;
  self->_removalRefcon = refcon;
  self->_removalCallback = callback;
  if (self->_notification)
  {
    return 0;
  }

  else
  {
    return IOServiceAddInterestNotification(self->_notifyPort, self->super._service, "IOGeneralInterest", sub_29D3F9098, self, &self->_notification);
  }
}

- (IOHIDQueueInterface)allocQueue
{
  v6 = 0;
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0x81u, 0x38u, 0x62u, 0x9Eu, 0x6Fu, 0x14u, 0x11u, 0xD4u, 0x97u, 0xEu, 0, 5u, 2u, 0x8Fu, 0x18u, 0xD5u);
  v4 = CFUUIDGetUUIDBytes(v3);
  objc_msgSend_queryInterface_outInterface_(self, *&v4.byte8, *&v4.byte0, *&v4.byte8, &v6);
  return v6;
}

- (IOHIDOutputTransactionInterface)allocOutputTransaction
{
  v6 = 0;
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0x80u, 0xCDu, 0xCCu, 0, 0x75u, 0x5Du, 0x11u, 0xD4u, 0x80u, 0xEFu, 0, 5u, 2u, 0x8Fu, 0x18u, 0xD5u);
  v4 = CFUUIDGetUUIDBytes(v3);
  objc_msgSend_queryInterface_outInterface_(self, *&v4.byte8, *&v4.byte0, *&v4.byte8, &v6);
  return v6;
}

- (int)copyMatchingElements:(__CFDictionary *)elements element:(const __CFArray *)element
{
  v5.receiver = self;
  v5.super_class = IOHIDObsoleteDeviceClass;
  return [(IOHIDDeviceClass *)&v5 copyMatchingElements:elements elements:element options:1];
}

- (int)setInterruptReportHandlerCallback:(void *)callback reportBufferSize:(unsigned int)size callback:(void *)a5 callbackTarget:(void *)target callbackRefcon:(void *)refcon
{
  self->_reportCallbackTarget = target;
  self->_reportCallbackRefcon = refcon;
  self->_reportCallback = a5;
  return MEMORY[0x2A1C70FE8](self, sel_setInputReportCallback_reportLength_callback_context_options_, callback);
}

- (IOHIDObsoleteDeviceClass)init
{
  v10.receiver = self;
  v10.super_class = IOHIDObsoleteDeviceClass;
  v2 = [(IOHIDDeviceClass *)&v10 init];
  if (v2)
  {
    v3 = malloc_type_malloc(0xB0uLL, 0x80040F50BA72EuLL);
    v2->_interface = v3;
    vtbl = v2->super.super.super._vtbl;
    Release = vtbl->Release;
    v6 = *&vtbl->QueryInterface;
    *v3 = v2;
    *(v3 + 8) = v6;
    *(v3 + 3) = Release;
    *(v3 + 4) = sub_29D3F977C;
    *(v3 + 5) = sub_29D3F97F4;
    *(v3 + 6) = sub_29D3F9810;
    *(v3 + 7) = sub_29D3F9834;
    *(v3 + 8) = sub_29D3F0004;
    *(v3 + 9) = sub_29D3EFC4C;
    *(v3 + 10) = sub_29D3F9850;
    *(v3 + 11) = sub_29D3F9868;
    *(v3 + 12) = sub_29D3F9880;
    *(v3 + 13) = sub_29D3F9894;
    *(v3 + 14) = sub_29D3F98AC;
    *(v3 + 15) = sub_29D3F98C8;
    *(v3 + 16) = sub_29D3F98E4;
    *(v3 + 17) = sub_29D3F98F0;
    *(v3 + 18) = sub_29D3EFBF0;
    *(v3 + 19) = sub_29D3EFA88;
    *(v3 + 20) = sub_29D3F98FC;
    *(v3 + 21) = sub_29D3F9910;
    v7 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
    v2->_notifyPort = v7;
    IONotificationPortSetDispatchQueue(v7, MEMORY[0x29EDCA578]);
    v8 = v2;
  }

  return v2;
}

- (void)dealloc
{
  free(self->_interface);
  notifyPort = self->_notifyPort;
  if (notifyPort)
  {
    IONotificationPortDestroy(notifyPort);
  }

  notification = self->_notification;
  if (notification)
  {
    IOObjectRelease(notification);
  }

  v5.receiver = self;
  v5.super_class = IOHIDObsoleteDeviceClass;
  [(IOHIDDeviceClass *)&v5 dealloc];
}

@end