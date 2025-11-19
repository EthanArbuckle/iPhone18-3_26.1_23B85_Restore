@interface AGXG18PFamilySampledRenderContext_mtlnext
- (AGXG18PFamilySampledRenderContext_mtlnext)initWithCommandBuffer:(id)a3 allocator:(id)a4 descriptor:(id)a5 options:(unint64_t)a6 programInfoBuffer:(id *)a7 capacity:(unint64_t)a8;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (void)dealloc;
- (void)destroyImpl;
- (void)dispatchThreadsPerTile:(id *)a3;
- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4;
- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4 withRenderTargetArrayIndex:(unsigned int)a5;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(unint64_t)a5 indexBufferLength:(unint64_t)a6 indirectBuffer:(unint64_t)a7;
- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(unint64_t)a4;
- (void)endEncoding;
- (void)filterCounterRangeWithFirstBatch:(unsigned int)a3 lastBatch:(unsigned int)a4 filterIndex:(unsigned int)a5;
- (void)setRenderPipelineState:(id)a3;
@end

@implementation AGXG18PFamilySampledRenderContext_mtlnext

- (void)filterCounterRangeWithFirstBatch:(unsigned int)a3 lastBatch:(unsigned int)a4 filterIndex:(unsigned int)a5
{
  impl = self->super._impl;
  impl[483] = a3;
  impl[484] = a4;
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  [(AGXG18PFamilySampledRenderContext_mtlnext *)self endEncoding];
  sampled_impl = self->_sampled_impl;
  v4 = objc_alloc(MEMORY[0x29EDBB730]);
  v5 = *sampled_impl;
  v6 = sampled_impl[1];
  v7 = sampled_impl[2];

  return [v4 initWithEncoderMappings:v5 perInvocationMappings:v6 internalMappings:v7];
}

- (void)endEncoding
{
  self->_user_draw_token_offset = *(self->super._impl + 488);
  v2.receiver = self;
  v2.super_class = AGXG18PFamilySampledRenderContext_mtlnext;
  [(AGXG18PFamilyRenderContext_mtlnext *)&v2 endEncoding];
}

- (void)destroyImpl
{
  v7 = *MEMORY[0x29EDCA608];
  if (self->super._impl)
  {
    sampled_impl = self->_sampled_impl;
    if (sampled_impl)
    {
      if (*(sampled_impl + 64) == 1)
      {
        if (*(sampled_impl[6] + 5402) == 1)
        {
          operator new();
        }

        v3 = self->_sampled_impl;
        if (*(v3 + 64))
        {
          v4 = *(v3 + 6);
          if (*(v4 + 2120))
          {
            v5 = self;
            AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(*(v4 + 2120), *v3, *(v3 + 2));
            self = v5;
            *(*(v4 + 2120) + 8) = 0;
          }
        }
      }
    }
  }

  v6.receiver = self;
  v6.super_class = AGXG18PFamilySampledRenderContext_mtlnext;
  [(AGXG18PFamilyRenderContext_mtlnext *)&v6 destroyImpl];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  sampled_impl = self->_sampled_impl;
  var0 = a4->var0;
  var1 = a4->var1;
  var2 = a4->var2;
  v10 = a5->var0;
  v11 = a5->var1;
  v12 = a5->var2;
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::duplicateShaderAddresses(sampled_impl);
  v13 = sampled_impl[6];
  v14 = *(v13 + 5296);
  if (v14)
  {
    v15 = v14[4];
    if (v15)
    {
      v16 = *(v15 + 3946);
      v17 = 0x100000000000000;
      if (v16)
      {
        v17 = 0x200000000000000;
      }

      v18 = *(v13 + 11456) | v17;
    }

    else
    {
      LOBYTE(v16) = MEMORY[0xF6A];
      v18 = *(v13 + 11456) | 0x200000000000000;
    }

    *(v13 + 11456) = v18;
    if (v16)
    {
      goto LABEL_11;
    }

    v19 = *(*(v14[1] + 7688) + 24);
    if (v19)
    {
      v19 = *(v19 + 3948);
    }

    if (var1 * var0 * var2 <= v19)
    {
LABEL_11:
      v20 = *(*(v14[1] + 7688) + 32);
      if (v20)
      {
        v20 = *(v20 + 4036);
      }

      if (v11 * v10 * v12 <= v20)
      {
        v21 = v14[131];
        *(v21 + 384) = 0;
        *(v21 + 72) = a3;
        v14[136] = 0;
        v28[0] = var0;
        v28[1] = var1;
        v28[2] = var2;
        v27[0] = v10;
        v27[1] = v11;
        v27[2] = v12;
        AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreadgroupsWithIndirectBufferCommon(v14, a3, v28, v27);
      }
    }
  }

  if (*(sampled_impl + 64) == 1)
  {
    v22 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v23 = sampled_impl[6];
    v24 = sampled_impl[2];
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v23 + 7688), v22);
    v25 = *(v23 + 2120);
    if (v25)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v25, v22, v24);
      *(*(v23 + 2120) + 8) = 0;
    }

    v26 = sampled_impl[1];

    [v26 addObject:v22];
  }
}

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  sampled_impl = self->_sampled_impl;
  v18 = *a3;
  v17 = *a4;
  v16 = *a5;
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::duplicateShaderAddresses(sampled_impl);
  v6 = sampled_impl[6];
  v7 = *(v6 + 5296);
  if (v7)
  {
    v8 = v7[4];
    if (v8)
    {
      v9 = *(v8 + 3946) == 0;
      v10 = 56;
      if (!v9)
      {
        v10 = 57;
      }
    }

    else
    {
      v10 = 57;
    }

    *(v6 + 11456) |= 1 << v10;
    v21 = v18;
    v20 = v17;
    v19 = v16;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreads(v7, &v21, &v20, &v19);
  }

  if (*(sampled_impl + 64) == 1)
  {
    v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v12 = sampled_impl[6];
    v13 = sampled_impl[2];
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v12 + 7688), v11);
    v14 = *(v12 + 2120);
    if (v14)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v14, v11, v13);
      *(*(v12 + 2120) + 8) = 0;
    }

    v15 = sampled_impl[1];

    [v15 addObject:v11];
  }
}

- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  sampled_impl = self->_sampled_impl;
  v18 = *a3;
  v17 = *a4;
  v16 = *a5;
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::duplicateShaderAddresses(sampled_impl);
  v6 = sampled_impl[6];
  v7 = *(v6 + 5296);
  if (v7)
  {
    v8 = v7[4];
    if (v8)
    {
      v9 = *(v8 + 3946) == 0;
      v10 = 56;
      if (!v9)
      {
        v10 = 57;
      }
    }

    else
    {
      v10 = 57;
    }

    *(v6 + 11456) |= 1 << v10;
    v21 = v18;
    v20 = v17;
    v19 = v16;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreadgroups(v7, &v21, &v20, &v19);
  }

  if (*(sampled_impl + 64) == 1)
  {
    v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v12 = sampled_impl[6];
    v13 = sampled_impl[2];
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v12 + 7688), v11);
    v14 = *(v12 + 2120);
    if (v14)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v14, v11, v13);
      *(*(v12 + 2120) + 8) = 0;
    }

    v15 = sampled_impl[1];

    [v15 addObject:v11];
  }
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(unint64_t)a5 indexBufferLength:(unint64_t)a6 indirectBuffer:(unint64_t)a7
{
  v8 = a6;
  sampled_impl = self->_sampled_impl;
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::duplicateShaderAddresses(sampled_impl);
  v13 = sampled_impl[6];
  if (((*(*(v13 + 7672) + 2480) | *(*(v13 + 7672) + 2432)) & 0x700000000000) != 0)
  {
    *(v13 + 10088) |= 0x700000000000uLL;
    *(v13 + 10472) |= 0x40uLL;
    *(*(v13 + 8480) + 144) = vaddq_s64(vdupq_n_s64(a7), xmmword_29D2F2530);
    *(v13 + 8592) = 0u;
  }

  if ((*(v13 + 7401) & 1) == 0)
  {
    *(v13 + 7401) = 1;
    *(v13 + 10472) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(v13, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(v13, *(v13 + 7672), *(v13 + 7680), *(v13 + 8472), *(v13 + 9744), v13 + 10088, 0);
  if (*(*(v13 + 2392) + 4907) == 1)
  {
    v14 = 0x114u >> a3;
    if (a3 >= 9)
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = *(v13 + 7403);
  }

  LODWORD(v15) = *(v13 + 7404);
  if (v15 >= 0xFFFF)
  {
    v16 = 0xFFFF;
  }

  else
  {
    v16 = *(v13 + 7404);
  }

  if (a4 == 1)
  {
    v15 = v15;
  }

  else
  {
    v15 = v16;
  }

  v17 = *(v13 + 72);
  *v17 = (v15 << 32) | 0x40000001;
  *(v13 + 11464) |= 0x80uLL;
  v18 = (AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeIndexedDrawIndirect[a3] + (a4 << 17)) & 0xFFEEFF00;
  if (v14)
  {
    v19 = 0x10000;
  }

  else
  {
    v19 = 0;
  }

  *(v13 + 72) = v17 + 32;
  *(v17 + 8) = BYTE4(a5) | v18 | v19 | 0x100000;
  *(v17 + 12) = a5;
  *(v17 + 16) = WORD2(a7);
  *(v17 + 20) = a7 & 0xFFFFFFFC;
  *(v17 + 24) = v8 - 1;
  *(v17 + 28) = BYTE5(a5);
  ++*(v13 + 1940);
  *(v13 + 1960) = 0;
  if (*(sampled_impl + 64) == 1)
  {
    v20 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v21 = sampled_impl[6];
    v22 = sampled_impl[2];
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v21 + 7688), v20);
    v23 = *(v21 + 2120);
    if (v23)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v23, v20, v22);
      *(*(v21 + 2120) + 8) = 0;
    }

    v24 = sampled_impl[1];

    [v24 addObject:v20];
  }
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(unint64_t)a4
{
  sampled_impl = self->_sampled_impl;
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::duplicateShaderAddresses(sampled_impl);
  v7 = sampled_impl[6];
  if (((*(*(v7 + 7672) + 2480) | *(*(v7 + 7672) + 2432)) & 0x700000000000) != 0)
  {
    *(v7 + 10088) |= 0x700000000000uLL;
    *(v7 + 10472) |= 0x40uLL;
    v8 = *(v7 + 8480);
    *(v8 + 152) = a4 + 12;
    *(v7 + 8600) = 0;
    if (*(v7 + 7256) == 1)
    {
      v9 = 0;
      *(v8 + 144) = a4 + 8;
LABEL_7:
      *(v7 + 8592) = v9;
      goto LABEL_8;
    }

    v10 = *(v7 + 168);
    v11 = v10 + 1;
    if ((v10 + 1) > *(v7 + 160))
    {
      v20 = AGX::DataBufferAllocator<44ul>::growNoInline(v7 + 24, 3, 0);
      v10 = *(v7 + 168);
      if (!v20)
      {
        goto LABEL_6;
      }

      v11 = v10 + 1;
      if ((v10 + 1) > *(v7 + 160))
      {
        abort();
      }
    }

    *(v7 + 176) = v11;
LABEL_6:
    v12 = v10 + *(v7 + 184);
    *v10 = 0;
    *(v7 + 168) = v10 + 1;
    *(*(v7 + 8480) + 144) = v12;
    v9 = *(*(v7 + 48) + 224) + *MEMORY[0x29EDC5638];
    goto LABEL_7;
  }

LABEL_8:
  if (*(v7 + 7401) == 1)
  {
    *(v7 + 7401) = 0;
    *(v7 + 10472) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(v7, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(v7, *(v7 + 7672), *(v7 + 7680), *(v7 + 8472), *(v7 + 9744), v7 + 10088, 0);
  *(v7 + 11464) |= 0x80uLL;
  v13 = a4 & 0xFFFF00000000 | AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeNonIndexedDrawIndirect[a3];
  v14 = *(v7 + 72);
  *(v7 + 72) = v14 + 12;
  *v14 = v13;
  *(v14 + 8) = a4 & 0xFFFFFFFC;
  ++*(v7 + 1940);
  *(v7 + 1960) = 0;
  if (*(sampled_impl + 64) == 1)
  {
    v15 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v16 = sampled_impl[6];
    v17 = sampled_impl[2];
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v16 + 7688), v15);
    v18 = *(v16 + 2120);
    if (v18)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v18, v15, v17);
      *(*(v16 + 2120) + 8) = 0;
    }

    v19 = sampled_impl[1];

    [v19 addObject:v15];
  }
}

- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4 withRenderTargetArrayIndex:(unsigned int)a5
{
  sampled_impl = self->_sampled_impl;
  v8 = *&a3->var0;
  var2 = a3->var2;
  v6 = *&a4->var0.var2;
  v7[0] = *&a4->var0.var0;
  v7[1] = v6;
  v7[2] = *&a4->var1.var1;
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreads(sampled_impl, &v8, v7, a5 | 0x100000000);
}

- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4
{
  sampled_impl = self->_sampled_impl;
  v7 = *&a3->var0;
  var2 = a3->var2;
  v5 = *&a4->var0.var2;
  v6[0] = *&a4->var0.var0;
  v6[1] = v5;
  v6[2] = *&a4->var1.var1;
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreads(sampled_impl, &v7, v6, 0);
}

- (void)dispatchThreadsPerTile:(id *)a3
{
  sampled_impl = self->_sampled_impl;
  v12 = *a3;
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::duplicateShaderAddresses(sampled_impl);
  v4 = *(sampled_impl + 6);
  v5 = *(v4 + 2392);
  memset(v13, 0, sizeof(v13));
  v6 = *(v5 + 3568);
  *&v7 = v6;
  *(&v7 + 1) = HIDWORD(v6);
  v14 = v7;
  v15 = 1;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreadsImpl<false>(v4, &v12, v13, 1uLL, 0);
  if (*(sampled_impl + 64) == 1)
  {
    v8 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v9 = *(sampled_impl + 6);
    v10 = *(sampled_impl + 2);
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v9 + 7688), v8);
    v11 = *(v9 + 2120);
    if (v11)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v11, v8, v10);
      *(*(v9 + 2120) + 8) = 0;
    }

    [*(sampled_impl + 1) addObject:{v8, *&v12.var0, v12.var2}];
  }
}

- (void)setRenderPipelineState:(id)a3
{
  sampled_impl = self->_sampled_impl;
  sampled_impl[7] = a3;
  v5 = sampled_impl[6];
  if (*(v5 + 1896))
  {
    MTLResourceListAddResource();
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setRenderPipelineStateCommon(v5, a3 + 240);
  *(v5 + 5403) = 1;
}

- (void)dealloc
{
  sampled_impl = self->_sampled_impl;
  if (sampled_impl)
  {

    free(self->_sampled_impl);
    self->_sampled_impl = 0;
  }

  v4.receiver = self;
  v4.super_class = AGXG18PFamilySampledRenderContext_mtlnext;
  [(AGXG18PFamilyRenderContext_mtlnext *)&v4 dealloc];
}

- (AGXG18PFamilySampledRenderContext_mtlnext)initWithCommandBuffer:(id)a3 allocator:(id)a4 descriptor:(id)a5 options:(unint64_t)a6 programInfoBuffer:(id *)a7 capacity:(unint64_t)a8
{
  v8 = a8;
  v47.receiver = self;
  v47.super_class = AGXG18PFamilySampledRenderContext_mtlnext;
  v10 = [(AGXG18PFamilyRenderContext_mtlnext *)&v47 initWithCommandBuffer:a3 allocator:a4 descriptor:a5 options:a6 enableStateLoaderProgramTracking:1];
  if (v10)
  {
    v11 = malloc_type_calloc(0x48uLL, 1uLL, 0x10A00406D0CADDEuLL);
    v10->_sampled_impl = v11;
    if (!v11)
    {
      [(AGXG18PFamilySampledRenderContext_mtlnext *)v10 endEncoding];

      return 0;
    }

    v12 = v11;
    impl = v10->super._impl;
    *v11 = 0;
    *(v11 + 1) = 0;
    *(v11 + 2) = 0;
    *(v11 + 3) = a7;
    v11[9] = 0;
    v11[10] = 0;
    v11[8] = v8;
    *(v11 + 6) = impl;
    *(v11 + 7) = 0;
    *(v11 + 32) = 1;
    v14 = *(impl[234] + 848) + 0x4000;
    if ((*(*(impl[234] + 848) + 16624) & 1) == 0)
    {
      do
      {
        v15 = *(v14 + 244);
        if (v15 == -2)
        {
          v16 = 0;
        }

        else
        {
          v16 = v15 + 1;
        }

        v17 = *(v14 + 244);
        atomic_compare_exchange_strong((v14 + 244), &v17, v16);
      }

      while (v17 != v15);
      *(impl + 481) = v15;
      *(impl + 1928) = 1;
      impl = *(v11 + 6);
    }

    v18 = impl[299];
    v19 = *(v18 + 5376);
    if (v19)
    {
      v20 = *(v11 + 3) + 24 * v11[9];
      v21 = *(v14 + 240);
      *v20 = 100;
      v22 = (*(*(v11 + 6) + 1924) << 8) | 0x64;
      v23 = v21 == 0;
      if (v21)
      {
        v24 = *(*(v11 + 6) + 1924);
      }

      else
      {
        v24 = -1;
      }

      if (!v23)
      {
        v22 = -156;
      }

      *v20 = v22;
      *(v20 + 4) = v24;
      v25 = *(v19 + 920);
      *(v20 + 8) = v25;
      *(v20 + 16) = *(v19 + 1216) + v25;
      v11[9] = (v11[9] + 1) % v11[8];
      v18 = *(*(v11 + 6) + 2392);
    }

    v26 = *(v18 + 5848);
    if (v26)
    {
      v27 = *(v11 + 3) + 24 * v11[9];
      v28 = *(v14 + 240);
      *v27 = 101;
      v29 = (*(*(v11 + 6) + 1924) << 8) | 0x65;
      v30 = v28 == 0;
      if (v28)
      {
        v31 = *(*(v11 + 6) + 1924);
      }

      else
      {
        v31 = -1;
      }

      if (!v30)
      {
        v29 = -155;
      }

      *v27 = v29;
      *(v27 + 4) = v31;
      v32 = *(v26 + 328);
      *(v27 + 8) = v32;
      *(v27 + 16) = *(v26 + 504) + v32;
      v11[9] = (v11[9] + 1) % v11[8];
    }

    if (*(v11 + 64) == 1)
    {
      *(v11 + 1) = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      *(v12 + 2) = objc_alloc_init(MEMORY[0x29EDB8E00]);
      *v12 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      if (v19)
      {
        v33 = *(v19 + 808);
        v34 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:*(v19 + 968) length:*(v19 + 1216)];
        v35 = [objc_alloc(MEMORY[0x29EDBB728]) initWithBinary:v34 uniqueIdentifier:v33 debugIdentifier:*(v19 + 800)];

        v36 = [*(v12 + 2) objectForKey:@"bgo"];
        if (!v36)
        {
          v37 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
          [*(v12 + 2) setObject:v37 forKeyedSubscript:@"bgo"];
          v36 = v37;
        }

        [v36 addObject:v35];
        [*v12 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", *(v19 + 920), *(v19 + 1216), v33, @"bgo"}];
      }

      if (v26)
      {
        v38 = *(v26 + 248);
        v39 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:*(v26 + 352) length:*(v26 + 504)];
        v40 = [objc_alloc(MEMORY[0x29EDBB728]) initWithBinary:v39 uniqueIdentifier:v38 debugIdentifier:*(v26 + 240)];

        v41 = [*(v12 + 2) objectForKey:@"eot"];
        if (!v41)
        {
          v42 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
          [*(v12 + 2) setObject:v42 forKeyedSubscript:@"eot"];
          v41 = v42;
        }

        [v41 addObject:v40];
        [*v12 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", *(v26 + 328), *(v26 + 504), v38, @"eot"}];
      }

      if (*(v12 + 64) == 1)
      {
        v43 = *(v12 + 6);
        v44 = *(v43 + 2120);
        v45 = *v12;
        if (!v44)
        {
LABEL_36:
          AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::appendProgramAddressTables(AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::instance, v45, *(v12 + 2));
          return v10;
        }

        AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v44, v45, *(v12 + 2));
        *(*(v43 + 2120) + 8) = 0;
        if (v12[16])
        {
          v45 = *v12;
          goto LABEL_36;
        }
      }
    }
  }

  return v10;
}

@end