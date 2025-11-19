@interface IOHIDOutputTransactionClass
- (IOHIDOutputTransactionClass)initWithDevice:(id)a3;
- (int)queryInterface:(id)a3 outInterface:(void *)a4;
- (void)dealloc;
@end

@implementation IOHIDOutputTransactionClass

- (int)queryInterface:(id)a3 outInterface:(void *)a4
{
  v6 = CFUUIDCreateFromUUIDBytes(0, a3);
  v7 = CFUUIDGetConstantUUIDWithBytes(0, 0x80u, 0xCDu, 0xCCu, 0, 0x75u, 0x5Du, 0x11u, 0xD4u, 0x80u, 0xEFu, 0, 5u, 2u, 0x8Fu, 0x18u, 0xD5u);
  if (!CFEqual(v6, v7))
  {
    v8 = -2147483644;
    if (!v6)
    {
      return v8;
    }

    goto LABEL_3;
  }

  *a4 = &self->_outputInterface;
  CFRetain(self);
  v8 = 0;
  if (v6)
  {
LABEL_3:
    CFRelease(v6);
  }

  return v8;
}

- (IOHIDOutputTransactionClass)initWithDevice:(id)a3
{
  v11.receiver = self;
  v11.super_class = IOHIDOutputTransactionClass;
  v3 = [(IOHIDTransactionClass *)&v11 initWithDevice:a3];
  v4 = v3;
  if (v3)
  {
    v3->super._direction = 1;
    v5 = malloc_type_malloc(0x98uLL, 0x800407567D3B1uLL);
    v4->_outputInterface = v5;
    vtbl = v4->super.super._vtbl;
    Release = vtbl->Release;
    v8 = *&vtbl->QueryInterface;
    *v5 = v4;
    *(v5 + 8) = v8;
    *(v5 + 3) = Release;
    *(v5 + 4) = sub_29D3F1018;
    *(v5 + 5) = sub_29D3F1094;
    *(v5 + 6) = sub_29D3F10DC;
    *(v5 + 7) = sub_29D3F1128;
    *(v5 + 8) = sub_29D3F1170;
    *(v5 + 9) = sub_29D3F1178;
    *(v5 + 10) = sub_29D3F1180;
    *(v5 + 11) = sub_29D3F11F0;
    *(v5 + 12) = sub_29D3F1260;
    *(v5 + 13) = sub_29D3F12DC;
    *(v5 + 14) = sub_29D3F12F4;
    *(v5 + 15) = sub_29D3F130C;
    *(v5 + 16) = sub_29D3F1324;
    *(v5 + 17) = sub_29D3F133C;
    *(v5 + 18) = sub_29D3F1358;
    v9 = v4;
  }

  return v4;
}

- (void)dealloc
{
  free(self->_outputInterface);
  v3.receiver = self;
  v3.super_class = IOHIDOutputTransactionClass;
  [(IOHIDTransactionClass *)&v3 dealloc];
}

@end