@interface AGXG18PFamilyDebugContext
- (AGXG18PFamilyDebugContext)initWithCommandBuffer:(id)buffer;
- (void)dealloc;
- (void)endEncoding;
@end

@implementation AGXG18PFamilyDebugContext

- (void)endEncoding
{
  *(self->_impl + 12) = 1;
  v2.receiver = self;
  v2.super_class = AGXG18PFamilyDebugContext;
  [(IOGPUMetalDebugCommandEncoder *)&v2 endEncoding];
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    free(impl);
    self->_impl = 0;
  }

  v4.receiver = self;
  v4.super_class = AGXG18PFamilyDebugContext;
  [(IOGPUMetalDebugCommandEncoder *)&v4 dealloc];
}

- (AGXG18PFamilyDebugContext)initWithCommandBuffer:(id)buffer
{
  v7.receiver = self;
  v7.super_class = AGXG18PFamilyDebugContext;
  v3 = [(IOGPUMetalDebugCommandEncoder *)&v7 initWithCommandBuffer:buffer];
  if (v3)
  {
    v4 = malloc_type_calloc(0x10uLL, 1uLL, 0x108004020793F04uLL);
    v3->_impl = v4;
    if (v4)
    {
      *v4 = v3;
      *(v4 + 12) = 0;
      v5 = v4;
      [(MTLDevice *)[(_MTLCommandEncoder *)v3 device] deviceRef];
      *(v5 + 2) = IOGPUDeviceGetConnect();
    }

    else
    {
      [(AGXG18PFamilyDebugContext *)v3 endEncoding];

      return 0;
    }
  }

  return v3;
}

@end