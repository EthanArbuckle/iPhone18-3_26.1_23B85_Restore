void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeWriteCompactedSizes(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!a3)
  {
    return;
  }

  {
    {
    }

    {
    }

    if (shouldDumpOrVerifyBVHs(void)::once != -1)
    {
      dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeWriteCompactedSizes(AGX::Span<unsigned long long const>)::verify = 0;
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeWriteCompactedSizes(AGX::Span<unsigned long long const>)::verify == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v24, a1, 0x480188uLL, 1);
    v6 = __dst;
    bzero(__dst, 0x480188uLL);
    v6[1] = -1;
    v7 = **(a1 + 16);
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 3221225472;
    v23[2] = ___ZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE25encodeWriteCompactedSizesENS_4SpanIKyEE_block_invoke;
    v23[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
    v23[4] = v6;
    [v7 addCompletedHandler:v23];
    v8 = v24;
    v9 = *(a1 + 16);
    *(*(v9 + 22488) + 17408) = 0;
    v10 = *(v9 + 168);
    v11 = v10 + 31;
    if ((v10 + 31) > *(v9 + 160))
    {
      v22 = AGX::DataBufferAllocator<44ul>::growNoInline(v9 + 24, 3, 0);
      v10 = *(v9 + 168);
      if (!v22)
      {
        goto LABEL_6;
      }

      v11 = v10 + 31;
      if ((v10 + 31) > *(v9 + 160))
      {
        abort();
      }
    }

    *(v9 + 176) = v11;
LABEL_6:
    v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = v12 + *(v9 + 184);
    *(v9 + 168) = v12 + 2;
    *(v9 + 26160) = 0;
    *(v9 + 27560) |= 0x10uLL;
    *(v9 + 27592) |= 1u;
    v14 = *(v9 + 22488);
    *(v14 + 32) = v13;
    *(v9 + 22536) = *(*(v9 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v14 + 17532) = 16;
    *(v14 + 17672) = 16;
    *(v14 + 17676) = v13 >> 8;
    *v12 = v8;
    v12[1] = 0;
  }

  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v24, a1, 8 * a3, 0);
  memcpy(__dst, a2, 8 * a3);
  v15 = v24;
  v16 = v26;
  v17 = *(a1 + 16);
  *(v17 + 26408) = v24;
  **(v17 + 22488) = v15;
  *(v17 + 22504) = v16;
  *(v17 + 27560) |= 1uLL;
  *(v17 + 27592) |= 1u;
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 59, 0);
  v19 = 64;
  if (*(a1 + 44) != 1)
  {
    v19 = 1;
  }

  v20 = *(a1 + 16);
  v27 = a3;
  v28 = vdupq_n_s64(1uLL);
  v29 = v19;
  v30 = v28;
  *(v20 + 2060) |= 4u;
  v21 = *(v20 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v20, Pipeline);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v20, &v29, &v27);
  if (*(v20 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v20, 22, 0, 0);
  }

  if (v21)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v20, v21);
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(uint64_t a1, void *a2, unint64_t a3, unsigned int a4)
{
  v4 = a4;
  v5 = a3;
  v181[1] = *MEMORY[0x29EDCA608];
  {
    {
    }

    {
    }

    if (shouldDumpOrVerifyBVHs(void)::once != -1)
    {
      dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify = 0;
    v5 = a3;
    v4 = a4;
  }

  if (*(a1 + 44) >= 2u)
  {
    Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 75, 0);
    if (v4 != 4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v176 = 0;
    v177 = 0;
    v178 = 0;
    goto LABEL_8;
  }

  Pipeline = 0;
  if (v4 == 4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v179 = 0;
  v180 = 0;
  v181[0] = 0;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  if (v5 > 1)
  {
    v7 = &v177;
    v8 = &v178;
    v176 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 72, 0);
    v9 = 1;
    v10 = 74;
    v11 = 73;
    goto LABEL_9;
  }

LABEL_8:
  v7 = &v180;
  v8 = v181;
  v9 = 0;
  v179 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 69, 0);
  v10 = 71;
  v11 = 70;
LABEL_9:
  *v7 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v11, 0);
  *v8 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v10, 0);
  v163 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 77, 0);
  v162 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 76, 0);
  v166 = v9;
  if (!v9)
  {
    if (!v5)
    {
      return;
    }

    v159 = 0;
    VirtualSubstream = 0;
    goto LABEL_21;
  }

  VirtualSubstream = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(a1 + 16));
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v172, a1, 8 * v5, 1);
  v13 = v172;
  v5 = a3;
  if (!a3)
  {
    v16 = 1;
    goto LABEL_131;
  }

  v14 = *(&v172 + 1);
  v159 = v172;
  if (a3 == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = a3 & 0xFFFFFFFFFFFFFFFELL;
    v17 = (*(&v172 + 1) + 8);
    v18 = a2;
    v19 = a3 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v20 = v18[50];
      *(v17 - 1) = *v18;
      *v17 = v20;
      v17 += 2;
      v18 += 100;
      v19 -= 2;
    }

    while (v19);
    if (a3 == v15)
    {
      goto LABEL_21;
    }
  }

  v21 = a3 - v15;
  v22 = (v14 + 8 * v15);
  v23 = &a2[50 * v15];
  do
  {
    *v22++ = *v23;
    v23 += 50;
    --v21;
  }

  while (v21);
LABEL_21:
  v24 = 0;
  v164 = vdupq_n_s64(1uLL);
  do
  {
    while (1)
    {
      v25 = &a2[50 * v24];
      v168 = v25[37];
      v26 = v25[1];
      v27 = *(v25 + 20);
      v172 = *(v25 + 19);
      v173 = v27;
      if (*(v25 + 34))
      {
        v28 = *(v25 + 114) == 0;
      }

      else
      {
        v28 = 0;
      }

      if (v28)
      {
        v29 = *(v25 + 113) == 2;
        v30 = v25[42];
        if (!v24)
        {
          goto LABEL_31;
        }

LABEL_30:
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(a1 + 16));
        goto LABEL_31;
      }

      v29 = 0;
      v30 = v25[42];
      if (v24)
      {
        goto LABEL_30;
      }

LABEL_31:
      if (!v29)
      {
        break;
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify != 1)
      {
        v29 = 0;
        goto LABEL_37;
      }

      v31 = *(a1 + 16);
      *(*(v31 + 22488) + 17408) = 0;
      v32 = *(v31 + 168);
      v33 = v32 + 31;
      if ((v32 + 31) > *(v31 + 160))
      {
        v88 = AGX::DataBufferAllocator<44ul>::growNoInline(v31 + 24, 3, 0);
        v32 = *(v31 + 168);
        if (!v88)
        {
          goto LABEL_35;
        }

        v33 = v32 + 31;
        if ((v32 + 31) > *(v31 + 160))
        {
          goto LABEL_207;
        }
      }

      *(v31 + 176) = v33;
LABEL_35:
      v34 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = v34 + *(v31 + 184);
      *(v31 + 168) = v34 + 2;
      *(v31 + 26160) = 0;
      *(v31 + 27560) |= 0x10uLL;
      *(v31 + 27592) |= 1u;
      v36 = *(v31 + 22488);
      *(v36 + 32) = v35;
      *(v31 + 22536) = *(*(v31 + 48) + 224) + *MEMORY[0x29EDC5638];
      *(v36 + 17532) = 16;
      *(v36 + 17672) = 16;
      *(v36 + 17676) = v35 >> 8;
      *v34 = v30;
      v34[1] = 0;
      v29 = 1;
LABEL_37:
      {
        AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
      }

      {
        AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
      }

      v37 = (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || *(v25 + 124) & 1);
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeTrianglePairingForBvh(a1, (v25 + 12), *(&v172 + 1), v37, (v25 + 4));
      v38 = *(a1 + 16);
      if (*(v38 + 2292) != 1)
      {
        break;
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
      *(v38 + 2306) = 0;
      if (*(v38 + 2292) != 1 || *(v38 + 27624))
      {
        break;
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v38, 22, (v38 + 28192), (v38 + 28200), (v38 + 28208));
      if (v166)
      {
        goto LABEL_22;
      }

LABEL_48:
      v39 = *(&v179 + *(v26 + 76));
      v40 = *(a1 + 16);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify != 1)
      {
        goto LABEL_52;
      }

      *(*(v40 + 22488) + 17408) = 0;
      v41 = *(v40 + 168);
      v42 = v41 + 31;
      if ((v41 + 31) > *(v40 + 160))
      {
        v89 = AGX::DataBufferAllocator<44ul>::growNoInline(v40 + 24, 3, 0);
        v41 = *(v40 + 168);
        if (!v89)
        {
          goto LABEL_51;
        }

        v42 = v41 + 31;
        if ((v41 + 31) > *(v40 + 160))
        {
          goto LABEL_207;
        }
      }

      *(v40 + 176) = v42;
LABEL_51:
      v43 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
      v44 = v43 + *(v40 + 184);
      *(v40 + 168) = v43 + 16;
      *(v40 + 26160) = 0;
      v45 = *(v40 + 27560) | 0x10;
      *(v40 + 27592) |= 1u;
      *(v40 + 27560) = v45;
      v46 = *(v40 + 22488);
      *(v46 + 32) = v44;
      *(v40 + 22536) = *(*(v40 + 48) + 224) + *MEMORY[0x29EDC5638];
      *(v46 + 17532) = 16;
      *(v46 + 17672) = 16;
      *(v46 + 17676) = v44 >> 8;
      *v43 = v30;
      *(v43 + 8) = v29;
      *(v43 + 12) = 0;
      ++v29;
      v40 = *(a1 + 16);
LABEL_52:
      v47 = *v25;
      v48 = v25[3];
      *(v40 + 26464) = *v25;
      *(*(v40 + 22488) + 56) = v47;
      *(v40 + 22560) = v48;
      LODWORD(v48) = *(v40 + 27592);
      *(v40 + 27560) |= 0x80uLL;
      *(v40 + 27592) = v48 | 1;
      v174 = v164;
      v175 = 1;
      *v170 = xmmword_29D2F23D0;
      *&v170[16] = 1;
      *(v40 + 2060) |= 4u;
      v49 = *(v40 + 2336);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v40, v39);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v40, v170, &v174);
      if (*(v40 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v40, 22, 0, 0);
      }

      if (v49)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v40, v49);
      }

      v50 = *(v26 + 672);
      if (*(v26 + 165) == 1)
      {
        v51 = *(a1 + 16);
        *(*(v51 + 22496) + 2036) = *(v26 + 50);
        v5 = a3;
        if (*(v51 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v51, 22, 0, 0);
          *(v51 + 2306) = 0;
          if (*(v51 + 2292) == 1 && !*(v51 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v51, 22, (v51 + 28192), (v51 + 28200), (v51 + 28208));
          }
        }

        v52 = *(a1 + 16);
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify == 1)
        {
          *(*(v52 + 22488) + 17408) = 0;
          v53 = *(v52 + 168);
          v54 = v53 + 31;
          if ((v53 + 31) <= *(v52 + 160))
          {
            goto LABEL_63;
          }

          v90 = v52;
          v91 = AGX::DataBufferAllocator<44ul>::growNoInline(v52 + 24, 3, 0);
          v52 = v90;
          v53 = *(v90 + 168);
          if (v91)
          {
            v54 = v53 + 31;
            if ((v53 + 31) > *(v90 + 160))
            {
              goto LABEL_207;
            }

LABEL_63:
            *(v52 + 176) = v54;
          }

          v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
          v56 = v55 + *(v52 + 184);
          *(v52 + 168) = v55 + 16;
          *(v52 + 26160) = 0;
          v57 = *(v52 + 27560) | 0x10;
          *(v52 + 27592) |= 1u;
          *(v52 + 27560) = v57;
          v58 = *(v52 + 22488);
          *(v58 + 32) = v56;
          *(v52 + 22536) = *(*(v52 + 48) + 224) + *MEMORY[0x29EDC5638];
          *(v58 + 17532) = 16;
          *(v58 + 17672) = 16;
          *(v58 + 17676) = v56 >> 8;
          *v55 = v30;
          *(v55 + 8) = v29;
          *(v55 + 12) = 0;
          ++v29;
          v52 = *(a1 + 16);
        }

        v59 = v25[49];
        *(v52 + 2060) |= 4u;
        v60 = v163;
LABEL_78:
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v52, 22, v60, v50, v59);
        goto LABEL_79;
      }

      v5 = a3;
      if ((*(v26 + 152) & 1) != 0 && (*(v25 + 114) == 3 || !*(v25 + 114)))
      {
        v61 = *(a1 + 16);
        if (*(v61 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
          *(v61 + 2306) = 0;
          if (*(v61 + 2292) == 1 && !*(v61 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v61, 22, (v61 + 28192), (v61 + 28200), (v61 + 28208));
          }
        }

        v52 = *(a1 + 16);
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify == 1)
        {
          *(*(v52 + 22488) + 17408) = 0;
          v62 = *(v52 + 168);
          v63 = v62 + 31;
          if ((v62 + 31) <= *(v52 + 160))
          {
            goto LABEL_75;
          }

          v94 = v52;
          v95 = AGX::DataBufferAllocator<44ul>::growNoInline(v52 + 24, 3, 0);
          v52 = v94;
          v62 = *(v94 + 168);
          if (v95)
          {
            v63 = v62 + 31;
            if ((v62 + 31) > *(v94 + 160))
            {
              goto LABEL_207;
            }

LABEL_75:
            *(v52 + 176) = v63;
          }

          v64 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
          v65 = v64 + *(v52 + 184);
          *(v52 + 168) = v64 + 16;
          *(v52 + 26160) = 0;
          v66 = *(v52 + 27560) | 0x10;
          *(v52 + 27592) |= 1u;
          *(v52 + 27560) = v66;
          v67 = *(v52 + 22488);
          *(v67 + 32) = v65;
          *(v52 + 22536) = *(*(v52 + 48) + 224) + *MEMORY[0x29EDC5638];
          *(v67 + 17532) = 16;
          *(v67 + 17672) = 16;
          *(v67 + 17676) = v65 >> 8;
          *v64 = v30;
          *(v64 + 8) = v29;
          *(v64 + 12) = 0;
          ++v29;
          v52 = *(a1 + 16);
        }

        v59 = v25[49];
        *(v52 + 2060) |= 4u;
        v60 = Pipeline;
        goto LABEL_78;
      }

LABEL_79:
      if (*(v26 + 164) == 1)
      {
        v68 = *(a1 + 16);
        if (*(v68 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
          *(v68 + 2306) = 0;
          if (*(v68 + 2292) == 1 && !*(v68 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v68, 22, (v68 + 28192), (v68 + 28200), (v68 + 28208));
          }
        }

        v69 = *(a1 + 16);
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify == 1)
        {
          *(*(v69 + 22488) + 17408) = 0;
          v70 = *(v69 + 168);
          v71 = v70 + 31;
          if ((v70 + 31) <= *(v69 + 160))
          {
            goto LABEL_86;
          }

          v92 = v69;
          v93 = AGX::DataBufferAllocator<44ul>::growNoInline(v69 + 24, 3, 0);
          v69 = v92;
          v70 = *(v92 + 168);
          if (v93)
          {
            v71 = v70 + 31;
            if ((v70 + 31) > *(v92 + 160))
            {
              goto LABEL_207;
            }

LABEL_86:
            *(v69 + 176) = v71;
          }

          v72 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
          v73 = v72 + *(v69 + 184);
          *(v69 + 168) = v72 + 16;
          *(v69 + 26160) = 0;
          v74 = *(v69 + 27560) | 0x10;
          *(v69 + 27592) |= 1u;
          *(v69 + 27560) = v74;
          v75 = *(v69 + 22488);
          *(v75 + 32) = v73;
          *(v69 + 22536) = *(*(v69 + 48) + 224) + *MEMORY[0x29EDC5638];
          *(v75 + 17532) = 16;
          *(v75 + 17672) = 16;
          *(v75 + 17676) = v73 >> 8;
          *v72 = v30;
          *(v72 + 8) = v29;
          *(v72 + 12) = 0;
          ++v29;
          v69 = *(a1 + 16);
        }

        v76 = v25[49];
        *(v69 + 2060) |= 4u;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v69, 22, v162, v50 + 6, v76);
      }

      if (*(v25 + 114) - 8 > 0xFFFFFFFD || (*(v26 + 159) & 1) != 0)
      {
        goto LABEL_101;
      }

      if (v25[29])
      {
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify == 1)
        {
          v77 = *(a1 + 16);
          *(*(v77 + 22488) + 17408) = 0;
          v78 = *(v77 + 168);
          v79 = v78 + 31;
          if ((v78 + 31) <= *(v77 + 160))
          {
            goto LABEL_94;
          }

          v96 = AGX::DataBufferAllocator<44ul>::growNoInline(v77 + 24, 3, 0);
          v78 = *(v77 + 168);
          if (v96)
          {
            v79 = v78 + 31;
            if ((v78 + 31) > *(v77 + 160))
            {
              goto LABEL_207;
            }

LABEL_94:
            *(v77 + 176) = v79;
          }

          v80 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
          v81 = v80 + *(v77 + 184);
          *(v77 + 168) = v80 + 16;
          *(v77 + 26160) = 0;
          *(v77 + 27560) |= 0x10uLL;
          *(v77 + 27592) |= 1u;
          v82 = *(v77 + 22488);
          *(v82 + 32) = v81;
          *(v77 + 22536) = *(*(v77 + 48) + 224) + *MEMORY[0x29EDC5638];
          *(v82 + 17532) = 16;
          *(v82 + 17672) = 16;
          *(v82 + 17676) = v81 >> 8;
          *v80 = v30;
          *(v80 + 8) = v29;
          *(v80 + 12) = 0;
        }

        v83 = *(a1 + 16);
        if (*(v83 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
          *(v83 + 2306) = 0;
          if (*(v83 + 2292) == 1 && !*(v83 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v83, 22, (v83 + 28192), (v83 + 28200), (v83 + 28208));
          }
        }
      }

      v84 = [v168 buffer];
      v85 = [v168 bufferOffset];
      v86 = [v84 gpuAddress];
      v87 = [v84 length];
      *v170 = v86 + v85;
      *&v170[8] = v85;
      *&v170[16] = v87;
      v171 = 0;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyPPD(a1, (v25 + 12), &v172, v170);
      v5 = a3;
LABEL_101:
      {
        {
        }
      }

      if (++v24 == v5)
      {
        return;
      }
    }

    if ((v166 & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_22:
    ++v24;
  }

  while (v24 != v5);
  v16 = 0;
  v13 = v159;
LABEL_131:
  v97 = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(a1 + 16));
  if (VirtualSubstream < v97)
  {
    do
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::waitForVirtualSubstream(*(a1 + 16), VirtualSubstream++);
    }

    while (v97 != VirtualSubstream);
  }

  v98 = *(a1 + 16);
  *(*(v98 + 22488) + 17420) = 0;
  v99 = *(v98 + 168);
  v100 = v99 + 31;
  v169 = v97;
  if ((v99 + 31) > *(v98 + 160))
  {
    v158 = AGX::DataBufferAllocator<44ul>::growNoInline(v98 + 24, 3, 0);
    v99 = *(v98 + 168);
    if (v158)
    {
      v100 = v99 + 31;
      if ((v99 + 31) > *(v98 + 160))
      {
LABEL_207:
        abort();
      }

      goto LABEL_134;
    }
  }

  else
  {
LABEL_134:
    *(v98 + 176) = v100;
  }

  v101 = (v99 + 15) & 0xFFFFFFFFFFFFFFF0;
  v102 = v101 + *(v98 + 184);
  *(v98 + 168) = v101 + 16;
  *(v98 + 26184) = 0;
  v103 = *(v98 + 27592);
  *(v98 + 27560) |= 0x80uLL;
  *(v98 + 27592) = v103 | 1;
  v104 = *(v98 + 22488);
  *(v104 + 56) = v102;
  *(v98 + 22560) = *(*(v98 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(v104 + 17544) = 16;
  *(v104 + 17696) = 16;
  *(v104 + 17700) = v102 >> 8;
  *v101 = v13;
  *(v101 + 8) = v5;
  v105 = *(&v176 + a4);
  v106 = *(a1 + 16);
  *v170 = v5;
  *&v170[8] = vdupq_n_s64(1uLL);
  v172 = xmmword_29D2F23D0;
  *&v173 = 1;
  *(v106 + 2060) |= 4u;
  v107 = *(v106 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v106, v105);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v106, &v172, v170);
  if (*(v106 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v106, 22, 0, 0);
  }

  if (v107)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v106, v107);
  }

  v108 = a3;
  if ((v16 & 1) == 0)
  {
    for (i = a2 + 29; ; i += 50)
    {
      v110 = i[8];
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(a1 + 16));
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::waitForVirtualSubstream(*(a1 + 16), v169);
      v111 = *(i - 29);
      v112 = *(i - 26);
      v113 = *(a1 + 16);
      *(v113 + 26464) = v111;
      v114 = *(v113 + 22488);
      *(v114 + 56) = v111;
      *(v113 + 22560) = v112;
      *(v113 + 27560) |= 0x80uLL;
      *(v113 + 27592) |= 1u;
      v115 = 1;
      if (*(i - 24) && !*(i - 118))
      {
        if (*(i - 119) == 2)
        {
          v115 = 2;
        }

        else
        {
          v115 = 1;
        }
      }

      v116 = i[13];
      v117 = *(i - 28);
      v118 = *(v117 + 672);
      if (*(v117 + 165) == 1)
      {
        break;
      }

      if ((*(v117 + 152) & 1) != 0 && (*(i - 118) == 3 || !*(i - 118)))
      {
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify == 1)
        {
          *(v114 + 17408) = 0;
          v128 = *(v113 + 168);
          v129 = v128 + 31;
          if ((v128 + 31) <= *(v113 + 160))
          {
            goto LABEL_162;
          }

          v156 = AGX::DataBufferAllocator<44ul>::growNoInline(v113 + 24, 3, 0);
          v128 = *(v113 + 168);
          if (v156)
          {
            v129 = v128 + 31;
            if ((v128 + 31) > *(v113 + 160))
            {
              goto LABEL_207;
            }

LABEL_162:
            *(v113 + 176) = v129;
          }

          v130 = (v128 + 15) & 0xFFFFFFFFFFFFFFF0;
          v131 = v130 + *(v113 + 184);
          *(v113 + 168) = v130 + 16;
          *(v113 + 26160) = 0;
          *(v113 + 27560) |= 0x10uLL;
          *(v113 + 27592) |= 1u;
          v132 = *(v113 + 22488);
          *(v132 + 32) = v131;
          *(v113 + 22536) = *(*(v113 + 48) + 224) + *MEMORY[0x29EDC5638];
          *(v132 + 17532) = 16;
          *(v132 + 17672) = 16;
          *(v132 + 17676) = v131 >> 8;
          *v130 = v116;
          *(v130 + 8) = v115;
          *(v130 + 12) = 0;
          ++v115;
          v113 = *(a1 + 16);
        }

        v126 = i[20];
        *(v113 + 2060) |= 4u;
        v119 = v113;
        v127 = Pipeline;
LABEL_165:
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v119, 22, v127, v118, v126);
      }

      if (*(v117 + 164) == 1)
      {
        v133 = *(a1 + 16);
        if (*(v133 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
          *(v133 + 2306) = 0;
          if (*(v133 + 2292) == 1 && !*(v133 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v133, 22, (v133 + 28192), (v133 + 28200), (v133 + 28208));
          }
        }

        v134 = *(a1 + 16);
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify == 1)
        {
          *(*(v134 + 22488) + 17408) = 0;
          v135 = *(v134 + 168);
          v136 = v135 + 31;
          if ((v135 + 31) <= *(v134 + 160))
          {
            goto LABEL_173;
          }

          v154 = v134;
          v155 = AGX::DataBufferAllocator<44ul>::growNoInline(v134 + 24, 3, 0);
          v134 = v154;
          v135 = *(v154 + 168);
          if (v155)
          {
            v136 = v135 + 31;
            if ((v135 + 31) > *(v154 + 160))
            {
              goto LABEL_207;
            }

LABEL_173:
            *(v134 + 176) = v136;
          }

          v137 = (v135 + 15) & 0xFFFFFFFFFFFFFFF0;
          v138 = v137 + *(v134 + 184);
          *(v134 + 168) = v137 + 16;
          *(v134 + 26160) = 0;
          v139 = *(v134 + 27560) | 0x10;
          *(v134 + 27592) |= 1u;
          *(v134 + 27560) = v139;
          v140 = *(v134 + 22488);
          *(v140 + 32) = v138;
          *(v134 + 22536) = *(*(v134 + 48) + 224) + *MEMORY[0x29EDC5638];
          *(v140 + 17532) = 16;
          *(v140 + 17672) = 16;
          *(v140 + 17676) = v138 >> 8;
          *v137 = v116;
          *(v137 + 8) = v115;
          *(v137 + 12) = 0;
          ++v115;
          v134 = *(a1 + 16);
        }

        v141 = i[20];
        *(v134 + 2060) |= 4u;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v134, 22, v162, v118 + 6, v141);
      }

      if (*(i - 118) - 8 > 0xFFFFFFFD || (*(v117 + 159) & 1) != 0)
      {
        goto LABEL_188;
      }

      if (*i)
      {
        v142 = *(a1 + 16);
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify == 1)
        {
          *(*(v142 + 22488) + 17408) = 0;
          v143 = *(v142 + 168);
          v144 = v143 + 31;
          if ((v143 + 31) <= *(v142 + 160))
          {
            goto LABEL_181;
          }

          v157 = AGX::DataBufferAllocator<44ul>::growNoInline(v142 + 24, 3, 0);
          v143 = *(v142 + 168);
          if (v157)
          {
            v144 = v143 + 31;
            if ((v143 + 31) > *(v142 + 160))
            {
              goto LABEL_207;
            }

LABEL_181:
            *(v142 + 176) = v144;
          }

          v145 = (v143 + 15) & 0xFFFFFFFFFFFFFFF0;
          v146 = v145 + *(v142 + 184);
          *(v142 + 168) = v145 + 16;
          *(v142 + 26160) = 0;
          *(v142 + 27560) |= 0x10uLL;
          *(v142 + 27592) |= 1u;
          v147 = *(v142 + 22488);
          *(v147 + 32) = v146;
          *(v142 + 22536) = *(*(v142 + 48) + 224) + *MEMORY[0x29EDC5638];
          *(v147 + 17532) = 16;
          *(v147 + 17672) = 16;
          *(v147 + 17676) = v146 >> 8;
          *v145 = v116;
          *(v145 + 8) = v115;
          *(v145 + 12) = 0;
          v142 = *(a1 + 16);
        }

        if (*(v142 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v142, 22, 0, 0);
          *(v142 + 2306) = 0;
          if (*(v142 + 2292) == 1 && !*(v142 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v142, 22, (v142 + 28192), (v142 + 28200), (v142 + 28208));
          }
        }
      }

      v148 = [v110 buffer];
      v149 = [v110 bufferOffset];
      v150 = [v148 gpuAddress];
      v151 = [v148 length];
      *&v172 = v150 + v149;
      *(&v172 + 1) = v149;
      v173 = v151;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyPPD(a1, (i - 17), (i + 9), &v172);
LABEL_188:
      {
      }

      if (!--v108)
      {
        return;
      }
    }

    *(*(v113 + 22496) + 2036) = *(v117 + 50);
    if (*(v113 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v113, 22, 0, 0);
      *(v113 + 2306) = 0;
      if (*(v113 + 2292) == 1 && !*(v113 + 27624))
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v113, 22, (v113 + 28192), (v113 + 28200), (v113 + 28208));
      }
    }

    v119 = *(a1 + 16);
    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify != 1)
    {
LABEL_156:
      v126 = i[20];
      *(v119 + 2060) |= 4u;
      v127 = v163;
      goto LABEL_165;
    }

    *(*(v119 + 22488) + 17408) = 0;
    v120 = *(v119 + 168);
    v121 = v120 + 31;
    if ((v120 + 31) > *(v119 + 160))
    {
      v152 = v119;
      v153 = AGX::DataBufferAllocator<44ul>::growNoInline(v119 + 24, 3, 0);
      v119 = v152;
      v120 = *(v152 + 168);
      if (!v153)
      {
        goto LABEL_155;
      }

      v121 = v120 + 31;
      if ((v120 + 31) > *(v152 + 160))
      {
        goto LABEL_207;
      }
    }

    *(v119 + 176) = v121;
LABEL_155:
    v122 = (v120 + 15) & 0xFFFFFFFFFFFFFFF0;
    v123 = v122 + *(v119 + 184);
    *(v119 + 168) = v122 + 16;
    *(v119 + 26160) = 0;
    v124 = *(v119 + 27560) | 0x10;
    *(v119 + 27592) |= 1u;
    *(v119 + 27560) = v124;
    v125 = *(v119 + 22488);
    *(v125 + 32) = v123;
    *(v119 + 22536) = *(*(v119 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v125 + 17532) = 16;
    *(v125 + 17672) = 16;
    *(v125 + 17676) = v123 >> 8;
    *v122 = v116;
    *(v122 + 8) = v115;
    *(v122 + 12) = 0;
    ++v115;
    v119 = *(a1 + 16);
    goto LABEL_156;
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeTopDownBuilds(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v780 = *MEMORY[0x29EDCA608];
  v686 = a3;
  {
    v684 = a3;
    a3 = v684;
    if (v685)
    {
      {
      }

      {
      }

      if (shouldDumpOrVerifyBVHs(void)::once != -1)
      {
        dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeTopDownBuilds(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuild>)::verify = 0;
      a3 = v686;
    }
  }

  if (a3)
  {
    v4 = 0;
    do
    {
      v688 = v4;
      v5 = (a2 + 768 * v4);
      v721 = *(v5 + 25);
      v694 = *(v5 + 41);
      if ((v5[18] & 0xFE) != 6 || *(v5 + 13) == 0)
      {
        goto LABEL_34;
      }

      v7 = *(v5 + 14);
      if (v7 <= 1)
      {
        if (!v7)
        {
          Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 16, 0);
          goto LABEL_24;
        }

        if (v7 == 1)
        {
          Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 17, 0);
LABEL_24:
          v10 = Pipeline;
          if (*(v5 + 16))
          {
            fwrite("AGX: Motion transform type is not respected for this leaf type\n", 0x3FuLL, 1uLL, *MEMORY[0x29EDCA610]);
          }

          goto LABEL_26;
        }
      }

      else
      {
        switch(v7)
        {
          case 2:
            if (*(v5 + 16) == 1)
            {
              v8 = 21;
            }

            else
            {
              v8 = 19;
            }

LABEL_21:
            v10 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v8, 0);
LABEL_26:
            v11 = *(v5 + 30);
            v12 = *(v5 + 33);
            v13 = *(a1 + 16);
            *(v13 + 26456) = v11;
            *(*(v13 + 22488) + 48) = v11;
            *(v13 + 22552) = v12;
            v14 = *(v13 + 27560) | 0x40;
            *(v13 + 27592) |= 1u;
            *(v13 + 27560) = v14;
            *&v768[0] = *(v5 + 13);
            *(v768 + 8) = vdupq_n_s64(1uLL);
            *v763 = xmmword_29D2F1C70;
            *&v763[16] = 1;
            *(v13 + 2060) |= 4u;
            v15 = *(v13 + 2336);
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v13, v10);
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v13, 0x16u, v768, v763);
            if (*(v13 + 2292) == 1)
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v13, 22, 0, 0);
            }

            if (v15)
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v13, v15);
            }

            break;
          case 3:
            Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 18, 0);
            goto LABEL_24;
          case 4:
            if (*(v5 + 16) == 1)
            {
              v8 = 22;
            }

            else
            {
              v8 = 20;
            }

            goto LABEL_21;
        }
      }

      v16 = *(a1 + 16);
      if (*(v16 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        *(v16 + 2306) = 0;
        if (*(v16 + 2292) == 1 && !*(v16 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v16, 22, (v16 + 28192), (v16 + 28200), (v16 + 28208));
        }
      }

LABEL_34:
      if (*(v5 + 10))
      {
        v17 = v5[18] == 0;
      }

      else
      {
        v17 = 0;
      }

      if (v17 && v5[17] == 2)
      {
        {
          AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
        }

        {
          AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
        }

        if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit)
        {
          v18 = 0;
        }

        else if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
        {
          v18 = 1;
        }

        else
        {
          v18 = v5[28] & 1;
        }

        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeTrianglePairingForBvh(a1, v5, *(v5 + 43), v18, (v5 + 680));
        v19 = *(a1 + 16);
        if (*(v19 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
          *(v19 + 2306) = 0;
          if (*(v19 + 2292) == 1 && !*(v19 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v19, 22, (v19 + 28192), (v19 + 28200), (v19 + 28208));
          }
        }
      }

      v20 = *(v5 + 26);
      v21 = *(v5 + 29);
      v22 = *(a1 + 16);
      *(v22 + 26408) = v20;
      **(v22 + 22488) = v20;
      *(v22 + 22504) = v21;
      *(v22 + 27560) |= 1uLL;
      *(v22 + 27592) |= 1u;
      v23 = *(v5 + 8);
      if (*(v5 + 1) | v5[18])
      {
        v24 = 0;
      }

      else
      {
        v24 = v5[12] == 3;
      }

      v25 = !v24 || *(v5 + 10) == 0;
      v26 = !v25;
      v27 = *(v5 + 8);
      if (!v25)
      {
        v28 = 0x3FFFFFFFLL;
        if ((v5[28] & 4) == 0)
        {
          v28 = 0xFFFFFFFLL;
        }

        v29 = *(v5 + 48) + -1.0;
        if (v29 < 0.0)
        {
          v29 = 0.0;
        }

        v30 = vcvtpd_u64_f64(v29 * v23) + v23;
        if (v28 >= v30)
        {
          v27 = v30;
        }

        else
        {
          v27 = v28;
        }
      }

      v31 = *(v5 + 27);
      v32 = *(v5 + 78);
      v33 = *(v5 + 15);
      if ((v33 & 2) != 0)
      {
        v34 = *(v5 + 40);
        if (v34 >= 2)
        {
          v27 *= v34 - 1;
        }
      }

      if (v27 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = v27;
      }

      v725 = v35;
      LODWORD(v36) = *(v5 + 8);
      if (v26)
      {
        v36 = 0x3FFFFFFFLL;
        if ((v5[28] & 4) == 0)
        {
          v36 = 0xFFFFFFFLL;
        }

        v37 = *(v5 + 48) + -1.0;
        if (v37 < 0.0)
        {
          v37 = 0.0;
        }

        v38 = vcvtpd_u64_f64(v37 * v23) + v23;
        if (v36 >= v38)
        {
          LODWORD(v36) = v38;
        }
      }

      if ((v33 & 2) != 0)
      {
        v39 = *(v5 + 40);
        v40 = v39 - 1;
        if (v39 <= 1)
        {
          v40 = 1;
        }

        v41 = v40 * v36;
        if (v41 <= 1)
        {
          v41 = 1;
        }

        v728 = v41;
        if (v39 > 1)
        {
          v728 = v41 << v5[13];
        }
      }

      else
      {
        if (v36 <= 1)
        {
          LODWORD(v36) = 1;
        }

        v728 = v36;
      }

      if ((*(v5 + 15) & 0x400) != 0)
      {
        if (v26)
        {
          v42 = 0x3FFFFFFFLL;
          if ((v5[28] & 4) == 0)
          {
            v42 = 0xFFFFFFFLL;
          }

          v43 = *(v5 + 48) + -1.0;
          if (v43 < 0.0)
          {
            v43 = 0.0;
          }

          v23 += vcvtpd_u64_f64(v43 * v23);
          if (v42 < v23)
          {
            LODWORD(v23) = v42;
          }
        }

        if ((v33 & 2) != 0)
        {
          v44 = *(v5 + 40);
          if (v44 >= 2)
          {
            LODWORD(v23) = v23 * (v44 - 1);
          }
        }

        if (v23 <= 1)
        {
          LODWORD(v23) = 1;
        }

        v722 = (*(v5 + 10) + v23 - 1) / *(v5 + 10) - 1;
      }

      else
      {
        v722 = AGX::BVHDescriptor::maxInnerNodeCount(v5);
      }

      v718 = AGX::BVHDescriptor::topDownLeafNodeCapacity(v5);
      v46 = (v33 & 2) == 0 || *(v5 + 40) < 2u;
      v47 = (v33 & 0x400) == 0 && *(v5 + 13) && v27 > *(v5 + 13);
      v693 = *(v31 + 360);
      v689 = *(v31 + 296);
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::defaultMinOverlap = 925353388;
      }

      v48 = v5[18];
      if (v48 > 5)
      {
        v49 = 0;
      }

      else
      {
        v49 = qword_29D2F7458[v48];
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::overridenPrimitiveCost = xmmword_29D2F23E0;
        dword_2A179FEC0 = 1065353216;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::overridenTraversalCost = xmmword_29D2F23F0;
        dword_2A179FEE0 = 0x40000000;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::_batchThreshold = 2048;
      }

      v699 = v32;
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::_allowBatching = 1;
      }

      v50 = v5[18];
      HIDWORD(v714) = *(v5 + 8);
      v51 = HIDWORD(v714) >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::_batchThreshold;
      v52 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::_allowBatching;
      LODWORD(v714) = *(v5 + 10);
      v53 = *(&AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::overridenPrimitiveCost + v49);
      v54 = *(&AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::overridenTraversalCost + v49);
      v55 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::defaultMinOverlap;
      v56 = *(v5 + 15);
      v57 = v5[14];
      if ((v56 & 0x400) != 0)
      {
        v57 = 2;
      }

      v734 = v57;
      v58 = log2(v57);
      if (v46)
      {
        v59 = 0;
      }

      else
      {
        v59 = 2;
      }

      if ((v51 & v52) != 0)
      {
        v60 = 4;
      }

      else
      {
        v60 = 0;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::disallowTemporalSplits = 0;
      }

      v61 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::disallowTemporalSplits;
      if (v5[13])
      {
        v62 = v46;
      }

      else
      {
        v62 = 1;
      }

      if (v62)
      {
        v63 = 0;
      }

      else
      {
        v63 = 0x80;
      }

      v697 = v5[17];
      if (AGX::BVHDescriptor::useSpatialSplits(v5))
      {
        v64 = 4;
      }

      else
      {
        v64 = 0;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::disallowMixingTemporalSplits = 1;
      }

      v696 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::disallowMixingTemporalSplits;
      {
        AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
      }

      {
        AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
      }

      if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (v5[28]))
      {
        v695 = 0;
      }

      else
      {
        v695 = 32 * ((v5[18] & 0xFE) != 6);
      }

      v737 = v63 | v56 & 0x20 | (v61 << 6) | v59 | v47 | v60 & 0xEF | (16 * (v56 & 1)) | 8;
      v65 = *(v5 + 15);
      if ((v65 & 0x400) != 0)
      {
        v68 = *(v5 + 8);
        if (!*(v5 + 1) && *(v5 + 10) && !v5[18] && v5[12] == 3)
        {
          v69 = 0x3FFFFFFFLL;
          if ((v5[28] & 4) == 0)
          {
            v69 = 0xFFFFFFFLL;
          }

          v70 = *(v5 + 48) + -1.0;
          if (v70 < 0.0)
          {
            v70 = 0.0;
          }

          v68 += vcvtpd_u64_f64(v70 * v68);
          if (v69 < v68)
          {
            LODWORD(v68) = v69;
          }
        }

        if ((v65 & 2) == 0)
        {
          if (v68 <= 1)
          {
            LODWORD(v68) = 1;
          }

          goto LABEL_176;
        }

        v71 = *(v5 + 40);
        v72 = v71 - 1;
        if (v71 <= 1)
        {
          v72 = 1;
        }

        LODWORD(v68) = v72 * v68;
        if (v68 <= 1)
        {
          LODWORD(v68) = 1;
        }

        if (v71 <= 1 || (LODWORD(v68) = v68 << v5[13], v68))
        {
LABEL_176:
          v73 = vcvtps_u32_f32((33 - __clz(~(-1 << -__clz(v68 - 1)))) * 1.75);
          if (v73 >= 0x20)
          {
            v73 = 32;
          }

          if (v73 <= 1)
          {
            v73 = 1;
          }
        }

        else
        {
          v73 = 1;
        }

        v740 = v73;
        v708 = 0;
        v737 = v63 & 0xFE | v56 & 0x20 | (v61 << 6) | (v59 | v47) & 0xFE | v60 & 0xEE | (16 * (v56 & 1)) | 8;
        v734 = 2;
        v712 = *(v5 + 10);
        LOWORD(v710) = v712;
        v706 = *(v5 + 11);
        v704 = v706;
        goto LABEL_181;
      }

      if (v47)
      {
        v66 = *(v5 + 12);
        v710 = *(v5 + 10);
        if (2 * v710 > v66)
        {
          LOWORD(v66) = 2 * v710;
        }

        v712 = v66;
        v67 = 26;
      }

      else
      {
        v67 = 22;
        LOWORD(v710) = *(v5 + 10);
        v712 = v710;
      }

      v740 = *v5;
      v706 = *&v5[v67];
      v708 = *(v5 + 13);
      v704 = *(v5 + 11);
LABEL_181:
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::deterministicWideMode = 1;
      }

      if ((AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::deterministicWideMode & (v734 == 8)) != 0)
      {
        v74 = 64;
      }

      else
      {
        v74 = 0;
      }

      v731 = *(v5 + 40);
      v76 = *(v5 + 45);
      v75 = *(v5 + 46);
      v77 = *(v5 + 15);
      if ((v77 & 0x400) != 0)
      {
        v82 = *(v5 + 8);
        if (!*(v5 + 1) && *(v5 + 10) && !v5[18] && v5[12] == 3)
        {
          v83 = 0x3FFFFFFFLL;
          if ((v5[28] & 4) == 0)
          {
            v83 = 0xFFFFFFFLL;
          }

          v84 = *(v5 + 48) + -1.0;
          if (v84 < 0.0)
          {
            v84 = 0.0;
          }

          v82 += vcvtpd_u64_f64(v84 * v82);
          if (v83 < v82)
          {
            LODWORD(v82) = v83;
          }
        }

        v85 = v731 - 1;
        if (((v731 > 1) & (v77 >> 1)) == 0)
        {
          v85 = 1;
        }

        v86 = v82 * v85;
        if (v86 <= 1)
        {
          v87 = 1;
        }

        else
        {
          v87 = v86;
        }

        v88 = *(v5 + 10);
        v89 = AGX::BVHDescriptor::topDownLeafNodeCapacity(v5);
        v80 = *(v5 + 8);
        v81 = *(v5 + 10);
        if (*(v5 + 1) || !v81 || v5[18] || v5[12] != 3)
        {
          LODWORD(v90) = *(v5 + 8);
        }

        else
        {
          v90 = 0x3FFFFFFFLL;
          if ((v5[28] & 4) == 0)
          {
            v90 = 0xFFFFFFFLL;
          }

          v91 = *(v5 + 48) + -1.0;
          if (v91 < 0.0)
          {
            v91 = 0.0;
          }

          v92 = vcvtpd_u64_f64(v91 * v80) + v80;
          if (v90 >= v92)
          {
            LODWORD(v90) = v92;
          }
        }

        v702 = (v88 + v87 - 1) / v88 + v89 - 1;
        v93 = v731 - 1;
        if (((v731 > 1) & (v77 >> 1)) == 0)
        {
          v93 = 1;
        }

        v94 = v90 * v93;
        if (v94 <= 1)
        {
          v94 = 1;
        }

        v79 = (*(v5 + 10) + v94 - 1) / *(v5 + 10) - 1;
      }

      else
      {
        v78 = AGX::BVHDescriptor::maxInnerNodeCount(v5);
        v702 = AGX::BVHDescriptor::topDownLeafNodeCapacity(v5) + v78;
        v79 = AGX::BVHDescriptor::maxInnerNodeCount(v5);
        LODWORD(v80) = *(v5 + 8);
        v81 = *(v5 + 10);
      }

      v95 = AGX::BVHDescriptor::topDownLeafNodeCapacity(v5) + v79;
      if (HIBYTE(v95))
      {
        v96 = 4;
      }

      else
      {
        v96 = 3;
      }

      if (v95 >= 0x10000)
      {
        v97 = v96;
      }

      else
      {
        v97 = 2;
      }

      v701 = v97;
      if (v81 >= 0x101 || v80 >= 0x800001)
      {
        v99 = 2;
      }

      else
      {
        v99 = 1;
      }

      if (v81 >= 0x11 || v80 >= 0x801)
      {
        v101 = v99;
      }

      else
      {
        v101 = 0;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::_instanceBatchSize = 256;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::_primitiveBatchSize = 512;
      }

      v102 = v50 & 0xFE;
      v103 = v5[13];
      v104 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::_instanceBatchSize;
      if (v102 != 6)
      {
        v104 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::_primitiveBatchSize;
      }

      v105 = *v104;
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::instanceSinglePassTGSizeEv = 512;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::primitiveSinglePassTGSizeEv = 512;
      }

      v106 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::instanceSinglePassTGSizeEv;
      if (v102 != 6)
      {
        v106 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::primitiveSinglePassTGSizeEv;
      }

      v700 = *v106;
      v107 = ((((*v106 + 31) >> 3) & 0x1FFFFFFC) + 15) & 0x3FFFFFF0;
      v108 = *(a1 + 16);
      v109 = *(v108 + 22496);
      *(v109 + 2044) = v107;
      *(v109 + 2048) = v107;
      *(*(v108 + 22488) + 17396) = 0;
      v110 = *(v108 + 168);
      v111 = v110 + 111;
      if ((v110 + 111) <= *(v108 + 160))
      {
        goto LABEL_246;
      }

      v654 = AGX::DataBufferAllocator<44ul>::growNoInline(v108 + 24, 3, 0);
      v110 = *(v108 + 168);
      if (v654)
      {
        v111 = v110 + 111;
        if ((v110 + 111) > *(v108 + 160))
        {
          goto LABEL_1095;
        }

LABEL_246:
        *(v108 + 176) = v111;
      }

      v112 = *(v108 + 184);
      v113 = (v110 + 15) & 0xFFFFFFFFFFFFFFF0;
      *(v108 + 168) = v113 + 96;
      v114 = v113 + v112;
      *(v108 + 26136) = 0;
      *(v108 + 27560) |= 2uLL;
      *(v108 + 27592) |= 1u;
      v115 = *(v108 + 22488);
      *(v115 + 8) = v114;
      *(v108 + 22512) = *(*(v108 + 48) + 224) + *MEMORY[0x29EDC5638];
      v115 += 0x4000;
      *(v115 + 1268) = v114 >> 8;
      *(v115 + 1136) = 88;
      *(v115 + 1264) = 88;
      *v113 = v714;
      *(v113 + 8) = v55;
      *(v113 + 12) = v54;
      *(v113 + 16) = v53;
      *(v113 + 20) = 1067450368;
      *(v113 + 24) = v722;
      *(v113 + 28) = v718;
      *(v113 + 32) = v725;
      *(v113 + 36) = v728;
      *(v113 + 40) = v734;
      *(v113 + 42) = v58;
      *(v113 + 44) = v740;
      *(v113 + 45) = v737;
      v698 = v74 | v695 | v64 & 0xFC | v697 & 3 | (16 * v696);
      *(v113 + 46) = v698;
      *(v113 + 48) = v731;
      *(v113 + 52) = v76;
      *(v113 + 56) = v75;
      *(v113 + 60) = v702;
      *(v113 + 64) = v701;
      *(v113 + 66) = 0;
      *(v113 + 68) = v101;
      *(v113 + 72) = v712;
      *(v113 + 74) = v706;
      *(v113 + 76) = v708;
      *(v113 + 78) = v103;
      *(v113 + 80) = v710;
      *(v113 + 82) = v704;
      *(v113 + 84) = v105;
      *(v113 + 86) = v700;
      v116 = v699;
      if (v699)
      {
        v117 = *(a1 + 16);
        *(*(v117 + 22488) + 17408) = 0;
        v118 = *(v117 + 168);
        v119 = v118 + 31;
        if ((v118 + 31) <= *(v117 + 160))
        {
          goto LABEL_249;
        }

        v655 = AGX::DataBufferAllocator<44ul>::growNoInline(v117 + 24, 3, 0);
        v118 = *(v117 + 168);
        v116 = v699;
        if (v655)
        {
          v119 = v118 + 31;
          if ((v118 + 31) > *(v117 + 160))
          {
            goto LABEL_1095;
          }

LABEL_249:
          *(v117 + 176) = v119;
        }

        v120 = ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
        v121 = v120 + *(v117 + 184);
        *(v117 + 168) = v120 + 2;
        *(v117 + 26160) = 0;
        v122 = *(v117 + 27592);
        *(v117 + 27560) |= 0x10uLL;
        *(v117 + 27592) = v122 | 1;
        v123 = *(v117 + 22488);
        *(v123 + 32) = v121;
        *(v117 + 22536) = *(*(v117 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v123 + 17532) = 16;
        *(v123 + 17672) = 16;
        *(v123 + 17676) = v121 >> 8;
        *v120 = v116;
        v120[1] = 100;
      }

      v690 = v105;
      v691 = v103;
      v692 = v101;
      v124 = *(v5 + 15);
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownGetFragments(AGX::BVHDescriptor const&)::initFragmentIndices = 0;
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::topDownGetFragments(AGX::BVHDescriptor const&)::initFragmentIndices == 1)
      {
        v125 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 154, 0);
        v126 = *(v5 + 8);
        if (*(v5 + 1) | v5[18])
        {
          v127 = 0;
        }

        else
        {
          v127 = v5[12] == 3;
        }

        v128 = !v127 || *(v5 + 10) == 0;
        v129 = !v128;
        LODWORD(v130) = *(v5 + 8);
        if (!v128)
        {
          v131 = 0x3FFFFFFFLL;
          if ((v5[28] & 4) == 0)
          {
            v131 = 0xFFFFFFFLL;
          }

          v132 = *(v5 + 48) + -1.0;
          if (v132 < 0.0)
          {
            v132 = 0.0;
          }

          v130 = vcvtpd_u64_f64(v132 * v126) + v126;
          if (v131 < v130)
          {
            LODWORD(v130) = v131;
          }
        }

        v133 = *(v5 + 15);
        if ((v133 & 2) != 0)
        {
          v134 = *(v5 + 40);
          v135 = v134 - 1;
          if (v134 <= 1)
          {
            v135 = 1;
          }

          LODWORD(v130) = v135 * v130;
          if (v130 <= 1)
          {
            v130 = 1;
          }

          else
          {
            v130 = v130;
          }

          if (v134 > 1)
          {
            v130 *= 1 << v5[13];
          }
        }

        else if (v130 <= 1)
        {
          v130 = 1;
        }

        else
        {
          v130 = v130;
        }

        if (v130 + 31 >= 0x20)
        {
          if (v129)
          {
            v137 = 0x3FFFFFFFLL;
            if ((v5[28] & 4) == 0)
            {
              v137 = 0xFFFFFFFLL;
            }

            v138 = *(v5 + 48) + -1.0;
            if (v138 < 0.0)
            {
              v138 = 0.0;
            }

            v126 += vcvtpd_u64_f64(v138 * v126);
            if (v137 < v126)
            {
              LODWORD(v126) = v137;
            }
          }

          if ((v133 & 2) != 0)
          {
            v139 = *(v5 + 40);
            v140 = v139 - 1;
            if (v139 <= 1)
            {
              v140 = 1;
            }

            LODWORD(v126) = v140 * v126;
            if (v126 <= 1)
            {
              v126 = 1;
            }

            else
            {
              v126 = v126;
            }

            if (v139 > 1)
            {
              v126 *= 1 << v5[13];
            }
          }

          else if (v126 <= 1)
          {
            v126 = 1;
          }

          else
          {
            v126 = v126;
          }

          v136 = (v126 + 31) >> 5;
        }

        else
        {
          v136 = 1;
        }

        v141 = *(a1 + 16);
        *v763 = v136;
        *&v763[8] = vdupq_n_s64(1uLL);
        v768[0] = xmmword_29D2F1C70;
        *&v768[1] = 1;
        *(v141 + 2060) |= 4u;
        v142 = *(v141 + 2336);
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v141, v125);
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v141, v768, v763);
        if (*(v141 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v141, 22, 0, 0);
        }

        if (v142)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v141, v142);
        }
      }

      v143 = *(v5 + 8);
      if ((v143 + 31) >= 0x400)
      {
        v144 = 1024;
      }

      else
      {
        v144 = (v143 + 31) & 0xFFFFFFE0;
      }

      if ((v143 + 1023) < 0x400)
      {
        v145 = 1;
      }

      else
      {
        v145 = (v143 + 1023) >> 10;
      }

      v146 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 153, 0);
      v147 = AGX::BVHDescriptor::maxInnerNodeCount(v5);
      v148 = *(a1 + 16);
      *&v768[0] = v147 * v5[14];
      *(v768 + 8) = vdupq_n_s64(1uLL);
      *v763 = xmmword_29D2F1C70;
      *&v763[16] = 1;
      *(v148 + 2060) |= 4u;
      v149 = *(v148 + 2336);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v148, v146);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v148, 0x16u, v768, v763);
      if (*(v148 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v148, 22, 0, 0);
      }

      if (v149)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v148, v149);
      }

      if (v143)
      {
        v768[0] = xmmword_29D2F2400;
        *&v768[1] = 0x9F0000009ELL;
        if (v124)
        {
          v150 = 161;
        }

        else
        {
          v150 = 160;
        }

        DWORD2(v768[1]) = v150;
        HIDWORD(v768[1]) = v150;
        *v763 = xmmword_29D2F2410;
        *&v763[16] = 0xA4000000A3;
        if (v124)
        {
          v151 = 166;
        }

        else
        {
          v151 = 165;
        }

        *&v763[24] = v151;
        *&v763[28] = v151;
        v152 = v5[18];
        v153 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, *(v768 + v152), 0);
        v154 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, *&v763[4 * v152], 0);
        if (*(v5 + 15))
        {
          v155 = 14;
        }

        else
        {
          v155 = 6;
        }

        v156 = *(a1 + 16);
        *(*(v156 + 22496) + 2052) = ((v144 >> 3) + 15) & 0x3FFFFFF0;
        if (*(v156 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v156, 22, 0, 0);
          *(v156 + 2306) = 0;
          if (*(v156 + 2292) == 1 && !*(v156 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v156, 22, (v156 + 28192), (v156 + 28200), (v156 + 28208));
          }
        }

        v157 = *(a1 + 16);
        *v759 = v145;
        *&v759[8] = vdupq_n_s64(1uLL);
        *v761 = v144;
        *&v761[8] = *&v759[8];
        *(v157 + 2060) |= 4u;
        v158 = *(v157 + 2336);
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v157, v153);
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v157, v761, v759);
        if (*(v157 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v157, 22, 0, 0);
        }

        if (v158)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v157, v158);
        }

        v159 = *(a1 + 16);
        *(*(v159 + 22496) + 2056) = (((v144 >> 3) & 0x1FFC) * v155 + 15) & 0x3FFF0;
        if (*(v159 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v159, 22, 0, 0);
          *(v159 + 2306) = 0;
          if (*(v159 + 2292) == 1 && !*(v159 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v159, 22, (v159 + 28192), (v159 + 28200), (v159 + 28208));
          }
        }

        v160 = *(a1 + 16);
        *v759 = v145;
        *&v759[8] = vdupq_n_s64(1uLL);
        *v761 = v144;
        *&v761[8] = *&v759[8];
        *(v160 + 2060) |= 4u;
        v161 = *(v160 + 2336);
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v160, v154);
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v160, v761, v759);
        if (*(v160 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v160, 22, 0, 0);
        }

        if (v161)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v160, v161);
        }
      }

      *v763 = v714;
      *&v763[8] = v55;
      *&v763[12] = v54;
      *&v763[16] = v53;
      *&v763[20] = 1067450368;
      *&v763[24] = v722;
      *&v763[28] = v718;
      *&v764 = __PAIR64__(v728, v725);
      WORD4(v764) = v734;
      WORD5(v764) = v58;
      BYTE12(v764) = v740;
      BYTE13(v764) = v737;
      HIWORD(v764) = v698;
      *&v765 = __PAIR64__(v76, v731);
      *(&v765 + 1) = __PAIR64__(v702, v75);
      LODWORD(v766) = v701;
      DWORD1(v766) = v692;
      WORD4(v766) = v712;
      WORD5(v766) = v706;
      WORD6(v766) = v708;
      HIWORD(v766) = v691;
      LOWORD(v767) = v710;
      WORD1(v767) = v704;
      WORD2(v767) = v690;
      HIWORD(v767) = v700;
      *v759 = v694;
      v758[0] = v693 - v694;
      v162 = (*(v5 + 40) > 1u) & (*(v5 + 15) >> 1);
      if ((v737 & 0x10) != 0)
      {
        v163 = 142;
      }

      else
      {
        v163 = 141;
      }

      v756 = (*(v5 + 40) > 1u) & (*(v5 + 15) >> 1);
      v755 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v163, 0);
      if ((BYTE13(v764) & 0x10) != 0)
      {
        v164 = 145;
      }

      else
      {
        v164 = 144;
      }

      v754 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v164, 0);
      if ((BYTE13(v764) & 0x10) != 0)
      {
        v165 = 147;
      }

      else
      {
        v165 = 146;
      }

      v753 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v165, 0);
      if ((BYTE13(v764) & 0x10) != 0)
      {
        v166 = 149;
      }

      else
      {
        v166 = 148;
      }

      v752 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v166, 0);
      if ((BYTE14(v764) & 0xC) != 0)
      {
        v751 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 150, 0);
        if (v162)
        {
          goto LABEL_355;
        }
      }

      else
      {
        v751 = 0;
        if (v162)
        {
LABEL_355:
          v167 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 151, 0);
          goto LABEL_358;
        }
      }

      v167 = 0;
LABEL_358:
      v750 = v167;
      v168 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 152, 0);
      if ((BYTE13(v764) & 0x10) != 0)
      {
        v169 = 168;
      }

      else
      {
        v169 = 167;
      }

      v170 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v169, 0);
      if ((BYTE13(v764) & 0x10) != 0)
      {
        v171 = 170;
      }

      else
      {
        v171 = 169;
      }

      v749 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v171, 0);
      if (v737)
      {
        if ((BYTE13(v764) & 0x10) != 0)
        {
          v174 = 156;
        }

        else
        {
          v174 = 155;
        }

        v172 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v174, 0);
        if ((BYTE13(v764) & 4) != 0)
        {
LABEL_371:
          v173 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 143, 0);
          goto LABEL_372;
        }
      }

      else
      {
        v172 = 0;
        if ((BYTE13(v764) & 4) != 0)
        {
          goto LABEL_371;
        }
      }

      v173 = 0;
LABEL_372:
      v748 = v173;
      v175 = *(a1 + 16);
      *(*(v175 + 22496) + 2036) = 0x8000000080;
      if (*(v175 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v175, 22, 0, 0);
        *(v175 + 2306) = 0;
        if (*(v175 + 2292) == 1 && !*(v175 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v175, 22, (v175 + 28192), (v175 + 28200), (v175 + 28208));
        }
      }

      v176 = *(a1 + 16);
      *v761 = vdupq_n_s64(1uLL);
      *&v761[16] = 1;
      v768[0] = xmmword_29D2F2420;
      *&v768[1] = 1;
      *(v176 + 2060) |= 4u;
      v177 = *(v176 + 2336);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v176, v168);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v176, v768, v761);
      if (*(v176 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v176, 22, 0, 0);
      }

      if (v177)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v176, v177);
      }

      if (*(v5 + 15))
      {
        v179 = 144;
      }

      else
      {
        v179 = 80;
      }

      if ((BYTE14(v764) & 0xC) != 0)
      {
        v180 = 384;
      }

      else
      {
        v180 = 0;
      }

      v181 = *(*(a1 + 16) + 22496);
      v181[516] = v180;
      v181[517] = (BYTE13(v764) << 27 >> 31) & 0x840;
      v181[515] = 1728;
      v181[518] = v179;
      if ((*(v5 + 15) & 0x400) != 0)
      {
        v182 = 1;
      }

      else
      {
        v182 = 3;
      }

      v747 = v182;
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::dumpIterationStateForBVHIndex = -1;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::maxIterationEV = -1;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::maxInnerIterationEV = -1;
      }

      v746 = 0;
      v745 = &v746;
      *v761 = v758;
      *&v761[8] = v759;
      *&v761[16] = a1;
      *&v768[0] = &v747;
      *(&v768[0] + 1) = &v745;
      *&v768[1] = a1;
      *(&v768[1] + 1) = v763;
      v769 = &v757;
      v770 = v761;
      v771 = &v748;
      v772 = &v755;
      v773 = &v754;
      v774 = &v751;
      v775 = &v756;
      v776 = &v750;
      v777 = &v753;
      v778 = &v752;
      LOWORD(v178) = WORD4(v764);
      v779 = &v749;
      v183 = 0x10 / log2(v178);
      if (v740 >> 1 < v183)
      {
        v183 = v740 >> 1;
      }

      if (v183 <= 1)
      {
        v184 = 1;
      }

      else
      {
        v184 = v183;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::evMaxSpatialSplitsIterations = -1;
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::evMaxSpatialSplitsIterations >= 0)
      {
        v184 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::evMaxSpatialSplitsIterations;
      }

      if (v737)
      {
        v205 = v747;
        v206 = *(a1 + 16);
        *(*(v206 + 22488) + 17400) = 0;
        v207 = *(v206 + 168);
        v208 = v207 + 31;
        if ((v207 + 31) <= *(v206 + 160))
        {
          goto LABEL_419;
        }

        v657 = AGX::DataBufferAllocator<44ul>::growNoInline(v206 + 24, 3, 0);
        v207 = *(v206 + 168);
        if (v657)
        {
          v208 = v207 + 31;
          if ((v207 + 31) > *(v206 + 160))
          {
            goto LABEL_1095;
          }

LABEL_419:
          *(v206 + 176) = v208;
        }

        v209 = (v207 + 15) & 0xFFFFFFFFFFFFFFF0;
        v210 = v209 + *(v206 + 184);
        *(v206 + 168) = v209 + 16;
        *(v206 + 26144) = 0;
        *(v206 + 27560) |= 4uLL;
        *(v206 + 27592) |= 1u;
        v211 = *(v206 + 22488);
        *(v211 + 16) = v210;
        *(v206 + 22520) = *(*(v206 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v211 + 17524) = 8;
        *(v211 + 17656) = 8;
        *(v211 + 17660) = v210 >> 8;
        *(v209 + 2) = v205;
        *(v209 + 4) = 0;
        *v209 = v740 - 1;
        if (v740 == 1)
        {
LABEL_435:
          v225 = *(a1 + 16);
          if (*(v225 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
            *(v225 + 2306) = 0;
            if (*(v225 + 2292) == 1 && !*(v225 + 27624))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v225, 22, (v225 + 28192), (v225 + 28200), (v225 + 28208));
            }
          }

          *(*(*(a1 + 16) + 22496) + 2076) = 32 * WORD1(v767);
          v226 = **v761 + **&v761[8];
          v227 = *(*&v761[16] + 16);
          *(v227 + 2060) |= 4u;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v227, 22, v172, (v226 + 120), 0);
          goto LABEL_440;
        }

        v212 = 0;
        while (2)
        {
          if ((BYTE14(v764) & 0xC) == 0 || v212 < v184)
          {
LABEL_430:
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::{lambda#1}::operator()(v768);
            if (v740 - 1 == ++v212)
            {
              goto LABEL_435;
            }

            continue;
          }

          break;
        }

        BYTE14(v764) &= 0xF3u;
        v214 = *(a1 + 16);
        *(*(v214 + 22496) + 2064) = 0;
        *(*(v214 + 22488) + 17396) = 0;
        v215 = *(v214 + 168);
        v216 = v215 + 111;
        if ((v215 + 111) > *(v214 + 160))
        {
          v224 = AGX::DataBufferAllocator<44ul>::growNoInline(v214 + 24, 3, 0);
          v215 = *(v214 + 168);
          if (v224)
          {
            v216 = v215 + 111;
            if ((v215 + 111) > *(v214 + 160))
            {
              goto LABEL_1095;
            }

            goto LABEL_428;
          }
        }

        else
        {
LABEL_428:
          *(v214 + 176) = v216;
        }

        v217 = (v215 + 15) & 0xFFFFFFFFFFFFFFF0;
        v218 = v217 + *(v214 + 184);
        *(v214 + 168) = v217 + 96;
        *(v214 + 26136) = 0;
        *(v214 + 27560) |= 2uLL;
        *(v214 + 27592) |= 1u;
        v219 = *(v214 + 22488);
        *(v219 + 8) = v218;
        *(v214 + 22512) = *(*(v214 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v219 + 17520) = 88;
        *(v219 + 17648) = 88;
        *(v219 + 17652) = v218 >> 8;
        v220 = *&v763[16];
        *v217 = *v763;
        *(v217 + 16) = v220;
        v221 = v764;
        v222 = v765;
        v223 = v766;
        *(v217 + 80) = v767;
        *(v217 + 48) = v222;
        *(v217 + 64) = v223;
        *(v217 + 32) = v221;
        goto LABEL_430;
      }

      v185 = v747;
      v186 = *(a1 + 16);
      *(*(v186 + 22488) + 17400) = 0;
      v187 = *(v186 + 168);
      v188 = v187 + 31;
      if ((v187 + 31) <= *(v186 + 160))
      {
        goto LABEL_402;
      }

      v656 = AGX::DataBufferAllocator<44ul>::growNoInline(v186 + 24, 3, 0);
      v187 = *(v186 + 168);
      if (v656)
      {
        v188 = v187 + 31;
        if ((v187 + 31) > *(v186 + 160))
        {
          goto LABEL_1095;
        }

LABEL_402:
        *(v186 + 176) = v188;
      }

      v189 = (v187 + 15) & 0xFFFFFFFFFFFFFFF0;
      v190 = v189 + *(v186 + 184);
      *(v186 + 168) = v189 + 16;
      *(v186 + 26144) = 0;
      *(v186 + 27560) |= 4uLL;
      *(v186 + 27592) |= 1u;
      v191 = *(v186 + 22488);
      *(v191 + 16) = v190;
      *(v186 + 22520) = *(*(v186 + 48) + 224) + *MEMORY[0x29EDC5638];
      *(v191 + 17524) = 8;
      *(v191 + 17656) = 8;
      *(v191 + 17660) = v190 >> 8;
      *v189 = v740;
      *(v189 + 2) = v185;
      *(v189 + 4) = 0;
      if (v740)
      {
        for (i = 0; v740 != i; ++i)
        {
          if ((BYTE14(v764) & 0xC) == 0 || i < v184)
          {
            goto LABEL_413;
          }

          BYTE14(v764) &= 0xF3u;
          v194 = *(a1 + 16);
          *(*(v194 + 22496) + 2064) = 0;
          *(*(v194 + 22488) + 17396) = 0;
          v195 = *(v194 + 168);
          v196 = v195 + 111;
          if ((v195 + 111) > *(v194 + 160))
          {
            v204 = AGX::DataBufferAllocator<44ul>::growNoInline(v194 + 24, 3, 0);
            v195 = *(v194 + 168);
            if (!v204)
            {
              goto LABEL_412;
            }

            v196 = v195 + 111;
            if ((v195 + 111) > *(v194 + 160))
            {
              goto LABEL_1095;
            }
          }

          *(v194 + 176) = v196;
LABEL_412:
          v197 = (v195 + 15) & 0xFFFFFFFFFFFFFFF0;
          v198 = v197 + *(v194 + 184);
          *(v194 + 168) = v197 + 96;
          *(v194 + 26136) = 0;
          *(v194 + 27560) |= 2uLL;
          *(v194 + 27592) |= 1u;
          v199 = *(v194 + 22488);
          *(v199 + 8) = v198;
          *(v194 + 22512) = *(*(v194 + 48) + 224) + *MEMORY[0x29EDC5638];
          *(v199 + 17520) = 88;
          *(v199 + 17648) = 88;
          *(v199 + 17652) = v198 >> 8;
          v200 = *&v763[16];
          *v197 = *v763;
          *(v197 + 16) = v200;
          v201 = v764;
          v202 = v765;
          v203 = v766;
          *(v197 + 80) = v767;
          *(v197 + 48) = v202;
          *(v197 + 64) = v203;
          *(v197 + 32) = v201;
LABEL_413:
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::{lambda#1}::operator()(v768);
        }
      }

LABEL_440:
      v228 = *(a1 + 16);
      if (*(v228 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        *(v228 + 2306) = 0;
        if (*(v228 + 2292) == 1 && !*(v228 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v228, 22, (v228 + 28192), (v228 + 28200), (v228 + 28208));
        }
      }

      v229 = *(a1 + 16);
      *(v229 + 2060) |= 4u;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v229, 22, v170, v689, 0);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeTopDownBuilds(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuild>)::verify == 1)
      {
        v230 = *(v5 + 78);
        v231 = *(a1 + 16);
        *(*(v231 + 22488) + 17408) = 0;
        v232 = *(v231 + 168);
        v233 = v232 + 31;
        if ((v232 + 31) <= *(v231 + 160))
        {
          goto LABEL_446;
        }

        v658 = AGX::DataBufferAllocator<44ul>::growNoInline(v231 + 24, 3, 0);
        v232 = *(v231 + 168);
        if (v658)
        {
          v233 = v232 + 31;
          if ((v232 + 31) > *(v231 + 160))
          {
            goto LABEL_1095;
          }

LABEL_446:
          *(v231 + 176) = v233;
        }

        v234 = ((v232 + 15) & 0xFFFFFFFFFFFFFFF0);
        v235 = v234 + *(v231 + 184);
        *(v231 + 168) = v234 + 2;
        *(v231 + 26160) = 0;
        v236 = *(v231 + 27592);
        *(v231 + 27560) |= 0x10uLL;
        *(v231 + 27592) = v236 | 1;
        v237 = *(v231 + 22488);
        *(v237 + 32) = v235;
        *(v231 + 22536) = *(*(v231 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v237 + 17532) = 16;
        *(v237 + 17672) = 16;
        *(v237 + 17676) = v235 >> 8;
        *v234 = v230;
        v234[1] = 51;
      }

      if ((*(v5 + 15) & 0x400) == 0)
      {
        {
          {
          }

          {
          }

          if (shouldDumpOrVerifyBVHs(void)::once != -1)
          {
            dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
          }

          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&)::verify = 0;
        }

        v741 = *(v5 + 78);
        v238 = v5[18];
        v239 = *(v5 + 35);
        v719 = v238 - 8;
        if (v238 - 8 <= 0xFFFFFFFD)
        {
          v240 = *(v5 + 40);
          v241 = *(v5 + 10);
          if (*(v5 + 17) && v241)
          {
            v242 = *(v5 + 18) != 0;
            v243 = v240 > 1;
            v244 = v240 > 1;
            if (v243)
            {
              v245 = 115;
            }

            else
            {
              v245 = 27;
            }

            v726 = v245;
            if (v243)
            {
              v246 = 114;
            }

            else
            {
              v246 = 26;
            }

            v729 = v246;
            if (v243)
            {
              v247 = 113;
            }

            else
            {
              v247 = 24;
            }

            v732 = v247;
          }

          else
          {
            v418 = v240 > 1;
            v244 = v240 > 1;
            if (v418)
            {
              v419 = 115;
            }

            else
            {
              v419 = 27;
            }

            v726 = v419;
            if (v418)
            {
              v420 = 114;
            }

            else
            {
              v420 = 26;
            }

            v729 = v420;
            if (v418)
            {
              v421 = 113;
            }

            else
            {
              v421 = 24;
            }

            v732 = v421;
            v242 = 0;
            if (!v241)
            {
              v269 = 0;
              v264 = 0;
              v267 = 2;
              v265 = 1;
              goto LABEL_701;
            }
          }

          if (v238 != 3 && v5[18])
          {
            if (v244)
            {
              v269 = 103;
            }

            else
            {
              v269 = 0;
            }

            v422 = 1;
            if (v238 > 5)
            {
              v264 = 0;
              v267 = 2;
              v265 = 1;
              goto LABEL_701;
            }
          }

          else
          {
            if (v244)
            {
              v269 = 104;
            }

            else
            {
              v269 = 1;
            }

            v422 = 8;
          }

          v423 = 1 << v238;
          if ((v423 & 9) == 0)
          {
            v265 = v422;
            if ((v423 & 0x12) != 0)
            {
              v264 = 0;
              if (v244)
              {
                v267 = 109;
              }

              else
              {
                v267 = 6;
              }
            }

            else
            {
              if (v244)
              {
                v267 = 111;
              }

              else
              {
                v267 = 8;
              }

              v264 = 1;
            }

LABEL_701:
            if (v732 != 24)
            {
              v709 = v264;
              v717 = v267;
              v715 = v269;
              v707 = v242;
              v270 = 0;
              goto LABEL_707;
            }

            goto LABEL_702;
          }

          v265 = v422;
          if (v5[17] == 2)
          {
            if (v244)
            {
              v715 = v269;
              v707 = v242;
              v709 = 0;
              v270 = 0;
              v732 = 113;
              v736 = 1;
              v726 = 115;
              v729 = 114;
              v717 = 107;
              goto LABEL_708;
            }

            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(2, v5, *(a1 + 44));
            v264 = 0;
            v726 = 27;
            v729 = 26;
            v267 = 4;
            goto LABEL_702;
          }

          if (v5[17])
          {
            v264 = 0;
            v267 = 2;
            goto LABEL_701;
          }

          if (v244)
          {
            v715 = v269;
            v707 = v242;
            v709 = 0;
            v270 = 0;
            v732 = 113;
            v736 = 1;
            v726 = 115;
            v729 = 114;
            v717 = 105;
            goto LABEL_708;
          }

          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(0, v5, *(a1 + 44));
          v264 = 0;
          v726 = 27;
          v729 = 26;
          v267 = 2;
LABEL_702:
          {
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
          }

          v717 = v267;
          v715 = v269;
          v707 = v242;
          v709 = v264;
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride > 4)
          {
            v270 = 0;
            v732 = 24;
LABEL_707:
            v736 = 1;
            goto LABEL_708;
          }

          v732 = 25;
          v736 = 8;
          v270 = 1;
LABEL_708:
          v431 = 23;
          goto LABEL_709;
        }

        v264 = 0;
        v265 = 1;
        v266 = *(v5 + 14);
        v726 = 27;
        v729 = 26;
        v267 = 2;
        if (v266 <= 1)
        {
          if (v266)
          {
            v269 = 0;
            v242 = 0;
            if (v266 == 1)
            {
              v264 = 0;
              v269 = 0;
              v242 = 0;
              *(v239 + 292) = 2;
              v726 = 27;
              v729 = 26;
              v267 = 10;
            }
          }

          else
          {
            v264 = 0;
            v269 = 0;
            v242 = 0;
            *(v239 + 292) = 1;
            v726 = 27;
            v729 = 26;
            v267 = 9;
          }

          goto LABEL_702;
        }

        v268 = *(v5 + 16);
        if (v266 == 2)
        {
          v709 = 0;
          v707 = 0;
          v270 = 0;
          v271 = v268 == 1;
          if (v268 == 1)
          {
            v430 = 14;
          }

          else
          {
            v430 = 12;
          }

          v717 = v430;
          v273 = 3;
        }

        else
        {
          if (v266 == 3)
          {
            v264 = 0;
            v269 = 0;
            v242 = 0;
            *(v239 + 292) = 5;
            v726 = 27;
            v729 = 26;
            v267 = 11;
            goto LABEL_702;
          }

          v269 = 0;
          v242 = 0;
          if (v266 != 4)
          {
            goto LABEL_702;
          }

          v709 = 0;
          v707 = 0;
          v270 = 0;
          v271 = v268 == 1;
          if (v268 == 1)
          {
            v272 = 15;
          }

          else
          {
            v272 = 13;
          }

          v717 = v272;
          v273 = 6;
        }

        if (v271)
        {
          ++v273;
        }

        *(v239 + 292) = v273;
        v732 = 113;
        v726 = 115;
        v729 = 114;
        v715 = 103;
        v431 = 112;
        v736 = 1;
LABEL_709:
        v432 = [v721 buffer];
        v433 = [v721 bufferOffset];
        v434 = [v432 gpuAddress];
        v435 = [v432 length];
        *v763 = v434 + v433;
        *&v763[8] = v433;
        *&v763[16] = v435;
        v436 = *(v5 + 34);
        v437 = *(v5 + 37);
        v438 = *(a1 + 16);
        *(v438 + 26456) = v436;
        v439 = *(v438 + 22488);
        *(v439 + 48) = v436;
        *(v438 + 22552) = v437;
        *(v438 + 27560) |= 0x40uLL;
        *(v438 + 27592) |= 1u;
        v440 = *(v5 + 15);
        v441 = v440 & 2;
        if (*(a1 + 44) >= 5u)
        {
          v442 = 28;
        }

        else
        {
          v442 = 16;
        }

        v443 = 24 * v442;
        v444 = 28 * v442;
        if ((v440 & 2) != 0)
        {
          v444 = v443;
        }

        if (v440)
        {
          v445 = v444;
        }

        else
        {
          v445 = v443;
        }

        v446 = *(v239 + 291);
        if (v446 == 1)
        {
          v447 = v270;
        }

        else
        {
          v447 = 0;
        }

        v705 = v445;
        v703 = *(v5 + 15);
        if (v447 == 1)
        {
          if (v440)
          {
            v448 = 2;
          }

          else
          {
            v448 = *(v239 + 282);
          }

          v449 = dword_29D2F2780[v448] + v445;
          v446 = 1;
        }

        else
        {
          v449 = 0;
        }

        v450 = (v449 * (0x20 / v736) + 15) & 0xFFFFFFF0;
        v451 = *(v438 + 22496);
        *(v451 + 2036) = v450;
        *(v239 + 366) = v450;
        if ((v446 - 1) > 1)
        {
          v453 = 0;
        }

        else
        {
          if (*(a1 + 44) >= 5u)
          {
            v452 = 820;
          }

          else
          {
            v452 = 484;
          }

          v453 = (v452 * (0x20 / v736) + 15) & 0x1FFF0;
        }

        *(v451 + 2040) = v453;
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&)::verify != 1)
        {
          v459 = 1000;
LABEL_737:
          v739 = (v441 >> 1) ^ 0x101;
          v460 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v431, (v441 >> 1) ^ 0x101u);
          v461 = *(a1 + 16);
          v768[0] = vdupq_n_s64(1uLL);
          *&v768[1] = 1;
          *v761 = v768[0];
          *&v761[16] = 1;
          *(v461 + 2060) |= 4u;
          v462 = *(v461 + 2336);
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v461, v460);
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v461, 0x16u, v768, v761);
          if (*(v461 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v461, 22, 0, 0);
          }

          if (v462)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v461, v462);
          }

          v463 = *(a1 + 16);
          if (*(v463 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
            *(v463 + 2306) = 0;
            if (*(v463 + 2292) == 1 && !*(v463 + 27624))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v463, 22, (v463 + 28192), (v463 + 28200), (v463 + 28208));
            }
          }

          v713 = v239;
          v464 = AGX::BVHDescriptor::maxInnerNodeCount(v5);
          if (v464 <= 1)
          {
            v465 = 1;
          }

          else
          {
            v465 = v464;
          }

          v724 = v465;
          v466 = log2(v465);
          v467 = *v5;
          v711 = v265;
          if (*v5)
          {
            v468 = 0;
            v469 = v466 / 3.0;
            while (1)
            {
              v470 = *(a1 + 16);
              *(*(v470 + 22488) + 17420) = 0;
              v471 = *(v470 + 168);
              v472 = v471 + 31;
              if ((v471 + 31) <= *(v470 + 160))
              {
                goto LABEL_752;
              }

              v537 = AGX::DataBufferAllocator<44ul>::growNoInline(v470 + 24, 3, 0);
              v471 = *(v470 + 168);
              if (v537)
              {
                break;
              }

LABEL_753:
              v473 = ((v471 + 15) & 0xFFFFFFFFFFFFFFF0);
              v474 = v473 + *(v470 + 184);
              *(v470 + 168) = v473 + 4;
              *(v470 + 26184) = 0;
              *(v470 + 27560) |= 0x80uLL;
              *(v470 + 27592) |= 1u;
              v475 = *(v470 + 22488);
              *(v475 + 56) = v474;
              *(v470 + 22560) = *(*(v470 + 48) + 224) + *MEMORY[0x29EDC5638];
              *(v475 + 17544) = 4;
              *(v475 + 17696) = 4;
              *(v475 + 17700) = v474 >> 8;
              *v473 = v468;
              v476 = *(a1 + 16);
              *(*(v476 + 22488) + 17424) = 0;
              v477 = *(v476 + 168);
              v478 = v477 + 31;
              if ((v477 + 31) <= *(v476 + 160))
              {
                goto LABEL_754;
              }

              v538 = AGX::DataBufferAllocator<44ul>::growNoInline(v476 + 24, 3, 0);
              v477 = *(v476 + 168);
              if (v538)
              {
                v478 = v477 + 31;
                if ((v477 + 31) > *(v476 + 160))
                {
                  goto LABEL_1095;
                }

LABEL_754:
                *(v476 + 176) = v478;
              }

              v479 = ((v477 + 15) & 0xFFFFFFFFFFFFFFF0);
              v480 = v479 + *(v476 + 184);
              *(v476 + 168) = v479 + 4;
              *(v476 + 26192) = 0;
              *(v476 + 27560) |= 0x100uLL;
              *(v476 + 27592) |= 1u;
              v481 = *(v476 + 22488);
              *(v481 + 64) = v480;
              *(v476 + 22568) = *(*(v476 + 48) + 224) + *MEMORY[0x29EDC5638];
              *(v481 + 17548) = 4;
              *(v481 + 17704) = 4;
              *(v481 + 17708) = v480 >> 8;
              *v479 = v467;
              if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&)::verify == 1)
              {
                v482 = *(a1 + 16);
                *(*(v482 + 22488) + 17408) = 0;
                v483 = *(v482 + 168);
                v484 = v483 + 31;
                if ((v483 + 31) <= *(v482 + 160))
                {
                  goto LABEL_757;
                }

                v539 = AGX::DataBufferAllocator<44ul>::growNoInline(v482 + 24, 3, 0);
                v483 = *(v482 + 168);
                if (v539)
                {
                  v484 = v483 + 31;
                  if ((v483 + 31) > *(v482 + 160))
                  {
                    goto LABEL_1095;
                  }

LABEL_757:
                  *(v482 + 176) = v484;
                }

                v485 = (v483 + 15) & 0xFFFFFFFFFFFFFFF0;
                v486 = v485 + *(v482 + 184);
                *(v482 + 168) = v485 + 16;
                *(v482 + 26160) = 0;
                *(v482 + 27560) |= 0x10uLL;
                *(v482 + 27592) |= 1u;
                v487 = *(v482 + 22488);
                *(v487 + 32) = v486;
                *(v482 + 22536) = *(*(v482 + 48) + 224) + *MEMORY[0x29EDC5638];
                *(v487 + 17532) = 16;
                *(v487 + 17672) = 16;
                *(v487 + 17676) = v486 >> 8;
                *v485 = v741;
                *(v485 + 8) = v459;
                *(v485 + 12) = 0;
                ++v459;
              }

              v265 = v265 & 0xFFFFFFFFFFFF0000 | v739;
              v488 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v732, v265);
              v489 = *(v5 + 38);
              v490 = *(v5 + 41);
              memset(v768, 0, sizeof(v768));
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWithIndirectThreadCountExtended(a1, v488, v489 + 28, v490, v768, 1, v736, v736);
              v491 = *(a1 + 16);
              if (*(v491 + 2292) == 1)
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
                *(v491 + 2306) = 0;
                if (*(v491 + 2292) == 1 && !*(v491 + 27624))
                {
                  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v491, 22, (v491 + 28192), (v491 + 28200), (v491 + 28208));
                }
              }

              v492 = v724;
              if (v468 < v469)
              {
                v492 = exp2f(v468 * 3.0);
              }

              if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&)::verify == 1)
              {
                v493 = *(a1 + 16);
                *(*(v493 + 22488) + 17408) = 0;
                v494 = *(v493 + 168);
                v495 = v494 + 31;
                if ((v494 + 31) <= *(v493 + 160))
                {
                  goto LABEL_767;
                }

                v540 = AGX::DataBufferAllocator<44ul>::growNoInline(v493 + 24, 3, 0);
                v494 = *(v493 + 168);
                if (v540)
                {
                  v495 = v494 + 31;
                  if ((v494 + 31) > *(v493 + 160))
                  {
                    goto LABEL_1095;
                  }

LABEL_767:
                  *(v493 + 176) = v495;
                }

                v496 = (v494 + 15) & 0xFFFFFFFFFFFFFFF0;
                v497 = v496 + *(v493 + 184);
                *(v493 + 168) = v496 + 16;
                *(v493 + 26160) = 0;
                *(v493 + 27560) |= 0x10uLL;
                *(v493 + 27592) |= 1u;
                v498 = *(v493 + 22488);
                *(v498 + 32) = v497;
                *(v493 + 22536) = *(*(v493 + 48) + 224) + *MEMORY[0x29EDC5638];
                *(v498 + 17532) = 16;
                *(v498 + 17672) = 16;
                *(v498 + 17676) = v497 >> 8;
                *v496 = v741;
                *(v496 + 8) = v459;
                *(v496 + 12) = 0;
                ++v459;
              }

              v499 = *(v5 + 40);
              *&v768[0] = *(v5 + 38) + 28;
              *(&v768[0] + 1) = 28;
              *&v768[1] = v499;
              *(&v768[1] + 1) = *(v5 + 41);
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodePrefixSum(a1, v5 + 46, v5 + 54, v768, v492);
              v500 = *(a1 + 16);
              if (*(v500 + 2292) == 1)
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
                *(v500 + 2306) = 0;
                if (*(v500 + 2292) == 1 && !*(v500 + 27624))
                {
                  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v500, 22, (v500 + 28192), (v500 + 28200), (v500 + 28208));
                }
              }

              if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&)::verify == 1)
              {
                v501 = *(a1 + 16);
                *(*(v501 + 22488) + 17408) = 0;
                v502 = *(v501 + 168);
                v503 = v502 + 31;
                if ((v502 + 31) <= *(v501 + 160))
                {
                  goto LABEL_775;
                }

                v541 = AGX::DataBufferAllocator<44ul>::growNoInline(v501 + 24, 3, 0);
                v502 = *(v501 + 168);
                if (v541)
                {
                  v503 = v502 + 31;
                  if ((v502 + 31) > *(v501 + 160))
                  {
                    goto LABEL_1095;
                  }

LABEL_775:
                  *(v501 + 176) = v503;
                }

                v504 = (v502 + 15) & 0xFFFFFFFFFFFFFFF0;
                v505 = v504 + *(v501 + 184);
                *(v501 + 168) = v504 + 16;
                *(v501 + 26160) = 0;
                *(v501 + 27560) |= 0x10uLL;
                *(v501 + 27592) |= 1u;
                v506 = *(v501 + 22488);
                *(v506 + 32) = v505;
                *(v501 + 22536) = *(*(v501 + 48) + 224) + *MEMORY[0x29EDC5638];
                *(v506 + 17532) = 16;
                *(v506 + 17672) = 16;
                *(v506 + 17676) = v505 >> 8;
                *v504 = v741;
                *(v504 + 8) = v459;
                *(v504 + 12) = 0;
                ++v459;
              }

              v507 = *(v5 + 40);
              *&v768[0] = *(v5 + 38) + 28;
              *(&v768[0] + 1) = 28;
              *&v768[1] = v507;
              *(&v768[1] + 1) = *(v5 + 41);
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodePrefixSum(a1, v5 + 50, v5 + 58, v768, v492);
              v508 = *(a1 + 16);
              if (*(v508 + 2292) == 1)
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
                *(v508 + 2306) = 0;
                if (*(v508 + 2292) == 1 && !*(v508 + 27624))
                {
                  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v508, 22, (v508 + 28192), (v508 + 28200), (v508 + 28208));
                }
              }

              if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&)::verify == 1)
              {
                v509 = *(a1 + 16);
                *(*(v509 + 22488) + 17408) = 0;
                v510 = *(v509 + 168);
                v511 = v510 + 31;
                if ((v510 + 31) <= *(v509 + 160))
                {
                  goto LABEL_783;
                }

                v542 = AGX::DataBufferAllocator<44ul>::growNoInline(v509 + 24, 3, 0);
                v510 = *(v509 + 168);
                if (v542)
                {
                  v511 = v510 + 31;
                  if ((v510 + 31) > *(v509 + 160))
                  {
                    goto LABEL_1095;
                  }

LABEL_783:
                  *(v509 + 176) = v511;
                }

                v512 = (v510 + 15) & 0xFFFFFFFFFFFFFFF0;
                v513 = v512 + *(v509 + 184);
                *(v509 + 168) = v512 + 16;
                *(v509 + 26160) = 0;
                *(v509 + 27560) |= 0x10uLL;
                *(v509 + 27592) |= 1u;
                v514 = *(v509 + 22488);
                *(v514 + 32) = v513;
                *(v509 + 22536) = *(*(v509 + 48) + 224) + *MEMORY[0x29EDC5638];
                *(v514 + 17532) = 16;
                *(v514 + 17672) = 16;
                *(v514 + 17676) = v513 >> 8;
                *v512 = v741;
                *(v512 + 8) = v459;
                *(v512 + 12) = 0;
                ++v459;
              }

              v462 = v462 & 0xFFFFFFFFFFFF0000 | v739;
              v515 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v729, v462);
              v516 = *(v5 + 38);
              v517 = *(v5 + 41);
              memset(v768, 0, sizeof(v768));
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWithIndirectThreadCountExtended(a1, v515, v516 + 28, v517, v768, 1, 0, 1);
              v518 = *(a1 + 16);
              if (*(v518 + 2292) == 1)
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
                *(v518 + 2306) = 0;
                if (*(v518 + 2292) == 1 && !*(v518 + 27624))
                {
                  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v518, 22, (v518 + 28192), (v518 + 28200), (v518 + 28208));
                }
              }

              v519 = *(a1 + 16);
              if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&)::verify == 1)
              {
                *(*(v519 + 22488) + 17408) = 0;
                v520 = *(v519 + 168);
                v521 = v520 + 31;
                if ((v520 + 31) <= *(v519 + 160))
                {
                  goto LABEL_791;
                }

                v543 = AGX::DataBufferAllocator<44ul>::growNoInline(v519 + 24, 3, 0);
                v520 = *(v519 + 168);
                if (v543)
                {
                  v521 = v520 + 31;
                  if ((v520 + 31) > *(v519 + 160))
                  {
                    goto LABEL_1095;
                  }

LABEL_791:
                  *(v519 + 176) = v521;
                }

                v522 = (v520 + 15) & 0xFFFFFFFFFFFFFFF0;
                v523 = v522 + *(v519 + 184);
                *(v519 + 168) = v522 + 16;
                *(v519 + 26160) = 0;
                *(v519 + 27560) |= 0x10uLL;
                *(v519 + 27592) |= 1u;
                v524 = *(v519 + 22488);
                *(v524 + 32) = v523;
                *(v519 + 22536) = *(*(v519 + 48) + 224) + *MEMORY[0x29EDC5638];
                *(v524 + 17532) = 16;
                *(v524 + 17672) = 16;
                *(v524 + 17676) = v523 >> 8;
                *v522 = v741;
                *(v522 + 8) = v459;
                *(v522 + 12) = 0;
                ++v459;
                v519 = *(a1 + 16);
                v525 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&)::verify;
                goto LABEL_794;
              }

              v525 = 0;
LABEL_794:
              v526 = *v763;
              v527 = *&v763[24];
              *(v519 + 26448) = *v763;
              v528 = *(v519 + 22488);
              *(v528 + 40) = v526;
              *(v519 + 22544) = v527;
              *(v519 + 27560) |= 0x20uLL;
              *(v519 + 27592) |= 1u;
              if (v525)
              {
                *(v528 + 17408) = 0;
                v529 = *(v519 + 168);
                v530 = v529 + 31;
                if ((v529 + 31) <= *(v519 + 160))
                {
                  goto LABEL_796;
                }

                v544 = AGX::DataBufferAllocator<44ul>::growNoInline(v519 + 24, 3, 0);
                v529 = *(v519 + 168);
                if (v544)
                {
                  v530 = v529 + 31;
                  if ((v529 + 31) > *(v519 + 160))
                  {
                    goto LABEL_1095;
                  }

LABEL_796:
                  *(v519 + 176) = v530;
                }

                v531 = (v529 + 15) & 0xFFFFFFFFFFFFFFF0;
                v532 = v531 + *(v519 + 184);
                *(v519 + 168) = v531 + 16;
                *(v519 + 26160) = 0;
                *(v519 + 27560) |= 0x10uLL;
                *(v519 + 27592) |= 1u;
                v533 = *(v519 + 22488);
                *(v533 + 32) = v532;
                *(v519 + 22536) = *(*(v519 + 48) + 224) + *MEMORY[0x29EDC5638];
                *(v533 + 17532) = 16;
                *(v533 + 17672) = 16;
                *(v533 + 17676) = v532 >> 8;
                *v531 = v741;
                *(v531 + 8) = v459;
                *(v531 + 12) = 0;
                ++v459;
              }

              v434 = v434 & 0xFFFFFFFFFFFF0000 | v739;
              v534 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v726, v434);
              v535 = *(a1 + 16);
              v768[0] = vdupq_n_s64(1uLL);
              *&v768[1] = 1;
              *v761 = v768[0];
              *&v761[16] = 1;
              *(v535 + 2060) |= 4u;
              v536 = *(v535 + 2336);
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v535, v534);
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v535, 0x16u, v768, v761);
              if (*(v535 + 2292) == 1)
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v535, 22, 0, 0);
              }

              if (v536)
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v535, v536);
              }

              if (v467 == ++v468)
              {
                goto LABEL_826;
              }
            }

            v472 = v471 + 31;
            if ((v471 + 31) > *(v470 + 160))
            {
              goto LABEL_1095;
            }

LABEL_752:
            *(v470 + 176) = v472;
            goto LABEL_753;
          }

LABEL_826:
          if (v719 >= 0xFFFFFFFE)
          {
            v545 = v713;
            v546 = v711;
            goto LABEL_836;
          }

          v545 = v713;
          v546 = v711;
          if (*(v713 + 281) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(*(a1 + 16), *(a1 + 24), 0, 0xAu, 0);
          }

          if (!v709)
          {
LABEL_836:
            {
            }

            v553 = *v763;
            v554 = *&v763[24];
            v555 = *(a1 + 16);
            *(v555 + 26448) = *v763;
            *(*(v555 + 22488) + 40) = v553;
            *(v555 + 22544) = v554;
            *(v555 + 27560) |= 0x20uLL;
            *(v555 + 27592) |= 1u;
            if (*(v555 + 2292) == 1)
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v555, 22, 0, 0);
              *(v555 + 2306) = 0;
              if (*(v555 + 2292) == 1 && !*(v555 + 27624))
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v555, 22, (v555 + 28192), (v555 + 28200), (v555 + 28208));
              }
            }

            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&)::verify != 1)
            {
LABEL_845:
              v562 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v717, v739);
              v563 = *(v5 + 38);
              v564 = *(v5 + 41);
              memset(v768, 0, sizeof(v768));
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWithIndirectThreadCountExtended(a1, v562, v563 + 16, v564, v768, 1, 0, 1);
              if (*(v545 + 281) == 1)
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(*(a1 + 16), *(a1 + 24), 0, 0xAu, 0);
              }

              v565 = *(a1 + 16);
              if (*(v565 + 2292) == 1)
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
                *(v565 + 2306) = 0;
                if (*(v565 + 2292) == 1 && !*(v565 + 27624))
                {
                  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v565, 22, (v565 + 28192), (v565 + 28200), (v565 + 28208));
                }
              }

              v566 = *(v545 + 291);
              if (v546 < 2)
              {
                v568 = 0;
              }

              else
              {
                if (v566 == 2)
                {
                  if (*(a1 + 44) >= 5u)
                  {
                    v569 = 1008;
                  }

                  else
                  {
                    v569 = 576;
                  }
                }

                else if (v566 == 1)
                {
                  if (v703)
                  {
                    v567 = 2;
                  }

                  else
                  {
                    v567 = *(v545 + 282);
                  }

                  v569 = dword_29D2F2780[v567] + v705;
                  if (v569 <= 0xE0)
                  {
                    v569 = 224;
                  }
                }

                else
                {
                  v569 = 224;
                }

                v568 = 2 * v569;
                if (v719 <= 0xFFFFFFFD && *(v545 + 281) == 1)
                {
                  v570 = *(a1 + 44);
                  if (v570 >= 2)
                  {
                    v571 = v570 >= 5 ? 2224 : 2032;
                    v572 = v571 + v705;
                    if (v568 <= v572)
                    {
                      v568 = v572;
                    }
                  }
                }
              }

              v573 = (0x20 / v546 * v568 + 15) & 0xFFFFFFF0;
              *(v545 + 368) = (0x20 / v546 * v568 + 15) & 0xFFF0;
              v574 = *(a1 + 16);
              v575 = *(v574 + 22496);
              *(v575 + 2036) = v573;
              if ((v566 - 1) > 1)
              {
                v577 = 0;
              }

              else
              {
                if (*(a1 + 44) >= 5u)
                {
                  v576 = 820;
                }

                else
                {
                  v576 = 484;
                }

                v577 = (v576 * (0x20 / v546) + 15) & 0x1FFF0;
              }

              *(v575 + 2040) = v577;
              if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&)::verify != 1)
              {
LABEL_882:
                v583 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v715, v739);
                v584 = *(v5 + 38);
                v585 = *(v5 + 41);
                memset(v768, 0, sizeof(v768));
                AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWithIndirectThreadCountExtended(a1, v583, v584 + 12, v585, v768, 1, v546, v546);
                v586 = *(a1 + 16);
                if (*(v586 + 2292) == 1)
                {
                  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
                  *(v586 + 2306) = 0;
                  if (*(v586 + 2292) == 1 && !*(v586 + 27624))
                  {
                    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v586, 22, (v586 + 28192), (v586 + 28200), (v586 + 28208));
                  }
                }

                if (v719 < 0xFFFFFFFE)
                {
                  if (!v707)
                  {
                    goto LABEL_893;
                  }

                  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&)::verify != 1)
                  {
LABEL_892:
                    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyPPD(a1, v5, (v5 + 336), v763);
LABEL_893:
                    if (!*(v5 + 42))
                    {
LABEL_899:
                      v603 = *(a1 + 16);
                      *(v603 + 26448) = v553;
                      *(*(v603 + 22488) + 40) = v553;
                      *(v603 + 22544) = v554;
                      *(v603 + 27560) |= 0x20uLL;
                      *(v603 + 27592) |= 1u;
                      goto LABEL_905;
                    }

                    v593 = *(v5 + 10);
                    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&)::verify != 1)
                    {
LABEL_898:
                      memset(v768, 0, 24);
                      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v768, a1, 8, 0);
                      v600 = v768[0];
                      v601 = *&v768[1];
                      **&v768[0] = 0;
                      *&v768[0] = *(&v600 + 1);
                      *(&v768[0] + 1) = v600;
                      *&v768[1] = 8;
                      *(&v768[1] + 1) = v601;
                      v602 = *(v5 + 42);
                      *v761 = (v553 + 80);
                      *&v761[16] = *&v763[16];
                      v762 = v554;
                      *v759 = v553 + 112;
                      *&v759[8] = 48;
                      *&v759[16] = *&v763[16];
                      v760 = v554;
                      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeStridedCopy(a1, v602 + 104, v768, 144, v593, 1u, 8, v761, v759, 8);
                      goto LABEL_899;
                    }

                    v594 = *(a1 + 16);
                    *(*(v594 + 22488) + 17408) = 0;
                    v595 = *(v594 + 168);
                    v596 = v595 + 31;
                    if ((v595 + 31) > *(v594 + 160))
                    {
                      v680 = AGX::DataBufferAllocator<44ul>::growNoInline(v594 + 24, 3, 0);
                      v595 = *(v594 + 168);
                      if (!v680)
                      {
                        goto LABEL_897;
                      }

                      v596 = v595 + 31;
                      if ((v595 + 31) > *(v594 + 160))
                      {
                        goto LABEL_1095;
                      }
                    }

                    *(v594 + 176) = v596;
LABEL_897:
                    v597 = (v595 + 15) & 0xFFFFFFFFFFFFFFF0;
                    v598 = v597 + *(v594 + 184);
                    *(v594 + 168) = v597 + 16;
                    *(v594 + 26160) = 0;
                    *(v594 + 27560) |= 0x10uLL;
                    *(v594 + 27592) |= 1u;
                    v599 = *(v594 + 22488);
                    *(v599 + 32) = v598;
                    *(v594 + 22536) = *(*(v594 + 48) + 224) + *MEMORY[0x29EDC5638];
                    *(v599 + 17532) = 16;
                    *(v599 + 17672) = 16;
                    *(v599 + 17676) = v598 >> 8;
                    *v597 = v741;
                    *(v597 + 8) = v459;
                    *(v597 + 12) = 0;
                    ++v459;
                    goto LABEL_898;
                  }

                  v587 = *(a1 + 16);
                  *(*(v587 + 22488) + 17408) = 0;
                  v588 = *(v587 + 168);
                  v589 = v588 + 31;
                  if ((v588 + 31) > *(v587 + 160))
                  {
                    v683 = AGX::DataBufferAllocator<44ul>::growNoInline(v587 + 24, 3, 0);
                    v588 = *(v587 + 168);
                    if (!v683)
                    {
                      goto LABEL_891;
                    }

                    v589 = v588 + 31;
                    if ((v588 + 31) > *(v587 + 160))
                    {
LABEL_1095:
                      abort();
                    }
                  }

                  *(v587 + 176) = v589;
LABEL_891:
                  v590 = (v588 + 15) & 0xFFFFFFFFFFFFFFF0;
                  v591 = v590 + *(v587 + 184);
                  *(v587 + 168) = v590 + 16;
                  *(v587 + 26160) = 0;
                  *(v587 + 27560) |= 0x10uLL;
                  *(v587 + 27592) |= 1u;
                  v592 = *(v587 + 22488);
                  *(v592 + 32) = v591;
                  *(v587 + 22536) = *(*(v587 + 48) + 224) + *MEMORY[0x29EDC5638];
                  *(v592 + 17532) = 16;
                  *(v592 + 17672) = 16;
                  *(v592 + 17676) = v591 >> 8;
                  *v590 = v741;
                  *(v590 + 8) = v459;
                  *(v590 + 12) = 0;
                  ++v459;
                  goto LABEL_892;
                }

                if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&)::verify != 1)
                {
LABEL_904:
                  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyMotionTransforms(a1, v5, v763);
LABEL_905:
                  if (*(v545 + 284) != 1)
                  {
LABEL_915:
                    v626 = *(a1 + 16);
                    if (*(v626 + 2292) == 1)
                    {
                      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
                      *(v626 + 2306) = 0;
                      if (*(v626 + 2292) == 1 && !*(v626 + 27624))
                      {
                        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v626, 22, (v626 + 28192), (v626 + 28200), (v626 + 28208));
                      }
                    }

                    v627 = *(a1 + 16);
                    *(v627 + 26448) = v553;
                    v628 = *(v627 + 22488);
                    *(v628 + 40) = v553;
                    *(v627 + 22544) = v554;
                    v629 = *(v627 + 27592);
                    *(v627 + 27560) |= 0x20uLL;
                    *(v627 + 27592) = v629 | 1;
                    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&)::verify != 1)
                    {
                      goto LABEL_923;
                    }

                    *(v628 + 17408) = 0;
                    v630 = *(v627 + 168);
                    v631 = v630 + 31;
                    if ((v630 + 31) > *(v627 + 160))
                    {
                      v671 = AGX::DataBufferAllocator<44ul>::growNoInline(v627 + 24, 3, 0);
                      v630 = *(v627 + 168);
                      if (!v671)
                      {
                        goto LABEL_922;
                      }

                      v631 = v630 + 31;
                      if ((v630 + 31) > *(v627 + 160))
                      {
                        goto LABEL_1095;
                      }
                    }

                    *(v627 + 176) = v631;
LABEL_922:
                    v632 = (v630 + 15) & 0xFFFFFFFFFFFFFFF0;
                    v633 = v632 + *(v627 + 184);
                    *(v627 + 168) = v632 + 16;
                    *(v627 + 26160) = 0;
                    *(v627 + 27560) |= 0x10uLL;
                    *(v627 + 27592) |= 1u;
                    v634 = *(v627 + 22488);
                    *(v634 + 32) = v633;
                    *(v627 + 22536) = *(*(v627 + 48) + 224) + *MEMORY[0x29EDC5638];
                    *(v634 + 17532) = 16;
                    *(v634 + 17672) = 16;
                    *(v634 + 17676) = v633 >> 8;
                    *v632 = v741;
                    *(v632 + 8) = v459;
                    *(v632 + 12) = 0;
LABEL_923:
                    v635 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 183, 0);
                    v636 = *(a1 + 16);
                    v768[0] = vdupq_n_s64(1uLL);
                    *&v768[1] = 1;
                    *v761 = v768[0];
                    *&v761[16] = 1;
                    *(v636 + 2060) |= 4u;
                    v637 = *(v636 + 2336);
                    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v636, v635);
                    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v636, 0x16u, v768, v761);
                    if (*(v636 + 2292) == 1)
                    {
                      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v636, 22, 0, 0);
                    }

                    if (v637)
                    {
                      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v636, v637);
                    }

                    goto LABEL_927;
                  }

                  memset(v761, 0, sizeof(v761));
                  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v761, a1, 8, 0);
                  *&v768[0] = *&v761[8];
                  *(&v768[0] + 1) = *v761;
                  *&v768[1] = 8;
                  *(&v768[1] + 1) = *&v761[16];
                  **v761 = 0;
                  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&)::verify != 1)
                  {
LABEL_910:
                    v616 = *(v5 + 66);
                    v617 = *&v763[16];
                    *v761 = v553 + 120;
                    *&v761[8] = 56;
                    *&v761[16] = *&v763[16];
                    v762 = v554;
                    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeStridedCopy(a1, v616, v768, 4, 0x44, 1u, 4, v763, v761, 4);
                    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&)::verify != 1)
                    {
LABEL_914:
                      v624 = *(v5 + 62);
                      v625 = *(v5 + 68);
                      *v761 = *(v5 + 66) + 256;
                      *&v761[8] = 256;
                      *&v761[16] = v625;
                      v762 = *(v5 + 69);
                      *v759 = v553 + 272;
                      *&v759[8] = 272;
                      *&v759[16] = v617;
                      v760 = v554;
                      v758[0] = v553 + 120;
                      v758[1] = 56;
                      v758[2] = v617;
                      v758[3] = v554;
                      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeStridedCopy(a1, v624, v768, 4, v761, 0, 4, v759, v758, 4);
                      goto LABEL_915;
                    }

                    v618 = *(a1 + 16);
                    *(*(v618 + 22488) + 17408) = 0;
                    v619 = *(v618 + 168);
                    v620 = v619 + 31;
                    if ((v619 + 31) > *(v618 + 160))
                    {
                      v679 = AGX::DataBufferAllocator<44ul>::growNoInline(v618 + 24, 3, 0);
                      v619 = *(v618 + 168);
                      if (!v679)
                      {
                        goto LABEL_913;
                      }

                      v620 = v619 + 31;
                      if ((v619 + 31) > *(v618 + 160))
                      {
                        goto LABEL_1095;
                      }
                    }

                    *(v618 + 176) = v620;
LABEL_913:
                    v621 = (v619 + 15) & 0xFFFFFFFFFFFFFFF0;
                    v622 = v621 + *(v618 + 184);
                    *(v618 + 168) = v621 + 16;
                    *(v618 + 26160) = 0;
                    *(v618 + 27560) |= 0x10uLL;
                    *(v618 + 27592) |= 1u;
                    v623 = *(v618 + 22488);
                    *(v623 + 32) = v622;
                    *(v618 + 22536) = *(*(v618 + 48) + 224) + *MEMORY[0x29EDC5638];
                    *(v623 + 17532) = 16;
                    *(v623 + 17672) = 16;
                    *(v623 + 17676) = v622 >> 8;
                    *v621 = v741;
                    *(v621 + 8) = v459;
                    *(v621 + 12) = 0;
                    ++v459;
                    goto LABEL_914;
                  }

                  v610 = *(a1 + 16);
                  *(*(v610 + 22488) + 17408) = 0;
                  v611 = *(v610 + 168);
                  v612 = v611 + 31;
                  if ((v611 + 31) > *(v610 + 160))
                  {
                    v678 = AGX::DataBufferAllocator<44ul>::growNoInline(v610 + 24, 3, 0);
                    v611 = *(v610 + 168);
                    if (!v678)
                    {
                      goto LABEL_909;
                    }

                    v612 = v611 + 31;
                    if ((v611 + 31) > *(v610 + 160))
                    {
                      goto LABEL_1095;
                    }
                  }

                  *(v610 + 176) = v612;
LABEL_909:
                  v613 = (v611 + 15) & 0xFFFFFFFFFFFFFFF0;
                  v614 = v613 + *(v610 + 184);
                  *(v610 + 168) = v613 + 16;
                  *(v610 + 26160) = 0;
                  *(v610 + 27560) |= 0x10uLL;
                  *(v610 + 27592) |= 1u;
                  v615 = *(v610 + 22488);
                  *(v615 + 32) = v614;
                  *(v610 + 22536) = *(*(v610 + 48) + 224) + *MEMORY[0x29EDC5638];
                  *(v615 + 17532) = 16;
                  *(v615 + 17672) = 16;
                  *(v615 + 17676) = v614 >> 8;
                  *v613 = v741;
                  *(v613 + 8) = v459;
                  *(v613 + 12) = 0;
                  ++v459;
                  goto LABEL_910;
                }

                v604 = *(a1 + 16);
                *(*(v604 + 22488) + 17408) = 0;
                v605 = *(v604 + 168);
                v606 = v605 + 31;
                if ((v605 + 31) > *(v604 + 160))
                {
                  v677 = AGX::DataBufferAllocator<44ul>::growNoInline(v604 + 24, 3, 0);
                  v605 = *(v604 + 168);
                  if (!v677)
                  {
                    goto LABEL_903;
                  }

                  v606 = v605 + 31;
                  if ((v605 + 31) > *(v604 + 160))
                  {
                    goto LABEL_1095;
                  }
                }

                *(v604 + 176) = v606;
LABEL_903:
                v607 = (v605 + 15) & 0xFFFFFFFFFFFFFFF0;
                v608 = v607 + *(v604 + 184);
                *(v604 + 168) = v607 + 16;
                *(v604 + 26160) = 0;
                *(v604 + 27560) |= 0x10uLL;
                *(v604 + 27592) |= 1u;
                v609 = *(v604 + 22488);
                *(v609 + 32) = v608;
                *(v604 + 22536) = *(*(v604 + 48) + 224) + *MEMORY[0x29EDC5638];
                *(v609 + 17532) = 16;
                *(v609 + 17672) = 16;
                *(v609 + 17676) = v608 >> 8;
                *v607 = v741;
                *(v607 + 8) = v459;
                *(v607 + 12) = 0;
                ++v459;
                goto LABEL_904;
              }

              *(*(v574 + 22488) + 17408) = 0;
              v578 = *(v574 + 168);
              v579 = v578 + 31;
              if ((v578 + 31) > *(v574 + 160))
              {
                v670 = AGX::DataBufferAllocator<44ul>::growNoInline(v574 + 24, 3, 0);
                v578 = *(v574 + 168);
                if (!v670)
                {
                  goto LABEL_881;
                }

                v579 = v578 + 31;
                if ((v578 + 31) > *(v574 + 160))
                {
                  goto LABEL_1095;
                }
              }

              *(v574 + 176) = v579;
LABEL_881:
              v580 = (v578 + 15) & 0xFFFFFFFFFFFFFFF0;
              v581 = v580 + *(v574 + 184);
              *(v574 + 168) = v580 + 16;
              *(v574 + 26160) = 0;
              *(v574 + 27560) |= 0x10uLL;
              *(v574 + 27592) |= 1u;
              v582 = *(v574 + 22488);
              *(v582 + 32) = v581;
              *(v574 + 22536) = *(*(v574 + 48) + 224) + *MEMORY[0x29EDC5638];
              *(v582 + 17532) = 16;
              *(v582 + 17672) = 16;
              *(v582 + 17676) = v581 >> 8;
              *v580 = v741;
              *(v580 + 8) = v459;
              *(v580 + 12) = 0;
              ++v459;
              goto LABEL_882;
            }

            v556 = *(a1 + 16);
            *(*(v556 + 22488) + 17408) = 0;
            v557 = *(v556 + 168);
            v558 = v557 + 31;
            if ((v557 + 31) > *(v556 + 160))
            {
              v669 = AGX::DataBufferAllocator<44ul>::growNoInline(v556 + 24, 3, 0);
              v557 = *(v556 + 168);
              if (!v669)
              {
                goto LABEL_844;
              }

              v558 = v557 + 31;
              if ((v557 + 31) > *(v556 + 160))
              {
                goto LABEL_1095;
              }
            }

            *(v556 + 176) = v558;
LABEL_844:
            v559 = (v557 + 15) & 0xFFFFFFFFFFFFFFF0;
            v560 = v559 + *(v556 + 184);
            *(v556 + 168) = v559 + 16;
            *(v556 + 26160) = 0;
            *(v556 + 27560) |= 0x10uLL;
            *(v556 + 27592) |= 1u;
            v561 = *(v556 + 22488);
            *(v561 + 32) = v560;
            *(v556 + 22536) = *(*(v556 + 48) + 224) + *MEMORY[0x29EDC5638];
            *(v561 + 17532) = 16;
            *(v561 + 17672) = 16;
            *(v561 + 17676) = v560 >> 8;
            *v559 = v741;
            *(v559 + 8) = v459;
            *(v559 + 12) = 0;
            ++v459;
            goto LABEL_845;
          }

          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&)::verify != 1)
          {
LABEL_834:
            *&v768[0] = *v763 + 152;
            *(&v768[0] + 1) = 88;
            v768[1] = *&v763[16];
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyControlPoints(a1, v5 + 42, *v763, *&v763[24], v768, *(v5 + 10), *(v5 + 9), *(v713 + 192));
            goto LABEL_836;
          }

          v547 = *(a1 + 16);
          *(*(v547 + 22488) + 17408) = 0;
          v548 = *(v547 + 168);
          v549 = v548 + 31;
          if ((v548 + 31) > *(v547 + 160))
          {
            v682 = AGX::DataBufferAllocator<44ul>::growNoInline(v547 + 24, 3, 0);
            v548 = *(v547 + 168);
            if (!v682)
            {
              goto LABEL_833;
            }

            v549 = v548 + 31;
            if ((v548 + 31) > *(v547 + 160))
            {
              goto LABEL_1095;
            }
          }

          *(v547 + 176) = v549;
LABEL_833:
          v550 = (v548 + 15) & 0xFFFFFFFFFFFFFFF0;
          v551 = v550 + *(v547 + 184);
          *(v547 + 168) = v550 + 16;
          *(v547 + 26160) = 0;
          *(v547 + 27560) |= 0x10uLL;
          *(v547 + 27592) |= 1u;
          v552 = *(v547 + 22488);
          *(v552 + 32) = v551;
          *(v547 + 22536) = *(*(v547 + 48) + 224) + *MEMORY[0x29EDC5638];
          *(v552 + 17532) = 16;
          *(v552 + 17672) = 16;
          *(v552 + 17676) = v551 >> 8;
          *v550 = v741;
          *(v550 + 8) = v459;
          *(v550 + 12) = 0;
          ++v459;
          goto LABEL_834;
        }

        *(v439 + 17408) = 0;
        v454 = *(v438 + 168);
        v455 = v454 + 31;
        if ((v454 + 31) > *(v438 + 160))
        {
          v659 = AGX::DataBufferAllocator<44ul>::growNoInline(v438 + 24, 3, 0);
          v454 = *(v438 + 168);
          if (!v659)
          {
            goto LABEL_735;
          }

          v455 = v454 + 31;
          if ((v454 + 31) > *(v438 + 160))
          {
            goto LABEL_1095;
          }
        }

        *(v438 + 176) = v455;
LABEL_735:
        v456 = ((v454 + 15) & 0xFFFFFFFFFFFFFFF0);
        v457 = v456 + *(v438 + 184);
        *(v438 + 168) = v456 + 2;
        *(v438 + 26160) = 0;
        *(v438 + 27560) |= 0x10uLL;
        *(v438 + 27592) |= 1u;
        v458 = *(v438 + 22488);
        *(v458 + 32) = v457;
        *(v438 + 22536) = *(*(v438 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v458 + 17532) = 16;
        *(v458 + 17672) = 16;
        *(v458 + 17676) = v457 >> 8;
        *v456 = v741;
        v456[1] = 1000;
        v459 = 1001;
        goto LABEL_737;
      }

      v248 = *(v5 + 74);
      v249 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 60, 0);
      v250 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 172, 0);
      v720 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 61, 0);
      v742 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 63, 0);
      v251 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 173, 0);
      v738 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 62, 0);
      v735 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 174, 0);
      v733 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 64, 0);
      v730 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 65, 0);
      v727 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 66, 0);
      v723 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 67, 0);
      v716 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 68, 0);
      v252 = *(v5 + 78);
      {
        {
        }

        {
        }

        if (shouldDumpOrVerifyBVHs(void)::once != -1)
        {
          dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
        }

        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify = 0;
      }

      v253 = *(v5 + 70);
      v254 = *(v5 + 73);
      v255 = *(a1 + 16);
      *(v255 + 26464) = v253;
      *(*(v255 + 22488) + 56) = v253;
      *(v255 + 22560) = v254;
      *(v255 + 27560) |= 0x80uLL;
      *(v255 + 27592) |= 1u;
      if (*(v255 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v255, 22, 0, 0);
        *(v255 + 2306) = 0;
        if (*(v255 + 2292) == 1 && !*(v255 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v255, 22, (v255 + 28192), (v255 + 28200), (v255 + 28208));
        }
      }

      v256 = *(a1 + 16);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify == 1)
      {
        *(*(v256 + 22488) + 17408) = 0;
        v257 = *(v256 + 168);
        v258 = v257 + 31;
        if ((v257 + 31) <= *(v256 + 160))
        {
          goto LABEL_470;
        }

        v660 = AGX::DataBufferAllocator<44ul>::growNoInline(v256 + 24, 3, 0);
        v257 = *(v256 + 168);
        if (v660)
        {
          v258 = v257 + 31;
          if ((v257 + 31) > *(v256 + 160))
          {
            goto LABEL_1095;
          }

LABEL_470:
          *(v256 + 176) = v258;
        }

        v259 = ((v257 + 15) & 0xFFFFFFFFFFFFFFF0);
        v260 = v259 + *(v256 + 184);
        *(v256 + 168) = v259 + 2;
        *(v256 + 26160) = 0;
        v261 = *(v256 + 27560) | 0x10;
        *(v256 + 27592) |= 1u;
        *(v256 + 27560) = v261;
        v262 = *(v256 + 22488);
        *(v262 + 32) = v260;
        *(v256 + 22536) = *(*(v256 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v262 + 17532) = 16;
        *(v262 + 17672) = 16;
        *(v262 + 17676) = v260 >> 8;
        *v259 = v252;
        v259[1] = 0;
        v256 = *(a1 + 16);
        v263 = 1;
        goto LABEL_481;
      }

      v263 = 0;
LABEL_481:
      v768[0] = xmmword_29D2F1C70;
      *&v768[1] = 1;
      *v763 = xmmword_29D2F1C70;
      *&v763[16] = 1;
      *(v256 + 2060) |= 4u;
      v274 = *(v256 + 2336);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v256, v249);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v256, 0x16u, v768, v763);
      if (*(v256 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v256, 22, 0, 0);
      }

      if (v274)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v256, v274);
      }

      v275 = *(a1 + 16);
      if (*(v275 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        *(v275 + 2306) = 0;
        if (*(v275 + 2292) == 1 && !*(v275 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v275, 22, (v275 + 28192), (v275 + 28200), (v275 + 28208));
        }
      }

      v276 = *(v5 + 71);
      if (*(v276 + 609) != 1)
      {
        v279 = *(a1 + 16);
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify == 1)
        {
          *(*(v279 + 22488) + 17408) = 0;
          v280 = *(v279 + 168);
          v281 = v280 + 31;
          if ((v280 + 31) <= *(v279 + 160))
          {
            goto LABEL_495;
          }

          v672 = v279;
          v673 = AGX::DataBufferAllocator<44ul>::growNoInline(v279 + 24, 3, 0);
          v279 = v672;
          v280 = *(v672 + 168);
          if (v673)
          {
            v281 = v280 + 31;
            if ((v280 + 31) > *(v672 + 160))
            {
              goto LABEL_1095;
            }

LABEL_495:
            *(v279 + 176) = v281;
          }

          v282 = (v280 + 15) & 0xFFFFFFFFFFFFFFF0;
          v283 = v282 + *(v279 + 184);
          *(v279 + 168) = v282 + 16;
          *(v279 + 26160) = 0;
          v284 = *(v279 + 27560) | 0x10;
          *(v279 + 27592) |= 1u;
          *(v279 + 27560) = v284;
          v285 = *(v279 + 22488);
          *(v285 + 32) = v283;
          *(v279 + 22536) = *(*(v279 + 48) + 224) + *MEMORY[0x29EDC5638];
          *(v285 + 17532) = 16;
          *(v285 + 17672) = 16;
          *(v285 + 17676) = v283 >> 8;
          *v282 = v252;
          *(v282 + 8) = v263;
          *(v282 + 12) = 0;
          ++v263;
          v279 = *(a1 + 16);
        }

        v286 = *(v5 + 77);
        *(v279 + 2060) |= 4u;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v279, 22, v250, v248, v286);
        v287 = *(a1 + 16);
        if (*(v287 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
          *(v287 + 2306) = 0;
          if (*(v287 + 2292) == 1 && !*(v287 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v287, 22, (v287 + 28192), (v287 + 28200), (v287 + 28208));
          }
        }

        goto LABEL_501;
      }

      v277 = *(v5 + 15);
      if ((v277 & 0x400) != 0)
      {
        v424 = *(v5 + 8);
        if (!*(v5 + 1) && *(v5 + 10) && !v5[18] && v5[12] == 3)
        {
          v425 = 0x3FFFFFFFLL;
          if ((v5[28] & 4) == 0)
          {
            v425 = 0xFFFFFFFLL;
          }

          v426 = *(v5 + 48) + -1.0;
          if (v426 < 0.0)
          {
            v426 = 0.0;
          }

          v424 += vcvtpd_u64_f64(v426 * v424);
          if (v425 < v424)
          {
            LODWORD(v424) = v425;
          }
        }

        if ((v277 & 2) != 0)
        {
          v427 = *(v5 + 40);
          v428 = v427 - 1;
          if (v427 <= 1)
          {
            v428 = 1;
          }

          LODWORD(v424) = v428 * v424;
          if (v424 <= 1)
          {
            LODWORD(v424) = 1;
          }

          if (v427 > 1)
          {
            LODWORD(v424) = v424 << v5[13];
            if (!v424)
            {
              v278 = 1;
              goto LABEL_934;
            }
          }
        }

        else if (v424 <= 1)
        {
          LODWORD(v424) = 1;
        }

        v429 = vcvtps_u32_f32((33 - __clz(~(-1 << -__clz(v424 - 1)))) * 1.75);
        if (v429 >= 0x20)
        {
          v429 = 32;
        }

        if (v429 <= 1)
        {
          v278 = 1;
        }

        else
        {
          v278 = v429;
        }

LABEL_934:
        while (2)
        {
          v643 = *(a1 + 16);
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify != 1)
          {
            goto LABEL_938;
          }

          *(*(v643 + 22488) + 17408) = 0;
          v644 = *(v643 + 168);
          v645 = v644 + 31;
          if ((v644 + 31) > *(v643 + 160))
          {
            v652 = v643;
            v653 = AGX::DataBufferAllocator<44ul>::growNoInline(v643 + 24, 3, 0);
            v643 = v652;
            v644 = *(v652 + 168);
            if (v653)
            {
              v645 = v644 + 31;
              if ((v644 + 31) > *(v652 + 160))
              {
                goto LABEL_1095;
              }

              goto LABEL_936;
            }
          }

          else
          {
LABEL_936:
            *(v643 + 176) = v645;
          }

          v646 = (v644 + 15) & 0xFFFFFFFFFFFFFFF0;
          v647 = v646 + *(v643 + 184);
          *(v643 + 168) = v646 + 16;
          *(v643 + 26160) = 0;
          v648 = *(v643 + 27560) | 0x10;
          *(v643 + 27592) |= 1u;
          *(v643 + 27560) = v648;
          v649 = *(v643 + 22488);
          *(v649 + 32) = v647;
          *(v643 + 22536) = *(*(v643 + 48) + 224) + *MEMORY[0x29EDC5638];
          *(v649 + 17532) = 16;
          *(v649 + 17672) = 16;
          *(v649 + 17676) = v647 >> 8;
          *v646 = v252;
          *(v646 + 8) = v263;
          *(v646 + 12) = 0;
          ++v263;
          v643 = *(a1 + 16);
LABEL_938:
          v650 = *(v5 + 77);
          *(v643 + 2060) |= 4u;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v643, 22, v250, v248, v650);
          v651 = *(a1 + 16);
          if (*(v651 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
            *(v651 + 2306) = 0;
            if (*(v651 + 2292) == 1 && !*(v651 + 27624))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v651, 22, (v651 + 28192), (v651 + 28200), (v651 + 28208));
            }
          }

          if (!--v278)
          {
            goto LABEL_501;
          }

          continue;
        }
      }

      v278 = *v5;
      if (*v5)
      {
        goto LABEL_934;
      }

LABEL_501:
      if (*(v276 + 573) != 1)
      {
        v355 = *(a1 + 16);
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify == 1)
        {
          *(*(v355 + 22488) + 17408) = 0;
          v356 = *(v355 + 168);
          v357 = v356 + 31;
          if ((v356 + 31) <= *(v355 + 160))
          {
            goto LABEL_574;
          }

          v674 = v355;
          v675 = AGX::DataBufferAllocator<44ul>::growNoInline(v355 + 24, 3, 0);
          v355 = v674;
          v356 = *(v674 + 168);
          if (v675)
          {
            v357 = v356 + 31;
            if ((v356 + 31) > *(v674 + 160))
            {
              goto LABEL_1095;
            }

LABEL_574:
            *(v355 + 176) = v357;
          }

          v358 = (v356 + 15) & 0xFFFFFFFFFFFFFFF0;
          v359 = v358 + *(v355 + 184);
          *(v355 + 168) = v358 + 16;
          *(v355 + 26160) = 0;
          v360 = *(v355 + 27560) | 0x10;
          *(v355 + 27592) |= 1u;
          *(v355 + 27560) = v360;
          v361 = *(v355 + 22488);
          *(v361 + 32) = v359;
          *(v355 + 22536) = *(*(v355 + 48) + 224) + *MEMORY[0x29EDC5638];
          *(v361 + 17532) = 16;
          *(v361 + 17672) = 16;
          *(v361 + 17676) = v359 >> 8;
          *v358 = v252;
          *(v358 + 8) = v263;
          *(v358 + 12) = 0;
          ++v263;
          v355 = *(a1 + 16);
        }

        v362 = *(v5 + 77);
        *(v355 + 2060) |= 4u;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v355, 22, v720, v248 + 6, v362);
        v363 = *(a1 + 16);
        if (*(v363 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
          *(v363 + 2306) = 0;
          if (*(v363 + 2292) == 1 && !*(v363 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v363, 22, (v363 + 28192), (v363 + 28200), (v363 + 28208));
          }
        }

        goto LABEL_580;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::kWideBuildMaxIters = 16;
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::kWideBuildMaxIters >= 1)
      {
        v288 = 0;
        while (1)
        {
          v289 = *(a1 + 16);
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify == 1)
          {
            break;
          }

LABEL_510:
          v296 = *(v5 + 77);
          *(v289 + 2060) |= 4u;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v289, 22, v742, v248 + 12, v296);
          v297 = *(a1 + 16);
          if (*(v297 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
            *(v297 + 2306) = 0;
            if (*(v297 + 2292) == 1 && !*(v297 + 27624))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v297, 22, (v297 + 28192), (v297 + 28200), (v297 + 28208));
            }
          }

          v298 = *(a1 + 16);
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify == 1)
          {
            *(*(v298 + 22488) + 17408) = 0;
            v299 = *(v298 + 168);
            v300 = v299 + 31;
            if ((v299 + 31) <= *(v298 + 160))
            {
              goto LABEL_516;
            }

            v345 = v298;
            v346 = AGX::DataBufferAllocator<44ul>::growNoInline(v298 + 24, 3, 0);
            v298 = v345;
            v299 = *(v345 + 168);
            if (v346)
            {
              v300 = v299 + 31;
              if ((v299 + 31) > *(v345 + 160))
              {
                goto LABEL_1095;
              }

LABEL_516:
              *(v298 + 176) = v300;
            }

            v301 = (v299 + 15) & 0xFFFFFFFFFFFFFFF0;
            v302 = v301 + *(v298 + 184);
            *(v298 + 168) = v301 + 16;
            *(v298 + 26160) = 0;
            v303 = *(v298 + 27560) | 0x10;
            *(v298 + 27592) |= 1u;
            *(v298 + 27560) = v303;
            v304 = *(v298 + 22488);
            *(v304 + 32) = v302;
            *(v298 + 22536) = *(*(v298 + 48) + 224) + *MEMORY[0x29EDC5638];
            *(v304 + 17532) = 16;
            *(v304 + 17672) = 16;
            *(v304 + 17676) = v302 >> 8;
            *v301 = v252;
            *(v301 + 8) = v263;
            *(v301 + 12) = 0;
            ++v263;
            v298 = *(a1 + 16);
          }

          v305 = *(v5 + 77);
          *(v298 + 2060) |= 4u;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v298, 22, v251, v248 + 18, v305);
          v306 = *(a1 + 16);
          if (*(v306 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
            *(v306 + 2306) = 0;
            if (*(v306 + 2292) == 1 && !*(v306 + 27624))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v306, 22, (v306 + 28192), (v306 + 28200), (v306 + 28208));
            }
          }

          v307 = *(a1 + 16);
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify == 1)
          {
            *(*(v307 + 22488) + 17408) = 0;
            v308 = *(v307 + 168);
            v309 = v308 + 31;
            if ((v308 + 31) <= *(v307 + 160))
            {
              goto LABEL_524;
            }

            v347 = v307;
            v348 = AGX::DataBufferAllocator<44ul>::growNoInline(v307 + 24, 3, 0);
            v307 = v347;
            v308 = *(v347 + 168);
            if (v348)
            {
              v309 = v308 + 31;
              if ((v308 + 31) > *(v347 + 160))
              {
                goto LABEL_1095;
              }

LABEL_524:
              *(v307 + 176) = v309;
            }

            v310 = (v308 + 15) & 0xFFFFFFFFFFFFFFF0;
            v311 = v310 + *(v307 + 184);
            *(v307 + 168) = v310 + 16;
            *(v307 + 26160) = 0;
            v312 = *(v307 + 27560) | 0x10;
            *(v307 + 27592) |= 1u;
            *(v307 + 27560) = v312;
            v313 = *(v307 + 22488);
            *(v313 + 32) = v311;
            *(v307 + 22536) = *(*(v307 + 48) + 224) + *MEMORY[0x29EDC5638];
            *(v313 + 17532) = 16;
            *(v313 + 17672) = 16;
            *(v313 + 17676) = v311 >> 8;
            *v310 = v252;
            *(v310 + 8) = v263;
            *(v310 + 12) = 0;
            ++v263;
            v307 = *(a1 + 16);
          }

          v314 = *(v5 + 77);
          *(v307 + 2060) |= 4u;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v307, 22, v742, v248 + 24, v314);
          v315 = *(a1 + 16);
          if (*(v315 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
            *(v315 + 2306) = 0;
            if (*(v315 + 2292) == 1 && !*(v315 + 27624))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v315, 22, (v315 + 28192), (v315 + 28200), (v315 + 28208));
            }
          }

          v316 = *(a1 + 16);
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify == 1)
          {
            *(*(v316 + 22488) + 17408) = 0;
            v317 = *(v316 + 168);
            v318 = v317 + 31;
            if ((v317 + 31) <= *(v316 + 160))
            {
              goto LABEL_532;
            }

            v349 = v316;
            v350 = AGX::DataBufferAllocator<44ul>::growNoInline(v316 + 24, 3, 0);
            v316 = v349;
            v317 = *(v349 + 168);
            if (v350)
            {
              v318 = v317 + 31;
              if ((v317 + 31) > *(v349 + 160))
              {
                goto LABEL_1095;
              }

LABEL_532:
              *(v316 + 176) = v318;
            }

            v319 = (v317 + 15) & 0xFFFFFFFFFFFFFFF0;
            v320 = v319 + *(v316 + 184);
            *(v316 + 168) = v319 + 16;
            *(v316 + 26160) = 0;
            v321 = *(v316 + 27560) | 0x10;
            *(v316 + 27592) |= 1u;
            *(v316 + 27560) = v321;
            v322 = *(v316 + 22488);
            *(v322 + 32) = v320;
            *(v316 + 22536) = *(*(v316 + 48) + 224) + *MEMORY[0x29EDC5638];
            *(v322 + 17532) = 16;
            *(v322 + 17672) = 16;
            *(v322 + 17676) = v320 >> 8;
            *v319 = v252;
            *(v319 + 8) = v263;
            *(v319 + 12) = 0;
            ++v263;
            v316 = *(a1 + 16);
          }

          v323 = *(v5 + 77);
          *(v316 + 2060) |= 4u;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v316, 22, v251, v248 + 30, v323);
          v324 = *(a1 + 16);
          if (*(v324 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
            *(v324 + 2306) = 0;
            if (*(v324 + 2292) == 1 && !*(v324 + 27624))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v324, 22, (v324 + 28192), (v324 + 28200), (v324 + 28208));
            }
          }

          v325 = *(a1 + 16);
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify == 1)
          {
            *(*(v325 + 22488) + 17408) = 0;
            v326 = *(v325 + 168);
            v327 = v326 + 31;
            if ((v326 + 31) <= *(v325 + 160))
            {
              goto LABEL_540;
            }

            v351 = v325;
            v352 = AGX::DataBufferAllocator<44ul>::growNoInline(v325 + 24, 3, 0);
            v325 = v351;
            v326 = *(v351 + 168);
            if (v352)
            {
              v327 = v326 + 31;
              if ((v326 + 31) > *(v351 + 160))
              {
                goto LABEL_1095;
              }

LABEL_540:
              *(v325 + 176) = v327;
            }

            v328 = (v326 + 15) & 0xFFFFFFFFFFFFFFF0;
            v329 = v328 + *(v325 + 184);
            *(v325 + 168) = v328 + 16;
            *(v325 + 26160) = 0;
            v330 = *(v325 + 27560) | 0x10;
            *(v325 + 27592) |= 1u;
            *(v325 + 27560) = v330;
            v331 = *(v325 + 22488);
            *(v331 + 32) = v329;
            *(v325 + 22536) = *(*(v325 + 48) + 224) + *MEMORY[0x29EDC5638];
            *(v331 + 17532) = 16;
            *(v331 + 17672) = 16;
            *(v331 + 17676) = v329 >> 8;
            *v328 = v252;
            *(v328 + 8) = v263;
            *(v328 + 12) = 0;
            ++v263;
            v325 = *(a1 + 16);
          }

          v332 = *(v5 + 77);
          *(v325 + 2060) |= 4u;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v325, 22, v738, v248 + 36, v332);
          v333 = *(a1 + 16);
          if (*(v333 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
            *(v333 + 2306) = 0;
            if (*(v333 + 2292) == 1 && !*(v333 + 27624))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v333, 22, (v333 + 28192), (v333 + 28200), (v333 + 28208));
            }
          }

          v334 = *(a1 + 16);
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify != 1)
          {
            goto LABEL_550;
          }

          *(*(v334 + 22488) + 17408) = 0;
          v335 = *(v334 + 168);
          v336 = v335 + 31;
          if ((v335 + 31) > *(v334 + 160))
          {
            v353 = v334;
            v354 = AGX::DataBufferAllocator<44ul>::growNoInline(v334 + 24, 3, 0);
            v334 = v353;
            v335 = *(v353 + 168);
            if (!v354)
            {
              goto LABEL_549;
            }

            v336 = v335 + 31;
            if ((v335 + 31) > *(v353 + 160))
            {
              goto LABEL_1095;
            }
          }

          *(v334 + 176) = v336;
LABEL_549:
          v337 = (v335 + 15) & 0xFFFFFFFFFFFFFFF0;
          v338 = v337 + *(v334 + 184);
          *(v334 + 168) = v337 + 16;
          *(v334 + 26160) = 0;
          v339 = *(v334 + 27560) | 0x10;
          *(v334 + 27592) |= 1u;
          *(v334 + 27560) = v339;
          v340 = *(v334 + 22488);
          *(v340 + 32) = v338;
          *(v334 + 22536) = *(*(v334 + 48) + 224) + *MEMORY[0x29EDC5638];
          *(v340 + 17532) = 16;
          *(v340 + 17672) = 16;
          *(v340 + 17676) = v338 >> 8;
          *v337 = v252;
          *(v337 + 8) = v263;
          *(v337 + 12) = 0;
          ++v263;
          v334 = *(a1 + 16);
LABEL_550:
          v341 = *(v5 + 77);
          *(v334 + 2060) |= 4u;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v334, 22, v735, v248 + 42, v341);
          v342 = *(a1 + 16);
          if (*(v342 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
            *(v342 + 2306) = 0;
            if (*(v342 + 2292) == 1 && !*(v342 + 27624))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v342, 22, (v342 + 28192), (v342 + 28200), (v342 + 28208));
            }
          }

          if (++v288 >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::kWideBuildMaxIters)
          {
            goto LABEL_580;
          }
        }

        *(*(v289 + 22488) + 17408) = 0;
        v290 = *(v289 + 168);
        v291 = v290 + 31;
        if ((v290 + 31) > *(v289 + 160))
        {
          v343 = v289;
          v344 = AGX::DataBufferAllocator<44ul>::growNoInline(v289 + 24, 3, 0);
          v289 = v343;
          v290 = *(v343 + 168);
          if (v344)
          {
            v291 = v290 + 31;
            if ((v290 + 31) > *(v343 + 160))
            {
              goto LABEL_1095;
            }

            goto LABEL_508;
          }
        }

        else
        {
LABEL_508:
          *(v289 + 176) = v291;
        }

        v292 = (v290 + 15) & 0xFFFFFFFFFFFFFFF0;
        v293 = v292 + *(v289 + 184);
        *(v289 + 168) = v292 + 16;
        *(v289 + 26160) = 0;
        v294 = *(v289 + 27560) | 0x10;
        *(v289 + 27592) |= 1u;
        *(v289 + 27560) = v294;
        v295 = *(v289 + 22488);
        *(v295 + 32) = v293;
        *(v289 + 22536) = *(*(v289 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v295 + 17532) = 16;
        *(v295 + 17672) = 16;
        *(v295 + 17676) = v293 >> 8;
        *v292 = v252;
        *(v292 + 8) = v263;
        *(v292 + 12) = 0;
        ++v263;
        v289 = *(a1 + 16);
        goto LABEL_510;
      }

LABEL_580:
      v364 = *(a1 + 16);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify == 1)
      {
        *(*(v364 + 22488) + 17408) = 0;
        v365 = *(v364 + 168);
        v366 = v365 + 31;
        if ((v365 + 31) <= *(v364 + 160))
        {
          goto LABEL_582;
        }

        v661 = v364;
        v662 = AGX::DataBufferAllocator<44ul>::growNoInline(v364 + 24, 3, 0);
        v364 = v661;
        v365 = *(v661 + 168);
        if (v662)
        {
          v366 = v365 + 31;
          if ((v365 + 31) > *(v661 + 160))
          {
            goto LABEL_1095;
          }

LABEL_582:
          *(v364 + 176) = v366;
        }

        v367 = (v365 + 15) & 0xFFFFFFFFFFFFFFF0;
        v368 = v367 + *(v364 + 184);
        *(v364 + 168) = v367 + 16;
        *(v364 + 26160) = 0;
        v369 = *(v364 + 27560) | 0x10;
        *(v364 + 27592) |= 1u;
        *(v364 + 27560) = v369;
        v370 = *(v364 + 22488);
        *(v370 + 32) = v368;
        *(v364 + 22536) = *(*(v364 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v370 + 17532) = 16;
        *(v370 + 17672) = 16;
        *(v370 + 17676) = v368 >> 8;
        *v367 = v252;
        *(v367 + 8) = v263;
        *(v367 + 12) = 0;
        ++v263;
        v364 = *(a1 + 16);
      }

      v371 = *(v5 + 77);
      *(v364 + 2060) |= 4u;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v364, 22, v733, v248 + 48, v371);
      v372 = *(a1 + 16);
      if (*(v372 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        *(v372 + 2306) = 0;
        if (*(v372 + 2292) == 1 && !*(v372 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v372, 22, (v372 + 28192), (v372 + 28200), (v372 + 28208));
        }
      }

      v373 = *(a1 + 16);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify == 1)
      {
        *(*(v373 + 22488) + 17408) = 0;
        v374 = *(v373 + 168);
        v375 = v374 + 31;
        if ((v374 + 31) <= *(v373 + 160))
        {
          goto LABEL_590;
        }

        v663 = v373;
        v664 = AGX::DataBufferAllocator<44ul>::growNoInline(v373 + 24, 3, 0);
        v373 = v663;
        v374 = *(v663 + 168);
        if (v664)
        {
          v375 = v374 + 31;
          if ((v374 + 31) > *(v663 + 160))
          {
            goto LABEL_1095;
          }

LABEL_590:
          *(v373 + 176) = v375;
        }

        v376 = (v374 + 15) & 0xFFFFFFFFFFFFFFF0;
        v377 = v376 + *(v373 + 184);
        *(v373 + 168) = v376 + 16;
        *(v373 + 26160) = 0;
        v378 = *(v373 + 27560) | 0x10;
        *(v373 + 27592) |= 1u;
        *(v373 + 27560) = v378;
        v379 = *(v373 + 22488);
        *(v379 + 32) = v377;
        *(v373 + 22536) = *(*(v373 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v379 + 17532) = 16;
        *(v379 + 17672) = 16;
        *(v379 + 17676) = v377 >> 8;
        *v376 = v252;
        *(v376 + 8) = v263;
        *(v376 + 12) = 0;
        ++v263;
        v373 = *(a1 + 16);
      }

      v380 = *(v5 + 77);
      *(v373 + 2060) |= 4u;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v373, 22, v730, v248 + 54, v380);
      v381 = *(a1 + 16);
      if (*(v381 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        *(v381 + 2306) = 0;
        if (*(v381 + 2292) == 1 && !*(v381 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v381, 22, (v381 + 28192), (v381 + 28200), (v381 + 28208));
        }
      }

      v382 = *(a1 + 16);
      *(*(v382 + 22496) + 2036) = *(v276 + 622);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify == 1)
      {
        *(*(v382 + 22488) + 17408) = 0;
        v383 = *(v382 + 168);
        v384 = v383 + 31;
        if ((v383 + 31) <= *(v382 + 160))
        {
          goto LABEL_598;
        }

        v665 = v382;
        v666 = AGX::DataBufferAllocator<44ul>::growNoInline(v382 + 24, 3, 0);
        v382 = v665;
        v383 = *(v665 + 168);
        if (v666)
        {
          v384 = v383 + 31;
          if ((v383 + 31) > *(v665 + 160))
          {
            goto LABEL_1095;
          }

LABEL_598:
          *(v382 + 176) = v384;
        }

        v385 = (v383 + 15) & 0xFFFFFFFFFFFFFFF0;
        v386 = v385 + *(v382 + 184);
        *(v382 + 168) = v385 + 16;
        *(v382 + 26160) = 0;
        v387 = *(v382 + 27560) | 0x10;
        *(v382 + 27592) |= 1u;
        *(v382 + 27560) = v387;
        v388 = *(v382 + 22488);
        *(v388 + 32) = v386;
        *(v382 + 22536) = *(*(v382 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v388 + 17532) = 16;
        *(v388 + 17672) = 16;
        *(v388 + 17676) = v386 >> 8;
        *v385 = v252;
        *(v385 + 8) = v263;
        *(v385 + 12) = 0;
        ++v263;
        v382 = *(a1 + 16);
      }

      v389 = *(v5 + 77);
      *(v382 + 2060) |= 4u;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v382, 22, v727, v248 + 66, v389);
      v390 = *(a1 + 16);
      if (*(v390 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        *(v390 + 2306) = 0;
        if (*(v390 + 2292) == 1 && !*(v390 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v390, 22, (v390 + 28192), (v390 + 28200), (v390 + 28208));
        }
      }

      v391 = *(a1 + 16);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify == 1)
      {
        *(*(v391 + 22488) + 17408) = 0;
        v392 = *(v391 + 168);
        v393 = v392 + 31;
        if ((v392 + 31) <= *(v391 + 160))
        {
          goto LABEL_606;
        }

        v667 = v391;
        v668 = AGX::DataBufferAllocator<44ul>::growNoInline(v391 + 24, 3, 0);
        v391 = v667;
        v392 = *(v667 + 168);
        if (v668)
        {
          v393 = v392 + 31;
          if ((v392 + 31) > *(v667 + 160))
          {
            goto LABEL_1095;
          }

LABEL_606:
          *(v391 + 176) = v393;
        }

        v394 = (v392 + 15) & 0xFFFFFFFFFFFFFFF0;
        v395 = v394 + *(v391 + 184);
        *(v391 + 168) = v394 + 16;
        *(v391 + 26160) = 0;
        v396 = *(v391 + 27560) | 0x10;
        *(v391 + 27592) |= 1u;
        *(v391 + 27560) = v396;
        v397 = *(v391 + 22488);
        *(v397 + 32) = v395;
        *(v391 + 22536) = *(*(v391 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v397 + 17532) = 16;
        *(v397 + 17672) = 16;
        *(v397 + 17676) = v395 >> 8;
        *v394 = v252;
        *(v394 + 8) = v263;
        *(v394 + 12) = 0;
        ++v263;
        v391 = *(a1 + 16);
      }

      v398 = *(v5 + 77);
      *(v391 + 2060) |= 4u;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v391, 22, v723, v248 + 72, v398);
      if (*(v276 + 610) != 1)
      {
        goto LABEL_614;
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify == 1)
      {
        v399 = *(a1 + 16);
        *(*(v399 + 22488) + 17408) = 0;
        v400 = *(v399 + 168);
        v401 = v400 + 31;
        if ((v400 + 31) <= *(v399 + 160))
        {
          goto LABEL_611;
        }

        v676 = AGX::DataBufferAllocator<44ul>::growNoInline(v399 + 24, 3, 0);
        v400 = *(v399 + 168);
        if (v676)
        {
          v401 = v400 + 31;
          if ((v400 + 31) > *(v399 + 160))
          {
            goto LABEL_1095;
          }

LABEL_611:
          *(v399 + 176) = v401;
        }

        v402 = (v400 + 15) & 0xFFFFFFFFFFFFFFF0;
        v403 = v402 + *(v399 + 184);
        *(v399 + 168) = v402 + 16;
        *(v399 + 26160) = 0;
        *(v399 + 27560) |= 0x10uLL;
        *(v399 + 27592) |= 1u;
        v404 = *(v399 + 22488);
        *(v404 + 32) = v403;
        *(v399 + 22536) = *(*(v399 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v404 + 17532) = 16;
        *(v404 + 17672) = 16;
        *(v404 + 17676) = v403 >> 8;
        *v402 = v252;
        *(v402 + 8) = v263;
        *(v402 + 12) = 0;
        ++v263;
      }

      v405 = *(v5 + 77);
      v406 = *(a1 + 16);
      *(v406 + 2060) |= 4u;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v406, 22, v716, v248 + 78, v405);
LABEL_614:
      if (v5[18] - 8 <= 0xFFFFFFFD)
      {
        if ((*(v276 + 611) & 1) == 0 && *(v5 + 17))
        {
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify == 1)
          {
            v407 = *(a1 + 16);
            *(*(v407 + 22488) + 17408) = 0;
            v408 = *(v407 + 168);
            v409 = v408 + 31;
            if ((v408 + 31) <= *(v407 + 160))
            {
              goto LABEL_619;
            }

            v681 = AGX::DataBufferAllocator<44ul>::growNoInline(v407 + 24, 3, 0);
            v408 = *(v407 + 168);
            if (v681)
            {
              v409 = v408 + 31;
              if ((v408 + 31) > *(v407 + 160))
              {
                goto LABEL_1095;
              }

LABEL_619:
              *(v407 + 176) = v409;
            }

            v410 = (v408 + 15) & 0xFFFFFFFFFFFFFFF0;
            v411 = v410 + *(v407 + 184);
            *(v407 + 168) = v410 + 16;
            *(v407 + 26160) = 0;
            *(v407 + 27560) |= 0x10uLL;
            *(v407 + 27592) |= 1u;
            v412 = *(v407 + 22488);
            *(v412 + 32) = v411;
            *(v407 + 22536) = *(*(v407 + 48) + 224) + *MEMORY[0x29EDC5638];
            *(v412 + 17532) = 16;
            *(v412 + 17672) = 16;
            *(v412 + 17676) = v411 >> 8;
            *v410 = v252;
            *(v410 + 8) = v263;
            *(v410 + 12) = 0;
          }

          v413 = *(a1 + 16);
          if (*(v413 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
            *(v413 + 2306) = 0;
            if (*(v413 + 2292) == 1 && !*(v413 + 27624))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v413, 22, (v413 + 28192), (v413 + 28200), (v413 + 28208));
            }
          }
        }

        v414 = [v721 buffer];
        v415 = [v721 bufferOffset];
        v416 = [v414 gpuAddress];
        v417 = [v414 length];
        *&v768[0] = v416 + v415;
        *(&v768[0] + 1) = v415;
        v768[1] = v417;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyPPD(a1, v5, (v5 + 336), v768);
      }

LABEL_927:
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeTopDownBuilds(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownBuild>)::verify == 1)
      {
        v638 = *(v5 + 79);
        v639 = [objc_msgSend(v721 "buffer")];
        v640 = [v721 bufferOffset];
        v641 = *(v5 + 8);
        v642 = **(a1 + 16);
        v743[0] = MEMORY[0x29EDCA5F8];
        v743[1] = 3221225472;
        v743[2] = ___ZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE19encodeTopDownBuildsENS_4SpanINS6_12TopDownBuildEEE_block_invoke;
        v743[3] = &__block_descriptor_52_e28_v16__0___MTLCommandBuffer__8l;
        v744 = v641;
        v743[4] = v640 + v639;
        v743[5] = v638;
        [v642 addCompletedHandler:v743];
      }

      {
        {
        }
      }

      v4 = v688 + 1;
    }

    while (v688 + 1 != v686);
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v331[3] = *MEMORY[0x29EDCA608];
  {
    {
    }

    {
    }

    if (shouldDumpOrVerifyBVHs(void)::once != -1)
    {
      dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify = 0;
  }

  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 78, 0);
  v4 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 79, 0);
  v314 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 80, 0);
  v324 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 81, 0);
  v323 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 82, 0);
  v322 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 83, 0);
  v309 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 84, 0);
  v303 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 85, 0);
  v304 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 86, 0);
  v302 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 94, 0);
  v308 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 95, 0);
  v306 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 96, 0);
  v307 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 93, 0);
  v311 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 92, 0);
  v315 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 88, 0);
  v316 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 87, 0);
  v313 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 89, 0);
  v312 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 91, 0);
  v310 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 90, 0);
  v331[0] = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 69, 0);
  v331[1] = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 70, 0);
  v5 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 71, 0);
  v6 = 0;
  v331[2] = v5;
  if (*(a1 + 44) >= 2u)
  {
    v6 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 75, 0);
  }

  v299 = v6;
  v301 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 77, 0);
  v300 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 76, 0);
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::earlyOutStage = 9;
  }

  if (!a3)
  {
    return;
  }

  v7 = 0;
  v317 = vdupq_n_s64(1uLL);
  v305 = v4;
  while (2)
  {
    v325 = v7;
    v12 = (a2 + 400 * v7);
    v13 = v12[1];
    v326 = *(v13 + 672);
    if (*(v12 + 34))
    {
      v14 = *(v12 + 114) == 0;
    }

    else
    {
      v14 = 0;
    }

    if (v14 && *(v12 + 113) == 2)
    {
      {
        AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
      }

      {
        AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
      }

      if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit)
      {
        v15 = 0;
      }

      else if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
      {
        v15 = 1;
      }

      else
      {
        v15 = *(v12 + 124) & 1;
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeTrianglePairingForBvh(a1, (v12 + 12), v12[39], v15, (v12 + 4));
      v16 = *(a1 + 16);
      if (*(v16 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        *(v16 + 2306) = 0;
        if (*(v16 + 2292) == 1 && !*(v16 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v16, 22, (v16 + 28192), (v16 + 28200), (v16 + 28208));
        }
      }
    }

    v320 = v13;
    if (!AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::earlyOutStage)
    {
      goto LABEL_9;
    }

    v17 = *v12;
    v18 = v12[3];
    v19 = *(a1 + 16);
    *(v19 + 26464) = *v12;
    v20 = *(v19 + 22488);
    *(v20 + 56) = v17;
    *(v19 + 22560) = v18;
    *(v19 + 27560) |= 0x80uLL;
    *(v19 + 27592) |= 1u;
    v327 = v12[42];
    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
    {
      *(v20 + 17408) = 0;
      v21 = *(v19 + 168);
      v22 = v21 + 31;
      if ((v21 + 31) > *(v19 + 160))
      {
        v271 = AGX::DataBufferAllocator<44ul>::growNoInline(v19 + 24, 3, 0);
        v21 = *(v19 + 168);
        if (!v271)
        {
          goto LABEL_31;
        }

        v22 = v21 + 31;
        if ((v21 + 31) > *(v19 + 160))
        {
          goto LABEL_394;
        }
      }

      *(v19 + 176) = v22;
LABEL_31:
      v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = v23 + *(v19 + 184);
      *(v19 + 168) = v23 + 2;
      *(v19 + 26160) = 0;
      *(v19 + 27560) |= 0x10uLL;
      *(v19 + 27592) |= 1u;
      v25 = *(v19 + 22488);
      *(v25 + 32) = v24;
      *(v19 + 22536) = *(*(v19 + 48) + 224) + *MEMORY[0x29EDC5638];
      *(v25 + 17532) = 16;
      *(v25 + 17672) = 16;
      *(v25 + 17676) = v24 >> 8;
      *v23 = v327;
      v23[1] = 0;
      v26 = 1;
      goto LABEL_33;
    }

    v26 = 0;
LABEL_33:
    v27 = *(v12 + 111) & 0x180;
    if (v27 == 128)
    {
      v28 = *(v12 + 32) + 1023;
      if (v28 >= 0x1000)
      {
        v29 = v28 >> 10;
      }

      else
      {
        v29 = 4;
      }
    }

    else
    {
      v29 = 4;
    }

    v30 = *(a1 + 16);
    *v330 = v29;
    *&v330[8] = v317;
    *v328 = xmmword_29D2F1C70;
    *&v328[16] = 1;
    *(v30 + 2060) |= 4u;
    v31 = *(v30 + 2336);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v30, Pipeline);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v30, v328, v330);
    if (*(v30 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v30, 22, 0, 0);
    }

    if (v31)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v30, v31);
    }

    v32 = *(a1 + 16);
    if (*(v32 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
      *(v32 + 2306) = 0;
      if (*(v32 + 2292) == 1 && !*(v32 + 27624))
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v32, 22, (v32 + 28192), (v32 + 28200), (v32 + 28208));
      }
    }

    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::earlyOutStage == 1)
    {
      goto LABEL_9;
    }

    v33 = *(a1 + 16);
    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify != 1)
    {
      goto LABEL_51;
    }

    *(*(v33 + 22488) + 17408) = 0;
    v34 = *(v33 + 168);
    v35 = v34 + 31;
    if ((v34 + 31) > *(v33 + 160))
    {
      v272 = AGX::DataBufferAllocator<44ul>::growNoInline(v33 + 24, 3, 0);
      v34 = *(v33 + 168);
      if (!v272)
      {
        goto LABEL_50;
      }

      v35 = v34 + 31;
      if ((v34 + 31) > *(v33 + 160))
      {
        goto LABEL_394;
      }
    }

    *(v33 + 176) = v35;
LABEL_50:
    v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
    v37 = v36 + *(v33 + 184);
    *(v33 + 168) = v36 + 16;
    *(v33 + 26160) = 0;
    v38 = *(v33 + 27560) | 0x10;
    *(v33 + 27592) |= 1u;
    *(v33 + 27560) = v38;
    v39 = *(v33 + 22488);
    *(v39 + 32) = v37;
    *(v33 + 22536) = *(*(v33 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v39 + 17532) = 16;
    *(v39 + 17672) = 16;
    *(v39 + 17676) = v37 >> 8;
    *v36 = v327;
    *(v36 + 8) = v26;
    *(v36 + 12) = 0;
    ++v26;
    v33 = *(a1 + 16);
LABEL_51:
    *v328 = (*(v12 + 32) + 255) & 0xFFFFFF00;
    *&v328[8] = vdupq_n_s64(1uLL);
    *v330 = xmmword_29D2F23C0;
    *&v330[16] = 1;
    *(v33 + 2060) |= 4u;
    v40 = *(v33 + 2336);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v33, v314);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v33, 0x16u, v328, v330);
    if (*(v33 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v33, 22, 0, 0);
    }

    if (v40)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v33, v40);
    }

    v41 = *(a1 + 16);
    if (*(v41 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
      *(v41 + 2306) = 0;
      if (*(v41 + 2292) == 1 && !*(v41 + 27624))
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v41, 22, (v41 + 28192), (v41 + 28200), (v41 + 28208));
      }
    }

    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::earlyOutStage == 2)
    {
      goto LABEL_9;
    }

    if (v27 == 128)
    {
      v42 = *(v320 + 65);
      v43 = *(a1 + 16);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
      {
        *(*(v43 + 22488) + 17408) = 0;
        v44 = *(v43 + 168);
        v45 = v44 + 31;
        if ((v44 + 31) <= *(v43 + 160))
        {
          goto LABEL_63;
        }

        v273 = AGX::DataBufferAllocator<44ul>::growNoInline(v43 + 24, 3, 0);
        v44 = *(v43 + 168);
        if (v273)
        {
          v45 = v44 + 31;
          if ((v44 + 31) > *(v43 + 160))
          {
            goto LABEL_394;
          }

LABEL_63:
          *(v43 + 176) = v45;
        }

        v46 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
        v47 = v46 + *(v43 + 184);
        *(v43 + 168) = v46 + 16;
        *(v43 + 26160) = 0;
        v48 = *(v43 + 27560) | 0x10;
        *(v43 + 27592) |= 1u;
        *(v43 + 27560) = v48;
        v49 = *(v43 + 22488);
        *(v49 + 32) = v47;
        *(v43 + 22536) = *(*(v43 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v49 + 17532) = 16;
        *(v49 + 17672) = 16;
        *(v49 + 17676) = v47 >> 8;
        *v46 = v327;
        *(v46 + 8) = v26;
        *(v46 + 12) = 0;
        ++v26;
        v43 = *(a1 + 16);
      }

      *v328 = (*(v12 + 32) + 1023) & 0xFFFFFC00;
      *&v328[8] = vdupq_n_s64(1uLL);
      *v330 = xmmword_29D2F2430;
      *&v330[16] = 1;
      *(v43 + 2060) |= 4u;
      v50 = *(v43 + 2336);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v43, v311);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v43, 0x16u, v328, v330);
      if (*(v43 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v43, 22, 0, 0);
      }

      if (v50)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v43, v50);
      }

      v51 = *(a1 + 16);
      if (*(v51 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        *(v51 + 2306) = 0;
        if (*(v51 + 2292) == 1 && !*(v51 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v51, 22, (v51 + 28192), (v51 + 28200), (v51 + 28208));
        }
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::earlyOutStage == 3)
      {
        goto LABEL_9;
      }

      v52 = *(a1 + 16);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
      {
        *(*(v52 + 22488) + 17408) = 0;
        v53 = *(v52 + 168);
        v54 = v53 + 31;
        if ((v53 + 31) <= *(v52 + 160))
        {
          goto LABEL_76;
        }

        v275 = v52;
        v276 = AGX::DataBufferAllocator<44ul>::growNoInline(v52 + 24, 3, 0);
        v52 = v275;
        v53 = *(v275 + 168);
        if (v276)
        {
          v54 = v53 + 31;
          if ((v53 + 31) > *(v275 + 160))
          {
            goto LABEL_394;
          }

LABEL_76:
          *(v52 + 176) = v54;
        }

        v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
        v56 = v55 + *(v52 + 184);
        *(v52 + 168) = v55 + 16;
        *(v52 + 26160) = 0;
        v57 = *(v52 + 27560) | 0x10;
        *(v52 + 27592) |= 1u;
        *(v52 + 27560) = v57;
        v58 = *(v52 + 22488);
        *(v58 + 32) = v56;
        *(v52 + 22536) = *(*(v52 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v58 + 17532) = 16;
        *(v58 + 17672) = 16;
        *(v58 + 17676) = v56 >> 8;
        *v55 = v327;
        *(v55 + 8) = v26;
        *(v55 + 12) = 0;
        ++v26;
        v52 = *(a1 + 16);
      }

      v59 = v12[49];
      *(v52 + 2060) |= 4u;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v52, 22, v307, v326 + 12, v59);
      v60 = *(a1 + 16);
      if (*(v60 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        *(v60 + 2306) = 0;
        if (*(v60 + 2292) == 1 && !*(v60 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v60, 22, (v60 + 28192), (v60 + 28200), (v60 + 28208));
        }
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::batchEarlyOut = -1;
      }

      if (v42)
      {
        v61 = 0;
        v62 = 1 - v42;
        while (2)
        {
          v63 = *(a1 + 16);
          if (!v61)
          {
            goto LABEL_97;
          }

          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
          {
            *(*(v63 + 22488) + 17408) = 0;
            v64 = *(v63 + 168);
            v65 = v64 + 31;
            if ((v64 + 31) <= *(v63 + 160))
            {
              goto LABEL_89;
            }

            v108 = AGX::DataBufferAllocator<44ul>::growNoInline(v63 + 24, 3, 0);
            v64 = *(v63 + 168);
            if (v108)
            {
              v65 = v64 + 31;
              if ((v64 + 31) > *(v63 + 160))
              {
                goto LABEL_394;
              }

LABEL_89:
              *(v63 + 176) = v65;
            }

            v66 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
            v67 = v66 + *(v63 + 184);
            *(v63 + 168) = v66 + 16;
            *(v63 + 26160) = 0;
            v68 = *(v63 + 27560) | 0x10;
            *(v63 + 27592) |= 1u;
            *(v63 + 27560) = v68;
            v69 = *(v63 + 22488);
            *(v69 + 32) = v67;
            *(v63 + 22536) = *(*(v63 + 48) + 224) + *MEMORY[0x29EDC5638];
            *(v69 + 17532) = 16;
            *(v69 + 17672) = 16;
            *(v69 + 17676) = v67 >> 8;
            *v66 = v327;
            *(v66 + 8) = v26;
            *(v66 + 12) = 0;
            ++v26;
            v63 = *(a1 + 16);
          }

          v70 = v12[49];
          *(v63 + 2060) |= 4u;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v63, 22, v315, v326 + 24, v70);
          v71 = *(a1 + 16);
          if (*(v71 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
            *(v71 + 2306) = 0;
            if (*(v71 + 2292) == 1 && !*(v71 + 27624))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v71, 22, (v71 + 28192), (v71 + 28200), (v71 + 28208));
            }
          }

          if (!(v62 | AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::batchEarlyOut))
          {
            goto LABEL_85;
          }

          v63 = *(a1 + 16);
LABEL_97:
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
          {
            *(*(v63 + 22488) + 17408) = 0;
            v72 = *(v63 + 168);
            v73 = v72 + 31;
            if ((v72 + 31) <= *(v63 + 160))
            {
              goto LABEL_99;
            }

            v107 = AGX::DataBufferAllocator<44ul>::growNoInline(v63 + 24, 3, 0);
            v72 = *(v63 + 168);
            if (v107)
            {
              v73 = v72 + 31;
              if ((v72 + 31) > *(v63 + 160))
              {
                goto LABEL_394;
              }

LABEL_99:
              *(v63 + 176) = v73;
            }

            v74 = (v72 + 15) & 0xFFFFFFFFFFFFFFF0;
            v75 = v74 + *(v63 + 184);
            *(v63 + 168) = v74 + 16;
            *(v63 + 26160) = 0;
            v76 = *(v63 + 27560) | 0x10;
            *(v63 + 27592) |= 1u;
            *(v63 + 27560) = v76;
            v77 = *(v63 + 22488);
            *(v77 + 32) = v75;
            *(v63 + 22536) = *(*(v63 + 48) + 224) + *MEMORY[0x29EDC5638];
            *(v77 + 17532) = 16;
            *(v77 + 17672) = 16;
            *(v77 + 17676) = v75 >> 8;
            *v74 = v327;
            *(v74 + 8) = v26;
            *(v74 + 12) = 0;
            ++v26;
            v63 = *(a1 + 16);
          }

          v78 = v12[49];
          *(v63 + 2060) |= 4u;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v63, 22, v316, v326 + 18, v78);
          v79 = *(a1 + 16);
          if (*(v79 + 2292) == 1 && (AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0), *(v79 + 2306) = 0, *(v79 + 2292) == 1) && !*(v79 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v79, 22, (v79 + 28192), (v79 + 28200), (v79 + 28208));
            if (v62)
            {
              goto LABEL_106;
            }
          }

          else if (v62)
          {
            goto LABEL_106;
          }

          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::batchEarlyOut == 1)
          {
            goto LABEL_85;
          }

LABEL_106:
          v80 = *(a1 + 16);
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
          {
            *(*(v80 + 22488) + 17408) = 0;
            v81 = *(v80 + 168);
            v82 = v81 + 31;
            if ((v81 + 31) <= *(v80 + 160))
            {
              goto LABEL_108;
            }

            v109 = v80;
            v110 = AGX::DataBufferAllocator<44ul>::growNoInline(v80 + 24, 3, 0);
            v80 = v109;
            v81 = *(v109 + 168);
            if (v110)
            {
              v82 = v81 + 31;
              if ((v81 + 31) > *(v109 + 160))
              {
                goto LABEL_394;
              }

LABEL_108:
              *(v80 + 176) = v82;
            }

            v83 = (v81 + 15) & 0xFFFFFFFFFFFFFFF0;
            v84 = v83 + *(v80 + 184);
            *(v80 + 168) = v83 + 16;
            *(v80 + 26160) = 0;
            v85 = *(v80 + 27560) | 0x10;
            *(v80 + 27592) |= 1u;
            *(v80 + 27560) = v85;
            v86 = *(v80 + 22488);
            *(v86 + 32) = v84;
            *(v80 + 22536) = *(*(v80 + 48) + 224) + *MEMORY[0x29EDC5638];
            *(v86 + 17532) = 16;
            *(v86 + 17672) = 16;
            *(v86 + 17676) = v84 >> 8;
            *v83 = v327;
            *(v83 + 8) = v26;
            *(v83 + 12) = 0;
            ++v26;
            v80 = *(a1 + 16);
          }

          v87 = v12[49];
          *(v80 + 2060) |= 4u;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v80, 22, v313, v326 + 30, v87);
          v88 = *(a1 + 16);
          if (*(v88 + 2292) == 1 && (AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0), *(v88 + 2306) = 0, *(v88 + 2292) == 1) && !*(v88 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v88, 22, (v88 + 28192), (v88 + 28200), (v88 + 28208));
            if (v62)
            {
              goto LABEL_115;
            }
          }

          else if (v62)
          {
            goto LABEL_115;
          }

          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::batchEarlyOut == 2)
          {
            goto LABEL_85;
          }

LABEL_115:
          v89 = *(a1 + 16);
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify != 1)
          {
            goto LABEL_119;
          }

          *(*(v89 + 22488) + 17408) = 0;
          v90 = *(v89 + 168);
          v91 = v90 + 31;
          if ((v90 + 31) > *(v89 + 160))
          {
            v111 = v89;
            v112 = AGX::DataBufferAllocator<44ul>::growNoInline(v89 + 24, 3, 0);
            v89 = v111;
            v90 = *(v111 + 168);
            if (!v112)
            {
              goto LABEL_118;
            }

            v91 = v90 + 31;
            if ((v90 + 31) > *(v111 + 160))
            {
              goto LABEL_394;
            }
          }

          *(v89 + 176) = v91;
LABEL_118:
          v92 = (v90 + 15) & 0xFFFFFFFFFFFFFFF0;
          v93 = v92 + *(v89 + 184);
          *(v89 + 168) = v92 + 16;
          *(v89 + 26160) = 0;
          v94 = *(v89 + 27560) | 0x10;
          *(v89 + 27592) |= 1u;
          *(v89 + 27560) = v94;
          v95 = *(v89 + 22488);
          *(v95 + 32) = v93;
          *(v89 + 22536) = *(*(v89 + 48) + 224) + *MEMORY[0x29EDC5638];
          *(v95 + 17532) = 16;
          *(v95 + 17672) = 16;
          *(v95 + 17676) = v93 >> 8;
          *v92 = v327;
          *(v92 + 8) = v26;
          *(v92 + 12) = 0;
          ++v26;
          v89 = *(a1 + 16);
LABEL_119:
          v96 = v12[49];
          *(v89 + 2060) |= 4u;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v89, 22, v312, v326 + 36, v96);
          v97 = *(a1 + 16);
          if (*(v97 + 2292) == 1 && (AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0), *(v97 + 2306) = 0, *(v97 + 2292) == 1) && !*(v97 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v97, 22, (v97 + 28192), (v97 + 28200), (v97 + 28208));
            if (v62)
            {
LABEL_124:
              v98 = *(a1 + 16);
              if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
              {
                *(*(v98 + 22488) + 17408) = 0;
                v99 = *(v98 + 168);
                v100 = v99 + 31;
                if ((v99 + 31) <= *(v98 + 160))
                {
                  goto LABEL_126;
                }

                v113 = v98;
                v114 = AGX::DataBufferAllocator<44ul>::growNoInline(v98 + 24, 3, 0);
                v98 = v113;
                v99 = *(v113 + 168);
                if (v114)
                {
                  v100 = v99 + 31;
                  if ((v99 + 31) > *(v113 + 160))
                  {
                    goto LABEL_394;
                  }

LABEL_126:
                  *(v98 + 176) = v100;
                }

                v101 = (v99 + 15) & 0xFFFFFFFFFFFFFFF0;
                v102 = v101 + *(v98 + 184);
                *(v98 + 168) = v101 + 16;
                *(v98 + 26160) = 0;
                v103 = *(v98 + 27560) | 0x10;
                *(v98 + 27592) |= 1u;
                *(v98 + 27560) = v103;
                v104 = *(v98 + 22488);
                *(v104 + 32) = v102;
                *(v98 + 22536) = *(*(v98 + 48) + 224) + *MEMORY[0x29EDC5638];
                *(v104 + 17532) = 16;
                *(v104 + 17672) = 16;
                *(v104 + 17676) = v102 >> 8;
                *v101 = v327;
                *(v101 + 8) = v26;
                *(v101 + 12) = 0;
                ++v26;
                v98 = *(a1 + 16);
              }

              v105 = v12[49];
              *(v98 + 2060) |= 4u;
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v98, 22, v310, v326 + 42, v105);
              v106 = *(a1 + 16);
              if (*(v106 + 2292) == 1)
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
                *(v106 + 2306) = 0;
                if (*(v106 + 2292) == 1 && !*(v106 + 27624))
                {
                  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v106, 22, (v106 + 28192), (v106 + 28200), (v106 + 28208));
                }
              }

              goto LABEL_85;
            }
          }

          else if (v62)
          {
            goto LABEL_124;
          }

          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::batchEarlyOut != 3)
          {
            goto LABEL_124;
          }

LABEL_85:
          ++v62;
          --v61;
          if (v62 == 1)
          {
            break;
          }

          continue;
        }
      }

      v159 = *(a1 + 16);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
      {
        *(*(v159 + 22488) + 17408) = 0;
        v160 = *(v159 + 168);
        v161 = v160 + 31;
        if ((v160 + 31) <= *(v159 + 160))
        {
          goto LABEL_208;
        }

        v277 = v159;
        v278 = AGX::DataBufferAllocator<44ul>::growNoInline(v159 + 24, 3, 0);
        v159 = v277;
        v160 = *(v277 + 168);
        if (v278)
        {
          v161 = v160 + 31;
          if ((v160 + 31) > *(v277 + 160))
          {
            goto LABEL_394;
          }

LABEL_208:
          *(v159 + 176) = v161;
        }

        v162 = (v160 + 15) & 0xFFFFFFFFFFFFFFF0;
        v163 = v162 + *(v159 + 184);
        *(v159 + 168) = v162 + 16;
        *(v159 + 26160) = 0;
        v164 = *(v159 + 27560) | 0x10;
        *(v159 + 27592) |= 1u;
        *(v159 + 27560) = v164;
        v165 = *(v159 + 22488);
        *(v165 + 32) = v163;
        *(v159 + 22536) = *(*(v159 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v165 + 17532) = 16;
        *(v165 + 17672) = 16;
        *(v165 + 17676) = v163 >> 8;
        *v162 = v327;
        *(v162 + 8) = v26;
        *(v162 + 12) = 0;
        ++v26;
        v159 = *(a1 + 16);
      }

      v166 = v12[49];
      *(v159 + 2060) |= 4u;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v159, 22, v306, v326 + 60, v166);
      v167 = *(a1 + 16);
      if (*(v167 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        *(v167 + 2306) = 0;
        if (*(v167 + 2292) == 1 && !*(v167 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v167, 22, (v167 + 28192), (v167 + 28200), (v167 + 28208));
        }
      }

      v168 = *(a1 + 16);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
      {
        *(*(v168 + 22488) + 17408) = 0;
        v169 = *(v168 + 168);
        v170 = v169 + 31;
        if ((v169 + 31) <= *(v168 + 160))
        {
          goto LABEL_216;
        }

        v279 = v168;
        v280 = AGX::DataBufferAllocator<44ul>::growNoInline(v168 + 24, 3, 0);
        v168 = v279;
        v169 = *(v279 + 168);
        if (v280)
        {
          v170 = v169 + 31;
          if ((v169 + 31) > *(v279 + 160))
          {
            goto LABEL_394;
          }

LABEL_216:
          *(v168 + 176) = v170;
        }

        v171 = (v169 + 15) & 0xFFFFFFFFFFFFFFF0;
        v172 = v171 + *(v168 + 184);
        *(v168 + 168) = v171 + 16;
        *(v168 + 26160) = 0;
        v173 = *(v168 + 27560) | 0x10;
        *(v168 + 27592) |= 1u;
        *(v168 + 27560) = v173;
        v174 = *(v168 + 22488);
        *(v174 + 32) = v172;
        *(v168 + 22536) = *(*(v168 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v174 + 17532) = 16;
        *(v174 + 17672) = 16;
        *(v174 + 17676) = v172 >> 8;
        *v171 = v327;
        *(v171 + 8) = v26;
        *(v171 + 12) = 0;
        ++v26;
        v168 = *(a1 + 16);
      }

      v175 = v12[49];
      *(v168 + 2060) |= 4u;
      v176 = v326 + 54;
      v177 = v308;
      goto LABEL_241;
    }

    if ((*(v12 + 111) & 0x100) == 0)
    {
      goto LABEL_222;
    }

    v115 = *(v12 + 32);
    memset(v328, 0, sizeof(v328));
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v328, a1, 16, 1);
    v116 = (v115 + 2047) >> 11;
    v118 = *&v328[8];
    v117 = *v328;
    v119 = *&v328[16];
    bzero(*v328, 0x10uLL);
    v120 = 0;
    *v117 = *(v12 + 32);
    v117[2] = v116;
    v121 = *(a1 + 16);
    *(v121 + 26472) = v118;
    *(*(v121 + 22488) + 64) = v118;
    v4 = v305;
    *(v121 + 22568) = v119;
    *(v121 + 27560) |= 0x100uLL;
    *(v121 + 27592) |= 1u;
    do
    {
      v122 = *(a1 + 16);
      *(*(v122 + 22488) + 17428) = 0;
      v123 = *(v122 + 168);
      v124 = v123 + 31;
      if ((v123 + 31) <= *(v122 + 160))
      {
        goto LABEL_157;
      }

      v155 = AGX::DataBufferAllocator<44ul>::growNoInline(v122 + 24, 3, 0);
      v123 = *(v122 + 168);
      if (v155)
      {
        v124 = v123 + 31;
        if ((v123 + 31) > *(v122 + 160))
        {
          goto LABEL_394;
        }

LABEL_157:
        *(v122 + 176) = v124;
      }

      v125 = ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
      v126 = v125 + *(v122 + 184);
      *(v122 + 168) = v125 + 4;
      *(v122 + 26200) = 0;
      *(v122 + 27560) |= 0x200uLL;
      *(v122 + 27592) |= 1u;
      v127 = *(v122 + 22488);
      *(v127 + 72) = v126;
      *(v122 + 22576) = *(*(v122 + 48) + 224) + *MEMORY[0x29EDC5638];
      *(v127 + 17552) = 4;
      *(v127 + 17712) = 4;
      *(v127 + 17716) = v126 >> 8;
      *v125 = v120;
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify != 1)
      {
        goto LABEL_162;
      }

      v128 = *(a1 + 16);
      *(*(v128 + 22488) + 17408) = 0;
      v129 = *(v128 + 168);
      v130 = v129 + 31;
      if ((v129 + 31) > *(v128 + 160))
      {
        v156 = AGX::DataBufferAllocator<44ul>::growNoInline(v128 + 24, 3, 0);
        v129 = *(v128 + 168);
        if (!v156)
        {
          goto LABEL_161;
        }

        v130 = v129 + 31;
        if ((v129 + 31) > *(v128 + 160))
        {
          goto LABEL_394;
        }
      }

      *(v128 + 176) = v130;
LABEL_161:
      v131 = (v129 + 15) & 0xFFFFFFFFFFFFFFF0;
      v132 = v131 + *(v128 + 184);
      *(v128 + 168) = v131 + 16;
      *(v128 + 26160) = 0;
      *(v128 + 27560) |= 0x10uLL;
      *(v128 + 27592) |= 1u;
      v133 = *(v128 + 22488);
      *(v133 + 32) = v132;
      *(v128 + 22536) = *(*(v128 + 48) + 224) + *MEMORY[0x29EDC5638];
      *(v133 + 17532) = 16;
      *(v133 + 17672) = 16;
      *(v133 + 17676) = v132 >> 8;
      *v131 = v327;
      *(v131 + 8) = v26;
      *(v131 + 12) = 0;
      ++v26;
LABEL_162:
      v134 = *(a1 + 16);
      *v330 = v116;
      *&v330[8] = vdupq_n_s64(1uLL);
      *v328 = xmmword_29D2F2430;
      *&v328[16] = 1;
      *(v134 + 2060) |= 4u;
      v135 = *(v134 + 2336);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v134, v324);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v134, v328, v330);
      if (*(v134 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v134, 22, 0, 0);
      }

      if (v135)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v134, v135);
      }

      v136 = *(a1 + 16);
      if (*(v136 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        *(v136 + 2306) = 0;
        if (*(v136 + 2292) == 1 && !*(v136 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v136, 22, (v136 + 28192), (v136 + 28200), (v136 + 28208));
        }
      }

      v137 = *(a1 + 16);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
      {
        *(*(v137 + 22488) + 17408) = 0;
        v138 = *(v137 + 168);
        v139 = v138 + 31;
        if ((v138 + 31) > *(v137 + 160))
        {
          v157 = AGX::DataBufferAllocator<44ul>::growNoInline(v137 + 24, 3, 0);
          v138 = *(v137 + 168);
          if (!v157)
          {
            goto LABEL_173;
          }

          v139 = v138 + 31;
          if ((v138 + 31) > *(v137 + 160))
          {
            goto LABEL_394;
          }
        }

        *(v137 + 176) = v139;
LABEL_173:
        v140 = (v138 + 15) & 0xFFFFFFFFFFFFFFF0;
        v141 = v140 + *(v137 + 184);
        *(v137 + 168) = v140 + 16;
        *(v137 + 26160) = 0;
        v142 = *(v137 + 27560) | 0x10;
        *(v137 + 27592) |= 1u;
        *(v137 + 27560) = v142;
        v143 = *(v137 + 22488);
        *(v143 + 32) = v141;
        *(v137 + 22536) = *(*(v137 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v143 + 17532) = 16;
        *(v143 + 17672) = 16;
        *(v143 + 17676) = v141 >> 8;
        *v140 = v327;
        *(v140 + 8) = v26;
        *(v140 + 12) = 0;
        ++v26;
        v137 = *(a1 + 16);
      }

      *v330 = xmmword_29D2F23C0;
      *&v330[16] = 1;
      *v328 = xmmword_29D2F2430;
      *&v328[16] = 1;
      *(v137 + 2060) |= 4u;
      v144 = *(v137 + 2336);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v137, v323);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v137, v328, v330);
      if (*(v137 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v137, 22, 0, 0);
      }

      if (v144)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v137, v144);
      }

      v145 = *(a1 + 16);
      if (*(v145 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        *(v145 + 2306) = 0;
        if (*(v145 + 2292) == 1 && !*(v145 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v145, 22, (v145 + 28192), (v145 + 28200), (v145 + 28208));
        }
      }

      v146 = *(a1 + 16);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
      {
        *(*(v146 + 22488) + 17408) = 0;
        v147 = *(v146 + 168);
        v148 = v147 + 31;
        if ((v147 + 31) <= *(v146 + 160))
        {
          goto LABEL_184;
        }

        v158 = AGX::DataBufferAllocator<44ul>::growNoInline(v146 + 24, 3, 0);
        v147 = *(v146 + 168);
        if (v158)
        {
          v148 = v147 + 31;
          if ((v147 + 31) > *(v146 + 160))
          {
            goto LABEL_394;
          }

LABEL_184:
          *(v146 + 176) = v148;
        }

        v149 = (v147 + 15) & 0xFFFFFFFFFFFFFFF0;
        v150 = v149 + *(v146 + 184);
        *(v146 + 168) = v149 + 16;
        *(v146 + 26160) = 0;
        v151 = *(v146 + 27560) | 0x10;
        *(v146 + 27592) |= 1u;
        *(v146 + 27560) = v151;
        v152 = *(v146 + 22488);
        *(v152 + 32) = v150;
        *(v146 + 22536) = *(*(v146 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v152 + 17532) = 16;
        *(v152 + 17672) = 16;
        *(v152 + 17676) = v150 >> 8;
        *v149 = v327;
        *(v149 + 8) = v26;
        *(v149 + 12) = 0;
        ++v26;
        v146 = *(a1 + 16);
      }

      *v330 = v116;
      *&v330[8] = vdupq_n_s64(1uLL);
      *v328 = xmmword_29D2F2430;
      *&v328[16] = 1;
      *(v146 + 2060) |= 4u;
      v153 = *(v146 + 2336);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v146, v322);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v146, v328, v330);
      if (*(v146 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v146, 22, 0, 0);
      }

      if (v153)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v146, v153);
      }

      v154 = *(a1 + 16);
      if (*(v154 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        *(v154 + 2306) = 0;
        if (*(v154 + 2292) == 1 && !*(v154 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v154, 22, (v154 + 28192), (v154 + 28200), (v154 + 28208));
        }
      }

      ++v120;
    }

    while (v120 != 4);
    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify)
    {
      [**(a1 + 16) addCompletedHandler:&__block_literal_global_354];
    }

    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::earlyOutStage == 3)
    {
      goto LABEL_9;
    }

LABEL_222:
    v178 = *(a1 + 16);
    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
    {
      *(*(v178 + 22488) + 17408) = 0;
      v179 = *(v178 + 168);
      v180 = v179 + 31;
      if ((v179 + 31) <= *(v178 + 160))
      {
        goto LABEL_224;
      }

      v274 = AGX::DataBufferAllocator<44ul>::growNoInline(v178 + 24, 3, 0);
      v179 = *(v178 + 168);
      if (v274)
      {
        v180 = v179 + 31;
        if ((v179 + 31) > *(v178 + 160))
        {
          goto LABEL_394;
        }

LABEL_224:
        *(v178 + 176) = v180;
      }

      v181 = (v179 + 15) & 0xFFFFFFFFFFFFFFF0;
      v182 = v181 + *(v178 + 184);
      *(v178 + 168) = v181 + 16;
      *(v178 + 26160) = 0;
      v183 = *(v178 + 27560) | 0x10;
      *(v178 + 27592) |= 1u;
      *(v178 + 27560) = v183;
      v184 = *(v178 + 22488);
      *(v184 + 32) = v182;
      *(v178 + 22536) = *(*(v178 + 48) + 224) + *MEMORY[0x29EDC5638];
      *(v184 + 17532) = 16;
      *(v184 + 17672) = 16;
      *(v184 + 17676) = v182 >> 8;
      *v181 = v327;
      *(v181 + 8) = v26;
      *(v181 + 12) = 0;
      ++v26;
      v178 = *(a1 + 16);
    }

    *v330 = vdupq_n_s64(1uLL);
    *&v330[16] = 1;
    *v328 = xmmword_29D2F2430;
    *&v328[16] = 1;
    *(v178 + 2060) |= 4u;
    v185 = *(v178 + 2336);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v178, v309);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v178, v328, v330);
    if (*(v178 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v178, 22, 0, 0);
    }

    if (v185)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v178, v185);
    }

    v186 = *(a1 + 16);
    if (*(v186 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
      *(v186 + 2306) = 0;
      if (*(v186 + 2292) == 1 && !*(v186 + 27624))
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v186, 22, (v186 + 28192), (v186 + 28200), (v186 + 28208));
      }
    }

    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::earlyOutStage == 4)
    {
LABEL_9:
      v7 = v325 + 1;
      if (v325 + 1 == a3)
      {
        return;
      }

      continue;
    }

    break;
  }

  v168 = *(a1 + 16);
  if ((*(v12 + 111) & 0x80) != 0)
  {
    if (!AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify)
    {
LABEL_264:
      v217 = v12[49];
      *(v168 + 2060) |= 4u;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v168, 22, v302, v326 + 18, v217);
      v218 = *(a1 + 16);
      if (*(v218 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        *(v218 + 2306) = 0;
        if (*(v218 + 2292) == 1 && !*(v218 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v218, 22, (v218 + 28192), (v218 + 28200), (v218 + 28208));
        }
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::earlyOutStage == 5)
      {
        goto LABEL_9;
      }

      v219 = *(a1 + 16);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify != 1)
      {
LABEL_273:
        *v330 = vdupq_n_s64(1uLL);
        *&v330[16] = 1;
        *v328 = xmmword_29D2F2430;
        *&v328[16] = 1;
        *(v219 + 2060) |= 4u;
        v226 = *(v219 + 2336);
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v219, v308);
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v219, v328, v330);
        if (*(v219 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v219, 22, 0, 0);
        }

        if (v226)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v219, v226);
        }

        goto LABEL_242;
      }

      *(*(v219 + 22488) + 17408) = 0;
      v220 = *(v219 + 168);
      v221 = v220 + 31;
      if ((v220 + 31) > *(v219 + 160))
      {
        v295 = AGX::DataBufferAllocator<44ul>::growNoInline(v219 + 24, 3, 0);
        v220 = *(v219 + 168);
        if (!v295)
        {
          goto LABEL_272;
        }

        v221 = v220 + 31;
        if ((v220 + 31) > *(v219 + 160))
        {
          goto LABEL_394;
        }
      }

      *(v219 + 176) = v221;
LABEL_272:
      v222 = (v220 + 15) & 0xFFFFFFFFFFFFFFF0;
      v223 = v222 + *(v219 + 184);
      *(v219 + 168) = v222 + 16;
      *(v219 + 26160) = 0;
      v224 = *(v219 + 27560) | 0x10;
      *(v219 + 27592) |= 1u;
      *(v219 + 27560) = v224;
      v225 = *(v219 + 22488);
      *(v225 + 32) = v223;
      *(v219 + 22536) = *(*(v219 + 48) + 224) + *MEMORY[0x29EDC5638];
      *(v225 + 17532) = 16;
      *(v225 + 17672) = 16;
      *(v225 + 17676) = v223 >> 8;
      *v222 = v327;
      *(v222 + 8) = v26;
      *(v222 + 12) = 0;
      ++v26;
      v219 = *(a1 + 16);
      goto LABEL_273;
    }

    *(*(v168 + 22488) + 17408) = 0;
    v211 = *(v168 + 168);
    v212 = v211 + 31;
    if ((v211 + 31) > *(v168 + 160))
    {
      v289 = v168;
      v290 = AGX::DataBufferAllocator<44ul>::growNoInline(v168 + 24, 3, 0);
      v168 = v289;
      v211 = *(v289 + 168);
      if (!v290)
      {
        goto LABEL_263;
      }

      v212 = v211 + 31;
      if ((v211 + 31) > *(v289 + 160))
      {
        goto LABEL_394;
      }
    }

    *(v168 + 176) = v212;
LABEL_263:
    v213 = (v211 + 15) & 0xFFFFFFFFFFFFFFF0;
    v214 = v213 + *(v168 + 184);
    *(v168 + 168) = v213 + 16;
    *(v168 + 26160) = 0;
    v215 = *(v168 + 27560) | 0x10;
    *(v168 + 27592) |= 1u;
    *(v168 + 27560) = v215;
    v216 = *(v168 + 22488);
    *(v216 + 32) = v214;
    *(v168 + 22536) = *(*(v168 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v216 + 17532) = 16;
    *(v216 + 17672) = 16;
    *(v216 + 17676) = v214 >> 8;
    *v213 = v327;
    *(v213 + 8) = v26;
    *(v213 + 12) = 0;
    ++v26;
    v168 = *(a1 + 16);
    goto LABEL_264;
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify)
  {
    *(*(v168 + 22488) + 17408) = 0;
    v187 = *(v168 + 168);
    v188 = v187 + 31;
    if ((v187 + 31) <= *(v168 + 160))
    {
      goto LABEL_238;
    }

    v287 = v168;
    v288 = AGX::DataBufferAllocator<44ul>::growNoInline(v168 + 24, 3, 0);
    v168 = v287;
    v187 = *(v287 + 168);
    if (v288)
    {
      v188 = v187 + 31;
      if ((v187 + 31) > *(v287 + 160))
      {
        goto LABEL_394;
      }

LABEL_238:
      *(v168 + 176) = v188;
    }

    v189 = (v187 + 15) & 0xFFFFFFFFFFFFFFF0;
    v190 = v189 + *(v168 + 184);
    *(v168 + 168) = v189 + 16;
    *(v168 + 26160) = 0;
    v191 = *(v168 + 27560) | 0x10;
    *(v168 + 27592) |= 1u;
    *(v168 + 27560) = v191;
    v192 = *(v168 + 22488);
    *(v192 + 32) = v190;
    *(v168 + 22536) = *(*(v168 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v192 + 17532) = 16;
    *(v192 + 17672) = 16;
    *(v192 + 17676) = v190 >> 8;
    *v189 = v327;
    *(v189 + 8) = v26;
    *(v189 + 12) = 0;
    ++v26;
    v168 = *(a1 + 16);
  }

  v175 = v12[49];
  *(v168 + 2060) |= 4u;
  v176 = v326 + 54;
  v177 = v303;
LABEL_241:
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v168, 22, v177, v176, v175);
LABEL_242:
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::earlyOutStage == 6)
  {
    goto LABEL_9;
  }

  v193 = *(a1 + 16);
  if (*(v193 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
    *(v193 + 2306) = 0;
    if (*(v193 + 2292) == 1 && !*(v193 + 27624))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v193, 22, (v193 + 28192), (v193 + 28200), (v193 + 28208));
    }
  }

  v194 = *(a1 + 16);
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
  {
    *(*(v194 + 22488) + 17408) = 0;
    v195 = *(v194 + 168);
    v196 = v195 + 31;
    if ((v195 + 31) <= *(v194 + 160))
    {
      goto LABEL_249;
    }

    v281 = v194;
    v282 = AGX::DataBufferAllocator<44ul>::growNoInline(v194 + 24, 3, 0);
    v194 = v281;
    v195 = *(v281 + 168);
    if (v282)
    {
      v196 = v195 + 31;
      if ((v195 + 31) > *(v281 + 160))
      {
        goto LABEL_394;
      }

LABEL_249:
      *(v194 + 176) = v196;
    }

    v197 = (v195 + 15) & 0xFFFFFFFFFFFFFFF0;
    v198 = v197 + *(v194 + 184);
    *(v194 + 168) = v197 + 16;
    *(v194 + 26160) = 0;
    v199 = *(v194 + 27560) | 0x10;
    *(v194 + 27592) |= 1u;
    *(v194 + 27560) = v199;
    v200 = *(v194 + 22488);
    *(v200 + 32) = v198;
    *(v194 + 22536) = *(*(v194 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v200 + 17532) = 16;
    *(v200 + 17672) = 16;
    *(v200 + 17676) = v198 >> 8;
    *v197 = v327;
    *(v197 + 8) = v26;
    *(v197 + 12) = 0;
    ++v26;
    v194 = *(a1 + 16);
  }

  v201 = v12[49];
  *(v194 + 2060) |= 4u;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v194, 22, v4, v326 + 78, v201);
  v202 = *(a1 + 16);
  if (*(v202 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
    *(v202 + 2306) = 0;
    if (*(v202 + 2292) == 1 && !*(v202 + 27624))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v202, 22, (v202 + 28192), (v202 + 28200), (v202 + 28208));
    }
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::earlyOutStage == 7)
  {
    goto LABEL_9;
  }

  v203 = *(a1 + 16);
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
  {
    *(*(v203 + 22488) + 17408) = 0;
    v204 = *(v203 + 168);
    v205 = v204 + 31;
    v206 = v320;
    if ((v204 + 31) <= *(v203 + 160))
    {
      goto LABEL_258;
    }

    v283 = v203;
    v284 = AGX::DataBufferAllocator<44ul>::growNoInline(v203 + 24, 3, 0);
    v203 = v283;
    v204 = *(v283 + 168);
    if (v284)
    {
      v205 = v204 + 31;
      if ((v204 + 31) > *(v283 + 160))
      {
        goto LABEL_394;
      }

LABEL_258:
      *(v203 + 176) = v205;
    }

    v207 = (v204 + 15) & 0xFFFFFFFFFFFFFFF0;
    v208 = v207 + *(v203 + 184);
    *(v203 + 168) = v207 + 16;
    *(v203 + 26160) = 0;
    v209 = *(v203 + 27560) | 0x10;
    *(v203 + 27592) |= 1u;
    *(v203 + 27560) = v209;
    v210 = *(v203 + 22488);
    *(v210 + 32) = v208;
    *(v203 + 22536) = *(*(v203 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v210 + 17532) = 16;
    *(v210 + 17672) = 16;
    *(v210 + 17676) = v208 >> 8;
    *v207 = v327;
    *(v207 + 8) = v26;
    *(v207 + 12) = 0;
    ++v26;
    v203 = *(a1 + 16);
  }

  else
  {
    v206 = v320;
  }

  v227 = v331[*(v206 + 76)];
  v228 = v12[49];
  *(v203 + 2060) |= 4u;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v203, 22, v227, v326 + 72, v228);
  v229 = *(a1 + 16);
  if (*(v229 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
    *(v229 + 2306) = 0;
    if (*(v229 + 2292) == 1 && !*(v229 + 27624))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v229, 22, (v229 + 28192), (v229 + 28200), (v229 + 28208));
    }
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::earlyOutStage != 8)
  {
    v230 = *(a1 + 16);
    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
    {
      *(*(v230 + 22488) + 17408) = 0;
      v231 = *(v230 + 168);
      v232 = v231 + 31;
      if ((v231 + 31) <= *(v230 + 160))
      {
        goto LABEL_285;
      }

      v285 = v230;
      v286 = AGX::DataBufferAllocator<44ul>::growNoInline(v230 + 24, 3, 0);
      v230 = v285;
      v231 = *(v285 + 168);
      if (v286)
      {
        v232 = v231 + 31;
        if ((v231 + 31) > *(v285 + 160))
        {
          goto LABEL_394;
        }

LABEL_285:
        *(v230 + 176) = v232;
      }

      v233 = (v231 + 15) & 0xFFFFFFFFFFFFFFF0;
      v234 = v233 + *(v230 + 184);
      *(v230 + 168) = v233 + 16;
      *(v230 + 26160) = 0;
      v235 = *(v230 + 27560) | 0x10;
      *(v230 + 27592) |= 1u;
      *(v230 + 27560) = v235;
      v236 = *(v230 + 22488);
      *(v236 + 32) = v234;
      *(v230 + 22536) = *(*(v230 + 48) + 224) + *MEMORY[0x29EDC5638];
      *(v236 + 17532) = 16;
      *(v236 + 17672) = 16;
      *(v236 + 17676) = v234 >> 8;
      *v233 = v327;
      *(v233 + 8) = v26;
      *(v233 + 12) = 0;
      ++v26;
      v230 = *(a1 + 16);
    }

    v237 = v12[49];
    *(v230 + 2060) |= 4u;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v230, 22, v304, v326 + 66, v237);
    if (*(v206 + 165) == 1)
    {
      v238 = *(a1 + 16);
      *(*(v238 + 22496) + 2036) = *(v206 + 50);
      if (*(v238 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v238, 22, 0, 0);
        *(v238 + 2306) = 0;
        if (*(v238 + 2292) == 1 && !*(v238 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v238, 22, (v238 + 28192), (v238 + 28200), (v238 + 28208));
        }
      }

      v239 = *(a1 + 16);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
      {
        *(*(v239 + 22488) + 17408) = 0;
        v240 = *(v239 + 168);
        v241 = v240 + 31;
        if ((v240 + 31) <= *(v239 + 160))
        {
          goto LABEL_294;
        }

        v291 = v239;
        v292 = AGX::DataBufferAllocator<44ul>::growNoInline(v239 + 24, 3, 0);
        v240 = *(v291 + 168);
        if (v292)
        {
          v241 = v240 + 31;
          v239 = v291;
          v206 = v320;
          if ((v240 + 31) > *(v291 + 160))
          {
            goto LABEL_394;
          }

LABEL_294:
          *(v239 + 176) = v241;
        }

        else
        {
          v239 = v291;
          v206 = v320;
        }

        v242 = (v240 + 15) & 0xFFFFFFFFFFFFFFF0;
        v243 = v242 + *(v239 + 184);
        *(v239 + 168) = v242 + 16;
        *(v239 + 26160) = 0;
        v244 = *(v239 + 27560) | 0x10;
        *(v239 + 27592) |= 1u;
        *(v239 + 27560) = v244;
        v245 = *(v239 + 22488);
        *(v245 + 32) = v243;
        *(v239 + 22536) = *(*(v239 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v245 + 17532) = 16;
        *(v245 + 17672) = 16;
        *(v245 + 17676) = v243 >> 8;
        *v242 = v327;
        *(v242 + 8) = v26;
        *(v242 + 12) = 0;
        ++v26;
        v239 = *(a1 + 16);
      }

      v246 = v12[49];
      *(v239 + 2060) |= 4u;
      v247 = v301;
LABEL_309:
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v239, 22, v247, v326, v246);
LABEL_310:
      if (*(v206 + 164) == 1)
      {
        v255 = *(a1 + 16);
        if (*(v255 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
          *(v255 + 2306) = 0;
          if (*(v255 + 2292) == 1 && !*(v255 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v255, 22, (v255 + 28192), (v255 + 28200), (v255 + 28208));
          }
        }

        v256 = *(a1 + 16);
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
        {
          *(*(v256 + 22488) + 17408) = 0;
          v257 = *(v256 + 168);
          v258 = v257 + 31;
          if ((v257 + 31) <= *(v256 + 160))
          {
            goto LABEL_317;
          }

          v293 = v256;
          v294 = AGX::DataBufferAllocator<44ul>::growNoInline(v256 + 24, 3, 0);
          v257 = *(v293 + 168);
          if (v294)
          {
            v258 = v257 + 31;
            v256 = v293;
            v206 = v320;
            if ((v257 + 31) > *(v293 + 160))
            {
              goto LABEL_394;
            }

LABEL_317:
            *(v256 + 176) = v258;
          }

          else
          {
            v256 = v293;
            v206 = v320;
          }

          v259 = (v257 + 15) & 0xFFFFFFFFFFFFFFF0;
          v260 = v259 + *(v256 + 184);
          *(v256 + 168) = v259 + 16;
          *(v256 + 26160) = 0;
          v261 = *(v256 + 27560) | 0x10;
          *(v256 + 27592) |= 1u;
          *(v256 + 27560) = v261;
          v262 = *(v256 + 22488);
          *(v262 + 32) = v260;
          *(v256 + 22536) = *(*(v256 + 48) + 224) + *MEMORY[0x29EDC5638];
          *(v262 + 17532) = 16;
          *(v262 + 17672) = 16;
          *(v262 + 17676) = v260 >> 8;
          *v259 = v327;
          *(v259 + 8) = v26;
          *(v259 + 12) = 0;
          ++v26;
          v256 = *(a1 + 16);
        }

        v263 = v12[49];
        *(v256 + 2060) |= 4u;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v256, 22, v300, v326 + 6, v263);
      }

      if (*(v12 + 114) - 8 <= 0xFFFFFFFD && (*(v206 + 159) & 1) == 0)
      {
        if (v12[29])
        {
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
          {
            v264 = *(a1 + 16);
            *(*(v264 + 22488) + 17408) = 0;
            v265 = *(v264 + 168);
            v266 = v265 + 31;
            if ((v265 + 31) <= *(v264 + 160))
            {
              goto LABEL_325;
            }

            v298 = AGX::DataBufferAllocator<44ul>::growNoInline(v264 + 24, 3, 0);
            v265 = *(v264 + 168);
            if (v298)
            {
              v266 = v265 + 31;
              if ((v265 + 31) > *(v264 + 160))
              {
LABEL_394:
                abort();
              }

LABEL_325:
              *(v264 + 176) = v266;
            }

            v267 = (v265 + 15) & 0xFFFFFFFFFFFFFFF0;
            v268 = v267 + *(v264 + 184);
            *(v264 + 168) = v267 + 16;
            *(v264 + 26160) = 0;
            *(v264 + 27560) |= 0x10uLL;
            *(v264 + 27592) |= 1u;
            v269 = *(v264 + 22488);
            *(v269 + 32) = v268;
            *(v264 + 22536) = *(*(v264 + 48) + 224) + *MEMORY[0x29EDC5638];
            *(v269 + 17532) = 16;
            *(v269 + 17672) = 16;
            *(v269 + 17676) = v268 >> 8;
            *v267 = v327;
            *(v267 + 8) = v26;
            *(v267 + 12) = 0;
          }

          v270 = *(a1 + 16);
          if (*(v270 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
            *(v270 + 2306) = 0;
            if (*(v270 + 2292) == 1 && !*(v270 + 27624))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v270, 22, (v270 + 28192), (v270 + 28200), (v270 + 28208));
            }
          }
        }

        v8 = [v12[37] buffer];
        v9 = [v12[37] bufferOffset];
        v10 = [v8 gpuAddress];
        v11 = [v8 length];
        *v328 = v10 + v9;
        *&v328[8] = v9;
        *&v328[16] = v11;
        v329 = 0;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyPPD(a1, (v12 + 12), (v12 + 38), v328);
      }

      {
        {
        }
      }

      goto LABEL_9;
    }

    if ((*(v206 + 152) & 1) == 0 || *(v12 + 114) != 3 && *(v12 + 114))
    {
      goto LABEL_310;
    }

    v248 = *(a1 + 16);
    if (*(v248 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
      *(v248 + 2306) = 0;
      if (*(v248 + 2292) == 1 && !*(v248 + 27624))
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v248, 22, (v248 + 28192), (v248 + 28200), (v248 + 28208));
      }
    }

    v239 = *(a1 + 16);
    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::MediumBuild>)::verify == 1)
    {
      *(*(v239 + 22488) + 17408) = 0;
      v249 = *(v239 + 168);
      v250 = v249 + 31;
      if ((v249 + 31) <= *(v239 + 160))
      {
        goto LABEL_306;
      }

      v296 = v239;
      v297 = AGX::DataBufferAllocator<44ul>::growNoInline(v239 + 24, 3, 0);
      v249 = *(v296 + 168);
      if (v297)
      {
        v250 = v249 + 31;
        v239 = v296;
        v206 = v320;
        if ((v249 + 31) > *(v296 + 160))
        {
          goto LABEL_394;
        }

LABEL_306:
        *(v239 + 176) = v250;
      }

      else
      {
        v239 = v296;
        v206 = v320;
      }

      v251 = (v249 + 15) & 0xFFFFFFFFFFFFFFF0;
      v252 = v251 + *(v239 + 184);
      *(v239 + 168) = v251 + 16;
      *(v239 + 26160) = 0;
      v253 = *(v239 + 27560) | 0x10;
      *(v239 + 27592) |= 1u;
      *(v239 + 27560) = v253;
      v254 = *(v239 + 22488);
      *(v254 + 32) = v252;
      *(v239 + 22536) = *(*(v239 + 48) + 224) + *MEMORY[0x29EDC5638];
      *(v254 + 17532) = 16;
      *(v254 + 17672) = 16;
      *(v254 + 17676) = v252 >> 8;
      *v251 = v327;
      *(v251 + 8) = v26;
      *(v251 + 12) = 0;
      ++v26;
      v239 = *(a1 + 16);
    }

    v246 = v12[49];
    *(v239 + 2060) |= 4u;
    v247 = v299;
    goto LABEL_309;
  }
}

uint64_t AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeTrianglePairingForBvh(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (*(a2 + 40))
  {
    v6 = result;
    if (*(a2 + 48))
    {
      operator new[]();
    }

    result = 0;
    if (!*(a2 + 18))
    {
      v40 = *(a2 + 40);
      if (v40)
      {
        v41 = 0;
        v42 = 0;
        v7 = 0;
        v39 = (a4 | *(a2 + 15)) & 1;
        for (i = a3 + 48; ; i += 144)
        {
          v10 = *(i + 44);
          if (v10)
          {
            break;
          }

LABEL_8:
          if (v40 == ++v7)
          {
            return 0;
          }
        }

        if (*(i - 16))
        {
          v11 = *(i + 19) >> 4;
        }

        else
        {
          v12 = 3 * v10;
          if ((3 * v10) >= 0x101)
          {
            if (v12 >= 0x10001)
            {
              if (v12 < 0x1000001)
              {
                v11 = 3;
              }

              else
              {
                v11 = 4;
              }
            }

            else
            {
              v11 = 2;
            }
          }

          else
          {
            v11 = 1;
          }
        }

        v13 = v10 >> 13;
        if (v10 >> 13)
        {
          v14 = 1024;
        }

        else
        {
          v14 = 32;
        }

        v46 = 0;
        v47 = 0;
        v48 = 0;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v46, v6, 144, 0);
        v16 = v46;
        v15 = v47;
        v17 = v48;
        v18 = *(v6 + 16);
        *(v18 + 26448) = v47;
        *(*(v18 + 22488) + 40) = v15;
        *(v18 + 22544) = v17;
        *(v18 + 27560) |= 0x20uLL;
        *(v18 + 27592) |= 1u;
        *(v16 + 140) = v39;
        *(v16 + 141) = v39;
        *(v16 + 96) = v42;
        *(v16 + 104) = v41;
        *(v16 + 112) = v7;
        *v16 = *(i - 16);
        *(v16 + 8) = *(i - 48);
        *(v16 + 120) = *(i + 19) >> 4;
        *(v16 + 124) = v11;
        *(v16 + 128) = *(i + 8);
        *(v16 + 136) = *(i + 16);
        *(v16 + 16) = *(a5 + 8);
        *(v16 + 72) = *(a5 + 16);
        *(v16 + 24) = *(a5 + 24);
        *(v16 + 40) = *(a5 + 40);
        *(v16 + 88) = *(a5 + 48);
        *(v16 + 48) = *a5;
        *(v16 + 56) = *i;
        *(v16 + 142) = *(i + 18) != 0;
        *(v16 + 132) = v14;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v43, v6, 4, 1);
        v19 = v44;
        *v43 = 0;
        *(v16 + 80) = v19;
        v20 = *(v6 + 16);
        *(*(v20 + 22488) + 17416) = 0;
        v21 = *(v20 + 168);
        v22 = v21 + 31;
        if ((v21 + 31) > *(v20 + 160))
        {
          v38 = AGX::DataBufferAllocator<44ul>::growNoInline(v20 + 24, 3, 0);
          v21 = *(v20 + 168);
          if (!v38)
          {
            goto LABEL_24;
          }

          v22 = v21 + 31;
          if ((v21 + 31) > *(v20 + 160))
          {
            abort();
          }
        }

        *(v20 + 176) = v22;
LABEL_24:
        v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = v23 + *(v20 + 184);
        *(v20 + 168) = v23 + 4;
        *(v20 + 26176) = 0;
        v25 = *(v20 + 27592);
        *(v20 + 27560) |= 0x40uLL;
        *(v20 + 27592) = v25 | 1;
        v26 = *(v20 + 22488);
        *(v26 + 48) = v24;
        *(v20 + 22552) = *(*(v20 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v26 + 17540) = 8;
        *(v26 + 17688) = 8;
        *(v26 + 17692) = v24 >> 8;
        *v23 = v10;
        v23[1] = 0;
        Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v6, 136, 0);
        v28 = *(Pipeline + 456);
        v29 = *(v6 + 16);
        v51 = (v10 + 31) & 0xFFFFFFE0;
        v52 = vdupq_n_s64(1uLL);
        v49 = v28;
        v50 = v52;
        *(v29 + 2060) |= 4u;
        v30 = *(v29 + 2336);
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v29, Pipeline);
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v29, 0x16u, &v51, &v49);
        if (*(v29 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v29, 22, 0, 0);
        }

        if (v30)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v29, v30);
        }

        v31 = *(v6 + 16);
        if (*(v31 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(v6 + 16), 22, 0, 0);
          *(v31 + 2306) = 0;
          if (*(v31 + 2292) == 1 && !*(v31 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v31, 22, (v31 + 28192), (v31 + 28200), (v31 + 28208));
          }
        }

        if (v13)
        {
          v32 = 139;
        }

        else
        {
          v32 = 138;
        }

        if (v13)
        {
          v33 = 10;
        }

        else
        {
          v33 = 5;
        }

        v34 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v6, v32, 0);
        v35 = 32 * (((v10 + v14 - 1) >> v33) & 0x7FFFFFF);
        v36 = *(v6 + 16);
        v51 = v35;
        v52 = vdupq_n_s64(1uLL);
        *(v36 + 2060) |= 4u;
        v37 = *(v36 + 2336);
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v36, v34);
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v36, 0x16u, &v51, &xmmword_29D2F5318);
        if (*(v36 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v36, 22, 0, 0);
        }

        if (v37)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v36, v37);
        }

        v42 += v10;
        *(i - 8) = *(i - 16);
        *(i - 16) = v41 + *(a5 + 40);
        HIDWORD(v9) = v11;
        LODWORD(v9) = *(i + 19) << 24;
        *(i + 19) = v9 >> 28;
        v41 += ((4 * v11 * v10) + 31) & 0x1FFFFFFE0;
        goto LABEL_8;
      }

      return 0;
    }
  }

  return result;
}

unint64_t *AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(unint64_t *result, uint64_t a2, int a3, int a4)
{
  if (a4)
  {
    v4 = 10;
  }

  else
  {
    v4 = 3;
  }

  v5 = *(a2 + 16);
  v6 = *(v5 + 1864);
  if (v6 == 7)
  {
    if (a4)
    {
      v6 = 41;
    }

    else
    {
      v6 = 3;
    }
  }

  else if (v6 == 3)
  {
    if (a4)
    {
      v6 = 38;
    }
  }

  else
  {
    if (a4)
    {
      v7 = 35;
    }

    else
    {
      v7 = 3;
    }

    if (v6 == 1)
    {
      v6 = v7;
    }

    else
    {
      v6 = v4;
    }
  }

  v8 = v6;
  v9 = v5 + 32 * v6;
  if (((1 << v6) & 0xFFF00000480) != 0 && !*(v9 + 72))
  {
    v40 = result;
    v41 = a2;
    v42 = a3;
    v43 = a4;
    v44 = AGX::DataBufferAllocator<44ul>::growNoInline(v5 + 24, v6, 0);
    a3 = v42;
    a2 = v41;
    a4 = v43;
    v45 = v44;
    result = v40;
    if ((v45 & 1) == 0)
    {
LABEL_49:
      abort();
    }
  }

  v10 = (a3 + 15) & 0xFFFFFFF0;
  v12 = *(v9 + 64);
  v11 = *(v9 + 72);
  v13 = (v9 + 64);
  v14 = v11 + (v10 | 0xF);
  if (v14 <= v12)
  {
    goto LABEL_21;
  }

  v33 = result;
  v34 = v5 + 24;
  v35 = a2;
  v36 = v8;
  v37 = a4;
  v38 = AGX::DataBufferAllocator<44ul>::growNoInline(v34, v36, 0);
  a2 = v35;
  a4 = v37;
  v39 = v38;
  result = v33;
  if (v39)
  {
    v14 = v13[1] + (v10 | 0xF);
    if (v14 > *v13)
    {
      goto LABEL_49;
    }

LABEL_21:
    v13[2] = v14;
  }

  v15 = *(a2 + 16);
  v16 = *(v15 + 1864);
  v17 = v15 + 64;
  switch(v16)
  {
    case 7:
      v26 = 96;
      if (a4)
      {
        v26 = 1312;
      }

      v27 = v17 + v26;
      v28 = (*(v27 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
      v29 = v28 + *(v27 + 24);
      *(v27 + 8) = v28 + v10;
      *result = v28;
      result[1] = v29;
      if (a4)
      {
        LODWORD(v4) = 41;
      }

      else
      {
        LODWORD(v4) = 3;
      }

      break;
    case 3:
      v22 = 96;
      if (a4)
      {
        v22 = 1216;
      }

      v23 = v17 + v22;
      v24 = (*(v23 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
      v25 = v24 + *(v23 + 24);
      *(v23 + 8) = v24 + v10;
      *result = v24;
      result[1] = v25;
      if (a4)
      {
        LODWORD(v4) = 38;
      }

      else
      {
        LODWORD(v4) = 3;
      }

      break;
    case 1:
      v18 = 96;
      if (a4)
      {
        v18 = 1120;
      }

      v19 = v17 + v18;
      v20 = (*(v19 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
      v21 = v20 + *(v19 + 24);
      *(v19 + 8) = v20 + v10;
      *result = v20;
      result[1] = v21;
      if (a4)
      {
        LODWORD(v4) = 35;
      }

      else
      {
        LODWORD(v4) = 3;
      }

      break;
    default:
      v30 = v17 + 32 * v4;
      v31 = (*(v30 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
      v32 = *(v30 + 24);
      *(v30 + 8) = v31 + v10;
      *result = v31;
      result[1] = v31 + v32;
      break;
  }

  if (((0xFFF00000480uLL >> v4) & 1) != 0 && !*(v17 + 32 * v4 + 8))
  {
    v46 = result;
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v15 + 24, v4);
    result = v46;
  }

  result[2] = *(*(v15 + 48) + (v4 << 6) + 32) + *MEMORY[0x29EDC5638];
  return result;
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyPPD(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v8 = *(a3 + 8);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v39, a1, 8, 0);
  v9 = v39;
  v10 = v40;
  v11 = v41;
  *v39 = 0;
  v39 = v10;
  v40 = v9;
  v41 = 8;
  v42 = v11;
  if (*(a2 + 136))
  {
    if (*(a2 + 144) < 0x101uLL || *(a2 + 40) > 0x10u)
    {
      goto LABEL_17;
    }

    {
      AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
    }

    if ((AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild & 1) != 0 || (*(a2 + 28) & 2) != 0)
    {
      goto LABEL_17;
    }

    {
      AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
    }

    {
      AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
    }

    if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit != 1 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (*(a2 + 28) & 1) != 0))
    {
LABEL_17:
      v22 = (*(a2 + 44) + 31) & 0xFFFFFFE0;
      if (v22 <= 0x20)
      {
        v22 = 32;
      }

      if (v22 >= 0x400)
      {
        v23 = 1024;
      }

      else
      {
        v23 = v22;
      }

      Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 129, 0);
      v25 = *a4;
      v26 = a4[3];
      v27 = *(a1 + 16);
      *(v27 + 26448) = v25;
      v28 = *(v27 + 22488);
      *(v28 + 40) = v25;
      *(v27 + 22544) = v26;
      v29 = *(v27 + 27592);
      *(v27 + 27560) |= 0x20uLL;
      LODWORD(v25) = v29 | 1;
      v30 = *v5;
      v31 = *(v5 + 24);
      *(v27 + 26504) = *v5;
      *(v28 + 96) = v30;
      *(v27 + 22600) = v31;
      *(v27 + 27560) |= 0x1000uLL;
      *(v27 + 27592) = v25;
      v33 = *(a2 + 40);
      v34 = vdupq_n_s64(1uLL);
      v36 = v23;
      v37 = v34;
      *(v27 + 2060) |= 4u;
      v32 = *(v27 + 2336);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v27, Pipeline);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v27, &v36, &v33);
      if (*(v27 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v27, 22, 0, 0);
      }

      if (v32)
      {

        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v27, v32);
      }
    }

    else
    {
      v12 = *(a2 + 40);
      if (v12)
      {
        v13 = 0;
        v14 = (v8 + 132);
        do
        {
          v15 = *(v14 - 10);
          if (v15)
          {
            v16 = *(v14 - 3);
            v17 = *(v14 - 5);
            v18 = *(v14 - 1);
            v19 = *v14;
            v5 = v5 & 0xFFFFFFFFFFFFFF00 | 1;
            v20 = *a4;
            v36 = *a4 + v16;
            v37.i64[0] = v16;
            v21 = a4[3];
            v37.i64[1] = a4[2];
            v38 = v21;
            v33 = v20 + 136;
            v34.i64[0] = 72;
            v34.i64[1] = v37.i64[1];
            v35 = v21;
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeStridedCopy(a1, v17, &v39, v18, v15, v5, v19, &v36, &v33, *(v14 - 7));
            v12 = *(a2 + 40);
          }

          ++v13;
          v14 += 36;
        }

        while (v13 < v12);
      }
    }
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeStridedCopy(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t *a5, unsigned __int8 a6, int a7, uint64_t *a8, uint64_t *a9, int a10)
{
  if (a6)
  {
    if (!a5)
    {
      return;
    }

    v36 = a2;
    v37 = a6;
    if (a6 == 1)
    {
      v39 = 0;
      v40 = 0uLL;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v39, a1, 8, 0);
      v35 = v40.i64[1];
      v38 = v40.i64[0];
      *v39 = a5;
    }

    else
    {
      v38 = *a5;
      v35 = a5[3];
    }

    if (((a5 + 4294967294u) / 0xFFFFFFFF) <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = (a5 + 4294967294u) / 0xFFFFFFFF;
    }
  }

  else
  {
    v37 = 0;
    v38 = *a5;
    v35 = a5[3];
    v36 = a2;
    v16 = 1;
  }

  v39 = 0;
  v40 = 0uLL;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v39, a1, 4, 0);
  v17 = v40.i64[0];
  *v39 = a4;
  v39 = 0;
  v40 = 0uLL;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v39, a1, 4, 0);
  v18 = v40.i64[0];
  *v39 = a7;
  v39 = 0;
  v40 = 0uLL;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v39, a1, 4, 0);
  v19 = v40.i64[0];
  *v39 = a10;
  v20 = *a8;
  v21 = *a9;
  v22 = *a3;
  v23 = *(a1 + 16);
  *(*(v23 + 22488) + 17440) = 0;
  v24 = *(v23 + 168);
  v25 = v24 + 95;
  if ((v24 + 95) <= *(v23 + 160))
  {
    goto LABEL_11;
  }

  v34 = AGX::DataBufferAllocator<44ul>::growNoInline(v23 + 24, 3, 0);
  v24 = *(v23 + 168);
  if (v34)
  {
    v25 = v24 + 95;
    if ((v24 + 95) > *(v23 + 160))
    {
      abort();
    }

LABEL_11:
    *(v23 + 176) = v25;
  }

  v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v26 + *(v23 + 184);
  *(v23 + 168) = v26 + 80;
  *(v23 + 26224) = 0;
  *(v23 + 27560) |= 0x1000uLL;
  *(v23 + 27592) |= 1u;
  v28 = *(v23 + 22488);
  *(v28 + 96) = v27;
  *(v23 + 22600) = *(*(v23 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(v28 + 17564) = 72;
  *(v28 + 17736) = 72;
  *(v28 + 17740) = v27 >> 8;
  *v26 = v20;
  *(v26 + 8) = v21;
  *(v26 + 16) = v36;
  *(v26 + 24) = v22;
  *(v26 + 32) = v38;
  *(v26 + 40) = v18;
  *(v26 + 48) = v19;
  *(v26 + 56) = v17;
  *(v26 + 64) = v16;
  *(v26 + 68) = 0;
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 127, 0);
  if (v37)
  {
    v30 = *(a1 + 16);
    v39 = ((a5 + v16 - 1) / v16);
    v40 = vdupq_n_s64(1uLL);
    v42 = xmmword_29D2F1C70;
    v43 = 1;
    *(v30 + 2060) |= 4u;
    v31 = *(v30 + 2336);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v30, Pipeline);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v30, 0x16u, &v39, &v42);
    if (*(v30 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v30, 22, 0, 0);
    }

    if (v31)
    {

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v30, v31);
    }
  }

  else
  {
    v39 = 0;
    v40 = 0uLL;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v39, a1, 4, 1);
    v32 = v39;
    v33 = v40;
    *v39 = v16;
    v39 = v33.i64[0];
    v40.i64[0] = v32;
    v40.i64[1] = 4;
    v41 = v33.i64[1];
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWithIndirectThreadCountExtended(a1, Pipeline, v38, v35, &v39, 1, 0, 1);
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWithIndirectThreadCountExtended(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, int a7, int a8)
{
  v14 = *(a1 + 16);
  *(v14 + 26408) = a3;
  v15 = *(v14 + 22488);
  *v15 = a3;
  *(v14 + 22504) = a4;
  *(v14 + 27560) |= 1uLL;
  v16 = *(v14 + 27592) | 1;
  v17 = *a5;
  v18 = a5[3];
  *(v14 + 26432) = *a5;
  v15[3] = v17;
  *(v14 + 22528) = v18;
  *(v14 + 27560) |= 8uLL;
  *(v14 + 27592) = v16;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v31, a1, 40, 1);
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v22 = v32 + 6;
  *(v31 + 32) = a7;
  *(v19 + 36) = a8;
  *(v19 + 28) = a6;
  *(v19 + 24) = *a5 != 0;
  v23 = *(a1 + 16);
  *(v23 + 26416) = v22;
  v24 = *(v23 + 22488);
  *(v24 + 8) = v22;
  *(v23 + 22512) = v21;
  *(v23 + 27560) |= 2uLL;
  LODWORD(v22) = *(v23 + 27592) | 1;
  *(v23 + 26424) = v20;
  *(v24 + 16) = v20;
  *(v23 + 22520) = v21;
  v25 = *(v23 + 27560) | 4;
  *(v23 + 27592) = v22;
  *(v23 + 27560) = v25;
  *v19 = xmmword_29D2F2440;
  *(v19 + 16) = 0x100000001;
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 132, 0);
  v27 = *(a1 + 16);
  *(v27 + 2060) |= 4u;
  v28 = *(v27 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v27, Pipeline);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v27, 0x16u, qword_29D2F5330, qword_29D2F5330);
  if (*(v27 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v27, 22, 0, 0);
  }

  if (v28)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v27, v28);
  }

  v29 = *(a1 + 16);
  if (*(v29 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
    *(v29 + 2306) = 0;
    if (*(v29 + 2292) == 1 && !*(v29 + 27624))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v29, 22, (v29 + 28192), (v29 + 28200), (v29 + 28208));
    }
  }

  v30 = *(a1 + 16);
  *(v30 + 2060) |= 4u;

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v30, 22, a2, v20, v21);
}

uint64_t ___ZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE19encodeTopDownBuildsENS_4SpanINS6_12TopDownBuildEEE_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  snprintf(__str, 0x100uLL, "Top-down BVH Builder - GPUVA (%llx) - leaf count: %u", *(a1 + 32), *(a1 + 48));
  return bvhPrintDebugBufferContents(*(a1 + 40), __str);
}

uint64_t AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(int a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 18) - 8 > 0xFFFFFFFD)
  {
    return 0;
  }

  if (a3 < 5)
  {
    {
      v16 = a1;
      v13 = a2;
      a2 = v13;
      v8 = v7;
      a1 = v16;
      if (v8)
      {
        AGX::BVHDescriptor::isMinimizeMemory(void)const::forceMinimizeMemory = 0;
        a1 = v16;
        a2 = v13;
      }
    }

    if ((v4[2856] & 1) != 0 || (*(a2 + 28) & 0x20) != 0)
    {
      {
        v17 = a1;
        v14 = a2;
        a2 = v14;
        v10 = v9;
        a1 = v17;
        if (v10)
        {
          AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
          a1 = v17;
          a2 = v14;
        }
      }

      {
        v18 = a1;
        v15 = a2;
        a2 = v15;
        v12 = v11;
        a1 = v18;
        if (v12)
        {
          AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
          a1 = v18;
          a2 = v15;
        }
      }

      return a1 == 2 && (*(a2 + 15) & 0x41) == 64 && *(a2 + 136) == 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if ((a1 & 0xFFFFFFFD) != 0)
    {
      return 0;
    }

    return ~(2 * *(a2 + 15)) & 2;
  }
}

unint64_t AGX::BVHDescriptor::maxInnerNodeCount(AGX::BVHDescriptor *this)
{
  v1 = *(this + 8);
  LODWORD(v2) = *(this + 8);
  v3 = *(this + 1);
  if (!v3 && *(this + 10) && !*(this + 18) && *(this + 12) == 3)
  {
    v2 = 0x3FFFFFFFLL;
    if ((*(this + 28) & 4) == 0)
    {
      v2 = 0xFFFFFFFLL;
    }

    v8 = *(this + 48) + -1.0;
    if (v8 < 0.0)
    {
      v8 = 0.0;
    }

    v9 = vcvtpd_u64_f64(v8 * v1) + v1;
    if (v2 >= v9)
    {
      LODWORD(v2) = v9;
    }
  }

  if ((*(this + 15) & 2) != 0)
  {
    v4 = *(this + 40);
    v5 = v4 - 1;
    if (v4 <= 1)
    {
      v5 = 1;
    }

    LODWORD(v2) = v5 * v2;
    if (v2 <= 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v2;
    }

    if (v4 > 1)
    {
      v2 *= 1 << *(this + 13);
    }
  }

  else if (v2 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v2;
  }

  if (v3 != 2)
  {
    if (v3 == 1)
    {
      v10 = (v1 + *(this + 12) - 1) / *(this + 12);
      if (v10 < 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        do
        {
          v11 += v10;
          v12 = v10 + 7;
          v10 = (v10 + 7) >> 3;
        }

        while (v12 > 0xF);
      }

      LODWORD(v7) = v10 + v11;
      if (v7 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v7;
      }
    }

    else if (v3)
    {
      v7 = 0;
    }

    else if ((*(this + 15) & 0x400) != 0)
    {
      v40 = (v2 + *(this + 12) - 1) / *(this + 12);
      if (v40 < 2)
      {
        v41 = 0;
      }

      else
      {
        v41 = 0;
        do
        {
          v41 += v40;
          v42 = v40 + 7;
          v40 = (v40 + 7) >> 3;
        }

        while (v42 > 0xF);
      }

      v7 = v40 + v41;
      if (v7 <= 1)
      {
        v7 = 1;
      }
    }

    else if (*(this + 13))
    {
      v6 = (v2 + *(this + 12) - 1) / *(this + 12);
      v7 = (2 * *(this + 14) - 2 + v6 * *(this + 14) - 3) / (2 * *(this + 14) - 2) + v6;
    }

    else
    {
      v43 = *(this + 14);
      v7 = (2 * v43 - 2 + AGX::BVHDescriptor::topDownLeafNodeCapacity(this) * v43 - 3) / (2 * v43 - 2);
    }

    goto LABEL_81;
  }

  v13 = *(this + 41);
  v14 = v1 - 1;
  v15 = (v13 + v1 - 1) / v13;
  v16 = (v15 + 2) / 3;
  if (v15 + 2 < 6)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    v18 = (v15 + 2) / 3;
    do
    {
      v17 += v18;
      v16 = (v18 + 7) >> 3;
      v19 = v18 > 8;
      v18 = v16;
    }

    while (v19);
  }

  v20 = v16 + v17;
  if (v20 <= 1)
  {
    v20 = 1;
  }

  v21 = *(this + 12);
  v22 = (v13 + v21 - 1) / v21;
  if (v22 < 2)
  {
    v23 = 0;
    v24 = v22;
  }

  else
  {
    v23 = 0;
    v24 = v22;
    do
    {
      v23 += v24;
      v25 = v24 + 7;
      v24 = (v24 + 7) >> 3;
    }

    while (v25 > 0xF);
  }

  v26 = v24 + v23;
  if (v26 <= 1)
  {
    v26 = 1;
  }

  v27 = v26 * v15;
  v28 = *(this + 42);
  v29 = (v28 + v14) / v28;
  v30 = (v21 + v28 - 1) / v21;
  if (v30 >= 2)
  {
    v31 = 0;
    v32 = v30;
    do
    {
      v31 += v32;
      v33 = v32 + 7;
      v32 = (v32 + 7) >> 3;
    }

    while (v33 > 0xF);
    v34 = v32 + v31;
    if (v34 <= 1)
    {
      v34 = 1;
    }

    if (v27 <= v34 * v29)
    {
      v35 = 0;
      do
      {
        v35 += v30;
        v36 = v30 + 7;
        v30 = (v30 + 7) >> 3;
      }

      while (v36 > 0xF);
      v37 = v30 + v35;
      goto LABEL_73;
    }

LABEL_62:
    if (v22 < 2)
    {
      v38 = 0;
    }

    else
    {
      v38 = 0;
      do
      {
        v38 += v22;
        v39 = v22 + 7;
        v22 = (v22 + 7) >> 3;
      }

      while (v39 > 0xF);
    }

    v37 = v22 + v38;
    v29 = v15;
    goto LABEL_73;
  }

  if (v27 > v29)
  {
    goto LABEL_62;
  }

  v37 = v30;
LABEL_73:
  if (v37 <= 1)
  {
    v37 = 1;
  }

  v7 = v20 + v15 + v37 * v29;
LABEL_81:
  if (v7 <= 1)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodePrefixSum(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, unsigned int a5)
{
  if (!a5)
  {
    return;
  }

  if (a5 <= 0x1000)
  {
    memset(v36, 0, sizeof(v36));
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeSubPrefixSum(a1, a2, v36, a4, a5);
    return;
  }

  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeSubPrefixSum(a1, a2, a3, a4, a5);
  v10 = (a5 + 4095) >> 12;
  *&v36[0] = *a3 + 4 * v10;
  *(&v36[0] + 1) = 4 * v10;
  v11 = a3[3];
  *&v36[1] = a3[2];
  *(&v36[1] + 1) = v11;
  v34 = 0u;
  v35 = 0u;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodePrefixSum(a1, a3, v36, &v34);
  v12 = a4;
  v13 = a1;
  v14 = *a2;
  v15 = a2[3];
  v16 = *(a1 + 16);
  *(v16 + 26480) = *a2;
  v17 = *(v16 + 22488);
  *(v17 + 72) = v14;
  *(v16 + 22576) = v15;
  *(v16 + 27560) |= 0x200uLL;
  LODWORD(v14) = *(v16 + 27592) | 1;
  v18 = *a3;
  v19 = a3[3];
  *(v16 + 26488) = *a3;
  *(v17 + 80) = v18;
  *(v16 + 22584) = v19;
  *(v16 + 27560) |= 0x400uLL;
  *(v16 + 27592) = v14;
  v20 = *v12;
  if (!*v12)
  {
    *(v17 + 17436) = 0;
    v23 = *(v16 + 168);
    v24 = v23 + 31;
    if ((v23 + 31) > *(v16 + 160))
    {
      v33 = AGX::DataBufferAllocator<44ul>::growNoInline(v16 + 24, 3, 0);
      v23 = *(v16 + 168);
      if (!v33)
      {
        v13 = a1;
        v22 = a5;
        goto LABEL_9;
      }

      v24 = v23 + 31;
      v13 = a1;
      v22 = a5;
      if ((v23 + 31) > *(v16 + 160))
      {
        abort();
      }
    }

    else
    {
      v22 = a5;
    }

    *(v16 + 176) = v24;
LABEL_9:
    v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = v25 + *(v16 + 184);
    *(v16 + 168) = v25 + 4;
    *(v16 + 26216) = 0;
    *(v16 + 27560) |= 0x800uLL;
    *(v16 + 27592) |= 1u;
    v27 = *(v16 + 22488);
    *(v27 + 88) = v26;
    *(v16 + 22592) = *(*(v16 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v27 + 17560) = 4;
    *(v27 + 17728) = 4;
    *(v27 + 17732) = v26 >> 8;
    *v25 = v22;
    goto LABEL_10;
  }

  v21 = v12[3];
  *(v16 + 26496) = v20;
  *(v17 + 88) = v20;
  *(v16 + 22592) = v21;
  *(v16 + 27560) |= 0x800uLL;
  v22 = a5;
LABEL_10:
  v28 = ((((v22 + 3) >> 2) + 1023) & 0x7FFFFC00) - 1024;
  v29 = v13;
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v13, 182, 0);
  v31 = *(v29 + 16);
  *&v36[0] = v28;
  *(v36 + 8) = vdupq_n_s64(1uLL);
  v34 = xmmword_29D2F2430;
  *&v35 = 1;
  *(v31 + 2060) |= 4u;
  v32 = *(v31 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v31, Pipeline);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v31, 0x16u, v36, &v34);
  if (*(v31 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v31, 22, 0, 0);
  }

  if (v32)
  {

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v31, v32);
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyControlPoints(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, unsigned int a7, unsigned int a8)
{
  if (a7 && a8)
  {
    v12 = *(a1 + 16);
    *(v12 + 26448) = a3;
    v13 = *(v12 + 22488);
    *(v13 + 40) = a3;
    *(v12 + 22544) = a4;
    *(v12 + 27560) |= 0x20uLL;
    v14 = *(v12 + 27592) | 1;
    v15 = *a5;
    v16 = a5[3];
    *(v12 + 26496) = *a5;
    *(v13 + 88) = v15;
    *(v12 + 22592) = v16;
    *(v12 + 27560) |= 0x800uLL;
    *(v12 + 27592) = v14;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v28, a1, 24, 0);
    v18 = v28;
    v19 = v29;
    v20 = v30;
    *v28 = *a2;
    v18[2] = a6;
    v18[3] = a7;
    v18[4] = a8;
    v21 = *(a1 + 16);
    *(v21 + 26504) = v19;
    *(*(v21 + 22488) + 96) = v19;
    *(v21 + 22600) = v20;
    *(v21 + 27560) |= 0x1000uLL;
    *(v21 + 27592) |= 1u;
    Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 128, 0);
    v23 = a8;
    v24 = *(a1 + 16);
    v28 = a7;
    v29 = v23;
    v30 = 1;
    v26 = xmmword_29D2F1C70;
    v27 = 1;
    *(v24 + 2060) |= 4u;
    v25 = *(v24 + 2336);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v24, Pipeline);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v24, 0x16u, &v28, &v26);
    if (*(v24 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v24, 22, 0, 0);
    }

    if (v25)
    {

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v24, v25);
    }
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyMotionTransforms(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 18);
  if (v3 & 0xFE) == 6 && (*(a2 + 15))
  {
    v6 = *(a2 + 88);
    if (v3 == 7)
    {
      v7 = *(a2 + 96);
    }

    else
    {
      v8 = *(a2 + 56);
      v29 = 0;
      v30 = 0uLL;
      v9 = a2;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v29, a1, 4, 0);
      a2 = v9;
      v7 = v30.i64[0];
      *v29 = v8;
    }

    v10 = *(a2 + 104);
    v11 = *(a2 + 128);
    v12 = v11 == 1 ? 64 : 48;
    v13 = v11 == 0;
    v14 = *(a2 + 120) == 1;
    v29 = 0;
    v30 = 0uLL;
    v15 = a2;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v29, a1, 32, 0);
    v16 = v29;
    v17 = v30;
    *v29 = v6;
    *(v16 + 8) = v7;
    *(v16 + 16) = v10;
    *(v16 + 20) = v12;
    *(v16 + 24) = v13;
    *(v16 + 25) = v14;
    v18 = *a3;
    v19 = a3[3];
    v20 = *a3 + 136;
    v21 = *(a1 + 16);
    *(v21 + 26448) = *a3;
    v22 = *(v21 + 22488);
    v22[5] = v18;
    *(v21 + 22544) = v19;
    *(v21 + 27560) |= 0x20uLL;
    v23 = *(v21 + 27592) | 1;
    *(v21 + 26496) = v20;
    v22[11] = v20;
    *(v21 + 22592) = v19;
    *(v21 + 27560) |= 0x800uLL;
    *(v21 + 26536) = v17.i64[0];
    v22[16] = v17.i64[0];
    *(v21 + 22632) = v17.i64[1];
    *(v21 + 27560) |= 0x10000uLL;
    *(v21 + 27592) = v23;
    Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 56, 0);
    if (*(v15 + 56))
    {
      v25 = *(a1 + 16);
      v29 = *(v15 + 56);
      v30 = vdupq_n_s64(1uLL);
      v27 = xmmword_29D2F1C70;
      v28 = 1;
      *(v25 + 2060) |= 4u;
      v26 = *(v25 + 2336);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v25, Pipeline);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v25, 0x16u, &v29, &v27);
      if (*(v25 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v25, 22, 0, 0);
      }

      if (v26)
      {

        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v25, v26);
      }
    }
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeSubPrefixSum(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v7 = *a2;
  v8 = a2[3];
  v9 = *(a1 + 16);
  *(v9 + 26480) = *a2;
  v10 = *(v9 + 22488);
  *(v10 + 72) = v7;
  *(v9 + 22576) = v8;
  *(v9 + 27560) |= 0x200uLL;
  v11 = *(v9 + 27592) | 1;
  if (*a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = a2;
  }

  v13 = *v12;
  v14 = v12[3];
  *(v9 + 26488) = v13;
  *(v10 + 80) = v13;
  *(v9 + 22584) = v14;
  *(v9 + 27560) |= 0x400uLL;
  *(v9 + 27592) = v11;
  v15 = *a4;
  if (*a4)
  {
    v16 = a4[3];
    *(v9 + 26496) = v15;
    *(v10 + 88) = v15;
    *(v9 + 22592) = v16;
    *(v9 + 27560) |= 0x800uLL;
    goto LABEL_9;
  }

  *(v10 + 17436) = 0;
  v17 = *(v9 + 168);
  v18 = v17 + 31;
  if ((v17 + 31) > *(v9 + 160))
  {
    v26 = a3;
    v27 = AGX::DataBufferAllocator<44ul>::growNoInline(v9 + 24, 3, 0);
    v17 = *(v9 + 168);
    if (!v27)
    {
      a3 = v26;
      goto LABEL_8;
    }

    v18 = v17 + 31;
    a3 = v26;
    if ((v17 + 31) > *(v9 + 160))
    {
      abort();
    }
  }

  *(v9 + 176) = v18;
LABEL_8:
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v19 + *(v9 + 184);
  *(v9 + 168) = v19 + 4;
  *(v9 + 26216) = 0;
  *(v9 + 27560) |= 0x800uLL;
  *(v9 + 27592) |= 1u;
  v21 = *(v9 + 22488);
  *(v21 + 88) = v20;
  *(v9 + 22592) = *(*(v9 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(v21 + 17560) = 4;
  *(v21 + 17728) = 4;
  *(v21 + 17732) = v20 >> 8;
  *v19 = a5;
LABEL_9:
  if (*a3)
  {
    v22 = 181;
  }

  else
  {
    v22 = 180;
  }

  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v22, 0);
  v24 = *(a1 + 16);
  v30 = (((a5 + 3) >> 2) + 1023) & 0x7FFFFC00;
  v31 = vdupq_n_s64(1uLL);
  v28 = xmmword_29D2F2430;
  v29 = 1;
  *(v24 + 2060) |= 4u;
  v25 = *(v24 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v24, Pipeline);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v24, 0x16u, &v30, &v28);
  if (*(v24 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v24, 22, 0, 0);
  }

  if (v25)
  {

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v24, v25);
  }
}

uint64_t AGX::BVHDescriptor::topDownLeafNodeCapacity(AGX::BVHDescriptor *this)
{
  v1 = *(this + 15);
  v2 = *(this + 8);
  v3 = *(this + 1);
  LODWORD(v4) = *(this + 8);
  if ((v1 & 0x400) != 0)
  {
    if (!v3)
    {
      LODWORD(v4) = *(this + 8);
      if (*(this + 10))
      {
        LODWORD(v4) = *(this + 8);
        if (!*(this + 18))
        {
          LODWORD(v4) = *(this + 8);
          if (*(this + 12) == 3)
          {
            v4 = 0x3FFFFFFFLL;
            if ((*(this + 28) & 4) == 0)
            {
              v4 = 0xFFFFFFFLL;
            }

            v14 = *(this + 48) + -1.0;
            if (v14 < 0.0)
            {
              v14 = 0.0;
            }

            v15 = vcvtpd_u64_f64(v14 * v2) + v2;
            if (v4 >= v15)
            {
              LODWORD(v4) = v15;
            }
          }
        }
      }
    }

    if ((v1 & 2) != 0)
    {
      v9 = *(this + 40);
      if (v9 >= 2)
      {
        LODWORD(v4) = v4 * (v9 - 1);
      }
    }

    if (v4 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v4;
    }

    v7 = *(this + 10);
    if ((v7 + v10 != 0) & __CFADD__(v7, v10))
    {
      return 1;
    }
  }

  else
  {
    if (!v3)
    {
      LODWORD(v4) = *(this + 8);
      if (*(this + 10))
      {
        LODWORD(v4) = *(this + 8);
        if (!*(this + 18))
        {
          LODWORD(v4) = *(this + 8);
          if (*(this + 12) == 3)
          {
            v4 = 0x3FFFFFFFLL;
            if ((*(this + 28) & 4) == 0)
            {
              v4 = 0xFFFFFFFLL;
            }

            v12 = *(this + 48) + -1.0;
            if (v12 < 0.0)
            {
              v12 = 0.0;
            }

            v13 = vcvtpd_u64_f64(v12 * v2) + v2;
            if (v4 >= v13)
            {
              LODWORD(v4) = v13;
            }
          }
        }
      }
    }

    if ((v1 & 2) != 0)
    {
      v5 = *(this + 40);
      if (v5 >= 2)
      {
        LODWORD(v4) = v4 * (v5 - 1);
      }
    }

    if (v4 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4;
    }

    v7 = *(this + 10);
    if ((v7 + v6 != 0) & __CFADD__(v7, v6))
    {
      return 1;
    }
  }

  if (!v3 && *(this + 10) && !*(this + 18) && *(this + 12) == 3)
  {
    v16 = 0x3FFFFFFFLL;
    if ((*(this + 28) & 4) == 0)
    {
      v16 = 0xFFFFFFFLL;
    }

    v17 = *(this + 48) + -1.0;
    if (v17 < 0.0)
    {
      v17 = 0.0;
    }

    v2 += vcvtpd_u64_f64(v17 * v2);
    if (v16 < v2)
    {
      LODWORD(v2) = v16;
    }
  }

  if ((v1 & 2) != 0)
  {
    v11 = *(this + 40);
    if (v11 >= 2)
    {
      LODWORD(v2) = v2 * (v11 - 1);
    }
  }

  if (v2 <= 1)
  {
    LODWORD(v2) = 1;
  }

  return (v7 + v2 - 1) / v7;
}

BOOL AGX::BVHDescriptor::useSpatialSplits(AGX::BVHDescriptor *this)
{
  {
    v9 = this;
    this = v9;
    if (v10)
    {
      AGX::BVHDescriptor::useSpatialSplits(void)const::allowSpatialSplitsInDeterministicMode = 1;
      this = v9;
    }
  }

  {
    v11 = this;
    v13 = v12;
    this = v11;
    if (v13)
    {
      AGX::BVHDescriptor::isDeterministic(void)const::forceDeterministic = 0;
      this = v11;
    }
  }

  if (((v1[2968] & 1) != 0 || (*(this + 28) & 8) != 0) && AGX::BVHDescriptor::useSpatialSplits(void)const::allowSpatialSplitsInDeterministicMode != 1)
  {
    return 0;
  }

  {
    v14 = this;
    this = v14;
    if (v15)
    {
      AGX::BVHDescriptor::useSpatialSplits(void)const::disableSpatialSplits = 0;
      this = v14;
    }
  }

  {
    v16 = this;
    this = v16;
    if (v17)
    {
      AGX::BVHDescriptor::useSpatialSplits(void)const::enableFastBuildSpatialSplits = 0;
      this = v16;
    }
  }

  {
    v18 = this;
    this = v18;
    if (v19)
    {
      AGX::BVHDescriptor::useSpatialSplits(void)const::enableByDefault = 0;
      this = v18;
    }
  }

  if (*(this + 1) || (AGX::BVHDescriptor::useSpatialSplits(void)const::disableSpatialSplits & 1) != 0 || (*(this + 15) & 0x11) != 0x10)
  {
    return 0;
  }

  {
    v20 = this;
    v22 = v21;
    this = v20;
    if (v22)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
      this = v20;
    }
  }

  {
    v29 = this;
    v23 = v2;
    v2 = v23;
    v25 = v24;
    this = v29;
    if (v25)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
      v2 = v23;
      this = v29;
    }
  }

  if (v2[2792] & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (*(this + 28)))
  {
    return 0;
  }

  {
    v26 = this;
    v28 = v27;
    this = v26;
    if (v28)
    {
      AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
      this = v26;
    }
  }

  if (((v3[2824] & 1) != 0 || (*(this + 28) & 2) != 0) && AGX::BVHDescriptor::useSpatialSplits(void)const::enableFastBuildSpatialSplits != 1)
  {
    return 0;
  }

  if (!*(this + 10))
  {
    if ((AGX::BVHDescriptor::useSpatialSplits(void)const::enableByDefault & 1) == 0)
    {
      AGX::BVHDescriptor::isFastIntersection(this);
    }

    return 0;
  }

  v4 = *(this + 18);
  if (AGX::BVHDescriptor::useSpatialSplits(void)const::enableByDefault)
  {
    if (!*(this + 18))
    {
      return *(this + 12) == 3;
    }

    return 0;
  }

  v7 = this;
  isFastIntersection = AGX::BVHDescriptor::isFastIntersection(this);
  v5 = 0;
  if (isFastIntersection)
  {
    this = v7;
    if (!v4)
    {
      return *(this + 12) == 3;
    }
  }

  return v5;
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::{lambda(unsigned int)#1}::operator()(uint64_t a1)
{
  if (**a1)
  {
    v2 = 0;
    v3 = *(a1 + 16);
    do
    {
      v9 = *(v3 + 16);
      if (*(v9 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(v3 + 16), 22, 0, 0);
        *(v9 + 2306) = 0;
        if (*(v9 + 2292) == 1 && !*(v9 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v9, 22, (v9 + 28192), (v9 + 28200), (v9 + 28208));
        }
      }

      if ((*(*(a1 + 24) + 45) & 4) != 0)
      {
        v10 = *(a1 + 40);
        v11 = **(a1 + 48);
        v12 = v10 + 1;
        v13 = **v10 + *v10[1];
        v14 = v12[1][2];
        *(v14 + 2060) |= 4u;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v14, 22, v11, (v13 + 48), 0);
      }

      v15 = *(a1 + 40);
      v16 = **(a1 + 56);
      v17 = v15 + 1;
      v18 = **v15;
      v19 = *v15[1];
      v20 = v17[1][2];
      *(v20 + 2060) |= 4u;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v20, 22, v16, (v19 + v18), 0);
      if ((*(*(a1 + 24) + 45) & 4) != 0)
      {
        v21 = *(v3 + 16);
        if (*(v21 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(v3 + 16), 22, 0, 0);
          *(v21 + 2306) = 0;
          if (*(v21 + 2292) == 1 && !*(v21 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v21, 22, (v21 + 28192), (v21 + 28200), (v21 + 28208));
          }
        }

        v22 = *(a1 + 40);
        v23 = **(a1 + 64);
        v24 = v22 + 1;
        v25 = **v22 + *v22[1];
        v26 = v24[1][2];
        *(v26 + 2060) |= 4u;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v26, 22, v23, (v25 + 72), 0);
        if ((*(*(a1 + 24) + 46) & 0xC) != 0)
        {
          v27 = *(v3 + 16);
          if (*(v27 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(v3 + 16), 22, 0, 0);
            *(v27 + 2306) = 0;
            if (*(v27 + 2292) == 1 && !*(v27 + 27624))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v27, 22, (v27 + 28192), (v27 + 28200), (v27 + 28208));
            }
          }

          v28 = *(a1 + 40);
          v29 = **(a1 + 72);
          v30 = v28 + 1;
          v31 = **v28 + *v28[1];
          v32 = v30[1][2];
          *(v32 + 2060) |= 4u;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v32, 22, v29, (v31 + 96), 0);
        }

        if (**(a1 + 80) == 1 && (*(*(a1 + 24) + 45) & 0x40) == 0)
        {
          v33 = *(v3 + 16);
          if (*(v33 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(v3 + 16), 22, 0, 0);
            *(v33 + 2306) = 0;
            if (*(v33 + 2292) == 1 && !*(v33 + 27624))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v33, 22, (v33 + 28192), (v33 + 28200), (v33 + 28208));
            }
          }

          v34 = *(a1 + 40);
          v35 = **(a1 + 88);
          v36 = v34 + 1;
          v37 = **v34 + *v34[1];
          v38 = v36[1][2];
          *(v38 + 2060) |= 4u;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v38, 22, v35, (v37 + 96), 0);
        }

        v39 = *(v3 + 16);
        if (*(v39 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(v3 + 16), 22, 0, 0);
          *(v39 + 2306) = 0;
          if (*(v39 + 2292) == 1 && !*(v39 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v39, 22, (v39 + 28192), (v39 + 28200), (v39 + 28208));
          }
        }

        v40 = *(a1 + 40);
        v41 = **(a1 + 96);
        v42 = v40 + 1;
        v43 = **v40 + *v40[1];
        v44 = v42[1][2];
        *(v44 + 2060) |= 4u;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v44, 22, v41, (v43 + 72), 0);
        v45 = *(a1 + 24);
        if ((*(v45 + 46) & 0xC) != 0 || **(a1 + 80) == 1 && (*(v45 + 45) & 0x40) == 0)
        {
          v46 = *(v3 + 16);
          if (*(v46 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(v3 + 16), 22, 0, 0);
            *(v46 + 2306) = 0;
            if (*(v46 + 2292) == 1 && !*(v46 + 27624))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v46, 22, (v46 + 28192), (v46 + 28200), (v46 + 28208));
            }
          }

          v47 = *(a1 + 40);
          v48 = **(a1 + 104);
          v49 = v47 + 1;
          v50 = **v47 + *v47[1];
          v51 = v49[1][2];
          *(v51 + 2060) |= 4u;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v51, 22, v48, (v50 + 72), 0);
        }
      }

      v52 = *(v3 + 16);
      if (*(v52 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(v3 + 16), 22, 0, 0);
        *(v52 + 2306) = 0;
        if (*(v52 + 2292) == 1 && !*(v52 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v52, 22, (v52 + 28192), (v52 + 28200), (v52 + 28208));
        }
      }

      v4 = *(a1 + 40);
      v5 = **(a1 + 112);
      v6 = v4 + 1;
      v7 = **v4 + *v4[1];
      v8 = v6[1][2];
      *(v8 + 2060) |= 4u;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v8, 22, v5, (v7 + 24), 0);
      ++v2;
    }

    while (v2 < **a1);
  }
}