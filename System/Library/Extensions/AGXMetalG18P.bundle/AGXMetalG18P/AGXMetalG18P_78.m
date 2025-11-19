void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(uint64_t a1, void *a2, unint64_t a3, unsigned int a4)
{
  v5 = a3;
  v125[1] = *MEMORY[0x29EDCA608];
  {
    {
    }

    {
    }

    if (shouldDumpOrVerifyBVHs(void)::once != -1)
    {
      dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify = 0;
    v5 = a3;
  }

  if (*(a1 + 44) < 2u)
  {
    Pipeline = 0;
  }

  else
  {
    Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 75, 0);
  }

  v105 = a4;
  if (a4 == 4)
  {
    v120 = 0;
    v121 = 0;
    v122 = 0;
  }

  else
  {
    v123 = 0;
    v124 = 0;
    v125[0] = 0;
    v120 = 0;
    v121 = 0;
    v122 = 0;
    if (v5 > 1)
    {
      v7 = &v121;
      v8 = &v122;
      v120 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 72, 0);
      v9 = 1;
      v10 = 74;
      v11 = 73;
      goto LABEL_10;
    }
  }

  v7 = &v124;
  v8 = v125;
  v9 = 0;
  v123 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 69, 0);
  v10 = 71;
  v11 = 70;
LABEL_10:
  *v7 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v11, 0);
  *v8 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v10, 0);
  v108 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 77, 0);
  v107 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 76, 0);
  v109 = v9;
  if (!v9)
  {
    if (!v5)
    {
      return;
    }

    v104 = 0;
    VirtualSubstream = 0;
    goto LABEL_22;
  }

  VirtualSubstream = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v119, a1, 8 * v5, 1);
  v104 = *v119;
  if (!a3)
  {
    v15 = 1;
    goto LABEL_106;
  }

  v13 = *&v119[8];
  if (a3 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3 & 0xFFFFFFFFFFFFFFFELL;
    v16 = (*&v119[8] + 8);
    v17 = a2;
    v18 = a3 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v19 = v17[50];
      *(v16 - 1) = *v17;
      *v16 = v19;
      v16 += 2;
      v17 += 100;
      v18 -= 2;
    }

    while (v18);
    if (a3 == v14)
    {
      goto LABEL_22;
    }
  }

  v20 = a3 - v14;
  v21 = (v13 + 8 * v14);
  v22 = &a2[50 * v14];
  do
  {
    *v21++ = *v22;
    v22 += 50;
    --v20;
  }

  while (v20);
LABEL_22:
  v23 = 0;
  do
  {
    while (1)
    {
      v24 = &a2[50 * v23];
      v112 = v24[37];
      v25 = v24[1];
      v26 = *(v24 + 20);
      *v119 = *(v24 + 19);
      *&v119[16] = v26;
      if (*(v24 + 34))
      {
        v27 = *(v24 + 114) == 0;
      }

      else
      {
        v27 = 0;
      }

      if (v27)
      {
        v28 = *(v24 + 113) == 2;
        v29 = v24[42];
        if (!v23)
        {
          goto LABEL_32;
        }

LABEL_31:
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
        goto LABEL_32;
      }

      v28 = 0;
      v29 = v24[42];
      if (v23)
      {
        goto LABEL_31;
      }

LABEL_32:
      if (!v28)
      {
        v31 = 0;
        if (v109)
        {
          goto LABEL_23;
        }

        goto LABEL_49;
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify == 1)
      {
        v114 = 0uLL;
        v115 = 0;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v114, a1, 16, 0);
        v30 = v114;
        *v114.i64[0] = v29;
        *(v30.i64[0] + 8) = 0;
        *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = v30.i64[1];
        v31 = 1;
      }

      else
      {
        v31 = 0;
      }

      {
        AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
      }

      {
        AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
      }

      v32 = (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || *(v24 + 124) & 1);
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeTrianglePairingForBvh(a1, (v24 + 12), *&v119[8], v32, (v24 + 4));
      v33 = *(a1 + 16);
      if (*(v33 + 2292) != 1)
      {
        break;
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
      *(v33 + 2306) = 0;
      if (*(v33 + 2292) != 1 || *(v33 + 4976))
      {
        break;
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v33, 22, (v33 + 5544), (v33 + 5552), (v33 + 5560));
      if (v109)
      {
        goto LABEL_23;
      }

LABEL_49:
      v34 = *(&v123 + *(v25 + 76));
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify)
      {
        v114 = 0uLL;
        v115 = 0;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v114, a1, 16, 0);
        v36 = v114.i64[1];
        v35 = v114.i64[0];
        *v114.i64[0] = v29;
        *(v35 + 8) = v31;
        v37 = *(a1 + 32);
        v38 = *(v37 + 24);
        v39 = *(v37 + 4);
        *(v38 + v39 + 32) = v36;
        ++v31;
      }

      else
      {
        v37 = *(a1 + 32);
        v38 = *(v37 + 24);
        v39 = *(v37 + 4);
      }

      *(v38 + v39 + 56) = *v24;
      v114 = vdupq_n_s64(1uLL);
      v115 = 1;
      v117 = xmmword_29D2F23D0;
      v118 = 1;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), v37, v34, v114.i8, &v117);
      v40 = *(v25 + 672);
      if (*(v25 + 165) == 1)
      {
        v41 = *(a1 + 16);
        *(*(v41 + 4544) + 2036) = *(v25 + 50);
        if (*(v41 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(v41, 22, 0, 0, 0);
          *(v41 + 2306) = 0;
          if (*(v41 + 2292) == 1 && !*(v41 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v41, 22, (v41 + 5544), (v41 + 5552), (v41 + 5560));
          }
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify)
        {
          v114 = 0uLL;
          v115 = 0;
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v114, a1, 16, 0);
          v43 = v114.i64[1];
          v42 = v114.i64[0];
          *v114.i64[0] = v29;
          *(v42 + 8) = v31;
          v44 = *(a1 + 32);
          *(*(v44 + 24) + *(v44 + 4) + 32) = v43;
          ++v31;
        }

        else
        {
          v44 = *(a1 + 32);
        }

        v49 = v24[49];
        v50 = *(a1 + 16);
        *(v50 + 2060) |= 4u;
        v51 = *(v50 + 4536);
        *(v50 + 4536) = v44;
        v52 = v50;
        v53 = v108;
LABEL_74:
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v52, 22, v53, v40, v49);
        if (v51)
        {
          *(v50 + 4536) = v51;
        }

        goto LABEL_76;
      }

      if ((*(v25 + 152) & 1) != 0 && (*(v24 + 114) == 3 || !*(v24 + 114)))
      {
        v45 = *(a1 + 16);
        if (*(v45 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v45 + 2306) = 0;
          if (*(v45 + 2292) == 1 && !*(v45 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v45, 22, (v45 + 5544), (v45 + 5552), (v45 + 5560));
          }
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify)
        {
          v114 = 0uLL;
          v115 = 0;
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v114, a1, 16, 0);
          v47 = v114.i64[1];
          v46 = v114.i64[0];
          *v114.i64[0] = v29;
          *(v46 + 8) = v31;
          v48 = *(a1 + 32);
          *(*(v48 + 24) + *(v48 + 4) + 32) = v47;
          ++v31;
        }

        else
        {
          v48 = *(a1 + 32);
        }

        v49 = v24[49];
        v50 = *(a1 + 16);
        *(v50 + 2060) |= 4u;
        v51 = *(v50 + 4536);
        *(v50 + 4536) = v48;
        v52 = v50;
        v53 = Pipeline;
        goto LABEL_74;
      }

LABEL_76:
      if (*(v25 + 164) == 1)
      {
        v54 = *(a1 + 16);
        if (*(v54 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v54 + 2306) = 0;
          if (*(v54 + 2292) == 1 && !*(v54 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v54, 22, (v54 + 5544), (v54 + 5552), (v54 + 5560));
          }
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify)
        {
          v114 = 0uLL;
          v115 = 0;
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v114, a1, 16, 0);
          v56 = v114.i64[1];
          v55 = v114.i64[0];
          *v114.i64[0] = v29;
          *(v55 + 8) = v31;
          v57 = *(a1 + 32);
          *(*(v57 + 24) + *(v57 + 4) + 32) = v56;
          ++v31;
        }

        else
        {
          v57 = *(a1 + 32);
        }

        v58 = v24[49];
        v59 = *(a1 + 16);
        *(v59 + 2060) |= 4u;
        v60 = *(v59 + 4536);
        *(v59 + 4536) = v57;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v59, 22, v107, v40 + 24, v58);
        if (v60)
        {
          *(v59 + 4536) = v60;
        }
      }

      if (*(v24 + 114) - 8 <= 0xFFFFFFFD && (*(v25 + 159) & 1) == 0)
      {
        if (v24[29])
        {
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify == 1)
          {
            v114 = 0uLL;
            v115 = 0;
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v114, a1, 16, 0);
            v61 = v114;
            *v114.i64[0] = v29;
            *(v61.i64[0] + 8) = v31;
            *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = v61.i64[1];
          }

          v62 = *(a1 + 16);
          if (*(v62 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
            *(v62 + 2306) = 0;
            if (*(v62 + 2292) == 1 && !*(v62 + 4976))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v62, 22, (v62 + 5544), (v62 + 5552), (v62 + 5560));
            }
          }
        }

        v63 = [v112 buffer];
        v64 = [v112 bufferOffset];
        v65 = [v63 gpuAddress];
        v66 = [v63 length];
        v114.i64[0] = v65 + v64;
        v114.i64[1] = v64;
        v115 = v66;
        v116 = 0;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyPPD(a1, (v24 + 12), v119, &v114);
      }

      {
        {
        }
      }

      if (++v23 == a3)
      {
        return;
      }
    }

    if ((v109 & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_23:
    ++v23;
  }

  while (v23 != a3);
  v15 = 0;
LABEL_106:
  v67 = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
  if (VirtualSubstream < v67)
  {
    do
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::waitForVirtualSubstream(*(a1 + 16), VirtualSubstream++);
    }

    while (v67 != VirtualSubstream);
  }

  v113 = v67;
  memset(v119, 0, 24);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v119, a1, 16, 0);
  v68 = *v119;
  **v119 = v104;
  *(v68 + 8) = a3;
  v69 = *(a1 + 32);
  *(*(v69 + 24) + *(v69 + 4) + 56) = *(&v68 + 1);
  v70 = *(&v120 + v105);
  *v119 = a3;
  *&v119[8] = vdupq_n_s64(1uLL);
  v114 = xmmword_29D2F23D0;
  v115 = 1;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), v69, v70, v119, v114.i8);
  v71 = a3;
  if ((v15 & 1) == 0)
  {
    for (i = a2 + 29; ; i += 50)
    {
      v73 = i[8];
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::waitForVirtualSubstream(*(a1 + 16), v113);
      v74 = *(a1 + 32);
      *(*(v74 + 24) + *(v74 + 4) + 56) = *(i - 29);
      v75 = 1;
      if (*(i - 24) && !*(i - 118))
      {
        if (*(i - 119) == 2)
        {
          v75 = 2;
        }

        else
        {
          v75 = 1;
        }
      }

      v76 = i[13];
      v77 = v75;
      v78 = *(i - 28);
      v79 = *(v78 + 672);
      if (*(v78 + 165) == 1)
      {
        break;
      }

      if ((*(v78 + 152) & 1) != 0 && (*(i - 118) == 3 || !*(i - 118)))
      {
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify == 1)
        {
          memset(v119, 0, 24);
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v119, a1, 16, 0);
          v85 = *&v119[8];
          v84 = *v119;
          **v119 = v76;
          *(v84 + 8) = v77;
          v74 = *(a1 + 32);
          *(*(v74 + 24) + *(v74 + 4) + 32) = v85;
          v77 = (v77 + 1);
        }

        v86 = i[20];
        v87 = *(a1 + 16);
        *(v87 + 2060) |= 4u;
        v88 = *(v87 + 4536);
        *(v87 + 4536) = v74;
        v89 = v87;
        v90 = Pipeline;
        goto LABEL_131;
      }

LABEL_133:
      if (*(v78 + 164) == 1)
      {
        v91 = *(a1 + 16);
        if (*(v91 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v91 + 2306) = 0;
          if (*(v91 + 2292) == 1 && !*(v91 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v91, 22, (v91 + 5544), (v91 + 5552), (v91 + 5560));
          }
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify)
        {
          memset(v119, 0, 24);
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v119, a1, 16, 0);
          v93 = *&v119[8];
          v92 = *v119;
          **v119 = v76;
          *(v92 + 8) = v77;
          v94 = *(a1 + 32);
          *(*(v94 + 24) + *(v94 + 4) + 32) = v93;
          ++v77;
        }

        else
        {
          v94 = *(a1 + 32);
        }

        v95 = i[20];
        v96 = *(a1 + 16);
        *(v96 + 2060) |= 4u;
        v97 = *(v96 + 4536);
        *(v96 + 4536) = v94;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v96, 22, v107, v79 + 24, v95);
        if (v97)
        {
          *(v96 + 4536) = v97;
        }
      }

      if (*(i - 118) - 8 <= 0xFFFFFFFD && (*(v78 + 159) & 1) == 0)
      {
        if (*i)
        {
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify == 1)
          {
            memset(v119, 0, 24);
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v119, a1, 16, 0);
            v98 = *v119;
            **v119 = v76;
            *(v98 + 8) = v77;
            *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v98 + 1);
          }

          v99 = *(a1 + 16);
          if (*(v99 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
            *(v99 + 2306) = 0;
            if (*(v99 + 2292) == 1 && !*(v99 + 4976))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v99, 22, (v99 + 5544), (v99 + 5552), (v99 + 5560));
            }
          }
        }

        v100 = [v73 buffer];
        v101 = [v73 bufferOffset];
        v102 = [v100 gpuAddress];
        v103 = [v100 length];
        *v119 = v102 + v101;
        *&v119[8] = v101;
        *&v119[16] = v103;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyPPD(a1, (i - 17), (i + 9), v119);
      }

      {
      }

      if (!--v71)
      {
        return;
      }
    }

    v80 = *(a1 + 16);
    *(*(v80 + 4544) + 2036) = *(v78 + 50);
    if (*(v80 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(v80, 22, 0, 0, 0);
      *(v80 + 2306) = 0;
      if (*(v80 + 2292) == 1 && !*(v80 + 4976))
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v80, 22, (v80 + 5544), (v80 + 5552), (v80 + 5560));
      }
    }

    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SmallBuild>,AGX::SmallBuildPipelineConfig)::verify)
    {
      memset(v119, 0, 24);
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v119, a1, 16, 0);
      v82 = *&v119[8];
      v81 = *v119;
      **v119 = v76;
      *(v81 + 8) = v77;
      v83 = *(a1 + 32);
      *(*(v83 + 24) + *(v83 + 4) + 32) = v82;
      v77 = (v77 + 1);
    }

    else
    {
      v83 = *(a1 + 32);
    }

    v86 = i[20];
    v87 = *(a1 + 16);
    *(v87 + 2060) |= 4u;
    v88 = *(v87 + 4536);
    *(v87 + 4536) = v83;
    v89 = v87;
    v90 = v108;
LABEL_131:
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v89, 22, v90, v79, v86);
    if (v88)
    {
      *(v87 + 4536) = v88;
    }

    goto LABEL_133;
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v195[3] = *MEMORY[0x29EDCA608];
  {
    {
    }

    {
    }

    if (shouldDumpOrVerifyBVHs(void)::once != -1)
    {
      dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify = 0;
  }

  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 78, 0);
  v171 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 79, 0);
  v180 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 80, 0);
  v188 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 81, 0);
  v187 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 82, 0);
  v186 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 83, 0);
  v175 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 84, 0);
  v169 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 85, 0);
  v170 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 86, 0);
  v168 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 94, 0);
  v174 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 95, 0);
  v172 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 96, 0);
  v173 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 93, 0);
  v177 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 92, 0);
  v181 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 88, 0);
  v182 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 87, 0);
  v179 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 89, 0);
  v178 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 91, 0);
  v176 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 90, 0);
  v195[0] = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 69, 0);
  v195[1] = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 70, 0);
  v5 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 71, 0);
  v6 = 0;
  v195[2] = v5;
  if (*(a1 + 44) >= 2u)
  {
    v6 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 75, 0);
  }

  v165 = v6;
  v167 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 77, 0);
  v166 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 76, 0);
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::earlyOutStage = 9;
  }

  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      v12 = a2 + 400 * i;
      v13 = *(v12 + 8);
      v189 = *(v13 + 672);
      if (*(v12 + 136))
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

        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeTrianglePairingForBvh(a1, v12 + 96, *(v12 + 312), v15, v12 + 32);
        v16 = *(a1 + 16);
        if (*(v16 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v16 + 2306) = 0;
          if (*(v16 + 2292) == 1 && !*(v16 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v16, 22, (v16 + 5544), (v16 + 5552), (v16 + 5560));
          }
        }
      }

      v185 = v13;
      if (!AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::earlyOutStage)
      {
        continue;
      }

      v17 = *(a1 + 32);
      *(*(v17 + 24) + *(v17 + 4) + 56) = *v12;
      v190 = *(v12 + 336);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify == 1)
      {
        memset(v191, 0, sizeof(v191));
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
        v18 = *v191;
        **v191 = v190;
        *(v18 + 8) = 0;
        v17 = *(a1 + 32);
        *(*(v17 + 24) + *(v17 + 4) + 32) = *(&v18 + 1);
        v19 = 1;
      }

      else
      {
        v19 = 0;
      }

      v20 = *(v12 + 111) & 0x180;
      if (v20 == 128)
      {
        v21 = *(v12 + 128) + 1023;
        if (v21 >= 0x1000)
        {
          v22 = v21 >> 10;
        }

        else
        {
          v22 = 4;
        }
      }

      else
      {
        v22 = 4;
      }

      *v191 = v22;
      *&v191[8] = vdupq_n_s64(1uLL);
      v193 = xmmword_29D2F1C70;
      v194 = 1;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), v17, Pipeline, v191, &v193);
      v23 = *(a1 + 16);
      if (*(v23 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
        *(v23 + 2306) = 0;
        if (*(v23 + 2292) == 1 && !*(v23 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v23, 22, (v23 + 5544), (v23 + 5552), (v23 + 5560));
        }
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::earlyOutStage == 1)
      {
        continue;
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
      {
        memset(v191, 0, sizeof(v191));
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
        v24 = *v191;
        **v191 = v190;
        *(v24 + 8) = v19;
        v25 = *(a1 + 32);
        *(*(v25 + 24) + *(v25 + 4) + 32) = *(&v24 + 1);
        ++v19;
      }

      else
      {
        v25 = *(a1 + 32);
      }

      *v191 = (*(v12 + 128) + 255) & 0xFFFFFF00;
      *&v191[8] = vdupq_n_s64(1uLL);
      v193 = xmmword_29D2F23C0;
      v194 = 1;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), v25, v180, v191, &v193);
      v26 = *(a1 + 16);
      if (*(v26 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
        *(v26 + 2306) = 0;
        if (*(v26 + 2292) == 1 && !*(v26 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v26, 22, (v26 + 5544), (v26 + 5552), (v26 + 5560));
        }
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::earlyOutStage == 2)
      {
        continue;
      }

      if (v20 == 128)
      {
        v27 = *(v13 + 65);
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
        {
          memset(v191, 0, sizeof(v191));
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
          v28 = *v191;
          **v191 = v190;
          *(v28 + 8) = v19;
          v29 = *(a1 + 32);
          *(*(v29 + 24) + *(v29 + 4) + 32) = *(&v28 + 1);
          ++v19;
        }

        else
        {
          v29 = *(a1 + 32);
        }

        *v191 = (*(v12 + 128) + 1023) & 0xFFFFFC00;
        *&v191[8] = vdupq_n_s64(1uLL);
        v193 = xmmword_29D2F2430;
        v194 = 1;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), v29, v177, v191, &v193);
        v46 = *(a1 + 16);
        if (*(v46 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v46 + 2306) = 0;
          if (*(v46 + 2292) == 1 && !*(v46 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v46, 22, (v46 + 5544), (v46 + 5552), (v46 + 5560));
          }
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::earlyOutStage == 3)
        {
          continue;
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
        {
          memset(v191, 0, sizeof(v191));
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
          v48 = *&v191[8];
          v47 = *v191;
          **v191 = v190;
          *(v47 + 8) = v19;
          v49 = *(a1 + 32);
          *(*(v49 + 24) + *(v49 + 4) + 32) = v48;
          ++v19;
        }

        else
        {
          v49 = *(a1 + 32);
        }

        v56 = *(v12 + 392);
        v57 = *(a1 + 16);
        *(v57 + 2060) |= 4u;
        v58 = *(v57 + 4536);
        *(v57 + 4536) = v49;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v57, 22, v173, v189 + 48, v56);
        if (v58)
        {
          *(v57 + 4536) = v58;
        }

        v59 = *(a1 + 16);
        if (*(v59 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v59 + 2306) = 0;
          if (*(v59 + 2292) == 1 && !*(v59 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v59, 22, (v59 + 5544), (v59 + 5552), (v59 + 5560));
          }
        }

        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::batchEarlyOut = -1;
        }

        if (v27)
        {
          v60 = 0;
          for (j = 1 - v27; j != 1; ++j)
          {
            if (v60)
            {
              if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
              {
                memset(v191, 0, sizeof(v191));
                AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
                v63 = *&v191[8];
                v62 = *v191;
                **v191 = v190;
                *(v62 + 8) = v19;
                v64 = *(a1 + 32);
                *(*(v64 + 24) + *(v64 + 4) + 32) = v63;
                v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
              }

              else
              {
                v64 = *(a1 + 32);
              }

              v65 = *(v12 + 392);
              v66 = *(a1 + 16);
              *(v66 + 2060) |= 4u;
              v67 = *(v66 + 4536);
              *(v66 + 4536) = v64;
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v66, 22, v181, v189 + 96, v65);
              if (v67)
              {
                *(v66 + 4536) = v67;
              }

              v68 = *(a1 + 16);
              if (*(v68 + 2292) == 1)
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
                *(v68 + 2306) = 0;
                if (*(v68 + 2292) == 1 && !*(v68 + 4976))
                {
                  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v68, 22, (v68 + 5544), (v68 + 5552), (v68 + 5560));
                }
              }

              if (!(j | AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::batchEarlyOut))
              {
                goto LABEL_107;
              }
            }

            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
            {
              memset(v191, 0, sizeof(v191));
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
              v70 = *&v191[8];
              v69 = *v191;
              **v191 = v190;
              *(v69 + 8) = v19;
              v71 = *(a1 + 32);
              *(*(v71 + 24) + *(v71 + 4) + 32) = v70;
              v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
            }

            else
            {
              v71 = *(a1 + 32);
            }

            v72 = *(v12 + 392);
            v73 = *(a1 + 16);
            *(v73 + 2060) |= 4u;
            v74 = *(v73 + 4536);
            *(v73 + 4536) = v71;
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v73, 22, v182, v189 + 72, v72);
            if (v74)
            {
              *(v73 + 4536) = v74;
            }

            v75 = *(a1 + 16);
            if (*(v75 + 2292) == 1 && (AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0), *(v75 + 2306) = 0, *(v75 + 2292) == 1) && !*(v75 + 4976))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v75, 22, (v75 + 5544), (v75 + 5552), (v75 + 5560));
              if (j)
              {
                goto LABEL_129;
              }
            }

            else if (j)
            {
              goto LABEL_129;
            }

            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::batchEarlyOut == 1)
            {
              goto LABEL_107;
            }

LABEL_129:
            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
            {
              memset(v191, 0, sizeof(v191));
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
              v77 = *&v191[8];
              v76 = *v191;
              **v191 = v190;
              *(v76 + 8) = v19;
              v78 = *(a1 + 32);
              *(*(v78 + 24) + *(v78 + 4) + 32) = v77;
              v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
            }

            else
            {
              v78 = *(a1 + 32);
            }

            v79 = *(v12 + 392);
            v80 = *(a1 + 16);
            *(v80 + 2060) |= 4u;
            v81 = *(v80 + 4536);
            *(v80 + 4536) = v78;
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v80, 22, v179, v189 + 120, v79);
            if (v81)
            {
              *(v80 + 4536) = v81;
            }

            v82 = *(a1 + 16);
            if (*(v82 + 2292) == 1 && (AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0), *(v82 + 2306) = 0, *(v82 + 2292) == 1) && !*(v82 + 4976))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v82, 22, (v82 + 5544), (v82 + 5552), (v82 + 5560));
              if (!j)
              {
LABEL_138:
                if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::batchEarlyOut == 2)
                {
                  goto LABEL_107;
                }
              }
            }

            else if (!j)
            {
              goto LABEL_138;
            }

            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
            {
              memset(v191, 0, sizeof(v191));
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
              v84 = *&v191[8];
              v83 = *v191;
              **v191 = v190;
              *(v83 + 8) = v19;
              v85 = *(a1 + 32);
              *(*(v85 + 24) + *(v85 + 4) + 32) = v84;
              v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
            }

            else
            {
              v85 = *(a1 + 32);
            }

            v86 = *(v12 + 392);
            v87 = *(a1 + 16);
            *(v87 + 2060) |= 4u;
            v88 = *(v87 + 4536);
            *(v87 + 4536) = v85;
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v87, 22, v178, v189 + 144, v86);
            if (v88)
            {
              *(v87 + 4536) = v88;
            }

            v89 = *(a1 + 16);
            if (*(v89 + 2292) == 1 && (AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0), *(v89 + 2306) = 0, *(v89 + 2292) == 1) && !*(v89 + 4976))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v89, 22, (v89 + 5544), (v89 + 5552), (v89 + 5560));
              if (j)
              {
LABEL_149:
                if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
                {
                  memset(v191, 0, sizeof(v191));
                  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
                  v91 = *&v191[8];
                  v90 = *v191;
                  **v191 = v190;
                  *(v90 + 8) = v19;
                  v92 = *(a1 + 32);
                  *(*(v92 + 24) + *(v92 + 4) + 32) = v91;
                  v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
                }

                else
                {
                  v92 = *(a1 + 32);
                }

                v93 = *(v12 + 392);
                v94 = *(a1 + 16);
                *(v94 + 2060) |= 4u;
                v95 = *(v94 + 4536);
                *(v94 + 4536) = v92;
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v94, 22, v176, v189 + 168, v93);
                if (v95)
                {
                  *(v94 + 4536) = v95;
                }

                v96 = *(a1 + 16);
                if (*(v96 + 2292) == 1)
                {
                  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
                  *(v96 + 2306) = 0;
                  if (*(v96 + 2292) == 1 && !*(v96 + 4976))
                  {
                    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v96, 22, (v96 + 5544), (v96 + 5552), (v96 + 5560));
                  }
                }

                goto LABEL_107;
              }
            }

            else if (j)
            {
              goto LABEL_149;
            }

            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::batchEarlyOut != 3)
            {
              goto LABEL_149;
            }

LABEL_107:
            --v60;
          }
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
        {
          memset(v191, 0, sizeof(v191));
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
          v98 = *&v191[8];
          v97 = *v191;
          **v191 = v190;
          *(v97 + 8) = v19;
          v99 = *(a1 + 32);
          *(*(v99 + 24) + *(v99 + 4) + 32) = v98;
          v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
        }

        else
        {
          v99 = *(a1 + 32);
        }

        v100 = *(v12 + 392);
        v101 = *(a1 + 16);
        *(v101 + 2060) |= 4u;
        v102 = *(v101 + 4536);
        *(v101 + 4536) = v99;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v101, 22, v172, v189 + 240, v100);
        if (v102)
        {
          *(v101 + 4536) = v102;
        }

        v103 = *(a1 + 16);
        if (*(v103 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v103 + 2306) = 0;
          if (*(v103 + 2292) == 1 && !*(v103 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v103, 22, (v103 + 5544), (v103 + 5552), (v103 + 5560));
          }
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
        {
          memset(v191, 0, sizeof(v191));
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
          v105 = *&v191[8];
          v104 = *v191;
          **v191 = v190;
          *(v104 + 8) = v19;
          v106 = *(a1 + 32);
          *(*(v106 + 24) + *(v106 + 4) + 32) = v105;
          v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
        }

        else
        {
          v106 = *(a1 + 32);
        }

        v107 = *(v12 + 392);
        v108 = *(a1 + 16);
        *(v108 + 2060) |= 4u;
        v109 = *(v108 + 4536);
        *(v108 + 4536) = v106;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v108, 22, v174, v189 + 216, v107);
        if (v109)
        {
          goto LABEL_182;
        }
      }

      else
      {
        if ((*(v12 + 111) & 0x100) != 0)
        {
          v30 = *(v12 + 128);
          memset(v191, 0, sizeof(v191));
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 1);
          v31 = (v30 + 2047) >> 11;
          v32 = a3;
          v33 = *&v191[8];
          v34 = *v191;
          bzero(*v191, 0x10uLL);
          v35 = 0;
          *v34 = *(v12 + 128);
          v34[2] = v31;
          *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 64) = v33;
          a3 = v32;
          do
          {
            memset(v191, 0, sizeof(v191));
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 4, 0);
            v36 = *&v191[8];
            **v191 = v35;
            v37 = *(a1 + 32);
            *(*(v37 + 24) + *(v37 + 4) + 72) = v36;
            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify == 1)
            {
              memset(v191, 0, sizeof(v191));
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
              v38 = *v191;
              **v191 = v190;
              *(v38 + 8) = v19;
              v37 = *(a1 + 32);
              *(*(v37 + 24) + *(v37 + 4) + 32) = *(&v38 + 1);
              v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
            }

            *v191 = v31;
            *&v191[8] = vdupq_n_s64(1uLL);
            v193 = xmmword_29D2F2430;
            v194 = 1;
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), v37, v188, v191, &v193);
            v39 = *(a1 + 16);
            if (*(v39 + 2292) == 1)
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
              *(v39 + 2306) = 0;
              if (*(v39 + 2292) == 1 && !*(v39 + 4976))
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v39, 22, (v39 + 5544), (v39 + 5552), (v39 + 5560));
              }
            }

            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
            {
              memset(v191, 0, sizeof(v191));
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
              v40 = *v191;
              **v191 = v190;
              *(v40 + 8) = v19;
              v41 = *(a1 + 32);
              *(*(v41 + 24) + *(v41 + 4) + 32) = *(&v40 + 1);
              v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
            }

            else
            {
              v41 = *(a1 + 32);
            }

            *v191 = xmmword_29D2F23C0;
            *&v191[16] = 1;
            v193 = xmmword_29D2F2430;
            v194 = 1;
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), v41, v187, v191, &v193);
            v42 = *(a1 + 16);
            if (*(v42 + 2292) == 1)
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
              *(v42 + 2306) = 0;
              if (*(v42 + 2292) == 1 && !*(v42 + 4976))
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v42, 22, (v42 + 5544), (v42 + 5552), (v42 + 5560));
              }
            }

            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
            {
              memset(v191, 0, sizeof(v191));
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
              v43 = *v191;
              **v191 = v190;
              *(v43 + 8) = v19;
              v44 = *(a1 + 32);
              *(*(v44 + 24) + *(v44 + 4) + 32) = *(&v43 + 1);
              v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
            }

            else
            {
              v44 = *(a1 + 32);
            }

            *v191 = v31;
            *&v191[8] = vdupq_n_s64(1uLL);
            v193 = xmmword_29D2F2430;
            v194 = 1;
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), v44, v186, v191, &v193);
            v45 = *(a1 + 16);
            if (*(v45 + 2292) == 1)
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
              *(v45 + 2306) = 0;
              if (*(v45 + 2292) == 1 && !*(v45 + 4976))
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v45, 22, (v45 + 5544), (v45 + 5552), (v45 + 5560));
              }
            }

            ++v35;
          }

          while (v35 != 4);
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
          {
            [**(a1 + 16) addCompletedHandler:&__block_literal_global_381];
          }

          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::earlyOutStage == 3)
          {
            continue;
          }
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
        {
          memset(v191, 0, sizeof(v191));
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
          v50 = *v191;
          **v191 = v190;
          *(v50 + 8) = v19;
          v51 = *(a1 + 32);
          *(*(v51 + 24) + *(v51 + 4) + 32) = *(&v50 + 1);
          v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
        }

        else
        {
          v51 = *(a1 + 32);
        }

        *v191 = vdupq_n_s64(1uLL);
        *&v191[16] = 1;
        v193 = xmmword_29D2F2430;
        v194 = 1;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), v51, v175, v191, &v193);
        v52 = *(a1 + 16);
        if (*(v52 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v52 + 2306) = 0;
          if (*(v52 + 2292) == 1 && !*(v52 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v52, 22, (v52 + 5544), (v52 + 5552), (v52 + 5560));
          }
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::earlyOutStage == 4)
        {
          continue;
        }

        if ((*(v12 + 111) & 0x80) == 0)
        {
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
          {
            memset(v191, 0, sizeof(v191));
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
            v54 = *&v191[8];
            v53 = *v191;
            **v191 = v190;
            *(v53 + 8) = v19;
            v55 = *(a1 + 32);
            *(*(v55 + 24) + *(v55 + 4) + 32) = v54;
            v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
          }

          else
          {
            v55 = *(a1 + 32);
          }

          v113 = *(v12 + 392);
          v108 = *(a1 + 16);
          *(v108 + 2060) |= 4u;
          v109 = *(v108 + 4536);
          *(v108 + 4536) = v55;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v108, 22, v169, v189 + 216, v113);
          if (!v109)
          {
            goto LABEL_183;
          }

LABEL_182:
          *(v108 + 4536) = v109;
          goto LABEL_183;
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
        {
          memset(v191, 0, sizeof(v191));
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
          v111 = *&v191[8];
          v110 = *v191;
          **v191 = v190;
          *(v110 + 8) = v19;
          v112 = *(a1 + 32);
          *(*(v112 + 24) + *(v112 + 4) + 32) = v111;
          v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
        }

        else
        {
          v112 = *(a1 + 32);
        }

        v145 = *(v12 + 392);
        v146 = *(a1 + 16);
        *(v146 + 2060) |= 4u;
        v147 = *(v146 + 4536);
        *(v146 + 4536) = v112;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v146, 22, v168, v189 + 72, v145);
        if (v147)
        {
          *(v146 + 4536) = v147;
        }

        v148 = *(a1 + 16);
        if (*(v148 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v148 + 2306) = 0;
          if (*(v148 + 2292) == 1 && !*(v148 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v148, 22, (v148 + 5544), (v148 + 5552), (v148 + 5560));
          }
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::earlyOutStage == 5)
        {
          continue;
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
        {
          memset(v191, 0, sizeof(v191));
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
          v149 = *v191;
          **v191 = v190;
          *(v149 + 8) = v19;
          v150 = *(a1 + 32);
          *(*(v150 + 24) + *(v150 + 4) + 32) = *(&v149 + 1);
          v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
        }

        else
        {
          v150 = *(a1 + 32);
        }

        *v191 = vdupq_n_s64(1uLL);
        *&v191[16] = 1;
        v193 = xmmword_29D2F2430;
        v194 = 1;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), v150, v174, v191, &v193);
      }

LABEL_183:
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::earlyOutStage == 6)
      {
        continue;
      }

      v114 = *(a1 + 16);
      if (*(v114 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
        *(v114 + 2306) = 0;
        if (*(v114 + 2292) == 1 && !*(v114 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v114, 22, (v114 + 5544), (v114 + 5552), (v114 + 5560));
        }
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
      {
        memset(v191, 0, sizeof(v191));
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
        v116 = *&v191[8];
        v115 = *v191;
        **v191 = v190;
        *(v115 + 8) = v19;
        v117 = *(a1 + 32);
        *(*(v117 + 24) + *(v117 + 4) + 32) = v116;
        v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
      }

      else
      {
        v117 = *(a1 + 32);
      }

      v118 = *(v12 + 392);
      v119 = *(a1 + 16);
      *(v119 + 2060) |= 4u;
      v120 = *(v119 + 4536);
      *(v119 + 4536) = v117;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v119, 22, v171, v189 + 312, v118);
      if (v120)
      {
        *(v119 + 4536) = v120;
      }

      v121 = *(a1 + 16);
      if (*(v121 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
        *(v121 + 2306) = 0;
        if (*(v121 + 2292) == 1 && !*(v121 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v121, 22, (v121 + 5544), (v121 + 5552), (v121 + 5560));
        }
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::earlyOutStage == 7)
      {
        continue;
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
      {
        memset(v191, 0, sizeof(v191));
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
        v123 = *&v191[8];
        v122 = *v191;
        **v191 = v190;
        *(v122 + 8) = v19;
        v124 = *(a1 + 32);
        *(*(v124 + 24) + *(v124 + 4) + 32) = v123;
        v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
      }

      else
      {
        v124 = *(a1 + 32);
      }

      v125 = v185;
      v126 = v195[*(v185 + 76)];
      v127 = *(v12 + 392);
      v128 = *(a1 + 16);
      *(v128 + 2060) |= 4u;
      v129 = *(v128 + 4536);
      *(v128 + 4536) = v124;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v128, 22, v126, v189 + 288, v127);
      if (v129)
      {
        *(v128 + 4536) = v129;
      }

      v130 = *(a1 + 16);
      if (*(v130 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
        *(v130 + 2306) = 0;
        if (*(v130 + 2292) == 1 && !*(v130 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v130, 22, (v130 + 5544), (v130 + 5552), (v130 + 5560));
        }
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::earlyOutStage == 8)
      {
        return;
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
      {
        memset(v191, 0, sizeof(v191));
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
        v132 = *&v191[8];
        v131 = *v191;
        **v191 = v190;
        *(v131 + 8) = v19;
        v133 = *(a1 + 32);
        *(*(v133 + 24) + *(v133 + 4) + 32) = v132;
        v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
        v125 = v185;
      }

      else
      {
        v133 = *(a1 + 32);
      }

      v134 = *(v12 + 392);
      v135 = *(a1 + 16);
      *(v135 + 2060) |= 4u;
      v136 = *(v135 + 4536);
      *(v135 + 4536) = v133;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v135, 22, v170, v189 + 264, v134);
      if (v136)
      {
        *(v135 + 4536) = v136;
      }

      if (*(v125 + 165) == 1)
      {
        v137 = *(a1 + 16);
        *(*(v137 + 4544) + 2036) = *(v125 + 50);
        if (*(v137 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(v137, 22, 0, 0, 0);
          *(v137 + 2306) = 0;
          if (*(v137 + 2292) == 1 && !*(v137 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v137, 22, (v137 + 5544), (v137 + 5552), (v137 + 5560));
          }
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
        {
          memset(v191, 0, sizeof(v191));
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
          v139 = *&v191[8];
          v138 = *v191;
          **v191 = v190;
          *(v138 + 8) = v19;
          v140 = *(a1 + 32);
          *(*(v140 + 24) + *(v140 + 4) + 32) = v139;
          v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
          v125 = v185;
        }

        else
        {
          v140 = *(a1 + 32);
        }

        v151 = *(v12 + 392);
        v152 = *(a1 + 16);
        *(v152 + 2060) |= 4u;
        v153 = *(v152 + 4536);
        *(v152 + 4536) = v140;
        v154 = v152;
        v155 = v167;
LABEL_245:
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v154, 22, v155, v189, v151);
        if (v153)
        {
          *(v152 + 4536) = v153;
        }

        goto LABEL_247;
      }

      if ((*(v125 + 152) & 1) != 0 && (*(v12 + 114) == 3 || !*(v12 + 114)))
      {
        v141 = *(a1 + 16);
        if (*(v141 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v141 + 2306) = 0;
          if (*(v141 + 2292) == 1 && !*(v141 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v141, 22, (v141 + 5544), (v141 + 5552), (v141 + 5560));
          }
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
        {
          memset(v191, 0, sizeof(v191));
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
          v143 = *&v191[8];
          v142 = *v191;
          **v191 = v190;
          *(v142 + 8) = v19;
          v144 = *(a1 + 32);
          *(*(v144 + 24) + *(v144 + 4) + 32) = v143;
          v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
          v125 = v185;
        }

        else
        {
          v144 = *(a1 + 32);
        }

        v151 = *(v12 + 392);
        v152 = *(a1 + 16);
        *(v152 + 2060) |= 4u;
        v153 = *(v152 + 4536);
        *(v152 + 4536) = v144;
        v154 = v152;
        v155 = v165;
        goto LABEL_245;
      }

LABEL_247:
      if (*(v125 + 164) == 1)
      {
        v156 = *(a1 + 16);
        if (*(v156 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v156 + 2306) = 0;
          if (*(v156 + 2292) == 1 && !*(v156 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v156, 22, (v156 + 5544), (v156 + 5552), (v156 + 5560));
          }
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify)
        {
          memset(v191, 0, sizeof(v191));
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
          v158 = *&v191[8];
          v157 = *v191;
          **v191 = v190;
          *(v157 + 8) = v19;
          v159 = *(a1 + 32);
          *(*(v159 + 24) + *(v159 + 4) + 32) = v158;
          v19 = (v19 + 1) | v19 & 0xFFFFFFFF00000000;
        }

        else
        {
          v159 = *(a1 + 32);
        }

        v160 = *(v12 + 392);
        v161 = *(a1 + 16);
        *(v161 + 2060) |= 4u;
        v162 = *(v161 + 4536);
        *(v161 + 4536) = v159;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v161, 22, v166, v189 + 24, v160);
        if (v162)
        {
          *(v161 + 4536) = v162;
        }

        v125 = v185;
      }

      if (*(v12 + 114) - 8 <= 0xFFFFFFFD && (*(v125 + 159) & 1) == 0)
      {
        if (*(v12 + 232))
        {
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::MediumBuild>)::verify == 1)
          {
            memset(v191, 0, sizeof(v191));
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v191, a1, 16, 0);
            v163 = *v191;
            **v191 = v190;
            *(v163 + 8) = v19;
            *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v163 + 1);
          }

          v164 = *(a1 + 16);
          if (*(v164 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
            *(v164 + 2306) = 0;
            if (*(v164 + 2292) == 1 && !*(v164 + 4976))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v164, 22, (v164 + 5544), (v164 + 5552), (v164 + 5560));
            }
          }
        }

        v8 = [*(v12 + 296) buffer];
        v9 = [*(v12 + 296) bufferOffset];
        v10 = [v8 gpuAddress];
        v11 = [v8 length];
        *v191 = v10 + v9;
        *&v191[8] = v9;
        *&v191[16] = v11;
        v192 = 0;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyPPD(a1, v12 + 96, v12 + 304, v191);
      }

      {
        {
        }
      }
    }
  }
}

uint64_t ___ZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE26encodeBuildAndEncodeRiaBvhERKNS_13BVHDescriptorEPNS6_16ScratchAllocatorEPKvyyP44AGXG18PFamilyRayTracingAccelerationStructureP34MTLAccelerationStructureDescriptor15MTL4BufferRangem_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  snprintf(__str, 0x100uLL, "Top-down BVH Builder - GPUVA (%llx) - leaf count: %u", *(a1 + 32), *(a1 + 48));
  return bvhPrintDebugBufferContents(*(a1 + 40), __str);
}

unint64_t AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(uint64_t a1, int a2, __int16 a3)
{
  v3 = HIBYTE(a3) & a3;
  v4 = a2 - 103;
  {
    v13 = a1;
    v11 = a2;
    v12 = HIBYTE(a3) & a3;
    v10 = a2 - 103;
    v4 = v10;
    a2 = v11;
    v3 = v12;
    v9 = v8;
    a1 = v13;
    if (v9)
    {
      {
      }

      {
      }

      if (shouldDumpOrVerifyBVHs(void)::once != -1)
      {
        dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(int,std::optional<BOOL>)::verify = 0;
      a1 = v13;
      a2 = v11;
      v3 = v12;
      v4 = v10;
    }
  }

  v15 = 24;
  v17 = 0;
  v18 = 0;
  __p = 0;
  v14 = &unk_2A23F80C0;
  if (((v4 < 0x13) & v3) != 0)
  {
    v5 = 0x80000000;
  }

  else
  {
    v5 = 0;
  }

  v19 = v5 & 0xC0000000 | a2 & 0x3FFFFFFF | (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(int,std::optional<BOOL>)::verify << 30);
  result = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBVHBuilderPipeline(*(*a1 + 848), &v14);
  v14 = &unk_2A23F8100;
  if (__p)
  {
    v17 = __p;
    v7 = result;
    operator delete(__p);
    return v7;
  }

  return result;
}

void sub_29CE9DEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v10 = *a4;
  v11 = *(a4 + 2);
  v8 = *a5;
  v9 = *(a5 + 2);
  *(a1 + 2060) |= 4u;
  v6 = *(a1 + 4536);
  *(a1 + 4536) = a2;
  v7 = *(a1 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(a1, a3);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsInternal(a1, 22, &v10, &v8);
  if (*(a1 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(a1, 22, 0, 0, 0);
  }

  if (v7)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(a1, v7);
  }

  if (v6)
  {
    *(a1 + 4536) = v6;
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeTopDownBuilds(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v530 = *MEMORY[0x29EDCA608];
  v425 = a3;
  {
    v423 = a3;
    a3 = v423;
    if (v424)
    {
      {
      }

      {
      }

      if (shouldDumpOrVerifyBVHs(void)::once != -1)
      {
        dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeTopDownBuilds(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuild>)::verify = 0;
      a3 = v425;
    }
  }

  if (a3)
  {
    v4 = 0;
    do
    {
      v427 = v4;
      v5 = (a2 + 768 * v4);
      v457 = *(v5 + 25);
      v430 = *(v5 + 41);
      if ((v5[18] & 0xFE) != 6 || *(v5 + 13) == 0)
      {
        goto LABEL_31;
      }

      v7 = *(v5 + 14);
      if (v7 <= 1)
      {
        if (!v7)
        {
          Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 16, 0);
          goto LABEL_24;
        }

        if (v7 == 1)
        {
          Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 17, 0);
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
            v10 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v8, 0);
LABEL_26:
            v11 = *(a1 + 32);
            *(*(v11 + 24) + *(v11 + 4) + 48) = *(v5 + 30);
            *&v512[0] = *(v5 + 13);
            *(v512 + 8) = vdupq_n_s64(1uLL);
            v524 = xmmword_29D2F1C70;
            *&v525 = 1;
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), v11, v10, v512, &v524);
            break;
          case 3:
            Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 18, 0);
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

      v12 = *(a1 + 16);
      if (*(v12 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
        *(v12 + 2306) = 0;
        if (*(v12 + 2292) == 1 && !*(v12 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v12, 22, (v12 + 5544), (v12 + 5552), (v12 + 5560));
        }
      }

LABEL_31:
      if (*(v5 + 10))
      {
        v13 = v5[18] == 0;
      }

      else
      {
        v13 = 0;
      }

      if (v13 && v5[17] == 2)
      {
        {
          AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
        }

        {
          AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
        }

        if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit)
        {
          v14 = 0;
        }

        else if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
        {
          v14 = 1;
        }

        else
        {
          v14 = v5[28] & 1;
        }

        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeTrianglePairingForBvh(a1, v5, *(v5 + 43), v14, (v5 + 680));
        v15 = *(a1 + 16);
        if (*(v15 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v15 + 2306) = 0;
          if (*(v15 + 2292) == 1 && !*(v15 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v15, 22, (v15 + 5544), (v15 + 5552), (v15 + 5560));
          }
        }
      }

      *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4)) = *(v5 + 26);
      v16 = *(v5 + 8);
      if (*(v5 + 1) | v5[18])
      {
        v17 = 0;
      }

      else
      {
        v17 = v5[12] == 3;
      }

      v18 = !v17 || *(v5 + 10) == 0;
      v19 = !v18;
      v20 = *(v5 + 8);
      if (!v18)
      {
        v21 = 0x3FFFFFFFLL;
        if ((v5[28] & 4) == 0)
        {
          v21 = 0xFFFFFFFLL;
        }

        v22 = *(v5 + 48) + -1.0;
        if (v22 < 0.0)
        {
          v22 = 0.0;
        }

        v23 = vcvtpd_u64_f64(v22 * v16) + v16;
        if (v21 >= v23)
        {
          v20 = v23;
        }

        else
        {
          v20 = v21;
        }
      }

      v24 = *(v5 + 27);
      v25 = *(v5 + 78);
      v26 = *(v5 + 15);
      if ((v26 & 2) != 0)
      {
        v27 = *(v5 + 40);
        if (v27 >= 2)
        {
          v20 *= v27 - 1;
        }
      }

      if (v20 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v20;
      }

      v467 = v28;
      LODWORD(v29) = *(v5 + 8);
      if (v19)
      {
        v29 = 0x3FFFFFFFLL;
        if ((v5[28] & 4) == 0)
        {
          v29 = 0xFFFFFFFLL;
        }

        v30 = *(v5 + 48) + -1.0;
        if (v30 < 0.0)
        {
          v30 = 0.0;
        }

        v31 = vcvtpd_u64_f64(v30 * v16) + v16;
        if (v29 >= v31)
        {
          LODWORD(v29) = v31;
        }
      }

      if ((v26 & 2) != 0)
      {
        v32 = *(v5 + 40);
        v33 = v32 - 1;
        if (v32 <= 1)
        {
          v33 = 1;
        }

        v34 = v33 * v29;
        if (v34 <= 1)
        {
          v34 = 1;
        }

        v470 = v34;
        if (v32 > 1)
        {
          v470 = v34 << v5[13];
        }
      }

      else
      {
        if (v29 <= 1)
        {
          LODWORD(v29) = 1;
        }

        v470 = v29;
      }

      if ((*(v5 + 15) & 0x400) != 0)
      {
        if (v19)
        {
          v35 = 0x3FFFFFFFLL;
          if ((v5[28] & 4) == 0)
          {
            v35 = 0xFFFFFFFLL;
          }

          v36 = *(v5 + 48) + -1.0;
          if (v36 < 0.0)
          {
            v36 = 0.0;
          }

          v16 += vcvtpd_u64_f64(v36 * v16);
          if (v35 < v16)
          {
            LODWORD(v16) = v35;
          }
        }

        if ((v26 & 2) != 0)
        {
          v37 = *(v5 + 40);
          if (v37 >= 2)
          {
            LODWORD(v16) = v16 * (v37 - 1);
          }
        }

        if (v16 <= 1)
        {
          LODWORD(v16) = 1;
        }

        v464 = (*(v5 + 10) + v16 - 1) / *(v5 + 10) - 1;
      }

      else
      {
        v464 = AGX::BVHDescriptor::maxInnerNodeCount(v5);
      }

      v461 = AGX::BVHDescriptor::topDownLeafNodeCapacity(v5);
      v39 = (v26 & 2) == 0 || *(v5 + 40) < 2u;
      v40 = (v26 & 0x400) == 0 && *(v5 + 13) && v20 > *(v5 + 13);
      v428 = *(v24 + 296);
      v429 = *(v24 + 360);
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::defaultMinOverlap = 925353388;
      }

      v41 = v5[18];
      if (v41 > 5)
      {
        v42 = 0;
      }

      else
      {
        v42 = qword_29D2F7458[v41];
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::overridenPrimitiveCost = xmmword_29D2F23E0;
        dword_2A17A0580 = 1065353216;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::overridenTraversalCost = xmmword_29D2F23F0;
        dword_2A17A05A0 = 0x40000000;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::_batchThreshold = 2048;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::_allowBatching = 1;
      }

      v437 = v5[18];
      v458 = *(v5 + 8);
      v43 = v458 >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::_batchThreshold;
      v44 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::_allowBatching;
      v454 = *(v5 + 10);
      v45 = *(&AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::overridenPrimitiveCost + v42);
      v46 = *(&AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::overridenTraversalCost + v42);
      v47 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::defaultMinOverlap;
      v48 = *(v5 + 15);
      v49 = v5[14];
      if ((v48 & 0x400) != 0)
      {
        v49 = 2;
      }

      v476 = v49;
      v50 = log2(v49);
      if (v39)
      {
        v51 = 0;
      }

      else
      {
        v51 = 2;
      }

      if ((v43 & v44) != 0)
      {
        v52 = 4;
      }

      else
      {
        v52 = 0;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::disallowTemporalSplits = 0;
      }

      v53 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::disallowTemporalSplits;
      if (v5[13])
      {
        v54 = v39;
      }

      else
      {
        v54 = 1;
      }

      if (v54)
      {
        v55 = 0;
      }

      else
      {
        v55 = 0x80;
      }

      v434 = v5[17];
      if (AGX::BVHDescriptor::useSpatialSplits(v5))
      {
        v56 = 4;
      }

      else
      {
        v56 = 0;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::disallowMixingTemporalSplits = 1;
      }

      v433 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::disallowMixingTemporalSplits;
      {
        AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
      }

      {
        AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
      }

      if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (v5[28]))
      {
        v431 = 0;
      }

      else
      {
        v431 = 32 * ((v5[18] & 0xFE) != 6);
      }

      v482 = v55 | v48 & 0x20 | (v53 << 6) | v51 | v40 | v52 & 0xEF | (16 * (v48 & 1)) | 8;
      v57 = *(v5 + 15);
      if ((v57 & 0x400) != 0)
      {
        v60 = *(v5 + 8);
        if (!*(v5 + 1) && *(v5 + 10) && !v5[18] && v5[12] == 3)
        {
          v61 = 0x3FFFFFFFLL;
          if ((v5[28] & 4) == 0)
          {
            v61 = 0xFFFFFFFLL;
          }

          v62 = *(v5 + 48) + -1.0;
          if (v62 < 0.0)
          {
            v62 = 0.0;
          }

          v60 += vcvtpd_u64_f64(v62 * v60);
          if (v61 < v60)
          {
            LODWORD(v60) = v61;
          }
        }

        if ((v57 & 2) == 0)
        {
          if (v60 <= 1)
          {
            LODWORD(v60) = 1;
          }

          goto LABEL_173;
        }

        v63 = *(v5 + 40);
        v64 = v63 - 1;
        if (v63 <= 1)
        {
          v64 = 1;
        }

        LODWORD(v60) = v64 * v60;
        if (v60 <= 1)
        {
          LODWORD(v60) = 1;
        }

        if (v63 <= 1 || (LODWORD(v60) = v60 << v5[13], v60))
        {
LABEL_173:
          v65 = vcvtps_u32_f32((33 - __clz(~(-1 << -__clz(v60 - 1)))) * 1.75);
          if (v65 >= 0x20)
          {
            v65 = 32;
          }

          if (v65 <= 1)
          {
            v65 = 1;
          }
        }

        else
        {
          v65 = 1;
        }

        v479 = v65;
        v448 = 0;
        v482 = v55 & 0xFE | v48 & 0x20 | (v53 << 6) | (v51 | v40) & 0xFE | v52 & 0xEE | (16 * (v48 & 1)) | 8;
        v476 = 2;
        v452 = *(v5 + 10);
        LOWORD(v450) = v452;
        v446 = *(v5 + 11);
        v445 = v446;
        goto LABEL_178;
      }

      if (v40)
      {
        v58 = *(v5 + 12);
        v450 = *(v5 + 10);
        if (2 * v450 > v58)
        {
          LOWORD(v58) = 2 * v450;
        }

        v452 = v58;
        v59 = 26;
      }

      else
      {
        v59 = 22;
        LOWORD(v450) = *(v5 + 10);
        v452 = v450;
      }

      v479 = *v5;
      v446 = *&v5[v59];
      v448 = *(v5 + 13);
      v445 = *(v5 + 11);
LABEL_178:
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::deterministicWideMode = 1;
      }

      if ((AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::deterministicWideMode & (v476 == 8)) != 0)
      {
        v66 = 64;
      }

      else
      {
        v66 = 0;
      }

      v473 = *(v5 + 40);
      v68 = *(v5 + 45);
      v67 = *(v5 + 46);
      v69 = *(v5 + 15);
      if ((v69 & 0x400) != 0)
      {
        v74 = *(v5 + 8);
        if (*(v5 + 1) || !*(v5 + 10) || v5[18])
        {
          v75 = v25;
        }

        else
        {
          v75 = v25;
          if (v5[12] == 3)
          {
            v76 = 0x3FFFFFFFLL;
            if ((v5[28] & 4) == 0)
            {
              v76 = 0xFFFFFFFLL;
            }

            v77 = *(v5 + 48) + -1.0;
            if (v77 < 0.0)
            {
              v77 = 0.0;
            }

            v74 += vcvtpd_u64_f64(v77 * v74);
            if (v76 < v74)
            {
              LODWORD(v74) = v76;
            }
          }
        }

        v78 = v473 - 1;
        if (((v473 > 1) & (v69 >> 1)) == 0)
        {
          v78 = 1;
        }

        v79 = v74 * v78;
        if (v79 <= 1)
        {
          v80 = 1;
        }

        else
        {
          v80 = v79;
        }

        v81 = *(v5 + 10);
        v82 = AGX::BVHDescriptor::topDownLeafNodeCapacity(v5);
        v72 = *(v5 + 8);
        v73 = *(v5 + 10);
        if (*(v5 + 1) || !v73 || v5[18] || v5[12] != 3)
        {
          LODWORD(v83) = *(v5 + 8);
        }

        else
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

          v85 = vcvtpd_u64_f64(v84 * v72) + v72;
          if (v83 >= v85)
          {
            LODWORD(v83) = v85;
          }
        }

        v443 = (v81 + v80 - 1) / v81 + v82 - 1;
        v86 = v473 - 1;
        if (((v473 > 1) & (v69 >> 1)) == 0)
        {
          v86 = 1;
        }

        v87 = v83 * v86;
        if (v87 <= 1)
        {
          v87 = 1;
        }

        v71 = (*(v5 + 10) + v87 - 1) / *(v5 + 10) - 1;
        v25 = v75;
      }

      else
      {
        v70 = AGX::BVHDescriptor::maxInnerNodeCount(v5);
        v443 = AGX::BVHDescriptor::topDownLeafNodeCapacity(v5) + v70;
        v71 = AGX::BVHDescriptor::maxInnerNodeCount(v5);
        LODWORD(v72) = *(v5 + 8);
        v73 = *(v5 + 10);
      }

      v88 = AGX::BVHDescriptor::topDownLeafNodeCapacity(v5) + v71;
      if (HIBYTE(v88))
      {
        v89 = 4;
      }

      else
      {
        v89 = 3;
      }

      if (v88 >= 0x10000)
      {
        v90 = v89;
      }

      else
      {
        v90 = 2;
      }

      v441 = v90;
      if (v73 >= 0x101 || v72 >= 0x800001)
      {
        v92 = 2;
      }

      else
      {
        v92 = 1;
      }

      if (v73 < 0x11 && v72 < 0x801)
      {
        v92 = 0;
      }

      v439 = v92;
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::_instanceBatchSize = 256;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::_primitiveBatchSize = 512;
      }

      v94 = v437 & 0xFE;
      v438 = v5[13];
      v95 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::_instanceBatchSize;
      if (v94 != 6)
      {
        v95 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::_primitiveBatchSize;
      }

      v436 = *v95;
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::instanceSinglePassTGSizeEv = 512;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::primitiveSinglePassTGSizeEv = 512;
      }

      v96 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::instanceSinglePassTGSizeEv;
      if (v94 != 6)
      {
        v96 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownEncodeBuildBVH(AGX::BVHDescriptor const&,GBVHBindings const&,MTL4BufferRange,unsigned long,unsigned long long)::primitiveSinglePassTGSizeEv;
      }

      v435 = *v96;
      v97 = *(*(a1 + 16) + 4544);
      v98 = ((((*v96 + 31) >> 3) & 0x1FFFFFFC) + 15) & 0x3FFFFFF0;
      *(v97 + 2044) = v98;
      *(v97 + 2048) = v98;
      memset(v512, 0, 24);
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 88, 0);
      v99 = v512[0];
      **&v512[0] = v454;
      *(v99 + 4) = v458;
      *(v99 + 8) = v47;
      *(v99 + 12) = v46;
      *(v99 + 16) = v45;
      *(v99 + 20) = 1067450368;
      *(v99 + 24) = v464;
      *(v99 + 28) = v461;
      *(v99 + 32) = v467;
      *(v99 + 36) = v470;
      *(v99 + 40) = v476;
      v432 = v66 | v431 | v56 & 0xFC | v434 & 3 | (16 * v433);
      *(v99 + 42) = v50;
      *(v99 + 44) = v479;
      *(v99 + 45) = v482;
      *(v99 + 46) = v432;
      *(v99 + 48) = v473;
      *(v99 + 52) = v68;
      *(v99 + 56) = v67;
      *(v99 + 60) = v443;
      *(v99 + 64) = v441;
      *(v99 + 66) = 0;
      *(v99 + 68) = v439;
      *(v99 + 72) = v452;
      *(v99 + 74) = v446;
      *(v99 + 76) = v448;
      *(v99 + 78) = v438;
      *(v99 + 80) = v450;
      *(v99 + 82) = v445;
      *(v99 + 84) = v436;
      *(v99 + 86) = v435;
      *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 8) = *(&v99 + 1);
      if (v25)
      {
        memset(v512, 0, 24);
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
        v100 = v512[0];
        **&v512[0] = v25;
        *(v100 + 8) = 100;
        *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v100 + 1);
      }

      v101 = *(v5 + 15);
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownGetFragments(AGX::BVHDescriptor const&)::initFragmentIndices = 0;
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::topDownGetFragments(AGX::BVHDescriptor const&)::initFragmentIndices == 1)
      {
        v102 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 154, 0);
        v103 = *(v5 + 8);
        if (*(v5 + 1) | v5[18])
        {
          v104 = 0;
        }

        else
        {
          v104 = v5[12] == 3;
        }

        v105 = !v104 || *(v5 + 10) == 0;
        v106 = !v105;
        LODWORD(v107) = *(v5 + 8);
        if (!v105)
        {
          v108 = 0x3FFFFFFFLL;
          if ((v5[28] & 4) == 0)
          {
            v108 = 0xFFFFFFFLL;
          }

          v109 = *(v5 + 48) + -1.0;
          if (v109 < 0.0)
          {
            v109 = 0.0;
          }

          v107 = vcvtpd_u64_f64(v109 * v103) + v103;
          if (v108 < v107)
          {
            LODWORD(v107) = v108;
          }
        }

        v110 = *(v5 + 15);
        if ((v110 & 2) != 0)
        {
          v111 = *(v5 + 40);
          v112 = v111 - 1;
          if (v111 <= 1)
          {
            v112 = 1;
          }

          LODWORD(v107) = v112 * v107;
          if (v107 <= 1)
          {
            v107 = 1;
          }

          else
          {
            v107 = v107;
          }

          if (v111 > 1)
          {
            v107 *= 1 << v5[13];
          }
        }

        else if (v107 <= 1)
        {
          v107 = 1;
        }

        else
        {
          v107 = v107;
        }

        if (v107 + 31 >= 0x20)
        {
          if (v106)
          {
            v114 = 0x3FFFFFFFLL;
            if ((v5[28] & 4) == 0)
            {
              v114 = 0xFFFFFFFLL;
            }

            v115 = *(v5 + 48) + -1.0;
            if (v115 < 0.0)
            {
              v115 = 0.0;
            }

            v103 += vcvtpd_u64_f64(v115 * v103);
            if (v114 < v103)
            {
              LODWORD(v103) = v114;
            }
          }

          if ((v110 & 2) != 0)
          {
            v116 = *(v5 + 40);
            v117 = v116 - 1;
            if (v116 <= 1)
            {
              v117 = 1;
            }

            LODWORD(v103) = v117 * v103;
            if (v103 <= 1)
            {
              v103 = 1;
            }

            else
            {
              v103 = v103;
            }

            if (v116 > 1)
            {
              v103 *= 1 << v5[13];
            }
          }

          else if (v103 <= 1)
          {
            v103 = 1;
          }

          else
          {
            v103 = v103;
          }

          v113 = (v103 + 31) >> 5;
        }

        else
        {
          v113 = 1;
        }

        *&v512[0] = v113;
        *(v512 + 8) = vdupq_n_s64(1uLL);
        v524 = xmmword_29D2F1C70;
        *&v525 = 1;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), *(a1 + 32), v102, v512, &v524);
      }

      v118 = *(v5 + 8);
      if ((v118 + 31) >= 0x400)
      {
        v119 = 1024;
      }

      else
      {
        v119 = (v118 + 31) & 0xFFFFFFE0;
      }

      if ((v118 + 1023) < 0x400)
      {
        v120 = 1;
      }

      else
      {
        v120 = (v118 + 1023) >> 10;
      }

      v121 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 153, 0);
      *&v512[0] = AGX::BVHDescriptor::maxInnerNodeCount(v5) * v5[14];
      *(v512 + 8) = vdupq_n_s64(1uLL);
      v524 = xmmword_29D2F1C70;
      *&v525 = 1;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), v121, v512, &v524);
      if (v118)
      {
        v512[0] = xmmword_29D2F2400;
        *&v512[1] = 0x9F0000009ELL;
        if (v101)
        {
          v122 = 161;
        }

        else
        {
          v122 = 160;
        }

        DWORD2(v512[1]) = v122;
        HIDWORD(v512[1]) = v122;
        v524 = xmmword_29D2F2410;
        *&v525 = 0xA4000000A3;
        if (v101)
        {
          v123 = 166;
        }

        else
        {
          v123 = 165;
        }

        DWORD2(v525) = v123;
        HIDWORD(v525) = v123;
        v124 = v5[18];
        v125 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, *(v512 + v124), 0);
        v126 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, *(&v524 + v124), 0);
        if (*(v5 + 15))
        {
          v127 = 14;
        }

        else
        {
          v127 = 6;
        }

        v128 = *(a1 + 16);
        *(*(v128 + 4544) + 2052) = ((v119 >> 3) + 15) & 0x3FFFFFF0;
        if (*(v128 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(v128, 22, 0, 0, 0);
          *(v128 + 2306) = 0;
          if (*(v128 + 2292) == 1 && !*(v128 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v128, 22, (v128 + 5544), (v128 + 5552), (v128 + 5560));
          }
        }

        *v487 = v120;
        *&v487[8] = vdupq_n_s64(1uLL);
        v510 = v119;
        *v511 = *&v487[8];
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), *(a1 + 32), v125, v487, &v510);
        v129 = *(a1 + 16);
        *(*(v129 + 4544) + 2056) = (((v119 >> 3) & 0x1FFC) * v127 + 15) & 0x3FFF0;
        if (*(v129 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(v129, 22, 0, 0, 0);
          *(v129 + 2306) = 0;
          if (*(v129 + 2292) == 1 && !*(v129 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v129, 22, (v129 + 5544), (v129 + 5552), (v129 + 5560));
          }
        }

        *v487 = v120;
        *&v487[8] = vdupq_n_s64(1uLL);
        v510 = v119;
        *v511 = *&v487[8];
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), *(a1 + 32), v126, v487, &v510);
      }

      *v487 = v454;
      *&v487[4] = v458;
      *&v487[8] = v47;
      *&v487[12] = v46;
      *&v487[16] = v45;
      *&v487[20] = 1067450368;
      *&v487[24] = v464;
      *&v487[28] = v461;
      *&v488 = __PAIR64__(v470, v467);
      WORD4(v488) = v476;
      WORD5(v488) = v50;
      BYTE12(v488) = v479;
      BYTE13(v488) = v482;
      HIWORD(v488) = v432;
      *&v489 = __PAIR64__(v68, v473);
      *(&v489 + 1) = __PAIR64__(v443, v67);
      LODWORD(v490) = v441;
      DWORD1(v490) = v439;
      WORD4(v490) = v452;
      WORD5(v490) = v446;
      WORD6(v490) = v448;
      HIWORD(v490) = v438;
      LOWORD(v491) = v450;
      WORD1(v491) = v445;
      WORD2(v491) = v436;
      HIWORD(v491) = v435;
      v506 = v430;
      v505 = v429 - v430;
      v130 = (*(v5 + 40) > 1u) & (*(v5 + 15) >> 1);
      if ((v482 & 0x10) != 0)
      {
        v131 = 142;
      }

      else
      {
        v131 = 141;
      }

      v503 = (*(v5 + 40) > 1u) & (*(v5 + 15) >> 1);
      v502 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v131, 0);
      if ((BYTE13(v488) & 0x10) != 0)
      {
        v132 = 145;
      }

      else
      {
        v132 = 144;
      }

      v501 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v132, 0);
      if ((BYTE13(v488) & 0x10) != 0)
      {
        v133 = 147;
      }

      else
      {
        v133 = 146;
      }

      v500 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v133, 0);
      if ((BYTE13(v488) & 0x10) != 0)
      {
        v134 = 149;
      }

      else
      {
        v134 = 148;
      }

      v499 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v134, 0);
      if ((BYTE14(v488) & 0xC) != 0)
      {
        v498 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 150, 0);
        if (v130)
        {
          goto LABEL_335;
        }
      }

      else
      {
        v498 = 0;
        if (v130)
        {
LABEL_335:
          v135 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 151, 0);
          goto LABEL_338;
        }
      }

      v135 = 0;
LABEL_338:
      v497 = v135;
      v136 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 152, 0);
      if ((BYTE13(v488) & 0x10) != 0)
      {
        v137 = 168;
      }

      else
      {
        v137 = 167;
      }

      v138 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v137, 0);
      if ((BYTE13(v488) & 0x10) != 0)
      {
        v139 = 170;
      }

      else
      {
        v139 = 169;
      }

      v496 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v139, 0);
      if (v482)
      {
        if ((BYTE13(v488) & 0x10) != 0)
        {
          v142 = 156;
        }

        else
        {
          v142 = 155;
        }

        v140 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v142, 0);
        if ((BYTE13(v488) & 4) != 0)
        {
LABEL_351:
          v141 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 143, 0);
          goto LABEL_352;
        }
      }

      else
      {
        v140 = 0;
        if ((BYTE13(v488) & 4) != 0)
        {
          goto LABEL_351;
        }
      }

      v141 = 0;
LABEL_352:
      v495 = v141;
      v143 = *(a1 + 16);
      *(*(v143 + 4544) + 2036) = 0x8000000080;
      if (*(v143 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(v143, 22, 0, 0, 0);
        *(v143 + 2306) = 0;
        if (*(v143 + 2292) == 1 && !*(v143 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v143, 22, (v143 + 5544), (v143 + 5552), (v143 + 5560));
        }
      }

      v512[0] = vdupq_n_s64(1uLL);
      *&v512[1] = 1;
      v144 = &v506;
      v524 = xmmword_29D2F2420;
      *&v525 = 1;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), *(a1 + 32), v136, v512, &v524);
      if (*(v5 + 15))
      {
        v146 = 144;
      }

      else
      {
        v146 = 80;
      }

      if ((BYTE14(v488) & 0xC) != 0)
      {
        v147 = 384;
      }

      else
      {
        v147 = 0;
      }

      v148 = *(*(a1 + 16) + 4544);
      v148[516] = v147;
      v148[517] = (BYTE13(v488) << 27 >> 31) & 0x840;
      v148[515] = 1728;
      v148[518] = v146;
      if ((*(v5 + 15) & 0x400) != 0)
      {
        v149 = 1;
      }

      else
      {
        v149 = 3;
      }

      v494 = v149;
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::dumpIterationStateForBVHIndex = -1;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::maxIterationEV = -1;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::maxInnerIterationEV = -1;
      }

      v493 = 0;
      v492 = &v493;
      v507 = &v505;
      v508 = &v506;
      *&v509 = a1;
      *&v512[0] = &v494;
      *(&v512[0] + 1) = &v492;
      *&v512[1] = a1;
      *(&v512[1] + 1) = v487;
      v513 = &v504;
      v514 = &v507;
      v515 = &v495;
      v516 = &v502;
      v517 = &v501;
      v518 = &v498;
      v519 = &v503;
      v520 = &v497;
      v521 = &v500;
      v522 = &v499;
      LOWORD(v145) = WORD4(v488);
      v523 = &v496;
      v150 = 0x10 / log2(v145);
      if (v479 >> 1 < v150)
      {
        v150 = v479 >> 1;
      }

      if (v150 <= 1)
      {
        v151 = 1;
      }

      else
      {
        v151 = v150;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::evMaxSpatialSplitsIterations = -1;
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::evMaxSpatialSplitsIterations >= 0)
      {
        v151 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::evMaxSpatialSplitsIterations;
      }

      if (v482)
      {
        v160 = v494;
        v524 = 0uLL;
        *&v525 = 0;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v524, a1, 8, 0);
        v161 = *(&v524 + 1);
        *v524 = (v479 - 1) | (v160 << 16);
        *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 16) = v161;
        if (v479 != 1)
        {
          v162 = 0;
          do
          {
            if ((BYTE14(v488) & 0xC) != 0 && v162 >= v151)
            {
              BYTE14(v488) &= 0xF3u;
              *(*(*(a1 + 16) + 4544) + 2064) = 0;
              v526 = v488;
              v527 = v489;
              v528 = v490;
              v529 = v491;
              v524 = *v487;
              v525 = *&v487[16];
              *v511 = 0;
              v510 = 0;
              *&v511[8] = 0;
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v510, a1, 88, 0);
              v164 = v510;
              v165 = *v511;
              v166 = v527;
              *(v510 + 32) = v526;
              *(v164 + 48) = v166;
              *(v164 + 64) = v528;
              *(v164 + 80) = v529;
              v167 = v525;
              v144 = &v506;
              *v164 = v524;
              *(v164 + 16) = v167;
              *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 8) = v165;
            }

            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::{lambda#1}::operator()(v512);
            ++v162;
          }

          while (v479 - 1 != v162);
        }

        v168 = *(a1 + 16);
        if (*(v168 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v168 + 2306) = 0;
          if (*(v168 + 2292) == 1 && !*(v168 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v168, 22, (v168 + 5544), (v168 + 5552), (v168 + 5560));
          }
        }

        *(*(*(a1 + 16) + 4544) + 2076) = 32 * WORD1(v491);
        v169 = *v507 + *v508;
        v170 = *(v509 + 16);
        v171 = *(v509 + 32);
        *(v170 + 2060) |= 4u;
        v172 = *(v170 + 4536);
        *(v170 + 4536) = v171;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v170, 22, v140, v169 + 120, 0);
        if (v172)
        {
          *(v170 + 4536) = v172;
        }
      }

      else
      {
        v152 = v494;
        v524 = 0uLL;
        *&v525 = 0;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v524, a1, 8, 0);
        v153 = *(&v524 + 1);
        *v524 = v479 | (v152 << 16);
        *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 16) = v153;
        if (v479)
        {
          for (i = 0; i != v479; ++i)
          {
            if ((BYTE14(v488) & 0xC) != 0 && i >= v151)
            {
              BYTE14(v488) &= 0xF3u;
              *(*(*(a1 + 16) + 4544) + 2064) = 0;
              v526 = v488;
              v527 = v489;
              v528 = v490;
              v529 = v491;
              v524 = *v487;
              v525 = *&v487[16];
              *v511 = 0;
              v510 = 0;
              *&v511[8] = 0;
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v510, a1, 88, 0);
              v156 = v510;
              v157 = *v511;
              v158 = v527;
              *(v510 + 32) = v526;
              *(v156 + 48) = v158;
              *(v156 + 64) = v528;
              *(v156 + 80) = v529;
              v159 = v525;
              v144 = &v506;
              *v156 = v524;
              *(v156 + 16) = v159;
              *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 8) = v157;
            }

            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::{lambda#1}::operator()(v512);
          }
        }
      }

      v173 = *(a1 + 16);
      if (*(v173 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
        *(v173 + 2306) = 0;
        if (*(v173 + 2292) == 1 && !*(v173 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v173, 22, (v173 + 5544), (v173 + 5552), (v173 + 5560));
        }
      }

      v174 = *(a1 + 16);
      v175 = *(a1 + 32);
      *(v174 + 2060) |= 4u;
      v176 = *(v174 + 4536);
      *(v174 + 4536) = v175;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v174, 22, v138, v428, 0);
      if (v176)
      {
        *(v174 + 4536) = v176;
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeTopDownBuilds(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuild>)::verify == 1)
      {
        v177 = *(v5 + 78);
        memset(v512, 0, 24);
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
        v178 = v512[0];
        **&v512[0] = v177;
        *(v178 + 8) = 51;
        *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v178 + 1);
      }

      if ((*(v5 + 15) & 0x400) != 0)
      {
        v188 = *(v5 + 74);
        v189 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 60, 0);
        v190 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 172, 0);
        v459 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 61, 0);
        v483 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 63, 0);
        v191 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 173, 0);
        v481 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 62, 0);
        v477 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 174, 0);
        v472 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 64, 0);
        v469 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 65, 0);
        v466 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 66, 0);
        v462 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 67, 0);
        v456 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 68, 0);
        v192 = *(v5 + 78);
        {
          {
          }

          {
          }

          if (shouldDumpOrVerifyBVHs(void)::once != -1)
          {
            dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
          }

          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify = 0;
        }

        *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 56) = *(v5 + 70);
        v193 = *(a1 + 16);
        if (*(v193 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v193 + 2306) = 0;
          if (*(v193 + 2292) == 1 && !*(v193 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v193, 22, (v193 + 5544), (v193 + 5552), (v193 + 5560));
          }
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify)
        {
          memset(v512, 0, 24);
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
          v194 = v512[0];
          **&v512[0] = v192;
          *(v194 + 8) = 0;
          v195 = *(a1 + 32);
          *(*(v195 + 24) + *(v195 + 4) + 32) = *(&v194 + 1);
          v196 = 1;
        }

        else
        {
          v196 = 0;
          v195 = *(a1 + 32);
        }

        v512[0] = xmmword_29D2F1C70;
        *&v512[1] = 1;
        v524 = xmmword_29D2F1C70;
        *&v525 = 1;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), v195, v189, v512, &v524);
        v205 = *(a1 + 16);
        if (*(v205 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v205 + 2306) = 0;
          if (*(v205 + 2292) == 1 && !*(v205 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v205, 22, (v205 + 5544), (v205 + 5552), (v205 + 5560));
          }
        }

        v474 = *(v5 + 71);
        if (*(v474 + 609) != 1)
        {
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify)
          {
            memset(v512, 0, 24);
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
            v209 = *(&v512[0] + 1);
            v208 = *&v512[0];
            **&v512[0] = v192;
            *(v208 + 8) = v196;
            v210 = *(a1 + 32);
            *(*(v210 + 24) + *(v210 + 4) + 32) = v209;
            ++v196;
          }

          else
          {
            v210 = *(a1 + 32);
          }

          v219 = *(v5 + 77);
          v220 = *(a1 + 16);
          *(v220 + 2060) |= 4u;
          v221 = *(v220 + 4536);
          *(v220 + 4536) = v210;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v220, 22, v190, v188, v219);
          if (v221)
          {
            *(v220 + 4536) = v221;
          }

          v222 = *(a1 + 16);
          if (*(v222 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
            *(v222 + 2306) = 0;
            if (*(v222 + 2292) == 1 && !*(v222 + 4976))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v222, 22, (v222 + 5544), (v222 + 5552), (v222 + 5560));
            }
          }

          goto LABEL_487;
        }

        v206 = *(v5 + 15);
        if ((v206 & 0x400) == 0)
        {
          v207 = *v5;
          if (!*v5)
          {
LABEL_487:
            if (*(v474 + 573) == 1)
            {
              {
                AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::kWideBuildMaxIters = 16;
              }

              if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::kWideBuildMaxIters >= 1)
              {
                v223 = 0;
                do
                {
                  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify)
                  {
                    memset(v512, 0, 24);
                    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
                    v225 = *(&v512[0] + 1);
                    v224 = *&v512[0];
                    **&v512[0] = v192;
                    *(v224 + 8) = v196;
                    v226 = *(a1 + 32);
                    *(*(v226 + 24) + *(v226 + 4) + 32) = v225;
                    v196 = (v196 + 1) | v196 & 0xFFFFFFFF00000000;
                  }

                  else
                  {
                    v226 = *(a1 + 32);
                  }

                  v227 = *(v5 + 77);
                  v228 = *(a1 + 16);
                  *(v228 + 2060) |= 4u;
                  v229 = *(v228 + 4536);
                  *(v228 + 4536) = v226;
                  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v228, 22, v483, v188 + 48, v227);
                  if (v229)
                  {
                    *(v228 + 4536) = v229;
                  }

                  v230 = *(a1 + 16);
                  if (*(v230 + 2292) == 1)
                  {
                    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
                    *(v230 + 2306) = 0;
                    if (*(v230 + 2292) == 1 && !*(v230 + 4976))
                    {
                      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v230, 22, (v230 + 5544), (v230 + 5552), (v230 + 5560));
                    }
                  }

                  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify)
                  {
                    memset(v512, 0, 24);
                    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
                    v232 = *(&v512[0] + 1);
                    v231 = *&v512[0];
                    **&v512[0] = v192;
                    *(v231 + 8) = v196;
                    v233 = *(a1 + 32);
                    *(*(v233 + 24) + *(v233 + 4) + 32) = v232;
                    v196 = (v196 + 1) | v196 & 0xFFFFFFFF00000000;
                  }

                  else
                  {
                    v233 = *(a1 + 32);
                  }

                  v234 = *(v5 + 77);
                  v235 = *(a1 + 16);
                  *(v235 + 2060) |= 4u;
                  v236 = *(v235 + 4536);
                  *(v235 + 4536) = v233;
                  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v235, 22, v191, v188 + 72, v234);
                  if (v236)
                  {
                    *(v235 + 4536) = v236;
                  }

                  v237 = *(a1 + 16);
                  if (*(v237 + 2292) == 1)
                  {
                    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
                    *(v237 + 2306) = 0;
                    if (*(v237 + 2292) == 1 && !*(v237 + 4976))
                    {
                      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v237, 22, (v237 + 5544), (v237 + 5552), (v237 + 5560));
                    }
                  }

                  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify)
                  {
                    memset(v512, 0, 24);
                    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
                    v239 = *(&v512[0] + 1);
                    v238 = *&v512[0];
                    **&v512[0] = v192;
                    *(v238 + 8) = v196;
                    v240 = *(a1 + 32);
                    *(*(v240 + 24) + *(v240 + 4) + 32) = v239;
                    v196 = (v196 + 1) | v196 & 0xFFFFFFFF00000000;
                  }

                  else
                  {
                    v240 = *(a1 + 32);
                  }

                  v241 = *(v5 + 77);
                  v242 = *(a1 + 16);
                  *(v242 + 2060) |= 4u;
                  v243 = *(v242 + 4536);
                  *(v242 + 4536) = v240;
                  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v242, 22, v483, v188 + 96, v241);
                  if (v243)
                  {
                    *(v242 + 4536) = v243;
                  }

                  v244 = *(a1 + 16);
                  if (*(v244 + 2292) == 1)
                  {
                    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
                    *(v244 + 2306) = 0;
                    if (*(v244 + 2292) == 1 && !*(v244 + 4976))
                    {
                      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v244, 22, (v244 + 5544), (v244 + 5552), (v244 + 5560));
                    }
                  }

                  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify)
                  {
                    memset(v512, 0, 24);
                    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
                    v246 = *(&v512[0] + 1);
                    v245 = *&v512[0];
                    **&v512[0] = v192;
                    *(v245 + 8) = v196;
                    v247 = *(a1 + 32);
                    *(*(v247 + 24) + *(v247 + 4) + 32) = v246;
                    v196 = (v196 + 1) | v196 & 0xFFFFFFFF00000000;
                  }

                  else
                  {
                    v247 = *(a1 + 32);
                  }

                  v248 = *(v5 + 77);
                  v249 = *(a1 + 16);
                  *(v249 + 2060) |= 4u;
                  v250 = *(v249 + 4536);
                  *(v249 + 4536) = v247;
                  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v249, 22, v191, v188 + 120, v248);
                  if (v250)
                  {
                    *(v249 + 4536) = v250;
                  }

                  v251 = *(a1 + 16);
                  if (*(v251 + 2292) == 1)
                  {
                    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
                    *(v251 + 2306) = 0;
                    if (*(v251 + 2292) == 1 && !*(v251 + 4976))
                    {
                      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v251, 22, (v251 + 5544), (v251 + 5552), (v251 + 5560));
                    }
                  }

                  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify)
                  {
                    memset(v512, 0, 24);
                    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
                    v253 = *(&v512[0] + 1);
                    v252 = *&v512[0];
                    **&v512[0] = v192;
                    *(v252 + 8) = v196;
                    v254 = *(a1 + 32);
                    *(*(v254 + 24) + *(v254 + 4) + 32) = v253;
                    v196 = (v196 + 1) | v196 & 0xFFFFFFFF00000000;
                  }

                  else
                  {
                    v254 = *(a1 + 32);
                  }

                  v255 = *(v5 + 77);
                  v256 = *(a1 + 16);
                  *(v256 + 2060) |= 4u;
                  v257 = *(v256 + 4536);
                  *(v256 + 4536) = v254;
                  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v256, 22, v481, v188 + 144, v255);
                  if (v257)
                  {
                    *(v256 + 4536) = v257;
                  }

                  v258 = *(a1 + 16);
                  if (*(v258 + 2292) == 1)
                  {
                    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
                    *(v258 + 2306) = 0;
                    if (*(v258 + 2292) == 1 && !*(v258 + 4976))
                    {
                      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v258, 22, (v258 + 5544), (v258 + 5552), (v258 + 5560));
                    }
                  }

                  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify)
                  {
                    memset(v512, 0, 24);
                    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
                    v260 = *(&v512[0] + 1);
                    v259 = *&v512[0];
                    **&v512[0] = v192;
                    *(v259 + 8) = v196;
                    v261 = *(a1 + 32);
                    *(*(v261 + 24) + *(v261 + 4) + 32) = v260;
                    v196 = (v196 + 1) | v196 & 0xFFFFFFFF00000000;
                  }

                  else
                  {
                    v261 = *(a1 + 32);
                  }

                  v262 = *(v5 + 77);
                  v263 = *(a1 + 16);
                  *(v263 + 2060) |= 4u;
                  v264 = *(v263 + 4536);
                  *(v263 + 4536) = v261;
                  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v263, 22, v477, v188 + 168, v262);
                  if (v264)
                  {
                    *(v263 + 4536) = v264;
                  }

                  v265 = *(a1 + 16);
                  if (*(v265 + 2292) == 1)
                  {
                    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
                    *(v265 + 2306) = 0;
                    if (*(v265 + 2292) == 1 && !*(v265 + 4976))
                    {
                      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v265, 22, (v265 + 5544), (v265 + 5552), (v265 + 5560));
                    }
                  }

                  ++v223;
                }

                while (v223 < AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::kWideBuildMaxIters);
              }
            }

            else
            {
              if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify)
              {
                memset(v512, 0, 24);
                AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
                v267 = *(&v512[0] + 1);
                v266 = *&v512[0];
                **&v512[0] = v192;
                *(v266 + 8) = v196;
                v268 = *(a1 + 32);
                *(*(v268 + 24) + *(v268 + 4) + 32) = v267;
                v196 = (v196 + 1) | v196 & 0xFFFFFFFF00000000;
              }

              else
              {
                v268 = *(a1 + 32);
              }

              v269 = *(v5 + 77);
              v270 = *(a1 + 16);
              *(v270 + 2060) |= 4u;
              v271 = *(v270 + 4536);
              *(v270 + 4536) = v268;
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v270, 22, v459, v188 + 24, v269);
              if (v271)
              {
                *(v270 + 4536) = v271;
              }

              v272 = *(a1 + 16);
              if (*(v272 + 2292) == 1)
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
                *(v272 + 2306) = 0;
                if (*(v272 + 2292) == 1 && !*(v272 + 4976))
                {
                  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v272, 22, (v272 + 5544), (v272 + 5552), (v272 + 5560));
                }
              }
            }

            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify)
            {
              memset(v512, 0, 24);
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
              v274 = *(&v512[0] + 1);
              v273 = *&v512[0];
              **&v512[0] = v192;
              *(v273 + 8) = v196;
              v275 = *(a1 + 32);
              *(*(v275 + 24) + *(v275 + 4) + 32) = v274;
              v196 = (v196 + 1) | v196 & 0xFFFFFFFF00000000;
            }

            else
            {
              v275 = *(a1 + 32);
            }

            v276 = *(v5 + 77);
            v277 = *(a1 + 16);
            *(v277 + 2060) |= 4u;
            v278 = *(v277 + 4536);
            *(v277 + 4536) = v275;
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v277, 22, v472, v188 + 192, v276);
            if (v278)
            {
              *(v277 + 4536) = v278;
            }

            v279 = *(a1 + 16);
            if (*(v279 + 2292) == 1)
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
              *(v279 + 2306) = 0;
              if (*(v279 + 2292) == 1 && !*(v279 + 4976))
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v279, 22, (v279 + 5544), (v279 + 5552), (v279 + 5560));
              }
            }

            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify)
            {
              memset(v512, 0, 24);
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
              v281 = *(&v512[0] + 1);
              v280 = *&v512[0];
              **&v512[0] = v192;
              *(v280 + 8) = v196;
              v282 = *(a1 + 32);
              *(*(v282 + 24) + *(v282 + 4) + 32) = v281;
              v196 = (v196 + 1) | v196 & 0xFFFFFFFF00000000;
            }

            else
            {
              v282 = *(a1 + 32);
            }

            v283 = *(v5 + 77);
            v284 = *(a1 + 16);
            *(v284 + 2060) |= 4u;
            v285 = *(v284 + 4536);
            *(v284 + 4536) = v282;
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v284, 22, v469, v188 + 216, v283);
            if (v285)
            {
              *(v284 + 4536) = v285;
            }

            v286 = *(a1 + 16);
            if (*(v286 + 2292) == 1)
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
              *(v286 + 2306) = 0;
              if (*(v286 + 2292) == 1 && !*(v286 + 4976))
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v286, 22, (v286 + 5544), (v286 + 5552), (v286 + 5560));
              }
            }

            v287 = *(a1 + 16);
            *(*(v287 + 4544) + 2036) = *(v474 + 622);
            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify)
            {
              memset(v512, 0, 24);
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
              v289 = *(&v512[0] + 1);
              v288 = *&v512[0];
              **&v512[0] = v192;
              *(v288 + 8) = v196;
              v290 = *(a1 + 32);
              *(*(v290 + 24) + *(v290 + 4) + 32) = v289;
              v196 = (v196 + 1) | v196 & 0xFFFFFFFF00000000;
              v287 = *(a1 + 16);
            }

            else
            {
              v290 = *(a1 + 32);
            }

            v291 = *(v5 + 77);
            *(v287 + 2060) |= 4u;
            v292 = *(v287 + 4536);
            *(v287 + 4536) = v290;
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v287, 22, v466, v188 + 264, v291);
            if (v292)
            {
              *(v287 + 4536) = v292;
            }

            v293 = *(a1 + 16);
            if (*(v293 + 2292) == 1)
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
              *(v293 + 2306) = 0;
              if (*(v293 + 2292) == 1 && !*(v293 + 4976))
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v293, 22, (v293 + 5544), (v293 + 5552), (v293 + 5560));
              }
            }

            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify)
            {
              memset(v512, 0, 24);
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
              v295 = *(&v512[0] + 1);
              v294 = *&v512[0];
              **&v512[0] = v192;
              *(v294 + 8) = v196;
              v296 = *(a1 + 32);
              *(*(v296 + 24) + *(v296 + 4) + 32) = v295;
              v196 = (v196 + 1) | v196 & 0xFFFFFFFF00000000;
            }

            else
            {
              v296 = *(a1 + 32);
            }

            v297 = *(v5 + 77);
            v298 = *(a1 + 16);
            *(v298 + 2060) |= 4u;
            v299 = *(v298 + 4536);
            *(v298 + 4536) = v296;
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v298, 22, v462, v188 + 288, v297);
            if (v299)
            {
              *(v298 + 4536) = v299;
            }

            if (*(v474 + 610) == 1)
            {
              if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify)
              {
                memset(v512, 0, 24);
                AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
                v301 = *(&v512[0] + 1);
                v300 = *&v512[0];
                **&v512[0] = v192;
                *(v300 + 8) = v196;
                v302 = *(a1 + 32);
                *(*(v302 + 24) + *(v302 + 4) + 32) = v301;
                v196 = (v196 + 1) | v196 & 0xFFFFFFFF00000000;
              }

              else
              {
                v302 = *(a1 + 32);
              }

              v303 = *(v5 + 77);
              v304 = *(a1 + 16);
              *(v304 + 2060) |= 4u;
              v305 = *(v304 + 4536);
              *(v304 + 4536) = v302;
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v304, 22, v456, v188 + 312, v303);
              if (v305)
              {
                *(v304 + 4536) = v305;
              }
            }

            if (v5[18] - 8 <= 0xFFFFFFFD)
            {
              if ((*(v474 + 611) & 1) == 0 && *(v5 + 17))
              {
                if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify == 1)
                {
                  memset(v512, 0, 24);
                  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
                  v306 = v512[0];
                  **&v512[0] = v192;
                  *(v306 + 8) = v196;
                  *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v306 + 1);
                }

                v307 = *(a1 + 16);
                if (*(v307 + 2292) == 1)
                {
                  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
                  *(v307 + 2306) = 0;
                  if (*(v307 + 2292) == 1 && !*(v307 + 4976))
                  {
                    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v307, 22, (v307 + 5544), (v307 + 5552), (v307 + 5560));
                  }
                }
              }

              v308 = [v457 buffer];
              v309 = [v457 bufferOffset];
              v310 = [v308 gpuAddress];
              v311 = [v308 length];
              *&v512[0] = v310 + v309;
              *(&v512[0] + 1) = v309;
              v512[1] = v311;
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyPPD(a1, v5, (v5 + 336), v512);
            }

            goto LABEL_804;
          }

          do
          {
LABEL_813:
            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSAHAwareBVH8(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&,AGXG18PFamilyRayTracingAccelerationStructure *)::verify)
            {
              memset(v512, 0, 24);
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
              v417 = *(&v512[0] + 1);
              v416 = *&v512[0];
              **&v512[0] = v192;
              *(v416 + 8) = v196;
              v418 = *(a1 + 32);
              *(*(v418 + 24) + *(v418 + 4) + 32) = v417;
              v196 = (v196 + 1) | v196 & 0xFFFFFFFF00000000;
            }

            else
            {
              v418 = *(a1 + 32);
            }

            v419 = *(v5 + 77);
            v420 = *(a1 + 16);
            *(v420 + 2060) |= 4u;
            v421 = *(v420 + 4536);
            *(v420 + 4536) = v418;
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v420, 22, v190, v188, v419);
            if (v421)
            {
              *(v420 + 4536) = v421;
            }

            v422 = *(a1 + 16);
            if (*(v422 + 2292) == 1)
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
              *(v422 + 2306) = 0;
              if (*(v422 + 2292) == 1 && !*(v422 + 4976))
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v422, 22, (v422 + 5544), (v422 + 5552), (v422 + 5560));
              }
            }

            --v207;
          }

          while (v207);
          goto LABEL_487;
        }

        v216 = *(v5 + 8);
        if (!*(v5 + 1) && *(v5 + 10) && !v5[18] && v5[12] == 3)
        {
          v217 = 0x3FFFFFFFLL;
          if ((v5[28] & 4) == 0)
          {
            v217 = 0xFFFFFFFLL;
          }

          v218 = *(v5 + 48) + -1.0;
          if (v218 < 0.0)
          {
            v218 = 0.0;
          }

          v216 += vcvtpd_u64_f64(v218 * v216);
          if (v217 < v216)
          {
            LODWORD(v216) = v217;
          }
        }

        if ((v206 & 2) != 0)
        {
          v313 = *(v5 + 40);
          v314 = v313 - 1;
          if (v313 <= 1)
          {
            v314 = 1;
          }

          LODWORD(v216) = v314 * v216;
          if (v216 <= 1)
          {
            LODWORD(v216) = 1;
          }

          if (v313 > 1)
          {
            LODWORD(v216) = v216 << v5[13];
            if (!v216)
            {
              v207 = 1;
              goto LABEL_813;
            }
          }
        }

        else if (v216 <= 1)
        {
          LODWORD(v216) = 1;
        }

        v315 = vcvtps_u32_f32((33 - __clz(~(-1 << -__clz(v216 - 1)))) * 1.75);
        if (v315 >= 0x20)
        {
          v315 = 32;
        }

        if (v315 <= 1)
        {
          v207 = 1;
        }

        else
        {
          v207 = v315;
        }

        goto LABEL_813;
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

        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&)::verify = 0;
      }

      v480 = *(v5 + 78);
      v179 = v5[18];
      v455 = *(v5 + 35);
      v451 = v179 - 8;
      if (v179 - 8 > 0xFFFFFFFD)
      {
        v197 = 0;
        v453 = 1;
        v198 = *(v5 + 14);
        v465 = 27;
        v468 = 26;
        v199 = 2;
        if (v198 <= 1)
        {
          if (v198)
          {
            v201 = 0;
            v182 = 0;
            if (v198 == 1)
            {
              v197 = 0;
              v201 = 0;
              v182 = 0;
              *(v455 + 292) = 2;
              v453 = 1;
              v465 = 27;
              v468 = 26;
              v199 = 10;
            }
          }

          else
          {
            v197 = 0;
            v201 = 0;
            v182 = 0;
            v453 = 1;
            *(v455 + 292) = 1;
            v465 = 27;
            v468 = 26;
            v199 = 9;
          }
        }

        else
        {
          v200 = *(v5 + 16);
          if (v198 == 2)
          {
            v444 = 0;
            v202 = 0;
            v203 = v200 == 1;
            if (v200 == 1)
            {
              v199 = 14;
            }

            else
            {
              v199 = 12;
            }

            v204 = 3;
            goto LABEL_644;
          }

          if (v198 == 3)
          {
            v197 = 0;
            v201 = 0;
            v182 = 0;
            *(v455 + 292) = 5;
            v453 = 1;
            v465 = 27;
            v468 = 26;
            v199 = 11;
          }

          else
          {
            v201 = 0;
            v182 = 0;
            if (v198 == 4)
            {
              v444 = 0;
              v202 = 0;
              v203 = v200 == 1;
              if (v200 == 1)
              {
                v199 = 15;
              }

              else
              {
                v199 = 13;
              }

              v204 = 6;
LABEL_644:
              if (v203)
              {
                ++v204;
              }

              *(v455 + 292) = v204;
              v471 = 113;
              v453 = 1;
              v465 = 115;
              v468 = 114;
              v449 = 103;
              v316 = 112;
              v475 = 1;
              goto LABEL_655;
            }
          }
        }

        goto LABEL_649;
      }

      v180 = *(v5 + 40);
      v181 = *(v5 + 10);
      if (*(v5 + 17) && v181)
      {
        v182 = *(v5 + 18) != 0;
        v183 = v180 > 1;
        v184 = v180 > 1;
        if (v183)
        {
          v185 = 115;
        }

        else
        {
          v185 = 27;
        }

        v465 = v185;
        if (v183)
        {
          v186 = 114;
        }

        else
        {
          v186 = 26;
        }

        v468 = v186;
        if (v183)
        {
          v187 = 113;
        }

        else
        {
          v187 = 24;
        }

        v471 = v187;
      }

      else
      {
        v211 = v180 > 1;
        v184 = v180 > 1;
        if (v211)
        {
          v212 = 115;
        }

        else
        {
          v212 = 27;
        }

        v465 = v212;
        if (v211)
        {
          v213 = 114;
        }

        else
        {
          v213 = 26;
        }

        v468 = v213;
        if (v211)
        {
          v214 = 113;
        }

        else
        {
          v214 = 24;
        }

        v471 = v214;
        v182 = 0;
        if (!v181)
        {
          v201 = 0;
          v197 = 0;
          v199 = 2;
          v453 = 1;
          goto LABEL_638;
        }
      }

      if (v179 != 3 && v5[18])
      {
        if (v184)
        {
          v201 = 103;
        }

        else
        {
          v201 = 0;
        }

        v215 = 1;
      }

      else
      {
        if (v184)
        {
          v201 = 104;
        }

        else
        {
          v201 = 1;
        }

        v215 = 8;
      }

      v453 = v215;
      if (v179 > 5)
      {
LABEL_635:
        v197 = 0;
        v199 = 2;
        goto LABEL_638;
      }

      v312 = 1 << v179;
      if ((v312 & 9) == 0)
      {
        if ((v312 & 0x12) != 0)
        {
          v197 = 0;
          if (v184)
          {
            v199 = 109;
          }

          else
          {
            v199 = 6;
          }
        }

        else
        {
          if (v184)
          {
            v199 = 111;
          }

          else
          {
            v199 = 8;
          }

          v197 = 1;
        }

LABEL_638:
        if (v471 == 24)
        {
          goto LABEL_649;
        }

        v449 = v201;
        v444 = __PAIR64__(v197, v182);
        v202 = 0;
LABEL_652:
        v475 = 1;
        goto LABEL_654;
      }

      if (v5[17] == 2)
      {
        if (v184)
        {
          v449 = v201;
          v444 = v182;
          v202 = 0;
          v471 = 113;
          v475 = 1;
          v465 = 115;
          v468 = 114;
          v199 = 107;
          goto LABEL_654;
        }

        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(2, v5, *(a1 + 44));
        v197 = 0;
        v465 = 27;
        v468 = 26;
        v199 = 4;
LABEL_649:
        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
        }

        v449 = v201;
        v444 = __PAIR64__(v197, v182);
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride <= 4)
        {
          v471 = 25;
          v475 = 8;
          v202 = 1;
          goto LABEL_654;
        }

        v202 = 0;
        v471 = 24;
        goto LABEL_652;
      }

      if (v5[17])
      {
        goto LABEL_635;
      }

      if (!v184)
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(0, v5, *(a1 + 44));
        v197 = 0;
        v465 = 27;
        v468 = 26;
        v199 = 2;
        goto LABEL_649;
      }

      v449 = v201;
      v444 = v182;
      v202 = 0;
      v471 = 113;
      v475 = 1;
      v465 = 115;
      v468 = 114;
      v199 = 105;
LABEL_654:
      v316 = 23;
LABEL_655:
      v317 = [v457 buffer];
      v318 = [v457 bufferOffset];
      v319 = [v317 gpuAddress];
      v320 = [v317 length];
      v463 = v319 + v318;
      *&v524 = v319 + v318;
      *(&v524 + 1) = v318;
      v525 = v320;
      *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 48) = *(v5 + 34);
      v321 = *(v5 + 15);
      v322 = v321 & 2;
      if (*(a1 + 44) >= 5u)
      {
        v323 = 28;
      }

      else
      {
        v323 = 16;
      }

      v324 = 24 * v323;
      v325 = 28 * v323;
      if ((v321 & 2) != 0)
      {
        v325 = v324;
      }

      if (v321)
      {
        v326 = v325;
      }

      else
      {
        v326 = v324;
      }

      v327 = *(v455 + 291);
      if (v327 == 1)
      {
        v328 = v202;
      }

      else
      {
        v328 = 0;
      }

      v442 = v326;
      v440 = *(v5 + 15);
      if (v328 == 1)
      {
        if (v321)
        {
          v329 = 2;
        }

        else
        {
          v329 = *(v455 + 282);
        }

        v330 = dword_29D2F2780[v329] + v326;
        v327 = 1;
      }

      else
      {
        v330 = 0;
      }

      v331 = (v330 * (0x20 / v475) + 15) & 0xFFFFFFF0;
      v332 = *(*(a1 + 16) + 4544);
      *(v332 + 2036) = v331;
      *(v455 + 366) = v331;
      if ((v327 - 1) > 1)
      {
        v334 = 0;
      }

      else
      {
        if (*(a1 + 44) >= 5u)
        {
          v333 = 820;
        }

        else
        {
          v333 = 484;
        }

        v334 = (v333 * (0x20 / v475) + 15) & 0x1FFF0;
      }

      *(v332 + 2040) = v334;
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&)::verify == 1)
      {
        memset(v512, 0, 24);
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
        v335 = v512[0];
        **&v512[0] = v480;
        *(v335 + 8) = 1000;
        *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v335 + 1);
        v336 = 1001;
      }

      else
      {
        v336 = 1000;
      }

      v484 = (v322 >> 1) ^ 0x101;
      v337 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v316, (v322 >> 1) ^ 0x101u);
      v512[0] = vdupq_n_s64(1uLL);
      *&v512[1] = 1;
      *v487 = v512[0];
      *&v487[16] = 1;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), v337, v512, v487);
      v338 = *(a1 + 16);
      if (*(v338 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
        *(v338 + 2306) = 0;
        if (*(v338 + 2292) == 1 && !*(v338 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v338, 22, (v338 + 5544), (v338 + 5552), (v338 + 5560));
        }
      }

      v447 = v199;
      v339 = AGX::BVHDescriptor::maxInnerNodeCount(v5);
      if (v339 <= 1)
      {
        v340 = 1;
      }

      else
      {
        v340 = v339;
      }

      v460 = v340;
      v341 = log2(v340);
      v478 = *v5;
      if (*v5)
      {
        v342 = 0;
        v343 = v341 / 3.0;
        do
        {
          memset(v512, 0, 24);
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 4, 0);
          v344 = *(&v512[0] + 1);
          **&v512[0] = v342;
          *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 56) = v344;
          memset(v512, 0, 24);
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 4, 0);
          v345 = *(&v512[0] + 1);
          **&v512[0] = v478;
          *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 64) = v345;
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&)::verify == 1)
          {
            memset(v512, 0, 24);
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
            v346 = v512[0];
            **&v512[0] = v480;
            *(v346 + 8) = v336;
            *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v346 + 1);
            v336 = (v336 + 1) | v336 & 0xFFFFFFFF00000000;
          }

          v144 = v144 & 0xFFFFFFFFFFFF0000 | v484;
          v347 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v471, v144);
          v348 = *(v5 + 38);
          memset(v512, 0, sizeof(v512));
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(a1, v347, v348 + 28, v512, 1, v475, v475);
          v349 = *(a1 + 16);
          if (*(v349 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
            *(v349 + 2306) = 0;
            if (*(v349 + 2292) == 1 && !*(v349 + 4976))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v349, 22, (v349 + 5544), (v349 + 5552), (v349 + 5560));
            }
          }

          v350 = v460;
          if (v342 < v343)
          {
            v350 = exp2f(v342 * 3.0);
          }

          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&)::verify == 1)
          {
            memset(v512, 0, 24);
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
            v351 = v512[0];
            **&v512[0] = v480;
            *(v351 + 8) = v336;
            *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v351 + 1);
            v336 = (v336 + 1) | v336 & 0xFFFFFFFF00000000;
          }

          v352 = *(v5 + 40);
          *&v512[0] = *(v5 + 38) + 28;
          *(&v512[0] + 1) = 28;
          *&v512[1] = v352;
          *(&v512[1] + 1) = *(v5 + 41);
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodePrefixSum(a1, v5 + 46, v5 + 54, v512, v350);
          v353 = *(a1 + 16);
          if (*(v353 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
            *(v353 + 2306) = 0;
            if (*(v353 + 2292) == 1 && !*(v353 + 4976))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v353, 22, (v353 + 5544), (v353 + 5552), (v353 + 5560));
            }
          }

          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&)::verify == 1)
          {
            memset(v512, 0, 24);
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
            v354 = v512[0];
            **&v512[0] = v480;
            *(v354 + 8) = v336;
            *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v354 + 1);
            v336 = (v336 + 1) | v336 & 0xFFFFFFFF00000000;
          }

          v355 = *(v5 + 40);
          *&v512[0] = *(v5 + 38) + 28;
          *(&v512[0] + 1) = 28;
          *&v512[1] = v355;
          *(&v512[1] + 1) = *(v5 + 41);
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodePrefixSum(a1, v5 + 50, v5 + 58, v512, v350);
          v356 = *(a1 + 16);
          if (*(v356 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
            *(v356 + 2306) = 0;
            if (*(v356 + 2292) == 1 && !*(v356 + 4976))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v356, 22, (v356 + 5544), (v356 + 5552), (v356 + 5560));
            }
          }

          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&)::verify == 1)
          {
            memset(v512, 0, 24);
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
            v357 = v512[0];
            **&v512[0] = v480;
            *(v357 + 8) = v336;
            *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v357 + 1);
            v336 = (v336 + 1) | v336 & 0xFFFFFFFF00000000;
          }

          v316 = v316 & 0xFFFFFFFFFFFF0000 | v484;
          v358 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v468, v316);
          v359 = *(v5 + 38);
          memset(v512, 0, sizeof(v512));
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(a1, v358, v359 + 28, v512, 1, 0, 1);
          v360 = *(a1 + 16);
          if (*(v360 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
            *(v360 + 2306) = 0;
            if (*(v360 + 2292) == 1 && !*(v360 + 4976))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v360, 22, (v360 + 5544), (v360 + 5552), (v360 + 5560));
            }
          }

          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&)::verify)
          {
            memset(v512, 0, 24);
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
            v361 = v512[0];
            **&v512[0] = v480;
            *(v361 + 8) = v336;
            v362 = *(*(a1 + 32) + 24) + *(*(a1 + 32) + 4);
            v363 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&)::verify;
            *(v362 + 32) = *(&v361 + 1);
            *(v362 + 40) = v463;
            if (v363)
            {
              memset(v512, 0, 24);
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
              v364 = v512[0];
              **&v512[0] = v480;
              *(v364 + 8) = (v336 + 1) | v336 & 0xFFFFFFFF00000000;
              *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v364 + 1);
              v336 = (v336 + 2) | v336 & 0xFFFFFFFF00000000;
            }

            else
            {
              v336 = (v336 + 1) | v336 & 0xFFFFFFFF00000000;
            }
          }

          else
          {
            *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 40) = v463;
          }

          v199 = v199 & 0xFFFFFFFFFFFF0000 | v484;
          v365 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v465, v199);
          v512[0] = vdupq_n_s64(1uLL);
          *&v512[1] = 1;
          *v487 = v512[0];
          *&v487[16] = 1;
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), v365, v512, v487);
          ++v342;
        }

        while (v478 != v342);
      }

      if (v451 >= 0xFFFFFFFE)
      {
        v366 = v447;
      }

      else
      {
        v366 = v447;
        if (*(v455 + 281) == 1)
        {
          *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 80) = [*(a1 + 24) gpuAddress];
        }

        if (HIDWORD(v444))
        {
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&)::verify == 1)
          {
            memset(v512, 0, 24);
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
            v367 = v512[0];
            **&v512[0] = v480;
            *(v367 + 8) = v336;
            *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v367 + 1);
            v336 = (v336 + 1) | v336 & 0xFFFFFFFF00000000;
          }

          v368 = *(v5 + 9);
          if (v368)
          {
            v369 = *(v455 + 192);
            if (v369)
            {
              v370 = *(v5 + 10);
              v371 = *(*(a1 + 32) + 24) + *(*(a1 + 32) + 4);
              *(v371 + 40) = v463;
              *(v371 + 88) = v463 + 152;
              memset(v512, 0, 24);
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 24, 0);
              v372 = v512[0];
              **&v512[0] = *(v5 + 42);
              *(v372 + 8) = v370;
              *(v372 + 12) = v368;
              *(v372 + 16) = v369;
              *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 96) = *(&v372 + 1);
              v373 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 128, 0);
              *&v512[0] = v368;
              *(&v512[0] + 1) = v369;
              *&v512[1] = 1;
              *v487 = xmmword_29D2F1C70;
              *&v487[16] = 1;
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), v373, v512, v487);
            }
          }
        }
      }

      {
      }

      v374 = v524;
      *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 40) = v524;
      v375 = *(a1 + 16);
      if (*(v375 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
        *(v375 + 2306) = 0;
        if (*(v375 + 2292) == 1 && !*(v375 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v375, 22, (v375 + 5544), (v375 + 5552), (v375 + 5560));
        }
      }

      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&)::verify == 1)
      {
        memset(v512, 0, 24);
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
        v376 = v512[0];
        **&v512[0] = v480;
        *(v376 + 8) = v336;
        *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v376 + 1);
        v336 = (v336 + 1) | v336 & 0xFFFFFFFF00000000;
      }

      v377 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v366, v484);
      v378 = *(v5 + 38);
      memset(v512, 0, sizeof(v512));
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(a1, v377, v378 + 16, v512, 1, 0, 1);
      if (*(v455 + 281) == 1)
      {
        *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 80) = [*(a1 + 24) gpuAddress];
      }

      v379 = *(a1 + 16);
      if (*(v379 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
        *(v379 + 2306) = 0;
        if (*(v379 + 2292) == 1 && !*(v379 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v379, 22, (v379 + 5544), (v379 + 5552), (v379 + 5560));
        }
      }

      v380 = *(v455 + 291);
      if (v453 < 2)
      {
        v382 = 0;
      }

      else
      {
        if (v380 == 2)
        {
          if (*(a1 + 44) >= 5u)
          {
            v383 = 1008;
          }

          else
          {
            v383 = 576;
          }
        }

        else if (v380 == 1)
        {
          if (v440)
          {
            v381 = 2;
          }

          else
          {
            v381 = *(v455 + 282);
          }

          v383 = dword_29D2F2780[v381] + v442;
          if (v383 <= 0xE0)
          {
            v383 = 224;
          }
        }

        else
        {
          v383 = 224;
        }

        v382 = 2 * v383;
        if (v451 <= 0xFFFFFFFD && *(v455 + 281) == 1)
        {
          v384 = *(a1 + 44);
          if (v384 >= 2)
          {
            v385 = v384 >= 5 ? 2224 : 2032;
            v386 = v385 + v442;
            if (v382 <= v386)
            {
              v382 = v386;
            }
          }
        }
      }

      v387 = (0x20 / v453 * v382 + 15) & 0xFFFFFFF0;
      *(v455 + 368) = (0x20 / v453 * v382 + 15) & 0xFFF0;
      v388 = *(*(a1 + 16) + 4544);
      *(v388 + 2036) = v387;
      if ((v380 - 1) > 1)
      {
        v390 = 0;
      }

      else
      {
        if (*(a1 + 44) >= 5u)
        {
          v389 = 820;
        }

        else
        {
          v389 = 484;
        }

        v390 = (v389 * (0x20 / v453) + 15) & 0x1FFF0;
      }

      *(v388 + 2040) = v390;
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&)::verify == 1)
      {
        memset(v512, 0, 24);
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
        v391 = v512[0];
        **&v512[0] = v480;
        *(v391 + 8) = v336;
        *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v391 + 1);
        v336 = (v336 + 1) | v336 & 0xFFFFFFFF00000000;
      }

      v392 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v449, v484);
      v393 = *(v5 + 38);
      memset(v512, 0, sizeof(v512));
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(a1, v392, v393 + 12, v512, 1, v453, v453);
      v394 = *(a1 + 16);
      if (*(v394 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
        *(v394 + 2306) = 0;
        if (*(v394 + 2292) == 1 && !*(v394 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v394, 22, (v394 + 5544), (v394 + 5552), (v394 + 5560));
        }
      }

      if (v451 >= 0xFFFFFFFE)
      {
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&)::verify == 1)
        {
          memset(v512, 0, 24);
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
          v401 = v512[0];
          **&v512[0] = v480;
          *(v401 + 8) = v336;
          *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v401 + 1);
          v336 = (v336 + 1) | v336 & 0xFFFFFFFF00000000;
        }

        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyMotionTransforms(a1, v5, &v524);
      }

      else
      {
        if (v444)
        {
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&)::verify == 1)
          {
            memset(v512, 0, 24);
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
            v395 = v512[0];
            **&v512[0] = v480;
            *(v395 + 8) = v336;
            *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v395 + 1);
            v336 = (v336 + 1) | v336 & 0xFFFFFFFF00000000;
          }

          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyPPD(a1, v5, (v5 + 336), &v524);
        }

        if (*(v5 + 42))
        {
          v396 = *(v5 + 10);
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&)::verify == 1)
          {
            memset(v512, 0, 24);
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
            v397 = v512[0];
            **&v512[0] = v480;
            *(v397 + 8) = v336;
            *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v397 + 1);
            v336 = (v336 + 1) | v336 & 0xFFFFFFFF00000000;
          }

          memset(v512, 0, 24);
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 8, 0);
          v398 = v512[0];
          v399 = *&v512[1];
          **&v512[0] = 0;
          *&v512[0] = *(&v398 + 1);
          *(&v512[0] + 1) = v398;
          *&v512[1] = 8;
          *(&v512[1] + 1) = v399;
          v400 = *(v5 + 42);
          *v487 = (v374 + 80);
          *&v487[16] = v525;
          v510 = v374 + 112;
          *v511 = 48;
          *&v511[8] = v525;
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeStridedCopy(a1, v400 + 104, v512, 144, v396, 1u, 8, v487, &v510, 8);
        }

        *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 40) = v374;
      }

      if (*(v455 + 284) == 1)
      {
        memset(v487, 0, 24);
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v487, a1, 8, 0);
        *&v512[0] = *&v487[8];
        *(&v512[0] + 1) = *v487;
        *&v512[1] = 8;
        *(&v512[1] + 1) = *&v487[16];
        **v487 = 0;
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&)::verify == 1)
        {
          memset(v487, 0, 24);
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v487, a1, 16, 0);
          v402 = *v487;
          **v487 = v480;
          *(v402 + 8) = v336;
          *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v402 + 1);
          v336 = (v336 + 1) | v336 & 0xFFFFFFFF00000000;
        }

        v403 = *(v5 + 66);
        v404 = v525;
        *v487 = v374 + 120;
        *&v487[8] = 56;
        *&v487[16] = v525;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeStridedCopy(a1, v403, v512, 4, 0x44, 1u, 4, &v524, v487, 4);
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&)::verify == 1)
        {
          memset(v487, 0, 24);
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v487, a1, 16, 0);
          v405 = *v487;
          **v487 = v480;
          *(v405 + 8) = v336;
          *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v405 + 1);
          v336 = (v336 + 1) | v336 & 0xFFFFFFFF00000000;
        }

        v406 = *(v5 + 62);
        v407 = *(v5 + 68);
        *v487 = *(v5 + 66) + 256;
        *&v487[8] = 256;
        *&v487[16] = v407;
        *&v487[24] = *(v5 + 69);
        v510 = v374 + 272;
        *v511 = 272;
        *&v511[8] = v404;
        v507 = (v374 + 120);
        v508 = 56;
        v509 = v404;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeStridedCopy(a1, v406, v512, 4, v487, 0, 4, &v510, &v507, 4);
      }

      v408 = *(a1 + 16);
      if (*(v408 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
        *(v408 + 2306) = 0;
        if (*(v408 + 2292) == 1 && !*(v408 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v408, 22, (v408 + 5544), (v408 + 5552), (v408 + 5560));
        }
      }

      *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 40) = v374;
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeEncodeRiaBvh(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuffers const&)::verify == 1)
      {
        memset(v512, 0, 24);
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v512, a1, 16, 0);
        v409 = v512[0];
        **&v512[0] = v480;
        *(v409 + 8) = v336;
        *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = *(&v409 + 1);
      }

      v410 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 183, 0);
      v512[0] = vdupq_n_s64(1uLL);
      *&v512[1] = 1;
      *v487 = v512[0];
      *&v487[16] = 1;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), v410, v512, v487);
LABEL_804:
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeTopDownBuilds(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownBuild>)::verify == 1)
      {
        v411 = *(v5 + 79);
        v412 = [objc_msgSend(v457 "buffer")];
        v413 = [v457 bufferOffset];
        v414 = *(v5 + 8);
        v415 = **(a1 + 16);
        v485[0] = MEMORY[0x29EDCA5F8];
        v485[1] = 3221225472;
        v485[2] = ___ZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE19encodeTopDownBuildsENS_4SpanINS6_12TopDownBuildEEE_block_invoke;
        v485[3] = &__block_descriptor_52_e28_v16__0___MTLCommandBuffer__8l;
        v486 = v414;
        v485[4] = v413 + v412;
        v485[5] = v411;
        [v415 addCompletedHandler:v485];
      }

      {
        {
        }
      }

      v4 = v427 + 1;
    }

    while (v427 + 1 != v425);
  }
}

uint64_t AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeTrianglePairingForBvh(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
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
      v28 = *(a2 + 40);
      if (v28)
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v27 = (a4 | *(a2 + 15)) & 1;
        v10 = a3 + 48;
        do
        {
          v17 = *(v10 + 44);
          if (v17)
          {
            if (*(v10 - 16))
            {
              v18 = *(v10 + 19) >> 4;
            }

            else
            {
              v19 = 3 * v17;
              if ((3 * v17) >= 0x101)
              {
                if (v19 >= 0x10001)
                {
                  if (v19 < 0x1000001)
                  {
                    v18 = 3;
                  }

                  else
                  {
                    v18 = 4;
                  }
                }

                else
                {
                  v18 = 2;
                }
              }

              else
              {
                v18 = 1;
              }
            }

            if (v17 >> 13)
            {
              v20 = 1024;
            }

            else
            {
              v20 = 32;
            }

            v34 = 0;
            v35 = 0;
            v36 = 0;
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v34, v6, 144, 0);
            v21 = v34;
            *(*(*(v6 + 32) + 24) + *(*(v6 + 32) + 4) + 40) = v35;
            *(v21 + 140) = v27;
            *(v21 + 141) = v27;
            *(v21 + 96) = v7;
            *(v21 + 104) = v8;
            *(v21 + 112) = v9;
            *v21 = *(v10 - 16);
            *(v21 + 8) = *(v10 - 48);
            *(v21 + 120) = *(v10 + 19) >> 4;
            *(v21 + 124) = v18;
            *(v21 + 128) = *(v10 + 8);
            *(v21 + 136) = *(v10 + 16);
            *(v21 + 16) = *(a5 + 8);
            *(v21 + 72) = *(a5 + 16);
            *(v21 + 24) = *(a5 + 24);
            *(v21 + 40) = *(a5 + 40);
            *(v21 + 88) = *(a5 + 48);
            *(v21 + 48) = *a5;
            *(v21 + 56) = *v10;
            *(v21 + 142) = *(v10 + 18) != 0;
            *(v21 + 132) = v20;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v31, v6, 4, 1);
            v22 = v32;
            *v31 = 0;
            *(v21 + 80) = v22;
            v37 = 0;
            v38 = 0uLL;
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v37, v6, 8, 0);
            v23 = v38.i64[0];
            *v37 = v17;
            *(*(*(v6 + 32) + 24) + *(*(v6 + 32) + 4) + 48) = v23;
            Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(v6, 136, 0);
            v25 = *(Pipeline + 456);
            v37 = (v17 + 31) & 0xFFFFFFE0;
            v38 = vdupq_n_s64(1uLL);
            v29 = v25;
            v30 = v38;
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(v6 + 16), *(v6 + 32), Pipeline, &v37, &v29);
            v26 = *(v6 + 16);
            if (*(v26 + 2292) == 1)
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(v6 + 16), 22, 0, 0, 0);
              *(v26 + 2306) = 0;
              if (*(v26 + 2292) == 1 && !*(v26 + 4976))
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v26, 22, (v26 + 5544), (v26 + 5552), (v26 + 5560));
              }
            }

            v7 += v17;
            v11 = (((4 * v18 * v17) + 31) & 0x1FFFFFFE0) + v8;
            if (v17 >> 13)
            {
              v12 = 139;
            }

            else
            {
              v12 = 138;
            }

            v13 = v17 + v20;
            if (v17 >> 13)
            {
              v14 = 10;
            }

            else
            {
              v14 = 5;
            }

            v15 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(v6, v12, 0);
            v37 = 32 * (((v13 - 1) >> v14) & 0x7FFFFFF);
            v38 = vdupq_n_s64(1uLL);
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(v6 + 16), *(v6 + 32), v15, &v37, &xmmword_29D2F5318);
            *(v10 - 8) = *(v10 - 16);
            *(v10 - 16) = v8 + *(a5 + 40);
            HIDWORD(v16) = v18;
            LODWORD(v16) = *(v10 + 19) << 24;
            *(v10 + 19) = v16 >> 28;
            v8 = v11;
          }

          ++v9;
          v10 += 144;
        }

        while (v28 != v9);
      }

      return 0;
    }
  }

  return result;
}

uint64_t ___ZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE19encodeTopDownBuildsENS_4SpanINS6_12TopDownBuildEEE_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  snprintf(__str, 0x100uLL, "Top-down BVH Builder - GPUVA (%llx) - leaf count: %u", *(a1 + 32), *(a1 + 48));
  return bvhPrintDebugBufferContents(*(a1 + 40), __str);
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, int a7)
{
  v13 = (*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4));
  *v13 = a3;
  v13[3] = *a4;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v24, a1, 40, 1);
  v14 = v24;
  v15 = v25;
  v16 = v26;
  v17 = v25 + 24;
  *(v24 + 32) = a6;
  *(v14 + 36) = a7;
  *(v14 + 28) = a5;
  *(v14 + 24) = *a4 != 0;
  v18 = *(*(a1 + 32) + 24) + *(*(a1 + 32) + 4);
  *(v18 + 8) = v17;
  *(v18 + 16) = v15;
  *v14 = xmmword_29D2F2440;
  *(v14 + 16) = 0x100000001;
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 132, 0);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), Pipeline, qword_29D2F5330, qword_29D2F5330);
  v20 = *(a1 + 16);
  if (*(v20 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
    *(v20 + 2306) = 0;
    if (*(v20 + 2292) == 1 && !*(v20 + 4976))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v20, 22, (v20 + 5544), (v20 + 5552), (v20 + 5560));
    }
  }

  v21 = *(a1 + 16);
  v22 = *(a1 + 32);
  *(v21 + 2060) |= 4u;
  v23 = *(v21 + 4536);
  *(v21 + 4536) = v22;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v21, 22, a2, v15, v16);
  if (v23)
  {
    *(v21 + 4536) = v23;
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodePrefixSum(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, unsigned int a5)
{
  if (a5)
  {
    if (a5 > 0x1000)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeSubPrefixSum(a1, *a2, a3, a4, a5);
      v10 = (a5 + 4095) >> 12;
      *&v17[0] = *a3 + 4 * v10;
      *(&v17[0] + 1) = 4 * v10;
      v11 = a3[3];
      *&v17[1] = a3[2];
      *(&v17[1] + 1) = v11;
      v15 = 0u;
      v16 = 0u;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodePrefixSum(a1, a3, v17, &v15);
      v12 = (*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4));
      v12[9] = *a2;
      v12[10] = *a3;
      v13 = *a4;
      if (!*a4)
      {
        memset(v17, 0, 24);
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v17, a1, 4, 0);
        v13 = *(&v17[0] + 1);
        **&v17[0] = a5;
        v12 = (*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4));
      }

      v12[11] = v13;
      Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 182, 0);
      *&v17[0] = ((((a5 + 3) >> 2) + 1023) & 0x7FFFFC00) - 1024;
      *(v17 + 8) = vdupq_n_s64(1uLL);
      v15 = xmmword_29D2F2430;
      *&v16 = 1;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), Pipeline, v17, &v15);
    }

    else
    {
      memset(v17, 0, sizeof(v17));
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeSubPrefixSum(a1, *a2, v17, a4, a5);
    }
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyMotionTransforms(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + 18);
  if (v5 & 0xFE) == 6 && (*(a2 + 15))
  {
    v27 = v3;
    v28 = v4;
    v8 = *(a2 + 88);
    if (v5 == 7)
    {
      v9 = *(a2 + 96);
    }

    else
    {
      v10 = *(a2 + 56);
      v25 = 0;
      v26 = 0uLL;
      v11 = a2;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v25, a1, 4, 0);
      a2 = v11;
      v9 = v26.i64[0];
      *v25 = v10;
    }

    v12 = *(a2 + 104);
    v13 = *(a2 + 128);
    if (v13 == 1)
    {
      v14 = 64;
    }

    else
    {
      v14 = 48;
    }

    v15 = v13 == 0;
    v16 = *(a2 + 120) == 1;
    v25 = 0;
    v26 = 0uLL;
    v17 = a2;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v25, a1, 32, 0);
    v18 = v25;
    v19 = v26.i64[0];
    *v25 = v8;
    *(v18 + 8) = v9;
    *(v18 + 16) = v12;
    *(v18 + 20) = v14;
    *(v18 + 24) = v15;
    *(v18 + 25) = v16;
    v20 = *a3 + 136;
    v21 = (*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4));
    v21[5] = *a3;
    v21[11] = v20;
    v21[16] = v19;
    Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 56, 0);
    if (*(v17 + 56))
    {
      v25 = *(v17 + 56);
      v26 = vdupq_n_s64(1uLL);
      v23 = xmmword_29D2F1C70;
      v24 = 1;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), Pipeline, &v25, &v23);
    }
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyPPD(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a3 + 8);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v33, a1, 8, 0);
  v9 = v33;
  v10 = v34;
  v11 = v35;
  *v33 = 0;
  v33 = v10;
  v34 = v9;
  v35 = 8;
  v36 = v11;
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

      Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 129, 0);
      v25 = *(a1 + 32);
      v26 = *(v25 + 24) + *(v25 + 4);
      *(v26 + 40) = *a4;
      *(v26 + 96) = *v5;
      v30 = *(a2 + 40);
      v31 = vdupq_n_s64(1uLL);
      v27 = v23;
      v28 = v31;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), v25, Pipeline, &v30, &v27);
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
            v30 = *a4 + v16;
            v31.i64[0] = v16;
            v21 = a4[3];
            v31.i64[1] = a4[2];
            v32 = v21;
            v27 = v20 + 136;
            v28.i64[0] = 72;
            v28.i64[1] = v31.i64[1];
            v29 = v21;
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeStridedCopy(a1, v17, &v33, v18, v15, v5, v19, &v30, &v27, *(v14 - 7));
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

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeStridedCopy(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t *a5, unsigned __int8 a6, int a7, uint64_t *a8, uint64_t *a9, int a10)
{
  if (a6)
  {
    if (!a5)
    {
      return;
    }

    v30 = a6;
    v28 = a3;
    v29 = a2;
    v14 = a8;
    if (a6 == 1)
    {
      v33 = 0;
      v34 = 0uLL;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v33, a1, 8, 0);
      v15 = v34.i64[0];
      *v33 = a5;
    }

    else
    {
      v15 = *a5;
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
    v28 = a3;
    v29 = a2;
    v14 = a8;
    v30 = 0;
    v15 = *a5;
    v16 = 1;
  }

  v33 = 0;
  v34 = 0uLL;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v33, a1, 4, 0);
  v17 = v34.i64[0];
  *v33 = a4;
  v33 = 0;
  v34 = 0uLL;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v33, a1, 4, 0);
  v18 = v34.i64[0];
  *v33 = a7;
  v33 = 0;
  v34 = 0uLL;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v33, a1, 4, 0);
  v19 = v34.i64[0];
  *v33 = a10;
  v20 = *v14;
  v21 = *a9;
  v22 = *v28;
  v33 = 0;
  v34 = 0uLL;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v33, a1, 72, 0);
  v23 = v33;
  v24 = v34.i64[0];
  *v33 = v20;
  *(v23 + 8) = v21;
  *(v23 + 16) = v29;
  *(v23 + 24) = v22;
  *(v23 + 32) = v15;
  *(v23 + 40) = v18;
  *(v23 + 48) = v19;
  *(v23 + 56) = v17;
  *(v23 + 64) = v16;
  *(v23 + 68) = 0;
  *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 96) = v24;
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 127, 0);
  if (v30)
  {
    v33 = ((a5 + v16 - 1) / v16);
    v34 = vdupq_n_s64(1uLL);
    v31 = xmmword_29D2F1C70;
    v32 = 1;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), Pipeline, &v33, &v31);
  }

  else
  {
    v33 = 0;
    v34 = 0uLL;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v33, a1, 4, 1);
    v26 = v33;
    v27 = v34;
    *v33 = v16;
    v33 = v27.i64[0];
    v34.i64[0] = v26;
    v34.i64[1] = 4;
    v35 = v27.i64[1];
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(a1, Pipeline, v15, &v33, 1, 0, 1);
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v8 = *a4;
  v9 = *(a4 + 2);
  v10 = *a5;
  v11 = *(a5 + 2);
  *(a1 + 2060) |= 4u;
  v6 = *(a1 + 4536);
  *(a1 + 4536) = a2;
  v7 = *(a1 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(a1, a3);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelCommonImpl(a1, &v10, &v8);
  if (*(a1 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(a1, 22, 0, 0, 0);
  }

  if (v7)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(a1, v7);
  }

  if (v6)
  {
    *(a1 + 4536) = v6;
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeSubPrefixSum(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v8 = (*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4));
  v8[9] = a2;
  v9 = *a3;
  if (!*a3)
  {
    v9 = a2;
  }

  v8[10] = v9;
  v10 = *a4;
  if (!*a4)
  {
    v15 = 0;
    v16 = 0uLL;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v15, a1, 4, 0);
    v10 = v16.i64[0];
    *v15 = a5;
    v8 = (*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4));
  }

  v8[11] = v10;
  if (*a3)
  {
    v11 = 181;
  }

  else
  {
    v11 = 180;
  }

  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v11, 0);
  v15 = (((a5 + 3) >> 2) + 1023) & 0x7FFFFC00;
  v16 = vdupq_n_s64(1uLL);
  v13 = xmmword_29D2F2430;
  v14 = 1;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), Pipeline, &v15, &v13);
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::_topDownEncodeBuildBVH(AGX::BVHDescriptor const&,MTL4BufferRange,unsigned long,MTL4BufferRange,unsigned long,GBVHBindings,GBVHSettings,unsigned long long)::{lambda(unsigned int)#1}::operator()(uint64_t a1)
{
  if (**a1)
  {
    v2 = 0;
    v3 = *(a1 + 16);
    do
    {
      v4 = *(v3 + 16);
      if (*(v4 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(v3 + 16), 22, 0, 0, 0);
        *(v4 + 2306) = 0;
        if (*(v4 + 2292) == 1 && !*(v4 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v4, 22, (v4 + 5544), (v4 + 5552), (v4 + 5560));
        }
      }

      if ((*(*(a1 + 24) + 45) & 4) != 0)
      {
        v5 = *(a1 + 40);
        v6 = **(a1 + 48);
        v7 = *(v5 + 16);
        v8 = **v5 + **(v5 + 8);
        v9 = *(v7 + 16);
        v10 = *(v7 + 32);
        *(v9 + 2060) |= 4u;
        v11 = *(v9 + 4536);
        *(v9 + 4536) = v10;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v9, 22, v6, v8 + 48, 0);
        if (v11)
        {
          *(v9 + 4536) = v11;
        }
      }

      v12 = *(a1 + 40);
      v13 = **(a1 + 56);
      v14 = v12[2];
      v15 = **v12;
      v16 = *v12[1];
      v17 = v14[2];
      v18 = v14[4];
      *(v17 + 2060) |= 4u;
      v19 = *(v17 + 4536);
      *(v17 + 4536) = v18;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v17, 22, v13, v16 + v15, 0);
      if (v19)
      {
        *(v17 + 4536) = v19;
      }

      if ((*(*(a1 + 24) + 45) & 4) != 0)
      {
        v20 = *(v3 + 16);
        if (*(v20 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(v3 + 16), 22, 0, 0, 0);
          *(v20 + 2306) = 0;
          if (*(v20 + 2292) == 1 && !*(v20 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v20, 22, (v20 + 5544), (v20 + 5552), (v20 + 5560));
          }
        }

        v21 = *(a1 + 40);
        v22 = **(a1 + 64);
        v23 = *(v21 + 16);
        v24 = **v21 + **(v21 + 8);
        v25 = *(v23 + 16);
        v26 = *(v23 + 32);
        *(v25 + 2060) |= 4u;
        v27 = *(v25 + 4536);
        *(v25 + 4536) = v26;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v25, 22, v22, v24 + 72, 0);
        if (v27)
        {
          *(v25 + 4536) = v27;
        }

        if ((*(*(a1 + 24) + 46) & 0xC) != 0)
        {
          v28 = *(v3 + 16);
          if (*(v28 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(v3 + 16), 22, 0, 0, 0);
            *(v28 + 2306) = 0;
            if (*(v28 + 2292) == 1 && !*(v28 + 4976))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v28, 22, (v28 + 5544), (v28 + 5552), (v28 + 5560));
            }
          }

          v29 = *(a1 + 40);
          v30 = **(a1 + 72);
          v31 = *(v29 + 16);
          v32 = **v29 + **(v29 + 8);
          v33 = *(v31 + 16);
          v34 = *(v31 + 32);
          *(v33 + 2060) |= 4u;
          v35 = *(v33 + 4536);
          *(v33 + 4536) = v34;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v33, 22, v30, v32 + 96, 0);
          if (v35)
          {
            *(v33 + 4536) = v35;
          }
        }

        if (**(a1 + 80) == 1 && (*(*(a1 + 24) + 45) & 0x40) == 0)
        {
          v36 = *(v3 + 16);
          if (*(v36 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(v3 + 16), 22, 0, 0, 0);
            *(v36 + 2306) = 0;
            if (*(v36 + 2292) == 1 && !*(v36 + 4976))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v36, 22, (v36 + 5544), (v36 + 5552), (v36 + 5560));
            }
          }

          v37 = *(a1 + 40);
          v38 = **(a1 + 88);
          v39 = *(v37 + 16);
          v40 = **v37 + **(v37 + 8);
          v41 = *(v39 + 16);
          v42 = *(v39 + 32);
          *(v41 + 2060) |= 4u;
          v43 = *(v41 + 4536);
          *(v41 + 4536) = v42;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v41, 22, v38, v40 + 96, 0);
          if (v43)
          {
            *(v41 + 4536) = v43;
          }
        }

        v44 = *(v3 + 16);
        if (*(v44 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(v3 + 16), 22, 0, 0, 0);
          *(v44 + 2306) = 0;
          if (*(v44 + 2292) == 1 && !*(v44 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v44, 22, (v44 + 5544), (v44 + 5552), (v44 + 5560));
          }
        }

        v45 = *(a1 + 40);
        v46 = **(a1 + 96);
        v47 = *(v45 + 16);
        v48 = **v45 + **(v45 + 8);
        v49 = *(v47 + 16);
        v50 = *(v47 + 32);
        *(v49 + 2060) |= 4u;
        v51 = *(v49 + 4536);
        *(v49 + 4536) = v50;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v49, 22, v46, v48 + 72, 0);
        if (v51)
        {
          *(v49 + 4536) = v51;
        }

        v52 = *(a1 + 24);
        if ((*(v52 + 46) & 0xC) != 0 || **(a1 + 80) == 1 && (*(v52 + 45) & 0x40) == 0)
        {
          v53 = *(v3 + 16);
          if (*(v53 + 2292) == 1)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(v3 + 16), 22, 0, 0, 0);
            *(v53 + 2306) = 0;
            if (*(v53 + 2292) == 1 && !*(v53 + 4976))
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v53, 22, (v53 + 5544), (v53 + 5552), (v53 + 5560));
            }
          }

          v54 = *(a1 + 40);
          v55 = **(a1 + 104);
          v56 = *(v54 + 16);
          v57 = **v54 + **(v54 + 8);
          v58 = *(v56 + 16);
          v59 = *(v56 + 32);
          *(v58 + 2060) |= 4u;
          v60 = *(v58 + 4536);
          *(v58 + 4536) = v59;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v58, 22, v55, v57 + 72, 0);
          if (v60)
          {
            *(v58 + 4536) = v60;
          }
        }
      }

      v61 = *(v3 + 16);
      if (*(v61 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(v3 + 16), 22, 0, 0, 0);
        *(v61 + 2306) = 0;
        if (*(v61 + 2292) == 1 && !*(v61 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v61, 22, (v61 + 5544), (v61 + 5552), (v61 + 5560));
        }
      }

      v62 = *(a1 + 40);
      v63 = **(a1 + 112);
      v64 = *(v62 + 16);
      v65 = **v62 + **(v62 + 8);
      v66 = *(v64 + 16);
      v67 = *(v64 + 32);
      *(v66 + 2060) |= 4u;
      v68 = *(v66 + 4536);
      *(v66 + 4536) = v67;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v66, 22, v63, v65 + 24, 0);
      if (v68)
      {
        *(v66 + 4536) = v68;
      }

      ++v2;
    }

    while (v2 < **a1);
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(uint64_t a1, uint64_t a2, MTLAccelerationStructureDescriptor *a3, AGX::BVHDescriptor *this, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v124 = *MEMORY[0x29EDCA608];
  v15 = *a9;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v16 = *(this + 10);
  v17 = *(this + 18);
  v18 = *(a7 + 152) & 0xFFF7 | (8 * ((*(this + 15) >> 7) & 1));
  *(a7 + 152) = v18;
  *(a7 + 152) = v18 & 0xFFEF | (*(this + 15) >> 4) & 0x10;
  *(a7 + 20) = *(this + 8);
  {
    v112 = a5;
    a5 = v112;
    if (v113)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
      a5 = v112;
    }
  }

  {
    v114 = a5;
    a5 = v114;
    if (v115)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
      a5 = v114;
    }
  }

  v122 = v15;
  v121 = v16;
  if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit != 1)
  {
    if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable == 1)
    {
      v21 = *(a7 + 152);
    }

    else
    {
      v21 = *(a7 + 152);
      if ((*(this + 7) & 1) == 0)
      {
        v19 = a5;
        v20 = 0;
        goto LABEL_10;
      }
    }

    v19 = a5;
    v20 = 64;
    goto LABEL_10;
  }

  v19 = a5;
  v20 = 0;
  v21 = *(a7 + 152);
LABEL_10:
  *(a7 + 152) = v21 & 0xFFBF | v20;
  {
    AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
  }

  if (AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild == 1)
  {
    v22 = *(a7 + 152);
LABEL_15:
    v23 = 128;
    goto LABEL_16;
  }

  v22 = *(a7 + 152);
  if ((*(this + 7) & 2) != 0)
  {
    goto LABEL_15;
  }

  v23 = 0;
LABEL_16:
  *(a7 + 152) = v22 & 0xFF7F | v23;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::instanceForceFastBuildReduction = 0;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::primitiveForceFastBuildReduction = 0;
  }

  if ((*(this + 18) & 0xFE) == 6)
  {
    v24 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::instanceForceFastBuildReduction;
  }

  else
  {
    v24 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::primitiveForceFastBuildReduction;
  }

  *(a7 + 156) = *v24;
  *(a7 + 344) = 0;
  *(a7 + 66) = *(this + 1);
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::multiThreadgroupCommitSplit = 1;
  }

  *(a7 + 158) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::multiThreadgroupCommitSplit;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::enableMediumCompaction = 1;
  }

  v25 = *(a7 + 152) & 0xFEFF | (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::enableMediumCompaction << 8);
  *(a7 + 152) = v25;
  *(a7 + 24) = AGX::BVHDescriptor::maxInnerNodeCount(this);
  *(a7 + 28) = 0;
  *(a7 + 224) = 0;
  *(a7 + 152) = v25 & 0xFFDE;
  v27 = *(a2 + 44);
  v28 = *(this + 15);
  {
    AGX::BVHDescriptor::isExtendedLimits(void)const::forceExtendedLimits = 0;
  }

  if (v28)
  {
    v29 = *(a7 + 152);
  }

  else
  {
    v29 = *(a7 + 152);
    if (((v27 < 4) & (AGX::BVHDescriptor::isExtendedLimits(void)const::forceExtendedLimits | ((*(this + 7) & 4u) >> 2))) != 1)
    {
      v30 = 0;
      goto LABEL_29;
    }
  }

  v30 = 512;
LABEL_29:
  *(a7 + 152) = v29 & 0xFDFD | v30;
  *(a7 + 64) = *(a8 + 896);
  v31 = *(this + 41);
  *(a7 + 652) = v31;
  *(a7 + 654) = *(this + 42);
  v32 = *(this + 8);
  v36 = *(this + 10);
  v33 = v32 < 0x801;
  v34 = v36 < 0x11;
  v35 = v32 > 0x800000 || v36 >= 0x101;
  LOBYTE(v36) = 1;
  if (v35)
  {
    v37 = 2;
  }

  else
  {
    v37 = 1;
  }

  if (v35)
  {
    v38 = 8;
  }

  else
  {
    v38 = 4;
  }

  v39 = !v33 || !v34;
  if (v33 && v34)
  {
    v40 = 0;
  }

  else
  {
    v40 = v37;
  }

  if (v39)
  {
    v41 = v38;
  }

  else
  {
    v41 = 2;
  }

  *(a7 + 76) = v40;
  *(a7 + 80) = v41;
  v42 = v31 + v32 - 1;
  v43 = v42 / v31;
  if (v31 <= v42)
  {
    *&v26 = (33 - __clz(~(-1 << -__clz(v43 - 1)))) * 1.5;
    v36 = vcvtps_u32_f32(*&v26);
    if (v36 >= 0x20)
    {
      v36 = 32;
    }

    if (v36 <= 1)
    {
      LOBYTE(v36) = 1;
    }
  }

  *(a7 + 65) = v36;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::maxBatchIterationCount = -1;
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::maxBatchIterationCount != -1)
  {
    LOBYTE(v26) = *(a7 + 65);
    v45 = v26;
    v46 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::maxBatchIterationCount;
    v47 = ceil(log2((v43 + 1)));
    if (v47 >= v46)
    {
      if (v47 <= v45)
      {
        v45 = v47;
      }
    }

    else if (v46 <= v45)
    {
      v45 = v46;
    }

    *(a7 + 65) = v45;
  }

  *(a7 + 152) &= ~0x400u;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::enableMultipleLeafsPerBox = 1;
  }

  *(a7 + 152) = *(a7 + 152) & 0xF7FF | (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::enableMultipleLeafsPerBox << 11);
  *(a7 + 456) = 0;
  *(a7 + 458) = *(this + 12);
  v48 = *(a2 + 44);
  {
  }

  if (v48 <= 4)
  {
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
    }

    {
      AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
    }

    if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (*(this + 28)))
    {
      goto LABEL_67;
    }

    {
      AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
    }

    if (AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild == 1)
    {
LABEL_67:
      v50 = *(a7 + 152);
    }

    else
    {
      v50 = *(a7 + 152);
      if ((*(this + 7) & 2) == 0)
      {
        v49 = 0;
        goto LABEL_69;
      }
    }

    v49 = 4096;
    goto LABEL_69;
  }

  v49 = 0;
  v50 = *(a7 + 152);
LABEL_69:
  *(a7 + 152) = v50 & 0xEFFF | v49;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::instanceDynamicMaxDepth = 1;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::primitiveDynamicMaxDepth = 1;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::fastBuildDynamicMaxDepth = 1;
  }

  {
    AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
  }

  if (((AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild & 1) != 0 || (*(this + 28) & 2) != 0) && AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::fastBuildDynamicMaxDepth != 1)
  {
    v52 = *(a7 + 152) & 0xDFFF;
  }

  else
  {
    if ((*(this + 18) & 0xFE) == 6)
    {
      v51 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::instanceDynamicMaxDepth;
    }

    else
    {
      v51 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::primitiveDynamicMaxDepth;
    }

    v52 = *(a7 + 152) & 0xDFFF | (v51 << 13);
  }

  *(a7 + 152) = v52;
  {
    LOBYTE(v123[0]) = 0;
    findEnvVarNum<BOOL>("AGX_ALWAYS_ALLOW_PAIR_FALLBACK", v123);
    if (v123[0])
    {
      v116 = 1;
    }

    else
    {
      LOBYTE(v123[0]) = 0;
      findEnvVarNum<BOOL>("AGX_ALWAYS_ALLOW_VERT_MATCHING_ON_POS", v123);
      v116 = v123[0];
    }

    isVertMatchingOnPositionRequestedAlwaysAllowed(void)::allow = v116 & 1;
  }

  if (isVertMatchingOnPositionRequestedAlwaysAllowed(void)::allow != 1)
  {
    goto LABEL_89;
  }

  {
    AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
  }

  {
    AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
  }

  if ((AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) != 0 || (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) == 0 && (*(this + 28) & 1) == 0)
  {
    v53 = *(this + 18) - 6 < 0xFFFFFFFD;
  }

  else
  {
LABEL_89:
    v53 = 0;
  }

  *(a7 + 157) = v53;
  *(a7 + 169) = 0;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::primitiveForceFallback = 0;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::instanceForceFallback = 0;
  }

  v54 = v17 & 0xFE;
  if ((*(this + 18) & 0xFE) == 6)
  {
    v55 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::instanceForceFallback;
  }

  else
  {
    v55 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::primitiveForceFallback;
  }

  *(a7 + 152) = *(a7 + 152) & 0xBFFF | (*v55 << 14);
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::earlyOutStage = 11;
  }

  *(a7 + 68) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::earlyOutStage;
  memset(v123, 0, sizeof(v123));
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::newResourceBuffer(a1, a2, this, a3, v123);
  *(a7 + 88) = *a1;
  *(a7 + 8) = *(this + 17);
  if (v54 != 6)
  {
    *(a7 + 60) = 1;
    v59 = *(this + 17);
    v60 = *(this + 18);
    if (v60 > 2)
    {
      if (v60 == 4)
      {
LABEL_117:
        v65 = 0;
        *(a7 + 56) = 4;
        v64 = *(a2 + 44);
        v66 = 1;
        if (v64 < 5)
        {
          goto LABEL_118;
        }

        LOWORD(v63) = 32;
        goto LABEL_137;
      }

      if (v60 != 3)
      {
LABEL_132:
        v64 = *(a2 + 44);
        if (v64 < 5)
        {
          v66 = 0;
          v67 = 0;
          v65 = 1;
          LOWORD(v63) = 4;
          goto LABEL_138;
        }

        v66 = 0;
        v65 = 0;
        LOWORD(v63) = 0;
        goto LABEL_137;
      }
    }

    else if (*(this + 18))
    {
      if (v60 != 1)
      {
        goto LABEL_132;
      }

      goto LABEL_117;
    }

    v61 = 2 * (*(this + 17) == 2);
    if (*(this + 17) == 2)
    {
      v62 = 60;
    }

    else
    {
      v62 = 44;
    }

    *(a7 + 56) = v61;
    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(v61, this, *(a2 + 44)) == 3)
    {
      v63 = 36;
    }

    else
    {
      v63 = v62;
    }

    v64 = *(a2 + 44);
    if (v64 < 5)
    {
      v66 = 0;
      v65 = 1;
      if (v63 > 0x2C)
      {
        LOWORD(v63) = 64;
        v67 = 1;
LABEL_138:
        *(a7 + 48) = v63;
        if (!*(this + 17))
        {
LABEL_156:
          if (v59 == 2)
          {
            *(a7 + 96) = v122;
            *(a7 + 104) = 4 * v121;
            v77 = *(a8 + 800);
            if (*(a8 + 808) == 4)
            {
              v78 = *(v77 + 16);
            }

            else
            {
              v78 = 0;
            }

            v79 = *(a8 + 824);
            *(a7 + 112) = v78 + *(v77 + 16 * *(a8 + 812) + 24) + *(v77 + 8 * *(a8 + 812) + 56) + *(a8 + 816);
            *(a7 + 120) = v79;
            v80 = *(a8 + 832);
            if (*(a8 + 840) == 4)
            {
              v81 = *(v80 + 16);
            }

            else
            {
              v81 = 0;
            }

            v82 = *(a8 + 856);
            *(a7 + 128) = v81 + *(v80 + 16 * *(a8 + 844) + 24) + *(v80 + 8 * *(a8 + 844) + 56) + *(a8 + 848);
            *(a7 + 136) = v82;
            v64 = *(a2 + 44);
          }

          *(a7 + 20) = *(this + 8);
          *(a7 + 40) = *(this + 10);
          {
            v118 = v64;
            v64 = v118;
            if (v119)
            {
              AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
              v64 = v118;
            }
          }

          v83 = isQTBEnabled(v64, this, (AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild | (*(this + 7) >> 1)) & 1, (*(a7 + 152) >> 6) & 1);
          if (v83)
          {
            v85 = 2;
          }

          else
          {
            v85 = 0;
          }

          *(a7 + 152) = v85 | v83 | *(a7 + 152) & 0xFFFC;
          if (v83)
          {
            v86 = *(a7 + 56);
            v87 = *(a7 + 24);
            v84.i64[0] = 0;
            if (v86 <= 3)
            {
              *v84.i32 = flt_29D2F27A0[v86];
            }

            v88 = *(a7 + 20) / v87;
            if (v88 < 1.0)
            {
              v88 = 1.0;
            }

            *v84.i32 = fminf(((v88 + *v84.i32) + -1.0) / *v84.i32, 4.0) * v87;
            v89 = vcvtps_u32_f32(*v84.i32);
            if (v89 <= 1)
            {
              v89 = 1;
            }

            *(a7 + 28) = v89;
            {
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::qtbEncodingOverride = -1;
            }

            *(a7 + 176) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::qtbEncodingOverride;
            v90 = *(a2 + 24);
            v91 = *MEMORY[0x29EDC5638];
            *(a7 + 144) = *(v90 + v91 + 8);
            v92 = *(a2 + 16);
            if (*(v90 + v91 + 16) >> 61 == 3)
            {
              v93 = *(v90 + 312);
              IOGPUResourceListAddResource();
              v94 = *(v93 + 64);
              v95 = *(v93 + 72);
              while (v94 != v95)
              {
                if (*v94)
                {
                  AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v94);
                  IOGPUResourceListAddResource();
                }

                v94 += 2;
              }
            }

            AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v92, v90, v84, 1, 1);
          }

          {
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahLeafCost = 1098907648;
          }

          {
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahUpperLeafCost = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahLeafCost;
          }

          {
            v69 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahBinningLeafCost;
            v70 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahUpperLeafCost;
            v71 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahLeafCost;
            goto LABEL_187;
          }

          v69 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahBinningLeafCost;
          {
            v70 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahUpperLeafCost;
            v71 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahLeafCost;
            goto LABEL_347;
          }

          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahBinningLeafCost = 1098907648;
          v70 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahUpperLeafCost;
          v71 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahLeafCost;
LABEL_335:
          __cxa_guard_release(v117);
LABEL_347:
          goto LABEL_187;
        }

        if (*(this + 10) && (v72 = *(this + 36), v72 >= 2))
        {
          if (v72 <= 0x10)
          {
            v73 = 1 << -__clz(v72 - 1);
            *(a7 + 159) = 0;
            if (!v67)
            {
              goto LABEL_143;
            }

LABEL_146:
            if (*(this + 17) == 2)
            {
              v74 = v65 == 0;
              v75 = 76;
              v76 = 96;
              goto LABEL_152;
            }

            if (!*(this + 17))
            {
              v74 = v65 == 0;
              v75 = 52;
              v76 = 64;
              goto LABEL_152;
            }

LABEL_155:
            *(a7 + 160) = v73;
            goto LABEL_156;
          }

          v73 = 32;
          *(a7 + 159) = 0;
          if (v67)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v73 = 1;
          *(a7 + 159) = 0;
          if (v67)
          {
            goto LABEL_146;
          }
        }

LABEL_143:
        if (v66)
        {
          v74 = v65 == 0;
          v75 = 40;
          v76 = 48;
LABEL_152:
          if (!v74)
          {
            v75 = v76;
          }

          *(a7 + 48) = v75;
          goto LABEL_155;
        }

        goto LABEL_155;
      }

LABEL_118:
      v67 = v65;
      v65 = 1;
      LOWORD(v63) = 48;
      goto LABEL_138;
    }

    v66 = 0;
    v65 = 1;
LABEL_137:
    v67 = v65;
    v65 = 0;
    goto LABEL_138;
  }

  *(a7 + 56) = 8;
  *(a7 + 48) = 128;
  if (([(MTLAccelerationStructureDescriptor *)a3 usage]& 4) != 0)
  {
    v56 = -1;
  }

  else
  {
    v56 = 255;
  }

  *(a7 + 220) = v56;
  *(a7 + 192) = *(this + 9);
  *(a7 + 216) = *(this + 10);
  *(a7 + 152) = *(a7 + 152) & 0xFFDF | (32 * (*(this + 15) == 1));
  v57 = *(this + 18);
  if (v57 == 7)
  {
    v58 = *(this + 8);
  }

  else
  {
    if (v57 != 6)
    {
      goto LABEL_121;
    }

    v58 = 0;
    *(a7 + 200) = *a6;
    *(a7 + 208) = *v19;
  }

  *(a7 + 224) = v58;
LABEL_121:
  *(a7 + 20) = *(this + 13);
  v68 = *(this + 14);
  switch(v68)
  {
    case 0:
LABEL_126:
      *(a7 + 232) = v68;
      break;
    case 3:
      LODWORD(v68) = 1;
      goto LABEL_126;
    case 1:
      LODWORD(v68) = 2;
      goto LABEL_126;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahLeafCost = 1098907648;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahUpperLeafCost = 1065353216;
  }

  {
    v69 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahBinningLeafCost;
    {
      goto LABEL_131;
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahBinningLeafCost = 1098907648;
    v70 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahUpperLeafCost;
    v71 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahLeafCost;
    goto LABEL_335;
  }

  v69 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahBinningLeafCost;
LABEL_131:
  v70 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahUpperLeafCost;
  v71 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahLeafCost;
LABEL_187:
  *(a7 + 180) = *v71;
  *(a7 + 184) = *v70;
  *(a7 + 188) = *v69;
  PrimLeafEncodingMode = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(*(a7 + 56), this, *(a2 + 44));
  *(a7 + 72) = PrimLeafEncodingMode;
  *(a7 + 164) = AGX::BVHDescriptor::requiresCompactionMetadata(this, PrimLeafEncodingMode);
  v97 = *(a7 + 72);
  {
    AGX::BVHDescriptor::plocIndirectNodeEncoding(PrimLeafEncodingMode)const::forceEnableIndirectEncoding = 1;
  }

  *(a7 + 165) = ((v97 - 1) < 2) | AGX::BVHDescriptor::plocIndirectNodeEncoding(PrimLeafEncodingMode)const::forceEnableIndirectEncoding;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::encodeGeometryIndexInMortonCode = 1;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::minPrimitiveThresholdForGeometryRadixSort = 64;
  }

  v98 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::encodeGeometryIndexInMortonCode == 1 && (*(this + 15) & 0x1000) == 0 && *(this + 8) >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::minPrimitiveThresholdForGeometryRadixSort && *(this + 18) - 8 < 0xFFFFFFFE;
  *(a7 + 166) = v98;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::forceRadixSort64Bits = 0;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::radixSort64BitsForFastIntersection = 1;
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::radixSort64BitsForFastIntersection != 1)
  {
    goto LABEL_200;
  }

  {
    AGX::BVHDescriptor::isFastIntersection(void)const::forceFastintersection = 0;
  }

  if ((AGX::BVHDescriptor::isFastIntersection(void)const::forceFastintersection & 1) != 0 || (*(this + 28) & 0x10) != 0)
  {
    v99 = 1;
  }

  else
  {
LABEL_200:
    v99 = *(a7 + 166);
  }

  *(a7 + 167) = (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::forceRadixSort64Bits | v99) & 1;
  {
    getForcedMatchLeafHeaders(AGX::BVHDescriptor const&)::forceMatchLeafHeaders = 0;
  }

  *(a7 + 168) = getForcedMatchLeafHeaders(AGX::BVHDescriptor const&)::forceMatchLeafHeaders | ((*(this + 15) & 0x1000) >> 12);
  v100 = *(a7 + 152);
  {
    v44[2824] = 0;
  }

  v101 = v44[2824];
  v102 = *(this + 7);
  {
    AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
  }

  {
    AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
  }

  if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit)
  {
    v103 = 0;
  }

  else if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
  {
    v103 = 1;
  }

  else
  {
    v103 = *(this + 28) & 1;
  }

  v104 = *(a7 + 157);
  v105 = *(a2 + 44);
  if (v105 >= 5)
  {
    v106 = 2688;
  }

  else
  {
    v106 = 1536;
  }

  if (*(a7 + 72) - 1 <= 1)
  {
    *&v123[0] = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v105 < 5), 0x1FuLL)), 0x7E000000430, 0x4F0000008A0);
    if (v106 <= 4 * *(v123 | (4 * v104)))
    {
      v106 = 4 * *(v123 | (4 * v104));
    }
  }

  if (v100)
  {
    if ((v101 | ((v102 & 2) >> 1) | v103))
    {
      v107 = 64;
    }

    else
    {
      v108 = v105 >= 5 ? 5056 : 8064;
      v109 = v105 >= 5 ? 8832 : 4288;
      v110 = v104 ? v108 : v109;
      v107 = (v110 + 124) & 0x7FC0;
    }

    if (v107 > v106)
    {
      LOWORD(v106) = v107;
    }
  }

  *(a7 + 50) = v106;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::plocDefaultSearchRadius = 8;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::plocFastBuildSearchRadius = 4;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::plocFastTraceSearchRadius = 16;
  }

  {
    AGX::BVHDescriptor::isFastIntersection(void)const::forceFastintersection = 0;
  }

  if ((AGX::BVHDescriptor::isFastIntersection(void)const::forceFastintersection & 1) != 0 || (*(this + 28) & 0x10) != 0)
  {
    v111 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::plocFastTraceSearchRadius;
  }

  else
  {
    {
      v44[2824] = 0;
    }

    v111 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::plocFastBuildSearchRadius;
    if ((v44[2824] & 1) == 0 && (*(this + 28) & 2) == 0)
    {
      v111 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::plocDefaultSearchRadius;
    }
  }

  *(a7 + 52) = *v111;
}

unint64_t AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getBatchForCommand(void ***a1, int a2, void *a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10)
{
  v122 = *MEMORY[0x29EDCA608];
  v13 = a1[34];
  v12 = a1[35];
  {
    v80 = a8;
    v81 = a7;
    v82 = a5;
    v83 = a2;
    a2 = v83;
    a5 = v82;
    a7 = v81;
    a8 = v80;
    if (v84)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getBatchForCommand(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BVHCommandType,AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,unsigned long,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,BOOL)::skipDependencyTracking = 0;
      a2 = v83;
      a5 = v82;
      a7 = v81;
      a8 = v80;
    }
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getBatchForCommand(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BVHCommandType,AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,unsigned long,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,BOOL)::skipDependencyTracking == 1)
  {
    result = a1[34];
    v15 = a1[35];
    if (result == v15)
    {
      v121 = 0;
      v116 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v117 = 1065353216;
      v118 = 0u;
      v119 = 0u;
      v120 = 1065353216;
      if (result >= a1[36])
      {
        v16 = std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch>>::__emplace_back_slow_path<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch>(a1 + 34, &v100);
      }

      else
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::DeferredBatch(v15, &v100);
        v16 = v15 + 328;
      }

      a1[35] = v16;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::~DeferredBatch(&v100);
      return a1[34];
    }

    return result;
  }

  {
    v85 = a8;
    v86 = a7;
    v87 = a5;
    v88 = a2;
    a2 = v88;
    a5 = v87;
    a7 = v86;
    a8 = v85;
    if (v89)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getBatchForCommand(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BVHCommandType,AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,unsigned long,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,BOOL)::trackInstanceHazards = 0;
      a2 = v88;
      a5 = v87;
      a7 = v86;
      a8 = v85;
    }
  }

  v91 = a7;
  v92 = a8;
  v90 = a5;
  v93 = a2;
  if ((a10 & 1) != 0 || a9 && AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getBatchForCommand(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BVHCommandType,AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,unsigned long,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,BOOL)::trackInstanceHazards != 1)
  {
    v27 = 0;
LABEL_37:
    v121 = 0;
    v116 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v117 = 1065353216;
    v118 = 0u;
    v119 = 0u;
    v120 = 1065353216;
    v36 = a1[35];
    if (v36 >= a1[36])
    {
      v37 = std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch>>::__emplace_back_slow_path<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch>(a1 + 34, &v100);
    }

    else
    {
      v37 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::DeferredBatch(v36, &v100) + 328;
    }

    a1[35] = v37;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::~DeferredBatch(&v100);
    v38 = a1[34];
    v39 = (-1047552999 * ((a1[35] - v38) >> 3) - 1);
    v40 = &v38[41 * v39];
    v40[40].i8[0] = v27 ^ 1;
    if ((v27 & 1) == 0)
    {
      return &a1[34][41 * v39];
    }

    goto LABEL_41;
  }

  v17 = 0x8F9C18F9C18F9C19 * (v12 - v13);
  if ((a2 - 3) < 2)
  {
    if (v17 >= 1)
    {
      v18 = v17 & 0x7FFFFFFF;
      v19 = v18 - 1;
      v20 = &a1[34][41 * v18 - 41];
      if ((v20[40].i8[0] & 1) == 0)
      {
        v21 = 328 * v18 - 336;
        v22 = -1;
        while ((AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(v20, [objc_msgSend(a3 buffer], objc_msgSend(a3, "bufferOffset"), objc_msgSend(a3, "size")) & 1) == 0)
        {
          v23 = [objc_msgSend(a4 "buffer")];
          v24 = [a4 bufferOffset];
          v25 = [a4 size];
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingRead(v20, v23, v24, v25) & 1) != 0 || (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(v20, v23, v24, v25))
          {
            break;
          }

          if (v18 < 2)
          {
            goto LABEL_114;
          }

          --v18;
          --v19;
          v26 = a1[34];
          v20 = &v26[41 * v19];
          LOBYTE(v26) = *(v26 + v21);
          v21 -= 328;
          v22 = v18;
          if (v26)
          {
            v22 = v18;
            goto LABEL_35;
          }
        }

        goto LABEL_35;
      }
    }

    goto LABEL_36;
  }

  if (a2 != 1)
  {
    if (v17 < 1)
    {
      goto LABEL_36;
    }

    v30 = v17 & 0x7FFFFFFF;
    v31 = v30 - 1;
    v32 = &a1[34][41 * v30 - 41];
    if (v32[40].i8[0])
    {
      goto LABEL_36;
    }

    v33 = 328 * v30 - 336;
    v22 = -1;
    v34 = a5;
    while (1)
    {
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(v32, [objc_msgSend(a3 buffer], objc_msgSend(a3, "bufferOffset"), objc_msgSend(a3, "size")) & 1) != 0 || (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingRead(v32, v34, v91, v92) & 1) != 0 || (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(v32, v34, v91, v92))
      {
        goto LABEL_35;
      }

      if (v30 < 2)
      {
        break;
      }

      --v30;
      --v31;
      v35 = a1[34];
      v32 = &v35[41 * v31];
      LOBYTE(v35) = *(v35 + v33);
      v33 -= 328;
      v22 = v30;
      if (v35)
      {
        v22 = v30;
        goto LABEL_35;
      }
    }

LABEL_114:
    v22 = 0;
    goto LABEL_115;
  }

  if (v17 < 1)
  {
    goto LABEL_36;
  }

  v28 = v17 & 0x7FFFFFFF;
  LODWORD(v29) = -1;
  while (1)
  {
    v22 = v29;
    v29 = v28 - 1;
    v57 = &a1[34][41 * (v28 - 1)];
    if (v57[40].i8[0])
    {
      goto LABEL_35;
    }

    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(v57, [objc_msgSend(a3 "buffer")], objc_msgSend(a3, "bufferOffset"), objc_msgSend(a3, "size")))
    {
      goto LABEL_35;
    }

    v58 = [objc_msgSend(a4 "buffer")];
    v59 = [a4 bufferOffset];
    v60 = [a4 size];
    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingRead(v57, v58, v59, v60) & 1) != 0 || (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(v57, v58, v59, v60))
    {
      goto LABEL_35;
    }

    if (!a9 || (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getBatchForCommand(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BVHCommandType,AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,unsigned long,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,BOOL)::trackInstanceHazards & 1) == 0)
    {
      goto LABEL_74;
    }

    v61 = v29;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v62 = [a9 countByEnumeratingWithState:&v95 objects:&v100 count:16];
LABEL_82:
    v63 = v62;
    if (v62)
    {
      break;
    }

    v29 = v61;
LABEL_74:
    v28 = v29;
    if (v29 <= 0)
    {
      goto LABEL_114;
    }
  }

  v64 = 0;
  while (1)
  {
    v65 = *(*(&v95 + 1) + 8 * v64);
    v66 = [objc_msgSend(v65 buffer];
    v67 = [v65 bufferOffset];
    v68 = [v65 size];
    v69 = v57[36];
    if (v69)
    {
      v70 = vcnt_s8(v69);
      v70.i16[0] = vaddlv_u8(v70);
      if (v70.u32[0] > 1uLL)
      {
        v71 = v66;
        if (*&v69 <= v66)
        {
          v71 = v66 % *&v69;
        }
      }

      else
      {
        v71 = (*&v69 - 1) & v66;
      }

      v72 = *(*&v57[35] + 8 * v71);
      if (v72)
      {
        v73 = *v72;
        if (v73)
        {
          if (v70.u32[0] < 2uLL)
          {
            v74 = *&v69 - 1;
            while (1)
            {
              v76 = v73[1];
              if (v76 == v66)
              {
                if (v73[2] == v66)
                {
                  goto LABEL_106;
                }
              }

              else if ((v76 & v74) != v71)
              {
                goto LABEL_84;
              }

              v73 = *v73;
              if (!v73)
              {
                goto LABEL_84;
              }
            }
          }

          while (1)
          {
            v75 = v73[1];
            if (v75 == v66)
            {
              break;
            }

            if (v75 >= *&v69)
            {
              v75 %= *&v69;
            }

            if (v75 != v71)
            {
              goto LABEL_84;
            }

LABEL_95:
            v73 = *v73;
            if (!v73)
            {
              goto LABEL_84;
            }
          }

          if (v73[2] != v66)
          {
            goto LABEL_95;
          }

LABEL_106:
          v77 = v73[3];
          v78 = v73[4];
          if (v77 != v78)
          {
            break;
          }
        }
      }
    }

LABEL_84:
    if (++v64 == v63)
    {
      v62 = [a9 countByEnumeratingWithState:&v95 objects:&v100 count:16];
      goto LABEL_82;
    }
  }

  while (v67 + v66 >= v77[1] || v67 + v66 + v68 < *v77)
  {
    v77 += 2;
    if (v77 == v78)
    {
      goto LABEL_84;
    }
  }

LABEL_35:
  if (v22 == -1)
  {
LABEL_36:
    v27 = 1;
    goto LABEL_37;
  }

LABEL_115:
  LODWORD(v39) = v22;
  v40 = &a1[34][41 * v22];
  v40[40].i8[0] = 0;
LABEL_41:
  if ((v93 - 3) < 2)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::insertRead(v40, [objc_msgSend(a3 "buffer")], objc_msgSend(a3, "bufferOffset"), objc_msgSend(a3, "size"));
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::insertWrite(v40, [objc_msgSend(a4 "buffer")], objc_msgSend(a4, "bufferOffset"), objc_msgSend(a4, "size"));
    return &a1[34][41 * v39];
  }

  if (v93 == 2)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::insertRead(v40, [objc_msgSend(a3 "buffer")], objc_msgSend(a3, "bufferOffset"), objc_msgSend(a3, "size"));
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::insertWrite(v40, v90, v91, v92);
    return &a1[34][41 * v39];
  }

  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::insertRead(v40, [objc_msgSend(a3 "buffer")], objc_msgSend(a3, "bufferOffset"), objc_msgSend(a3, "size"));
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::insertWrite(v40, [objc_msgSend(a4 "buffer")], objc_msgSend(a4, "bufferOffset"), objc_msgSend(a4, "size"));
  if (a9)
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v41 = [a9 countByEnumeratingWithState:&v95 objects:&v100 count:16];
    if (v41)
    {
LABEL_47:
      v42 = 0;
LABEL_49:
      v43 = *(*(&v95 + 1) + 8 * v42);
      v44 = [objc_msgSend(v43 buffer];
      v45 = [v43 bufferOffset];
      v46 = [v43 size];
      v47 = v45 + v44;
      v48 = v45 + v44 + v46;
      v49 = v40[31];
      if (!*&v49)
      {
        goto LABEL_69;
      }

      v50 = vcnt_s8(v49);
      v50.i16[0] = vaddlv_u8(v50);
      if (v50.u32[0] > 1uLL)
      {
        v51 = v44;
        if (*&v49 <= v44)
        {
          v51 = v44 % *&v49;
        }
      }

      else
      {
        v51 = (*&v49 - 1) & v44;
      }

      v52 = *(*&v40[30] + 8 * v51);
      if (!v52 || (v53 = *v52) == 0)
      {
LABEL_69:
        operator new();
      }

      if (v50.u32[0] < 2uLL)
      {
        v54 = *&v49 - 1;
        while (1)
        {
          v55 = v53[1];
          if (v55 == v44)
          {
            if (v53[2] == v44)
            {
              goto LABEL_48;
            }
          }

          else if ((v55 & v54) != v51)
          {
            goto LABEL_69;
          }

          v53 = *v53;
          if (!v53)
          {
            goto LABEL_69;
          }
        }
      }

      while (1)
      {
        v56 = v53[1];
        if (v56 == v44)
        {
          if (v53[2] == v44)
          {
LABEL_48:
            *&v99 = v47;
            *(&v99 + 1) = v48;
            std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100]((v53 + 3), &v99);
            if (++v42 != v41)
            {
              goto LABEL_49;
            }

            v41 = [a9 countByEnumeratingWithState:&v95 objects:&v100 count:16];
            if (!v41)
            {
              return &a1[34][41 * v39];
            }

            goto LABEL_47;
          }
        }

        else
        {
          if (v56 >= *&v49)
          {
            v56 %= *&v49;
          }

          if (v56 != v51)
          {
            goto LABEL_69;
          }
        }

        v53 = *v53;
        if (!v53)
        {
          goto LABEL_69;
        }
      }
    }
  }

  return &a1[34][41 * v39];
}

void sub_29CEA63E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v217[2] = *MEMORY[0x29EDCA608];
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::smallRefitSingleThreadgroupSize = 64;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::mediumRefitSingleThreadgroupSize = 128;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::smallRefitQtbSingleThreadgroupSize = 768;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::mediumRefitQtbSingleThreadgroupSize = 768;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::skipSmallCoalescing = 1;
  }

  v195 = a2;
  v196 = a1;
  *__val = a3;
  {
    {
    }

    {
    }

    if (shouldDumpOrVerifyBVHs(void)::once != -1)
    {
      dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::verify = 0;
  }

  v213 = 0;
  v212 = 0;
  v209 = 0;
  v210 = 0;
  v211 = 0;
  v208[0] = a1;
  v208[1] = &v209;
  v208[2] = &v213;
  v208[3] = &v212;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::{lambda(char const*)#1}::operator()(v208);
  if (a3 == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::{lambda(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&,BOOL)#1}::operator()(a1, a2, 0);
    goto LABEL_215;
  }

  v6 = *(a1 + 80);
  v184 = (a1 + 80);
  *(a1 + 64) = *(a1 + 56);
  *(a1 + 88) = v6;
  v187 = a1 + 104;
  *(a1 + 112) = *(a1 + 104);
  v179 = a1 + 128;
  v7 = *(a1 + 152);
  v178 = a1 + 152;
  *(a1 + 136) = *(a1 + 128);
  *(a1 + 160) = v7;
  v182 = a1 + 176;
  v183 = (a1 + 56);
  *(a1 + 184) = *(a1 + 176);
  v190 = a1 + 200;
  v8 = *(a1 + 224);
  *(a1 + 208) = *(a1 + 200);
  *(a1 + 232) = v8;
  v180 = a1 + 248;
  v181 = a1 + 224;
  *(a1 + 256) = *(a1 + 248);
  if (!a3)
  {
    __vala = -1;
    goto LABEL_81;
  }

  v9 = 0;
  v186 = 0;
  v10 = 0;
  v11 = xmmword_29D2F1C70;
  do
  {
    v12 = a2 + 288 * v10;
    v13 = 208;
    if (!*(v12 + 208))
    {
      v13 = 200;
    }

    v14 = *(v12 + v13);
    if (*v12 > v9)
    {
      v9 = *v12;
    }

    if (*(a1 + 51) == 1)
    {
      v15 = *(v12 + 200);
      *&v214[0] = v15;
      *(&v214[0] + 1) = v14;
      v16 = *(a1 + 16);
      if (v15 && *(v15 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
      {
        v17 = *(v15 + 312);
        IOGPUResourceListAddResource();
        v19 = *(v17 + 64);
        v18 = *(v17 + 72);
        while (v19 != v18)
        {
          if (*v19)
          {
            AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v19);
            IOGPUResourceListAddResource();
          }

          v19 += 2;
        }
      }

      if (v14 && *(v14 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
      {
        v20 = v14[39];
        IOGPUResourceListAddResource();
        v22 = *(v20 + 64);
        v21 = *(v20 + 72);
        while (v22 != v21)
        {
          if (*v22)
          {
            AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v22);
            IOGPUResourceListAddResource();
          }

          v22 += 2;
        }
      }

      AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourcesCommon(v16, v214, 2u, v11, 1, 1);
      a1 = v196;
    }

    v23 = *(v12 + 224);
    v24 = *(v12 + 18);
    if (*(v12 + 52))
    {
      v25 = (v24 & 0xFE) == 6;
    }

    else
    {
      v25 = 0;
    }

    if (v25 && (*(v12 + 15) & 1) != 0)
    {
LABEL_44:
      v28 = (v12 + 280);
LABEL_47:
      LODWORD(v214[0]) = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
      std::vector<unsigned int>::push_back[abi:nn200100](v190, v214);
      if ((*v28 & 0x20) != 0)
      {
        *&v214[0] = *(v12 + 200);
        *v198 = *(v12 + 208);
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopies(a1, v214, v198, 1uLL, v30);
        v31 = *(a1 + 16);
        if (*(v31 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v31 + 2306) = 0;
          if (*(v31 + 2292) == 1 && !*(v31 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v31, 22, (v31 + 5544), (v31 + 5552), (v31 + 5560));
          }
        }
      }

      goto LABEL_55;
    }

    if (v24 == 5 || v24 == 2)
    {
      v27 = *(v12 + 280);
      if ((v27 & 4) != 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v29 = v24 - 8;
      v27 = *(v12 + 280);
      if (v29 >= 0xFFFFFFFE)
      {
        v28 = (v12 + 280);
        goto LABEL_53;
      }
    }

    v28 = (v12 + 280);
    if (*(v23 + 102) == 1)
    {
      goto LABEL_47;
    }

LABEL_53:
    if ((v27 & 0x20) != 0)
    {
      *&v214[0] = *(v12 + 200);
      *v198 = *(v12 + 208);
      std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](v181, v214);
      std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](v180, v198);
      ++v186;
    }

LABEL_55:
    v32 = [v14 buffer];
    v33 = [v14 bufferOffset];
    v34 = [v32 gpuAddress];
    v35 = [v32 length];
    v36 = v34 + v33;
    *&v214[0] = v34 + v33;
    *(&v214[0] + 1) = v33;
    v214[1] = v35;
    v37 = *(v12 + 4);
    v38 = *(v12 + 18);
    if (*(v12 + 52) && (v38 & 0xFE) == 6 && (*(v12 + 15) & 1) != 0)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyMotionTransforms(a1, v12, v214);
      v38 = *(v12 + 18);
    }

    if ((v38 == 5 || v38 == 2) && (*v28 & 4) != 0)
    {
      v39 = *(v12 + 36);
      v40 = v39;
      if (v39)
      {
        v41 = *(v23 + 56);
        if (v41)
        {
          v185 = *(v12 + 36);
          v42 = *(*(a1 + 32) + 24) + *(*(a1 + 32) + 4);
          *(v42 + 40) = v36;
          *(v42 + 88) = v36 + 152;
          memset(v198, 0, 24);
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v198, a1, 24, 0);
          v44 = *&v198[8];
          v43 = *v198;
          **v198 = *(v12 + 248);
          v43[1] = vrev64_s32(v185);
          v43[2].i32[0] = v41;
          *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 96) = v44;
          Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 128, 0);
          *v198 = v40;
          *&v198[8] = v41;
          *&v198[16] = 1;
          v206 = xmmword_29D2F1C70;
          *&v207 = 1;
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), Pipeline, v198, &v206);
          v38 = *(v12 + 18);
        }
      }
    }

    if ((v38 - 8) <= 0xFFFFFFFD && (*v28 & 0x10) == 0)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyPPD(a1, v12, v12 + 248, v214);
    }

    if ((v37 - 1) > 1)
    {
      *v198 = v10;
      std::vector<unsigned short>::push_back[abi:nn200100](v187, v198);
      v46 = *__val;
      a2 = v195;
      if (*v28)
      {
        *v198 = v10;
        std::vector<unsigned short>::push_back[abi:nn200100](v182, v198);
      }
    }

    else if (*(v12 + 4) == 2)
    {
      *v198 = v10;
      std::vector<unsigned short>::push_back[abi:nn200100](v184, v198);
      a2 = v195;
      v46 = *__val;
      if (*v28)
      {
        *v198 = v10;
        std::vector<unsigned short>::push_back[abi:nn200100](v178, v198);
      }
    }

    else
    {
      *v198 = v10;
      std::vector<unsigned short>::push_back[abi:nn200100](v183, v198);
      a2 = v195;
      v46 = *__val;
      if (*v28)
      {
        *v198 = v10;
        std::vector<unsigned short>::push_back[abi:nn200100](v179, v198);
      }
    }

    ++v10;
  }

  while (v10 != v46);
  __vala = v9 - 1;
  v47 = v186;
  if (v186)
  {
    if (*(a1 + 200) == *(a1 + 208))
    {
      LODWORD(v214[0]) = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
      std::vector<unsigned int>::push_back[abi:nn200100](v190, v214);
      v47 = v186;
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopies(a1, *(a1 + 224), *(a1 + 248), v47, v11);
  }

LABEL_81:
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::skipSmallCoalescing == 1)
  {
    v48 = *(a1 + 56);
    v188 = *(a1 + 64);
    if (v48 != v188)
    {
      do
      {
        v191 = *v48;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
        v49 = *(a1 + 200);
        v50 = *(a1 + 208);
        while (v49 != v50)
        {
          v52 = *(a1 + 16);
          v53 = *(v52 + 5664);
          v54 = *v49 - v53;
          if (*v49 >= v53)
          {
            if (*(*(v52 + 5640) - 32) <= (*(*(v52 + 5632) + (v54 << 6) + 32) + *(*(v52 + 5632) + (v54 << 6) + 28)))
            {
              v55 = *(*(v52 + 5632) + (v54 << 6) + 32) + *(*(v52 + 5632) + (v54 << 6) + 28);
            }

            else
            {
              v55 = *(*(v52 + 5640) - 32);
            }

            if ((v55 + 1) > *(v52 + 5660))
            {
              v56 = *(v52 + 4976) != 0;
              v57 = *(v52 + 4980);
              LODWORD(v214[0]) = 1;
              agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, v52 + 24, 24, 0, v56, v57, v214);
              ++*(v52 + 5660);
            }

            v58 = *(v52 + 4976) != 0;
            v59 = *(v52 + 4980);
            LODWORD(v214[0]) = 1;
            agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, v52 + 24, 4, 0, v58, v59, v214);
            if (*(*(v52 + 1912) + 520))
            {
              v60 = *(v52 + 5640);
              *(v60 - 32) = v55;
              v62 = *(v60 - 16);
              v61 = *(v60 - 8);
              if (v62 < v61)
              {
                *v62 = v54;
                v51 = v62 + 4;
              }

              else
              {
                v63 = *(v60 - 24);
                v64 = v62 - v63;
                v65 = (v62 - v63) >> 2;
                v66 = v65 + 1;
                if ((v65 + 1) >> 62)
                {
LABEL_218:
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v67 = v61 - v63;
                if (v67 >> 1 > v66)
                {
                  v66 = v67 >> 1;
                }

                if (v67 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v68 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v68 = v66;
                }

                if (v68)
                {
                  if (!(v68 >> 62))
                  {
                    operator new();
                  }

                  goto LABEL_219;
                }

                v69 = (v62 - v63) >> 2;
                v70 = (4 * v65);
                v71 = (4 * v65 - 4 * v69);
                *v70 = v54;
                v51 = v70 + 1;
                memcpy(v71, v63, v64);
                *(v60 - 24) = v71;
                *(v60 - 16) = v51;
                *(v60 - 8) = 0;
                if (v63)
                {
                  operator delete(v63);
                }

                a1 = v196;
              }

              *(v60 - 16) = v51;
            }

            else
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::restartComputePass(v52, 22);
            }
          }

          ++v49;
        }

        a2 = v195;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::{lambda(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&,BOOL)#1}::operator()(a1, v195 + 288 * v191, 1);
        ++v48;
      }

      while (v48 != v188);
      v48 = *v183;
    }

    *(a1 + 64) = v48;
    *(a1 + 136) = *(a1 + 128);
  }

  v72 = *(a1 + 80);
  v189 = *(a1 + 88);
  if (v72 != v189)
  {
    do
    {
      v192 = *v72;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
      v74 = *(a1 + 200);
      v73 = *(a1 + 208);
      while (v74 != v73)
      {
        v76 = *(a1 + 16);
        v77 = *(v76 + 5664);
        v78 = *v74 - v77;
        if (*v74 >= v77)
        {
          if (*(*(v76 + 5640) - 32) <= (*(*(v76 + 5632) + (v78 << 6) + 32) + *(*(v76 + 5632) + (v78 << 6) + 28)))
          {
            v79 = *(*(v76 + 5632) + (v78 << 6) + 32) + *(*(v76 + 5632) + (v78 << 6) + 28);
          }

          else
          {
            v79 = *(*(v76 + 5640) - 32);
          }

          if ((v79 + 1) > *(v76 + 5660))
          {
            v80 = *(v76 + 4976) != 0;
            v81 = *(v76 + 4980);
            LODWORD(v214[0]) = 1;
            agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, v76 + 24, 24, 0, v80, v81, v214);
            ++*(v76 + 5660);
          }

          v82 = *(v76 + 4976) != 0;
          v83 = *(v76 + 4980);
          LODWORD(v214[0]) = 1;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, v76 + 24, 4, 0, v82, v83, v214);
          if (*(*(v76 + 1912) + 520))
          {
            v84 = *(v76 + 5640);
            *(v84 - 32) = v79;
            v86 = *(v84 - 16);
            v85 = *(v84 - 8);
            if (v86 < v85)
            {
              *v86 = v78;
              v75 = v86 + 4;
            }

            else
            {
              v87 = *(v84 - 24);
              v88 = v86 - v87;
              v89 = (v86 - v87) >> 2;
              v90 = v89 + 1;
              if ((v89 + 1) >> 62)
              {
                goto LABEL_218;
              }

              v91 = v85 - v87;
              if (v91 >> 1 > v90)
              {
                v90 = v91 >> 1;
              }

              if (v91 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v92 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v92 = v90;
              }

              if (v92)
              {
                if (!(v92 >> 62))
                {
                  operator new();
                }

LABEL_219:
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v93 = (v86 - v87) >> 2;
              v94 = (4 * v89);
              v95 = (4 * v89 - 4 * v93);
              *v94 = v78;
              v75 = v94 + 1;
              memcpy(v95, v87, v88);
              *(v84 - 24) = v95;
              *(v84 - 16) = v75;
              *(v84 - 8) = 0;
              if (v87)
              {
                operator delete(v87);
              }
            }

            *(v84 - 16) = v75;
            a1 = v196;
          }

          else
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::restartComputePass(v76, 22);
          }
        }

        ++v74;
      }

      a2 = v195;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::{lambda(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&,BOOL)#1}::operator()(a1, v195 + 288 * v192, 1);
      ++v72;
    }

    while (v72 != v189);
    v72 = *v184;
  }

  *(a1 + 88) = v72;
  *(a1 + 160) = *(a1 + 152);
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::skipSmallCoalescing)
  {
    v96 = 0;
  }

  else
  {
    memset(v214, 0, sizeof(v214));
    v97 = *(a1 + 56);
    v98 = *(a1 + 64);
    if (v97 != v98)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v214, a1, 4 * (v98 - v97), 0);
      v99 = *(a1 + 56);
      v100 = *(a1 + 64);
      v101 = v100 - v99;
      if (v100 != v99)
      {
        v102 = *(&v214[0] + 1);
        v103 = v101 >> 1;
        if (v103 <= 1)
        {
          v103 = 1;
        }

        do
        {
          v104 = *v99++;
          *v102++ = *(a2 + 288 * v104 + 216);
          --v103;
        }

        while (v103);
      }
    }

    v96 = *&v214[0];
  }

  v206 = 0u;
  v207 = 0u;
  v105 = *(a1 + 104);
  v106 = *(a1 + 112);
  if (v105 != v106)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v206, a1, 4 * (v106 - v105), 0);
    v107 = *(a1 + 104);
    v108 = *(a1 + 112);
    v109 = v108 - v107;
    if (v108 != v107)
    {
      v110 = *(&v206 + 1);
      v111 = v109 >> 1;
      if (v111 <= 1)
      {
        v111 = 1;
      }

      do
      {
        v112 = *v107++;
        *v110++ = *(a2 + 288 * v112 + 216);
        --v111;
      }

      while (v111);
    }
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::skipSmallCoalescing)
  {
    v113 = 0;
  }

  else
  {
    memset(v214, 0, sizeof(v214));
    v114 = *(a1 + 128);
    v115 = *(a1 + 136);
    if (v114 != v115)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v214, a1, 4 * (v115 - v114), 0);
      v116 = *(a1 + 128);
      v117 = *(a1 + 136);
      v118 = v117 - v116;
      if (v117 != v116)
      {
        v119 = *(&v214[0] + 1);
        v120 = v118 >> 1;
        if (v120 <= 1)
        {
          v120 = 1;
        }

        do
        {
          v121 = *v116++;
          *v119++ = *(a2 + 288 * v121 + 216);
          --v120;
        }

        while (v120);
      }
    }

    v113 = *&v214[0];
  }

  v204 = 0u;
  v205 = 0u;
  v122 = *(a1 + 176);
  v123 = *(a1 + 184);
  if (v122 != v123)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v204, a1, 4 * (v123 - v122), 0);
    v124 = *(a1 + 176);
    v125 = *(a1 + 184);
    v126 = v125 - v124;
    if (v125 != v124)
    {
      v127 = *(&v204 + 1);
      v128 = v126 >> 1;
      if (v128 <= 1)
      {
        v128 = 1;
      }

      do
      {
        v129 = *v124++;
        *v127++ = *(a2 + 288 * v129 + 216);
        --v128;
      }

      while (v128);
    }
  }

  if (*(a1 + 56) != *(a1 + 64) && (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::skipSmallCoalescing & 1) == 0)
  {
    if (*(a1 + 50) == 1)
    {
      v130 = *(a1 + 16);
      if (*(v130 + 5600) == 1)
      {
        *(*(v130 + 5640) - 56) = 0;
      }

      else
      {
        *(v130 + 4980) = 0;
        v131 = *(v130 + 4976) != 0;
        LODWORD(v214[0]) = 0;
        agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v130 + 24, 4, 0, v131, 0, v214);
        v132 = *(v130 + 776);
        *v132 = -1610612735;
        *(v130 + 776) = v132 + 1;
      }
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::{lambda(char const*)#1}::operator()(v208);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
    v133 = a1;
    v134 = *(a1 + 200);
    for (i = *(v133 + 208); v134 != i; ++v134)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::waitForVirtualSubstream(*(v196 + 16), *v134);
    }

    v136 = v196;
    v137 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(v196, 98, 256);
    memset(v214, 0, 24);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v214, v196, 40, 0);
    v138 = v214[0];
    **&v214[0] = 0;
    *(v138 + 8) = 0;
    v139 = (*(v136 + 64) - *(v136 + 56)) >> 1;
    *(v138 + 16) = v96;
    *(v138 + 24) = v139;
    *(v138 + 32) = v139;
    *(*(*(v196 + 32) + 24) + *(*(v196 + 32) + 4) + 56) = *(&v138 + 1);
    memset(v214, 0, 24);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v214, v196, 4, 0);
    v140 = *(&v214[0] + 1);
    **&v214[0] = 0;
    v141 = *(v196 + 32);
    *(*(v141 + 24) + *(v141 + 4) + 88) = v140;
    *&v214[0] = (*(v136 + 64) - *(v136 + 56)) >> 1;
    *(v214 + 8) = vdupq_n_s64(1uLL);
    *v198 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::smallRefitSingleThreadgroupSize;
    *&v198[8] = *(v214 + 8);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(v196 + 16), v141, v137, v214, v198);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(v196 + 16));
    v142 = *(v196 + 200);
    for (j = *(v196 + 208); v142 != j; ++v142)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::waitForVirtualSubstream(*(v196 + 16), *v142);
    }

    a1 = v196;
    if (*(v196 + 128) != *(v196 + 136))
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::{lambda(char const*)#1}::operator()(v208);
      memset(v214, 0, 24);
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v214, v196, 40, 0);
      v144 = v214[0];
      **&v214[0] = 0;
      *(v144 + 8) = 0;
      v145 = (*(v196 + 136) - *(v196 + 128)) >> 1;
      *(v144 + 16) = v113;
      *(v144 + 24) = v145;
      *(v144 + 32) = v145;
      *(*(*(v196 + 32) + 24) + *(*(v196 + 32) + 4) + 56) = *(&v144 + 1);
      v146 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(v196, 100, 256);
      *&v214[0] = (*(v196 + 136) - *(v196 + 128)) >> 1;
      *(v214 + 8) = vdupq_n_s64(1uLL);
      *v198 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::smallRefitQtbSingleThreadgroupSize;
      *&v198[8] = *(v214 + 8);
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(v196 + 16), *(v196 + 32), v146, v214, v198);
    }
  }

  if (*(a1 + 104) != *(a1 + 112))
  {
    if (*(a1 + 50) == 1)
    {
      v147 = *(a1 + 16);
      if (*(v147 + 5600) == 1)
      {
        *(*(v147 + 5640) - 56) = 1;
      }

      else
      {
        *(v147 + 4980) = 1;
        v148 = *(v147 + 4976) != 0;
        LODWORD(v214[0]) = 0;
        agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v147 + 24, 4, 0, v148, 1, v214);
        v149 = *(v147 + 776);
        *v149 = -1610612734;
        *(v147 + 776) = v149 + 1;
      }
    }

    if (*(a1 + 44) >= 5u)
    {
      v150 = 2688;
    }

    else
    {
      v150 = 1536;
    }

    v151 = *(a1 + 16);
    *(*(v151 + 4544) + 2036) = v150;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(v151);
    v152 = a1;
    v153 = *(a1 + 200);
    for (k = *(v152 + 208); v153 != k; ++v153)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::waitForVirtualSubstream(*(v196 + 16), *v153);
    }

    v155 = v196;
    v217[0] = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(v196, 118, 256);
    v156 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(v196, 116, 256);
    v217[1] = v156;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v203, v155, 2 * (*(v155 + 112) - *(v155 + 104)), 1);
    *(&v214[0] + 1) = 0;
    *&v215[8] = 0u;
    LODWORD(v214[0]) = 1;
    v214[1] = v206;
    *v215 = v207;
    *&v215[16] = (*(v155 + 112) - *(v155 + 104)) >> 1;
    v216 = 0x2000000020;
    if (__vala)
    {
      while (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::verify != 1)
      {
LABEL_202:
        *(&v214[0] + 1) = v217[__vala < *(v196 + 40)];
        *&v215[20] = __vala;
        *v198 = v203[0];
        *&v198[16] = v203[1];
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCoalescedRefits(v196, v214, 1, v198);
        v162 = *(v196 + 16);
        if (*(v162 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(v196 + 16), 22, 0, 0, 0);
          *(v162 + 2306) = 0;
          if (*(v162 + 2292) == 1 && !*(v162 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v162, 22, (v162 + 5544), (v162 + 5552), (v162 + 5560));
          }
        }

        if (!--__vala)
        {
          goto LABEL_208;
        }
      }

      v198[23] = 6;
      strcpy(v198, "large ");
      std::to_string(v197, __vala);
      if (v197[23] >= 0)
      {
        v157 = v197;
      }

      else
      {
        v157 = *v197;
      }

      if (v197[23] >= 0)
      {
        v158 = v197[23];
      }

      else
      {
        v158 = *&v197[8];
      }

      v159 = std::string::append(v198, v157, v158);
      v160 = v159->__r_.__value_.__r.__words[0];
      v161 = SHIBYTE(v159->__r_.__value_.__r.__words[2]);
      v159->__r_.__value_.__r.__words[0] = 0;
      v159->__r_.__value_.__l.__size_ = 0;
      v159->__r_.__value_.__r.__words[2] = 0;
      if ((v197[23] & 0x80000000) != 0)
      {
        operator delete(*v197);
        if ((v198[23] & 0x80000000) != 0)
        {
          goto LABEL_207;
        }
      }

      else
      {
        if ((v198[23] & 0x80000000) == 0)
        {
          goto LABEL_200;
        }

LABEL_207:
        operator delete(*v198);
      }

LABEL_200:
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::{lambda(char const*)#1}::operator()(v208);
      if (v161 < 0)
      {
        operator delete(v160);
      }

      goto LABEL_202;
    }

LABEL_208:
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::{lambda(char const*)#1}::operator()(v208);
    v163 = v206;
    v164 = v196;
    v166 = *(v196 + 104);
    v165 = *(v196 + 112);
    memset(v198, 0, 24);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v198, v196, 40, 0);
    v167 = (v165 - v166) >> 1;
    v168 = *v198;
    **v198 = 0;
    *(v168 + 8) = 0;
    *(v168 + 16) = v163;
    *(v168 + 24) = v167;
    *(v168 + 32) = v167;
    v169 = *(v196 + 32);
    *(*(v169 + 24) + *(v169 + 4) + 56) = *(&v168 + 1);
    *v198 = (4 * (*(v164 + 112) - *(v164 + 104))) & 0xFFFFFFF8;
    *&v198[8] = vdupq_n_s64(1uLL);
    *v197 = xmmword_29D2F23B0;
    *&v197[16] = 1;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(v196 + 16), v169, v156, v198, v197);
    if (*(v164 + 176) != *(v164 + 184))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(v196 + 16));
      v170 = *(v196 + 200);
      for (m = *(v196 + 208); v170 != m; ++v170)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::waitForVirtualSubstream(*(v196 + 16), *v170);
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::{lambda(char const*)#1}::operator()(v208);
      v172 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(v196, 120, 256);
      *v198 = 2;
      *&v198[8] = v172;
      *&v198[16] = v204;
      v199 = v205;
      v200 = (*(v196 + 184) - *(v196 + 176)) >> 1;
      v201 = 0x20FFFFFFFFLL;
      v202 = 32;
      memset(v197, 0, sizeof(v197));
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCoalescedRefits(v196, v198, 1, v197);
    }
  }

  v173 = v209;
  v174 = v210;
  if (v209 != v210)
  {
    v175 = MEMORY[0x29EDCA5F8];
    do
    {
      v176 = **(v196 + 16);
      v177 = v173[1];
      *&v214[0] = v175;
      *(&v214[0] + 1) = 3221225472;
      *&v214[1] = ___ZZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE12encodeRefitsENS_4SpanINS6_5RefitEEEENKUlvE_clEv_block_invoke;
      *(&v214[1] + 1) = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
      *v215 = v177;
      [v176 addCompletedHandler:{v214, v178}];
      v173 += 4;
    }

    while (v173 != v174);
  }

LABEL_215:
  if (v209)
  {
    v210 = v209;
    operator delete(v209);
  }
}

void sub_29CEA79E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  v40 = a1;
  v41 = *(v39 - 240);
  if (v41)
  {
    *(v39 - 232) = v41;
    operator delete(v41);
    a1 = v40;
  }

  _Unwind_Resume(a1);
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::{lambda(char const*)#1}::operator()(uint64_t a1)
{
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::verify == 1)
  {
    v2 = *a1;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v26, *a1, 0x480188uLL, 1);
    v3 = v26[1];
    bzero(v26[1], 0x480188uLL);
    v3[1] = -1;
    v4 = v26[0];
    v5 = *(a1 + 16);
    v6 = *v5;
    *v5 = v6 + 1;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v28, v2, 16, 0);
    v7 = v28;
    v8 = v29;
    *v28 = v4;
    v7[1] = v6;
    *(*(*(v2 + 32) + 24) + *(*(v2 + 32) + 4) + 32) = v8;
    v9 = *(a1 + 8);
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    if (v10 >= v11)
    {
      v14 = *v9;
      v15 = v10 - *v9;
      v16 = v15 >> 5;
      v17 = (v15 >> 5) + 1;
      if (v17 >> 59)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v11 - v14;
      if (v18 >> 4 > v17)
      {
        v17 = v18 >> 4;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFE0)
      {
        v19 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (!(v19 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = (32 * v16);
      v21 = v27;
      *v20 = *v26;
      v20[1] = v21;
      v13 = 32 * v16 + 32;
      memcpy(0, v14, v15);
      *v9 = 0;
      *(v9 + 8) = v13;
      *(v9 + 16) = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      v12 = v27;
      *v10 = *v26;
      v10[1] = v12;
      v13 = (v10 + 2);
    }

    *(v9 + 8) = v13;
    if ((**(a1 + 24) & 1) == 0)
    {
      v22 = **(v2 + 16);
      v25[0] = MEMORY[0x29EDCA5F8];
      v25[1] = 3221225472;
      v25[2] = ___ZZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE12encodeRefitsENS_4SpanINS6_5RefitEEEENKUlPKcE_clESB__block_invoke;
      v25[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
      v25[4] = v3;
      [v22 addCompletedHandler:v25];
      v28 = 0;
      v29 = 0;
      v30 = 0;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v28, v2, 16, 0);
      v23 = v28;
      v24 = v29;
      *v28 = v4;
      v23[1] = 0;
      *(*(*(v2 + 32) + 24) + *(*(v2 + 32) + 4) + 32) = v24;
      **(a1 + 24) = 1;
    }
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::{lambda(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&,BOOL)#1}::operator()(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v138 = *(a2 + 224);
  v6 = *(a2 + 280);
  v7 = *(a2 + 18) & 0xFE;
  if (*(a2 + 208))
  {
    v8 = *(a2 + 208);
  }

  else
  {
    v8 = *(a2 + 200);
  }

  v9 = [v8 buffer];
  v10 = [v8 bufferOffset];
  v11 = [v9 gpuAddress];
  v12 = [v9 length];
  v14 = *(v4 + 52);
  if (v14)
  {
    v15 = v7 == 6;
  }

  else
  {
    v15 = 0;
  }

  v16 = v11 + v10;
  v141[0] = v11 + v10;
  v141[1] = v10;
  v141[2] = v12;
  v141[3] = 0;
  if (!v15 && (v6 & 4) == 0 && (v6 & 8) == 0)
  {
    return;
  }

  if ((*(v4 + 280) & 0x20) != 0 && (a3 & 1) == 0)
  {
    v19 = *(v4 + 208);
    v144 = *(v4 + 200);
    *v143 = v19;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopies(a1, &v144, v143, 1uLL, v13);
    v20 = *(a1 + 16);
    if (*(v20 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
      *(v20 + 2306) = 0;
      if (*(v20 + 2292) == 1 && !*(v20 + 4976))
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v20, 22, (v20 + 5544), (v20 + 5552), (v20 + 5560));
      }
    }

    v14 = *(v4 + 52);
  }

  if (v14)
  {
    if ((*(v4 + 18) & 0xFE) == 6 && (*(v4 + 15) & 1) != 0 && (a3 & 1) == 0)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyMotionTransforms(a1, v4, v141);
      v21 = *(a1 + 16);
      if (*(v21 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
        *(v21 + 2306) = 0;
        if (*(v21 + 2292) == 1 && !*(v21 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v21, 22, (v21 + 5544), (v21 + 5552), (v21 + 5560));
        }
      }
    }
  }

  v22 = *(v4 + 18);
  v23 = v22 == 5 || v22 == 2;
  if (v23 && (v6 & 4) != 0 && (a3 & 1) == 0)
  {
    v24 = *(v4 + 36);
    if (v24)
    {
      v25 = *(v138 + 56);
      if (v25)
      {
        v26 = v4;
        v27 = *(v4 + 40);
        v28 = *(*(a1 + 32) + 24) + *(*(a1 + 32) + 4);
        *(v28 + 40) = v16;
        *(v28 + 88) = v16 + 152;
        v144 = 0;
        v145 = 0uLL;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v144, a1, 24, 0);
        v29 = v144;
        v30 = v145.i64[0];
        *v144 = *(v26 + 248);
        v29[2] = v27;
        v29[3] = v24;
        v4 = v26;
        v29[4] = v25;
        *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 96) = v30;
        Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 128, 0);
        v144 = v24;
        v145.i64[0] = v25;
        v145.i64[1] = 1;
        *v143 = xmmword_29D2F1C70;
        *&v143[16] = 1;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), Pipeline, &v144, v143);
      }
    }

    v32 = *(a1 + 16);
    if (*(v32 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
      *(v32 + 2306) = 0;
      if (*(v32 + 2292) == 1 && !*(v32 + 4976))
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v32, 22, (v32 + 5544), (v32 + 5552), (v32 + 5560));
      }
    }
  }

  *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 56) = *(v4 + 216);
  v33 = *(v4 + 4);
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::{lambda(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&,BOOL)#1}::operator() const(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&,BOOL)::enableSingleTgRefitForTopDown = 0;
  }

  if ((v33 - 1) < 2 || AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit>)::{lambda(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&,BOOL)#1}::operator() const(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&,BOOL)::enableSingleTgRefitForTopDown == 1 && AGX::BVHDescriptor::satisfiesPLOCLimits(v4))
  {
    v34 = (*(v4 + 280) >> 1) & 1 | 0x100;
    v139 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 99, ((*(v4 + 280) & 2) != 0) | 0x100u);
    v35 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 101, v34);
    v36 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 97, v34);
    v37 = *(v4 + 4);
    v144 = 0;
    v145 = 0uLL;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v144, a1, 72, 1);
    v38 = v144;
    v137 = v145.i64[1];
    v39 = v145.i64[0];
    v144[8] = 0;
    v38[2] = 0u;
    v38[3] = 0u;
    *v38 = 0u;
    v38[1] = 0u;
    v144 = 0;
    v145 = 0uLL;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v144, a1, 6, 0);
    v41 = v144;
    v40 = v145.i64[0];
    *(v144 + 2) = 0;
    *v41 = 0;
    v42 = *(v4 + 280);
    if (v37 == 2)
    {
      {
        v128 = v40;
        v40 = v128;
        if (v129)
        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&)::mediumRefitSingleThreadgroupSize = 0;
          v40 = v128;
        }
      }

      v43 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&)::mediumRefitSingleThreadgroupSize;
      if (!AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&)::mediumRefitSingleThreadgroupSize)
      {
        v44 = *(v4 + 168);
LABEL_97:
        v88 = ((v44 >> 4) + 31) & 0x1FFFFFE0;
        if (v88 <= 0x40)
        {
          v88 = 64;
        }

        if (v88 >= 0x400)
        {
          LOWORD(v88) = 1024;
        }

        goto LABEL_101;
      }
    }

    else
    {
      {
        v130 = v40;
        v40 = v130;
        if (v131)
        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&)::smallRefitSingleThreadgroupSize = 0;
          v40 = v130;
        }
      }

      v43 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&)::smallRefitSingleThreadgroupSize;
      if (!AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&)::smallRefitSingleThreadgroupSize)
      {
        v44 = *(v4 + 32);
        goto LABEL_97;
      }
    }

    v88 = v43 + 31;
    if (v88 >= 0x400)
    {
      LOWORD(v88) = 1024;
    }

    else
    {
      LOWORD(v88) = v88 & 0xFFE0;
    }

LABEL_101:
    *v41 = v88;
    v136 = v35;
    if (v42)
    {
      v100 = v39;
      v101 = v42;
      v102 = v36;
      v103 = *(*(v4 + 224) + 122);
      if (v103 == 3)
      {
        v104 = 1024;
      }

      else
      {
        v104 = 640;
      }

      if (v103 != 3 && v37 != 2)
      {
        v105 = v40;
        v106 = AGX::BVHDescriptor::maxInnerNodeCount(v4);
        v40 = v105;
        v104 = (v106 + 31) & 0xFFFFFFE0;
      }

      {
        v132 = v40;
        v40 = v132;
        if (v133)
        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&)::smallRefitQtbSingleThreadgroupSizeEv = 0;
          v40 = v132;
        }
      }

      {
        v135 = v40;
        v40 = v135;
        if (v134)
        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&)::mediumRefitQtbSingleThreadgroupSizeEv = 0;
          v40 = v135;
        }
      }

      v108 = v107[466];
      if (!v108)
      {
        v108 = v104;
      }

      v109 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&)::mediumRefitQtbSingleThreadgroupSizeEv;
      if (!AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::Refit const&)::mediumRefitQtbSingleThreadgroupSizeEv)
      {
        v109 = v104;
      }

      if (v37 == 2)
      {
        v108 = v109;
      }

      v110 = v108 + 31;
      if ((v110 & 0xFFFFFC00) != 0)
      {
        v111 = 1024;
      }

      else
      {
        v111 = v110 & 0xFFE0;
      }

      *(v41 + 2) = v111;
      if (v103 == 3)
      {
        v98 = 4;
      }

      else
      {
        v98 = 1;
      }

      v99 = 2;
      v36 = v102;
      v42 = v101;
      v39 = v100;
    }

    else
    {
      v98 = 0;
      *(v41 + 2) = 0;
      v99 = 1;
    }

    *(v41 + 1) = v98;
    v112 = *(a1 + 32);
    v113 = (*(v112 + 24) + *(v112 + 4));
    v113[7] = *(v4 + 216);
    v113[8] = v40;
    v113[9] = v39;
    v114 = 32;
    if (*(v4 + 4))
    {
      v114 = 1;
    }

    v144 = v99;
    v145 = vdupq_n_s64(1uLL);
    *v143 = v114;
    *&v143[8] = v145;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), v112, v36, &v144, v143);
    v115 = *(a1 + 16);
    if (*(v115 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
      *(v115 + 2306) = 0;
      if (*(v115 + 2292) == 1 && !*(v115 + 4976))
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v115, 22, (v115 + 5544), (v115 + 5552), (v115 + 5560));
      }
    }

    v144 = 0;
    v145 = 0uLL;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v144, a1, 4, 0);
    v116 = v145.i64[0];
    *v144 = v37 == 2;
    v117 = *(a1 + 32);
    *(*(v117 + 24) + *(v117 + 4) + 88) = v116;
    v118 = *(a1 + 16);
    *(v118 + 2060) |= 4u;
    v119 = *(v118 + 4536);
    *(v118 + 4536) = v117;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v118, 22, v139, v39, v137);
    if (v119)
    {
      *(v118 + 4536) = v119;
    }

    if (v42)
    {
      v120 = *(a1 + 16);
      v121 = *(a1 + 32);
      *(v120 + 2060) |= 4u;
      v122 = *(v120 + 4536);
      *(v120 + 4536) = v121;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v120, 22, v136, v39 + 24, v137);
      if (v122)
      {
        *(v120 + 4536) = v122;
      }
    }

    if (v37 == 2)
    {
      v123 = *(a1 + 16);
      if (*(v123 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
        *(v123 + 2306) = 0;
        if (*(v123 + 2292) == 1 && !*(v123 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v123, 22, (v123 + 5544), (v123 + 5552), (v123 + 5560));
        }
      }

      v144 = 0;
      v145 = 0uLL;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v144, a1, 4, 0);
      v124 = v145.i64[0];
      *v144 = 2;
      v125 = *(a1 + 32);
      *(*(v125 + 24) + *(v125 + 4) + 88) = v124;
      v126 = *(a1 + 16);
      *(v126 + 2060) |= 4u;
      v127 = *(v126 + 4536);
      *(v126 + 4536) = v125;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v126, 22, v139, v39 + 48, v137);
      if (v127)
      {
        *(v126 + 4536) = v127;
      }
    }

    goto LABEL_145;
  }

  v45 = *(v4 + 280);
  v46 = *(v4 + 200);
  v47 = [v46 buffer];
  v48 = [v46 bufferOffset];
  v49 = [v47 gpuAddress];
  [v47 length];
  v50 = *(v4 + 224);
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride >= 5)
  {
    v51 = 2688;
  }

  else
  {
    v51 = 1536;
  }

  *(*(*(a1 + 16) + 4544) + 2036) = v51;
  v52 = (*v4 - 1);
  v53 = v52 + (*(v4 + 280) & 1);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v144, a1, 8 * (v53 + 2 * v53), 1);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v143, a1, 8 * (v53 + 4 * v53), 0);
  v54 = v53 - 1;
  if (v53 <= 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = v53;
  }

  if (v53)
  {
    v56 = v49 + v48;
    if (v52)
    {
      v57 = 4 * v52 + 128;
      v58 = *&v143[8] + 40 * v52 - 40;
      v59 = v52 + 2 * v52;
      v60 = v145.i64[0] + v59 * 8 - 24;
      v61 = &v144[v59 - 3];
      v62 = v52;
      do
      {
        if (v62 >= *(a1 + 40))
        {
          v63 = 1;
        }

        else
        {
          v63 = 8;
        }

        *v60 = xmmword_29D2F2440;
        *(v60 + 16) = 0x100000001;
        *v58 = v56;
        *(v58 + 8) = v61;
        *(v58 + 16) = 120;
        *(v58 + 24) = v57;
        *(v58 + 32) = v63;
        v57 -= 4;
        v58 -= 40;
        v60 -= 24;
        v61 -= 24;
        --v62;
      }

      while (v62);
    }

    if (*(v4 + 280))
    {
      v64 = (v55 - 1);
      v65 = 4 * (*v4 - 1);
      if (*(v50 + 122) == 3)
      {
        v66 = 4;
      }

      else
      {
        v66 = 1;
      }

      v67 = v64 + 2 * v64;
      v68 = &v144[v67];
      v69 = v67 * 8 + v145.i64[0];
      v70 = *&v143[8] + 40 * v64;
      *v69 = xmmword_29D2F2440;
      *(v69 + 16) = 0x100000001;
      *v70 = v56;
      *(v70 + 8) = v68;
      *(v70 + 16) = 120;
      *(v70 + 24) = v65;
      *(v70 + 32) = v66;
    }

    memset(v147, 0, 24);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v147, a1, 4, 0);
    v71 = *(&v147[0] + 1);
    **&v147[0] = v53;
    v72 = *(*(a1 + 32) + 24) + *(*(a1 + 32) + 4);
    v73 = *v143;
    *(v72 + 8) = v71;
    *(v72 + 16) = v73;
    v74 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 133, 0);
    *&v147[0] = v53;
    *(v147 + 8) = vdupq_n_s64(1uLL);
    *v142 = v53;
    *&v142[8] = *(v147 + 8);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), v74, v147, v142);
    v75 = *(a1 + 16);
    if (*(v75 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
      *(v75 + 2306) = 0;
      if (*(v75 + 2292) == 1 && !*(v75 + 4976))
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v75, 22, (v75 + 5544), (v75 + 5552), (v75 + 5560));
      }
    }
  }

  v76 = (v45 >> 1) & 1;
  if (v52)
  {
    v140 = v4;
    v77 = v146;
    v78 = &v144[3 * v52 - 3];
    do
    {
      v79 = *(a1 + 40);
      memset(v147, 0, 24);
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v147, a1, 4, 0);
      v80 = *(&v147[0] + 1);
      **&v147[0] = v52;
      *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 80) = v80;
      if (v52 >= v79)
      {
        v81 = 119;
      }

      else
      {
        v81 = 117;
      }

      v82 = v53 & 0xFFFFFFFFFFFF0000 | v76;
      v53 = v82 | 0x100;
      v83 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, v81, v82 | 0x100u);
      v84 = *(a1 + 16);
      v85 = *(a1 + 32);
      *(v84 + 2060) |= 4u;
      v86 = *(v84 + 4536);
      *(v84 + 4536) = v85;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v84, 22, v83, v78, v77);
      if (v86)
      {
        *(v84 + 4536) = v86;
      }

      v87 = *(a1 + 16);
      if (*(v87 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
        *(v87 + 2306) = 0;
        if (*(v87 + 2292) == 1 && !*(v87 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v87, 22, (v87 + 5544), (v87 + 5552), (v87 + 5560));
        }
      }

      v78 -= 24;
      --v52;
    }

    while (v52);
    v4 = v140;
  }

  memset(v147, 0, 24);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v147, a1, 4, 0);
  v89 = *(&v147[0] + 1);
  **&v147[0] = 0;
  *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 80) = v89;
  v90 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 117, v76 | 0x100u);
  v147[0] = xmmword_29D2F23B0;
  *&v147[1] = 1;
  *v142 = xmmword_29D2F23B0;
  *&v142[16] = 1;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), v90, v147, v142);
  v91 = v4;
  if (*(v4 + 280))
  {
    v92 = &v144[3 * v54];
    v93 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 121, v76 | 0x100u);
    v94 = v146;
    v95 = *(a1 + 16);
    v96 = *(a1 + 32);
    *(v95 + 2060) |= 4u;
    v97 = *(v95 + 4536);
    *(v95 + 4536) = v96;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v95, 22, v93, v92, v94);
    if (v97)
    {
      *(v95 + 4536) = v97;
    }
  }

  v4 = v91;
LABEL_145:
  if (*(v4 + 18) - 8 <= 0xFFFFFFFD && (*(v4 + 280) & 0x10) == 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyPPD(a1, v4, v4 + 248, v141);
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopies(uint64_t a1, id *a2, uint64_t *a3, unint64_t a4, int8x16_t a5)
{
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopies(AGXG18PFamilyRayTracingAccelerationStructure **,AGXG18PFamilyRayTracingAccelerationStructure **,unsigned long)::numBytesPerThread = 16;
  }

  if (a4 < 2)
  {
    v14 = *a2;
    v15 = *a3;
    v16 = [*a2 buffer];
    v17 = [v14 bufferOffset];
    v18 = [v16 gpuAddress];
    [v16 length];
    v19 = v18 + v17;
    v20 = [v15 buffer];
    v21 = [v15 bufferOffset];
    v22 = [v20 gpuAddress];
    [v20 length];
    LODWORD(v20) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopies(AGXG18PFamilyRayTracingAccelerationStructure **,AGXG18PFamilyRayTracingAccelerationStructure **,unsigned long)::numBytesPerThread;
    v23 = v22 + v21;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v80, a1, 4, 1);
    v24 = v81;
    v83 = v81;
    v84 = v80;
    v85 = 4;
    v86 = v82;
    *v80 = v20;
    v25 = [v15 accelerationStructureUniqueIdentifier];
    if (**MEMORY[0x29EDC56B0])
    {
      [objc_msgSend(v14 "buffer")];
      [objc_msgSend(v15 "buffer")];
      IOGPUDeviceTraceEvent();
    }

    v80 = 0;
    v81 = 0;
    v82 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v80, a1, 40, 0);
    v26 = v80;
    v27 = v81;
    v28 = [v14 size];
    *v26 = v19;
    v26[1] = v28;
    v29 = [v15 size];
    v26[2] = v23;
    v26[3] = v29;
    v26[4] = v25;
    v30 = *(*(a1 + 32) + 24) + *(*(a1 + 32) + 4);
    *(v30 + 96) = v27;
    *(v30 + 128) = v24;
    Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 124, 0);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(a1, Pipeline, v19 + 72, &v83, AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopies(AGXG18PFamilyRayTracingAccelerationStructure **,AGXG18PFamilyRayTracingAccelerationStructure **,unsigned long)::numBytesPerThread, 0, 1);
  }

  else
  {
    v75 = a4;
    if (a4)
    {
      v6 = 0;
      v7 = *(a1 + 16);
      v8 = a4;
      v9 = MEMORY[0x29EDC5638];
      do
      {
        v10 = a2[v6];
        if (v10 && *(v10 + *v9 + 16) >> 61 == 3)
        {
          v11 = v10[39];
          IOGPUResourceListAddResource();
          v12 = *(v11 + 64);
          v13 = *(v11 + 72);
          while (v12 != v13)
          {
            if (*v12)
            {
              AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v12);
              IOGPUResourceListAddResource();
            }

            v12 += 2;
          }
        }

        ++v6;
      }

      while (v6 != v8);
      AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourcesCommon(v7, a2, v75, a5, 1, 1);
      v33 = 0;
      v34 = *(a1 + 16);
      do
      {
        v35 = a3[v33];
        if (v35 && *(v35 + *v9 + 16) >> 61 == 3)
        {
          v36 = *(v35 + 312);
          IOGPUResourceListAddResource();
          v37 = *(v36 + 64);
          v38 = *(v36 + 72);
          while (v37 != v38)
          {
            if (*v37)
            {
              AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v37);
              IOGPUResourceListAddResource();
            }

            v37 += 2;
          }
        }

        ++v33;
      }

      while (v33 != v8);
      a4 = v75;
      AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourcesCommon(v34, a3, v75, v32, 3, 3);
    }

    v39 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopies(AGXG18PFamilyRayTracingAccelerationStructure **,AGXG18PFamilyRayTracingAccelerationStructure **,unsigned long)::numBytesPerThread;
    v40 = 32 * AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopies(AGXG18PFamilyRayTracingAccelerationStructure **,AGXG18PFamilyRayTracingAccelerationStructure **,unsigned long)::numBytesPerThread;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v83, a1, 4, 0);
    v70 = v84;
    *v83 = v39;
    v69 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 125, 0);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v83, a1, 40 * a4, 0);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v80, a1, 4 * a4, 0);
    v41 = 0;
    v67 = v83;
    v68 = v84;
    v65 = v80;
    v66 = v81;
    v64 = vdupq_n_s64(1uLL);
    v63 = xmmword_29D2F1C70;
    do
    {
      v47 = 0;
      v73 = &v67[10 * v41];
      v74 = v41;
      v72 = &v65[v41];
      v48 = &v66[v41];
      v49 = &v68[10 * v41 + 4];
      do
      {
        v50 = a2[v41];
        v51 = a3[v41];
        v52 = [objc_msgSend(v50 buffer];
        if (v52 >= [objc_msgSend(v51 "buffer")])
        {
          v53 = v51;
        }

        else
        {
          v53 = v50;
        }

        v54 = [objc_msgSend(v53 "buffer")];
        *v48 = v47;
        v55 = (v40 - 1 + v54) / v40 + v47;
        if (v55 >= 0xFFFFFFFF)
        {
          v42 = v41;
          v43 = v75;
          goto LABEL_29;
        }

        v56 = [v51 accelerationStructureUniqueIdentifier];
        v57 = [objc_msgSend(v50 "buffer")];
        v58 = [v50 bufferOffset] + v57;
        v59 = [v50 size];
        *(v49 - 2) = v58;
        *(v49 - 1) = v59;
        v60 = [objc_msgSend(v51 "buffer")];
        v61 = [v51 bufferOffset] + v60;
        v62 = [v51 size];
        ++v41;
        *v49 = v61;
        v49[1] = v62;
        v49[2] = v56;
        ++v48;
        v49 += 5;
        v47 = v55;
        v43 = v75;
      }

      while (v41 < v75);
      v42 = v75;
      LODWORD(v47) = v55;
      v41 = v75;
LABEL_29:
      v87 = 0;
      v88 = 0uLL;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v87, a1, 4, 0);
      v44 = v88.i64[0];
      *v87 = v42;
      v45 = *(a1 + 32);
      v46 = (*(v45 + 24) + *(v45 + 4));
      v46[12] = v73;
      v46[13] = v72;
      v46[14] = v44;
      v46[9] = v70;
      v87 = v47;
      v88 = v64;
      v78 = v63;
      v79 = 1;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), v45, v69, &v87, &v78);
      v41 += v74;
    }

    while (v41 < v43);
  }
}