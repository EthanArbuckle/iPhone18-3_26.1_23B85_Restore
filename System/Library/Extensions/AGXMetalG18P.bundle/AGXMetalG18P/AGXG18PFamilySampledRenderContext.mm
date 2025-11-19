@interface AGXG18PFamilySampledRenderContext
- (AGXG18PFamilySampledRenderContext)initWithCommandBuffer:(id)a3 descriptor:(id)a4 subEncoderIndex:(unint64_t)a5 framebuffer:(void *)a6 programInfoBuffer:(id *)a7 capacity:(unint64_t)a8;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (void)dealloc;
- (void)destroyImpl;
- (void)dispatchThreadsPerTile:(id *)a3;
- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4;
- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4 withRenderTargetArrayIndex:(unsigned int)a5;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8;
- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6;
- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)setRenderPipelineState:(id)a3;
@end

@implementation AGXG18PFamilySampledRenderContext

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
        if (*(sampled_impl[6] + 28066) == 1)
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
  v6.super_class = AGXG18PFamilySampledRenderContext;
  [(AGXG18PFamilyRenderContext *)&v6 destroyImpl];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  v4.receiver = self;
  v4.super_class = AGXG18PFamilySampledRenderContext;
  [(AGXG18PFamilyRenderContext *)&v4 endEncoding];
  return [objc_alloc(MEMORY[0x29EDBB730]) initWithEncoderMappings:*self->_sampled_impl perInvocationMappings:*(self->_sampled_impl + 1) internalMappings:*(self->_sampled_impl + 2)];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6
{
  sampled_impl = self->_sampled_impl;
  v20 = *a5;
  v19 = *a6;
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::duplicateShaderAddresses(sampled_impl);
  v9 = sampled_impl[6];
  v10 = *(v9 + 27960);
  if (v10)
  {
    v11 = *(v10 + 32);
    if (v11)
    {
      v12 = *(v11 + 3946) == 0;
      v13 = 56;
      if (!v12)
      {
        v13 = 57;
      }
    }

    else
    {
      v13 = 57;
    }

    *(v9 + 79464) |= 1 << v13;
    v22 = v20;
    v21 = v19;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreadgroupsWithIndirectBuffer(v10, a3, a4, &v22, &v21);
  }

  if (*(sampled_impl + 64) == 1)
  {
    v14 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v15 = sampled_impl[6];
    v16 = sampled_impl[2];
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v15 + 30352), v14);
    v17 = *(v15 + 2120);
    if (v17)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v17, v14, v16);
      *(*(v15 + 2120) + 8) = 0;
    }

    v18 = sampled_impl[1];

    [v18 addObject:v14];
  }
}

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  sampled_impl = self->_sampled_impl;
  v18 = *a3;
  v17 = *a4;
  v16 = *a5;
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::duplicateShaderAddresses(sampled_impl);
  v6 = sampled_impl[6];
  v7 = *(v6 + 27960);
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

    *(v6 + 79464) |= 1 << v10;
    v21 = v18;
    v20 = v17;
    v19 = v16;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreads(v7, &v21, &v20, &v19);
  }

  if (*(sampled_impl + 64) == 1)
  {
    v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v12 = sampled_impl[6];
    v13 = sampled_impl[2];
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v12 + 30352), v11);
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
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::duplicateShaderAddresses(sampled_impl);
  v6 = sampled_impl[6];
  v7 = *(v6 + 27960);
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

    *(v6 + 79464) |= 1 << v10;
    v21 = v18;
    v20 = v17;
    v19 = v16;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreadgroups(v7, &v21, &v20, &v19);
  }

  if (*(sampled_impl + 64) == 1)
  {
    v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v12 = sampled_impl[6];
    v13 = sampled_impl[2];
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v12 + 30352), v11);
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

- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8
{
  v73 = a8;
  v9 = a6;
  sampled_impl = self->_sampled_impl;
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::duplicateShaderAddresses(sampled_impl);
  v12 = sampled_impl[6];
  v13 = MEMORY[0x29EDC5638];
  v14 = *MEMORY[0x29EDC5638];
  v15 = a5 + v14;
  v16 = *(a5 + v14 + 8);
  v17 = *(a5 + v14 + 16);
  v74 = v9 & 0xFFFFFFFC;
  if (*(v12 + 30088) == a5)
  {
    v29 = *MEMORY[0x29EDC5638];
    goto LABEL_29;
  }

  if ((v17 & 0x7FFFFFFF80) != 0 && (v17 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v19 = *(v12 + 2008);
    if (*(v19[2].i64[1] + 480) == 1)
    {
      v20 = v19[3];
      v21 = v19[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v20), vceqzq_s64(v21))))))
      {
        v22 = (a5 + *MEMORY[0x29EDC5638]);
        if ((v17 & 0x1000000000000000) != 0)
        {
          v22 = *v15;
        }

        v23 = *v22;
        if (v23)
        {
          v24 = *v23;
          v25 = v23[1];
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v23), vceqzq_s64(v25))))))
          {
            v26 = vandq_s8(v25, v21);
            v27 = v26.u64[1];
            if (v26.i64[1])
            {
              v28 = 3;
              goto LABEL_22;
            }

            v27 = v26.i64[0];
            if (v26.i64[0])
            {
              v28 = 2;
              goto LABEL_22;
            }

            v30 = vandq_s8(v24, v20);
            v27 = v30.u64[1];
            if (v30.i64[1])
            {
              v28 = 1;
              goto LABEL_22;
            }

            v27 = v30.i64[0];
            if (v30.i64[0])
            {
              v28 = 0;
LABEL_22:
              v31 = &v19->i8[8 * v28];
              v32 = *(v31 + 10);
              v33 = 1 << (__clz(v27) ^ 0x3Fu);
              v34 = (v33 & v32) != 0;
              if ((v33 & (*(v31 + 14) | v32)) != 0)
              {
                v35 = a5 + *MEMORY[0x29EDC5638];
                if ((v17 & 0x1000000000000000) != 0)
                {
                  v35 = *v15;
                }

                v77 = v35;
                v78 = (v16 + 127) & 0xFFFFFFFFFFFFFF80;
                v79 = v17 >> 7;
                v80 = 1;
                v81 = v34;
                ResourceTracker<_ResourceGroupBinding>::addResource(v19, &v77, *(v15 + 12), 1);
              }
            }
          }
        }
      }
    }
  }

  IOGPUResourceListAddResource();
  if (*(v12 + 1896))
  {
    MTLResourceListAddResource();
  }

  *(v12 + 30088) = a5;
  v29 = *v13;
  v14 = *v13;
LABEL_29:
  v36 = (v12 + 30065);
  v37 = *(a7 + v14 + 8);
  if (*(v12 + 30096) == a7)
  {
    goto LABEL_56;
  }

  v38 = a7 + v29;
  v39 = *(v38 + 2);
  if ((v39 & 0x7FFFFFFF80) != 0 && (v39 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v41 = *(v12 + 2008);
    if (*(v41[2].i64[1] + 480) == 1)
    {
      v42 = v41[3];
      v43 = v41[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v42), vceqzq_s64(v43))))))
      {
        v44 = (a7 + v29);
        if ((v39 & 0x1000000000000000) != 0)
        {
          v44 = *v38;
        }

        v45 = *v44;
        if (v45)
        {
          v46 = *v45;
          v47 = v45[1];
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v45), vceqzq_s64(v47))))))
          {
            v48 = vandq_s8(v47, v43);
            v49 = v48.u64[1];
            if (v48.i64[1])
            {
              v50 = 3;
              goto LABEL_49;
            }

            v49 = v48.i64[0];
            if (v48.i64[0])
            {
              v50 = 2;
              goto LABEL_49;
            }

            v51 = vandq_s8(v46, v42);
            v49 = v51.u64[1];
            if (v51.i64[1])
            {
              v50 = 1;
              goto LABEL_49;
            }

            v49 = v51.i64[0];
            if (v51.i64[0])
            {
              v50 = 0;
LABEL_49:
              v52 = &v41->i8[8 * v50];
              v53 = *(v52 + 10);
              v54 = 1 << (__clz(v49) ^ 0x3Fu);
              v55 = (v54 & v53) != 0;
              if ((v54 & (*(v52 + 14) | v53)) != 0)
              {
                v56 = (*(v38 + 1) + 127) & 0xFFFFFFFFFFFFFF80;
                v57 = a7 + v29;
                if ((v39 & 0x1000000000000000) != 0)
                {
                  v57 = *v38;
                }

                v77 = v57;
                v78 = v56;
                v79 = v39 >> 7;
                v80 = 65;
                v81 = v55;
                ResourceTracker<_ResourceGroupBinding>::addResource(v41, &v77, *(v38 + 12), 65);
              }
            }
          }
        }
      }
    }
  }

  IOGPUResourceListAddResource();
  if (*(v12 + 1896))
  {
    MTLResourceListAddResource();
  }

  *(v12 + 30096) = a7;
LABEL_56:
  v58 = v37 + v73;
  if (((*(*(v12 + 30336) + 2480) | *(*(v12 + 30336) + 2432)) & 0x700000000000) != 0)
  {
    v59 = a7 + *MEMORY[0x29EDC5638];
    *(v12 + 78096) |= 0x700000000000uLL;
    *(v12 + 78480) |= 0x40uLL;
    *(*(v12 + 49096) + 144) = vaddq_s64(vdupq_n_s64(v58), xmmword_29D2F2530);
    *(v12 + 49456) = vdupq_n_s64(v59);
  }

  v60 = v16 + v9;
  if ((*v36 & 1) == 0)
  {
    *v36 = 1;
    *(v12 + 78480) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(v12, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitRenderState(v12, *(v12 + 30336), *(v12 + 30344), *(v12 + 49088), *(v12 + 73032), v12 + 78096, 0);
  if (*(*(v12 + 2392) + 4907) == 1)
  {
    v61 = 0x114u >> a3;
    if (a3 >= 9)
    {
      LOBYTE(v61) = 0;
    }
  }

  else
  {
    LOBYTE(v61) = *(v12 + 30067);
  }

  LODWORD(v62) = *(v12 + 30068);
  if (v62 >= 0xFFFF)
  {
    v63 = 0xFFFF;
  }

  else
  {
    v63 = *(v12 + 30068);
  }

  if (a4 == 1)
  {
    v62 = v62;
  }

  else
  {
    v62 = v63;
  }

  v64 = *(v12 + 72);
  *v64 = (v62 << 32) | 0x40000001;
  *(v12 + 79472) |= 0x80uLL;
  if (v61)
  {
    v65 = 0x10000;
  }

  else
  {
    v65 = 0;
  }

  v66 = BYTE4(v60) | (AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeIndexedDrawIndirect[a3] + (a4 << 17)) & 0xFFEEFF00 | v65 | 0x100000;
  if ((v17 & 0xFFFFFFFFFFFFFFLL) <= v74)
  {
    v67 = -1;
  }

  else
  {
    v67 = ((v17 - v74 + 3) >> 2) - 1;
  }

  *(v12 + 72) = v64 + 32;
  *(v64 + 8) = v66;
  *(v64 + 12) = v60;
  *(v64 + 16) = WORD2(v58);
  *(v64 + 20) = v58 & 0xFFFFFFFC;
  *(v64 + 24) = v67;
  *(v64 + 28) = BYTE5(v60);
  ++*(v12 + 1940);
  *(v12 + 1960) = 0;
  if (*(sampled_impl + 64) == 1)
  {
    v68 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v69 = sampled_impl[6];
    v70 = sampled_impl[2];
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v69 + 30352), v68);
    v71 = *(v69 + 2120);
    if (v71)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v71, v68, v70);
      *(*(v69 + 2120) + 8) = 0;
    }

    v72 = sampled_impl[1];

    [v72 addObject:v68];
  }
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  v5 = a5;
  sampled_impl = self->_sampled_impl;
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::duplicateShaderAddresses(sampled_impl);
  v9 = sampled_impl[6];
  v10 = MEMORY[0x29EDC5638];
  v11 = *MEMORY[0x29EDC5638];
  v12 = a4 + v11;
  v13 = *(a4 + v11 + 8);
  if (*(v9 + 30096) == a4)
  {
    goto LABEL_28;
  }

  v14 = *(v12 + 2);
  if ((v14 & 0x7FFFFFFF80) != 0 && (v14 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v16 = *(v9 + 2008);
    if (*(v16[2].i64[1] + 480) == 1)
    {
      v17 = v16[3];
      v18 = v16[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v17), vceqzq_s64(v18))))))
      {
        v19 = (a4 + v11);
        if ((v14 & 0x1000000000000000) != 0)
        {
          v19 = *v12;
        }

        v20 = *v19;
        if (v20)
        {
          v21 = *v20;
          v22 = v20[1];
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v20), vceqzq_s64(v22))))))
          {
            v23 = vandq_s8(v22, v18);
            v24 = v23.u64[1];
            if (v23.i64[1])
            {
              v25 = 3;
              goto LABEL_21;
            }

            v24 = v23.i64[0];
            if (v23.i64[0])
            {
              v25 = 2;
              goto LABEL_21;
            }

            v26 = vandq_s8(v21, v17);
            v24 = v26.u64[1];
            if (v26.i64[1])
            {
              v25 = 1;
              goto LABEL_21;
            }

            v24 = v26.i64[0];
            if (v26.i64[0])
            {
              v25 = 0;
LABEL_21:
              v27 = &v16->i8[8 * v25];
              v28 = *(v27 + 10);
              v29 = 1 << (__clz(v24) ^ 0x3Fu);
              v30 = (v29 & v28) != 0;
              if ((v29 & (*(v27 + 14) | v28)) != 0)
              {
                v31 = a4 + v11;
                if ((v14 & 0x1000000000000000) != 0)
                {
                  v31 = *v12;
                }

                v46[0] = v31;
                v46[1] = (v13 + 127) & 0xFFFFFFFFFFFFFF80;
                v47 = v14 >> 7;
                v48 = 65;
                v49 = v30;
                ResourceTracker<_ResourceGroupBinding>::addResource(v16, v46, *(v12 + 12), 65);
              }
            }
          }
        }
      }
    }
  }

  IOGPUResourceListAddResource();
  if (*(v9 + 1896))
  {
    MTLResourceListAddResource();
  }

  *(v9 + 30096) = a4;
  v11 = *v10;
LABEL_28:
  v32 = v13 + v5;
  if (((*(*(v9 + 30336) + 2480) | *(*(v9 + 30336) + 2432)) & 0x700000000000) == 0)
  {
    goto LABEL_35;
  }

  v33 = a4 + v11;
  *(v9 + 78096) |= 0x700000000000uLL;
  *(v9 + 78480) |= 0x40uLL;
  v34 = *(v9 + 49096);
  *(v34 + 152) = v32 + 12;
  *(v9 + 49464) = v33;
  if (*(v9 + 29920) != 1)
  {
    v35 = *(v9 + 168);
    v36 = v35 + 1;
    if ((v35 + 1) > *(v9 + 160))
    {
      v45 = AGX::DataBufferAllocator<44ul>::growNoInline(v9 + 24, 3, 0);
      v35 = *(v9 + 168);
      if (!v45)
      {
        goto LABEL_33;
      }

      v36 = v35 + 1;
      if ((v35 + 1) > *(v9 + 160))
      {
        abort();
      }
    }

    *(v9 + 176) = v36;
LABEL_33:
    v37 = v35 + *(v9 + 184);
    *v35 = 0;
    *(v9 + 168) = v35 + 1;
    *(*(v9 + 49096) + 144) = v37;
    v33 = (*(*(v9 + 48) + 224) + *v10);
    goto LABEL_34;
  }

  *(v34 + 144) = v32 + 8;
LABEL_34:
  *(v9 + 49456) = v33;
LABEL_35:
  if (*(v9 + 30065) == 1)
  {
    *(v9 + 30065) = 0;
    *(v9 + 78480) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(v9, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitRenderState(v9, *(v9 + 30336), *(v9 + 30344), *(v9 + 49088), *(v9 + 73032), v9 + 78096, 0);
  *(v9 + 79472) |= 0x80uLL;
  v38 = v32 & 0xFFFF00000000 | AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeNonIndexedDrawIndirect[a3];
  v39 = *(v9 + 72);
  *(v9 + 72) = v39 + 12;
  *v39 = v38;
  *(v39 + 8) = v32 & 0xFFFFFFFC;
  ++*(v9 + 1940);
  *(v9 + 1960) = 0;
  if (*(sampled_impl + 64) == 1)
  {
    v40 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v41 = sampled_impl[6];
    v42 = sampled_impl[2];
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v41 + 30352), v40);
    v43 = *(v41 + 2120);
    if (v43)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v43, v40, v42);
      *(*(v41 + 2120) + 8) = 0;
    }

    v44 = sampled_impl[1];

    [v44 addObject:v40];
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
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchThreads(sampled_impl, &v8, v7, a5 | 0x100000000);
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
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchThreads(sampled_impl, &v7, v6, 0);
}

- (void)dispatchThreadsPerTile:(id *)a3
{
  sampled_impl = self->_sampled_impl;
  v12 = *a3;
  AGX::SampledRenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::duplicateShaderAddresses(sampled_impl);
  v4 = *(sampled_impl + 6);
  v5 = *(v4 + 2392);
  memset(v13, 0, sizeof(v13));
  v6 = *(v5 + 3568);
  *&v7 = v6;
  *(&v7 + 1) = HIDWORD(v6);
  v14 = v7;
  v15 = 1;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchThreadsImpl<false>(v4, &v12, v13, 1uLL, 0, 0);
  if (*(sampled_impl + 64) == 1)
  {
    v8 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v9 = *(sampled_impl + 6);
    v10 = *(sampled_impl + 2);
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v9 + 30352), v8);
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

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setRenderPipelineStateCommon(v5, a3 + 240);
  *(v5 + 28067) = 1;
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
  v4.super_class = AGXG18PFamilySampledRenderContext;
  [(AGXG18PFamilyRenderContext *)&v4 dealloc];
}

- (AGXG18PFamilySampledRenderContext)initWithCommandBuffer:(id)a3 descriptor:(id)a4 subEncoderIndex:(unint64_t)a5 framebuffer:(void *)a6 programInfoBuffer:(id *)a7 capacity:(unint64_t)a8
{
  v8 = a8;
  v50.receiver = self;
  v50.super_class = AGXG18PFamilySampledRenderContext;
  v11 = [(AGXG18PFamilyRenderContext *)&v50 initWithCommandBuffer:a3 descriptor:a4 subEncoderIndex:a5 framebuffer:a6];
  if (v11)
  {
    v12 = malloc_type_calloc(0x48uLL, 1uLL, 0x10A00406D0CADDEuLL);
    v11->_sampled_impl = v12;
    if (!v12)
    {
      [(AGXG18PFamilyRenderContext *)v11 endEncoding];

      return 0;
    }

    v13 = v12;
    impl = v11->super._impl;
    v15 = *(a3 + 760);
    v16 = *(a3 + 761);
    *v12 = 0;
    *(v12 + 1) = 0;
    *(v12 + 2) = 0;
    *(v12 + 3) = a7;
    v12[9] = 0;
    v12[10] = 0;
    v12[8] = v8;
    *(v12 + 6) = impl;
    *(v12 + 7) = 0;
    *(v12 + 64) = v15;
    *(v12 + 65) = v16;
    v17 = *(impl[234] + 848) + 0x4000;
    if ((*(*(impl[234] + 848) + 16624) & 1) == 0)
    {
      do
      {
        v18 = *(v17 + 244);
        if (v18 == -2)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18 + 1;
        }

        v20 = *(v17 + 244);
        atomic_compare_exchange_strong((v17 + 244), &v20, v19);
      }

      while (v20 != v18);
      *(impl + 481) = v18;
      *(impl + 1928) = 1;
      impl = *(v12 + 6);
    }

    v21 = impl[299];
    v22 = *(v21 + 5376);
    if (v22)
    {
      v23 = *(v12 + 3) + 24 * v12[9];
      v24 = *(v17 + 240);
      *v23 = 100;
      v25 = (*(*(v12 + 6) + 1924) << 8) | 0x64;
      v26 = v24 == 0;
      if (v24)
      {
        v27 = *(*(v12 + 6) + 1924);
      }

      else
      {
        v27 = -1;
      }

      if (!v26)
      {
        v25 = -156;
      }

      *v23 = v25;
      *(v23 + 4) = v27;
      v28 = *(v22 + 920);
      *(v23 + 8) = v28;
      *(v23 + 16) = *(v22 + 1216) + v28;
      v12[9] = (v12[9] + 1) % v12[8];
      v21 = *(*(v12 + 6) + 2392);
    }

    v29 = *(v21 + 5848);
    if (v29)
    {
      v30 = *(v12 + 3) + 24 * v12[9];
      v31 = *(v17 + 240);
      *v30 = 101;
      v32 = (*(*(v12 + 6) + 1924) << 8) | 0x65;
      v33 = v31 == 0;
      if (v31)
      {
        v34 = *(*(v12 + 6) + 1924);
      }

      else
      {
        v34 = -1;
      }

      if (!v33)
      {
        v32 = -155;
      }

      *v30 = v32;
      *(v30 + 4) = v34;
      v35 = *(v29 + 328);
      *(v30 + 8) = v35;
      *(v30 + 16) = *(v29 + 504) + v35;
      v12[9] = (v12[9] + 1) % v12[8];
    }

    if (*(v12 + 64) == 1)
    {
      *(v12 + 1) = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      *(v13 + 2) = objc_alloc_init(MEMORY[0x29EDB8E00]);
      *v13 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      if (v22)
      {
        v36 = *(v22 + 808);
        v37 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:*(v22 + 968) length:*(v22 + 1216)];
        v38 = [objc_alloc(MEMORY[0x29EDBB728]) initWithBinary:v37 uniqueIdentifier:v36 debugIdentifier:*(v22 + 800)];

        v39 = [*(v13 + 2) objectForKey:@"bgo"];
        if (!v39)
        {
          v40 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
          [*(v13 + 2) setObject:v40 forKeyedSubscript:@"bgo"];
          v39 = v40;
        }

        [v39 addObject:v38];
        [*v13 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", *(v22 + 920), *(v22 + 1216), v36, @"bgo"}];
      }

      if (v29)
      {
        v41 = *(v29 + 248);
        v42 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:*(v29 + 352) length:*(v29 + 504)];
        v43 = [objc_alloc(MEMORY[0x29EDBB728]) initWithBinary:v42 uniqueIdentifier:v41 debugIdentifier:*(v29 + 240)];

        v44 = [*(v13 + 2) objectForKey:@"eot"];
        if (!v44)
        {
          v45 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
          [*(v13 + 2) setObject:v45 forKeyedSubscript:@"eot"];
          v44 = v45;
        }

        [v44 addObject:v43];
        [*v13 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", *(v29 + 328), *(v29 + 504), v41, @"eot"}];
      }

      if (*(v13 + 64) == 1)
      {
        v46 = *(v13 + 6);
        v47 = *(v46 + 2120);
        v48 = *v13;
        if (!v47)
        {
LABEL_36:
          AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::appendProgramAddressTables(AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::instance, v48, *(v13 + 2));
          return v11;
        }

        AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v47, v48, *(v13 + 2));
        *(*(v46 + 2120) + 8) = 0;
        if (v13[16])
        {
          v48 = *v13;
          goto LABEL_36;
        }
      }
    }
  }

  return v11;
}

@end