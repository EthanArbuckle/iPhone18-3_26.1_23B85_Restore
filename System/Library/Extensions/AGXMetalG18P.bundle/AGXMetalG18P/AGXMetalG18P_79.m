void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCoalescedRefits(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v61, a1, 24 * a3, 1);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v60, a1, 20 * a3, 0);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v59, a1, 40 * a3, 0);
    v8 = (*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4));
    v10 = v61[1];
    v48 = v61[0];
    v9 = v61[0];
    v11 = v60[0];
    v12 = v60[1];
    v13 = v59[0];
    v14 = v59[1];
    v8[8] = v60[0];
    v8[9] = v9;
    v46 = v13;
    v8[7] = v13;
    v54 = *a2;
    v15 = a2[12];
    v16 = a2[13];
    *&v17 = *(a2 + 7);
    v52 = v17;
    if (!*a4)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v58, a1, 4 * v15, 1);
      v18 = *&v58[16];
      *a4 = *v58;
      *(a4 + 16) = v18;
    }

    v47 = v11;
    bzero(*(a4 + 8), 4 * v15);
    *v10 = 0;
    *(v10 + 8) = 0;
    *(&v19 + 1) = *(&v52 + 1);
    *(v10 + 12) = v52;
    *(v10 + 16) = 0x100000001;
    *v12 = v54;
    *(v12 + 4) = v16;
    *(v12 + 8) = *(a1 + 40);
    *(v12 + 12) = v52;
    *v14 = *a4;
    *(v14 + 8) = v15;
    *(v14 + 16) = *(a2 + 2);
    *(v14 + 24) = v15;
    *(v14 + 32) = v15;
    *(v14 + 36) = v16;
    v20 = (v15 + 31) & 0xFFFFFFE0;
    v49 = a3;
    v21 = a3 - 1;
    v50 = a1;
    if (a3 != 1)
    {
      v22 = a4;
      v23 = v14 + 40;
      v24 = v12 + 20;
      v25 = v10 + 24;
      v26 = a2 + 30;
      v27 = v22;
      do
      {
        v55 = *(v26 - 14);
        v28 = *(v26 - 2);
        v53 = *(v26 - 1);
        *&v19 = *v26;
        v51 = v19;
        v29 = v20;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v58, v50, 4 * v28, 1);
        v30 = *&v58[16];
        *v27 = *v58;
        *(v27 + 16) = v30;
        bzero(*(v27 + 8), 4 * v28);
        *v25 = 0;
        *(v25 + 8) = 0;
        *(&v19 + 1) = *(&v51 + 1);
        *(v25 + 12) = v51;
        *(v25 + 16) = 0x100000001;
        *v24 = v55;
        *(v24 + 4) = v53;
        *(v24 + 8) = *(v50 + 40);
        *(v24 + 12) = v51;
        *v23 = *v27;
        *(v23 + 8) = v28;
        *(v23 + 16) = *(v26 - 5);
        *(v23 + 24) = v28;
        if (v29 <= v28)
        {
          v31 = v28;
        }

        else
        {
          v31 = v29;
        }

        v20 = (v31 + 31) & 0xFFFFFFE0;
        *(v23 + 32) = v28;
        *(v23 + 36) = v53;
        v23 += 40;
        v24 += 20;
        v25 += 24;
        v26 += 8;
        --v21;
      }

      while (v21);
    }

    v33 = v48;
    v32 = v49;
    v35 = v46;
    v34 = v47;
    if (v20)
    {
      v36 = v20;
      Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(v50, 102, 256);
      *v58 = v49;
      *&v58[8] = vdupq_n_s64(1uLL);
      v56 = v36;
      v57 = *&v58[8];
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(v50 + 16), *(v50 + 32), Pipeline, v58, &v56);
      v38 = *(v50 + 16);
      if (*(v38 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(v50 + 16), 22, 0, 0, 0);
        *(v38 + 2306) = 0;
        if (*(v38 + 2292) == 1 && !*(v38 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v38, 22, (v38 + 5544), (v38 + 5552), (v38 + 5560));
        }
      }

      v39 = v61[3];
      v40 = (a2 + 2);
      do
      {
        v41 = *(v50 + 32);
        v42 = *(v41 + 24) + *(v41 + 4);
        *(v42 + 56) = v35;
        *(v42 + 64) = v34;
        v43 = *v40;
        v44 = *(v50 + 16);
        *(v44 + 2060) |= 4u;
        v45 = *(v44 + 4536);
        *(v44 + 4536) = v41;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v44, 22, v43, v33, v39);
        if (v45)
        {
          *(v44 + 4536) = v45;
        }

        v40 += 8;
        v35 += 40;
        v34 += 20;
        v33 += 24;
        --v32;
      }

      while (v32);
    }
  }
}

void **AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(uint64_t a1)
{
  result = *(a1 + 280);
  v3 = *(a1 + 272);
  if (result != v3)
  {
    v4 = 0;
    while (1)
    {
      if (v4 && (*(a1 + 50) & 1) != 0)
      {
        v5 = *(a1 + 16);
        if (*(v5 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v5 + 2306) = 0;
          if (*(v5 + 2292) == 1 && !*(v5 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v5, 22, (v5 + 5544), (v5 + 5552), (v5 + 5560));
          }
        }

        v6 = *(a1 + 52);
        *(a1 + 52) = v6 + 1;
        v7 = *(a1 + 16);
        v8 = v7 + 4984;
        v9 = *(v7 + 4980);
        v10 = *(v7 + 4984 + 4 * v9);
        *(v7 + 4984 + 4 * v9) = v10 + 1;
        if (v10 >= 0xFF)
        {
          v11 = *(v7 + 4976) != 0;
          v175 = 0;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v7 + 24, 4, 0, v11, v9, &v175);
          v12 = *(v7 + 776);
          *v12 = -1610612736;
          *(v7 + 776) = v12 + 1;
          v13 = *(v7 + 4980);
          *(v7 + 4980) = -1;
          v14 = *(v7 + 4976) != 0;
          v175 = 0;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v7 + 24, 4, 0, v14, 0xFFFFFFFFLL, &v175);
          v15 = *(v7 + 776);
          *v15 = 1610613504;
          *(v7 + 776) = v15 + 1;
          *(v7 + 4980) = 0;
          *(v7 + 4984) = 0;
          if (*(v7 + 5600) == 1)
          {
            LODWORD(v9) = 0;
            *(*(v7 + 5640) - 56) = v13;
          }

          else
          {
            *(v7 + 4980) = v13;
            v16 = *(v7 + 4976) != 0;
            v175 = 0;
            agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v7 + 24, 4, 0, v16, v13, &v175);
            v17 = *(v7 + 776);
            *v17 = (v13 + 1) & 7 | 0xA0000000;
            *(v7 + 776) = v17 + 1;
            LODWORD(v9) = *(v7 + 4980);
          }

          ++*(v7 + 4992);
          v10 = *(v8 + 4 * v9);
          *(v8 + 4 * v9) = v10 + 1;
        }

        v18 = *(v7 + 4992);
        v19 = *(v7 + 5008);
        if (!v19)
        {
LABEL_22:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v20 = v19;
            v21 = *(v19 + 7);
            if (v21 <= v6)
            {
              break;
            }

            v19 = *v20;
            if (!*v20)
            {
              goto LABEL_22;
            }
          }

          if (v21 >= v6)
          {
            break;
          }

          v19 = v20[1];
          if (!v19)
          {
            goto LABEL_22;
          }
        }

        *(v20 + 8) = v9;
        *(v20 + 9) = v10;
        *(v20 + 10) = v18;
        v22 = *(v7 + 4965);
        v23 = *(v7 + 4976) != 0;
        v24 = *(v7 + 4980);
        v175 = 0;
        agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v7 + 24, 4, v22, v23, v24, &v175);
        v25 = *(v7 + 776);
        *v25 = ((v10 << 21) + 0x200000) & 0x1FE00000 | 0x60000060;
        *(v7 + 776) = v25 + 1;
        v26 = *(*(a1 + 16) + 4976);
        if (v26)
        {
          v27 = 0;
          do
          {
            v31 = *(a1 + 16);
            if (*(v31 + 5600) == 1)
            {
              *(*(v31 + 5640) - 56) = v27;
            }

            else
            {
              *(v31 + 4980) = v27;
              v32 = *(v31 + 4976) != 0;
              v175 = 0;
              agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v31 + 24, 4, 0, v32, v27, &v175);
              v33 = *(v31 + 776);
              *v33 = (v27 + 1) & 7 | 0xA0000000;
              *(v31 + 776) = v33 + 1;
              v31 = *(a1 + 16);
            }

            v34 = *(v31 + 5008);
            if (!v34)
            {
LABEL_37:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v35 = v34;
                v36 = *(v34 + 7);
                if (v36 <= v6)
                {
                  break;
                }

                v34 = *v35;
                if (!*v35)
                {
                  goto LABEL_37;
                }
              }

              if (v36 >= v6)
              {
                break;
              }

              v34 = v35[1];
              if (!v34)
              {
                goto LABEL_37;
              }
            }

            v37 = *(v35 + 8);
            if (*(v35 + 10) >= *(v31 + 4992))
            {
              v38 = *(v31 + 4980);
              if (v38 == v37)
              {
                v39 = *(v31 + 4965);
                v40 = *(v31 + 4976) != 0;
                v175 = 0;
                agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v31 + 24, 4, v39, v40, v37, &v175);
                v29 = 1610612992;
              }

              else
              {
                v28 = *(v31 + 4976) != 0;
                v29 = (((v37 << 18) + 0x40000) & 0x1C0000 | ((*(v35 + 9) << 21) + 0x200000) & 0x1FE00000) + 1610613248;
                v175 = 0;
                agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v31 + 24, 4, 0, v28, v38, &v175);
              }

              v30 = *(v31 + 776);
              *v30 = v29;
              *(v31 + 776) = v30 + 1;
            }

            v27 = (v27 + 1);
          }

          while (v27 != v26);
        }
      }

      v41 = *(a1 + 272) + 328 * v4;
      if (*(v41 + 120) == *(v41 + 128))
      {
        v51 = 0;
        goto LABEL_67;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::coalesceRefits = 0;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::refitBatchSize = 32;
      }

      v42 = *(v41 + 120);
      v43 = *(v41 + 128);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::coalesceRefits)
      {
        break;
      }

      if (v43 == v42)
      {
LABEL_61:
        v51 = 0;
        if (v43 != v42)
        {
          goto LABEL_65;
        }

        goto LABEL_66;
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(*(a1 + 16));
      v51 = 1;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(a1, *(v41 + 120), 1);
      v42 = *(v41 + 120);
      v43 = *(v41 + 128);
      if (0x8E38E38E38E38E39 * ((v43 - v42) >> 5) >= 2)
      {
        v52 = 288;
        v53 = 1;
        do
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
          v51 = 1;
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(a1, v52 + *(v41 + 120), 1);
          ++v53;
          v42 = *(v41 + 120);
          v43 = *(v41 + 128);
          v52 += 288;
        }

        while (v53 < 0x8E38E38E38E38E39 * ((v43 - v42) >> 5));
LABEL_64:
        if (v43 != v42)
        {
          goto LABEL_65;
        }

        goto LABEL_66;
      }

      for (; v43 != v42; v43 -= 288)
      {
LABEL_65:
      }

LABEL_66:
      *(v41 + 128) = v42;
LABEL_67:
      if (*(v41 + 152) != *(v41 + 144))
      {
        if (*(a1 + 50) == 1)
        {
          v54 = *(a1 + 16);
          if (*(v54 + 5600) == 1)
          {
            *(*(v54 + 5640) - 56) = 1;
          }

          else
          {
            *(v54 + 4980) = 1;
            v55 = *(v54 + 4976) != 0;
            v175 = 0;
            agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v54 + 24, 4, 0, v55, 1, &v175);
            v56 = *(v54 + 776);
            *v56 = -1610612734;
            *(v54 + 776) = v56 + 1;
          }
        }

        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::coalesceCopies = 1;
        }

        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::copyCoalesceBatchSize = 256;
        }

        v57 = *(v41 + 144);
        v58 = *(v41 + 152);
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::coalesceCopies == 1 && v58 != v57)
        {
          v59 = *(a1 + 16);
          if (v51)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(v59);
          }

          else
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(v59);
          }

          v61 = *(v41 + 144);
          if ((*(v41 + 152) - v61) >> 3 >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::copyCoalesceBatchSize)
          {
            v62 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::copyCoalesceBatchSize;
          }

          else
          {
            v62 = (*(v41 + 152) - v61) >> 3;
          }

          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopies(a1, v61, *(v41 + 168), v62, v60);
          for (i = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::copyCoalesceBatchSize; ; i += AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::copyCoalesceBatchSize)
          {
            v57 = *(v41 + 144);
            v58 = *(v41 + 152);
            if (i >= (v58 - v57) >> 3)
            {
              break;
            }

            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
            v65 = *(v41 + 144);
            if (((*(v41 + 152) - v65) >> 3) - i >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::copyCoalesceBatchSize)
            {
              v66 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::copyCoalesceBatchSize;
            }

            else
            {
              v66 = ((*(v41 + 152) - v65) >> 3) - i;
            }

            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopies(a1, (v65 + 8 * i), (*(v41 + 168) + 8 * i), v66, v64);
          }

          v51 = 1;
        }

        if (v58 != v57)
        {
          v67 = 0;
          v68 = 0;
          do
          {
            if ((AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::coalesceCopies & 1) == 0)
            {
              v70 = *(a1 + 16);
              if (v51)
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(v70);
              }

              else
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(v70);
              }

              v51 = 1;
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopies(a1, (*(v41 + 144) + v67), (*(v41 + 168) + v67), 1uLL, v69);
              v57 = *(v41 + 144);
            }

            v57 = *(v41 + 144);
            v67 += 8;
          }

          while (v68 < (*(v41 + 152) - v57) >> 3);
        }

        *(v41 + 152) = v57;
        *(v41 + 176) = *(v41 + 168);
      }

      v72 = *(v41 + 192);
      v71 = *(v41 + 200);
      if (v72 != v71)
      {
        if (*(a1 + 50) != 1)
        {
          goto LABEL_102;
        }

        v73 = *(a1 + 16);
        if (*(v73 + 5600) == 1)
        {
          *(*(v73 + 5640) - 56) = 0;
LABEL_102:
          if (v71 != v72)
          {
LABEL_103:
            v74 = *(a1 + 16);
            if (v51)
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(v74);
            }

            else
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(v74);
            }

            v51 = 1;
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(a1, **(v41 + 192), *(*(v41 + 192) + 8), 1);
            v72 = *(v41 + 192);
            v71 = *(v41 + 200);
            if ((v71 - v72) >= 0x11)
            {
              v75 = 0;
              v76 = 1;
              do
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
                v51 = 1;
                AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(a1, *(*(v41 + 192) + v75 + 16), *(*(v41 + 192) + v75 + 24), 1);
                ++v76;
                v72 = *(v41 + 192);
                v71 = *(v41 + 200);
                v75 += 16;
              }

              while (v76 < (v71 - v72) >> 4);
            }
          }
        }

        else
        {
          *(v73 + 4980) = 0;
          v77 = *(v73 + 4976) != 0;
          v175 = 0;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v73 + 24, 4, 0, v77, 0, &v175);
          v78 = *(v73 + 776);
          *v78 = -1610612735;
          *(v73 + 776) = v78 + 1;
          v72 = *(v41 + 192);
          v71 = *(v41 + 200);
          if (v71 != v72)
          {
            goto LABEL_103;
          }
        }

        while (v71 != v72)
        {

          v79 = *(v71 - 16);
          v71 -= 16;
        }

        *(v41 + 200) = v72;
      }

      v81 = *(v41 + 216);
      v80 = *(v41 + 224);
      if (v81 == v80)
      {
        goto LABEL_133;
      }

      if (*(a1 + 50) == 1)
      {
        v82 = *(a1 + 16);
        if (*(v82 + 5600) != 1)
        {
          *(v82 + 4980) = 0;
          v92 = *(v82 + 4976) != 0;
          v175 = 0;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v82 + 24, 4, 0, v92, 0, &v175);
          v93 = *(v82 + 776);
          *v93 = -1610612735;
          *(v82 + 776) = v93 + 1;
          if (*(v41 + 224) == *(v41 + 216))
          {
            goto LABEL_133;
          }

          goto LABEL_120;
        }

        *(*(v82 + 5640) - 56) = 0;
      }

      if (v80 == v81)
      {
        goto LABEL_133;
      }

LABEL_120:
      v83 = *(a1 + 16);
      if (v51)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(v83);
      }

      else
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(v83);
      }

      v84 = *(v41 + 216);
      if (((*(v41 + 224) - v84) >> 3) >= 0x100)
      {
        v85 = 256;
      }

      else
      {
        v85 = (*(v41 + 224) - v84) >> 3;
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeWriteCompactedSizes(a1, v84, v85);
      if (*(v41 + 224) - *(v41 + 216) >= 0x801uLL)
      {
        v86 = -256;
        v87 = 2048;
        v88 = 256;
        do
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
          v89 = *(v41 + 216);
          if ((v86 + ((*(v41 + 224) - v89) >> 3)) >= 0x100)
          {
            v90 = 256;
          }

          else
          {
            v90 = v86 + ((*(v41 + 224) - v89) >> 3);
          }

          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeWriteCompactedSizes(a1, (v87 + v89), v90);
          v88 += 256;
          v86 -= 256;
          v87 += 2048;
        }

        while (v88 < (*(v41 + 224) - *(v41 + 216)) >> 3);
      }

      v51 = 1;
LABEL_133:
      if (0x8F5C28F5C28F5C29 * ((*(v41 + 104) - *(v41 + 96)) >> 4) != 0x70A3D70A3D70A3D7 * ((*(v41 + 56) - *(v41 + 48)) >> 4) + 0x70A3D70A3D70A3D7 * ((*(v41 + 80) - *(v41 + 72)) >> 4))
      {
        if (*(a1 + 50) == 1)
        {
          v91 = *(a1 + 16);
          if (*(v91 + 5600) == 1)
          {
            *(*(v91 + 5640) - 56) = 0;
          }

          else
          {
            *(v91 + 4980) = 0;
            v94 = *(v91 + 4976) != 0;
            v175 = 0;
            agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v91 + 24, 4, 0, v94, 0, &v175);
            v95 = *(v91 + 776);
            *v95 = -1610612735;
            *(v91 + 776) = v95 + 1;
          }
        }

        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::coalesceSmallBuilds = 1;
        }

        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize = 256;
        }

        v96 = *(a1 + 16);
        if (v51)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(v96);
        }

        else
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(v96);
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::coalesceSmallBuilds)
        {
          v98 = *(v41 + 48);
          v97 = *(v41 + 56);
          if (v98 != v97)
          {
            v99 = 0;
            v100 = 0x8F5C28F5C28F5C29 * ((v97 - v98) >> 4);
            v101 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
            do
            {
              if (v100 - v99 >= v101)
              {
                v102 = v101;
              }

              else
              {
                v102 = v100 - v99;
              }

              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(a1, (v98 + 400 * v99), v102, 0);
              v101 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
              v99 += AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
              v98 = *(v41 + 48);
              v97 = *(v41 + 56);
              v100 = 0x8F5C28F5C28F5C29 * ((v97 - v98) >> 4);
            }

            while (v99 < v100);
          }

          if (v97 != v98)
          {
            do
            {
              v103 = v97 - 400;

              v97 = v103;
            }

            while (v103 != v98);
          }

          *(v41 + 56) = v98;
          v105 = *(v41 + 72);
          v104 = *(v41 + 80);
          if (v105 != v104)
          {
            v106 = 0;
            v107 = 0x8F5C28F5C28F5C29 * ((v104 - v105) >> 4);
            v108 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
            do
            {
              if (v107 - v106 >= v108)
              {
                v109 = v108;
              }

              else
              {
                v109 = v107 - v106;
              }

              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(a1, (v105 + 400 * v106), v109, 1u);
              v108 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
              v106 += AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
              v105 = *(v41 + 72);
              v104 = *(v41 + 80);
              v107 = 0x8F5C28F5C28F5C29 * ((v104 - v105) >> 4);
            }

            while (v106 < v107);
          }

          if (v104 != v105)
          {
            do
            {
              v110 = v104 - 400;

              v104 = v110;
            }

            while (v110 != v105);
          }

          *(v41 + 80) = v105;
          v112 = *(v41 + 96);
          v111 = *(v41 + 104);
          if (v112 != v111)
          {
            v113 = 0;
            v114 = 0x8F5C28F5C28F5C29 * ((v111 - v112) >> 4);
            v115 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
            do
            {
              if (v114 - v113 >= v115)
              {
                v116 = v115;
              }

              else
              {
                v116 = v114 - v113;
              }

              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(a1, (v112 + 400 * v113), v116, 2u);
              v115 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
              v113 += AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
              v112 = *(v41 + 96);
              v111 = *(v41 + 104);
              v114 = 0x8F5C28F5C28F5C29 * ((v111 - v112) >> 4);
            }

            while (v113 < v114);
          }

          if (v111 != v112)
          {
            do
            {
              v117 = v111 - 400;

              v111 = v117;
            }

            while (v117 != v112);
          }
        }

        else
        {
          v119 = *(v41 + 48);
          v118 = *(v41 + 56);
          if (v118 != v119)
          {
            v120 = 0;
            v121 = 0;
            do
            {
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(a1, (v120 + v119), 1uLL, 4u);
              ++v121;
              v119 = *(v41 + 48);
              v118 = *(v41 + 56);
              v120 += 400;
            }

            while (v121 < 0x8F5C28F5C28F5C29 * ((v118 - v119) >> 4));
          }

          if (v118 != v119)
          {
            do
            {
              v122 = v118 - 400;

              v118 = v122;
            }

            while (v122 != v119);
          }

          *(v41 + 56) = v119;
          v124 = *(v41 + 72);
          v123 = *(v41 + 80);
          if (v123 != v124)
          {
            v125 = 0;
            v126 = 0;
            do
            {
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(a1, (v125 + v124), 1uLL, 4u);
              ++v126;
              v124 = *(v41 + 72);
              v123 = *(v41 + 80);
              v125 += 400;
            }

            while (v126 < 0x8F5C28F5C28F5C29 * ((v123 - v124) >> 4));
          }

          if (v123 != v124)
          {
            do
            {
              v127 = v123 - 400;

              v123 = v127;
            }

            while (v127 != v124);
          }

          *(v41 + 80) = v124;
          v112 = *(v41 + 96);
          v128 = *(v41 + 104);
          if (v128 != v112)
          {
            v129 = 0;
            v130 = 0;
            do
            {
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(a1, (v129 + v112), 1uLL, 4u);
              ++v130;
              v112 = *(v41 + 96);
              v128 = *(v41 + 104);
              v129 += 400;
            }

            while (v130 < 0x8F5C28F5C28F5C29 * ((v128 - v112) >> 4));
          }

          if (v128 != v112)
          {
            do
            {
              v131 = v128 - 400;

              v128 = v131;
            }

            while (v131 != v112);
          }
        }

        *(v41 + 104) = v112;
        v51 = 1;
      }

      v133 = *v41;
      v132 = *(v41 + 8);
      if (*v41 != v132)
      {
        if (*(a1 + 50) != 1)
        {
          goto LABEL_191;
        }

        v134 = *(a1 + 16);
        if (*(v134 + 5600) == 1)
        {
          *(*(v134 + 5640) - 56) = 1;
LABEL_191:
          if (v132 != v133)
          {
LABEL_192:
            v135 = *(a1 + 16);
            if (v51)
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(v135);
            }

            else
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(v135);
            }

            v51 = 1;
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeTopDownBuilds(a1, *v41, 1);
            v133 = *v41;
            v132 = *(v41 + 8);
            if (0xAAAAAAAAAAAAAAABLL * ((v132 - *v41) >> 8) >= 2)
            {
              v136 = 768;
              v137 = 1;
              do
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
                v51 = 1;
                AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeTopDownBuilds(a1, v136 + *v41, 1);
                ++v137;
                v133 = *v41;
                v132 = *(v41 + 8);
                v136 += 768;
              }

              while (v137 < 0xAAAAAAAAAAAAAAABLL * ((v132 - *v41) >> 8));
            }
          }
        }

        else
        {
          *(v134 + 4980) = 1;
          v171 = *(v134 + 4976) != 0;
          v175 = 0;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v134 + 24, 4, 0, v171, 1, &v175);
          v172 = *(v134 + 776);
          *v172 = -1610612734;
          *(v134 + 776) = v172 + 1;
          v133 = *v41;
          v132 = *(v41 + 8);
          if (v132 != *v41)
          {
            goto LABEL_192;
          }
        }

        if (v132 != v133)
        {
          do
          {
            v138 = v132 - 768;

            v132 = v138;
          }

          while (v138 != v133);
        }

        *(v41 + 8) = v133;
      }

      v140 = *(v41 + 24);
      v139 = *(v41 + 32);
      if (v140 == v139)
      {
        if ((v51 & 1) == 0)
        {
          goto LABEL_218;
        }

        goto LABEL_217;
      }

      if (*(a1 + 50) == 1)
      {
        v141 = *(a1 + 16);
        if (*(v141 + 5600) != 1)
        {
          *(v141 + 4980) = 1;
          v173 = *(v141 + 4976) != 0;
          v175 = 0;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v141 + 24, 4, 0, v173, 1, &v175);
          v174 = *(v141 + 776);
          *v174 = -1610612734;
          *(v141 + 776) = v174 + 1;
          v140 = *(v41 + 24);
          v139 = *(v41 + 32);
          if (v139 == v140)
          {
            goto LABEL_214;
          }

          goto LABEL_206;
        }

        *(*(v141 + 5640) - 56) = 1;
      }

      if (v139 == v140)
      {
        goto LABEL_214;
      }

LABEL_206:
      v142 = *(a1 + 16);
      if (v51)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(v142);
      }

      else
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(v142);
      }

      v51 = 1;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(a1, *(v41 + 24), 1);
      v140 = *(v41 + 24);
      v139 = *(v41 + 32);
      if (0x8F5C28F5C28F5C29 * ((v139 - v140) >> 4) >= 2)
      {
        v143 = 400;
        v144 = 1;
        do
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
          v51 = 1;
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(a1, v143 + *(v41 + 24), 1);
          ++v144;
          v140 = *(v41 + 24);
          v139 = *(v41 + 32);
          v143 += 400;
        }

        while (v144 < 0x8F5C28F5C28F5C29 * ((v139 - v140) >> 4));
      }

LABEL_214:
      if (v139 != v140)
      {
        do
        {
          v145 = v139 - 400;

          v139 = v145;
        }

        while (v145 != v140);
      }

      *(v41 + 32) = v140;
      if ((v51 & 1) == 0)
      {
        goto LABEL_218;
      }

LABEL_217:
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::endVirtualSubstream(*(a1 + 16));
LABEL_218:
      v147 = *v41;
      v146 = *(v41 + 8);
      if (v146 != *v41)
      {
        do
        {
          v148 = v146 - 768;

          v146 = v148;
        }

        while (v148 != v147);
      }

      *(v41 + 8) = v147;
      v150 = *(v41 + 24);
      v149 = *(v41 + 32);
      if (v149 != v150)
      {
        do
        {
          v151 = v149 - 400;

          v149 = v151;
        }

        while (v151 != v150);
      }

      *(v41 + 32) = v150;
      v153 = *(v41 + 48);
      v152 = *(v41 + 56);
      if (v152 != v153)
      {
        do
        {
          v154 = v152 - 400;

          v152 = v154;
        }

        while (v154 != v153);
      }

      *(v41 + 56) = v153;
      v156 = *(v41 + 72);
      v155 = *(v41 + 80);
      if (v155 != v156)
      {
        do
        {
          v157 = v155 - 400;

          v155 = v157;
        }

        while (v157 != v156);
      }

      *(v41 + 80) = v156;
      v159 = *(v41 + 96);
      v158 = *(v41 + 104);
      if (v158 != v159)
      {
        do
        {
          v160 = v158 - 400;

          v158 = v160;
        }

        while (v160 != v159);
      }

      *(v41 + 104) = v159;
      v161 = *(v41 + 120);
      for (j = *(v41 + 128); j != v161; j -= 288)
      {
      }

      *(v41 + 128) = v161;
      *(v41 + 152) = *(v41 + 144);
      *(v41 + 176) = *(v41 + 168);
      *(v41 + 224) = *(v41 + 216);
      if (*(v41 + 264))
      {
        v163 = *(v41 + 256);
        if (v163)
        {
          do
          {
            v167 = *v163;
            v168 = v163[3];
            if (v168)
            {
              v163[4] = v168;
              operator delete(v168);
            }

            operator delete(v163);
            v163 = v167;
          }

          while (v167);
        }

        *(v41 + 256) = 0;
        v164 = *(v41 + 248);
        if (v164)
        {
          bzero(*(v41 + 240), 8 * v164);
        }

        *(v41 + 264) = 0;
      }

      if (*(v41 + 304))
      {
        v165 = *(v41 + 296);
        if (v165)
        {
          do
          {
            v169 = *v165;
            v170 = v165[3];
            if (v170)
            {
              v165[4] = v170;
              operator delete(v170);
            }

            operator delete(v165);
            v165 = v169;
          }

          while (v169);
        }

        *(v41 + 296) = 0;
        v166 = *(v41 + 288);
        if (v166)
        {
          bzero(*(v41 + 280), 8 * v166);
        }

        *(v41 + 304) = 0;
      }

      *(v41 + 320) = 0;
      ++v4;
      v3 = *(a1 + 272);
      result = *(a1 + 280);
      if (v4 >= 0x8F9C18F9C18F9C19 * (result - v3))
      {
        goto LABEL_264;
      }
    }

    if (v43 == v42)
    {
      goto LABEL_61;
    }

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(*(a1 + 16));
    v44 = *(v41 + 120);
    if (0x8E38E38E38E38E39 * ((*(v41 + 128) - v44) >> 5) >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::refitBatchSize)
    {
      v45 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::refitBatchSize;
    }

    else
    {
      v45 = 0x8E38E38E38E38E39 * ((*(v41 + 128) - v44) >> 5);
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(a1, v44, v45);
    v46 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::refitBatchSize;
    v42 = *(v41 + 120);
    v43 = *(v41 + 128);
    if (0x8E38E38E38E38E39 * ((v43 - v42) >> 5) <= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::refitBatchSize)
    {
      v51 = 1;
    }

    else
    {
      do
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
        v47 = *(v41 + 120);
        v48 = v47 + 288 * v46;
        v49 = 0x8E38E38E38E38E39 * ((*(v41 + 128) - v47) >> 5) - v46;
        if (v49 >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::refitBatchSize)
        {
          v50 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::refitBatchSize;
        }

        else
        {
          v50 = v49;
        }

        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(a1, v48, v50);
        v46 += AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::refitBatchSize;
        v42 = *(v41 + 120);
        v43 = *(v41 + 128);
      }

      while (v46 < 0x8E38E38E38E38E39 * ((v43 - v42) >> 5));
      v51 = 1;
    }

    goto LABEL_64;
  }

LABEL_264:
  while (result != v3)
  {
    result = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::~DeferredBatch(result - 41);
  }

  *(a1 + 280) = v3;
  return result;
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(uint64_t a1, void *a2, void *a3, char a4)
{
  if (*(a1 + 49) == 1 && (a4 & 1) == 0)
  {
    BatchForCommand = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getBatchForCommand(a1, 4, a2, a3, 0, -1, 0, 0, 0, 0);
    v8 = a2;
    v9 = a3;
    v11 = BatchForCommand[25];
    v10 = BatchForCommand[26];
    if (v11 < v10)
    {
      *v11 = v8;
      *(v11 + 1) = v9;
      v12 = (v11 + 16);
LABEL_44:
      BatchForCommand[25] = v12;

      return;
    }

    v39 = BatchForCommand[24];
    v40 = (v11 - v39) >> 4;
    v41 = v40 + 1;
    if ((v40 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v42 = v10 - v39;
    if (v42 >> 3 > v41)
    {
      v41 = v42 >> 3;
    }

    if (v42 >= 0x7FFFFFFFFFFFFFF0)
    {
      v43 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v41;
    }

    if (v43)
    {
      if (!(v43 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v44 = (v11 - v39) >> 4;
    *&v45 = v8;
    *(&v45 + 1) = v9;
    v46 = 16 * v40 - 16 * v44;
    *(16 * v40) = v45;
    v12 = 16 * v40 + 16;
    if (v39 == v11)
    {
LABEL_42:
      BatchForCommand[24] = v46;
      BatchForCommand[25] = v12;
      BatchForCommand[26] = 0;
      if (v39)
      {
        operator delete(v39);
      }

      goto LABEL_44;
    }

    v47 = v11 - v39 - 16;
    v48 = v39;
    v49 = (16 * v40 - 16 * v44);
    if (v47 >= 0x90)
    {
      if (v39 >= (v47 & 0xFFFFFFFFFFFFFFF0) + 16 || (v48 = v39, v49 = (16 * v40 - 16 * v44), v46 >= v39 + (v47 & 0xFFFFFFFFFFFFFFF0) + 16))
      {
        v50 = (v47 >> 4) + 1;
        v51 = 2 * (v50 & 0x1FFFFFFFFFFFFFFCLL);
        v48 = &v39[v51];
        v52 = (-16 * v44 + 16 * v40 + 32);
        v53 = (v39 + 4);
        v54 = v50 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v56 = *(v53 - 2);
          v55 = *(v53 - 1);
          v58 = *v53;
          v57 = v53[1];
          *(v53 - 2) = 0uLL;
          *(v53 - 1) = 0uLL;
          *v53 = 0uLL;
          v53[1] = 0uLL;
          v53 += 4;
          *(v52 - 2) = v56;
          *(v52 - 1) = v55;
          *v52 = v58;
          v52[1] = v57;
          v52 += 4;
          v54 -= 4;
        }

        while (v54);
        if (v50 == (v50 & 0x1FFFFFFFFFFFFFFCLL))
        {
          do
          {
LABEL_40:

            v61 = *v39;
            v39 += 2;
          }

          while (v39 != v11);
          v39 = BatchForCommand[24];
          goto LABEL_42;
        }

        v49 = (v46 + v51 * 8);
      }
    }

    do
    {
      v59 = *v48;
      *v48 = 0;
      *v49 = v59;
      v60 = v48[1];
      v48[1] = 0;
      v49[1] = v60;
      v48 += 2;
      v49 += 2;
    }

    while (v48 != v11);
    goto LABEL_40;
  }

  v13 = [a3 accelerationStructureUniqueIdentifier];
  if (**MEMORY[0x29EDC56B0])
  {
    [objc_msgSend(a2 "buffer")];
    [objc_msgSend(a3 "buffer")];
    IOGPUDeviceTraceEvent();
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

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::verify = 0;
  }

  v62[0] = 0;
  v62[1] = 0;
  v63 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v62, a1, 104, 1);
  v15 = v62[0];
  v14 = v62[1];
  v16 = v63;
  *(v62[0] + 12) = 0;
  v15[4] = 0u;
  v15[5] = 0u;
  v15[2] = 0u;
  v15[3] = 0u;
  *v15 = 0u;
  v15[1] = 0u;
  v17 = [objc_msgSend(a2 "buffer")];
  v18 = [a2 bufferOffset] + v17;
  v19 = [a2 size];
  *v15 = v18;
  *(v15 + 1) = v19;
  v20 = [objc_msgSend(a3 "buffer")];
  v21 = [a3 bufferOffset] + v20;
  v22 = [a3 size];
  *(v15 + 2) = v21;
  *(v15 + 3) = v22;
  *(v15 + 4) = v13;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::skipCompaction = 0;
  }

  *(v15 + 96) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::skipCompaction ^ 1;
  *(v15 + 97) = 0;
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::verify == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v62, a1, 0x480188uLL, 1);
    v23 = v62[1];
    bzero(v62[1], 0x480188uLL);
    v23[1] = -1;
    [**(a1 + 16) addCompletedHandler:&__block_literal_global_373];
  }

  *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 96) = v14;
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 58, 0);
  v25 = 0;
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::verify == 1)
  {
    v25 = 1;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v66, a1, 0x480188uLL, 1);
    v26 = v66[0];
    v62[0] = 0;
    v62[1] = 0;
    v63 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v62, a1, 16, 0);
    v27 = v62[0];
    v28 = v62[1];
    *v62[0] = v26;
    v27[1] = 0;
    *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = v28;
    v29 = v66[1];
    bzero(v66[1], 0x480188uLL);
    v29[1] = -1;
    v62[0] = MEMORY[0x29EDCA5F8];
    v62[1] = 3221225472;
    v63 = ___ZZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20encodeCopyAndCompactEP44AGXG18PFamilyRayTracingAccelerationStructureS8_bENKUlPKcE_clESA__block_invoke;
    v64 = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
    v65 = v29;
    [**(a1 + 16) addCompletedHandler:v62];
  }

  *v62 = vdupq_n_s64(1uLL);
  v63 = 1;
  *v66 = xmmword_29D2F23C0;
  v67 = 1;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), *(a1 + 32), Pipeline, v62, v66);
  v30 = *(a1 + 16);
  if (*(v30 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
    *(v30 + 2306) = 0;
    if (*(v30 + 2292) == 1 && !*(v30 + 4976))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v30, 22, (v30 + 5544), (v30 + 5552), (v30 + 5560));
    }
  }

  v31 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 57, 0);
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::verify == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v66, a1, 0x480188uLL, 1);
    v32 = v66[0];
    v62[0] = 0;
    v62[1] = 0;
    v63 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v62, a1, 16, 0);
    v33 = v62[0];
    v34 = v62[1];
    *v62[0] = v32;
    v33[1] = v25;
    *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = v34;
    v35 = v66[1];
    bzero(v66[1], 0x480188uLL);
    v35[1] = -1;
    v62[0] = MEMORY[0x29EDCA5F8];
    v62[1] = 3221225472;
    v63 = ___ZZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20encodeCopyAndCompactEP44AGXG18PFamilyRayTracingAccelerationStructureS8_bENKUlPKcE_clESA__block_invoke;
    v64 = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
    v65 = v35;
    [**(a1 + 16) addCompletedHandler:v62];
  }

  v36 = *(a1 + 16);
  v37 = *(a1 + 32);
  *(v36 + 2060) |= 4u;
  v38 = *(v36 + 4536);
  *(v36 + 4536) = v37;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v36, 22, v31, v14 + 72, v16);
  if (v38)
  {
    *(v36 + 4536) = v38;
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeWriteCompactedSizes(uint64_t a1, const void *a2, uint64_t *a3)
{
  if (a3)
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

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeWriteCompactedSizes(AGX::Span<unsigned long long const>)::verify = 0;
    }

    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeWriteCompactedSizes(AGX::Span<unsigned long long const>)::verify == 1)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v16, a1, 0x480188uLL, 1);
      v6 = __dst;
      bzero(__dst, 0x480188uLL);
      v6[1] = -1;
      v7 = **(a1 + 16);
      v15[0] = MEMORY[0x29EDCA5F8];
      v15[1] = 3221225472;
      v15[2] = ___ZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE25encodeWriteCompactedSizesENS_4SpanIKyEE_block_invoke;
      v15[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
      v15[4] = v6;
      [v7 addCompletedHandler:v15];
      v8 = v16;
      v18 = 0;
      v19 = 0uLL;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v18, a1, 16, 0);
      v9 = v18;
      v10 = v19.i64[0];
      *v18 = v8;
      v9[1] = 0;
      *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = v10;
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v16, a1, 8 * a3, 0);
    memcpy(__dst, a2, 8 * a3);
    *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4)) = v16;
    Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 59, 0);
    v12 = 64;
    if (*(a1 + 44) != 1)
    {
      v12 = 1;
    }

    v18 = a3;
    v19 = vdupq_n_s64(1uLL);
    v13 = v12;
    v14 = v19;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), *(a1 + 32), Pipeline, &v18, &v13);
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeSerialize(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(a1);
  }

  v9 = [a2 buffer];
  v10 = [a2 bufferOffset];
  v11 = [v9 gpuAddress];
  v37 = [v9 length];
  v12 = v11 + v10;
  v42 = 0uLL;
  *&v43 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v42, a1, 40, 1);
  v13 = v42;
  v14 = v42;
  *(v42 + 16) = 0;
  v15 = (v14 + 16);
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *v13 = v12;
  *(v13 + 8) = a4;
  {
    if (v35)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
    }
  }

  v17 = v16[292];
  if (v17 <= 0)
  {
    v17 = 3;
  }

  *(v13 + 28) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhChipCodes[v17];
  {
    if (v36)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getVersionToEncode(BOOL,BOOL,BOOL)::gen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen();
    }
  }

  *(v13 + 32) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhVersions[v18[256]] & 0x1FFFFFFF;
  *(v13 + 36) = 0;
  *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 168) = *(&v13 + 1);
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 175, 0);
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

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeSerialize_impl(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BOOL)::numBytesPerThread = 16;
  }

  v21 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeSerialize_impl(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BOOL)::numBytesPerThread;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v39, a1, 4, 1);
  v22 = v40;
  *&v42 = v40;
  *(&v42 + 1) = v39;
  *&v43 = 4;
  *(&v43 + 1) = v41;
  *v39 = v21;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v39, a1, 40, 0);
  v23 = v39;
  v24 = v40;
  *v39 = v12;
  *(v23 + 1) = v37;
  *(v23 + 2) = a4 + 24;
  *(v23 + 3) = a5;
  *(v23 + 4) = 0;
  v25 = *(*(a1 + 32) + 24) + *(*(a1 + 32) + 4);
  *(v25 + 96) = v24;
  *(v25 + 128) = v22;
  v26 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 124, 0);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(a1, v26, v12 + 72, &v42, AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeSerialize_impl(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BOOL)::numBytesPerThread, 0, 1);
  *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 168) = *(&v13 + 1);
  v27 = *(a1 + 16);
  if (*(v27 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
    *(v27 + 2306) = 0;
    if (*(v27 + 2292) == 1 && !*(v27 + 4976))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v27, 22, (v27 + 5544), (v27 + 5552), (v27 + 5560));
    }
  }

  v28 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 178, 0);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), v28, qword_29D2F5330, qword_29D2F5330);
  if (atomic_load_explicit((*(*a1 + 848) + 10188), memory_order_acquire) - 1 > 0xFFFFFFFD)
  {
    v31 = 4;
  }

  else
  {
    explicit = atomic_load_explicit((*(*a1 + 848) + 10188), memory_order_acquire);
    if (explicit)
    {
      v30 = explicit + 1;
    }

    else
    {
      v30 = 0;
    }

    v31 = 4 * v30;
  }

  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v42, a1, v31, 0);
  v32 = *(&v42 + 1);
  if ([a3 count])
  {
    v33 = 0;
    do
    {
      *(v32 + 4 * *([a3 objectAtIndexedSubscript:v33] + 360)) = v33;
      ++v33;
    }

    while (v33 < [a3 count]);
  }

  *v15 = v42;
  v34 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 123, 0);
  v42 = 0u;
  v43 = 0u;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(a1, v34, *(&v13 + 1) + 24, &v42, 1, 0, 1);
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeDeserialize(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(a1);
  }

  v11 = [a2 buffer];
  v12 = [a2 bufferOffset];
  v13 = [v11 gpuAddress];
  [v11 length];
  v14 = v13 + v12;
  if (*(a1 + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(a1);
  }

  v15 = *(*(a1 + 32) + 24) + *(*(a1 + 32) + 4);
  *(v15 + 96) = a4 + 24;
  *(v15 + 40) = v14;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v32, a1, 8, 0);
  v16 = v33;
  *v32 = a6;
  *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 120) = v16;
  v35 = 0uLL;
  *&v36 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v35, a1, 4, 1);
  v17 = *(&v35 + 1);
  *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 152) = *(&v35 + 1);
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 122, 0);
  v35 = 0u;
  v36 = 0u;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(a1, Pipeline, a4 + 16, &v35, 1, 0, 1);
  if (a3)
  {
    v19 = [a3 count];
    if ([a3 count] < 2)
    {
      v20 = 4;
    }

    else
    {
      v20 = 4 * [a3 count];
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v35, a1, v20, 0);
    if (v19)
    {
      v21 = 0;
      v22 = *(&v35 + 1);
      do
      {
        *(v22 + 4 * v21) = *([a3 objectAtIndexedSubscript:v21] + 360);
        ++v21;
      }

      while (v19 != v21);
    }

    *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 136) = v35;
    v23 = [a3 count];
    v24 = v23;
    if (v23 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v23;
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v35, a1, 8 * v25, 0);
    if (v24)
    {
      v26 = 0;
      v27 = *(&v35 + 1);
      do
      {
        v28 = [a3 objectAtIndexedSubscript:v26];
        v29 = [objc_msgSend(v28 "buffer")];
        *(v27 + 8 * v26++) = [v28 bufferOffset] + v29;
      }

      while (v24 != v26);
    }

    v30 = *(*(a1 + 32) + 24) + *(*(a1 + 32) + 4);
    *(v30 + 144) = v35;
    *(v30 + 40) = v14;
    v31 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 28, 0);
    v35 = 0u;
    v36 = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(a1, v31, v17, &v35, 1, 0, 1);
  }
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateVirtualMapping(uint64_t a1, int a2, int a3)
{
  if (!a3 || (a2 & 1) != 0)
  {
    if (!a2)
    {
      return;
    }

LABEL_9:
    if (a3 && (v5 = *(a1 + 30352)) != 0 && (v6 = *(v5 + 3688)) != 0 && *(v6 + 64) == 1)
    {
      v7 = (v6 + 136);
    }

    else
    {
      v7 = (a1 + 79376);
    }

    v8 = *v7;
    v9 = HIWORD(v8);
    v10 = HIBYTE(v8);
    v11 = *(*(a1 + 2392) + 440);
    if ((v11 >> v8))
    {
      v12 = v8;
    }

    else
    {
      v12 = -1;
    }

    v13 = vdupq_n_s64(v8);
    LOBYTE(v39) = v12;
    v14 = vuzp1q_s32(vshlq_u64(v13, xmmword_29D2F24A0), vshlq_u64(v13, xmmword_29D2F2490));
    v15 = vmovn_s32(v14);
    v16.i64[0] = 0xFF000000FFLL;
    v16.i64[1] = 0xFF000000FFLL;
    v17 = vandq_s8(v14, v16);
    v16.i64[0] = 0x100000001;
    v16.i64[1] = 0x100000001;
    *v17.i8 = vorr_s8(v15, vmovn_s32(vceqzq_s32(vandq_s8(vdupq_n_s32(v11), vshlq_u32(v16, v17)))));
    *(&v39 + 1) = vuzp1_s8(*v17.i8, *v17.i8).u32[0];
    if ((v11 >> SBYTE5(v8)))
    {
      v18 = BYTE5(v8);
    }

    else
    {
      v18 = -1;
    }

    BYTE5(v39) = v18;
    if ((v11 >> v9))
    {
      v19 = v9;
    }

    else
    {
      v19 = -1;
    }

    BYTE6(v39) = v19;
    if ((v11 >> v10))
    {
      v20 = v10;
    }

    else
    {
      v20 = -1;
    }

    HIBYTE(v39) = v20;
    if (*(a1 + 79368) != v39)
    {
      *(a1 + 79393) = 257;
      *(a1 + 79368) = v39;
LABEL_29:
      v21 = *(a1 + 30352);
      if (v21 && a3)
      {
        v22 = *(v21 + 3140);
        if (*(v21 + 3136) == 1)
        {
          v23 = vshr_n_u32(v22, 8uLL);
          v24 = vshr_n_u32(v22, 0xCuLL);
          v25 = vshr_n_u32(v22, 0x10uLL);
          v26 = vshr_n_u32(v22, 0x14uLL);
          v27 = vshr_n_u32(v22, 0x18uLL);
          v28 = vshr_n_u32(v22, 0x1CuLL);
          v29.i32[0] = *(a1 + 79368);
          v29.i32[1] = *(a1 + 79369);
          v30.i32[1] = HIDWORD(*(v21 + 3140));
          v30.i32[0] = v22.i32[0] >> 4;
          v31 = vshl_n_s32(v29, 2uLL);
          v22.i32[1] = v22.i32[1] >> 4;
          v22 = vorr_s8(vorr_s8(vshl_u32(v28, vdup_n_s32(4 * *(a1 + 79375))), vorr_s8(vshl_u32(vand_s8(v26, 0xF0000000FLL), vdup_n_s32(4 * *(a1 + 79373))), vshl_u32(vand_s8(v22, 0xF0000000FLL), v31))), vorr_s8(vshl_u32((*&v27 & 0xFFFFFF0FFFFFFF0FLL), vdup_n_s32(4 * *(a1 + 79374))), vorr_s8(vshl_u32(vand_s8(v25, 0xF0000000FLL), vdup_n_s32(4 * *(a1 + 79372))), vorr_s8(vshl_u32(vand_s8(v24, 0xF0000000FLL), vdup_n_s32(4 * *(a1 + 79371))), vorr_s8(vshl_u32(vand_s8(v23, 0xF0000000FLL), vdup_n_s32(4 * *(a1 + 79370))), vshl_u32(vand_s8(v30, 0xF0000000FLL), vrev64_s32(v31)))))));
        }

        v32 = *(a1 + 79384) != v22.i32[0] || *(a1 + 79388) != v22.i32[1];
        *(a1 + 79394) = v32;
        *(a1 + 79384) = v22;
        if (*v21)
        {
          v36 = a1;
          v37 = a2;
          v38 = a3;
          AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateFragmentShaderISPState(a1, *v21);
          a1 = v36;
          LOBYTE(a2) = v37;
          a3 = v38;
        }
      }

      goto LABEL_45;
    }

    if (*(a1 + 79392))
    {
      if (!a3 || (v33 = *(a1 + 30352)) == 0)
      {
        *(a1 + 79393) = 257;
        goto LABEL_29;
      }

      v34 = *(a1 + 79394) | *(v33 + 3136);
      *(a1 + 79394) = v34;
      v35 = *v33;
      if (v35)
      {
        *(a1 + 79393) |= *(v35 + 4065);
        if (v34)
        {
          goto LABEL_29;
        }
      }

      else if (v34)
      {
        goto LABEL_29;
      }
    }

    else if (*(a1 + 79394))
    {
      goto LABEL_29;
    }

LABEL_45:
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindStatelessPsoMetadataArgumentBuffer(a1, a2, a3);
    return;
  }

  v3 = *(a1 + 30352);
  if (v3)
  {
    v4 = *v3;
    if (v4)
    {
      if (*(v4 + 4065) & 1) != 0 || (*(v4 + 4066))
      {
        goto LABEL_9;
      }
    }
  }
}

int8x8_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateFragmentShaderISPState(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 78480;
  v5 = (a1 + 28664);
  v6 = *(a1 + 30352);
  if (*(v6 + 3136) == 1)
  {
    if ((*(a1 + 79394) & 1) == 0 && *(a1 + 79392) != 1)
    {
      goto LABEL_37;
    }

    v34 = *(v6 + 804);
    v35 = *(v6 + 800);
    v36 = *(v6 + 808);
    v7 = *(a1 + 2392);
    v8 = *(a1 + 79384);
    v9 = *(a1 + 79388);
    v10 = *(a2 + 3912);
    v32 = *(a2 + 4081);
    v33 = *(v6 + 816);
    v11 = *(a2 + 4084);
    v38 = 0;
    v37 = 0;
    v39[0] = _AGCDrawBufferState::isRtFormatUnknown;
    v39[1] = 0;
    v39[2] = v7 + 408;
    v12 = _AGCDrawBufferState::anyFunction<std::__bind<BOOL (_AGCDrawBufferState::*)(unsigned char)const,_AGCDrawBufferState const*,std::placeholders::__ph<1> const&>>(v39);
    v13 = 0;
    if ((v12 & 1) == 0)
    {
      if (v10)
      {
        v14 = 8;
      }

      else
      {
        v14 = 0;
      }

      agxsGetShaderPassInfo((17 - v14), (v7 + 408), v8, v9, &v37, &v38);
      v13 = (v37 << v14) & 0x1FFFF;
    }

    if ((v11 - 1) >= 2)
    {
      if (v11)
      {
        v15 = 0;
      }

      else
      {
        v15 = v38;
      }
    }

    else if ((v38 | v32))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v23 = (*(v7 + 440) & 0x300) != 0 && v15 == 3 || v15 == 2;
    if (*(a2 + 4088))
    {
      v24 = 0x400000;
    }

    else
    {
      v24 = 0;
    }

    if (*(a2 + 3919))
    {
      v25 = 0x2000000;
    }

    else
    {
      v25 = 0;
    }

    if ((v23 | *(a2 + 4090)))
    {
      v26 = 0x4000000;
    }

    else
    {
      v26 = 0;
    }

    v27 = v34 & 0x199FFFFF | v24 | v25 | v26 | (v15 << 29);
    v28 = v5[2] & 0xF7200000;
    v17 = v5[3] & 0xF7200000;
    *v5 = v35;
    v5[1] = v27;
    *(v5 + 1) = v36;
    v5[4] = v33 & 0xFFFE0000 | v13;
    v19 = v36 & 0x8DFFFFF | v28;
    v20 = v5[3] & 0x8DFFFFF;
  }

  else
  {
    v16 = *(a1 + 28672) & 0xF7200000;
    v17 = *(a1 + 28676) & 0xF7200000;
    v18 = *(v6 + 800);
    *(a1 + 28680) = *(v6 + 816);
    *(a1 + 28664) = v18;
    v19 = *(a1 + 28672) & 0x8DFFFFF | v16;
    v20 = *(a1 + 28676) & 0x8DFFFFF;
  }

  v5[2] = v19;
  v5[3] = v20 | v17;
LABEL_37:
  *(v4 + 914) = 0;
  v29 = *(a2 + 3925);
  if ((v29 - 1) < 2 && (*(*(*(a1 + 1872) + 848) + 16456) & 0x8000) != 0)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(a2 + 3925);
  }

  if (*(a1 + 28672) >> 28)
  {
    LOBYTE(v29) = v30;
  }

  result = vorr_s8(vdup_n_s32((v29 & 3) << 22), (*(a1 + 28672) & 0xFF3FFFFFFF3FFFFFLL));
  *(a1 + 28672) = result;
  *v4 |= 0x100000000000uLL;
  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindStatelessPsoMetadataArgumentBuffer(uint64_t a1, char a2, int a3)
{
  v3 = a2;
  if (!a3 || (a2 & 1) != 0)
  {
LABEL_6:
    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = *(a1 + 30352);
  if (v4)
  {
    v5 = *v4;
    if (v5)
    {
      v3 = *(v5 + 4065);
      a2 = *(v5 + 4066);
      goto LABEL_6;
    }
  }

  a2 = 0;
  v3 = 0;
LABEL_9:
  if ((a2 & 1) == 0)
  {
    return;
  }

LABEL_10:
  if (v3)
  {
    v6 = *(a1 + 2392) + 408;
    v7 = *(a1 + 79368);
    if (v7 > 7)
    {
      v9 = 0;
    }

    else
    {
      v8 = *(v6 + 4 * v7);
      if ((~v8 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v9 = (v8 >> 12);
    }

    v17 = *(a1 + 79369);
    if (v17 > 7)
    {
      v16 = 0;
    }

    else
    {
      v18 = *(v6 + 4 * v17);
      if ((~v18 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v16 = (v18 >> 12);
    }

    v19 = *(a1 + 79370);
    if (v19 > 7)
    {
      v10 = 0;
    }

    else
    {
      v20 = *(v6 + 4 * v19);
      if ((~v20 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v10 = (v20 >> 12);
    }

    v21 = *(a1 + 79371);
    if (v21 > 7)
    {
      v11 = 0;
    }

    else
    {
      v22 = *(v6 + 4 * v21);
      if ((~v22 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v11 = (v22 >> 12);
    }

    v23 = *(a1 + 79372);
    if (v23 > 7)
    {
      v12 = 0;
    }

    else
    {
      v24 = *(v6 + 4 * v23);
      if ((~v24 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v12 = (v24 >> 12);
    }

    v25 = *(a1 + 79373);
    if (v25 > 7)
    {
      v13 = 0;
    }

    else
    {
      v26 = *(v6 + 4 * v25);
      if ((~v26 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v13 = (v26 >> 12);
    }

    v27 = *(a1 + 79374);
    if (v27 > 7)
    {
      v14 = 0;
    }

    else
    {
      v28 = *(v6 + 4 * v27);
      if ((~v28 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v14 = (v28 >> 12);
    }

    v29 = *(a1 + 79375);
    if (v29 > 7)
    {
      v15 = 0;
      *(a1 + 79392) = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_46;
    }

    v30 = *(v6 + 4 * v29);
    if ((~v30 & 0xFF000) != 0)
    {
      v15 = (v30 >> 12);
      *(a1 + 79392) = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_44;
      }

LABEL_46:
      v37 = *(a1 + 73040);
      v33 = *(v37 + 876);
      v34 = *(v37 + 880);
      v35 = *(v37 + 884);
      v36 = *(v37 + 888);
      v31 = *(v37 + 24);
      v32 = *(v37 + 32);
      goto LABEL_47;
    }

LABEL_66:
    std::__throw_bad_optional_access[abi:nn200100]();
    [(AGXG18PFamilyRenderContext *)v38 setToolsDispatchBufferSPI:v39 atIndex:v40 stages:v41, v42];
    return;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v9 = 0;
  *(a1 + 79392) = 0;
  if (a2)
  {
    goto LABEL_46;
  }

LABEL_44:
  v31 = 0;
  v32 = 0uLL;
  v33 = 0.0;
  v34 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
LABEL_47:
  if (*(a1 + 78089) != 1 || v9 != *(a1 + 79576) || v16 != *(a1 + 79578) || v10 != *(a1 + 79580) || v11 != *(a1 + 79582) || v12 != *(a1 + 79584) || v13 != *(a1 + 79586) || v14 != *(a1 + 79588) || v15 != *(a1 + 79590) || *(a1 + 79608) || v33 != *(a1 + 79592) || v34 != *(a1 + 79596) || v35 != *(a1 + 79600) || v36 != *(a1 + 79604) || v31 != *(a1 + 79632) || v32 != *(a1 + 79640) || *(&v32 + 4) != *(a1 + 79644))
  {
    *(a1 + 78088) = 1;
    *(a1 + 79576) = v9;
    *(a1 + 79578) = v16;
    *(a1 + 79580) = v10;
    *(a1 + 79582) = v11;
    *(a1 + 79584) = v12;
    *(a1 + 79586) = v13;
    *(a1 + 79588) = v14;
    *(a1 + 79590) = v15;
    *(a1 + 79592) = v33;
    *(a1 + 79596) = v34;
    *(a1 + 79600) = v35;
    *(a1 + 79604) = v36;
    *(a1 + 79616) = 0;
    *(a1 + 79624) = 0;
    *(a1 + 79608) = 0;
    *(a1 + 79632) = v31;
    *(a1 + 79640) = v32;
  }
}

void std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    v2();
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    [(AGXG18PFamilyRenderContext *)v3 setMeshSamplerStates:v4 lodMinClamps:v5 lodMaxClamps:v6 withRange:v7, v8];
  }
}

void sub_29CEACCCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setMeshProgramSamplerWithLODOverride(uint64_t a1, uint64_t a2, unsigned int a3, float a4, float a5)
{
  if (a2)
  {
    v7 = *(*(a1 + 8) + 1872);
    v8 = *(v7 + 848);
    v9 = *(a2 + 64);
    v19[0] = *(a2 + 48);
    v19[1] = v9;
    v19[2] = *(a2 + 80);
    if (*(a2 + 119) < 0)
    {
      v11 = a5;
      v12 = a4;
      std::string::__init_copy_ctor_external(&__p, *(a2 + 96), *(a2 + 104));
      a4 = v12;
      a5 = v11;
    }

    else
    {
      __p = *(a2 + 96);
    }

    *(&v19[0] + 1) = __PAIR64__(LODWORD(a5), LODWORD(a4));
    Sampler = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(v8, v19, v7, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    Sampler = 0;
  }

  result = *(*(a1 + 8) + 1896);
  if (result)
  {
    result = MTLResourceListAddResource();
  }

  if (Sampler)
  {
    v14 = *&Sampler->_impl.desc.var1;
  }

  else
  {
    v14 = 0;
  }

  v15 = 32 * a3;
  *(*(a1 + 42696) + v15 + 16888) = v14;
  v16 = *(a1 + 42696);
  if ((~*(v16 + 16880 + v15 + 8) & 0x6000000000000000) != 0)
  {
    if (!Sampler)
    {
      p_impl = 0;
      goto LABEL_18;
    }
  }

  else
  {
    *(v16 + 16880 + 32 * a3 + 16) = *&Sampler->_impl.var0;
    v16 = *(a1 + 42696);
  }

  p_impl = &Sampler->_impl;
  if (LODWORD(Sampler[1].super._device))
  {
    p_impl = LODWORD(Sampler[1].super._device);
  }

LABEL_18:
  *(v16 + 32 * a3 + 16880) = p_impl;
  v18 = *(a1 + 8);
  *(v18 + 8 * (a3 > 0x3F) + 78320) |= 1 << a3;
  *(v18 + 78480) |= 0x4000000uLL;
  return result;
}

void sub_29CEACF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTexture<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>,true>(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  if (!a2)
  {
    *(a4 + 19224 + 24 * a3) = 0;
    *(a4 + 19224 + 8 * (3 * a3 + 1)) = 0;
    *(a4 + 19224 + 8 * (3 * a3 + 2)) = 0;
    v30 = a3 << 7;
    v31 = *(a4 + 18648) + v30;
    v32 = a3;
    bzero((v31 + 496), 0x38uLL);
    v33 = 0;
    *(v31 + 544) = 0;
    v34 = *(a4 + 18648);
    v26 = 1 << a3;
    v24 = a3 > 0x3F;
    v35 = v34 + 8 * v24;
    *(v35 + 17888) &= ~(1 << a3);
    *(v35 + 17904) &= ~(1 << a3);
    v36 = *(*(*(a1 + 8) + 1872) + 848);
    v37 = *(v36 + 16496);
    v38 = v34 + v30;
    *(v38 + 560) = *(v36 + 16480);
    *(v38 + 576) = v37;
    v39 = *(*(*(a1 + 8) + 1872) + 848);
    v40 = *(a4 + 18648) + v30;
    v41 = *(v39 + 16528);
    *(v40 + 592) = *(v39 + 16512);
    *(v40 + 608) = v41;
    goto LABEL_23;
  }

  v9 = *(a2 + 592);
  v10 = *(v9 + 592);
  v11 = *(v9 + 600);
  v12 = v7[251];
  v13 = v12[2].i64[1];
  v14 = MEMORY[0x29EDC5638];
  if (*(v13 + 480) != 1)
  {
    goto LABEL_10;
  }

  v15 = v12[3];
  v16 = v12[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v15), vceqzq_s64(v16))))) & 1) == 0)
  {
    goto LABEL_10;
  }

  v17 = a2 + *MEMORY[0x29EDC5638];
  if ((*(v17 + 23) & 0x10) != 0)
  {
    v17 = *v17;
  }

  v18 = *v17;
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = *(v18 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v18), vceqzq_s64(v19))))) & 1) == 0)
  {
LABEL_10:
    v18 = 0;
LABEL_11:
    v23 = 0;
    goto LABEL_12;
  }

  v20 = vandq_s8(v19, v16);
  v21 = v20.u64[1];
  if (v20.i64[1])
  {
    v22 = 3;
LABEL_29:
    v54 = &v12->i8[8 * v22];
    v55 = __clz(v21) ^ 0x3F;
    v18 = (*(v54 + 10) >> v55) & 1;
    v23 = (*(v54 + 14) >> v55) & 1;
    goto LABEL_12;
  }

  v21 = v20.i64[0];
  if (v20.i64[0])
  {
    v22 = 2;
    goto LABEL_29;
  }

  v53 = vandq_s8(*v18, v15);
  v21 = v53.u64[1];
  if (v53.i64[1])
  {
    v22 = 1;
    goto LABEL_29;
  }

  v22 = 0;
  v18 = 0;
  v23 = 0;
  v21 = v53.i64[0];
  if (v53.i64[0])
  {
    goto LABEL_29;
  }

LABEL_12:
  v24 = a3 > 0x3F;
  v25 = (v13 + 8 * v24);
  v26 = 1 << a3;
  v25[18] = v25[18] & ~(1 << a3) | (v18 << a3);
  v25[38] = v25[38] & ~(1 << a3) | (v23 << a3);
  v25[58] &= ~(1 << a3);
  v27 = 3 * a3;
  v28 = a4 + 19224;
  *(a4 + 19224 + 24 * a3) = a2 + *v14;
  if (v10)
  {
    v10 += *v14;
  }

  *(v28 + 8 * (v27 + 1)) = v10;
  if (v11)
  {
    v29 = v11 + *v14;
  }

  else
  {
    v29 = 0;
  }

  *(v28 + 8 * (v27 + 2)) = v29;
  v32 = a3;
  v42 = *(a4 + 18648) + (a3 << 7);
  v43 = *(v9 + 72);
  v44 = *(v9 + 88);
  v45 = *(v9 + 104);
  *(v42 + 544) = *(v9 + 120);
  *(v42 + 512) = v44;
  *(v42 + 528) = v45;
  *(v42 + 496) = v43;
  v46 = *(a4 + 18648);
  *(v46 + 8 * v24 + 17888) |= v26;
  v47 = *(v9 + 584);
  if (v47)
  {
    v47 = *(v47 + 1304) != 0;
  }

  *(v46 + 17904 + 8 * v24) = *(v46 + 17904 + 8 * v24) & ~v26 | (v47 << (a3 & 0x3F));
  v48 = v46 + (a3 << 7);
  v49 = *(v9 + 432);
  *(v48 + 560) = *(v9 + 416);
  *(v48 + 576) = v49;
  v50 = *(a4 + 18648) + (a3 << 7);
  v51 = *(v9 + 464);
  *(v50 + 592) = *(v9 + 448);
  *(v50 + 608) = v51;
  if (*(*(a1 + 8) + 1896))
  {
    MTLResourceListAddResource();
  }

  v33 = *(*(a2 + 592) + 120);
LABEL_23:
  *(*(a4 + 18648) + (v32 << 7) + 552) = v33;
  v52 = &v7[v24];
  v52[9788] |= v26;
  v52[9794] |= v26;
  v7[9810] |= 0x14000000uLL;
  v7[9796] |= 0x10uLL;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBuffer<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = (a5 + 8 * a4);
  if (a4 <= 0x22)
  {
    v6[2787] = 0;
  }

  v7 = *(result + 8);
  if (!a2)
  {
    v6[2333] = 0;
    if (a4 >= 0x1F)
    {
      v32 = *(a5 + 18656) + 8 * (a4 - 31);
      *(v32 + 40) = 0;
      *(v32 + 352) = 0;
      v33 = a5 + 8 * a4;
      *(v33 + 22576) = 0;
      *(v33 + 23136) = 0;
    }

    else
    {
      v16 = *(a5 + 18648);
      v17 = (v16 + 8 * a4);
      *v17 = 0;
      v17[31] = 0;
      v18 = a5 + 8 * a4;
      *(v18 + 22576) = 0;
      *(v18 + 23136) = 0;
      *(v16 + 4 * a4 + 17516) = 0;
      v17[2205] = 0;
    }

    goto LABEL_22;
  }

  v8 = MEMORY[0x29EDC5638];
  v9 = (a2 + *MEMORY[0x29EDC5638]);
  v10 = v9[2];
  v11 = v9[3];
  v12 = v9[1];
  v6[2822] = v12;
  v6[2892] = v11;
  v13 = v12 + a3;
  if (a4 >= 0x1F)
  {
    v19 = *(a5 + 18656) + 8 * (a4 - 31);
    *(v19 + 40) = v13;
    *(v19 + 352) = v11 + a3;
  }

  else
  {
    v14 = *(a5 + 18648);
    v15 = v14 + 8 * a4;
    *v15 = v13;
    *(v14 + 4 * a4 + 17516) = v10;
    *(v15 + 248) = v11 + a3;
    *(v15 + 17640) = v10;
    *(v15 + 17644) = v12 >> 8;
  }

  *(a5 + 8 * a4 + 18664) = a2 + *v8;
  v20 = v7[251];
  v21 = v20[2].i64[1];
  if (*(v21 + 480) != 1)
  {
    goto LABEL_17;
  }

  v22 = v20[3];
  v23 = v20[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v22), vceqzq_s64(v23))))) & 1) == 0)
  {
    goto LABEL_17;
  }

  v24 = a2 + *v8;
  if ((*(v24 + 23) & 0x10) != 0)
  {
    v24 = *v24;
  }

  v25 = *v24;
  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = *(v25 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v25), vceqzq_s64(v26))))) & 1) == 0)
  {
LABEL_17:
    v25 = 0;
LABEL_18:
    v30 = 0;
    goto LABEL_19;
  }

  v27 = vandq_s8(v26, v23);
  v28 = v27.u64[1];
  if (v27.i64[1])
  {
    v29 = 3;
  }

  else
  {
    v28 = v27.i64[0];
    if (v27.i64[0])
    {
      v29 = 2;
    }

    else
    {
      v35 = vandq_s8(*v25, v22);
      v28 = v35.u64[1];
      if (v35.i64[1])
      {
        v29 = 1;
      }

      else
      {
        v29 = 0;
        v25 = 0;
        v30 = 0;
        v28 = v35.i64[0];
        if (!v35.i64[0])
        {
          goto LABEL_19;
        }
      }
    }
  }

  v36 = &v20->i8[8 * v29];
  v37 = __clz(v28) ^ 0x3F;
  v25 = (*(v36 + 10) >> v37) & 1;
  v30 = (*(v36 + 14) >> v37) & 1;
LABEL_19:
  v31 = (v21 + 8 * (a4 > 0x3F));
  v31[14] = v31[14] & ~(1 << a4) | (v25 << a4);
  v31[34] = v31[34] & ~(1 << a4) | (v30 << a4);
  v31[54] &= ~(1 << a4);
  result = v7[237];
  if (result)
  {
    result = MTLResourceListAddResource();
  }

LABEL_22:
  v34 = &v7[a4 > 0x3F];
  v34[9786] |= 1 << a4;
  v34[9792] |= 1 << a4;
  v7[9810] |= 0xC000000uLL;
  return result;
}

void sub_29CEAE054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setObjectProgramSamplerWithLODOverride(uint64_t a1, uint64_t a2, unsigned int a3, float a4, float a5)
{
  if (a2)
  {
    v7 = *(*(a1 + 8) + 1872);
    v8 = *(v7 + 848);
    v9 = *(a2 + 64);
    v19[0] = *(a2 + 48);
    v19[1] = v9;
    v19[2] = *(a2 + 80);
    if (*(a2 + 119) < 0)
    {
      v11 = a5;
      v12 = a4;
      std::string::__init_copy_ctor_external(&__p, *(a2 + 96), *(a2 + 104));
      a4 = v12;
      a5 = v11;
    }

    else
    {
      __p = *(a2 + 96);
    }

    *(&v19[0] + 1) = __PAIR64__(LODWORD(a5), LODWORD(a4));
    Sampler = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(v8, v19, v7, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    Sampler = 0;
  }

  result = *(*(a1 + 8) + 1896);
  if (result)
  {
    result = MTLResourceListAddResource();
  }

  if (Sampler)
  {
    v14 = *&Sampler->_impl.desc.var1;
  }

  else
  {
    v14 = 0;
  }

  v15 = 32 * a3;
  *(*(a1 + 18992) + v15 + 16888) = v14;
  v16 = *(a1 + 18992);
  if ((~*(v16 + 16880 + v15 + 8) & 0x6000000000000000) != 0)
  {
    if (!Sampler)
    {
      p_impl = 0;
      goto LABEL_18;
    }
  }

  else
  {
    *(v16 + 16880 + 32 * a3 + 16) = *&Sampler->_impl.var0;
    v16 = *(a1 + 18992);
  }

  p_impl = &Sampler->_impl;
  if (LODWORD(Sampler[1].super._device))
  {
    p_impl = LODWORD(Sampler[1].super._device);
  }

LABEL_18:
  *(v16 + 32 * a3 + 16880) = p_impl;
  v18 = *(a1 + 8);
  *(v18 + 8 * (a3 > 0x3F) + 78224) |= 1 << a3;
  *(v18 + 78480) |= 0x10000uLL;
  return result;
}

void sub_29CEAE2C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTexture<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>,true>(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  if (!a2)
  {
    *(a4 + 19496 + 24 * a3) = 0;
    *(a4 + 19496 + 8 * (3 * a3 + 1)) = 0;
    *(a4 + 19496 + 8 * (3 * a3 + 2)) = 0;
    v30 = a3 << 7;
    v31 = *(a4 + 18920) + v30;
    v32 = a3;
    bzero((v31 + 496), 0x38uLL);
    v33 = 0;
    *(v31 + 544) = 0;
    v34 = *(a4 + 18920);
    v26 = 1 << a3;
    v24 = a3 > 0x3F;
    v35 = v34 + 8 * v24;
    *(v35 + 17888) &= ~(1 << a3);
    *(v35 + 17904) &= ~(1 << a3);
    v36 = *(*(*(a1 + 8) + 1872) + 848);
    v37 = *(v36 + 16496);
    v38 = v34 + v30;
    *(v38 + 560) = *(v36 + 16480);
    *(v38 + 576) = v37;
    v39 = *(*(*(a1 + 8) + 1872) + 848);
    v40 = *(a4 + 18920) + v30;
    v41 = *(v39 + 16528);
    *(v40 + 592) = *(v39 + 16512);
    *(v40 + 608) = v41;
    goto LABEL_23;
  }

  v9 = *(a2 + 592);
  v10 = *(v9 + 592);
  v11 = *(v9 + 600);
  v12 = v7[251];
  v13 = v12[2].i64[1];
  v14 = MEMORY[0x29EDC5638];
  if (*(v13 + 480) != 1)
  {
    goto LABEL_10;
  }

  v15 = v12[3];
  v16 = v12[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v15), vceqzq_s64(v16))))) & 1) == 0)
  {
    goto LABEL_10;
  }

  v17 = a2 + *MEMORY[0x29EDC5638];
  if ((*(v17 + 23) & 0x10) != 0)
  {
    v17 = *v17;
  }

  v18 = *v17;
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = *(v18 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v18), vceqzq_s64(v19))))) & 1) == 0)
  {
LABEL_10:
    v18 = 0;
LABEL_11:
    v23 = 0;
    goto LABEL_12;
  }

  v20 = vandq_s8(v19, v16);
  v21 = v20.u64[1];
  if (v20.i64[1])
  {
    v22 = 3;
LABEL_29:
    v54 = &v12->i8[8 * v22];
    v55 = __clz(v21) ^ 0x3F;
    v18 = (*(v54 + 10) >> v55) & 1;
    v23 = (*(v54 + 14) >> v55) & 1;
    goto LABEL_12;
  }

  v21 = v20.i64[0];
  if (v20.i64[0])
  {
    v22 = 2;
    goto LABEL_29;
  }

  v53 = vandq_s8(*v18, v15);
  v21 = v53.u64[1];
  if (v53.i64[1])
  {
    v22 = 1;
    goto LABEL_29;
  }

  v22 = 0;
  v18 = 0;
  v23 = 0;
  v21 = v53.i64[0];
  if (v53.i64[0])
  {
    goto LABEL_29;
  }

LABEL_12:
  v24 = a3 > 0x3F;
  v25 = (v13 + 8 * v24);
  v26 = 1 << a3;
  v25[16] = v25[16] & ~(1 << a3) | (v18 << a3);
  v25[36] = v25[36] & ~(1 << a3) | (v23 << a3);
  v25[56] &= ~(1 << a3);
  v27 = 3 * a3;
  v28 = a4 + 19496;
  *(a4 + 19496 + 24 * a3) = a2 + *v14;
  if (v10)
  {
    v10 += *v14;
  }

  *(v28 + 8 * (v27 + 1)) = v10;
  if (v11)
  {
    v29 = v11 + *v14;
  }

  else
  {
    v29 = 0;
  }

  *(v28 + 8 * (v27 + 2)) = v29;
  v32 = a3;
  v42 = *(a4 + 18920) + (a3 << 7);
  v43 = *(v9 + 72);
  v44 = *(v9 + 88);
  v45 = *(v9 + 104);
  *(v42 + 544) = *(v9 + 120);
  *(v42 + 512) = v44;
  *(v42 + 528) = v45;
  *(v42 + 496) = v43;
  v46 = *(a4 + 18920);
  *(v46 + 8 * v24 + 17888) |= v26;
  v47 = *(v9 + 584);
  if (v47)
  {
    v47 = *(v47 + 1304) != 0;
  }

  *(v46 + 17904 + 8 * v24) = *(v46 + 17904 + 8 * v24) & ~v26 | (v47 << (a3 & 0x3F));
  v48 = v46 + (a3 << 7);
  v49 = *(v9 + 432);
  *(v48 + 560) = *(v9 + 416);
  *(v48 + 576) = v49;
  v50 = *(a4 + 18920) + (a3 << 7);
  v51 = *(v9 + 464);
  *(v50 + 592) = *(v9 + 448);
  *(v50 + 608) = v51;
  if (*(*(a1 + 8) + 1896))
  {
    MTLResourceListAddResource();
  }

  v33 = *(*(a2 + 592) + 120);
LABEL_23:
  *(*(a4 + 18920) + (v32 << 7) + 552) = v33;
  v52 = &v7[v24];
  v52[9776] |= v26;
  v52[9782] |= v26;
  v7[9810] |= 0x50000uLL;
  v7[9784] |= 0x10uLL;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBuffer<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = (a5 + 8 * a4);
  if (a4 <= 0x22)
  {
    v6[2821] = 0;
  }

  v7 = *(result + 8);
  if (!a2)
  {
    v6[2367] = 0;
    if (a4 >= 0x1F)
    {
      v32 = *(a5 + 18928) + 8 * (a4 - 31);
      *(v32 + 40) = 0;
      *(v32 + 352) = 0;
      v33 = a5 + 8 * a4;
      *(v33 + 22848) = 0;
      *(v33 + 23408) = 0;
    }

    else
    {
      v16 = *(a5 + 18920);
      v17 = (v16 + 8 * a4);
      *v17 = 0;
      v17[31] = 0;
      v18 = a5 + 8 * a4;
      *(v18 + 22848) = 0;
      *(v18 + 23408) = 0;
      *(v16 + 4 * a4 + 17516) = 0;
      v17[2205] = 0;
    }

    goto LABEL_22;
  }

  v8 = MEMORY[0x29EDC5638];
  v9 = (a2 + *MEMORY[0x29EDC5638]);
  v10 = v9[2];
  v11 = v9[3];
  v12 = v9[1];
  v6[2856] = v12;
  v6[2926] = v11;
  v13 = v12 + a3;
  if (a4 >= 0x1F)
  {
    v19 = *(a5 + 18928) + 8 * (a4 - 31);
    *(v19 + 40) = v13;
    *(v19 + 352) = v11 + a3;
  }

  else
  {
    v14 = *(a5 + 18920);
    v15 = v14 + 8 * a4;
    *v15 = v13;
    *(v14 + 4 * a4 + 17516) = v10;
    *(v15 + 248) = v11 + a3;
    *(v15 + 17640) = v10;
    *(v15 + 17644) = v12 >> 8;
  }

  *(a5 + 8 * a4 + 18936) = a2 + *v8;
  v20 = v7[251];
  v21 = v20[2].i64[1];
  if (*(v21 + 480) != 1)
  {
    goto LABEL_17;
  }

  v22 = v20[3];
  v23 = v20[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v22), vceqzq_s64(v23))))) & 1) == 0)
  {
    goto LABEL_17;
  }

  v24 = a2 + *v8;
  if ((*(v24 + 23) & 0x10) != 0)
  {
    v24 = *v24;
  }

  v25 = *v24;
  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = *(v25 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v25), vceqzq_s64(v26))))) & 1) == 0)
  {
LABEL_17:
    v25 = 0;
LABEL_18:
    v30 = 0;
    goto LABEL_19;
  }

  v27 = vandq_s8(v26, v23);
  v28 = v27.u64[1];
  if (v27.i64[1])
  {
    v29 = 3;
  }

  else
  {
    v28 = v27.i64[0];
    if (v27.i64[0])
    {
      v29 = 2;
    }

    else
    {
      v35 = vandq_s8(*v25, v22);
      v28 = v35.u64[1];
      if (v35.i64[1])
      {
        v29 = 1;
      }

      else
      {
        v29 = 0;
        v25 = 0;
        v30 = 0;
        v28 = v35.i64[0];
        if (!v35.i64[0])
        {
          goto LABEL_19;
        }
      }
    }
  }

  v36 = &v20->i8[8 * v29];
  v37 = __clz(v28) ^ 0x3F;
  v25 = (*(v36 + 10) >> v37) & 1;
  v30 = (*(v36 + 14) >> v37) & 1;
LABEL_19:
  v31 = (v21 + 8 * (a4 > 0x3F));
  v31[12] = v31[12] & ~(1 << a4) | (v25 << a4);
  v31[32] = v31[32] & ~(1 << a4) | (v30 << a4);
  v31[52] &= ~(1 << a4);
  result = v7[237];
  if (result)
  {
    result = MTLResourceListAddResource();
  }

LABEL_22:
  v34 = &v7[a4 > 0x3F];
  v34[9774] |= 1 << a4;
  v34[9780] |= 1 << a4;
  v7[9810] |= 0x30000uLL;
  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreadgroupsWithIndirectBuffer(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __int128 *a5)
{
  if (*(*(a1 + 32) + 3946) == 1)
  {
    v8 = *(a1 + 8);
    v9 = v8[3794];
  }

  else
  {
    v8 = *(a1 + 8);
    v9 = v8[3794];
    v10 = *(v9 + 24);
    if (v10)
    {
      v10 = *(v10 + 3948);
    }

    if (a4[1] * a4[2] * *a4 > v10)
    {
      return;
    }
  }

  v11 = *(v9 + 32);
  if (v11)
  {
    v11 = *(v11 + 4036);
  }

  if (*(a5 + 1) * *a5 * *(a5 + 2) <= v11)
  {
    if (*(*(a1 + 32) + 3946))
    {
      v12 = 0;
      a3 = a3;
LABEL_30:
      v31 = a1;
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBuffer<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>>(a1, a2, a3, 0x23u, a1 + 72);
      IOGPUResourceListAddResource();
      v40 = *a4;
      v41 = a4[2];
      v38 = *a5;
      v39 = *(a5 + 2);
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreadgroupsWithIndirectBufferCommon(v31, v12, &v40, &v38);
      return;
    }

    v13 = *MEMORY[0x29EDC5638];
    v14 = a2 + v13;
    v15 = *(a2 + v13 + 8);
    a3 = a3;
    v12 = v15 + a3;
    if (v8[3762] == a2)
    {
      goto LABEL_30;
    }

    v16 = *(v14 + 16);
    v17 = (v16 & 0x7FFFFFFF80) != 0 && (v16 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL;
    if (v17 && (v18 = v8[251], *(v18[2].i64[1] + 480) == 1) && (v19 = v18[3], v20 = v18[4], (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v19), vceqzq_s64(v20))))) & 1) != 0))
    {
      v21 = a3;
      v22 = (a2 + v13);
      if ((v16 & 0x1000000000000000) != 0)
      {
        v22 = *v14;
      }

      v23 = *v22;
      if (v23)
      {
        v24 = *v23;
        v25 = v23[1];
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v23), vceqzq_s64(v25))))))
        {
          v26 = vandq_s8(v25, v20);
          v27 = v26.u64[1];
          if (v26.i64[1])
          {
            v28 = a1;
            v29 = 3;
            goto LABEL_38;
          }

          v27 = v26.i64[0];
          if (v26.i64[0])
          {
            v28 = a1;
            v29 = 2;
            goto LABEL_38;
          }

          v32 = vandq_s8(v24, v19);
          v28 = a1;
          v27 = v32.u64[1];
          if (v32.i64[1])
          {
            v29 = 1;
            goto LABEL_38;
          }

          v27 = v32.i64[0];
          if (v32.i64[0])
          {
            v29 = 0;
LABEL_38:
            v33 = &v18->i8[8 * v29];
            v34 = *(v33 + 10);
            v35 = 1 << (__clz(v27) ^ 0x3Fu);
            if ((v35 & (*(v33 + 14) | v34)) != 0)
            {
              v36 = (v15 + 127) & 0xFFFFFFFFFFFFFF80;
              v37 = (a2 + v13);
              if ((v16 & 0x1000000000000000) != 0)
              {
                v37 = *v14;
              }

              *&v40 = v37;
              *(&v40 + 1) = v36;
              v41 = (v16 >> 7) | 0x4100000000;
              v42 = (v35 & v34) != 0;
              ResourceTracker<_ResourceGroupBinding>::addResource(v18, &v40, *(v14 + 48), 65);
            }
          }

LABEL_27:
          IOGPUResourceListAddResource();
          a1 = v28;
          v30 = *(v28 + 8);
          if (*(v30 + 1896))
          {
            MTLResourceListAddResource();
            a1 = v28;
            v30 = *(v28 + 8);
          }

          a3 = v21;
          *(v30 + 30096) = a2;
          goto LABEL_30;
        }
      }
    }

    else
    {
      v21 = a3;
    }

    v28 = a1;
    goto LABEL_27;
  }
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreadgroupsWithIndirectBufferCommon(void *a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v7 = *(a1[5] + 3820);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(a1[1], v7);
  v10 = *a3;
  v9 = a3[1];
  v11 = *(a3 + 4);
  v12 = a1[4];
  v13 = *(v12 + 3946);
  if (v13 == 1)
  {
    v14 = *(v12 + 3752);
    v32 = HIDWORD(v14);
    v33 = v14;
    v34 = *(v12 + 3760);
    v36 = v34;
  }

  else
  {
    v34 = 0;
    LODWORD(v32) = 0;
    v33 = 0;
    v14 = v10 | (v9 << 32);
    v36 = v11;
  }

  v15 = *a4;
  v16 = *(a4 + 1);
  v17 = a4[4];
  v18 = a1[1];
  v19 = v18[21] + 12;
  if (v19 <= v18[20])
  {
LABEL_5:
    v18[22] = v19;
    goto LABEL_6;
  }

  v31 = v17;
  v30 = AGX::DataBufferAllocator<44ul>::growNoInline(v18 + 3, 3, 0);
  v17 = v31;
  if (v30)
  {
    v19 = v18[21] + 12;
    if (v19 > v18[20])
    {
      abort();
    }

    goto LABEL_5;
  }

LABEL_6:
  v20 = a1[1];
  v21 = v20[21];
  v22 = v21 + v20[23];
  v20[21] = v21 + 3;
  *v21 = v10;
  v21[1] = v9;
  v21[2] = v11;
  a1[2901] = v22;
  a1[2971] = v21;
  v23 = a1[2375];
  *(v23 + 80) = v22;
  *(v23 + 392) = v21;
  a1[2412] = *(v20[6] + 224) + *MEMORY[0x29EDC5638];
  v20[9774] |= 0x1000000000uLL;
  v20[9780] |= 0x1000000000uLL;
  v20[9810] |= 0x30000uLL;
  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitMeshRenderState(a1, a1[4], a1[5], v20[3793], a1[2374], a1[5337], v20[9129], v8, v15 | (v16 << 32), v17, SHIDWORD(v17), v14, SHIDWORD(v14), v36, (v20 + 9762), 0);
  v24 = a1[3];
  if (v13)
  {
    ++*(a1[1] + 1940);
    if (v7 == 1)
    {
      v25 = 1879048448;
    }

    else
    {
      v25 = 1879048192;
    }

    v26 = *(v24 + 48);
    if (v7 == 3)
    {
      v25 = 1879049728;
    }

    *v26 = v25;
    *(v26 + 4) = v33;
    *(v26 + 8) = v32;
    *(v26 + 12) = v34;
    *(v26 + 16) = v14;
    *(v26 + 24) = v36;
    v27 = v26 + 28;
  }

  else
  {
    if (v7 == 1)
    {
      v28 = 1912602880;
    }

    else
    {
      v28 = 1912602624;
    }

    ++*(a1[1] + 1940);
    v29 = *(v24 + 48);
    if (v7 == 3)
    {
      v28 = 1912604160;
    }

    *v29 = v28;
    *(v29 + 4) = WORD2(a2);
    *(v29 + 8) = a2 & 0xFFFFFFFC;
    *(v29 + 12) = v14;
    *(v29 + 20) = v36;
    v27 = v29 + 24;
  }

  *(v24 + 48) = v27;
  *(a1[1] + 1960) = 0;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(uint64_t result, uint64_t a2)
{
  v2 = (result + 78480);
  v3 = (result + 28632);
  if (!a2)
  {
    if (*(*(result + 30352) + 32))
    {
      v4 = *(result + 27960);
      if (v4)
      {
        v5 = *(v4 + 40);
        if (v5)
        {
          if ((*(v5 + 3882) & 4) != 0)
          {
            goto LABEL_6;
          }
        }
      }
    }

    else if ((*(*(result + 30336) + 4114) & 4) != 0)
    {
LABEL_6:
      v6 = *(result + 78553);
      v8 = (result + 28672);
      v7 = *(result + 28672);
      *(result + 28668) &= ~0x800000u;
      goto LABEL_23;
    }

    if (*(result + 30064))
    {
      LODWORD(a2) = 0;
    }

    else
    {
      LODWORD(a2) = 2;
    }
  }

  v9 = *(result + 30040);
  v6 = *(result + 78553);
  v8 = (result + 28672);
  v7 = *(result + 28672);
  *(result + 28668) &= ~0x800000u;
  if (a2 > 8)
  {
    goto LABEL_23;
  }

  if (((1 << a2) & 0x1D8) == 0)
  {
    if (((1 << a2) & 0x26) != 0)
    {
      v12.i32[0] = *v8 & 0xFFFFFFF | 0x10000000;
      v12.i32[1] = HIDWORD(*v8) & 0xFFFFFFF | 0x10000000;
      *v8 = v12;
      v11 = 1;
      if (v7 >> 28 == 1)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

LABEL_23:
    v13 = 4u >> v6;
    v12 = vorr_s8((*v8 & 0xFFFFFFF0FFFFFFFLL), vdup_n_s32(4u >> v6 << 28));
    *v8 = v12;
    v11 = 1;
    if (v13 == v7 >> 28)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  if (v9 == 2)
  {
    v10 = 6;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9 == 1;
  if (v9 == 1)
  {
    v10 = 5;
  }

  v12 = vorr_s8(vdup_n_s32(((v9 & 3) << 18) | (v10 << 28)), vand_s8(*v8, vdup_n_s32(0xFF3FFFFu)));
  *v8 = v12;
  if (v10 != v7 >> 28)
  {
LABEL_24:
    if (v12.i32[0] >> 28)
    {
      v14 = (v12.i32[0] >> 28) - 5 > 1;
    }

    else
    {
      v14 = 0;
    }

    *(*(result + 73040) + 904) = 0;
    *(result + 28652) = *(result + 28704);
    *(result + 28644) = vbsl_s8(0xFFFFFF00FFFFFF00, *(result + 28644), *(result + 29880));
    v15 = *v2;
    if (v14)
    {
      v16 = *(result + 29864) & 3 | *v3 & 0xFFFEFFFC;
    }

    else
    {
      v16 = *(result + 29864) & 3 | ((*(result + 29872) & 1) << 16) | *v3 & 0xFFFEFFFC;
    }

    *v3 = v16;
    *v2 = v15 | 0x2100000000000;
    if (*(result + 30066) != v11)
    {
      *v2 = v15 | 0x2100000000000;
      *(result + 30066) = v11;
    }
  }

LABEL_32:
  if (*(result + 29848) == 0.0 && *(result + 29852) == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v17 = *(result + 28672) >> 28;
    if (v17)
    {
      v18 = (v17 - 5) >= 2;
    }

    else
    {
      v18 = 0;
    }

    v19 = !v18;
  }

  if (*(result + 29860) != v19)
  {
    if (v19)
    {
      v20 = 0x20000;
    }

    else
    {
      v20 = 0;
    }

    *(result + 28640) = *(result + 28640) & 0xFFFDFFFF | v20;
    *v2 |= 0x100000000000uLL;
    *(result + 29860) = v19;
  }

  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitMeshRenderState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11, int a12, int a13, int a14, uint64_t a15, char a16)
{
  v577 = *MEMORY[0x29EDCA608];
  v17 = (a1 + 42696);
  v18 = *(a1 + 8);
  *(v18 + 28065) = 1;
  if (*(a1 + 48) != a9 || *(a1 + 52) != __PAIR64__(a10, HIDWORD(a9)))
  {
    *(a1 + 48) = a9;
    *(a1 + 56) = a10;
    *(v18 + 78480) |= 0xFE0000000uLL;
  }

  if (a2)
  {
    v19 = 192;
  }

  else
  {
    v19 = 128;
  }

  *(v18 + 2060) |= v19;
  v568 = 0;
  v20 = *(*(v18 + 1872) + 848);
  v21 = *(a1 + 42704);
  *&v571 = v21 + 168;
  *(&v571 + 1) = a1 + 43088;
  v572 = (v21 + 176);
  *v573 = a1 + 43096;
  *&v573[8] = v21 + 200;
  *&v573[16] = a1 + 43120;
  if (AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::addToResourceList(v20 + 7240, &v571, *(v18 + 1904), &v568))
  {
    if (a16 && (v568 & 1) == 0)
    {
      IOGPUResourceListAddResource();
      IOGPUResourceListAddResource();
      IOGPUResourceListAddResource();
    }

    v479 = v17[1];
    v480 = v479[21];
    v481 = *(a1 + 19000);
    v481[21] = v480;
    v22 = *(a1 + 8);
    v482 = v22[9130];
    v482[22] = v480;
    v483 = v17[49];
    *(a1 + 19384) = v483;
    v22[9178] = v483;
    v22[9774] |= 0x800000000000uLL;
    v22[9780] |= 0x800000000000uLL;
    v22[9786] |= 0x800000000000uLL;
    v22[9792] |= 0x800000000000uLL;
    v22[9798] |= 0x800000000000uLL;
    v22[9804] |= 0x800000000000uLL;
    v484 = v479[22];
    v481[22] = v484;
    v482[23] = v484;
    v485 = v17[50];
    *(a1 + 19392) = v485;
    v22[9179] = v485;
    v22[9774] |= 0x1000000000000uLL;
    v22[9780] |= 0x1000000000000uLL;
    v22[9786] |= 0x1000000000000uLL;
    v22[9792] |= 0x1000000000000uLL;
    v22[9798] |= 0x1000000000000uLL;
    v22[9804] |= 0x1000000000000uLL;
    v486 = v479[25];
    v481[25] = v486;
    v482[26] = v486;
    v487 = v17[53];
    *(a1 + 19416) = v487;
    v22[9182] = v487;
    v22[9774] |= 0x8000000000000uLL;
    v22[9780] |= 0x8000000000000uLL;
    v22[9786] |= 0x8000000000000uLL;
    v22[9792] |= 0x8000000000000uLL;
    v22[9798] |= 0x8000000000000uLL;
    v22[9804] |= 0x8000000000000uLL;
    *(a15 + 384) |= 0x300C030000uLL;
  }

  else
  {
    v22 = *(a1 + 8);
  }

  v23 = *(v22[234] + 848);
  *&v571 = v17[1] + 208;
  *(&v571 + 1) = v17 + 54;
  v24 = AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::SamplerHeapElem>::addToResourceList(v23 + 2152, &v571);
  v25 = *(a1 + 8);
  *(*(v25 + 30328) + 2096) = *(v17[1] + 208);
  explicit = atomic_load_explicit((*(*(v25 + 1872) + 848) + 9388), memory_order_acquire);
  if (explicit)
  {
    v27 = explicit + 1;
  }

  else
  {
    v27 = 0;
  }

  v28 = *(a1 + 8);
  *(v28[3791] + 2104) = v27;
  if (!v24)
  {
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (a16)
  {
    IOGPUResourceListAddResource();
    v28 = *(a1 + 8);
  }

  v488 = *(v17[1] + 208);
  *(*(a1 + 19000) + 208) = v488;
  *(v28[9130] + 216) = v488;
  v489 = v17[54];
  *(a1 + 19424) = v489;
  v28[9183] = v489;
  v28[9774] |= 0x10000000000000uLL;
  v28[9780] |= 0x10000000000000uLL;
  v28[9786] |= 0x10000000000000uLL;
  v28[9792] |= 0x10000000000000uLL;
  v28[9798] |= 0x10000000000000uLL;
  v28[9804] |= 0x10000000000000uLL;
  *(a15 + 384) |= 0x300C030000uLL;
  if (a3)
  {
LABEL_14:
    v29 = v28[3791];
    if (!*(v29 + 600))
    {
      if (*(a3 + 2480) == 0)
      {
        v30 = *(a3 + 2112);
      }

      else
      {
        v30 = 1;
      }

      *(v29 + 600) = v30;
    }
  }

LABEL_19:
  if (a2)
  {
    v31 = v28[3791];
    if (!*(v31 + 600))
    {
      if (*(a2 + 2480) == 0)
      {
        v32 = *(a2 + 2112);
      }

      else
      {
        v32 = 1;
      }

      *(v31 + 600) = v32;
    }
  }

  v33 = *(v28[234] + 848);
  *&v571 = v28 + 9929;
  *(&v571 + 1) = v28 + 9930;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v33 + 3146, &v571))
  {
    IOGPUResourceListAddResource();
  }

  v34 = *(a1 + 8);
  **(v34 + 79424) = *(v34 + 79432);
  v35 = *(*(v34 + 1872) + 848);
  *&v571 = v34 + 79448;
  *(&v571 + 1) = v34 + 79456;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v35 + 2952, &v571))
  {
    IOGPUResourceListAddResource();
  }

  v36 = *(a1 + 8);
  *(v36[9928] + 8) = v36[9931];
  v37 = *(v36[234] + 848);
  *&v571 = v17[1] + 232;
  *(&v571 + 1) = v17 + 57;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v37 + 3728, &v571))
  {
    if (a16)
    {
      IOGPUResourceListAddResource();
    }

    v39 = v17[1];
    v490 = *(v39 + 232);
    *(*(a1 + 19000) + 232) = v490;
    v38 = *(a1 + 8);
    *(v38[9130] + 240) = v490;
    v491 = v17[57];
    *(a1 + 19448) = v491;
    v38[9186] = v491;
    v38[9774] |= 0x80000000000000uLL;
    v38[9780] |= 0x80000000000000uLL;
    v38[9786] |= 0x80000000000000uLL;
    v38[9792] |= 0x80000000000000uLL;
    v38[9798] |= 0x80000000000000uLL;
    v38[9804] |= 0x80000000000000uLL;
    *(a15 + 384) |= 0x300C030000uLL;
  }

  else
  {
    v38 = *(a1 + 8);
    v39 = v17[1];
  }

  v40 = *(v38[234] + 848);
  *&v571 = v39 + 248;
  *(&v571 + 1) = v17 + 59;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v40 + 3340, &v571))
  {
    if (a16)
    {
      IOGPUResourceListAddResource();
    }

    v42 = v17[1];
    v492 = *(v42 + 248);
    *(*(a1 + 19000) + 248) = v492;
    v41 = *(a1 + 8);
    *(v41[9130] + 256) = v492;
    v493 = v17[59];
    *(a1 + 19464) = v493;
    v41[9188] = v493;
    v41[9774] |= 0x200000000000000uLL;
    v41[9780] |= 0x200000000000000uLL;
    v41[9786] |= 0x200000000000000uLL;
    v41[9792] |= 0x200000000000000uLL;
    v41[9798] |= 0x200000000000000uLL;
    v41[9804] |= 0x200000000000000uLL;
    *(a15 + 384) |= 0x300C030000uLL;
  }

  else
  {
    v41 = *(a1 + 8);
    v42 = v17[1];
  }

  v43 = *(v41[234] + 848);
  *&v571 = v42 + 224;
  *(&v571 + 1) = v17 + 56;
  if (AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::BVHStateHeapElem>::addToResourceList(v43 + 2352, &v571))
  {
    if (a16)
    {
      IOGPUResourceListAddResource();
    }

    v45 = v17[1];
    v494 = *(v45 + 224);
    *(*(a1 + 19000) + 224) = v494;
    v44 = *(a1 + 8);
    *(v44[9130] + 232) = v494;
    v495 = v17[56];
    *(a1 + 19440) = v495;
    v44[9185] = v495;
    v44[9774] |= 0x40000000000000uLL;
    v44[9780] |= 0x40000000000000uLL;
    v44[9786] |= 0x40000000000000uLL;
    v44[9792] |= 0x40000000000000uLL;
    v44[9798] |= 0x40000000000000uLL;
    v44[9804] |= 0x40000000000000uLL;
    *(a15 + 384) |= 0x300C030000uLL;
  }

  else
  {
    v44 = *(a1 + 8);
    v45 = v17[1];
  }

  v46 = *(v44[234] + 848);
  *&v571 = v45 + 320;
  *(&v571 + 1) = v17 + 68;
  if (AGX::Mempool<16u,0u,true,8u,0u,AGX::HAL300::TensorStateHeapElem>::addToResourceList(v46 + 2752, &v571))
  {
    if (a16)
    {
      IOGPUResourceListAddResource();
    }

    v496 = *(v17[1] + 320);
    *(*(a1 + 19000) + 320) = v496;
    v497 = *(a1 + 8);
    v498 = v497 + 9775;
    v497 += 9130;
    *(*v497 + 328) = v496;
    v499 = v17[68];
    *(a1 + 19536) = v499;
    v497[67] = v499;
    *v498 |= 4uLL;
    v498[6] |= 4uLL;
    v498[12] |= 4uLL;
    v498[18] |= 4uLL;
    v498[24] |= 4uLL;
    v498[30] |= 4uLL;
    *(a15 + 384) |= 0x300C030000uLL;
  }

  v552 = (a1 + 24040);
  if (a16)
  {
    goto LABEL_55;
  }

  if (a2 && *v552 == 1 && (*(a2 + 2407) & 0x40) != 0)
  {
    v47 = *(*(a1 + 19000) + 328);
    v48 = *(a1 + 8);
    v49 = v48[21] + 47;
    if (v49 > v48[20])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v48 + 3, 3, 0))
      {
        goto LABEL_42;
      }

      v49 = v48[21] + 47;
      if (v49 > v48[20])
      {
        goto LABEL_465;
      }
    }

    v48[22] = v49;
LABEL_42:
    v50 = *(a1 + 8);
    v51 = ((*(v50 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
    v52 = v51 + *(v50 + 184);
    *(v50 + 168) = v51 + 4;
    *v51 = v47;
    v51[1] = 0;
    v51[2] = 0;
    v51[3] = 0;
    v53 = *(a1 + 8);
    v54 = v53 + 77824;
    v55 = *(*(v53 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v54 + 368) |= 0x4000000000000000uLL;
    *(v54 + 656) |= 0x10000uLL;
    *(*(a1 + 19000) + 288) = v52;
    *(a1 + 19504) = v55;
    *v552 = 0;
  }

  if (a3 && *(a1 + 47744) == 1 && (*(a3 + 2407) & 0x40) != 0)
  {
    v56 = *(v17[1] + 328);
    v57 = *(a1 + 8);
    v58 = v57[21] + 47;
    if (v58 > v57[20])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v57 + 3, 3, 0))
      {
        goto LABEL_48;
      }

      v58 = v57[21] + 47;
      if (v58 > v57[20])
      {
        goto LABEL_465;
      }
    }

    v57[22] = v58;
LABEL_48:
    v59 = *(a1 + 8);
    v60 = ((*(v59 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = v60 + *(v59 + 184);
    *(v59 + 168) = v60 + 4;
    *v60 = v56;
    v60[1] = 0;
    v60[2] = 0;
    v60[3] = 0;
    v62 = *(a1 + 8);
    v63 = v62 + 77824;
    v64 = *(*(v62 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v63 + 464) |= 0x4000000000000000uLL;
    *(v63 + 656) |= 0x4000000uLL;
    *(v17[1] + 288) = v61;
    v17[64] = v64;
    *(a1 + 47744) = 0;
  }

  if (a4)
  {
    if ((*(a4 + 2407) & 0x40) != 0)
    {
      v65 = *(a1 + 8);
      if (*(v65 + 78080) == 1)
      {
        v66 = *(*(v65 + 73040) + 336);
        v67 = *(v65 + 200);
        v68 = v67 + 31;
        if ((v67 + 31) > *(v65 + 192))
        {
          v513 = AGX::DataBufferAllocator<44ul>::growNoInline(v65 + 24, 4, 0);
          v67 = *(v65 + 200);
          if (!v513)
          {
            goto LABEL_54;
          }

          v68 = v67 + 31;
          if ((v67 + 31) > *(v65 + 192))
          {
            goto LABEL_465;
          }
        }

        *(v65 + 208) = v68;
LABEL_54:
        v69 = ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
        v70 = v69 + *(v65 + 216);
        *(v65 + 200) = v69 + 2;
        *v69 = v66;
        v71 = *(*(v65 + 48) + 288) + *MEMORY[0x29EDC5638];
        *(v65 + 78384) |= 0x4000000000000000uLL;
        *(v65 + 78480) |= 0x1000000000uLL;
        *(*(v65 + 73040) + 296) = v70;
        *(v65 + 73544) = v71;
        *(v65 + 78080) = 0;
      }
    }
  }

LABEL_55:
  v72 = *(a1 + 8);
  if (*(v72 + 78088) != 1)
  {
    goto LABEL_59;
  }

  v73 = *(v72 + 200);
  v74 = v73 + 95;
  if ((v73 + 95) > *(v72 + 192))
  {
    v506 = AGX::DataBufferAllocator<44ul>::growNoInline(v72 + 24, 4, 0);
    v73 = *(v72 + 200);
    if (!v506)
    {
      goto LABEL_58;
    }

    v74 = v73 + 95;
    if ((v73 + 95) > *(v72 + 192))
    {
      goto LABEL_465;
    }
  }

  *(v72 + 208) = v74;
LABEL_58:
  v75 = ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v75 + *(v72 + 216);
  *(v72 + 200) = v75 + 5;
  v77 = *(v72 + 79592);
  v79 = *(v72 + 79624);
  v78 = *(v72 + 79640);
  v75[2] = *(v72 + 79608);
  v75[3] = v79;
  v75[1] = v77;
  *v75 = *(v72 + 79576);
  v75[4] = v78;
  v80 = *(*(v72 + 48) + 288) + *MEMORY[0x29EDC5638];
  *(v72 + 78384) |= 0x8000000000000000;
  *(v72 + 78480) |= 0x1000000000uLL;
  *(*(v72 + 73040) + 304) = v76;
  *(v72 + 73552) = v80;
  *(v72 + 78088) = 256;
  v72 = *(a1 + 8);
LABEL_59:
  v81 = *(*(v72 + 1872) + 848);
  v82 = *(v81 + 6320);
  if (*(v72 + 29932) != v82)
  {
    for (i = *(v81 + 6832); i; i = *i)
    {
      IOGPUResourceListAddResource();
    }

    for (j = *(v81 + 6664); j; j = *j)
    {
      IOGPUResourceListAddResource();
    }

    *(v72 + 29932) = v82;
    v72 = *(a1 + 8);
  }

  v85 = *(v72 + 30352);
  if (v85)
  {
    if (v85[1572])
    {
      *(*(v72 + 30328) + 1612) |= *(v72 + 27888) ^ 1;
    }

    if ((v85[2196] & 1) != 0 || v85[2508])
    {
      *(*(v72 + 30328) + 580) |= *(v72 + 27888) ^ 1;
    }
  }

  v86 = *(a15 + 384);
  if (a4)
  {
    v87 = v86 | AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::extractProgramVariantArgumentDirtyBits(*(a1 + 16), a2, a3, a4, a15);
    v88 = *(a4 + 3916);
  }

  else
  {
    v89 = v86 & 0xFFFFFF8FFFFFFFFDLL;
    *(a15 + 384) = v89;
    ProgramVariantArgumentDirtyBits = AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::extractProgramVariantArgumentDirtyBits(*(a1 + 16), a2, a3, 0, a15);
    v88 = 0;
    v87 = v89 | ProgramVariantArgumentDirtyBits;
  }

  v567 = v87;
  v555 = v87;
  if (a16 & 1) != 0 || (v88)
  {
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitDepthRanges(*(a1 + 8), v87);
    v87 = v555;
  }

  if ((v87 & 0x20000) != 0 && (a16 & 1) == 0)
  {
    v91 = *(a15 + 144) & *(a2 + 2400);
    v92 = *(a15 + 152) & *(a2 + 2408);
    v575 = v91;
    v569 = v92;
    v571 = *(a2 + 1360);
    while (1)
    {
      if (v91)
      {
        v93 = __clz(__rbit64(v91));
        v94 = &v575;
        v95 = v93;
      }

      else
      {
        v91 = v569;
        if (!v569)
        {
          v87 = v555;
          break;
        }

        v93 = __clz(__rbit64(v569));
        v95 = v93 | 0x40;
        v94 = &v569;
      }

      *v94 = v91 & ~(1 << v93);
      if (*(a1 + 19008 + 8 * v95))
      {
        AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindObjectBufferResource(a1, v95, (*(&v571 | (8 * (v95 > 0x3F))) >> v95) & 1, 1);
      }

      v91 = v575;
    }
  }

  if ((v87 & 0x8000000) != 0 && (a16 & 1) == 0)
  {
    v96 = *(a15 + 240) & *(a3 + 2400);
    v97 = *(a15 + 248) & *(a3 + 2408);
    v575 = v96;
    v569 = v97;
    v571 = *(a3 + 1360);
    while (1)
    {
      if (v96)
      {
        v98 = __clz(__rbit64(v96));
        v99 = &v575;
        v100 = v98;
      }

      else
      {
        v96 = v569;
        if (!v569)
        {
          v87 = v555;
          break;
        }

        v98 = __clz(__rbit64(v569));
        v100 = v98 | 0x40;
        v99 = &v569;
      }

      *v99 = v96 & ~(1 << v98);
      if (*(a1 + 42712 + 8 * v100))
      {
        AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindMeshBufferResource(a1, v100, (*(&v571 | (8 * (v100 > 0x3F))) >> v100) & 1, 1);
      }

      v96 = v575;
    }
  }

  if ((v87 & 0x40000) != 0)
  {
    v101 = *(a1 + 18992);
    if (v101)
    {
      v102 = *(a2 + 2416) & *(a15 + 160) & v101[2236];
      v103 = *(a2 + 2424) & *(a15 + 168) & v101[2237];
      v575 = v102;
      v569 = v103;
      v104 = *(a2 + 1376);
      v105 = *(a2 + 1384);
      *&v571 = v104;
      *(&v571 + 1) = v105;
      v106 = v101[2238];
      v107 = v101[2239];
      if (v102)
      {
        goto LABEL_105;
      }

      while (1)
      {
        v102 = v569;
        if (!v569)
        {
          break;
        }

        v108 = __clz(__rbit64(v569));
        v109 = v108 | 0x40;
        v110 = &v569;
        while (1)
        {
          *v110 = v102 & ~(1 << v108);
          AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindObjectTextureResources(a1, v109, (*(&v571 + (v109 > 0x3F)) >> v109) & 1);
          v102 = v575;
          if (!v575)
          {
            break;
          }

LABEL_105:
          v108 = __clz(__rbit64(v102));
          v110 = &v575;
          v109 = v108;
        }
      }

      *(*(*(a1 + 8) + 30328) + 580) |= (v106 & v104 | v107 & v105) != 0;
      v87 = v555;
    }
  }

  if ((v87 & 0x10000000) != 0)
  {
    v111 = *v17;
    if (*v17)
    {
      v112 = *(a3 + 2416) & *(a15 + 256) & v111[2236];
      v113 = *(a3 + 2424) & *(a15 + 264) & v111[2237];
      v575 = v112;
      v569 = v113;
      v114 = *(a3 + 1376);
      v115 = *(a3 + 1384);
      *&v571 = v114;
      *(&v571 + 1) = v115;
      v116 = v111[2238];
      v117 = v111[2239];
      if (v112)
      {
        goto LABEL_114;
      }

      while (1)
      {
        v112 = v569;
        if (!v569)
        {
          break;
        }

        v118 = __clz(__rbit64(v569));
        v119 = v118 | 0x40;
        v120 = &v569;
        while (1)
        {
          *v120 = v112 & ~(1 << v118);
          AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindMeshTextureResources(a1, v119, (*(&v571 + (v119 > 0x3F)) >> v119) & 1);
          v112 = v575;
          if (!v575)
          {
            break;
          }

LABEL_114:
          v118 = __clz(__rbit64(v112));
          v120 = &v575;
          v119 = v118;
        }
      }

      *(*(*(a1 + 8) + 30328) + 580) |= (v116 & v114 | v117 & v115) != 0;
      v87 = v555;
    }
  }

  if ((v87 & 0x2000000000) != 0 && (a16 & 1) == 0)
  {
    v121 = *(a15 + 336) & *(a4 + 2400);
    v122 = *(a15 + 344) & *(a4 + 2408);
    v575 = v121;
    v569 = v122;
    v571 = *(a4 + 1360);
    while (1)
    {
      if (v121)
      {
        v123 = __clz(__rbit64(v121));
        v124 = &v575;
        v125 = v123;
      }

      else
      {
        v121 = v569;
        if (!v569)
        {
          v87 = v555;
          break;
        }

        v123 = __clz(__rbit64(v569));
        v125 = v123 | 0x40;
        v124 = &v569;
      }

      *v124 = v121 & ~(1 << v123);
      v126 = *(a1 + 8);
      if (*(v126 + 8 * v125 + 73048))
      {
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindFragmentBufferResource(v126, v125, (*(&v571 | (8 * (v125 > 0x3F))) >> v125) & 1, 1);
      }

      v121 = v575;
    }
  }

  if ((v87 & 0x4000000000) != 0)
  {
    v127 = *(*(a1 + 8) + 73032);
    if (v127)
    {
      v128 = *(a4 + 2416) & *(a15 + 352) & v127[2236];
      v129 = *(a4 + 2424) & *(a15 + 360) & v127[2237];
      v575 = v128;
      v569 = v129;
      *&v537 = *(a4 + 1384);
      *(&v537 + 1) = *(a4 + 1376);
      *&v571 = *(&v537 + 1);
      *(&v571 + 1) = v537;
      *&v532 = v127[2239];
      *(&v532 + 1) = v127[2238];
      while (1)
      {
        if (v128)
        {
          v130 = __clz(__rbit64(v128));
          v131 = &v575;
          v132 = v130;
        }

        else
        {
          v128 = v569;
          if (!v569)
          {
            *(*(*(a1 + 8) + 30328) + 1612) |= (v532 & v537) != 0;
            v87 = v555;
            break;
          }

          v130 = __clz(__rbit64(v569));
          v132 = v130 | 0x40;
          v131 = &v569;
        }

        *v131 = v128 & ~(1 << v130);
        v133 = *(a1 + 8);
        if ((*(&v571 + (v132 > 0x3F)) >> v132))
        {
          v134 = 12;
        }

        else
        {
          v134 = 4;
        }

        v135 = 3 * v132;
        v136 = v133 + 73608;
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(v133 + 2008), *(v133 + 73608 + 24 * v132), 4u, v132, v134);
        if (*(v133 + 73608 + 8 * v135))
        {
          IOGPUResourceListAddResource();
          if (*(v136 + 8 * (v135 + 1)))
          {
            IOGPUResourceListAddResource();
          }

          if (*(v136 + 8 * (v135 + 2)))
          {
            IOGPUResourceListAddResource();
          }
        }

        v128 = v575;
      }
    }
  }

  v137 = a15;
  v138 = *(a15 + 392);
  if (v138)
  {
    v137 = a15;
    if (*(*(a1 + 8) + 30064) == 1)
    {
      *(a15 + 392) = v138 & 0xFFFFFFFE;
    }
  }

  *(v137 + 384) = 0;
  *(v137 + 352) = 0u;
  *(v137 + 368) = 0u;
  *(v137 + 320) = 0u;
  *(v137 + 336) = 0u;
  *(v137 + 288) = 0u;
  *(v137 + 304) = 0u;
  *(v137 + 256) = 0u;
  *(v137 + 272) = 0u;
  *(v137 + 224) = 0u;
  *(v137 + 240) = 0u;
  *(v137 + 192) = 0u;
  *(v137 + 208) = 0u;
  *(v137 + 160) = 0u;
  *(v137 + 176) = 0u;
  *(v137 + 128) = 0u;
  *(v137 + 144) = 0u;
  *(v137 + 96) = 0u;
  *(v137 + 112) = 0u;
  *(v137 + 64) = 0u;
  *(v137 + 80) = 0u;
  *(v137 + 32) = 0u;
  *(v137 + 48) = 0u;
  *v137 = 0u;
  *(v137 + 16) = 0u;
  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::reserveDispatchMeshDatabufferSpace(a1, v87, a2, a3, a4);
  v141 = 0xDE876B1A5;
  v566 = 0;
  v565 = 4123088130;
  v142 = -1;
  v564 = -1;
  v563 = 0;
  v562 = 0;
  v143 = *(a1 + 8);
  v144 = *(*(v143 + 1872) + 848);
  if (*(v144 + 6241) == 1 && (v555 & 0x400000000000) != 0)
  {
    v139.i32[0] = *(v143 + 29848);
    v507 = *(v143 + 29852);
    v508 = *(v143 + 29856);
    v140.i32[0] = 931135616;
    v509.i64[0] = 0x8000000080000000;
    v509.i64[1] = 0x8000000080000000;
    LODWORD(v510) = vbslq_s8(v509, v140, v139).u32[0];
    if (*(*(v143 + 2392) + 4924))
    {
      *v139.i32 = v510 + (*v139.i32 * 0.000015259);
    }

    *&v571 = 0;
    LOBYTE(v575) = 0;
    LOBYTE(v569) = 0;
    v511 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDepthBiasIndex(v144, *(*(v143 + 30328) + 952), &v571, &v575, &v569, *v139.i32, v507, v508);
    if (v569)
    {
      if (v575)
      {
        v142 = v511;
        v141 = v571;
      }

      else
      {
        v566 = 1;
        v562 = 4;
      }
    }

    else
    {
      v566 = 1;
    }

    v143 = *(a1 + 8);
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::handleDeviceScissorBufferReserve(v143, &v567, &v564, &v565, &v563, &v566, &v562);
  v145 = *(a1 + 8);
  v146 = v566 | (*(*(v145 + 1912) + 520) == 0);
  v566 = v146;
  v147 = *(*(v145 + 1872) + 848) + 4096;
  if ((*(*(*(v145 + 1872) + 848) + 6242) & 1) == 0)
  {
    v146 |= ((*(v145 + 328) - *(*(v145 + 48) + 536)) >> 4) > 0xFFFE;
    v566 = v146;
  }

  if (*(v147 + 2145))
  {
    if ((v146 & 1) == 0)
    {
LABEL_152:
      v148 = 0;
      goto LABEL_153;
    }
  }

  else
  {
    v183 = *(v145 + 296);
    if (!v183)
    {
      v512 = v145;
      AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v145 + 24, 7u);
      v145 = v512;
      v183 = *(v512 + 296);
      if (!v183)
      {
        AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v512 + 24, 7u);
        v183 = 0;
        v145 = v512;
      }
    }

    v566 = v146 | (-1431655765 * ((v183 - *(*(v145 + 48) + 472)) >> 2) > 0xFFFE);
    v145 = *(a1 + 8);
    if ((v566 & 1) == 0)
    {
      goto LABEL_152;
    }
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::restartRenderPass(v145, &v567, v562, 1);
  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::reserveDispatchMeshDatabufferSpace(a1, v567, a2, a3, a4);
  v145 = *(a1 + 8);
  v148 = 1;
  if (a16 && (v568 & 1) == 0)
  {
    IOGPUResourceListAddResource();
    IOGPUResourceListAddResource();
    IOGPUResourceListAddResource();
    v145 = *(a1 + 8);
    v148 = 1;
  }

LABEL_153:
  if (!*(*(v145 + 1912) + 520))
  {
    v149 = *(v145 + 1968) - *(v145 + 1984);
    *(v149 + 140) = 1;
    if ((*(v149 + 136) & 4) != 0)
    {
      **(v145 + 8) = 1;
    }
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::handleScissorUpdates(v145, &v567, v564, v565, v563, v148);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::handleDepthBiasUpdates(*(a1 + 8), &v567, v142, v141, v150, v151, v152, v153);
  v159 = v567;
  if ((v567 & 0x800000000000) != 0)
  {
    v500 = *(a1 + 8);
    v501 = *(v500 + 28608);
    v502 = *(v500 + 200);
    v503 = v502 + 11;
    if ((v502 + 11) <= *(v500 + 192))
    {
      goto LABEL_460;
    }

    v518 = AGX::DataBufferAllocator<44ul>::growNoInline(v500 + 24, 4, 0);
    v502 = *(v500 + 200);
    if (!v518)
    {
LABEL_461:
      v504 = ((v502 + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v505 = v504 + *(v500 + 216);
      *v504 = v501;
      *(v500 + 200) = v504 + 1;
      *(v500 + 28620) = (v505 >> 16) & 0xFFFF0000;
      *(v500 + 28624) = v505 & 0xFFFFFFFC;
      v159 |= 0x8000000000000uLL;
      v567 = v159;
      if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1291SWWA())
      {
        *(v500 + 78480) |= 0x1000000000000uLL;
      }

      goto LABEL_157;
    }

    v503 = v502 + 11;
    if ((v502 + 11) <= *(v500 + 192))
    {
LABEL_460:
      *(v500 + 208) = v503;
      goto LABEL_461;
    }

LABEL_465:
    abort();
  }

LABEL_157:
  v160 = *(a2 + 3004);
  *(a1 + 60) = v160;
  v161 = *(a1 + 19000);
  if (*(a2 + 3796))
  {
    v162 = 0;
    v163 = a2 + 3800;
    do
    {
      *(v161 + 664 + 4 * *(v163 + 4 * v162)) = v160 | 0x80000000;
      v160 = *(a1 + 60) + *(v161 + 804 + 4 * *(v163 + 4 * v162));
      *(a1 + 60) = v160;
      ++v162;
    }

    while (v162 < *(a2 + 3796));
  }

  *(v161 + 944) = v160;
  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForObject(*(a1 + 8) + 30104, *(a2 + 1296), *(a2 + 1308), *(a2 + 1324), v160, a14 * a12 * a13, v154, v155, v156, v157, v158))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 8) + 30104, *(*(a1 + 8) + 30328) + 320, 1);
  }

  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForMesh(*(a1 + 8) + 30104, *(a3 + 1296), *(a3 + 1308), *(a3 + 1324), *(a3 + 3004), a10 * a9 * HIDWORD(a9), v164, v165, v166, v167, v168))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 8) + 30104, *(*(a1 + 8) + 30328) + 320, 1);
  }

  v170 = *(a1 + 24);
  if ((v159 & 0xFE3F80030) != 0)
  {
    v171 = *(a1 + 8);
    if ((*(v171 + 30076) & 1) == 0)
    {
      v558 = *(a1 + 16);
      v172 = a1 + 88;
      v173 = *(v171 + 30352);
      v174 = *(a1 + 48);
      v175 = *(a1 + 56);
      v546 = *(v171 + 30064);
      v176 = *(a1 + 1032);
      v571 = 0uLL;
      *v573 = 0;
      v572 = 0;
      *&v573[4] = 0x3000000A5;
      v574 = 0;
      *&v573[20] = 0;
      v177 = ((v176 << 16) + 4128768) & 0xFFC00000;
      if (v176)
      {
        v178 = v177 + 1;
      }

      else
      {
        v178 = v177;
      }

      *&v573[12] = v178;
      AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::AGX3EncodedInstr<AGXIotoInstruction_SPECLM_0>::AGX3EncodedInstr(&v575, &v571);
      v179 = a2;
      v180 = *(a2 + 624);
      v547 = v159;
      v551 = v175;
      v549 = v173;
      v550 = v174;
      if (v180)
      {
        v181 = (v170[18] + 31) & 0xFFFFFFFFFFFFFFE0;
        v182 = v181 + v170[20];
        v170[18] = v181 + v180;
        v179 = a2;
      }

      else
      {
        v182 = 0;
        v181 = 0;
      }

      v184 = v575;
      v185 = ((v170[26] + 63) & 0xFFFFFFFFFFFFFFC0);
      v186 = v170[28];
      v170[26] = &v185[*(*(v179 + 2392) + 8) - **(v179 + 2392)];
      v187 = *(v179 + 1128);
      v188 = *(v179 + 1120);
      v189 = v187 - v188;
      v415 = v187 == v188;
      v190 = *(v179 + 1016);
      v191 = v190 & 1;
      if (v415)
      {
        v191 = 0;
      }

      v556 = v182;
      if (!v180)
      {
        goto LABEL_259;
      }

      v544 = v186;
      v192 = *(v179 + 1320);
      v193 = *(v179 + 656);
      v530 = *(v179 + 736);
      v542 = *(v179 + 660);
      v194 = *(v179 + 1024);
      v195 = *(v179 + 1028);
      v196 = v193 + ((*(v179 + 872) - *(v179 + 864)) >> 2);
      v197 = *(v179 + 1352);
      v198 = *(v179 + 1353);
      if (*(v179 + 1352))
      {
        *(a1 + 272) = vaddw_u32(vdupq_n_s64(v182), *(a2 + 628));
      }

      v533 = v198;
      if (v198)
      {
        *(a1 + 304) = v182 + *(a2 + 648);
      }

      v199 = 8 * v196;
      v200 = v191 + v190;
      if (v195 + v194)
      {
        *(a1 + 368) = v199 + v182 + 4 * (v200 + ((v189 >> 1) & 0xFFFFFFFE));
      }

      v535 = v200;
      if (v193 == v192)
      {
        v201 = 0;
        v186 = v544;
        v202 = v542;
        v203 = v189 >> 2;
        if (!v192)
        {
          goto LABEL_234;
        }

        goto LABEL_230;
      }

      if (a5)
      {
        v204 = *(a2 + 712);
        v205 = *(a2 + 720);
        if (v204 != v205)
        {
          v206 = v181;
          do
          {
            v207 = *v204++;
            *v206++ = *(v172 + 8 * v207);
          }

          while (v204 != v205);
        }

LABEL_209:
        if (*(a2 + 1160))
        {
          v218 = *(a2 + 1144);
          if (v218 != (a2 + 1152))
          {
            do
            {
              *(v181 + 4 * *(v218 + 7)) |= *(v218 + 8);
              v227 = v218[1];
              if (v227)
              {
                do
                {
                  v228 = v227;
                  v227 = *v227;
                }

                while (v227);
              }

              else
              {
                do
                {
                  v228 = v218[2];
                  v415 = *v228 == v218;
                  v218 = v228;
                }

                while (!v415);
              }

              v218 = v228;
            }

            while (v228 != (a2 + 1152));
          }
        }

        v219 = (v530 + 3) & 0xFFFFFFFC;
        if (v197)
        {
          v220 = *(a2 + 1312);
          if (v220 >= 4)
          {
            v221 = v220 >> 2;
            v222 = *(a2 + 752);
            v223 = (v181 + 8 * v219);
            do
            {
              v224 = *v222;
              v222 += 4;
              v225 = (a5 + 496 + 8 * v224);
              v226 = v225[1];
              *v223 = *v225;
              v223[1] = v226;
              v223 += 2;
              --v221;
            }

            while (v221);
          }

          v219 += v220;
        }

        else
        {
          v220 = 0;
        }

        v186 = v544;
        v202 = v542;
        if (v533)
        {
          v229 = *(a2 + 1316);
          v230 = (v181 + 8 * v219);
          v231 = a5 + 16880;
          if (*(a2 + 2192) == 1)
          {
            if (v229)
            {
              v514 = (*(a2 + 752) + 4 * v220);
              do
              {
                v515 = *v514++;
                *v230++ = *(v231 + 8 * v515);
                --v229;
              }

              while (v229);
            }
          }

          else if (v229 >= 4)
          {
            v232 = v229 >> 2;
            v233 = (*(a2 + 752) + 4 * v220);
            do
            {
              v234 = *v233;
              v233 += 4;
              *v230 = *(v231 + 8 * v234);
              v230 += 4;
              --v232;
            }

            while (v232);
          }
        }

        v201 = 8 * (v193 - v192);
        v203 = v189 >> 2;
        if (!v192)
        {
LABEL_234:
          if (v202)
          {
            *(a1 + 104) = v182 + v201 + 8;
            v239 = *(a2 + 824);
            v240 = *(a2 + 832);
            if (v239 != v240)
            {
              v241 = (v181 + v201);
              do
              {
                v242 = *v239++;
                *v241++ = *(v172 + 4 * v242);
              }

              while (v239 != v240);
            }

            v201 += 4 * v202;
          }

          if (v203)
          {
            v243 = v199 + 4 * v535;
            v244 = (v181 + (v243 & 0xFFFFFFFC));
            v245 = *(a2 + 1120);
            do
            {
              v246 = *v245++;
              *v244++ = *(a5 + 16880 + 8 * v246);
              LODWORD(v203) = v203 - 1;
            }

            while (v203);
            v201 = v243 + 8 * (v189 >> 2);
          }

          v179 = a2;
          if (v195 != -v194)
          {
            v528 = v184;
            v247 = (v181 + v201);
            v248 = 4 * *(a2 + 1024);
            memcpy(v247, (a5 + 4 * *(a2 + 1020)), v248);
            v575 = a5;
            v569 = a1 + 88;
            v249 = &unk_2A23F9B18;
            *&v571 = &unk_2A23F9B18;
            *(&v571 + 1) = &v569;
            v572 = &v575;
            *v573 = &v571;
            v250 = *(a2 + 1056);
            v251 = *(a2 + 1064);
            if (v250 == v251)
            {
              v258 = &v571;
              v184 = v528;
            }

            else
            {
              v539 = v170;
              v252 = 0;
              do
              {
                v570 = *v250;
                if (!*v573)
                {
                  goto LABEL_491;
                }

                v254 = (*(**v573 + 48))(*v573, &v570);
                v255 = *(v250 + 1);
                v256 = *(v250 + 2);
                if (v255 == v256)
                {
                  v253 = v252;
                }

                else
                {
                  do
                  {
                    v257 = *v255++;
                    v253 = (v252 + 1);
                    *&v247[4 * v252 + v248] = *(v254 + 4 * v257);
                    LODWORD(v252) = v252 + 1;
                  }

                  while (v255 != v256);
                }

                v250 += 8;
                v252 = v253;
              }

              while (v250 != v251);
              v258 = *v573;
              if (*v573 != &v571)
              {
                v170 = v539;
                v184 = v528;
                v186 = v544;
                if (*v573)
                {
                  (*(**v573 + 40))();
                }

                goto LABEL_258;
              }

              v249 = **v573;
              v170 = v539;
              v184 = v528;
              v186 = v544;
            }

            v249[4](v258);
LABEL_258:
            v179 = a2;
          }

LABEL_259:
          v259 = *(v179 + 2392);
          memcpy(v185, *v259, *(v259 + 8) - *v259);
          if (*(v259 + 272) == 1)
          {
            v260.i64[0] = v556;
            v260.i64[1] = v556 >> 5;
            *&v185[*(v259 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v185[*(v259 + 276)], vshlq_u8(vqtbl1q_s8(v260, xmmword_29D2F17A0), xmmword_29D2F17B0));
          }

          v261 = a6;
          if (a5)
          {
            v262 = *(v259 + 224);
            for (k = *(v259 + 232); v262 != k; v262 += 3)
            {
              v264.i64[0] = *(a5 + 8 * v262[1]) + *v262;
              v264.i64[1] = v264.i64[0] >> 5;
              *&v185[v262[2]] = vbslq_s8(xmmword_29D2F17C0, *&v185[v262[2]], vshlq_u8(vqtbl1q_s8(v264, xmmword_29D2F17A0), xmmword_29D2F17B0));
            }
          }

          v265 = *(v259 + 248);
          for (m = *(v259 + 256); v265 != m; v265 += 3)
          {
            v267.i64[0] = *(v172 + 8 * v265[1]) + *v265;
            v267.i64[1] = v267.i64[0] >> 5;
            *&v185[v265[2]] = vbslq_s8(xmmword_29D2F17C0, *&v185[v265[2]], vshlq_u8(vqtbl1q_s8(v267, xmmword_29D2F17A0), xmmword_29D2F17B0));
          }

          if (!*(v259 + 312))
          {
            *&v185[*(v259 + 316)] = v184;
          }

          v268 = &v185[v186];
          v269 = *v558;
          v557 = &v185[v186];
          if (*v558)
          {
            v271 = *v259;
            v270 = *(v259 + 8);
            v272 = *(a2 + 2800);
            LODWORD(v273) = *(v269 + 2);
            v274 = v273 + 1;
            if (*(v269 + 3) >= (v273 + 1))
            {
              v277 = *v269;
            }

            else
            {
              v275 = -__clz(v273);
              v276 = malloc_type_malloc(40 << (v275 & 0x1F), 0x10800400D7C94D2uLL);
              v277 = v276;
              v278 = 1 << v275;
              v273 = *(v269 + 2);
              if (v273)
              {
                memcpy(v276, *v269, 40 * v273);
                free(*v269);
                LODWORD(v273) = *(v269 + 2);
              }

              v261 = a6;
              v268 = v557;
              *(v269 + 3) = v278;
              *v269 = v277;
            }

            v279 = &v277[40 * v273];
            *v279 = 4;
            *(v279 + 1) = v268;
            *(v279 + 2) = v185;
            *(v279 + 3) = (v270 - v271);
            *(v279 + 8) = v272;
            *(v269 + 2) = v274;
          }

          v280 = a1 + 24064;
          v281 = *(a3 + 624);
          if (v281)
          {
            v282 = (v170[18] + 31) & 0xFFFFFFFFFFFFFFE0;
            v283 = v282 + v170[20];
            v170[18] = v282 + v281;
          }

          else
          {
            v283 = 0;
            v282 = 0;
          }

          v284 = a3;
          v285 = ((v170[26] + 63) & 0xFFFFFFFFFFFFFFC0);
          v286 = v170[28];
          v170[26] = &v285[*(*(a3 + 2392) + 8) - **(a3 + 2392)];
          v287 = *(a3 + 1128);
          v288 = *(a3 + 1120);
          v289 = v287 - v288;
          v415 = v287 == v288;
          v290 = *(a3 + 1016);
          v291 = v290 & 1;
          if (v415)
          {
            v291 = 0;
          }

          v545 = v283;
          if (!v281)
          {
            goto LABEL_360;
          }

          v543 = v286;
          v292 = *(a3 + 1320);
          v293 = *(a3 + 656);
          v529 = *(a3 + 736);
          v536 = *(a3 + 660);
          v294 = *(a3 + 1024);
          v295 = *(a3 + 1028);
          v296 = v293 + ((*(a3 + 872) - *(a3 + 864)) >> 2);
          v297 = *(a3 + 1352);
          v298 = *(a3 + 1353);
          if (*(a3 + 1352))
          {
            *(a1 + 24248) = vaddw_u32(vdupq_n_s64(v283), *(a3 + 628));
          }

          v531 = v298;
          if (v298)
          {
            *(a1 + 24280) = v283 + *(a3 + 648);
          }

          v299 = 8 * v296;
          v300 = v291 + v290;
          if (v295 + v294)
          {
            *(a1 + 24344) = v299 + v283 + 4 * (v300 + ((v289 >> 1) & 0xFFFFFFFE));
          }

          v534 = v300;
          if (v293 == v292)
          {
            v301 = 0;
            v302 = v536;
            v303 = v289 >> 2;
            if (!v292)
            {
              goto LABEL_335;
            }

            goto LABEL_331;
          }

          if (v261)
          {
            v304 = *(a3 + 712);
            v305 = *(a3 + 720);
            if (v304 != v305)
            {
              v306 = v282;
              do
              {
                v307 = *v304++;
                *v306++ = *(v280 + 8 * v307);
              }

              while (v304 != v305);
            }

LABEL_310:
            if (*(a3 + 1160))
            {
              v318 = *(a3 + 1144);
              if (v318 != (a3 + 1152))
              {
                do
                {
                  *(v282 + 4 * *(v318 + 7)) |= *(v318 + 8);
                  v327 = v318[1];
                  if (v327)
                  {
                    do
                    {
                      v328 = v327;
                      v327 = *v327;
                    }

                    while (v327);
                  }

                  else
                  {
                    do
                    {
                      v328 = v318[2];
                      v415 = *v328 == v318;
                      v318 = v328;
                    }

                    while (!v415);
                  }

                  v318 = v328;
                }

                while (v328 != (a3 + 1152));
              }
            }

            v319 = (v529 + 3) & 0xFFFFFFFC;
            if (v297)
            {
              v320 = *(a3 + 1312);
              if (v320 >= 4)
              {
                v321 = v320 >> 2;
                v322 = *(a3 + 752);
                v323 = (v282 + 8 * v319);
                do
                {
                  v324 = *v322;
                  v322 += 4;
                  v325 = (v261 + 496 + 8 * v324);
                  v326 = v325[1];
                  *v323 = *v325;
                  v323[1] = v326;
                  v323 += 2;
                  --v321;
                }

                while (v321);
              }

              v319 += v320;
            }

            else
            {
              v320 = 0;
            }

            v302 = v536;
            if (v531)
            {
              v329 = *(a3 + 1316);
              v330 = (v282 + 8 * v319);
              v331 = v261 + 16880;
              if (*(a3 + 2192) == 1)
              {
                if (v329)
                {
                  v516 = (*(a3 + 752) + 4 * v320);
                  do
                  {
                    v517 = *v516++;
                    *v330++ = *(v331 + 8 * v517);
                    --v329;
                  }

                  while (v329);
                }
              }

              else if (v329 >= 4)
              {
                v332 = v329 >> 2;
                v333 = (*(a3 + 752) + 4 * v320);
                do
                {
                  v334 = *v333;
                  v333 += 4;
                  *v330 = *(v331 + 8 * v334);
                  v330 += 4;
                  --v332;
                }

                while (v332);
              }
            }

            v301 = 8 * (v293 - v292);
            v303 = v289 >> 2;
            if (!v292)
            {
LABEL_335:
              v286 = v543;
              if (v302)
              {
                *(a1 + 24080) = v283 + v301 + 8;
                v339 = *(a3 + 824);
                v340 = *(a3 + 832);
                if (v339 != v340)
                {
                  v341 = (v282 + v301);
                  do
                  {
                    v342 = *v339++;
                    *v341++ = *(v280 + 4 * v342);
                  }

                  while (v339 != v340);
                }

                v301 += 4 * v302;
              }

              if (v303)
              {
                v343 = v299 + 4 * v534;
                v344 = (v282 + (v343 & 0xFFFFFFFC));
                v345 = *(a3 + 1120);
                do
                {
                  v346 = *v345++;
                  *v344++ = *(v261 + 16880 + 8 * v346);
                  LODWORD(v303) = v303 - 1;
                }

                while (v303);
                v301 = v343 + 8 * (v289 >> 2);
              }

              v284 = a3;
              if (v295 == -v294)
              {
                goto LABEL_360;
              }

              v347 = (v282 + v301);
              v348 = 4 * *(a3 + 1024);
              v349 = v261;
              memcpy(v347, (v261 + 4 * *(a3 + 1020)), v348);
              v575 = v349;
              v569 = a1 + 24064;
              v350 = &unk_2A23F9B60;
              *&v571 = &unk_2A23F9B60;
              *(&v571 + 1) = &v569;
              v572 = &v575;
              *v573 = &v571;
              v351 = *(a3 + 1056);
              v352 = *(a3 + 1064);
              if (v351 == v352)
              {
                v361 = &v571;
              }

              else
              {
                v353 = v170;
                v354 = 0;
                v355 = &v347[v348];
                do
                {
                  v570 = *v351;
                  if (!*v573)
                  {
                    goto LABEL_491;
                  }

                  v357 = (*(**v573 + 48))(*v573, &v570);
                  v358 = *(v351 + 1);
                  v359 = *(v351 + 2);
                  if (v358 == v359)
                  {
                    v356 = v354;
                  }

                  else
                  {
                    do
                    {
                      v360 = *v358++;
                      v356 = (v354 + 1);
                      *&v355[4 * v354] = *(v357 + 4 * v360);
                      LODWORD(v354) = v354 + 1;
                    }

                    while (v358 != v359);
                  }

                  v351 += 8;
                  v354 = v356;
                }

                while (v351 != v352);
                v361 = *v573;
                if (*v573 != &v571)
                {
                  v170 = v353;
                  v286 = v543;
                  if (*v573)
                  {
                    (*(**v573 + 40))();
                  }

                  goto LABEL_359;
                }

                v350 = **v573;
                v170 = v353;
                v286 = v543;
              }

              v350[4](v361);
LABEL_359:
              v284 = a3;
LABEL_360:
              v362 = *(v284 + 2392);
              memcpy(v285, *v362, *(v362 + 8) - *v362);
              if (*(v362 + 272) == 1)
              {
                v363.i64[0] = v545;
                v363.i64[1] = v545 >> 5;
                *&v285[*(v362 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v285[*(v362 + 276)], vshlq_u8(vqtbl1q_s8(v363, xmmword_29D2F17A0), xmmword_29D2F17B0));
              }

              if (a6)
              {
                v364 = *(v362 + 224);
                for (n = *(v362 + 232); v364 != n; v364 += 3)
                {
                  v366.i64[0] = *(a6 + 8 * v364[1]) + *v364;
                  v366.i64[1] = v366.i64[0] >> 5;
                  *&v285[v364[2]] = vbslq_s8(xmmword_29D2F17C0, *&v285[v364[2]], vshlq_u8(vqtbl1q_s8(v366, xmmword_29D2F17A0), xmmword_29D2F17B0));
                }
              }

              v367 = *(v362 + 248);
              for (ii = *(v362 + 256); v367 != ii; v367 += 3)
              {
                v369.i64[0] = *(v280 + 8 * v367[1]) + *v367;
                v369.i64[1] = v369.i64[0] >> 5;
                *&v285[v367[2]] = vbslq_s8(xmmword_29D2F17C0, *&v285[v367[2]], vshlq_u8(vqtbl1q_s8(v369, xmmword_29D2F17A0), xmmword_29D2F17B0));
              }

              v370 = &v285[v286];
              v371 = *v558;
              if (*v558)
              {
                v372 = *v362;
                v373 = *(v362 + 8);
                v374 = *(a3 + 2800);
                LODWORD(v375) = *(v371 + 2);
                v376 = v375 + 1;
                if (*(v371 + 3) >= (v375 + 1))
                {
                  v379 = *v371;
                }

                else
                {
                  v541 = v170;
                  v377 = -__clz(v375);
                  v378 = malloc_type_malloc(40 << (v377 & 0x1F), 0x10800400D7C94D2uLL);
                  v379 = v378;
                  v380 = 1 << v377;
                  v375 = *(v371 + 2);
                  if (v375)
                  {
                    memcpy(v378, *v371, 40 * v375);
                    free(*v371);
                    LODWORD(v375) = *(v371 + 2);
                  }

                  *(v371 + 3) = v380;
                  *v371 = v379;
                  v170 = v541;
                }

                v381 = &v379[40 * v375];
                *v381 = 6;
                *(v381 + 1) = v370;
                *(v381 + 2) = v285;
                *(v381 + 3) = (v373 - v372);
                *(v381 + 8) = v374;
                *(v371 + 2) = v376;
              }

              v382 = *(a2 + 3732);
              v383 = *(a2 + 3724);
              v384 = *(a3 + 3728);
              v385 = *(a3 + 3740);
              v386 = *(a3 + 3748);
              v169 = *(a3 + 3756);
              v387 = *(v549 + 908);
              if (v546)
              {
                v388 = 0;
              }

              else
              {
                v388 = 32;
              }

              v389 = *(a3 + 3732) & 0xFFFFFFDF | v388;
              v390 = *(a3 + 3736) & 0xFFF0000 | *(a2 + 3720) & 0xFFF;
              if (v387)
              {
                v382 = v382 & 0xFFFFFF80 | ((v387 + 1023) >> 10) & 0x7F;
              }

              LOBYTE(v159) = v547;
              v391 = *(a1 + 24732);
              v392 = v170[6];
              v392->i32[0] = 1073745196;
              v392->i32[1] = v384;
              v392[1].i32[0] = v389;
              v392[1].i32[1] = (v391 - 1) & 7;
              v392[2].i32[0] = v390;
              v392[2].i32[1] = (v557 >> 16) & 0xFFC00000 | v383 & 0x3FFFFF;
              v392[3].i32[0] = v557 >> 6;
              v392[3].i32[1] = (v370 >> 16) & 0xFFC00000 | v385 & 0x3FFFFF;
              v392[4].i32[0] = v370 >> 6;
              v392[4].i32[1] = v382;
              v392[5].i32[0] = v386;
              v392[5].i32[1] = (v550 >> 21) & 0x3FF800 | v550 & 0x7FF | (v551 << 22);
              v392[6] = v169;
              v170[6] = v392 + 7;
              goto LABEL_380;
            }

LABEL_331:
            if (v292 >= 4)
            {
              v335 = *(a3 + 2920);
              v336 = v292 >> 2;
              v337 = (v282 + v301);
              do
              {
                v338 = *v335;
                v335 += 4;
                *v337 = v338;
                v337 += 4;
                --v336;
              }

              while (v336);
            }

            v301 += 8 * v292;
            goto LABEL_335;
          }

          v520 = 8 * v296;
          v522 = v294;
          v524 = v295;
          v575 = a1 + 24064;
          v308 = &unk_2A23F9AD0;
          *&v571 = &unk_2A23F9AD0;
          *(&v571 + 1) = &v575;
          *v573 = &v571;
          v309 = *(a3 + 688);
          v310 = *(a3 + 696);
          v526 = v289;
          if (v309 == v310)
          {
            v317 = &v571;
            v283 = v545;
            LODWORD(v299) = 8 * v296;
          }

          else
          {
            v540 = v170;
            v311 = 0;
            do
            {
              LODWORD(v569) = *v309;
              if (!*v573)
              {
                goto LABEL_491;
              }

              v313 = (*(**v573 + 48))(*v573, &v569);
              v314 = *(v309 + 8);
              v315 = *(v309 + 16);
              if (v314 == v315)
              {
                v312 = v311;
              }

              else
              {
                do
                {
                  v316 = *v314++;
                  v312 = (v311 + 1);
                  *(v282 + 8 * v311) = *(v313 + 8 * v316);
                  LODWORD(v311) = v311 + 1;
                }

                while (v314 != v315);
              }

              v309 += 32;
              v311 = v312;
            }

            while (v309 != v310);
            v317 = *v573;
            if (*v573 != &v571)
            {
              v170 = v540;
              v283 = v545;
              LODWORD(v299) = v520;
              if (*v573)
              {
                (*(**v573 + 40))();
              }

              goto LABEL_309;
            }

            v308 = **v573;
            v170 = v540;
            v283 = v545;
            LODWORD(v299) = v520;
          }

          v308[4](v317);
LABEL_309:
          v261 = a6;
          v289 = v526;
          v294 = v522;
          v295 = v524;
          goto LABEL_310;
        }

LABEL_230:
        if (v192 >= 4)
        {
          v235 = *(a2 + 2920);
          v236 = v192 >> 2;
          v237 = (v181 + v201);
          do
          {
            v238 = *v235;
            v235 += 4;
            *v237 = v238;
            v237 += 4;
            --v236;
          }

          while (v236);
        }

        v201 += 8 * v192;
        goto LABEL_234;
      }

      v519 = 8 * v196;
      v521 = v194;
      v523 = v195;
      v525 = v189;
      v527 = v184;
      v575 = a1 + 88;
      v208 = &unk_2A23F9A88;
      *&v571 = &unk_2A23F9A88;
      *(&v571 + 1) = &v575;
      *v573 = &v571;
      v209 = *(a2 + 688);
      v210 = *(a2 + 696);
      if (v209 == v210)
      {
        v217 = &v571;
        v184 = v527;
        LODWORD(v199) = 8 * v196;
      }

      else
      {
        v538 = v170;
        v211 = 0;
        do
        {
          LODWORD(v569) = *v209;
          if (!*v573)
          {
LABEL_491:
            std::__throw_bad_function_call[abi:nn200100]();
          }

          v213 = (*(**v573 + 48))(*v573, &v569);
          v214 = *(v209 + 8);
          v215 = *(v209 + 16);
          if (v214 == v215)
          {
            v212 = v211;
          }

          else
          {
            do
            {
              v216 = *v214++;
              v212 = (v211 + 1);
              *(v181 + 8 * v211) = *(v213 + 8 * v216);
              LODWORD(v211) = v211 + 1;
            }

            while (v214 != v215);
          }

          v209 += 32;
          v211 = v212;
        }

        while (v209 != v210);
        v217 = *v573;
        if (*v573 != &v571)
        {
          v170 = v538;
          v184 = v527;
          LODWORD(v199) = v519;
          if (*v573)
          {
            (*(**v573 + 40))();
          }

          goto LABEL_208;
        }

        v208 = **v573;
        v170 = v538;
        v184 = v527;
        LODWORD(v199) = v519;
      }

      v208[4](v217);
LABEL_208:
      v182 = v556;
      v189 = v525;
      v194 = v521;
      v195 = v523;
      goto LABEL_209;
    }
  }

LABEL_380:
  if ((v159 & 0x20) != 0)
  {
    v393 = v170[6];
    *v393 = *(a3 + 3912);
    v170[6] = v393 + 1;
  }

  v394 = v567;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitFragmentProgramVariantAndArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>(*(a1 + 16), *(a1 + 24), a4, *(*(a1 + 8) + 30352), a7, (*(a1 + 8) + 54160), v567, *(*(a1 + 8) + 30072), v169, *(*(a1 + 8) + 30076));
  if ((v394 & 4) != 0)
  {
    v401 = *(a1 + 8);
    v402 = *(a3 + 3880);
    v403 = *(a3 + 3888);
    v404 = HIDWORD(v402);
    LODWORD(v402) = *(v401 + 28688) & 0xF0E3FF00 | v402 & 0xF1C00FF;
    *(v401 + 28696) = *(v401 + 28696) & 0xFFFFFFF8 | (*(v401 + 30080) - 1) & 7;
    *(v401 + 28700) = v404;
    *(v401 + 28688) = v402;
    *(v401 + 28692) = v403;
    *(v401 + 78480) |= 4uLL;
    v405 = *(a1 + 24);
    LODWORD(v402) = *(*(a1 + 8) + 28700);
    v406 = *(*(a1 + 8) + 28684);
    v407 = v405[126];
    v408 = v405[128] + v407;
    v405[126] = v407 + 20;
    *v407 = v406;
    *(v407 + 16) = v402;
    v409 = v405[6];
    *v409 = __ROR8__(v408, 32) & 0xFFFFFFFC000000FFLL | 0x500;
    v405[6] = v409 + 1;
    if ((v394 & 0x100000000000) == 0)
    {
LABEL_384:
      if ((v394 & 0x1000000000000) == 0)
      {
        goto LABEL_385;
      }

      goto LABEL_419;
    }
  }

  else if ((v394 & 0x100000000000) == 0)
  {
    goto LABEL_384;
  }

  if (a16)
  {
    v410 = atomic_load((*(*(*(a1 + 8) + 1872) + 848) + 17017));
    if ((v410 & 1) == 0)
    {
      goto LABEL_398;
    }
  }

  else if (!a4 || *(a4 + 1354) != 1)
  {
    goto LABEL_398;
  }

  v411 = *(a1 + 8);
  if ((*(v411 + 28647) & 7) == 0)
  {
    *(*(v411 + 30328) + 1168) |= 0x10000uLL;
  }

LABEL_398:
  v412 = *(a1 + 8);
  v413 = (v412 + 28644);
  v414 = vand_s8(*(v412 + 28644), vdup_n_s32(0xFFFC00FF));
  v415 = *(v412 + 30040) == 2;
  v416 = 351;
  if (v415)
  {
    v416 = 352;
  }

  v417 = 256.0;
  if (v415)
  {
    v417 = 1023.5;
  }

  v418 = *&v413->i32[v416] * 16.0;
  if (v418 <= v417)
  {
    v417 = *&v413->i32[v416] * 16.0;
  }

  v419 = v417;
  if (v418 < 0.0)
  {
    v419 = 0;
  }

  if (v419)
  {
    v420 = ((v419 << 8) + 261888) & 0x3FF00;
  }

  else
  {
    v420 = 0;
  }

  *v413 = vorr_s8(v414, vdup_n_s32(v420));
  v421 = *(a1 + 24);
  v422 = *(a1 + 8);
  v423 = *(v422 + 28636);
  v424 = *(v422 + 28640);
  v571 = *(v422 + 28644);
  LODWORD(v572) = *(v422 + 28660);
  v425 = *(v422 + 28664);
  v426 = *(v422 + 28668);
  v575 = *(v422 + 28672);
  v576 = *(v422 + 28680);
  v427 = *(v422 + 30066);
  if (a16)
  {
    v428 = 0x10000000;
  }

  else
  {
    v428 = 0;
  }

  v429 = v424 & 0xEBFFFFFF | v428;
  if (v427 & 1 | ((v424 & 0x4000000) != 0))
  {
    v430 = 0x4000000;
  }

  else
  {
    v430 = 0;
  }

  v431 = v430 | v429;
  v432 = v421[126];
  v433 = v421[128] + v432;
  v421[126] = v432 + 28;
  *v432 = v423;
  *(v432 + 4) = v431;
  *(v432 + 24) = v572;
  *(v432 + 8) = v571;
  v434 = v421[6];
  *v434 = __ROR8__(v433, 32) & 0xFFFFFFFC000000FFLL | 0x700;
  v421[6] = v434 + 1;
  if ((v427 | ((v426 & 0x4000000u) >> 26)))
  {
    v435 = 0x4000000;
  }

  else
  {
    v435 = 0;
  }

  v436 = v421[126];
  v437 = v421[128] + v436;
  v421[126] = v436 + 20;
  *v436 = v425;
  *(v436 + 4) = v435 | v426 & 0xFBFFFFFF;
  *(v436 + 8) = v575;
  *(v436 + 16) = v576;
  v438 = v421[6];
  *v438 = __ROR8__(v437, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v421[6] = v438 + 1;
  v394 = v567;
  if ((v567 & 0x1000000000000) == 0)
  {
LABEL_385:
    if ((v394 & 0x2000000000000) == 0)
    {
      goto LABEL_386;
    }

    goto LABEL_431;
  }

LABEL_419:
  v439 = 0;
  v440 = *(a1 + 24);
  v441 = *(a1 + 8);
  v442 = ((*(v441 + 28068) >> 11) & 0x78) + 10;
  v443 = v440[126];
  v444 = v440[128];
  v440[126] = v443 + 4 * v442;
  v445 = *(v441 + 28068);
  v446 = (v445 >> 14) & 0xF;
  *v443 = v445;
  v447 = (v443 + 4);
  v448 = v446 + 1;
  if (v446 < 3 || (v443 - (v441 + 28068)) <= 0x1F)
  {
    goto LABEL_426;
  }

  v439 = v448 & 0x1C;
  v449 = *(v441 + 28088);
  v447 += v439;
  *(v443 + 4) = *(v441 + 28072);
  *(v443 + 20) = v449;
  if (v439 != 4)
  {
    v450 = *(v441 + 28120);
    *(v443 + 36) = *(v441 + 28104);
    *(v443 + 52) = v450;
    if (v439 != 8)
    {
      v451 = *(v441 + 28152);
      *(v443 + 68) = *(v441 + 28136);
      *(v443 + 84) = v451;
      if (v439 != 12)
      {
        v452 = *(v441 + 28184);
        *(v443 + 100) = *(v441 + 28168);
        *(v443 + 116) = v452;
      }
    }
  }

  if (v439 != v448)
  {
LABEL_426:
    v453 = ((v445 >> 14) & 0xF) - v439 + 1;
    v454 = (v441 + 8 * v439 + 28072);
    do
    {
      v455 = *v454++;
      *v447++ = v455;
      --v453;
    }

    while (v453);
  }

  v456 = v444 + v443;
  v457 = v447 + 4;
  *v447 = *(v441 + 28200);
  v458 = (v441 + 28204);
  do
  {
    v459 = *v458;
    *(v457 + 2) = *(v458 + 2);
    *v457 = v459;
    v457 += 24;
    v458 = (v458 + 24);
    --v448;
  }

  while (v448);
  v460 = v440[6];
  *v460 = BYTE4(v456) | (v442 << 8) | ((v456 >> 2) << 34);
  v440[6] = v460 + 1;
  if ((v394 & 0x2000000000000) == 0)
  {
LABEL_386:
    if ((v394 & 0x4000000000000) == 0)
    {
      goto LABEL_387;
    }

    goto LABEL_435;
  }

LABEL_431:
  v461 = *(a1 + 24);
  v462 = *(a1 + 8);
  v463 = *(v462 + 28628);
  v464 = *(v462 + 30352);
  if (v464)
  {
    v465 = *(v464 + 820);
    v466 = *(v464 + 828);
  }

  else
  {
    v465 = 8650754;
    v466 = 128;
  }

  v467 = v461[126];
  v468 = v461[128] + v467;
  v461[126] = v467 + 12;
  *v467 = v465;
  *(v467 + 8) = v466;
  v469 = v461[6];
  *v469 = __ROR8__(v468, 32) & 0xFFFFFFFC000000FFLL | 0x300;
  v461[6] = v469 + 1;
  v470 = v461[126];
  v471 = v470 + v461[128];
  v461[126] = v470 + 1;
  *v470 = v463;
  v472 = v461[6];
  *v472 = __ROR8__(v471, 32) & 0xFFFFFFFC000000FFLL | 0x200;
  v461[6] = v472 + 1;
  if ((v394 & 0x4000000000000) == 0)
  {
LABEL_387:
    if ((v394 & 0x8000000000000) == 0)
    {
      return;
    }

    goto LABEL_388;
  }

LABEL_435:
  v473 = *(a1 + 24);
  v474 = *(*(a1 + 8) + 28604);
  v475 = *(*(a1 + 8) + 28588);
  v476 = v473[42];
  v477 = v473[44] + v476;
  v473[42] = v476 + 20;
  *v476 = v475;
  *(v476 + 16) = v474;
  v478 = v473[6];
  *v478 = __ROR8__(v477, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v473[6] = v478 + 1;
  if ((v394 & 0x8000000000000) != 0)
  {
LABEL_388:
    v395 = *(a1 + 24);
    v396 = *(a1 + 8);
    v397 = *(v396 + 28616);
    LODWORD(v396) = *(v396 + 28624);
    v398 = v395[126];
    v399 = v395[128] + v398;
    v395[126] = v398 + 12;
    *v398 = v397;
    *(v398 + 8) = v396;
    v400 = v395[6];
    *v400 = __ROR8__(v399, 32) & 0xFFFFFFFC000000FFLL | 0x300;
    v395[6] = v400 + 1;
  }
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitDepthRanges(uint64_t result, uint64_t a2)
{
  v2 = (result + 73040);
  if ((a2 & 0x80000000000000) == 0 && *(*v2 + 80))
  {
    return result;
  }

  v3 = *(result + 200);
  v4 = v3 + 132;
  if ((v3 + 132) > *(result + 192))
  {
    v80 = result;
    v79 = AGX::DataBufferAllocator<44ul>::growNoInline(result + 24, 4, 0);
    result = v80;
    v3 = *(v80 + 200);
    if (!v79)
    {
      goto LABEL_5;
    }

    v4 = v3 + 132;
    if ((v3 + 132) > *(v80 + 192))
    {
      abort();
    }
  }

  *(result + 208) = v4;
LABEL_5:
  v5 = *(result + 216) + v3;
  *(result + 200) = v3 + 132;
  *v3 = *(result + 29508);
  if (*(result + 30056))
  {
    v6 = 29796;
    v7 = 29540;
    if (!*(result + 29516))
    {
      v7 = 29796;
    }

    v8 = (result + v7);
    v9 = *v8;
    v10 = v8[1];
    if (*(result + 29516))
    {
      v11 = 29548;
    }

    else
    {
      v11 = 29796;
    }

    if (*(result + 29516))
    {
      v12 = 29556;
    }

    else
    {
      v12 = 29796;
    }

    if (*(result + 29516))
    {
      v13 = 29564;
    }

    else
    {
      v13 = 29796;
    }

    if (*(result + 29516))
    {
      v14 = 29572;
    }

    else
    {
      v14 = 29796;
    }

    if (*(result + 29516))
    {
      v15 = 29580;
    }

    else
    {
      v15 = 29796;
    }

    if (*(result + 29516))
    {
      v16 = 29588;
    }

    else
    {
      v16 = 29796;
    }

    if (*(result + 29516))
    {
      v17 = 29596;
    }

    else
    {
      v17 = 29796;
    }

    v18 = 29604;
    if (!*(result + 29516))
    {
      v18 = 29796;
    }

    if (v9 >= v10)
    {
      v19 = v9;
    }

    else
    {
      v19 = v10;
    }

    if (v9 >= v10)
    {
      v9 = v10;
    }

    *(v3 + 4) = v9;
    *(v3 + 8) = v19;
    v20 = (result + v11);
    v21 = *v20;
    v22 = v20[1];
    if (*v20 >= v22)
    {
      v23 = *v20;
    }

    else
    {
      v23 = v20[1];
    }

    if (*v20 >= v22)
    {
      v21 = v20[1];
    }

    *(v3 + 12) = v21;
    *(v3 + 16) = v23;
    v24 = *(result + v12);
    v25 = *(result + v12 + 4);
    if (v24 >= v25)
    {
      v26 = *(result + v12);
    }

    else
    {
      v26 = *(result + v12 + 4);
    }

    if (v24 >= v25)
    {
      v24 = *(result + v12 + 4);
    }

    *(v3 + 20) = v24;
    *(v3 + 24) = v26;
    v27 = *(result + v13);
    v28 = *(result + v13 + 4);
    if (v27 >= v28)
    {
      v29 = *(result + v13);
    }

    else
    {
      v29 = *(result + v13 + 4);
    }

    if (v27 >= v28)
    {
      v27 = *(result + v13 + 4);
    }

    *(v3 + 28) = v27;
    *(v3 + 32) = v29;
    v30 = *(result + v14);
    v31 = *(result + v14 + 4);
    if (v30 >= v31)
    {
      v32 = *(result + v14);
    }

    else
    {
      v32 = *(result + v14 + 4);
    }

    if (v30 >= v31)
    {
      v30 = *(result + v14 + 4);
    }

    *(v3 + 36) = v30;
    *(v3 + 40) = v32;
    v33 = *(result + v15);
    v34 = *(result + v15 + 4);
    if (v33 >= v34)
    {
      v35 = *(result + v15);
    }

    else
    {
      v35 = *(result + v15 + 4);
    }

    if (v33 >= v34)
    {
      v33 = *(result + v15 + 4);
    }

    *(v3 + 44) = v33;
    *(v3 + 48) = v35;
    v36 = *(result + v16);
    v37 = *(result + v16 + 4);
    if (v36 >= v37)
    {
      v38 = *(result + v16);
    }

    else
    {
      v38 = *(result + v16 + 4);
    }

    if (v36 >= v37)
    {
      v36 = *(result + v16 + 4);
    }

    *(v3 + 52) = v36;
    *(v3 + 56) = v38;
    v39 = *(result + v17);
    v40 = *(result + v17 + 4);
    if (v39 >= v40)
    {
      v41 = *(result + v17);
    }

    else
    {
      v41 = *(result + v17 + 4);
    }

    if (v39 >= v40)
    {
      v39 = *(result + v17 + 4);
    }

    *(v3 + 60) = v39;
    *(v3 + 64) = v41;
    v42 = (result + v18);
    v43 = *v42;
    v44 = v42[1];
    if (*v42 >= v44)
    {
      v45 = *v42;
    }

    else
    {
      v45 = v42[1];
    }

    if (*v42 >= v44)
    {
      v43 = v42[1];
    }

    *(v3 + 68) = v43;
    *(v3 + 72) = v45;
    v46 = 29612;
    if (!*(result + 29516))
    {
      v46 = 29796;
    }

    v47 = (result + v46);
    v48 = *v47;
    v49 = v47[1];
    v50 = 29620;
    if (!*(result + 29516))
    {
      v50 = 29796;
    }

    v51 = 29628;
    if (!*(result + 29516))
    {
      v51 = 29796;
    }

    v52 = 29636;
    if (!*(result + 29516))
    {
      v52 = 29796;
    }

    v53 = 29644;
    if (!*(result + 29516))
    {
      v53 = 29796;
    }

    v54 = 29652;
    if (*(result + 29516))
    {
      v6 = 29660;
    }

    else
    {
      v54 = 29796;
    }

    if (v48 >= v49)
    {
      v55 = v48;
    }

    else
    {
      v55 = v49;
    }

    if (v48 >= v49)
    {
      v48 = v49;
    }

    *(v3 + 76) = v48;
    *(v3 + 80) = v55;
    v56 = (result + v50);
    v57 = *v56;
    v58 = v56[1];
    if (*v56 >= v58)
    {
      v59 = *v56;
    }

    else
    {
      v59 = v56[1];
    }

    if (*v56 >= v58)
    {
      v57 = v56[1];
    }

    *(v3 + 84) = v57;
    *(v3 + 88) = v59;
    v60 = *(result + v51);
    v61 = *(result + v51 + 4);
    if (v60 >= v61)
    {
      v62 = *(result + v51);
    }

    else
    {
      v62 = *(result + v51 + 4);
    }

    if (v60 >= v61)
    {
      v60 = *(result + v51 + 4);
    }

    *(v3 + 92) = v60;
    *(v3 + 96) = v62;
    v63 = *(result + v52);
    v64 = *(result + v52 + 4);
    if (v63 >= v64)
    {
      v65 = *(result + v52);
    }

    else
    {
      v65 = *(result + v52 + 4);
    }

    if (v63 >= v64)
    {
      v63 = *(result + v52 + 4);
    }

    *(v3 + 100) = v63;
    *(v3 + 104) = v65;
    v66 = *(result + v53);
    v67 = *(result + v53 + 4);
    if (v66 >= v67)
    {
      v68 = *(result + v53);
    }

    else
    {
      v68 = *(result + v53 + 4);
    }

    if (v66 >= v67)
    {
      v66 = *(result + v53 + 4);
    }

    *(v3 + 108) = v66;
    *(v3 + 112) = v68;
    v69 = *(result + v54);
    v70 = *(result + v54 + 4);
    if (v69 >= v70)
    {
      v71 = *(result + v54);
    }

    else
    {
      v71 = *(result + v54 + 4);
    }

    if (v69 >= v70)
    {
      v69 = *(result + v54 + 4);
    }

    *(v3 + 116) = v69;
    *(v3 + 120) = v71;
    v72 = (result + v6);
    v73 = *v72;
    v74 = v72[1];
    if (*v72 >= v74)
    {
      v75 = *v72;
    }

    else
    {
      v75 = v72[1];
    }

    if (*v72 >= v74)
    {
      v73 = v72[1];
    }

    *(v3 + 124) = v73;
    *(v3 + 128) = v75;
  }

  else
  {
    *&v76 = -1;
    *(&v76 + 1) = -1;
    *(v3 + 100) = v76;
    *(v3 + 116) = v76;
    *(v3 + 68) = v76;
    *(v3 + 84) = v76;
    *(v3 + 36) = v76;
    *(v3 + 52) = v76;
    *(v3 + 4) = v76;
    *(v3 + 20) = v76;
  }

  v77 = *(*(result + 48) + 288) + *MEMORY[0x29EDC5638];
  v78 = *v2;
  *(v78 + 80) = v5;
  *(v78 + 392) = 0;
  v2[36] = v77;
  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindObjectBufferResource(uint64_t result, unsigned int a2, int a3, int a4)
{
  if (a2 - 59 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_29D2F74F0[a2 - 59];
  }

  v5 = a2 - 47;
  if (!(v4 | vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(a2), xmmword_29D2F24B0))) & 1 | (a2 == 62) | (a2 - 47 < 2)) || *(result + 8 * a2 + 19008))
  {
    if (a3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    if (v5 > 0x16 || ((1 << v5) & 0x6C77B3) == 0)
    {
      v7 = *(result + 19008 + 8 * a2);
      if (v7)
      {
        v8 = result;
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(result + 8) + 2008), v7, 6u, a2, v6);
        result = IOGPUResourceListAddResource();
        if (a2 > 0x22)
        {
          return result;
        }

        v11 = *(v8 + 22640 + 8 * a2);
        if (!v11)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(*(v8 + 8) + 2008), v11, v6, v10);
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(result + 8) + 2008), 0, 6u, a2, v6);
      }
    }

    return IOGPUResourceListAddResource();
  }

  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindMeshBufferResource(uint64_t result, unsigned int a2, int a3, int a4)
{
  if (a2 - 59 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_29D2F74F0[a2 - 59];
  }

  v5 = a2 - 47;
  if (!(v4 | vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(a2), xmmword_29D2F24B0))) & 1 | (a2 == 62) | (a2 - 47 < 2)) || *(result + 8 * a2 + 42712))
  {
    if (a3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    if (v5 > 0x16 || ((1 << v5) & 0x6C77B3) == 0)
    {
      v7 = *(result + 42712 + 8 * a2);
      if (v7)
      {
        v8 = result;
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(result + 8) + 2008), v7, 7u, a2, v6);
        result = IOGPUResourceListAddResource();
        if (a2 > 0x22)
        {
          return result;
        }

        v11 = *(v8 + 46344 + 8 * a2);
        if (!v11)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(*(v8 + 8) + 2008), v11, v6, v10);
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(result + 8) + 2008), 0, 7u, a2, v6);
      }
    }

    return IOGPUResourceListAddResource();
  }

  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindObjectTextureResources(uint64_t a1, unsigned int a2, int a3)
{
  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = 3 * a2;
  v6 = a1 + 19568;
  AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(a1 + 8) + 2008), *(a1 + 19568 + 24 * a2), 8u, a2, v4);
  if (*(a1 + 19568 + 8 * v5))
  {
    IOGPUResourceListAddResource();
    if (*(v6 + 8 * (v5 + 1)))
    {
      IOGPUResourceListAddResource();
    }

    if (*(v6 + 8 * (v5 + 2)))
    {

      IOGPUResourceListAddResource();
    }
  }
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindMeshTextureResources(uint64_t a1, unsigned int a2, int a3)
{
  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = 3 * a2;
  v6 = a1 + 43272;
  AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(a1 + 8) + 2008), *(a1 + 43272 + 24 * a2), 9u, a2, v4);
  if (*(a1 + 43272 + 8 * v5))
  {
    IOGPUResourceListAddResource();
    if (*(v6 + 8 * (v5 + 1)))
    {
      IOGPUResourceListAddResource();
    }

    if (*(v6 + 8 * (v5 + 2)))
    {

      IOGPUResourceListAddResource();
    }
  }
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindFragmentBufferResource(uint64_t result, unsigned int a2, int a3, int a4)
{
  if (a2 - 59 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_29D2F74F0[a2 - 59];
  }

  v5 = a2 - 47;
  if (!(v4 | vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(a2), xmmword_29D2F24B0))) & 1 | (a2 == 62) | (a2 - 47 < 2)) || *(result + 8 * a2 + 73048))
  {
    if (a3)
    {
      v6 = 12;
    }

    else
    {
      v6 = 4;
    }

    if (v5 > 0x16 || ((1 << v5) & 0x6C77B3) == 0)
    {
      v7 = *(result + 73048 + 8 * a2);
      if (v7)
      {
        v8 = result;
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(result + 2008), v7, 1u, a2, v6);
        result = IOGPUResourceListAddResource();
        if (a2 > 0x22)
        {
          return result;
        }

        v11 = *(v8 + 77800 + 8 * a2);
        if (!v11)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(v8 + 2008), v11, v6, v10);
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(result + 2008), 0, 1u, a2, v6);
      }
    }

    return IOGPUResourceListAddResource();
  }

  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::reserveDispatchMeshDatabufferSpace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  v6 = v5[6];
  if (v6 + 180 > v5[5])
  {
    v35 = a1;
    v36 = a2;
    v37 = a3;
    v38 = a5;
    v39 = a4;
    v40 = AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 24), 0, 0);
    a3 = v37;
    a4 = v39;
    a2 = v36;
    a5 = v38;
    v41 = v40;
    a1 = v35;
    if (v41)
    {
      v42 = v5[6] + 180;
      if (v42 > v5[5])
      {
        goto LABEL_78;
      }

      v5[7] = v42;
      *v6 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v5, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      a1 = v35;
      a5 = v38;
      a2 = v36;
      a4 = v39;
      a3 = v37;
    }
  }

  else
  {
    v5[7] = v6 + 180;
  }

  v7 = *(a1 + 24);
  if (a3)
  {
    v8 = *(a3 + 624) + 31;
  }

  else
  {
    v8 = 31;
  }

  v9 = *(v7 + 144) + v8;
  if (v9 <= *(v7 + 136))
  {
LABEL_7:
    *(v7 + 152) = v9;
    goto LABEL_8;
  }

  v43 = a1;
  v44 = a2;
  v45 = a3;
  v46 = a5;
  v47 = a4;
  v48 = AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 24), 3, 0);
  a3 = v45;
  a4 = v47;
  a2 = v44;
  a5 = v46;
  v49 = v48;
  a1 = v43;
  if (v49)
  {
    v9 = *(v7 + 144) + v8;
    if (v9 > *(v7 + 136))
    {
      goto LABEL_78;
    }

    goto LABEL_7;
  }

LABEL_8:
  if (a4)
  {
    v10 = *(a4 + 624) + 31;
  }

  else
  {
    v10 = 31;
  }

  v11 = *(v7 + 152);
  v12 = v11 + v10;
  if ((v11 + v10) <= *(v7 + 136))
  {
LABEL_12:
    *(v7 + 152) = v12;
    goto LABEL_13;
  }

  v50 = *(v7 + 144);
  v51 = a1;
  v52 = a2;
  v53 = a3;
  v54 = a5;
  v55 = a4;
  v56 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, 3, 0);
  a3 = v53;
  a4 = v55;
  a2 = v52;
  a5 = v54;
  v57 = v56;
  a1 = v51;
  if (v57)
  {
    v12 = *(v7 + 144) + v10 + v11 - v50;
    if (v12 > *(v7 + 136))
    {
      goto LABEL_78;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = *(v7 + 1008) + 636;
  if (v13 <= *(v7 + 1000))
  {
LABEL_14:
    *(v7 + 1016) = v13;
    goto LABEL_15;
  }

  v58 = a1;
  v59 = a2;
  v60 = a3;
  v61 = a5;
  v62 = a4;
  v63 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, 30, 0);
  a3 = v60;
  a4 = v62;
  a2 = v59;
  a5 = v61;
  v64 = v63;
  a1 = v58;
  if (v64)
  {
    v13 = *(v7 + 1008) + 636;
    if (v13 > *(v7 + 1000))
    {
      goto LABEL_78;
    }

    goto LABEL_14;
  }

LABEL_15:
  if ((a2 & 0xFE3F80030) == 0)
  {
    goto LABEL_20;
  }

  v14 = (*(*(a3 + 2392) + 8) - **(a3 + 2392)) + 63;
  v15 = *(v7 + 200);
  v16 = *(v7 + 208);
  v17 = v16 + v14;
  if (v16 + v14 <= v15)
  {
    goto LABEL_17;
  }

  v67 = a4;
  v68 = a2;
  v69 = a5;
  v70 = a1;
  v71 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, 5, 0);
  v15 = *(v7 + 200);
  v16 = *(v7 + 208);
  if (v71)
  {
    v17 = v16 + v14;
    a1 = v70;
    a5 = v69;
    a2 = v68;
    a4 = v67;
    if (v16 + v14 > v15)
    {
      goto LABEL_78;
    }

LABEL_17:
    *(v7 + 216) = v17;
    goto LABEL_18;
  }

  v17 = *(v7 + 216);
  a1 = v70;
  a5 = v69;
  a2 = v68;
  a4 = v67;
LABEL_18:
  v18 = (*(*(a4 + 2392) + 8) - **(a4 + 2392)) + 63;
  v19 = v17 + v18;
  if (v17 + v18 <= v15)
  {
LABEL_19:
    *(v7 + 216) = v19;
    goto LABEL_20;
  }

  v72 = a1;
  v73 = a2;
  v74 = a5;
  v75 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, 5, 0);
  a2 = v73;
  a5 = v74;
  v76 = v75;
  a1 = v72;
  if (v76)
  {
    v19 = *(v7 + 208) + v18 + v17 - v16;
    if (v19 > *(v7 + 200))
    {
      goto LABEL_78;
    }

    goto LABEL_19;
  }

LABEL_20:
  if ((a2 & 0xF8000000002) == 0)
  {
    goto LABEL_30;
  }

  v20 = (*(*(a5 + 2392) + 8) - **(a5 + 2392)) + 63;
  v21 = *(v7 + 240) + v20;
  if (v21 <= *(v7 + 232))
  {
    goto LABEL_22;
  }

  v77 = a1;
  v78 = a5;
  v79 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, 6, 0);
  a5 = v78;
  v80 = v79;
  a1 = v77;
  if (v80)
  {
    v21 = *(v7 + 240) + v20;
    if (v21 > *(v7 + 232))
    {
      goto LABEL_78;
    }

LABEL_22:
    *(v7 + 248) = v21;
  }

  v22 = *(a5 + 624);
  if (*(v7 + 1840))
  {
    v23 = 4;
  }

  else
  {
    v23 = 11;
  }

  v24 = (v7 + 40 + 32 * v23);
  if (((1 << v23) & 0x480) != 0 && !v24[1])
  {
    v87 = a1;
    v88 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, v23, 0);
    a1 = v87;
    if ((v88 & 1) == 0)
    {
LABEL_78:
      abort();
    }
  }

  v25 = v22 + 31;
  v26 = v24[1] + v25;
  if (v26 <= *v24)
  {
    goto LABEL_29;
  }

  v81 = a1;
  v82 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, v23, 0);
  a1 = v81;
  if (v82)
  {
    v26 = v24[1] + v25;
    if (v26 > *v24)
    {
      goto LABEL_78;
    }

LABEL_29:
    v24[2] = v26;
  }

LABEL_30:
  v27 = *(a1 + 24);
  v28 = v27[42] + 20;
  if (v28 <= v27[41])
  {
LABEL_31:
    v27[43] = v28;
    goto LABEL_32;
  }

  v65 = a1;
  v66 = AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 24), 9, 0);
  a1 = v65;
  if (v66)
  {
    v28 = v27[42] + 20;
    if (v28 > v27[41])
    {
      goto LABEL_78;
    }

    goto LABEL_31;
  }

LABEL_32:
  v29 = *(a1 + 8);
  if ((*(*(*(v29 + 1872) + 848) + 6242) & 1) == 0)
  {
    v30 = 16 * *(v29 + 29508);
    v31 = *(v29 + 328) + v30;
    if (v31 > *(v29 + 320))
    {
      v83 = a1;
      v84 = AGX::DataBufferAllocator<44ul>::growNoInline(v29 + 24, 8, 1);
      a1 = v83;
      if (v84)
      {
        v85 = *(v29 + 328) + v30;
        if (v85 > *(v29 + 320))
        {
          goto LABEL_78;
        }

        *(v29 + 336) = v85;
        *(*(v29 + 30328) + 944) = *(*(v29 + 48) + 512) + *(*(v29 + 48) + 536) - *(*(v29 + 48) + 520);
      }
    }

    else
    {
      *(v29 + 336) = v31;
    }
  }

  v32 = *(a1 + 8);
  if ((*(*(v32[234] + 848) + 6241) & 1) == 0)
  {
    v33 = v32[37];
    if (!v33)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v32 + 3, 7, 0))
      {
        goto LABEL_78;
      }

      v33 = v32[37];
    }

    v34 = v33 + 12;
    if (v34 > v32[36])
    {
      if (AGX::DataBufferAllocator<44ul>::growNoInline(v32 + 3, 7, 1))
      {
        v86 = v32[37];
        if ((v86 + 12) > v32[36])
        {
          goto LABEL_78;
        }

        v32[38] = v86 + 12;
        if (!v86)
        {
          AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow((v32 + 3), 7u);
        }

        *(v32[3791] + 952) = *(v32[6] + 448) + *(v32[6] + 472) - *(v32[6] + 456);
      }
    }

    else
    {
      v32[38] = v34;
    }
  }
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::handleDeviceScissorBufferReserve(uint64_t result, unint64_t *a2, _DWORD *a3, uint64_t *a4, _BYTE *a5, _BYTE *a6, uint64_t *a7)
{
  *a3 = -1;
  *a4 = 4123088130;
  *a5 = 0;
  if (*(*(*(result + 1872) + 848) + 6242) == 1)
  {
    v7 = *a2;
    if ((*a2 & 0x200000000000) != 0)
    {
      v8 = result + 28672;
      v9 = *(result + 29536);
      v10 = result;
      result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::updateClipRegions(result + 28712, a2);
      *a5 = result;
      if ((*(v8 + 834) & 1) == 0)
      {
        if (result | (v7 >> 54) & 1 & (v9 ^ 1u))
        {
          result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::canUseScissorConfigReg(v10 + 28712);
          if ((result & 1) == 0)
          {
            result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::anyPartialScreenClip(v10 + 28712);
            if (result)
            {
              v19 = 0;
              v18 = 0;
              result = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateScissorIndex(*(*(v10 + 1872) + 848), v10 + 28712, 0, *(*(v10 + 30328) + 944), &v19, &v18 + 1, &v18);
              if (v18)
              {
                if ((v18 & 0x100) != 0)
                {
                  v12 = a4;
                  *a3 = result;
                  v13 = v19;
                }

                else
                {
                  v12 = a7;
                  *a6 = 1;
                  v13 = *a7 | 2;
                }

                *v12 = v13;
              }

              else
              {
                *a6 = 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::restartRenderPass(uint64_t a1, unint64_t *a2, char a3, int a4)
{
  v7 = *(*(a1 + 1912) + 520) == 0;
  v8 = *(a1 + 1872);
  v9 = *(v8 + 848);
  if (*(v9 + 6242) == 1)
  {
    os_unfair_lock_lock((v9 + 16824));
    LODWORD(v10) = *(v9 + 16864);
    os_unfair_lock_unlock((v9 + 16824));
    v8 = *(a1 + 1872);
  }

  else
  {
    v10 = (*(a1 + 328) - *(*(a1 + 48) + 536)) >> 4;
  }

  if (v10 <= 0xFFFE)
  {
    v12 = *(v8 + 848);
    if (*(v12 + 6242) == 1)
    {
      os_unfair_lock_lock((v12 + 16824));
      v13 = *(v12 + 16864);
      os_unfair_lock_unlock((v12 + 16824));
      v14 = v13 > 0xFFFE;
      v8 = *(a1 + 1872);
    }

    else
    {
      v14 = *(a1 + 320) - *(a1 + 328) < 0x10uLL;
    }

    if (v14)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 2;
  }

  v15 = *(v8 + 848);
  if (*(v15 + 6241) == 1)
  {
    os_unfair_lock_lock((v15 + 16784));
    v16 = *(v15 + 16808);
    os_unfair_lock_unlock((v15 + 16784));
  }

  else
  {
    v17 = *(a1 + 296);
    if (!v17)
    {
      AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, 7u);
      v17 = *(a1 + 296);
      if (!v17)
      {
        AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, 7u);
        v17 = 0;
      }
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *(*(a1 + 48) + 472)) >> 2);
  }

  v18 = *(a1 + 1872);
  if (v16 <= 0xFFFE)
  {
    v20 = *(v18 + 848);
    if (*(v20 + 6241) == 1)
    {
      os_unfair_lock_lock((v20 + 16784));
      v21 = *(v20 + 16808);
      os_unfair_lock_unlock((v20 + 16784));
      v22 = v21 > 0xFFFE;
    }

    else
    {
      v23 = *(a1 + 296);
      if (!v23)
      {
        AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, 7u);
        v23 = *(a1 + 296);
      }

      v22 = (*(a1 + 288) - v23) < 0xC;
    }

    if (v22)
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    v18 = *(a1 + 1872);
  }

  else
  {
    v19 = 4;
  }

  v24 = v7 | a3 | v11;
  v25 = *(v18 + 848);
  v26 = *(v25 + 6242) != 1 || (v24 & 2) == 0;
  if (!v26)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::resetScissorBuffer(v25);
    v25 = *(*(a1 + 1872) + 848);
  }

  v27 = a1 + 78488;
  v28 = v19 | v24;
  if (*(v25 + 6241) == 1 && (v28 & 4) != 0)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::resetDepthBiasBuffer(v25);
  }

  for (i = *(a1 + 30312); i; i = *i)
  {
    (*(i[1] + 16))();
  }

  v30 = *(a1 + 30328);
  v31 = *(v30 + 1800);
  v30[56] = *(v30 + 1784);
  v30[57] = v31;
  v30[58] = *(v30 + 1816);
  v32 = *(a1 + 30328);
  *(v32 + 2009) = 0;
  v33 = *(v32 + 1848);
  *(v32 + 720) = *(v32 + 1832);
  *(v32 + 736) = v33;
  v34 = *(v32 + 1944);
  *(v32 + 816) = *(v32 + 1928);
  *(v32 + 832) = v34;
  v35 = *(v32 + 1912);
  *(v32 + 784) = *(v32 + 1896);
  *(v32 + 800) = v35;
  v36 = *(v32 + 1880);
  *(v32 + 752) = *(v32 + 1864);
  *(v32 + 768) = v36;
  IOGPUResourceListAddResource();
  *(a1 + 2078) = 1;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::endRenderPassCommon(a1, (*(a1 + 2077) & 1) == 0, 1, 1);
  *(a1 + 2078) = 0;
  *(a1 + 2076) = 1;
  ++*(a1 + 78556);
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::beginRenderPass(a1);
  IOGPUResourceListAddResource();
  v38 = *(a1 + 30352);
  if (v38)
  {
    if (v38[180])
    {
      v39 = 0;
      v40 = v38 + 24;
      v41 = v38[181] | v38[182];
      do
      {
        if (((1 << v39) & v41) != 0)
        {
          IOGPUResourceListAddResource();
          v38 = *(a1 + 30352);
        }

        ++v39;
        v40 += 6;
      }

      while (v39 < v38[180]);
    }

    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::bindResources(v38);
  }

  if (*(a1 + 30336))
  {
    v42 = *(a1 + 30104);
    v43 = *(a1 + 30352);
    *(a1 + 30156) = 1;
    v44.i64[0] = *(a1 + 30120);
    v45 = *(a1 + 30128);
    v46 = *(a1 + 30136);
    v47 = *(v43 + 40);
    v48 = v42.i32[0];
    if (v42.i32[0] <= v47)
    {
      v48 = *(v43 + 40);
    }

    *(a1 + 30104) = v48;
    v49 = *(v43 + 44);
    v50 = v42.i32[1];
    if (v42.i32[1] <= v49)
    {
      v50 = *(v43 + 44);
    }

    *(a1 + 30108) = v50;
    v51 = *(v43 + 48);
    v52 = v42.i32[2];
    if (v42.i32[2] <= v51)
    {
      v52 = *(v43 + 48);
    }

    *(a1 + 30112) = v52;
    v53 = *(v43 + 52);
    v54 = v42.i32[3];
    if (v42.i32[3] <= v53)
    {
      v54 = *(v43 + 52);
    }

    *(a1 + 30116) = v54;
    v55 = *(v43 + 56);
    v56 = v44.i32[0];
    if (v44.i32[0] <= v55)
    {
      v56 = *(v43 + 56);
    }

    *(a1 + 30120) = v56;
    v57 = *(v43 + 60);
    v58 = v44.i32[1];
    if (v44.i32[1] <= v57)
    {
      v58 = *(v43 + 60);
    }

    *(a1 + 30124) = v58;
    v59 = *(v43 + 64);
    if (v45 <= v59)
    {
      v60 = *(v43 + 64);
    }

    else
    {
      v60 = v45;
    }

    v44.i64[1] = __PAIR64__(v46, v45);
    *(a1 + 30128) = v60;
    v61.i64[0] = __PAIR64__(v49, v47);
    v62 = *(v43 + 68);
    v61.i64[1] = __PAIR64__(v53, v51);
    v63.i64[0] = __PAIR64__(v57, v55);
    v63.i64[1] = __PAIR64__(v62, v59);
    v37 = vandq_s8(vuzp1q_s16(vcgtq_s32(v61, v42), vcgtq_s32(v63, v44)), xmmword_29D2F24C0);
    v37.i16[0] = vaddvq_s16(v37);
    v64 = v37.u8[0];
    if (v46 <= v62)
    {
      v46 = *(v43 + 68);
    }

    *(a1 + 30136) = v46;
    v65 = *(v43 + 3528);
    if (v65)
    {
      v66 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((a1 + 30104), v65);
    }

    else
    {
      v66 = 0;
    }

    if (v64)
    {
      v67 = 0;
    }

    else
    {
      v67 = v66 == 0;
    }

    if (!v67)
    {
      AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 30104, *(a1 + 30328) + 320, 1);
    }

    v68 = *(a1 + 30336);
    v69 = *(v68 + 2400);
    v70 = *(v68 + 2408);
    v71 = *(a1 + 30352);
    if (*(v71 + 789) == 1)
    {
      v72 = *(v71 + 1032);
      v73 = *(v71 + 1048);
      v26 = *(v71 + 3608) == 0;
      v74 = -3;
      if (v26)
      {
        v74 = -1;
      }

      v75 = v72 == 0;
      v76 = 0xF7FFFFFFFFFFFFFFLL;
      if (v75)
      {
        v76 = -1;
      }

      v77 = 0xE7FFFFFFFFFFFFFFLL;
      if (v75)
      {
        v77 = 0xEFFFFFFFFFFFFFFFLL;
      }

      if (v73)
      {
        v76 = v77;
      }
    }

    else
    {
      v76 = -1;
      v74 = -1;
    }

    v78 = v69 & v76;
    v220 = v70 & v74;
    for (j = v78; ; v78 = j)
    {
      if (v78)
      {
        v79 = __clz(__rbit64(v78));
        p_j = &j;
        v81 = v79;
      }

      else
      {
        v78 = v220;
        if (!v220)
        {
          v83 = *(a1 + 49088);
          v84 = *(v83 + 17888);
          v85 = *(v83 + 17896);
          v86 = *(a1 + 30336);
          v87 = *(v86 + 2424);
          v88 = *(v86 + 2416) & v84;
          v218 = v87 & v85;
          k = v88;
          v89 = a1 + 49664;
          while (1)
          {
            if (v88)
            {
              v90 = __clz(__rbit64(v88));
              v91 = &k;
              v92 = v90;
            }

            else
            {
              v88 = v218;
              if (!v218)
              {
                v95 = *(a1 + 30336);
                v96 = *(a1 + 30328);
                *(v96 + 575) |= *(v95 + 1349);
                *(v96 + 578) |= *(v95 + 1354);
                v27 = a1 + 78488;
                goto LABEL_108;
              }

              v90 = __clz(__rbit64(v218));
              v92 = v90 | 0x40;
              v91 = &v218;
            }

            *v91 = v88 & ~(1 << v90);
            v222 = *(*(a1 + 30336) + 1376);
            if ((*(&v222 | (8 * (v92 > 0x3F))) >> v92))
            {
              v93 = 3;
            }

            else
            {
              v93 = 1;
            }

            v94 = 3 * v92;
            AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(a1 + 2008), *(v89 + 24 * v92), 3u, v92, v93);
            if (*(v89 + 8 * v94))
            {
              IOGPUResourceListAddResource();
              if (*(v89 + 8 * (v94 + 1)))
              {
                IOGPUResourceListAddResource();
              }

              if (*(v89 + 8 * (v94 + 2)))
              {
                IOGPUResourceListAddResource();
              }
            }

            v88 = k;
          }
        }

        v79 = __clz(__rbit64(v220));
        v81 = v79 | 0x40;
        p_j = &v220;
      }

      *p_j = v78 & ~(1 << v79);
      v222 = *(*(a1 + 30336) + 1360);
      if ((*(&v222 | (8 * (v81 > 0x3F))) >> v81))
      {
        v82 = 3;
      }

      else
      {
        v82 = 1;
      }

      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindVertexBufferResource(a1, v81, v82, a4);
    }
  }

LABEL_108:
  v97 = *(a1 + 27960);
  if (v97)
  {
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindAllResources(v97, a4);
  }

  if (*(a1 + 30344))
  {
    v98 = 0;
    v99 = *(a1 + 30352);
    v100 = *(a1 + 30284);
    v101 = *(*(a1 + 30264) + 7092);
    *(a1 + 30260) = 2;
    v102 = *(v99 + 80);
    v103 = *(v99 + 84);
    v104 = *(a1 + 2404);
    v106 = *(v99 + 72);
    v105 = *(v99 + 76);
    v107.i64[0] = *(v99 + 88);
    v108 = *(a1 + 2420);
    v109 = *(a1 + 30280);
    v110 = *(a1 + 30304);
    v111 = *(a1 + 30288);
    v112 = v104 + v105;
    v113 = __OFSUB__(v112, v110);
    v114 = v112 - v110;
    if ((v114 < 0) ^ v113 | (v114 == 0))
    {
      v114 = 0;
    }

    v115 = v103 + v102 + *(a1 + 2408);
    v116.i64[0] = *(a1 + 2412);
    v116.i64[1] = v107.i64[0];
    v117 = vaddvq_s32(v116);
    v118 = ((v111 + v108 + (v114 + v104) * v109 + v117 + v115 * v100 + 64) * v101 + 7) & 0xFFFFFFF8;
    v119 = *(a1 + 30208);
    v107.i64[1] = *(a1 + 2412);
    *(a1 + 30208) = vmaxq_s32(v119, v107);
    v120.i64[0] = *(a1 + 30224);
    v121.i32[0] = v108;
    *(a1 + 30224) = vmax_s32(*v120.i8, __PAIR64__(v118, v108));
    v122 = *(a1 + 2400) + v106;
    v113 = __OFSUB__(v122, v110);
    v123 = v122 - v110;
    if ((v123 < 0) ^ v113 | (v123 == 0))
    {
      v123 = 0;
    }

    v124 = ((v117 + v123 * v109 + v111 + v108 + 64) * v101 + 7) & 0xFFFFFFF8;
    if (*(a1 + 30232) <= v124)
    {
      v125 = v124;
    }

    else
    {
      v125 = *(a1 + 30232);
    }

    v126 = *(a1 + 30240);
    v120.i32[2] = *(a1 + 30232);
    v120.i32[3] = v126;
    v121.i32[1] = v118;
    *(a1 + 30232) = v125;
    v121.i64[1] = __PAIR64__(v122, v124);
    v37 = vandq_s8(vuzp1q_s16(vcgtq_s32(v107, v119), vcgtq_s32(v121, v120)), xmmword_29D2F24C0);
    v37.i16[0] = vaddvq_s16(v37);
    v127 = v37.u8[0];
    if (v126 <= v122)
    {
      v128 = v122;
    }

    else
    {
      v128 = v126;
    }

    *(a1 + 30240) = v128;
    v129 = *(*(a1 + 30352) + 3544);
    if (v129)
    {
      v98 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((a1 + 30208), v129);
    }

    if (v127)
    {
      v130 = 0;
    }

    else
    {
      v130 = v98 == 0;
    }

    if (!v130)
    {
      AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 30208, *(a1 + 30328) + 1360, 0);
    }

    v131 = *(a1 + 30344);
    v132 = *(v131 + 2400);
    v133 = *(v131 + 2408);
    v134 = *(a1 + 30352);
    if (*(v134 + 789) == 1)
    {
      v135 = *(v134 + 1344);
      v136 = *(v134 + 1360);
      v26 = *(v134 + 3616) == 0;
      v137 = -3;
      if (v26)
      {
        v137 = -1;
      }

      v138 = v135 == 0;
      v139 = 0xF7FFFFFFFFFFFFFFLL;
      if (v138)
      {
        v139 = -1;
      }

      v140 = 0xE7FFFFFFFFFFFFFFLL;
      if (v138)
      {
        v140 = 0xEFFFFFFFFFFFFFFFLL;
      }

      if (v136)
      {
        v139 = v140;
      }
    }

    else
    {
      v139 = -1;
      v137 = -1;
    }

    v141 = v132 & v139;
    v220 = v133 & v137;
    for (j = v141; ; v141 = j)
    {
      if (v141)
      {
        v142 = __clz(__rbit64(v141));
        v143 = &j;
        v144 = v142;
      }

      else
      {
        v141 = v220;
        if (!v220)
        {
          v145 = *(a1 + 73032);
          v146 = *(v145 + 17888);
          v147 = *(v145 + 17896);
          v148 = *(a1 + 30344);
          v149 = *(v148 + 2424);
          v150 = *(v148 + 2416) & v146;
          v151 = a1 + 73608;
          v218 = v149 & v147;
          for (k = v150; ; v150 = k)
          {
            if (v150)
            {
              v152 = __clz(__rbit64(v150));
              p_k = &k;
              v154 = v152;
            }

            else
            {
              v150 = v218;
              if (!v218)
              {
                v157 = *(a1 + 30344);
                *(*(a1 + 30328) + 1608) |= *(v157 + 1349);
                *(v27 + 64) |= *(v157 + 1354);
                goto LABEL_164;
              }

              v152 = __clz(__rbit64(v218));
              v154 = v152 | 0x40;
              p_k = &v218;
            }

            *p_k = v150 & ~(1 << v152);
            v222 = *(*(a1 + 30344) + 1376);
            if ((*(&v222 | (8 * (v154 > 0x3F))) >> v154))
            {
              v155 = 12;
            }

            else
            {
              v155 = 4;
            }

            v156 = 3 * v154;
            AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(a1 + 2008), *(v151 + 24 * v154), 4u, v154, v155);
            if (*(v151 + 8 * v156))
            {
              IOGPUResourceListAddResource();
              if (*(v151 + 8 * (v156 + 1)))
              {
                IOGPUResourceListAddResource();
              }

              if (*(v151 + 8 * (v156 + 2)))
              {
                IOGPUResourceListAddResource();
              }
            }
          }
        }

        v142 = __clz(__rbit64(v220));
        v144 = v142 | 0x40;
        v143 = &v220;
      }

      *v143 = v141 & ~(1 << v142);
      v222 = *(*(a1 + 30344) + 1360);
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindFragmentBufferResource(a1, v144, (*(&v222 | (8 * (v144 > 0x3F))) >> v144) & 1, a4);
    }
  }

LABEL_164:
  v158 = *(a1 + 30088);
  v159 = MEMORY[0x29EDC5638];
  if (v158)
  {
    v160 = *MEMORY[0x29EDC5638];
    v161 = v158 + v160;
    v162 = *(v158 + v160 + 16);
    if ((v162 & 0x7FFFFFFF80) == 0 || (v162 >> 61) - 5 < 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_188;
    }

    v164 = *(a1 + 2008);
    if (*(v164[2].i64[1] + 480) != 1)
    {
      goto LABEL_188;
    }

    v165 = v164[3];
    v166 = v164[4];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v165), vceqzq_s64(v166))))) & 1) == 0)
    {
      goto LABEL_188;
    }

    v167 = (v158 + v160);
    if ((v162 & 0x1000000000000000) != 0)
    {
      v167 = *v161;
    }

    v168 = *v167;
    if (!v168)
    {
      goto LABEL_188;
    }

    v169 = *v168;
    v170 = v168[1];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v168), vceqzq_s64(v170))))) & 1) == 0)
    {
      goto LABEL_188;
    }

    v171 = vandq_s8(v170, v166);
    v172 = v171.u64[1];
    if (v171.i64[1])
    {
      v173 = 3;
    }

    else
    {
      v172 = v171.i64[0];
      if (v171.i64[0])
      {
        v173 = 2;
      }

      else
      {
        v174 = vandq_s8(v169, v165);
        v172 = v174.u64[1];
        if (v174.i64[1])
        {
          v173 = 1;
        }

        else
        {
          v172 = v174.i64[0];
          if (!v174.i64[0])
          {
LABEL_188:
            IOGPUResourceListAddResource();
            goto LABEL_189;
          }

          v173 = 0;
        }
      }
    }

    v175 = &v164->i8[8 * v173];
    v176 = *(v175 + 10);
    v177 = 1 << (__clz(v172) ^ 0x3Fu);
    v178 = (v177 & v176) != 0;
    if ((v177 & (*(v175 + 14) | v176)) != 0)
    {
      v179 = (*(v161 + 8) + 127) & 0xFFFFFFFFFFFFFF80;
      v180 = (v158 + v160);
      if ((v162 & 0x1000000000000000) != 0)
      {
        v180 = *v161;
      }

      *&v222 = v180;
      *(&v222 + 1) = v179;
      v223 = v162 >> 7;
      v224 = 1;
      v225 = v178;
      ResourceTracker<_ResourceGroupBinding>::addResource(v164, &v222, *(v161 + 48), 1);
    }

    goto LABEL_188;
  }

LABEL_189:
  v181 = *(a1 + 30096);
  if (v181)
  {
    v182 = *v159;
    v183 = v181 + v182;
    v184 = *(v181 + v182 + 16);
    if ((v184 & 0x7FFFFFFF80) == 0 || (v184 >> 61) - 5 < 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_213;
    }

    v186 = *(a1 + 2008);
    if (*(v186[2].i64[1] + 480) != 1)
    {
      goto LABEL_213;
    }

    v187 = v186[3];
    v188 = v186[4];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v187), vceqzq_s64(v188))))) & 1) == 0)
    {
      goto LABEL_213;
    }

    v189 = (v181 + v182);
    if ((v184 & 0x1000000000000000) != 0)
    {
      v189 = *v183;
    }

    v190 = *v189;
    if (!v190)
    {
      goto LABEL_213;
    }

    v191 = *v190;
    v192 = v190[1];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v190), vceqzq_s64(v192))))) & 1) == 0)
    {
      goto LABEL_213;
    }

    v193 = vandq_s8(v192, v188);
    v194 = v193.u64[1];
    if (v193.i64[1])
    {
      v195 = 3;
    }

    else
    {
      v194 = v193.i64[0];
      if (v193.i64[0])
      {
        v195 = 2;
      }

      else
      {
        v196 = vandq_s8(v191, v187);
        v194 = v196.u64[1];
        if (v196.i64[1])
        {
          v195 = 1;
        }

        else
        {
          v194 = v196.i64[0];
          if (!v196.i64[0])
          {
LABEL_213:
            IOGPUResourceListAddResource();
            goto LABEL_214;
          }

          v195 = 0;
        }
      }
    }

    v197 = &v186->i8[8 * v195];
    v198 = *(v197 + 10);
    v199 = 1 << (__clz(v194) ^ 0x3Fu);
    v200 = (v199 & v198) != 0;
    if ((v199 & (*(v197 + 14) | v198)) != 0)
    {
      v201 = (*(v183 + 8) + 127) & 0xFFFFFFFFFFFFFF80;
      v202 = (v181 + v182);
      if ((v184 & 0x1000000000000000) != 0)
      {
        v202 = *v183;
      }

      *&v222 = v202;
      *(&v222 + 1) = v201;
      v223 = v184 >> 7;
      v224 = 65;
      v225 = v200;
      ResourceTracker<_ResourceGroupBinding>::addResource(v186, &v222, *(v183 + 48), 65);
    }

    goto LABEL_213;
  }

LABEL_214:
  v203 = *(a1 + 30352);
  if (v203)
  {
    v204 = *(v203 + 8);
    if (v204)
    {
      if (*(v204 + 4264))
      {
        v205 = *(a1 + 27752);
        if (!v205)
        {
          v205 = std::function<AGX::HAL300::HWTessellationContextA * ()(void)>::operator()(*(a1 + 27784));
          *(a1 + 27752) = v205;
        }

        (*(*v205 + 56))(v205);
      }
    }
  }

  if (*(a1 + 29919) == 1 && (*v27 & 2) != 0)
  {
    AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addGPUResources(*(a1 + 2392), v37, *(a1 + 1912), *(a1 + 2008), 64);
    *v27 &= ~2u;
  }

  v206 = 0xFFFFF0701C0701FELL;
  v207 = *(a1 + 27960);
  v208 = *(a1 + 30336);
  v209 = *(a1 + 30344);
  if (v207)
  {
    v210 = *(v207 + 32);
    if (v208)
    {
      v206 = *(v208 + 2720) | 0xFFFFF0701C0701FFLL;
    }

    v211 = *(v207 + 40);
    if (v209)
    {
      v212 = *(v209 + 2720) | v206;
      v213 = a2;
      if (v210)
      {
        goto LABEL_228;
      }
    }

    else
    {
      v212 = v206 & 0xFFFFFFFFFFFFFFFDLL;
      v213 = a2;
      if (v210)
      {
LABEL_228:
        v214 = *(v210 + 2720) | v212;
        if (v211)
        {
LABEL_229:
          v215 = *(v211 + 2720) | v214;
          goto LABEL_239;
        }

LABEL_236:
        v215 = v214 & 0xFFFFFFFFFFFFFFDFLL;
        goto LABEL_239;
      }
    }

    v214 = v212 & 0xFFFFFFFFFFFFFFEFLL;
    if (v211)
    {
      goto LABEL_229;
    }

    goto LABEL_236;
  }

  if (v208)
  {
    v206 = *(v208 + 2720) | 0xFFFFF0701C0701FFLL;
  }

  if (v209)
  {
    v216 = *(v209 + 2720) | v206;
  }

  else
  {
    v216 = v206 & 0xFFFFFFFFFFFFFFFDLL;
  }

  v213 = a2;
  v215 = v216 & 0xFFFFFFFFFFFFFFCFLL;
LABEL_239:
  *v213 = v215;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::handleScissorUpdates(uint64_t result, void *a2, int a3, unint64_t a4, char a5, int a6)
{
  v6 = *a2;
  if ((*a2 & 0x200000000000) == 0)
  {
    return result;
  }

  v7 = result + 28600;
  v8 = *(result + 29536);
  v9 = *(*(*(result + 1872) + 848) + 6242) == 1 && a6 == 0;
  v10 = result;
  if (!v9)
  {
    v13 = a2;
    updated = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::updateClipRegions(result + 28712, a2);
    a2 = v13;
    a5 = updated;
    result = v10;
  }

  if (*(v7 + 906))
  {
    v15 = *(v7 + 40);
    *(v7 + 40) = v15 & 0xFFFEFFFF;
    if ((v15 & 0x10000) == 0)
    {
      return result;
    }

LABEL_25:
    *a2 |= 0x100000000000uLL;
    return result;
  }

  if (a5 & 1 | ((v6 & 0x40000000000000) != 0) & (v8 ^ 1))
  {
    v25 = a2;
    v28 = *(result + 29832);
    result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::canUseScissorConfigReg(result + 28712);
    if (result)
    {
      *(v7 + 1224) = 0;
    }

    else
    {
      result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::anyPartialScreenClip((v10 + 3589));
      if (result)
      {
        *(v7 + 1224) = 1;
        result = *(v10[234] + 848);
        if (*(result + 6242) == 1)
        {
          if (a3 == -1)
          {
            v27 = 0;
            result = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateScissorIndex(result, (v10 + 3589), 0, *(v10[3791] + 944), &v28, &v27, &v26);
          }

          else
          {
            v28 = a4;
          }
        }

        else
        {
          v20 = v10[41];
          v28 = v20 + v10[43];
          v21 = v28;
          v10[41] = v20 + 2;
          result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissorBits<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>>((v10 + 3589), v10, 0, v20, v21);
          for (i = 1; i < *(v7 + 908); ++i)
          {
            v23 = v10[41];
            v24 = v10[43];
            v10[41] = v23 + 2;
            result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissorBits<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>>((v10 + 3589), v10, i, v23, v23 + v24);
          }
        }
      }
    }

    v16 = *(v7 + 1224);
    a2 = v25;
    if (v16 == 1)
    {
      v17 = v28 & 0xFFFFFFFC;
      *v7 = (v28 >> 16) & 0xFFFF0000;
      *(v7 + 4) = v17;
      *v25 |= 0x4000000000000uLL;
    }
  }

  else
  {
    v16 = *(v7 + 1224);
  }

  v18 = *(v7 + 40);
  if (v16)
  {
    v19 = 0x10000;
  }

  else
  {
    v19 = 0;
  }

  *(v7 + 40) = v18 & 0xFFFEFFFF | v19;
  if ((v16 ^ ((v18 & 0x10000u) >> 16)))
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::handleDepthBiasUpdates(uint64_t result, uint64_t a2, int a3, unint64_t a4, int8x16_t a5, double a6, double a7, int8x16_t a8)
{
  if ((*(a2 + 5) & 0x40) != 0)
  {
    v22[3] = v8;
    v22[4] = v9;
    v10 = (result + 28592);
    a5.i32[0] = *(result + 29848);
    v11 = *(result + 29852);
    v12 = *(result + 29856);
    a8.i32[0] = 931135616;
    v13.i64[0] = 0x8000000080000000;
    v13.i64[1] = 0x8000000080000000;
    LODWORD(v14) = vbslq_s8(v13, a8, a5).u32[0];
    if (*(*(result + 2392) + 4924))
    {
      *a5.i32 = v14 + (*a5.i32 * 0.000015259);
    }

    v22[0] = 0;
    v15 = *(*(result + 1872) + 848);
    if (*(v15 + 6241) == 1)
    {
      if (a3 == -1)
      {
        v21 = 0;
        v18 = a2;
        result = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDepthBiasIndex(v15, *(*(result + 30328) + 952), v22, &v21, &v20, *a5.i32, v11, v12);
        a2 = v18;
        a4 = v22[0];
      }
    }

    else
    {
      *&a5.i32[1] = v11;
      v16 = *(result + 296);
      v17 = *(result + 312) + v16;
      *(result + 296) = v16 + 12;
      *v16 = a5.i64[0];
      *(v16 + 8) = v12;
      v19 = a2;
      result = AGX::DataBufferAllocator<44ul>::getBasePointer<AGX::IPFEncoderGen4<kAGXRevHAL300>::DepthBiasBits>(result + 24);
      a4 = v17;
      a2 = v19;
    }

    *v10 = (a4 >> 16) & 0xFFFF0000;
    v10[1] = a4 & 0xFFFFFFFC;
    *a2 |= 0x4000000000000uLL;
  }

  return result;
}

uint64_t AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissorBits<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>>(uint64_t result, uint64_t a2, unsigned int a3, int32x2_t *a4, uint64_t a5)
{
  v5 = (result + 16 * a3 + 520);
  if (*(result + 804))
  {
    v6 = (result + 8 * a3 + 828);
  }

  else
  {
    v6 = (result + 1084);
  }

  v7 = *v6;
  v8 = vshrn_n_s64(*v5, 0x20uLL);
  *&v9 = vmovn_s64(*v5);
  *a4 = vsli_n_s32(v8, *&v9, 0x10uLL);
  a4[1] = v7;
  if (*(result + 824) == 1)
  {
    v10 = *(*(*(a2 + 78544) + 64) + 16);
    v11 = *(a2 + 744);
    *(a2 + 744) = v11 + 56;
    *(v11 + 4) = v10;
    *(v11 + 8) = a5;
    *(&v9 + 1) = v8;
    *(v11 + 16) = v9;
    *(v11 + 32) = a3;
    v12 = *(a2 + 29992) + 1;
    *(a2 + 29992) = v12;
    *v11 = 0;
    *(*(a2 + 29984) + 4) = v12;
    ++*(a2 + 1956);
  }

  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::endRenderPassCommon(uint64_t a1, int a2, int a3, int a4)
{
  v382 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 29912);
  if (v6 == 1)
  {
    v9 = *(a1 + 456);
    *v9 = 2 * *(a1 + 29916);
    *(a1 + 456) = v9 + 1;
    *(a1 + 29912) = 2;
    *(*(a1 + 29896) + 8) = 2;
  }

  else if (!v6)
  {
    v7 = *(a1 + 29888);
    if (v7)
    {
      v8 = *(a1 + 29904);
      *v7 = BYTE4(v8) | 0x80000000;
      v7[1] = v8;
      *(a1 + 29888) = 0;
      *(a1 + 29904) = 0;
      ++*(a1 + 1952);
    }
  }

  v10 = a1 + 78496;
  v355 = a1 + 27824;
  if (a4 && (*(a1 + 28065) & 1) == 0)
  {
    v12 = a2;
    isFastClearConversionAllowedForEmptyRender = AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isFastClearConversionAllowedForEmptyRender(*(a1 + 2392));
    a2 = v12;
  }

  else
  {
    isFastClearConversionAllowedForEmptyRender = 0;
  }

  if (*(*(a1 + 30320) + 132))
  {
    goto LABEL_445;
  }

  if (!isFastClearConversionAllowedForEmptyRender)
  {
    v112 = a2;
    if (*(a1 + 27656))
    {
      AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::patchVDMControlStreamAndReset(a1 + 27600, *(a1 + 78728), *(a1 + 78736), (a1 + 78560));
    }

    *(*(a1 + 30328) + 577) = *(v355 + 208);
    if (AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isFastClearToBlackEOT2Allowed(*(a1 + 2392)))
    {
      *(*(a1 + 30328) + 1613) = 1;
    }

    v113 = *(a1 + 2392) + 4096;
    if (*(*(a1 + 2392) + 4960) == 1)
    {
      *(*(a1 + 30328) + 1613) = 1;
    }

    if (*(v113 + 865) == 1)
    {
      *(*(a1 + 30328) + 1612) = 1;
    }

    {
    }

    if (*(a1 + 2077) == 1)
    {
      if ((*(a1 + 2074) & 1) == 0)
      {
LABEL_249:
        v237 = *(a1 + 2392);
        AGX::FramebufferGen3_1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::finalizeStoreActions(v237);
        if (*(a1 + 78552))
        {
          v238 = 0;
        }

        else
        {
          v238 = *(v237 + 4959);
        }

        if ((*(v237 + 5000) & 0xFFFFFFFFFF80) != 0)
        {
          *(v237 + 4976) = *(v237 + 4976) & 0xFFFFFFFFFFFFFFFELL | v238;
        }
      }
    }

    else
    {
      v174 = *(a1 + 30328);
      if (*(a1 + 2078))
      {
        goto LABEL_263;
      }

      if (*(a1 + 2074) != 1)
      {
        goto LABEL_249;
      }

      if ((*(a1 + 2073) & 1) == 0)
      {
LABEL_263:
        if (*(a1 + 2075))
        {
          goto LABEL_264;
        }

        if (*(a1 + 2076))
        {
          v239 = 0;
          if (*(a1 + 2077))
          {
            goto LABEL_275;
          }

          goto LABEL_271;
        }

        if (*(a1 + 2074) != 1)
        {
LABEL_264:
          v239 = 1;
          if (*(a1 + 2077))
          {
            goto LABEL_275;
          }
        }

        else
        {
          v239 = *(a1 + 2072);
          if (*(a1 + 2077))
          {
            goto LABEL_275;
          }
        }

LABEL_271:
        if (*(a1 + 2078))
        {
          v240 = 0;
LABEL_276:
          AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::assignRenderRegisters(*(a1 + 2392), v174, v174 + 720, v239 & 1, v240 & 1);
          if (*(a1 + 2075))
          {
            goto LABEL_277;
          }

          if (*(a1 + 2076))
          {
            v241 = 0;
            if (*(a1 + 2077))
            {
              goto LABEL_288;
            }

            goto LABEL_284;
          }

          if (*(a1 + 2074) != 1)
          {
LABEL_277:
            v241 = 1;
            if (*(a1 + 2077))
            {
              goto LABEL_288;
            }
          }

          else
          {
            v241 = *(a1 + 2072);
            if (*(a1 + 2077))
            {
              goto LABEL_288;
            }
          }

LABEL_284:
          if (*(a1 + 2078))
          {
            v242 = 0;
LABEL_289:
            AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::assignCommandFields(*(a1 + 2392), *(a1 + 30328), v241 & 1, v242 & 1, *(v355 + 2016));
            v243 = *(a1 + 2075);
            if ((v243 & 1) == 0 && ((*(a1 + 2076) & 1) != 0 || *(a1 + 2074) == 1 && *(a1 + 2072) != 1))
            {
              v246 = *(a1 + 30328);
              *(v246 + 2224) = 0;
              v244 = v355;
              *(v355 + 2016) = *(v355 + 2018);
LABEL_306:
              *(v246 + 1605) = 1;
              if (**MEMORY[0x29EDC56B0])
              {
                IOGPUDeviceTraceEvent();
                v244 = v355;
                v246 = *(a1 + 30328);
              }

LABEL_308:
              if ((*(v244 + 2095) & 1) == 0)
              {
                *(v246 + 1728) = 0;
              }

              *(a1 + 2656) = 0;
              if (*(a1 + 2075))
              {
                goto LABEL_311;
              }

              if (*(a1 + 2076))
              {
                v247 = 0;
              }

              else
              {
                if (*(a1 + 2074) != 1)
                {
LABEL_311:
                  v247 = 1;
                  goto LABEL_316;
                }

                v247 = *(a1 + 2072);
              }

LABEL_316:
              AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitDriverProgramArguments(a1 + 2120, v246, *(a1 + 2392), v247 & 1, *(v244 + 236));
              if (a3)
              {
                v248 = *(a1 + 72);
                *(a1 + 72) = v248 + 1;
                *v248 = *(v355 + 12);
              }

              if (*(a1 + 1956) <= 4u && *(a1 + 1960))
              {
                *(*(a1 + 30328) + 1168) |= 1uLL;
              }

              if (*(a1 + 2077) & 1) != 0 || (*(a1 + 2078) & 1) == 0 && (*(a1 + 2074) != 1 || (*(a1 + 2073)))
              {
                v249 = *(a1 + 78520);
                if (*(*(a1 + 2392) + 4956))
                {
                  v250 = 0;
LABEL_327:
                  if (FenceEncoder::encode((a1 + 1880), v112, *(a1 + 30320), *(a1 + 78512), *v10, v249, v250))
                  {
                    *(a1 + 79472) |= 0x20000uLL;
                  }

                  if (*(v355 + 4) && !*(v355 + 8))
                  {
                    v251 = 2;
                  }

                  else
                  {
                    v251 = 0;
                  }

                  if (*v355 >= 0)
                  {
                    v252 = v251;
                  }

                  else
                  {
                    v252 = *v355;
                  }

                  if ((*v355 & 0x40000000) != 0)
                  {
                    v251 = BYTE1(*v355);
                  }

                  v253 = *(a1 + 30328);
                  *(v253 + 2081) = v252;
                  *(v253 + 2082) = v251;
                  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::finalizeScsParameters(*(a1 + 79344), a1 + 79096);
                  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::finalizeScsParameters(*(a1 + 79360), a1 + 79216);
                  v254 = 0;
                  v255 = 0;
                  *(a1 + 79336) = 0u;
                  *(a1 + 79352) = 0u;
                  v256 = 1;
                  v257 = 0x2A179C000uLL;
                  while (1)
                  {
                    v258 = v255;
                    v259 = 79216;
                    if (v256)
                    {
                      v259 = 79096;
                    }

                    v260 = a1 + v259;
                    if (v256)
                    {
                      v261 = 30104;
                    }

                    else
                    {
                      v261 = 30208;
                    }

                    v262 = 1648;
                    if (v256)
                    {
                      v262 = 640;
                    }

                    v263 = *(a1 + 30328) + v262;
                    if (WORD2(*(v260 + 8)) | HIWORD(*(v260 + 8)))
                    {
                      v359 = v261;
                      v360 = v258;
                      v264 = *(*(a1 + 1872) + *(v257 + 1260));
                      block = MEMORY[0x29EDCA5F8];
                      v369[0] = 3221225472;
                      v369[1] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36setupDriverIntersectionTableIfNeededEv_block_invoke;
                      v369[2] = &__block_descriptor_40_e5_v8__0l;
                      v369[3] = v264;
                      if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken != -1)
                      {
                        v330 = v257;
                        dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, &block);
                        v257 = v330;
                      }

                      v265 = *(v264 + 6288);
                      v266 = 49096;
                      if ((v256 & 1) == 0)
                      {
                        v266 = 73040;
                      }

                      v267 = 344;
                      if (v256)
                      {
                        v267 = 336;
                      }

                      v268 = 73592;
                      if (v256)
                      {
                        v268 = 49648;
                      }

                      v269 = a1 + v268;
                      v270 = (*(a1 + v266) + v267);
                      v271 = v257;
                      v272 = *(*(a1 + 1872) + *(v257 + 1260));
                      block = v270;
                      v369[0] = a1 + v268;
                      AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::addToResourceList(v272 + 3534, &block);
                      v273 = (*(*v269 + 16) >> 14) & 0x1FFFFFFLL;
                      *(v263 + 16) = *v270 & 0xFFFFFFFFFFC0;
                      *(v263 + 24) = v273;
                      v274 = ((*(v265 + 188) & 0x3FFFF) << 7) | 0xC0000000;
                      *v263 = (*v270 + (*(v265 + 184) << 7)) & 0xFFFFFFFFFFC0 | 0x8000000000000;
                      *(v263 + 8) = v274;
                      IOGPUResourceListAddResource();
                      *(v263 + 32) = *(v265 + 40);
                      *(v263 + 40) = *(v265 + 48);
                      if ((v254 & 1) == 0)
                      {
                        v275 = *(v265 + 16);
                        if (v275 != (v265 + 24))
                        {
                          do
                          {
                            IOGPUResourceListAddResource();
                            v276 = v275[1];
                            if (v276)
                            {
                              do
                              {
                                v277 = v276;
                                v276 = *v276;
                              }

                              while (v276);
                            }

                            else
                            {
                              do
                              {
                                v277 = v275[2];
                                v137 = *v277 == v275;
                                v275 = v277;
                              }

                              while (!v137);
                            }

                            v275 = v277;
                          }

                          while (v277 != (v265 + 24));
                        }
                      }

                      if (!*(v260 + 11))
                      {
                        v332 = *(a1 + 1968) - *(a1 + 1984);
                        *(v332 + 140) = 1;
                        v10 = a1 + 78496;
                        if ((*(v332 + 136) & 4) != 0)
                        {
                          **(a1 + 8) = 1;
                        }

LABEL_422:
                        v333 = *(a1 + 30328);
                        if (*(v355 + 236) == 1)
                        {
                          *(v333 + 576) = 1;
                          *(v333 + 2016) = 1;
                          v334 = 1179647;
                        }

                        else
                        {
                          v334 = 0x100000;
                        }

                        *(v333 + 1184) = v334;
                        goto LABEL_426;
                      }

                      SectionEnd = *(v260 + 36);
                      if (!SectionEnd)
                      {
                        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v260 + 8, 10);
                        *(v260 + 36) = SectionEnd;
                      }

                      *(v263 + 48) = SectionEnd;
                      v279 = *(v260 + 112);
                      if (v279 == -1)
                      {
                        v331 = *(v260 + 10);
                        if (v331 > 1)
                        {
                          ++v331;
                        }

                        v279 = 8 * v331;
                        *(v260 + 112) = v279;
                      }

                      *(v263 + 52) = v279;
                      *(v263 + 56) = *(v260 + 11);
                      *(v263 + 60) = *(v260 + 8);
                      *(v263 + 64) = *(v260 + 10);
                      v280 = *(v260 + 116);
                      if (v280 == -1)
                      {
                        v280 = (RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v260 + 8, 12) + 0x1FFF) & 0xFFFFF000;
                        *(v260 + 116) = v280;
                      }

                      v281 = a1 + v359;
                      v282 = *(v265 + 72);
                      v284 = *(a1 + v359);
                      v283 = *(a1 + v359 + 16);
                      v285 = v284.i32[0];
                      if (v284.i32[0] <= v282)
                      {
                        v285 = *(v265 + 72);
                      }

                      *v281 = v285;
                      v286 = *(v265 + 76);
                      v287 = v284.i32[1];
                      if (v284.i32[1] <= v286)
                      {
                        v287 = *(v265 + 76);
                      }

                      *(v281 + 4) = v287;
                      v288 = *(v265 + 80);
                      v289 = v284.i32[2];
                      if (v284.i32[2] <= v288)
                      {
                        v289 = *(v265 + 80);
                      }

                      *(v281 + 8) = v289;
                      v290 = *(v265 + 84);
                      v291 = v284.i32[3];
                      if (v284.i32[3] <= v290)
                      {
                        v291 = *(v265 + 84);
                      }

                      *(v281 + 12) = v291;
                      v292 = *(v265 + 88);
                      v293 = v283.i32[0];
                      if (v283.i32[0] <= v292)
                      {
                        v293 = *(v265 + 88);
                      }

                      *(v281 + 16) = v293;
                      v294 = *(v265 + 92);
                      v295 = v283.i32[1];
                      if (v283.i32[1] <= v294)
                      {
                        v295 = *(v265 + 92);
                      }

                      *(v281 + 20) = v295;
                      v296 = *(v265 + 96);
                      v297 = v283.i32[2];
                      if (v283.i32[2] <= v296)
                      {
                        v297 = *(v265 + 96);
                      }

                      *(v281 + 24) = v297;
                      v298.i64[0] = __PAIR64__(v294, v292);
                      v298.i32[2] = v296;
                      v298.i32[3] = *(v265 + 100);
                      v299.i64[0] = __PAIR64__(v286, v282);
                      v299.i64[1] = __PAIR64__(v290, v288);
                      v300 = v283.i32[3];
                      if (v283.i32[3] <= v298.i32[3])
                      {
                        v300 = *(v265 + 100);
                      }

                      *(v281 + 28) = v300;
                      v301 = *(v265 + 104);
                      v302 = *(v281 + 32);
                      v303 = v302.i32[0];
                      if (v302.i32[0] <= v301)
                      {
                        v303 = *(v265 + 104);
                      }

                      *(v281 + 32) = v303;
                      v304 = v302.i32[1];
                      v305 = *(v265 + 108);
                      if (v302.i32[1] <= v305)
                      {
                        v304 = *(v265 + 108);
                      }

                      *(v281 + 36) = v304;
                      v306 = v302.i32[2];
                      v307 = *(v265 + 112);
                      if (v302.i32[2] <= v307)
                      {
                        v306 = *(v265 + 112);
                      }

                      *(v281 + 40) = v306;
                      v308.i64[0] = __PAIR64__(v305, v301);
                      v308.i32[2] = v307;
                      v308.i32[3] = *(v265 + 116);
                      v309 = v302.i32[3];
                      if (v302.i32[3] <= v308.i32[3])
                      {
                        v309 = *(v265 + 116);
                      }

                      *(v281 + 44) = v309;
                      v310 = *(v265 + 120);
                      v311 = *(v281 + 48);
                      v312 = v311 < v310;
                      if (v311 > v310)
                      {
                        v310 = *(v281 + 48);
                      }

                      v313 = (v280 + 4095) >> 12;
                      v314 = (4 * v313 + 1023) >> 10;
                      v315 = *v281;
                      v316 = *(v281 + 16);
                      *v281 = vmaxq_s32(*v281, 0);
                      *(v281 + 16) = vmaxq_s32(v316, 0);
                      v317 = *(v281 + 32);
                      v318 = v317.i32[3] < v313;
                      v319.i64[0] = 0;
                      v319.i32[2] = 0;
                      v319.i32[3] = v313;
                      *(v281 + 32) = vmaxq_s32(v317, v319);
                      if (v310 <= v314)
                      {
                        v320 = (4 * v313 + 1023) >> 10;
                      }

                      else
                      {
                        v320 = v310;
                      }

                      *(v281 + 48) = v320;
                      v321 = vorrq_s8(v316, v315);
                      *v321.i8 = vorr_s8(*v321.i8, *&vextq_s8(v321, v321, 8uLL));
                      v322 = v321.i32[0] | v321.i32[1];
                      *v321.i8 = vdup_laneq_s32(v317, 2);
                      v321.i32[0] = v322;
                      *v321.i8 = vorr_s8(*v321.i8, *v317.i8);
                      v323 = vorr_s8(*v321.i8, vdup_lane_s32(*v321.i8, 1)).u32[0];
                      v324 = v310 < v314 || v318;
                      if (v323 < 0)
                      {
                        v325 = 1;
                      }

                      else
                      {
                        v325 = v324;
                      }

                      v326 = vmovn_s16(vuzp1q_s16(vcgtq_s32(v299, v284), vcgtq_s32(v298, v283)));
                      v326.i8[0] = vmaxv_u8(v326);
                      v327 = v326.i32[0];
                      v328 = vmovn_s32(vcgtq_s32(v308, v302));
                      v328.i16[0] = vmaxv_u16(v328);
                      v329 = v327 | v328.i32[0] | v312 | v325;
                      v10 = a1 + 78496;
                      if (v256 & v329)
                      {
                        v254 = 1;
                        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 30104, *(a1 + 30328) + 320, 1);
                      }

                      else
                      {
                        if (v329)
                        {
                          AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 30208, *(a1 + 30328) + 1360, 0);
                        }

                        v254 = 1;
                      }

                      v257 = v271;
                      v258 = v360;
                    }

                    else
                    {
                      *(v263 + 60) = 8;
                      v10 = a1 + 78496;
                    }

                    v256 = 0;
                    v255 = 1;
                    if (v258)
                    {
                      goto LABEL_422;
                    }
                  }
                }
              }

              else
              {
                v249 = *(a1 + 78520);
              }

              v250 = *(a1 + 78504);
              goto LABEL_327;
            }

            v244 = v355;
            if (*(a1 + 2077))
            {
              goto LABEL_291;
            }

            if (*(a1 + 2078))
            {
              v245 = 0;
            }

            else
            {
              if (*(a1 + 2074) != 1)
              {
LABEL_291:
                v245 = 1;
                goto LABEL_301;
              }

              v245 = *(a1 + 2073);
            }

LABEL_301:
            v246 = *(a1 + 30328);
            *(v246 + 2224) = v245 & 1;
            *(v355 + 2016) = *(v355 + 2018);
            if ((v243 & 1) != 0 || (*(a1 + 2076) & 1) == 0 && ((*(a1 + 2074) & 1) == 0 || (*(a1 + 2072))) && (*(*(a1 + 2392) + 4897) & 1) == 0 && (*(v355 + 209) & 1) == 0)
            {
              goto LABEL_308;
            }

            goto LABEL_306;
          }

          if (*(a1 + 2074) == 1)
          {
            v242 = *(a1 + 2073);
            goto LABEL_289;
          }

LABEL_288:
          v242 = 1;
          goto LABEL_289;
        }

        if (*(a1 + 2074) == 1)
        {
          v240 = *(a1 + 2073);
          goto LABEL_276;
        }

LABEL_275:
        v240 = 1;
        goto LABEL_276;
      }
    }

    if (a3)
    {
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitSWEndOfTileIfNeeded(a1);
    }

    AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::traceFramebufferEvents(*(a1 + 2392));
    *(a1 + 79464) = vorrq_s8(*(a1 + 79464), *(*(a1 + 2392) + 6128));
    v174 = *(a1 + 30328);
    goto LABEL_263;
  }

  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  if (*(*(a1 + 1872) + 976) == 1)
  {
    atomic_fetch_add((*(a1 + 1872) + 1128), 1uLL);
  }

  *(a1 + 2060) |= 0x10u;
  *(v355 + 242) = 1;
  v380 = -1;
  *&v13 = -1;
  *(&v13 + 1) = -1;
  v379[2] = v13;
  v379[3] = v13;
  v379[0] = v13;
  v379[1] = v13;
  v369[0] = &unk_2A23F8140;
  v369[17] = &unk_2A23F8140;
  v369[34] = &unk_2A23F8140;
  v369[51] = &unk_2A23F8140;
  v369[68] = &unk_2A23F8140;
  v369[85] = &unk_2A23F8140;
  v369[102] = &unk_2A23F8140;
  v369[119] = &unk_2A23F8140;
  v370[0] = &unk_2A23F8160;
  v371[0] = &unk_2A23F8180;
  AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::populateFastClearConfig(*(a1 + 2392), &block);
  v14 = block;
  if (block != -2)
  {
    v125 = 0;
    v126 = &v378 + 1;
    v127 = v369;
    while (1)
    {
      v128 = v369;
      if (v125 == v14 + 1)
      {
        v128 = v371;
      }

      v129 = v370;
      if (v125 != v14)
      {
        v129 = v128;
      }

      if (v125 >= v14)
      {
        v130 = v129;
      }

      else
      {
        v130 = v127;
      }

      v131 = *(v130 + 1);
      if (!v131)
      {
        goto LABEL_121;
      }

      v132 = *(*(v131 + 208) + (*(*v130 + 8))(v130, 0) + 88);
      isLargeMacroblock = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLargeMacroblock(v131);
      LODWORD(v134) = 4 * v132;
      if (isLargeMacroblock)
      {
        v134 = v134;
      }

      else
      {
        v134 = v132;
      }

      v135 = *(v131 + 32);
      v136 = v135 & 0xFFFFFFFFFFFFFFFELL;
      v137 = (v135 - 631) < 2 || v136 == 638;
      if (v137 || v136 == 552 || v136 == 640 || (v135 - 633) < 5 || v135 == 630)
      {
        v134 = 5;
      }

      v381[v125] = *(v379 + v134);
      *(v379 + v134) = v125;
      (**v130)(v130, &v372);
      v142 = *(v130 + 1);
      if (v142)
      {
        break;
      }

LABEL_167:
      v157 = *(v130 + 7);
      if (v157)
      {
        IOGPUResourceListAddResource();
        v158 = *(v130 + 11);
        if (v158 && [v158 resourceID])
        {
          IOGPUResourceListAddResource();
        }

        v159 = *(v130 + 12);
        if (v159 && [v159 resourceID])
        {
          IOGPUResourceListAddResource();
        }

        v160 = *(a1 + 168);
        v161 = v160 + 48;
        if ((v160 + 48) <= *(a1 + 160))
        {
          goto LABEL_175;
        }

        v173 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
        v160 = *(a1 + 168);
        if (v173)
        {
          v161 = v160 + 48;
          if ((v160 + 48) > *(a1 + 160))
          {
            goto LABEL_248;
          }

LABEL_175:
          *(a1 + 176) = v161;
        }

        *(v126 - 3) = *(a1 + 184) + v160;
        *(a1 + 168) = v160 + 48;
        LODWORD(v361) = 0;
        v367 = 0;
        v162 = *(v157 + 584);
        if (v162)
        {
          AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMacroBlockDimensions(*(v157 + 168), *(v157 + 176), *(v157 + 32), *(v157 + 208), *(v157 + 396), 0, *(v157 + 112), &v361, &v367);
          v163 = v361;
          LODWORD(v162) = v367;
        }

        else
        {
          v163 = 0;
          LODWORD(v361) = 0;
        }

        v164 = v130[17];
        v165 = *(v157 + 144) + v164;
        v166 = *(v157 + 132);
        v167 = *(v157 + 128) >> (*(v157 + 144) + v164);
        if (v167 <= 1)
        {
          v167 = 1;
        }

        v168 = (v163 + v167 - 1) / v163;
        v169 = v166 >> v165;
        if (v166 >> v165 <= 1)
        {
          v169 = 1;
        }

        v170 = (v162 + v169 - 1) / v162;
        *(v126 - 1) = ((v170 + 1) & 0x7FFFFFFE) * ((v168 + 1) & 0xFFFFFFFE);
        v171 = (*(*v130 + 8))(v130, 1);
        AGX::BlitDispatchParametersGen2_2<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupFastClearArguments(v160, v126, &v372, v157, v164, v171, 0, 0, v168, v170);
      }

      v14 = block;
LABEL_121:
      ++v125;
      v127 += 34;
      v126 += 4;
      if (v125 >= v14 + 2)
      {
        goto LABEL_17;
      }
    }

    IOGPUResourceListAddResource();
    v143 = *(v130 + 5);
    if (v143 && [v143 resourceID])
    {
      IOGPUResourceListAddResource();
    }

    v144 = *(v130 + 6);
    if (v144 && [v144 resourceID])
    {
      IOGPUResourceListAddResource();
    }

    v145 = *(a1 + 168);
    v146 = v145 + 48;
    if ((v145 + 48) > *(a1 + 160))
    {
      v172 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
      v145 = *(a1 + 168);
      if (!v172)
      {
        goto LABEL_159;
      }

      v146 = v145 + 48;
      if ((v145 + 48) > *(a1 + 160))
      {
        goto LABEL_248;
      }
    }

    *(a1 + 176) = v146;
LABEL_159:
    *(v126 - 35) = *(a1 + 184) + v145;
    *(a1 + 168) = v145 + 48;
    LODWORD(v361) = 0;
    v367 = 0;
    v147 = *(v142 + 584);
    if (v147)
    {
      AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMacroBlockDimensions(*(v142 + 168), *(v142 + 176), *(v142 + 32), *(v142 + 208), *(v142 + 396), 0, *(v142 + 112), &v361, &v367);
      v148 = v361;
      LODWORD(v147) = v367;
    }

    else
    {
      v148 = 0;
      LODWORD(v361) = 0;
    }

    v149 = v130[5];
    v150 = *(v142 + 144) + v149;
    v151 = *(v142 + 132);
    v152 = *(v142 + 128) >> (*(v142 + 144) + v149);
    if (v152 <= 1)
    {
      v152 = 1;
    }

    v153 = (v148 + v152 - 1) / v148;
    v154 = v151 >> v150;
    if (v151 >> v150 <= 1)
    {
      v154 = 1;
    }

    v155 = (v147 + v154 - 1) / v147;
    *(v126 - 33) = ((v155 + 1) & 0x7FFFFFFE) * ((v153 + 1) & 0xFFFFFFFE);
    v156 = (*(*v130 + 8))(v130, 0);
    AGX::BlitDispatchParametersGen2_2<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupFastClearArguments(v145, v126 - 32, &v372, v142, v149, v156, 0, 0, v153, v155);
    goto LABEL_167;
  }

LABEL_17:
  v15 = *(a1 + 80);
  if ((v15 + 40) > *(a1 + 64))
  {
    v350 = *(a1 + 72);
    if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0))
    {
      v351 = *(a1 + 72) + v15 - v350 + 40;
      if (v351 > *(a1 + 64))
      {
        goto LABEL_248;
      }

      *(a1 + 80) = v351;
      *v350 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    *(a1 + 80) = v15 + 40;
  }

  v16 = *(a1 + 1032);
  v17 = *(a1 + 1040);
  v18 = v17 + 88;
  if ((v17 + 88) <= *(a1 + 1024))
  {
    v19 = *(a1 + 1032);
LABEL_21:
    *(a1 + 1040) = v18;
    goto LABEL_22;
  }

  v352 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 30, 0);
  v19 = *(a1 + 1032);
  if (v352)
  {
    v18 = v19 + v17 - v16 + 88;
    if (v18 > *(a1 + 1024))
    {
      goto LABEL_248;
    }

    goto LABEL_21;
  }

LABEL_22:
  v20 = *(a1 + 1048) + v19;
  *(a1 + 1032) = v19 + 20;
  *v19 = xmmword_29D2F1770;
  *(v19 + 16) = 0;
  v21 = *(a1 + 72);
  *v21 = __ROR8__(v20, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(a1 + 72) = v21 + 1;
  v22 = *(a1 + 1032);
  v23 = *(a1 + 1048) + v22;
  *(a1 + 1032) = v22 + 28;
  *v22 = xmmword_29D2F1780;
  *(v22 + 16) = 0xE0000000E000000;
  *(v22 + 24) = 0;
  v24 = __ROR8__(v23, 32);
  v25 = *(a1 + 72);
  *v25 = v24 & 0xFFFFFFFC000000FFLL | 0x700;
  *(a1 + 72) = v25 + 1;
  v26 = *(a1 + 1032);
  v27 = *(a1 + 1048) + v26;
  *(a1 + 1032) = v26 + 20;
  *v26 = 203948032;
  *(v26 + 12) = 0;
  *(v26 + 4) = 0;
  v28 = *(a1 + 72);
  *v28 = __ROR8__(v27, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(a1 + 72) = v28 + 1;
  v29 = *(a1 + 1032);
  v30 = *(a1 + 1048) + v29;
  *(a1 + 1032) = v29 + 12;
  *v29 = 8650754;
  *(v29 + 8) = 131200;
  v31 = __ROR8__(v30, 32);
  v32 = *(a1 + 72);
  *v32 = v31 & 0xFFFFFFFC000000FFLL | 0x300;
  *(a1 + 72) = v32 + 1;
  v33 = *(a1 + 1032);
  v34 = v33 + *(a1 + 1048);
  *(a1 + 1032) = v33 + 1;
  v35 = __ROR8__(v34, 32);
  *v33 = 0x48000800000;
  v36 = *(a1 + 72);
  *v36 = v35 & 0xFFFFFFFC000000FFLL | 0x200;
  *(a1 + 72) = v36 + 1;
  v362 = 95;
  v364 = 0;
  v365 = 0;
  __p = 0;
  v361 = &unk_2A23F81A0;
  v366 = 6;
  BlitProgramVariant = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(a1 + 1872) + 848), &v361);
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v372, *(*(a1 + 1872) + 848), *(*(*(a1 + 1872) + 848) + 7184));
  v38 = v372;
  *v39.i8 = v373;
  v40 = *(BlitProgramVariant + 3144);
  v372 = vmaxq_s32(v372, v40);
  v41 = *(BlitProgramVariant + 3160);
  v42 = vmax_s32(v373, *v41.i8);
  v43 = v41.i32[3];
  v44 = *(BlitProgramVariant + 3168);
  if (v374 > v41.i32[2])
  {
    v44 = v374;
  }

  v39.i64[1] = __PAIR64__(v375, v374);
  v376 = 1;
  v373 = v42;
  if (v375 > v41.i32[3])
  {
    v43 = v375;
  }

  LODWORD(v374) = v44;
  LODWORD(v375) = v43;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v40, v38), vcgtq_s32(v41, v39)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(&v372, *(a1 + 30328) + 320, 0);
  }

  v45 = *(BlitProgramVariant + 2120);
  do
  {
    IOGPUResourceListAddResource();
    v45 &= ~(1 << __clz(__rbit32(v45)));
  }

  while (v45);
  v357 = BlitProgramVariant;
  v46 = block;
  if (block != -2)
  {
    v175 = 0;
    v176 = &v378;
    v177 = v369;
    while (1)
    {
      v183 = v177;
      if (v175 >= v46)
      {
        v184 = v369;
        if (v175 == v46 + 1)
        {
          v184 = v371;
        }

        if (v175 == v46)
        {
          v183 = v370;
        }

        else
        {
          v183 = v184;
        }
      }

      v185 = v183[1];
      v358 = v177;
      if (v185)
      {
        break;
      }

LABEL_223:
      v205 = v183[7];
      if (v205)
      {
        v374 = 0;
        v375 = 0;
        v372.i64[0] = *(v176 - 1);
        v206 = *(v205 + 584);
        v208 = *(v183 + 16);
        v207 = *(v183 + 17);
        v209 = *(v205 + 144);
        v210 = *(v183 + 18);
        v211 = (*(*v183 + 8))(v183, 1);
        v372.i64[1] = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v206 + 648 * v211, v208, v209 + v207, v210, 0);
        v212 = *(a1 + 80);
        if ((v212 + 44) > *(a1 + 64))
        {
          v229 = *(a1 + 72);
          v230 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0);
          v213 = v357;
          if (v230)
          {
            v231 = *(a1 + 72) + v212 - v229 + 44;
            if (v231 > *(a1 + 64))
            {
              goto LABEL_248;
            }

            *(a1 + 80) = v231;
            GPUAddress = AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, 0);
            v213 = v357;
            *v229 = __ROR8__(GPUAddress, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
          }
        }

        else
        {
          *(a1 + 80) = v212 + 44;
          v213 = v357;
        }

        v214 = *(v213 + 16) + 31;
        v215 = *(a1 + 176);
        v216 = v215 + v214;
        if ((v215 + v214) <= *(a1 + 160))
        {
          goto LABEL_227;
        }

        v233 = *(a1 + 168);
        v234 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
        v213 = v357;
        if (v234)
        {
          v216 = *(a1 + 168) + v215 - v233 + v214;
          if (v216 > *(a1 + 160))
          {
            goto LABEL_248;
          }

LABEL_227:
          *(a1 + 176) = v216;
        }

        v217 = (*(*(v213 + 1784) + 8) - **(v213 + 1784)) + 63;
        v218 = *(a1 + 240);
        v219 = v218 + v217;
        if ((v218 + v217) > *(a1 + 224))
        {
          v235 = *(a1 + 232);
          v236 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 5, 0);
          v213 = v357;
          if (v236)
          {
            v219 = *(a1 + 232) + v218 - v235 + v217;
            if (v219 > *(a1 + 224))
            {
              goto LABEL_248;
            }

            goto LABEL_229;
          }
        }

        else
        {
LABEL_229:
          *(a1 + 240) = v219;
        }

        AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments((a1 + 2120), (a1 + 24), v213, &v372);
        if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLargeMacroblock(v205))
        {
          v178 = 2;
        }

        else
        {
          v178 = 0;
        }

        v179 = *v176 << v178;
        if (v179 <= 7)
        {
          v180 = 1;
        }

        else
        {
          v180 = v179 >> 2;
        }

        LODWORD(v181) = 1640235008;
        DWORD1(v181) = v180;
        *(&v181 + 1) = 1;
        v182 = *(a1 + 72);
        *v182 = v181;
        *(a1 + 72) = v182 + 1;
        ++*(a1 + 1940);
        *(a1 + 1956) += v180;
        v177 = v358;
      }

      ++v175;
      v46 = block;
      v177 += 17;
      v176 += 2;
      if (v175 >= (block + 2))
      {
        goto LABEL_31;
      }
    }

    v374 = 0;
    v375 = 0;
    v372.i64[0] = *(v176 - 17);
    v186 = *(v185 + 584);
    v187 = *(v183 + 4);
    v188 = *(v183 + 5);
    v189 = *(v185 + 144);
    v190 = *(v183 + 6);
    v191 = (*(*v183 + 8))(v183, 0);
    v372.i64[1] = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v186 + 648 * v191, v187, v189 + v188, v190, 0);
    v192 = *(a1 + 80);
    if ((v192 + 44) > *(a1 + 64))
    {
      v221 = *(a1 + 72);
      v222 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0);
      v193 = v357;
      if (v222)
      {
        v223 = *(a1 + 72) + v192 - v221 + 44;
        if (v223 > *(a1 + 64))
        {
          goto LABEL_248;
        }

        *(a1 + 80) = v223;
        v224 = AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, 0);
        v193 = v357;
        *v221 = __ROR8__(v224, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      }
    }

    else
    {
      *(a1 + 80) = v192 + 44;
      v193 = v357;
    }

    v194 = *(v193 + 16) + 31;
    v195 = *(a1 + 176);
    v196 = v195 + v194;
    if ((v195 + v194) > *(a1 + 160))
    {
      v225 = *(a1 + 168);
      v226 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
      v193 = v357;
      if (!v226)
      {
LABEL_214:
        v197 = (*(*(v193 + 1784) + 8) - **(v193 + 1784)) + 63;
        v198 = *(a1 + 240);
        v199 = v198 + v197;
        if ((v198 + v197) > *(a1 + 224))
        {
          v227 = *(a1 + 232);
          v228 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 5, 0);
          v193 = v357;
          if (!v228)
          {
            goto LABEL_216;
          }

          v199 = *(a1 + 232) + v198 - v227 + v197;
          if (v199 > *(a1 + 224))
          {
            goto LABEL_248;
          }
        }

        *(a1 + 240) = v199;
LABEL_216:
        AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments((a1 + 2120), (a1 + 24), v193, &v372);
        if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLargeMacroblock(v185))
        {
          v200 = 2;
        }

        else
        {
          v200 = 0;
        }

        v201 = *(v176 - 32) << v200;
        if (v201 <= 7)
        {
          v202 = 1;
        }

        else
        {
          v202 = v201 >> 2;
        }

        LODWORD(v203) = 1640235008;
        DWORD1(v203) = v202;
        *(&v203 + 1) = 1;
        v204 = *(a1 + 72);
        *v204 = v203;
        *(a1 + 72) = v204 + 1;
        ++*(a1 + 1940);
        *(a1 + 1956) += v202;
        v177 = v358;
        goto LABEL_223;
      }

      v196 = *(a1 + 168) + v195 - v225 + v194;
      if (v196 > *(a1 + 160))
      {
        goto LABEL_248;
      }
    }

    *(a1 + 176) = v196;
    goto LABEL_214;
  }

LABEL_31:
  v47 = 0;
  do
  {
    v356 = v47;
    v48 = *(v379 + *(&AGX::BlitDispatchParametersGen2_3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::validTexelSize + v47));
    if (v48 != -1)
    {
      v366 = v366 & 0xFFFFF800 | (8 * *(&AGX::BlitDispatchParametersGen2_3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::validTexelSize + v47)) | 2;
      v49 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(a1 + 1872) + 848), &v361);
      AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v372, *(*(a1 + 1872) + 848), *(*(*(a1 + 1872) + 848) + 7184));
      v50 = v372;
      *v51.i8 = v373;
      v52 = *(v49 + 3144);
      v53 = *(v49 + 3160);
      v54 = vmax_s32(v373, *v53.i8);
      v372 = vmaxq_s32(v372, v52);
      v55 = v53.i32[3];
      v56 = v53.i32[2];
      if (v374 > v53.i32[2])
      {
        v56 = v374;
      }

      v51.i64[1] = __PAIR64__(v375, v374);
      v376 = 1;
      v373 = v54;
      if (v375 > v53.i32[3])
      {
        v55 = v375;
      }

      LODWORD(v374) = v56;
      LODWORD(v375) = v55;
      if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v52, v50), vcgtq_s32(v53, v51)))))
      {
        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(&v372, *(a1 + 30328) + 320, 0);
      }

      v57 = *(v49 + 2120);
      do
      {
        IOGPUResourceListAddResource();
        v57 &= ~(1 << __clz(__rbit32(v57)));
      }

      while (v57);
      while (1)
      {
        v58 = v371;
        if (block + 1 != v48)
        {
          v58 = v369;
        }

        v59 = v370;
        if (block != v48)
        {
          v59 = v58;
        }

        v60 = block > v48 ? &v369[17 * v48] : v59;
        v61 = v60[1];
        v62 = &v377[v48];
        if (v61)
        {
          break;
        }

LABEL_64:
        v81 = v60[7];
        if (v81)
        {
          v374 = 0;
          v375 = 0;
          v83 = *(v62 + 16);
          v82 = v62 + 8;
          v372.i64[0] = v83;
          v84 = *(v60 + 16);
          v85 = *(v60 + 17);
          v86 = *(v81 + 144);
          v87 = *(v60 + 18);
          v88 = (*(*v60 + 8))(v60, 1);
          v372.i64[1] = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v81, v84, v86 + v85, v87, v88);
          v89 = *(a1 + 80);
          if ((v89 + 44) > *(a1 + 64))
          {
            v107 = *(a1 + 72);
            if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0))
            {
              v108 = *(a1 + 72);
              v109 = v108 + v89 - v107 + 44;
              if (v109 > *(a1 + 64))
              {
                goto LABEL_248;
              }

              *(a1 + 80) = v109;
              *v107 = __ROR8__(*(a1 + 88) + v108, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
            }
          }

          else
          {
            *(a1 + 80) = v89 + 44;
          }

          v90 = *(v49 + 16) + 31;
          v91 = *(a1 + 176);
          v92 = v91 + v90;
          if ((v91 + v90) <= *(a1 + 160))
          {
            goto LABEL_68;
          }

          v110 = *(a1 + 168);
          if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0))
          {
            v92 = *(a1 + 168) + v91 - v110 + v90;
            if (v92 > *(a1 + 160))
            {
              goto LABEL_248;
            }

LABEL_68:
            *(a1 + 176) = v92;
          }

          v93 = (*(*(v49 + 1784) + 8) - **(v49 + 1784)) + 63;
          v94 = *(a1 + 240);
          v95 = v94 + v93;
          if ((v94 + v93) > *(a1 + 224))
          {
            v111 = *(a1 + 232);
            if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 5, 0))
            {
              v95 = *(a1 + 232) + v94 - v111 + v93;
              if (v95 > *(a1 + 224))
              {
                goto LABEL_248;
              }

              goto LABEL_70;
            }
          }

          else
          {
LABEL_70:
            *(a1 + 240) = v95;
          }

          AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments((a1 + 2120), (a1 + 24), v49, &v372);
          v96 = *(v82 + 3);
          v97 = v96 * *(v82 + 2);
          if (v96 == 3)
          {
            v98 = 3;
          }

          else
          {
            v98 = 4;
          }

          v99 = v97 / v98;
          if (v99 <= 1)
          {
            v99 = 1;
          }

          LODWORD(v100) = 1640235008;
          DWORD1(v100) = v99;
          *(&v100 + 1) = 1;
          v101 = *(a1 + 72);
          *v101 = v100;
          *(a1 + 72) = v101 + 1;
          ++*(a1 + 1940);
          *(a1 + 1956) += v99;
        }

        v48 = v381[v48];
        if (v48 == -1)
        {
          goto LABEL_32;
        }
      }

      v374 = 0;
      v375 = 0;
      v372.i64[0] = *v62;
      v63 = *(v60 + 4);
      v64 = *(v60 + 5);
      v65 = *(v61 + 144);
      v66 = *(v60 + 6);
      v67 = (*(*v60 + 8))(v60, 0);
      v372.i64[1] = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v61, v63, v65 + v64, v66, v67);
      v68 = *(a1 + 80);
      if ((v68 + 44) > *(a1 + 64))
      {
        v102 = *(a1 + 72);
        if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0))
        {
          v103 = *(a1 + 72);
          v104 = v103 + v68 - v102 + 44;
          if (v104 > *(a1 + 64))
          {
            goto LABEL_248;
          }

          *(a1 + 80) = v104;
          *v102 = __ROR8__(*(a1 + 88) + v103, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
        }
      }

      else
      {
        *(a1 + 80) = v68 + 44;
      }

      v69 = *(v49 + 16) + 31;
      v70 = *(a1 + 176);
      v71 = v70 + v69;
      if ((v70 + v69) > *(a1 + 160))
      {
        v105 = *(a1 + 168);
        if (!AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0))
        {
LABEL_56:
          v72 = (*(*(v49 + 1784) + 8) - **(v49 + 1784)) + 63;
          v73 = *(a1 + 240);
          v74 = v73 + v72;
          if ((v73 + v72) > *(a1 + 224))
          {
            v106 = *(a1 + 232);
            if (!AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 5, 0))
            {
              goto LABEL_58;
            }

            v74 = *(a1 + 232) + v73 - v106 + v72;
            if (v74 > *(a1 + 224))
            {
              goto LABEL_248;
            }
          }

          *(a1 + 240) = v74;
LABEL_58:
          AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments((a1 + 2120), (a1 + 24), v49, &v372);
          v75 = *(v62 + 3);
          v76 = v75 * *(v62 + 2);
          if (v75 == 3)
          {
            v77 = 3;
          }

          else
          {
            v77 = 4;
          }

          v78 = v76 / v77;
          if (v78 <= 1)
          {
            v78 = 1;
          }

          LODWORD(v79) = 1640235008;
          DWORD1(v79) = v78;
          *(&v79 + 1) = 1;
          v80 = *(a1 + 72);
          *v80 = v79;
          *(a1 + 72) = v80 + 1;
          ++*(a1 + 1940);
          *(a1 + 1956) += v78;
          goto LABEL_64;
        }

        v71 = *(a1 + 168) + v70 - v105 + v69;
        if (v71 > *(a1 + 160))
        {
          goto LABEL_248;
        }
      }

      *(a1 + 176) = v71;
      goto LABEL_56;
    }

LABEL_32:
    v47 = v356 + 4;
  }

  while (v356 != 20);
  v114 = *(a1 + 72);
  v115 = *(a1 + 80);
  if ((v115 + 4) > *(a1 + 64))
  {
    v353 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0);
    v10 = a1 + 78496;
    v116 = *(a1 + 72);
    if (!v353)
    {
      goto LABEL_109;
    }

    v354 = v116 + v115 - v114 + 4;
    if (v354 <= *(a1 + 64))
    {
      *(a1 + 80) = v354;
      v10 = a1 + 78496;
      *v114 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      v116 = *(a1 + 72);
      goto LABEL_109;
    }

LABEL_248:
    abort();
  }

  *(a1 + 80) = v115 + 4;
  v116 = v114;
  v10 = a1 + 78496;
LABEL_109:
  *v116 = 536871298;
  *(a1 + 72) = v116 + 4;
  if (!*(*(a1 + 1912) + 520))
  {
    v117 = *(a1 + 1968) - *(a1 + 1984);
    *(v117 + 140) = 1;
    if ((*(v117 + 136) & 4) != 0)
    {
      **(a1 + 8) = 1;
    }
  }

  v361 = &unk_2A23F81E0;
  if (__p)
  {
    v364 = __p;
    operator delete(__p);
  }

  v118 = *(a1 + 30328);
  *(v118 + 1606) = 1;
  *(v118 + 585) = 1;
  *(v118 + 581) = 1;
  *(v118 + 2224) = 1;
  *(v118 + 544) = 0;
  *(v118 + 528) = 0;
  *(v118 + 496) = 0u;
  *(v118 + 512) = 0u;
  *(v118 + 700) = 8;
  *(v118 + 1708) = 8;
  v119 = *(a1 + 72);
  *(a1 + 72) = v119 + 1;
  *v119 = *(v355 + 12);
  v120 = *(v10 + 8);
  v121 = *(v10 + 16);
  v122 = *v10;
  if (!*v10)
  {
    v123 = *(v10 + 16);
    v122 = *(v10 + 8);
    v124 = *(v10 + 24);
    if (v121)
    {
      goto LABEL_117;
    }

    goto LABEL_252;
  }

  if (!v120)
  {
    v123 = *(v10 + 16);
    v124 = *(v10 + 24);
    if (v121)
    {
      goto LABEL_117;
    }

    goto LABEL_252;
  }

  AGX::FenceList::merge(*v10, v120);
  v123 = *(v10 + 16);
  v124 = *(v10 + 24);
  if (!v123)
  {
LABEL_252:
    v121 = v124;
    goto LABEL_253;
  }

LABEL_117:
  if (v124)
  {
    AGX::FenceList::merge(v123, v124);
  }

LABEL_253:
  if (FenceEncoder::encode((a1 + 1880), 1, *(a1 + 30320), v121, v122, 0, 0))
  {
    *(v10 + 976) |= 0x20000uLL;
  }

LABEL_426:
  v335 = *(a1 + 30328);
  *(v335 + 564) = *(v10 + 64);
  *(v335 + 583) = 0;
  v336 = *(v10 + 72);
  if (!v336 || (v338 = *(v10 + 80), v337 = *(v10 + 84), (v338 & v337) == 0xFFFFFFFF))
  {
    *(v335 + 596) = -1;
    *(v335 + 588) = -1;
  }

  else
  {
    *(v335 + 588) = [v336 resourceID];
    *(v335 + 592) = v338;
    *(v335 + 596) = v337;
    v10 = a1 + 78496;
  }

  *(v10 + 80) = -1;
  v339 = *(v10 + 72);
  if (!v339 || (v341 = *(v10 + 88), v340 = *(v10 + 92), (v341 & v340) == 0xFFFFFFFF))
  {
    *(v335 + 1624) = -1;
    *(v335 + 1632) = -1;
  }

  else
  {
    *(v335 + 1624) = [v339 resourceID];
    *(v335 + 1628) = v341;
    *(v335 + 1632) = v340;
    v10 = a1 + 78496;
  }

  *(v10 + 88) = -1;
  if (*(v10 + 984) != *(v10 + 992) || *(v10 + 1032) != *(v10 + 1040) || *(v10 + 1008) != *(v10 + 1016) || *(v10 + 1056) != *(v10 + 1064))
  {
    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::encodeTimestampLists(a1, *(a1 + 30320), (v10 + 984), (a1 + 79504), (a1 + 79528), (a1 + 79552));
    v10 = a1 + 78496;
  }

  v342 = *(a1 + 30328);
  *(v342 + 2068) = *(a1 + 1928);
  *(v342 + 2064) = *(a1 + 1924);
  *(v342 + 2072) = *(a1 + 1932);
  *(v342 + 184) = 0x3A0012006B0003;
  *(v342 + 192) = 1;
  *(v342 + 1615) = 0;
  *(v342 + 582) = 0;
  {
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::endRenderPassCommon(BOOL,BOOL,BOOL,BOOL)::pdmPipelineBarrierType = 1;
  }

  if ((AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::endRenderPassCommon(BOOL,BOOL,BOOL,BOOL)::pdmPipelineBarrierType & 1) == 0)
  {
    *(*(a1 + 30328) + 1620) = 0;
  }

  {
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::endRenderPassCommon(BOOL,BOOL,BOOL,BOOL)::vdmPipelineBarrierType = 1;
  }

  if ((AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::endRenderPassCommon(BOOL,BOOL,BOOL,BOOL)::vdmPipelineBarrierType & 1) == 0)
  {
    *(*(a1 + 30328) + 600) = 0;
  }

LABEL_445:
  *(v355 + 208) = 0;
  v343 = *(a1 + 30328);
  if (*(v10 + 248))
  {
    AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getAttachmentInfo(*(a1 + 2392), (a1 + 78760), (a1 + 78824), a1 + 78888, a1 + 78936, (a1 + 78984), (a1 + 78992), a1 + 79000, a1 + 79006, (a1 + 79012), (a1 + 79016), (a1 + 79020), v343 + 720);
    *(v10 + 528) = *(v343 + 1168);
    *(v10 + 544) = *(v343 + 968);
    *(v10 + 248) = *(v10 + 248) & 0xFFFFFEFF | ((*(v343 + 1728) != 0) << 8);
    v343 = *(a1 + 30328);
  }

  v344 = AGX::GtpContinueKeyGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::computeHash((v10 + 248), (v343 + 607));
  v349 = *(a1 + 30328);
  *(v349 + 604) = v344;
  if (v344)
  {
    *(v349 + 583) = 0;
    *(v349 + 1168) &= ~1uLL;
  }

  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::endCommand(a1, v345, v346, v347, v348);
  *(a1 + 30320) = 0;
  *(a1 + 30328) = 0;
  if ((*(a1 + 2077) & 1) != 0 || (*(a1 + 2078) & 1) == 0 && (*(a1 + 2074) != 1 || *(a1 + 2073) == 1))
  {
    AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::reset(*(a1 + 2008));
  }
}