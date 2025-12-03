@interface AGXG18PFamilyResourceStateContext
- (AGXG18PFamilyResourceStateContext)initWithCommandBuffer:(id)buffer descriptor:(id)descriptor;
- (void)endEncoding;
- (void)moveTextureMappingsFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)updateFence:(id)fence;
- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice heap:(id)heap rangeOffset:(unint64_t)offset;
- (void)updateTextureMappings:(id)mappings mode:(unint64_t)mode regions:(id *)regions mipLevels:(const unint64_t *)levels slices:(const unint64_t *)slices numRegions:(unint64_t)numRegions;
- (void)waitForFence:(id)fence;
@end

@implementation AGXG18PFamilyResourceStateContext

- (void)moveTextureMappingsFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  v11[0] = *origin;
  v11[1] = *size;
  AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(self->_impl, texture, v11, level, slice, 0, 0, 0, 0, toTexture, destinationOrigin, destinationLevel, destinationSlice, 0, 0);
}

- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice heap:(id)heap rangeOffset:(unint64_t)offset
{
  impl = self->_impl;
  if (mode)
  {
    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(impl, mapping, region, level, slice, mode, 0, 0, 0, 0, 0, 0, 0, 1u, 0);
  }

  else
  {
    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(impl, mapping, region, level, slice, 0, 0, 0, 0, 0, 0, 0, 0, 1u, [*(heap + *MEMORY[0x29EDC5618]) gpuAddress] + *(*(mapping + 74) + 236) * offset);
  }
}

- (void)updateTextureMappings:(id)mappings mode:(unint64_t)mode regions:(id *)regions mipLevels:(const unint64_t *)levels slices:(const unint64_t *)slices numRegions:(unint64_t)numRegions
{
  numRegionsCopy = numRegions;
  if (numRegions)
  {
    modeCopy = mode;
    impl = self->_impl;
    do
    {
      v16 = *levels++;
      v15 = v16;
      v17 = *slices++;
      AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(impl, mappings, regions++, v15, v17, modeCopy, 0, 0, 0, 0, 0, 0, 0, 0, 0);
      --numRegionsCopy;
    }

    while (numRegionsCopy);
  }
}

- (void)waitForFence:(id)fence
{
  impl = self->_impl;
  if (*(*(impl + 1) + 1896))
  {
    MTLResourceListAddResource();
  }

  v5 = *(impl + 27);
  if (!v5)
  {
    operator new();
  }

  v6 = *(fence + *MEMORY[0x29EDC5610]);

  AGX::FenceList::insertFence(v5, v6);
}

- (void)updateFence:(id)fence
{
  impl = self->_impl;
  if (*(*(impl + 1) + 1896))
  {
    MTLResourceListAddResource();
  }

  v5 = *(impl + 26);
  if (!v5)
  {
    operator new();
  }

  v6 = *(fence + *MEMORY[0x29EDC5610]);

  AGX::FenceList::insertFence(v5, v6);
}

- (void)endEncoding
{
  if (self->_impl)
  {
    device = [*(&self->super.super.super.super.super.isa + *MEMORY[0x29EDBB780]) device];
    impl = self->_impl;
    v6 = impl[31];
    v5 = impl[32];
    atomic_fetch_or((device + 856), v6);
    atomic_fetch_or((device + 864), v5);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::commit(self->_impl, v7, v8, v9, v10);
    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~BlitDispatchContextGen2(self->_impl);
    ctx_common = self->_ctx_common;
    v12 = *(ctx_common + 228);
    v13 = *(ctx_common + 229);
    if (v12 != v13)
    {
      do
      {
        v14 = *v12++;
        free(v14);
      }

      while (v12 != v13);
      v12 = *(ctx_common + 228);
    }

    if (v12)
    {
      *(ctx_common + 229) = v12;
      operator delete(v12);
    }

    free(self->_impl);
    self->_impl = 0;
  }

  v15.receiver = self;
  v15.super_class = AGXG18PFamilyResourceStateContext;
  [(IOGPUMetalCommandEncoder *)&v15 endEncoding];
}

- (AGXG18PFamilyResourceStateContext)initWithCommandBuffer:(id)buffer descriptor:(id)descriptor
{
  v25.receiver = self;
  v25.super_class = AGXG18PFamilyResourceStateContext;
  v6 = [(IOGPUMetalCommandEncoder *)&v25 initWithCommandBuffer:?];
  if (v6)
  {
    v7 = malloc_type_calloc(1uLL, 0x1BA8uLL, 0x10F004027B7DD7AuLL);
    *(v6 + 11) = v7;
    *(v6 + 12) = v7 + 5008;
    if (v7)
    {
      descriptorCopy = descriptor;
      device = [buffer device];
      v9 = *(buffer + 90);
      commandBufferStorage = [buffer commandBufferStorage];
      globalTraceObjectID = [buffer globalTraceObjectID];
      globalTraceObjectID2 = [v6 globalTraceObjectID];
      protectionOptions = [buffer protectionOptions];
      v14 = *(v6 + 12);
      *&v15 = buffer;
      *(&v15 + 1) = v9;
      *&v16 = globalTraceObjectID;
      *(&v16 + 1) = globalTraceObjectID2;
      v17 = *(device + 848) + 7008;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = ___ZN3AGX18BlitUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE17dataBufferConfigsERK16AGXGPUCoreConfig_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v17;
      if (AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once != -1)
      {
        v21 = protectionOptions;
        v22 = v15;
        v23 = v16;
        dispatch_once(&AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once, block);
        v15 = v22;
        v16 = v23;
        protectionOptions = v21;
      }

      *v14 = v15;
      *(v14 + 16) = commandBufferStorage;
      *(v14 + 24) = &AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs;
      *(v14 + 32) = device;
      *(v14 + 40) = commandBufferStorage;
      v18 = commandBufferStorage[96];
      *(v14 + 1848) = 0;
      *(v14 + 1832) = 0;
      *(v14 + 1840) = 0;
      *(v14 + 1824) = 0;
      *(v14 + 1864) = protectionOptions;
      *(v14 + 48) = v18;
      *(v14 + 56) = commandBufferStorage + 18;
      *(v14 + 1856) = commandBufferStorage[98];
      *(v14 + 1880) = commandBufferStorage;
      *(v14 + 1888) = commandBufferStorage + 8;
      *(v14 + 1920) = 0;
      *(v14 + 1961) = 0;
      *(v14 + 1992) = v16;
      *(v14 + 2008) = v9 + 24;
      *(v14 + 2016) = v6;
      *(v14 + 2024) = 1;
      *(v14 + 2028) = 0u;
      *(v14 + 2044) = 0u;
      *(v14 + 2053) = 0u;
      *(v14 + 2069) = 1;
      *(v14 + 1872) = device;
      *(v14 + 1896) = commandBufferStorage[91];
      *(v14 + 1904) = commandBufferStorage[92];
      *(v14 + 1912) = commandBufferStorage + 18;
      *(v14 + 1968) = commandBufferStorage[6];
      *(v14 + 1976) = commandBufferStorage[7];
      *(v14 + 1924) = globalTraceObjectID2;
      *(v14 + 1932) = 0xFFFFFFFF00000000;
      *(v14 + 1956) = 0;
      *(v14 + 1960) = 1;
      v19 = AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::BlitDispatchContext(*(v6 + 11), *(v6 + 12), 0, descriptorCopy, 0);
      *(v19 + 4896) = 0;
      *(v19 + 4960) = 0;
      *(v19 + 4968) = 0;
      *(v19 + 4912) = 0u;
      *(v19 + 4928) = 0u;
      *v19 = &unk_2A23F7410;
      *(v19 + 4992) = *(*(v19 + 8) + 1872);
      *(v19 + 5000) = 0;
    }

    else
    {
      [v6 endEncoding];

      return 0;
    }
  }

  return v6;
}

@end