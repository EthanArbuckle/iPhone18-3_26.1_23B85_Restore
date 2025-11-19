@interface IOHIDPlugin
- (IOHIDPlugin)init;
- (void)dealloc;
@end

@implementation IOHIDPlugin

- (IOHIDPlugin)init
{
  v10.receiver = self;
  v10.super_class = IOHIDPlugin;
  v2 = [(IOHIDIUnknown2 *)&v10 init];
  if (v2)
  {
    v3 = malloc_type_malloc(0x40uLL, 0x108004020ACED9DuLL);
    v2->_plugin = v3;
    vtbl = v2->super._vtbl;
    Release = vtbl->Release;
    v6 = *&vtbl->QueryInterface;
    *v3 = v2;
    *(v3 + 8) = v6;
    *(v3 + 3) = Release;
    *(v3 + 8) = 1;
    *(v3 + 5) = sub_29D3F0390;
    *(v3 + 6) = sub_29D3F03A8;
    *(v3 + 7) = sub_29D3F03BC;
    v7 = CFUUIDGetConstantUUIDWithBytes(0, 0x13u, 0xAAu, 0x9Cu, 0x44u, 0x6Fu, 0x1Bu, 0x11u, 0xD4u, 0x90u, 0x7Cu, 0, 5u, 2u, 0x8Fu, 0x18u, 0xD5u);
    CFPlugInAddInstanceForFactory(v7);
    v8 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0x13u, 0xAAu, 0x9Cu, 0x44u, 0x6Fu, 0x1Bu, 0x11u, 0xD4u, 0x90u, 0x7Cu, 0, 5u, 2u, 0x8Fu, 0x18u, 0xD5u);
  CFPlugInRemoveInstanceForFactory(v3);
  free(self->_plugin);
  v4.receiver = self;
  v4.super_class = IOHIDPlugin;
  [(IOHIDIUnknown2 *)&v4 dealloc];
}

@end