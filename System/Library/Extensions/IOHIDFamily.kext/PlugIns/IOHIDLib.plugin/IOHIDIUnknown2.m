@interface IOHIDIUnknown2
- (IOHIDIUnknown2)init;
- (void)dealloc;
@end

@implementation IOHIDIUnknown2

- (IOHIDIUnknown2)init
{
  v6.receiver = self;
  v6.super_class = IOHIDIUnknown2;
  v2 = [(IOHIDIUnknown2 *)&v6 init];
  if (v2)
  {
    v3 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
    v2->_vtbl = v3;
    v3->_reserved = v2;
    v3->QueryInterface = sub_29D3F0174;
    v3->AddRef = sub_29D3F018C;
    v3->Release = sub_29D3F01D0;
    v4 = v2;
  }

  return v2;
}

- (void)dealloc
{
  free(self->_vtbl);
  v3.receiver = self;
  v3.super_class = IOHIDIUnknown2;
  [(IOHIDIUnknown2 *)&v3 dealloc];
}

@end