@interface AGXG18PFamilyCommandAllocator_mtlnext
- (AGXG18PFamilyCommandAllocator_mtlnext)initWithDevice:(id)device;
- (AGXG18PFamilyCommandAllocator_mtlnext)initWithDevice:(id)device descriptor:(id)descriptor;
- (AGXG18PFamilyCommandAllocator_mtlnext)initWithDeviceAndAliasToDevicePools:(id)pools;
- (unint64_t)allocatedSize;
- (void)alertCommandBufferActivityStart;
- (void)dealloc;
- (void)initResourcePools:(id)pools;
- (void)reset;
@end

@implementation AGXG18PFamilyCommandAllocator_mtlnext

- (unint64_t)allocatedSize
{
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyCommandAllocator_mtlnext;
  return [(IOGPUMetal4CommandAllocator *)&v3 allocatedSize]+ *self->_impl + *(self->_impl + 3) + *(self->_impl + 6) + *(self->_impl + 10) + *(self->_impl + 15);
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    v4 = *(impl + 16);
    if (v4 != *(impl + 17))
    {
      do
      {
        v5 = *v4++;
        free(v5);
      }

      while (v4 != *(impl + 17));
      v4 = *(impl + 16);
    }

    if (v4)
    {
      *(impl + 17) = v4;
      operator delete(v4);
    }

    v6 = *(impl + 11);
    if (v6 != *(impl + 12))
    {
      do
      {
        v7 = *v6++;
        free(v7);
      }

      while (v6 != *(impl + 12));
      v6 = *(impl + 11);
    }

    if (v6)
    {
      *(impl + 12) = v6;
      operator delete(v6);
    }

    free(*(impl + 7));
    *(impl + 7) = 0;
    free(*(impl + 4));
    *(impl + 4) = 0;
    free(*(impl + 1));
    *(impl + 1) = 0;
    MEMORY[0x29ED520D0](impl, 0x1080C40D671450BLL);
  }

  self->_impl = 0;
  if (self->commandBufferActivity)
  {
    [*&self->super._MTL4CommandAllocator_opaque[*MEMORY[0x29EDBB740]] alertCommandBufferActivityComplete];
  }

  v8.receiver = self;
  v8.super_class = AGXG18PFamilyCommandAllocator_mtlnext;
  [(IOGPUMetal4CommandAllocator *)&v8 dealloc];
}

- (void)reset
{
  if (self->commandBufferActivity)
  {
    self->commandBufferActivity = 0;
    [*&self->super._MTL4CommandAllocator_opaque[*MEMORY[0x29EDBB740]] alertCommandBufferActivityComplete];
  }

  v3.receiver = self;
  v3.super_class = AGXG18PFamilyCommandAllocator_mtlnext;
  [(IOGPUMetal4CommandAllocator *)&v3 reset];
}

- (void)alertCommandBufferActivityStart
{
  if (!self->commandBufferActivity)
  {
    self->commandBufferActivity = 1;
    [*&self->super._MTL4CommandAllocator_opaque[*MEMORY[0x29EDBB740]] alertCommandBufferActivityStart];
  }
}

- (AGXG18PFamilyCommandAllocator_mtlnext)initWithDeviceAndAliasToDevicePools:(id)pools
{
  v4.receiver = self;
  v4.super_class = AGXG18PFamilyCommandAllocator_mtlnext;
  result = [(IOGPUMetal4CommandAllocator *)&v4 initWithDeviceAndAliasToDevicePools:pools];
  if (result)
  {
    operator new();
  }

  return result;
}

- (AGXG18PFamilyCommandAllocator_mtlnext)initWithDevice:(id)device descriptor:(id)descriptor
{
  v6.receiver = self;
  v6.super_class = AGXG18PFamilyCommandAllocator_mtlnext;
  result = [(IOGPUMetal4CommandAllocator *)&v6 initWithDevice:device descriptor:descriptor];
  if (result)
  {
    [(AGXG18PFamilyCommandAllocator_mtlnext *)result initResourcePools:device];
    operator new();
  }

  return result;
}

- (AGXG18PFamilyCommandAllocator_mtlnext)initWithDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = AGXG18PFamilyCommandAllocator_mtlnext;
  result = [(IOGPUMetal4CommandAllocator *)&v5 initWithDevice:?];
  if (result)
  {
    [(AGXG18PFamilyCommandAllocator_mtlnext *)result initResourcePools:device];
    operator new();
  }

  return result;
}

- (void)initResourcePools:(id)pools
{
  v5 = *MEMORY[0x29EDCA608];
  AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupHWResourcePools(pools, v4);
  [(IOGPUMetal4CommandAllocator *)self setHwResourcePool:v4 count:44];
  self->commandBufferActivity = 0;
}

@end