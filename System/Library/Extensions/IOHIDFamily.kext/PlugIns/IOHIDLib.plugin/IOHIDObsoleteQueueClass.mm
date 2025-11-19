@interface IOHIDObsoleteQueueClass
- (IOHIDObsoleteQueueClass)initWithDevice:(id)a3;
- (int)getNextEvent:(IOHIDEventStruct *)a3;
- (int)queryInterface:(id)a3 outInterface:(void *)a4;
- (int)setEventCallout:(void *)a3 callbackTarget:(void *)a4 callbackRefcon:(void *)a5;
- (void)dealloc;
@end

@implementation IOHIDObsoleteQueueClass

- (int)queryInterface:(id)a3 outInterface:(void *)a4
{
  v6 = CFUUIDCreateFromUUIDBytes(0, a3);
  v7 = CFUUIDGetConstantUUIDWithBytes(0, 0x81u, 0x38u, 0x62u, 0x9Eu, 0x6Fu, 0x14u, 0x11u, 0xD4u, 0x97u, 0xEu, 0, 5u, 2u, 0x8Fu, 0x18u, 0xD5u);
  if (!CFEqual(v6, v7))
  {
    v8 = -2147483644;
    if (!v6)
    {
      return v8;
    }

    goto LABEL_3;
  }

  *a4 = &self->_interface;
  CFRetain(self);
  v8 = 0;
  if (v6)
  {
LABEL_3:
    CFRelease(v6);
  }

  return v8;
}

- (int)getNextEvent:(IOHIDEventStruct *)a3
{
  value = 0;
  if (a3)
  {
    v4 = objc_msgSend_copyNextValue_(self, a2, &value);
    v5 = 0;
    if (!v4 && value)
    {
      Element = IOHIDValueGetElement(value);
      v7 = [HIDLibElement alloc];
      v5 = objc_msgSend_initWithElementRef_(v7, v8, Element);
      objc_msgSend_setValueRef_(v5, v9, value);
      v12 = objc_msgSend_length(v5, v10, v11);
      a3->type = objc_msgSend_type(v5, v13, v14);
      a3->elementCookie = objc_msgSend_elementCookie(v5, v15, v16);
      a3->timestamp = objc_msgSend_timestamp(v5, v17, v18);
      if (v12 < 5uLL)
      {
        a3->longValueSize = 0;
        a3->longValue = 0;
        a3->value = objc_msgSend_integerValue(v5, v19, v20);
      }

      else
      {
        a3->longValueSize = v12;
        a3->longValue = malloc_type_malloc(v12, 0x1057AD52uLL);
        BytePtr = IOHIDValueGetBytePtr(value);
        memmove(a3->longValue, BytePtr, v12);
      }

      CFRelease(value);
      v4 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = -536870206;
  }

  return v4;
}

- (int)setEventCallout:(void *)a3 callbackTarget:(void *)a4 callbackRefcon:(void *)a5
{
  self->_eventCallbackTarget = a4;
  self->_eventCallbackRefcon = a5;
  self->_eventCallback = a3;
  return objc_msgSend_setValueAvailableCallback_context_(self, a2, sub_29D3F3000, self);
}

- (IOHIDObsoleteQueueClass)initWithDevice:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IOHIDObsoleteQueueClass;
  v5 = [(IOHIDQueueClass *)&v12 initWithDevice:v4];
  if (v5)
  {
    v6 = malloc_type_malloc(0x90uLL, 0x80040BBECCAC1uLL);
    v5->_interface = v6;
    vtbl = v5->super.super._vtbl;
    Release = vtbl->Release;
    v9 = *&vtbl->QueryInterface;
    *v6 = v5;
    *(v6 + 8) = v9;
    *(v6 + 3) = Release;
    *(v6 + 4) = sub_29D3F3248;
    *(v6 + 5) = sub_29D3F32C8;
    *(v6 + 6) = sub_29D3F32E0;
    *(v6 + 7) = sub_29D3F3300;
    *(v6 + 8) = sub_29D3F3318;
    *(v6 + 9) = sub_29D3F3320;
    *(v6 + 10) = sub_29D3F3328;
    *(v6 + 11) = sub_29D3F33AC;
    *(v6 + 12) = sub_29D3F3430;
    *(v6 + 13) = sub_29D3F34C4;
    *(v6 + 14) = sub_29D3F34D0;
    *(v6 + 15) = sub_29D3F34DC;
    *(v6 + 16) = sub_29D3F34EC;
    *(v6 + 17) = sub_29D3F3504;
    v10 = v5;
  }

  return v5;
}

- (void)dealloc
{
  free(self->_interface);
  v3.receiver = self;
  v3.super_class = IOHIDObsoleteQueueClass;
  [(IOHIDQueueClass *)&v3 dealloc];
}

@end