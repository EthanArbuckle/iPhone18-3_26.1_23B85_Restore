@interface AGXG18PFamilyResourceStateContext
- (AGXG18PFamilyResourceStateContext)initWithCommandBuffer:(id)a3 descriptor:(id)a4;
- (void)endEncoding;
- (void)moveTextureMappingsFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)updateFence:(id)a3;
- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 region:(id *)a5 mipLevel:(unint64_t)a6 slice:(unint64_t)a7 heap:(id)a8 rangeOffset:(unint64_t)a9;
- (void)updateTextureMappings:(id)a3 mode:(unint64_t)a4 regions:(id *)a5 mipLevels:(const unint64_t *)a6 slices:(const unint64_t *)a7 numRegions:(unint64_t)a8;
- (void)waitForFence:(id)a3;
@end

@implementation AGXG18PFamilyResourceStateContext

- (void)moveTextureMappingsFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v11[0] = *a6;
  v11[1] = *a7;
  AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(self->_impl, a3, v11, a5, a4, 0, 0, 0, 0, a8, a11, a10, a9, 0, 0);
}

- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 region:(id *)a5 mipLevel:(unint64_t)a6 slice:(unint64_t)a7 heap:(id)a8 rangeOffset:(unint64_t)a9
{
  impl = self->_impl;
  if (a4)
  {
    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(impl, a3, a5, a6, a7, a4, 0, 0, 0, 0, 0, 0, 0, 1u, 0);
  }

  else
  {
    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(impl, a3, a5, a6, a7, 0, 0, 0, 0, 0, 0, 0, 0, 1u, [*(a8 + *MEMORY[0x29EDC5618]) gpuAddress] + *(*(a3 + 74) + 236) * a9);
  }
}

- (void)updateTextureMappings:(id)a3 mode:(unint64_t)a4 regions:(id *)a5 mipLevels:(const unint64_t *)a6 slices:(const unint64_t *)a7 numRegions:(unint64_t)a8
{
  v8 = a8;
  if (a8)
  {
    v12 = a4;
    impl = self->_impl;
    do
    {
      v16 = *a6++;
      v15 = v16;
      v17 = *a7++;
      AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(impl, a3, a5++, v15, v17, v12, 0, 0, 0, 0, 0, 0, 0, 0, 0);
      --v8;
    }

    while (v8);
  }
}

- (void)waitForFence:(id)a3
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

  v6 = *(a3 + *MEMORY[0x29EDC5610]);

  AGX::FenceList::insertFence(v5, v6);
}

- (void)updateFence:(id)a3
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

  v6 = *(a3 + *MEMORY[0x29EDC5610]);

  AGX::FenceList::insertFence(v5, v6);
}

- (void)endEncoding
{
  if (self->_impl)
  {
    v3 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x29EDBB780]) device];
    impl = self->_impl;
    v6 = impl[31];
    v5 = impl[32];
    atomic_fetch_or((v3 + 856), v6);
    atomic_fetch_or((v3 + 864), v5);
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

- (AGXG18PFamilyResourceStateContext)initWithCommandBuffer:(id)a3 descriptor:(id)a4
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
      v24 = a4;
      v8 = [a3 device];
      v9 = *(a3 + 90);
      v10 = [a3 commandBufferStorage];
      v11 = [a3 globalTraceObjectID];
      v12 = [v6 globalTraceObjectID];
      v13 = [a3 protectionOptions];
      v14 = *(v6 + 12);
      *&v15 = a3;
      *(&v15 + 1) = v9;
      *&v16 = v11;
      *(&v16 + 1) = v12;
      v17 = *(v8 + 848) + 7008;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = ___ZN3AGX18BlitUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE17dataBufferConfigsERK16AGXGPUCoreConfig_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v17;
      if (AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once != -1)
      {
        v21 = v13;
        v22 = v15;
        v23 = v16;
        dispatch_once(&AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once, block);
        v15 = v22;
        v16 = v23;
        v13 = v21;
      }

      *v14 = v15;
      *(v14 + 16) = v10;
      *(v14 + 24) = &AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs;
      *(v14 + 32) = v8;
      *(v14 + 40) = v10;
      v18 = v10[96];
      *(v14 + 1848) = 0;
      *(v14 + 1832) = 0;
      *(v14 + 1840) = 0;
      *(v14 + 1824) = 0;
      *(v14 + 1864) = v13;
      *(v14 + 48) = v18;
      *(v14 + 56) = v10 + 18;
      *(v14 + 1856) = v10[98];
      *(v14 + 1880) = v10;
      *(v14 + 1888) = v10 + 8;
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
      *(v14 + 1872) = v8;
      *(v14 + 1896) = v10[91];
      *(v14 + 1904) = v10[92];
      *(v14 + 1912) = v10 + 18;
      *(v14 + 1968) = v10[6];
      *(v14 + 1976) = v10[7];
      *(v14 + 1924) = v12;
      *(v14 + 1932) = 0xFFFFFFFF00000000;
      *(v14 + 1956) = 0;
      *(v14 + 1960) = 1;
      v19 = AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::BlitDispatchContext(*(v6 + 11), *(v6 + 12), 0, v24, 0);
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