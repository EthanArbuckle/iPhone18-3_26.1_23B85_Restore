double AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::endComputePass(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 2292) == 1)
  {
    v5 = *(a1 + 5552);
    if (v5)
    {
      if (!*v5)
      {
        v6 = *(a1 + 5560);
        *&v7 = 0x6000000060000000;
        *(&v7 + 1) = 0x6000000060000000;
        *v6 = v7;
        *(v6 + 16) = v7;
        *(v6 + 32) = 0x6000000060000000;
      }
    }
  }

  if (a2 && **MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  v8 = *(a1 + 4904);
  if (v8)
  {
    LODWORD(v8) = *(v8 + 528);
  }

  v9 = *(a1 + 4896);
  if (v9)
  {
    LODWORD(v9) = *(v9 + 528);
  }

  v10 = v9 + v8;
  v11 = *a1;
  if (([*a1 skipRender] & 1) != 0 || (*(a1 + 5442) & 2) != 0 || (*(a1 + 5442) & 1) != 0 && !v10 && !*(a1 + 2028) && !*(a1 + 2032) && !*(a1 + 2036) && !*(a1 + 2040) && !*(a1 + 2044) && !*(a1 + 2048) && !*(a1 + 2052) && !*(a1 + 2056))
  {
    v12 = *(a1 + 1968) - *(a1 + 1984);
    *(v12 + 140) = 1;
    if ((*(v12 + 136) & 4) != 0)
    {
      **(a1 + 8) = 1;
    }
  }

  if (([v11 skipRender] & 1) == 0 && (*(a1 + 5442) & 3) == 1 && (v10 || *(a1 + 2028) || *(a1 + 2032) || *(a1 + 2036) || *(a1 + 2040) || *(a1 + 2044) || *(a1 + 2048) || *(a1 + 2052) || *(a1 + 2056)))
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(a1, a3, 0, 0, 0);
    *(a1 + 2306) = 0;
  }

  if (*(a1 + 4976))
  {
    v18 = *(a1 + 4980);
    LODWORD(block) = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(a3, a1 + 24, 4, 0, 1, v18, &block);
    v19 = a1 + 32 * a3;
    v20 = *(v19 + 72);
    *v20 = -1610612736;
    *(v19 + 72) = v20 + 1;
  }

  v21 = a1 + 2320;
  if (!*(*(a1 + 2320) + 132))
  {
    if (*(a1 + 2184))
    {
      AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::patchCDMControlStreamAndReset(a1 + 2152, a1, *(a1 + 5024), *(a1 + 5032), *(a1 + 5040));
    }

    v22 = a1 + 32 * a3;
    v23 = *(v22 + 72);
    v24 = v23 + *(v22 + 88);
    *(v22 + 72) = v23 + 1;
    *v23 = 0x40000000;
    v25 = *(a1 + 2328);
    *(v25 + 96) = v24;
    if (v10)
    {
      FenceEncoder::encode((a1 + 1880), 1, *(a1 + 2320), *(a1 + 4904), *(a1 + 4896), 0, 0);
      *(a1 + 5592) |= 0x20000uLL;
      v25 = *(a1 + 2328);
    }

    *(v25 + 196) = *(a1 + 1928);
    *(v25 + 192) = *(a1 + 1924);
    *(v25 + 200) = *(a1 + 1932);
    v26 = *(a1 + 5160);
    if (!v26 || (v27 = *(a1 + 5172), v28 = *(a1 + 5168), (v28 & v27) == 0xFFFFFFFF))
    {
      *(v25 + 604) = -1;
      *(v25 + 596) = -1;
    }

    else
    {
      *(v25 + 596) = [v26 resourceID];
      *(v25 + 600) = v28;
      *(v25 + 604) = v27;
    }

    *(a1 + 5168) = -1;
    if (*(a1 + 5816) != *(a1 + 5824) || *(a1 + 5840) != *(a1 + 5848))
    {
      AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::encodeTimestampLists(a1, *(a1 + 2320), (a1 + 5816), (a1 + 5840), 0, 0);
      *(a1 + 5824) = *(a1 + 5816);
      *(a1 + 5848) = *(a1 + 5840);
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::finalizeScsParameters(*(a1 + 5680), a1 + 5688);
    if (WORD2(*(a1 + 5696)) | HIWORD(*(a1 + 5696)))
    {
      v29 = *(*(a1 + 1872) + 848);
      block = MEMORY[0x29EDCA5F8];
      v103 = 3221225472;
      v104 = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36setupDriverIntersectionTableIfNeededEv_block_invoke;
      v105 = &__block_descriptor_40_e5_v8__0l;
      v106 = v29;
      if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken != -1)
      {
        dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, &block);
      }

      v30 = *(v29 + 6288);
      v31 = (a1 + 5048);
      v32 = *(v30 + 72);
      v34 = *(a1 + 5048);
      v33 = *(a1 + 5064);
      v35 = v34.i32[0];
      if (v34.i32[0] <= v32)
      {
        v35 = *(v30 + 72);
      }

      *(a1 + 5048) = v35;
      v36 = v34.i32[1];
      v37 = *(v30 + 76);
      if (v34.i32[1] <= v37)
      {
        v36 = *(v30 + 76);
      }

      *(a1 + 5052) = v36;
      v38 = v34.i32[2];
      v39 = *(v30 + 80);
      if (v34.i32[2] <= v39)
      {
        v38 = *(v30 + 80);
      }

      *(a1 + 5056) = v38;
      v40 = v34.i32[3];
      v41 = *(v30 + 84);
      if (v34.i32[3] <= v41)
      {
        v40 = *(v30 + 84);
      }

      *(a1 + 5060) = v40;
      v42 = *(v30 + 88);
      v43 = v33.i32[0];
      if (v33.i32[0] <= v42)
      {
        v43 = *(v30 + 88);
      }

      *(a1 + 5064) = v43;
      v44 = *(v30 + 92);
      v45 = v33.i32[1];
      if (v33.i32[1] <= v44)
      {
        v45 = *(v30 + 92);
      }

      *(a1 + 5068) = v45;
      v46 = *(v30 + 96);
      v47 = v33.i32[2];
      if (v33.i32[2] <= v46)
      {
        v47 = *(v30 + 96);
      }

      *(a1 + 5072) = v47;
      v48.i64[0] = __PAIR64__(v44, v42);
      v48.i32[2] = v46;
      v48.i32[3] = *(v30 + 100);
      v49.i64[0] = __PAIR64__(v37, v32);
      v49.i64[1] = __PAIR64__(v41, v39);
      v50 = v33.i32[3];
      if (v33.i32[3] <= v48.i32[3])
      {
        v50 = *(v30 + 100);
      }

      *(a1 + 5076) = v50;
      v51 = (a1 + 5080);
      v52 = *(v30 + 104);
      v53 = *(a1 + 5080);
      v54 = v53.i32[0];
      if (v53.i32[0] <= v52)
      {
        v54 = *(v30 + 104);
      }

      *(a1 + 5080) = v54;
      v55 = *(v30 + 108);
      v56 = v53.i32[1];
      if (v53.i32[1] <= v55)
      {
        v56 = *(v30 + 108);
      }

      *(a1 + 5084) = v56;
      v57 = *(v30 + 112);
      v58 = v53.i32[2];
      if (v53.i32[2] <= v57)
      {
        v58 = *(v30 + 112);
      }

      *(a1 + 5088) = v58;
      v59 = *(v30 + 116);
      v60 = v53.i32[3];
      if (v53.i32[3] <= v59)
      {
        v60 = *(v30 + 116);
      }

      *(a1 + 5092) = v60;
      v61 = *(v30 + 120);
      v62 = *(a1 + 5096);
      if (v62 <= v61)
      {
        v63 = *(v30 + 120);
      }

      else
      {
        v63 = *(a1 + 5096);
      }

      *(a1 + 5096) = v63;
      if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v49, v34), vcgtq_s32(v48, v33)))) & 1) != 0 || ((v64.i64[0] = __PAIR64__(v55, v52), v64.i64[1] = __PAIR64__(v59, v57), (vaddvq_s32(vandq_s8(vcgtq_s32(v64, v53), xmmword_29D2F1960)) & 0xF) == 0) ? (v65 = v62 < v61) : (v65 = 1), v65))
      {
        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 5048, *(a1 + 2328) + 336, 0);
      }

      v66 = *(a1 + 4544);
      v67 = *(*(a1 + 1872) + 848);
      block = v66 + 1544;
      v103 = a1 + 4824;
      AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::addToResourceList(v67 + 3534, &block);
      v68 = *(*(a1 + 4824) + 16);
      v69 = *(a1 + 2328);
      v69[65] = *(v66 + 1544) & 0xFFFFFFFFFFC0;
      v69[66] = (v68 >> 14) & 0x1FFFFFF;
      v70 = ((*(v30 + 188) & 0x3FFFF) << 7) | 0xC0000000;
      v69[63] = (*(v66 + 1544) + (*(v30 + 184) << 7)) & 0xFFFFFFFFFFC0 | 0x8000000000000;
      v69[64] = v70;
      IOGPUResourceListAddResource();
      v71 = *(v30 + 16);
      if (v71 != (v30 + 24))
      {
        do
        {
          IOGPUResourceListAddResource();
          v72 = v71[1];
          if (v72)
          {
            do
            {
              v73 = v72;
              v72 = *v72;
            }

            while (v72);
          }

          else
          {
            do
            {
              v73 = v71[2];
              v74 = *v73 == v71;
              v71 = v73;
            }

            while (!v74);
          }

          v71 = v73;
        }

        while (v73 != (v30 + 24));
      }

      v75 = *(a1 + 2328);
      *(v75 + 536) = *(v30 + 40);
      *(v75 + 544) = *(v30 + 48);
      if (!*(a1 + 5699))
      {
        *(*v21 + 132) = 1;
      }

      SectionEnd = *(a1 + 5724);
      if (!SectionEnd)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1 + 5696, 10);
        *(a1 + 5724) = SectionEnd;
      }

      *(v75 + 552) = SectionEnd;
      v77 = *(a1 + 5800);
      if (v77 == -1)
      {
        v101 = *(a1 + 5698);
        if (v101 > 1)
        {
          ++v101;
        }

        v77 = 8 * v101;
        *(a1 + 5800) = v77;
      }

      v78 = (a1 + 5064);
      *(v75 + 556) = v77;
      *(v75 + 560) = *(a1 + 5699);
      *(v75 + 564) = *(a1 + 5696);
      *(v75 + 568) = *(a1 + 5698);
      v79 = *(a1 + 5804);
      if (v79 == -1)
      {
        v79 = (RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1 + 5696, 12) + 0x1FFF) & 0xFFFFF000;
        *(a1 + 5804) = v79;
      }

      v80 = (v79 + 4095) >> 12;
      v81 = (4 * v80 + 1023) >> 10;
      v82 = *v31;
      v83.i64[0] = 0;
      v83.i32[2] = 0;
      *v31 = vmaxq_s32(*v31, 0);
      v16 = *v78;
      *v78 = vmaxq_s32(*v78, 0);
      v13 = *v51;
      v83.i32[3] = v80;
      *v51 = vmaxq_s32(*v51, v83);
      v84 = *(a1 + 5096);
      v85 = vorrq_s8(v16, v82);
      *v85.i8 = vorr_s8(*v85.i8, *&vextq_s8(v85, v85, 8uLL));
      v86 = v85.i32[0] | v85.i32[1];
      if (v84 <= v81)
      {
        v87 = (4 * v80 + 1023) >> 10;
      }

      else
      {
        v87 = *(a1 + 5096);
      }

      v88 = vdup_laneq_s32(v13, 2);
      v88.i32[0] = v86;
      *(a1 + 5096) = v87;
      v89 = vorr_s8(v88, *v13.i8);
      v15 = vdup_lane_s32(v89, 1);
      v14 = COERCE_DOUBLE(vorr_s8(v89, v15));
      if ((LODWORD(v14) & 0x80000000) != 0 || v13.i32[3] < v80 || v84 < v81)
      {
        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 5048, v75 + 336, 0);
        v75 = *(a1 + 2328);
      }
    }

    else
    {
      v75 = *(a1 + 2328);
      *(v75 + 564) = 8;
    }

    *(v75 + 104) = 0;
    *(v75 + 589) = 0;
    {
    }

    *(*(a1 + 2328) + 590) = *(a1 + 1961);
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::endComputePass(BOOL,eAGXDataBufferPools)::pipelineBarrierType = 1;
    }

    if ((AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::endComputePass(BOOL,eAGXDataBufferPools)::pipelineBarrierType & 1) == 0)
    {
      *(*(a1 + 2328) + 608) = 0;
    }
  }

  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(a1 + 5048, 0, 0, 0, 0, 0, 0, *v13.i64, v14, *&v15, *v16.i64, v17))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 5048, *(a1 + 2328) + 336, 0);
  }

  *v21 = 0;
  *(a1 + 2328) = 0;
  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::endCommand(a1, v90, v91, v92, v93);
  AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::reset(*(a1 + 2008));
  v94 = *(a1 + 5188);
  v95 = *(a1 + 5192);
  v96 = *(a1 + 1872) + 856;
  v97 = *(*(a1 + 1872) + 1136);
  if (v94 >= v95)
  {
    if (v97 < v94)
    {
      v99 = *(*(a1 + 1872) + 1136);
      do
      {
        atomic_compare_exchange_strong_explicit((v96 + 280), &v99, v94, memory_order_relaxed, memory_order_relaxed);
        if (v99 == v97)
        {
          break;
        }

        v97 = v99;
      }

      while (v99 < v94);
    }
  }

  else if (v97 < v95)
  {
    v98 = *(*(a1 + 1872) + 1136);
    do
    {
      atomic_compare_exchange_strong_explicit((v96 + 280), &v98, v95, memory_order_relaxed, memory_order_relaxed);
      if (v98 == v97)
      {
        break;
      }

      v97 = v98;
    }

    while (v98 < v95);
  }

  result = 0.0;
  *(a1 + 5188) = 0;
  return result;
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginComputePass(uint64_t a1, int a2, uint64_t a3)
{
  v6 = (a1 + 4096);
  if (a2)
  {
    v7 = MEMORY[0x29EDC56B0];
    v8 = *MEMORY[0x29EDC56B0];
    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
      v8 = *v7;
    }

    if (*v8)
    {
      IOGPUDeviceTraceEvent();
    }
  }

  v6[1346] = v6[1346] & 0xFC | 1;
  v6[1768] = 0;
  if (v6[1360] == 1)
  {
    v6[1360] = 0;
  }

  v9 = AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::newCommand(a1, 816, 0);
  *(v9 + 17) = 0;
  v9[33] = 0;
  *(v9 + 37) = xmmword_29D2F1720;
  *(v9 + 41) = 0;
  *(v9 + 45) = 0;
  *(v9 + 43) = 0;
  *(a1 + 2320) = v9;
  v9 += 48;
  *(a1 + 2328) = v9;
  bzero(v9, 0x268uLL);
  {
  }

  if (((1 << a3) & 0xFFF339E0480) != 0 && !*(a1 + 32 * a3 + 72))
  {
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, a3);
  }

  v102 = a3;
  v10 = (*(a1 + 48) + (a3 << 6));
  v11 = *(a1 + 2328);
  *v11 = *v10 + v10[3] - v10[1];
  *(v11 + 216) = 0;
  *(v11 + 240) = 0;
  *(v11 + 333) = 0;
  *(v11 + 584) = 0;
  *(v11 + 208) = 0;
  *(v11 + 96) = 0;
  *(v11 + 500) = 0;
  *(v11 + 164) = 28;
  *(v11 + 608) = 0;
  if (*(a1 + 4976))
  {
    *(v11 + 500) = 1;
    *(a1 + 4980) = 0u;
  }

  *(a1 + 5096) = 0;
  *(a1 + 5064) = 0u;
  *(a1 + 5080) = 0u;
  v103 = (a1 + 5048);
  *(a1 + 5048) = 0u;
  AGX::ContextSwitcherGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupComputeCommand(*(a1 + 2128), v11, a1 + 24);
  v12 = *(a1 + 4544);
  *(v12 + 1360) = 0u;
  *(v12 + 1392) = 0u;
  v13 = *(a1 + 4544);
  *(v13 + 1496) = 0;
  *(v13 + 1424) = 0u;
  *(v13 + 1536) = 0u;
  v14 = a1 + 64;
  v15 = *(a1 + 1864) - 1;
  v104 = a2;
  if (v15 > 6)
  {
    v16 = 10;
  }

  else
  {
    v16 = dword_29D2F76D0[v15];
  }

  v17 = v16;
  v18 = (v14 + 32 * v16);
  if (((1 << v16) & 0xFFF00000480) != 0 && !v18[1] && (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v16, 0) & 1) == 0)
  {
LABEL_109:
    abort();
  }

  v19 = v18[1] + 15;
  if (v19 <= *v18)
  {
    goto LABEL_20;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v17, 0))
  {
    v19 = v18[1] + 15;
    if (v19 > *v18)
    {
      goto LABEL_109;
    }

LABEL_20:
    v18[2] = v19;
  }

  v20 = *(a1 + 1864) - 1;
  if (v20 > 6)
  {
    v21 = 10;
    v22 = 10;
  }

  else
  {
    v21 = qword_29D2F76F0[v20];
    v22 = dword_29D2F76D0[v20];
  }

  v23 = v14 + 32 * v21;
  v24 = (*(v23 + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v23 + 24);
  *(v23 + 8) = v24 + 8;
  v26 = v22;
  v27 = (v14 + 32 * v22);
  if (((0xFFF00000480uLL >> v22) & 1) != 0 && !v27[1])
  {
    v95 = v25;
    v96 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v22, 0);
    v25 = v95;
    if (!v96)
    {
      goto LABEL_109;
    }
  }

  v28 = v27[1] + 15;
  if (v28 <= *v27)
  {
    goto LABEL_27;
  }

  v86 = v25;
  v87 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v26, 0);
  v25 = v86;
  if (v87)
  {
    v28 = v27[1] + 15;
    if (v28 > *v27)
    {
      goto LABEL_109;
    }

LABEL_27:
    v27[2] = v28;
  }

  v29 = *(a1 + 1864) - 1;
  if (v29 > 6)
  {
    v30 = 10;
    v31 = 10;
  }

  else
  {
    v30 = qword_29D2F76F0[v29];
    v31 = dword_29D2F76D0[v29];
  }

  v32 = v14 + 32 * v30;
  v33 = (*(v32 + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = *(v32 + 24);
  *(v32 + 8) = v33 + 8;
  v35 = v31;
  v36 = (v14 + 32 * v31);
  if (((0xFFF00000480uLL >> v31) & 1) != 0 && !v36[1])
  {
    v97 = v25;
    v98 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v31, 0);
    v25 = v97;
    if (!v98)
    {
      goto LABEL_109;
    }
  }

  v37 = v36[1] + 15;
  if (v37 <= *v36)
  {
    goto LABEL_34;
  }

  v88 = v35;
  v89 = v25;
  v90 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v88, 0);
  v25 = v89;
  if (v90)
  {
    v37 = v36[1] + 15;
    if (v37 > *v36)
    {
      goto LABEL_109;
    }

LABEL_34:
    v36[2] = v37;
  }

  v38 = *(a1 + 1864) - 1;
  if (v38 > 6)
  {
    v39 = 10;
    v40 = 10;
  }

  else
  {
    v39 = qword_29D2F76F0[v38];
    v40 = dword_29D2F76D0[v38];
  }

  v41 = v14 + 32 * v39;
  v42 = (*(v41 + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = *(v41 + 24);
  *(v41 + 8) = v42 + 8;
  v44 = v40;
  v45 = (v14 + 32 * v40);
  if (((0xFFF00000480uLL >> v40) & 1) != 0 && !v45[1])
  {
    v101 = v25;
    v99 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v40, 0);
    v25 = v101;
    if (!v99)
    {
      goto LABEL_109;
    }
  }

  v46 = v45[1] + 15;
  if (v46 <= *v45)
  {
    goto LABEL_41;
  }

  v91 = v44;
  v92 = v25;
  v93 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v91, 0);
  v25 = v92;
  if (v93)
  {
    v46 = v45[1] + 15;
    if (v46 > *v45)
    {
      goto LABEL_109;
    }

LABEL_41:
    v45[2] = v46;
  }

  v47 = v24 + v25;
  v48 = *(a1 + 1864) - 1;
  if (v48 > 6)
  {
    v49 = 10;
  }

  else
  {
    v49 = qword_29D2F76F0[v48];
  }

  v50 = v14 + 32 * v49;
  v51 = (*(v50 + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = v51 + *(v50 + 24);
  *(v50 + 8) = v51 + 8;
  v53 = *(a1 + 2328);
  *(v53 + 144) = 1;
  *(v53 + 112) = v47;
  *(v53 + 120) = v33 + v34;
  *(v53 + 128) = v42 + v43;
  *(v53 + 136) = v52;
  v54 = MEMORY[0x29EDC5638];
  if (*(a1 + 2305) == 1)
  {
    v55 = *(*(a1 + 1872) + 848);
    v56 = *(v55 + 6320);
    if (*(a1 + 4960) != v56)
    {
      v57 = *(v55 + 6832);
      if (v57)
      {
        do
        {
          IOGPUResourceListAddResource();
          v57 = *v57;
        }

        while (v57);
        v55 = *(*(a1 + 1872) + 848);
      }

      for (i = *(v55 + 6664); i; i = *i)
      {
        IOGPUResourceListAddResource();
      }

      *(a1 + 4960) = v56;
    }
  }

  if ((v104 & 1) == 0)
  {
    *(a1 + 5480) = 0;
    *(a1 + 5464) = 0u;
    v59 = *(a1 + 168);
    v60 = v59 + 47;
    if ((v59 + 47) > *(a1 + 160))
    {
      v100 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
      v59 = *(a1 + 168);
      if (!v100)
      {
        goto LABEL_56;
      }

      v60 = v59 + 47;
      if ((v59 + 47) > *(a1 + 160))
      {
        goto LABEL_109;
      }
    }

    *(a1 + 176) = v60;
LABEL_56:
    v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
    v62 = v61 + *(a1 + 184);
    *(a1 + 168) = v61 + 32;
    *(a1 + 4912) |= 0x10000000000uLL;
    *(a1 + 4944) |= 1u;
    *(*(a1 + 4544) + 1344) = v62;
    *(a1 + 4624) = *(*(a1 + 48) + 224) + *v54;
    v63 = *(a1 + 5464);
    *(v61 + 16) = *(a1 + 5480);
    *v61 = v63;
  }

  if (!*(*(a1 + 1912) + 520))
  {
    v6[1346] |= 2u;
  }

  if (*(*(*(a1 + 1872) + 848) + 16472))
  {
    IOGPUResourceListAddResource();
  }

  *(a1 + 4952) = 0;
  v6[868] = 0;
  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::createScsParameters(&v105, a1, 3);
  *(a1 + 5672) = v105;
  *(a1 + 4912) |= 0x2000000000000000uLL;
  *(a1 + 4944) |= 1u;
  v64 = v106;
  *(*(a1 + 4544) + 1512) = v105;
  *(a1 + 4792) = v64;
  v65 = *(a1 + 168);
  v66 = v65 + 103;
  if ((v65 + 103) <= *(a1 + 160))
  {
LABEL_62:
    *(a1 + 176) = v66;
    goto LABEL_63;
  }

  v94 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
  v65 = *(a1 + 168);
  if (v94)
  {
    v66 = v65 + 103;
    if ((v65 + 103) > *(a1 + 160))
    {
      goto LABEL_109;
    }

    goto LABEL_62;
  }

LABEL_63:
  v67 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  v68 = v67 + *(a1 + 184);
  *(a1 + 5488) = v68;
  *(a1 + 168) = v67 + 88;
  *(a1 + 5496) = v67;
  *(*(a1 + 4544) + 1416) = v68;
  v69 = *(a1 + 5568);
  if (v69)
  {
    *(v67 + 80) = *(a1 + 5576) + *(v69 + *v54 + 8);
    IOGPUResourceListAddResource();
  }

  if (v104)
  {
    v70 = *(a1 + 2336);
    if (v70)
    {
      v71 = v70[2];
      AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::bindResources(v70);
      v76 = *(a1 + 2336);
      v77 = v76[43];
      v78 = v76[52];
      v79 = v76[46];
      v80 = *(a1 + 2104);
      v81 = *(a1 + 2096);
      if (v80 <= 1)
      {
        v80 = 1;
      }

      v82 = 4 * v80 * ((*(v71 + 4084) + 3) >> 2);
      if (v82 * v81.i32[0] * v81.i32[1])
      {
        v72 = 0x1F0000001FLL;
        v81 = vand_s8(vneg_s32(vclz_s32(vadd_s32(v81, -1))), 0x1F0000001FLL);
        v83 = v82 * (1 << v81.i8[0] << v81.i8[4]);
      }

      else
      {
        v83 = 0;
      }

      v84 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(v103, v78 + v77, *(v71 + 1308), v79, *(a1 + 5152), v83, 0, *&v81, *&v72, v73, v74, v75);
      v85 = *(*(a1 + 2336) + 608);
      if (v85)
      {
        if (((v84 | AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom(v103, v85)) & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      else if ((v84 & 1) == 0)
      {
        goto LABEL_74;
      }

      AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v103, *(a1 + 2328) + 336, 0);
    }
  }

LABEL_74:
  if (*(a1 + 2292) == 1 && !*(a1 + 4976))
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(a1, v102, (a1 + 5544), (a1 + 5552), (a1 + 5560));
  }

  if (*(a1 + 5160))
  {
    if (*(a1 + 1896))
    {
      MTLResourceListAddResource();
    }

    IOGPUResourceListAddResource();
  }

  if (v6[1712] == 1)
  {
    *(a1 + 2060) |= 4u;
  }
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(uint64_t a1)
{
  v2 = *(a1 + 4976) != 0;
  v3 = *(a1 + 4980);
  LODWORD(v29) = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, a1 + 24, 36, 0, v2, v3, &v29);
  v4 = *(a1 + 4976) != 0;
  v5 = *(a1 + 4980);
  LODWORD(v29) = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, 44, 0, v4, v5, &v29);
  if (!*(*(a1 + 1912) + 520))
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::restartComputePass(a1, 22);
    v19 = *(a1 + 4976) != 0;
    v20 = *(a1 + 4980);
    LODWORD(v29) = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, a1 + 24, 36, 0, v19, v20, &v29);
    v21 = *(a1 + 4976) != 0;
    v22 = *(a1 + 4980);
    LODWORD(v29) = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, 44, 0, v21, v22, &v29);
  }

  *(a1 + 5656) = *(a1 + 4980);
  *(a1 + 5660) = 1;
  if (*(a1 + 4976))
  {
    *(a1 + 4980) = 0;
    v6 = *(a1 + 776);
    *v6 = -1610612735;
    *(a1 + 776) = v6 + 1;
    if (*(a1 + 2306))
    {
      v7 = 1610617184;
    }

    else
    {
      v7 = 1610613088;
    }

    {
      v26 = v7;
      v7 = v26;
      if (v23)
      {
        v7 = v26;
      }
    }

    v8 = *(a1 + 776);
    *v8 = v7;
    *(a1 + 4980) = 1;
    *(a1 + 4988) = 0;
    v8[1] = -1610612734;
    *(a1 + 776) = v8 + 2;
    if (*(a1 + 2306))
    {
      v9 = 1610617184;
    }

    else
    {
      v9 = 1610613088;
    }

    {
      v27 = v9;
      v9 = v27;
      if (v24)
      {
        v9 = v27;
      }
    }

    v10 = *(a1 + 776);
    *v10 = v9;
    v10[1] = -1610612736;
    *(a1 + 4980) = -1;
    v10[2] = 1610613504;
    *(a1 + 776) = v10 + 3;
    *(a1 + 2306) = 0;
    ++*(a1 + 4992);
  }

  else if (*(a1 + 2292) == 1)
  {
    if (*(a1 + 2306))
    {
      v11 = 1610617184;
    }

    else
    {
      v11 = 1610613088;
    }

    {
      v28 = v11;
      v11 = v28;
      if (v25)
      {
        v11 = v28;
      }
    }

    v12 = *(a1 + 776);
    *v12 = v11;
    *(a1 + 776) = v12 + 1;
    *(a1 + 2306) = 0;
  }

  v13 = *(a1 + 1160);
  if (!v13)
  {
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, 0x22u);
    v13 = *(a1 + 1160);
  }

  v14 = *(a1 + 776);
  *v14 = __ROR8__(*(a1 + 1176) + v13, 32) & 0xFFFFFFFF0000FFFFLL | 0x20000000;
  *(a1 + 776) = v14 + 1;
  *(a1 + 5600) = 1;
  v29 = xmmword_29D2F0D30;
  v30 = xmmword_29D2F1C50;
  v31 = 0;
  v33 = 0;
  v34 = 0;
  __p = 0;
  v15 = *(a1 + 5640);
  if (v15 >= *(a1 + 5648))
  {
    v17 = std::vector<AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::VirtualSubstream,std::allocator<AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::VirtualSubstream>>::__emplace_back_slow_path<AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::VirtualSubstream>((a1 + 5632), &v29);
    v18 = __p;
    *(a1 + 5640) = v17;
    if (v18)
    {

      operator delete(v18);
    }
  }

  else
  {
    v16 = v30;
    *v15 = v29;
    *(v15 + 16) = v16;
    *(v15 + 32) = v31;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 40) = 0;
    *(a1 + 5640) = v15 + 64;
  }
}

void sub_29CD6A86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(uint64_t a1)
{
  if (*(a1 + 5600) == 1)
  {
    *(a1 + 5664) = *(a1 + 5664) + ((*(a1 + 5640) - *(a1 + 5632)) >> 6) - 1;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::endVirtualSubstream(a1);
  }

  v2 = *(a1 + 48);
  if (!*(v2 + 1240) || !*(v2 + 1248))
  {
    v3 = *(a1 + 680);
    if (!v3)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 19, 0))
      {
        goto LABEL_16;
      }

      v3 = *(a1 + 680);
    }

    v4 = v3 + 16;
    if ((v3 + 16) <= *(a1 + 672))
    {
      goto LABEL_7;
    }

    v6 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 19, 0);
    v3 = *(a1 + 680);
    if (!v6)
    {
      goto LABEL_8;
    }

    v4 = v3 + 16;
    if ((v3 + 16) <= *(a1 + 672))
    {
LABEL_7:
      *(a1 + 688) = v4;
LABEL_8:
      *(a1 + 680) = v3 + 16;
      goto LABEL_9;
    }

LABEL_16:
    abort();
  }

LABEL_9:
  IOGPUResourceListAddResource();

  return AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::endComputePass(a1, 1, 22);
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(uint64_t a1)
{
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginComputePass(a1, 1, 22);
  v2 = *(a1 + 48);
  if (!*(v2 + 1240) || !*(v2 + 1248))
  {
    v3 = *(a1 + 680);
    if (!v3)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 19, 0))
      {
        goto LABEL_16;
      }

      v3 = *(a1 + 680);
    }

    v4 = v3 + 16;
    if ((v3 + 16) <= *(a1 + 672))
    {
      goto LABEL_5;
    }

    v5 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 19, 0);
    v3 = *(a1 + 680);
    if (!v5)
    {
      goto LABEL_6;
    }

    v4 = v3 + 16;
    if ((v3 + 16) <= *(a1 + 672))
    {
LABEL_5:
      *(a1 + 688) = v4;
LABEL_6:
      *(a1 + 680) = v3 + 16;
      goto LABEL_7;
    }

LABEL_16:
    abort();
  }

LABEL_7:
  IOGPUResourceListAddResource();
  if (*(a1 + 5600) == 1)
  {

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(a1);
  }
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::ComputeContext<AGX::HAL300::EncoderComputeServiceConfigB>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1 + 1992;
  v7 = *a3;
  v6 = a3[1];
  v8 = v6[13];
  v9 = [v6 commandBufferStorage];
  v10 = [a3[1] globalTraceObjectID];
  v11 = [a3[2] globalTraceObjectID];
  v12 = *(a3 + 13);
  v13 = *(a3 + 57);
  *&v14 = 0;
  *(&v14 + 1) = v8;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v16 = *(*a3 + 848) + 7008;
  block = MEMORY[0x29EDCA5F8];
  v49 = 3221225472;
  v50 = ___ZN3AGX21ComputeUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE31unifiedComputeDataBufferConfigsERK16AGXGPUCoreConfig_block_invoke;
  v51 = &__block_descriptor_40_e5_v8__0l;
  v52 = v16;
  if (AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::unifiedComputeDataBufferConfigs(AGXGPUCoreConfig const&)::once != -1)
  {
    v44 = v11;
    v45 = v14;
    v46 = v15;
    dispatch_once(&AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::unifiedComputeDataBufferConfigs(AGXGPUCoreConfig const&)::once, &block);
    v14 = v45;
    v15 = v46;
    LODWORD(v11) = v44;
  }

  *a1 = v14;
  *(a1 + 16) = v9;
  *(a1 + 24) = &AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs;
  v17 = a1 + 24;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  v18 = v9[96];
  *(a1 + 1848) = 0;
  *(a1 + 1832) = 0;
  *(a1 + 1840) = 0;
  *(a1 + 1824) = 0;
  *(a1 + 1864) = v12;
  *(a1 + 48) = v18;
  *(a1 + 56) = v9 + 18;
  *(a1 + 1856) = v9[98];
  *(a1 + 1880) = v9;
  *(a1 + 1888) = v9 + 8;
  *(a1 + 1920) = 0;
  *(a1 + 1961) = 0;
  *v5 = v15;
  *(a1 + 2008) = v8 + 24;
  *(a1 + 2016) = 0;
  *(a1 + 2024) = v13;
  *(a1 + 2028) = 0u;
  *(a1 + 2044) = 0u;
  *(a1 + 2053) = 0u;
  *(a1 + 2069) = 1;
  *(a1 + 1872) = v7;
  *(a1 + 1896) = v9[91];
  *(a1 + 1904) = v9[92];
  *(a1 + 1912) = v9 + 18;
  *(a1 + 1968) = v9[6];
  *(a1 + 1976) = v9[7];
  *(a1 + 1924) = v11;
  *(a1 + 1932) = 0xFFFFFFFF00000000;
  *(a1 + 1956) = 0;
  *(a1 + 1960) = 1;
  v19 = *(v7 + 848);
  if (*(a2 + 37) == 1)
  {
    operator new();
  }

  v20 = a1 + 2072;
  *(a1 + 2072) = 0;
  *(a1 + 2080) = v19;
  *(a1 + 2096) = 0;
  *(a1 + 2104) = 0;
  *(a1 + 2088) = v19 + 7152;
  v21 = *(v19 + 7056);
  *(a1 + 2108) = 96 * v21;
  *(a1 + 2112) = v21;
  v22 = *(v7 + 848);
  v23 = *(v22 + 7092);
  *(a1 + 2120) = ((((96 * (*(v22 + 7056) / v23) + 367) & 0xFFFFFFE0) + 127) & 0xFFFFFF80) * v23 + 128;
  *(a1 + 2128) = 1792 * v23 + 3456;
  v24 = v23 == 1;
  if (v23 == 1)
  {
    v25 = 736;
  }

  else
  {
    v25 = 736 * v23 + 736;
  }

  v26 = (v25 + 63) & 0x1FFFFFFC0;
  *(a1 + 2136) = v26;
  LODWORD(v27) = 1664 * v23 + 2048;
  if (v24)
  {
    v27 = 1664;
  }

  else
  {
    v27 = v27;
  }

  *(a1 + 2144) = v26 + v27;
  *(a1 + 2152) = v20;
  *(a1 + 2160) = v17;
  *(a1 + 2216) = 0;
  *(a1 + 2184) = 0uLL;
  *(a1 + 2200) = 0uLL;
  block = MEMORY[0x29EDCA5F8];
  v49 = 3221225472;
  v50 = ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextENS1_32EncoderComputeServiceClassesNextEE30getComputeRangeExecutionShaderEPNS1_6DeviceE_block_invoke;
  v51 = &__block_descriptor_40_e5_v8__0l;
  v52 = v22;
  if (AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::getComputeRangeExecutionShader(AGX::HAL300::Device *)::compute_execute_indirect_stateless_shaders_pred != -1)
  {
    dispatch_once(&AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::getComputeRangeExecutionShader(AGX::HAL300::Device *)::compute_execute_indirect_stateless_shaders_pred, &block);
  }

  *(a1 + 2168) = AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::getComputeRangeExecutionShader(AGX::HAL300::Device *)::pipeline;
  block = MEMORY[0x29EDCA5F8];
  v49 = 3221225472;
  v50 = ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextENS1_32EncoderComputeServiceClassesNextEE30getComputePatchExecutionShaderEPNS1_6DeviceE_block_invoke;
  v51 = &__block_descriptor_40_e5_v8__0l;
  v52 = v22;
  if (AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::getComputePatchExecutionShader(AGX::HAL300::Device *)::compute_execute_indirect_stateless_shaders_pred != -1)
  {
    dispatch_once(&AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::getComputePatchExecutionShader(AGX::HAL300::Device *)::compute_execute_indirect_stateless_shaders_pred, &block);
  }

  *(a1 + 2176) = AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::getComputePatchExecutionShader(AGX::HAL300::Device *)::pipeline;
  *(a1 + 2224) = 0u;
  *(a1 + 2240) = 0;
  *(a1 + 2248) = 0;
  *(a1 + 2256) = 0u;
  *(a1 + 2288) = 0;
  *(a1 + 2352) = 0u;
  *(a1 + 2368) = -1;
  *(a1 + 2376) = 0u;
  *(a1 + 2392) = 0u;
  *(a1 + 2408) = 0u;
  *(a1 + 2440) = 0;
  *(a1 + 2448) = 0u;
  *(a1 + 4252) = 1;
  *(a1 + 4544) = a1 + 2360;
  *(a1 + 4912) = 0u;
  *(a1 + 4928) = 0u;
  *(a1 + 4944) = 0;
  *(a1 + 4952) = 0;
  *(v5 + 2972) = 0;
  *(a1 + 4968) = 0;
  *(a1 + 5008) = 0u;
  *(a1 + 4864) = 0u;
  *(a1 + 4880) = 0u;
  *(a1 + 5000) = a1 + 5008;
  *(a1 + 5032) = 0u;
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(a1 + 5048, *(*(a1 + 1872) + 848), *(*(*(a1 + 1872) + 848) + 7200));
  AGX::ComputeCounterSamplingContextGen1::ComputeCounterSamplingContextGen1((a1 + 5160), *(a2 + 8));
  v28 = *(*(a1 + 8) + 568);
  *(v5 + 3184) = v28;
  v29 = *(a2 + 16);
  *(v5 + 3185) = (v29 == 2) & (v28 ^ 1);
  *(a1 + 5180) = v29;
  v30 = *(a1 + 1872);
  v31 = *(v30 + 848);
  *(v5 + 3192) = *(v31 + 17212);
  v32 = *(a1 + 1912);
  *(a1 + 5200) = v31;
  *(a1 + 5208) = v17;
  *(a1 + 5216) = v20;
  *(a1 + 5224) = v32;
  *(v5 + 3240) = 0;
  *(v5 + 3264) = 0;
  *(v5 + 3272) = 0;
  *(v5 + 3296) = 0;
  *(v5 + 3304) = 0;
  *(v5 + 3328) = 0;
  *(v5 + 3336) = 0;
  *(v5 + 3360) = 0;
  *(v5 + 3368) = 0;
  *(v5 + 3392) = 0;
  *(a1 + 5424) = 0u;
  *(a1 + 5408) = 0u;
  *(a1 + 5392) = 0u;
  *(v5 + 3456) = 0;
  *(v5 + 3464) = 0;
  *(a1 + 5488) = 0u;
  LODWORD(v30) = *(*(v30 + 848) + 7056);
  *(a1 + 5536) = 96 * v30;
  *(a1 + 5540) = v30;
  *(a1 + 5568) = [a3[1] privateData];
  *(a1 + 5576) = [a3[1] privateDataOffset];
  *(a1 + 5592) = 0;
  *(v5 + 3608) = 0;
  *(a1 + 5608) = 0u;
  *(a1 + 5624) = 0u;
  *(a1 + 5640) = 0u;
  *(a1 + 5664) = 0;
  *(a1 + 5680) = 0;
  *(a1 + 5672) = 0;
  *(a1 + 5688) = 0xFFFFFFFF00000001;
  *(a1 + 5696) = 1610612736;
  *(a1 + 5704) = 0u;
  *(a1 + 5720) = 0u;
  *(a1 + 5736) = 0u;
  *(a1 + 5800) = -1;
  *&v33 = -1;
  *(&v33 + 1) = -1;
  *(a1 + 5752) = v33;
  *(a1 + 5768) = v33;
  *(a1 + 5784) = v33;
  *(v5 + 3816) = *(a2 + 38);
  *(a1 + 5872) = 0;
  *(a1 + 5816) = 0u;
  *(a1 + 5832) = 0u;
  *(a1 + 5848) = 0u;
  *(v5 + 3450) |= 1u;
  *(a1 + 2296) = 0;
  *(a1 + 2312) = 0;
  v34 = *(a1 + 4544);
  *(v34 + 1880) = *(a1 + 4536);
  *(v34 + 1888) = v34;
  v35 = *(a2 + 20);
  *(a1 + 2292) = v35;
  *(a1 + 4976) = *(a2 + 32);
  v24 = v35 == 1;
  v36 = 20;
  if (v24)
  {
    v36 = 12;
  }

  *(a1 + 5584) = v36;
  v37 = *(v5 + 3264);
  *(a1 + 5232) = a1;
  *(a1 + 5240) = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::handleControlFlowFailure;
  *(a1 + 5248) = 0;
  if ((v37 & 1) == 0)
  {
    *(v5 + 3264) = 1;
  }

  v38 = *(v5 + 3296);
  *(a1 + 5264) = a1;
  *(a1 + 5272) = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::handleFirstControlFlowPrologue;
  *(a1 + 5280) = 0;
  if ((v38 & 1) == 0)
  {
    *(v5 + 3296) = 1;
  }

  v39 = *(v5 + 3328);
  *(a1 + 5296) = a1;
  *(a1 + 5304) = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::handleLastControlFlowEpilogue;
  *(a1 + 5312) = 0;
  if ((v39 & 1) == 0)
  {
    *(v5 + 3328) = 1;
  }

  v40 = *(v5 + 3360);
  *(a1 + 5328) = a1;
  *(a1 + 5336) = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::handleControlFlowPrologue;
  *(a1 + 5344) = 0;
  if ((v40 & 1) == 0)
  {
    *(v5 + 3360) = 1;
  }

  v41 = *(v5 + 3392);
  *(a1 + 5360) = a1;
  *(a1 + 5368) = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::handleControlFlowEpilogue;
  *(a1 + 5376) = 0;
  if ((v41 & 1) == 0)
  {
    *(v5 + 3392) = 1;
  }

  v42 = *(*(a1 + 1872) + 848);
  *(a1 + 2272) = v42 + 13360;
  *(a1 + 2280) = v42 + 14912;
  *(v5 + 3448) = 0;
  *(a1 + 5540) = *(v42 + 7056);
  return a1;
}

void sub_29CD7357C(_Unwind_Exception *a1)
{
  MEMORY[0x29ED520D0](v2, 0x1020C4014030ADELL);
  AGX::HAL300::ContextCommon::~ContextCommon(v1);
  _Unwind_Resume(a1);
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::handleControlFlowEpilogue(uint64_t result)
{
  if (!*(*(result + 1912) + 520))
  {
    *(result + 5442) |= 2u;
  }

  *(result + 2344) = 0;
  return result;
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::handleLastControlFlowEpilogue(uint64_t a1)
{
  if ((*(a1 + 5442) & 2) != 0)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::restartComputePass(a1, 22);
  }
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::handleFirstControlFlowPrologue(uint64_t a1)
{
  if ((*(a1 + 5442) & 1) == 0)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::restartComputePass(a1, 22);
  }
}

void AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::fillTexture(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, _BYTE *a6, size_t a7)
{
  v52 = *MEMORY[0x29EDCA608];
  v12 = *(a2 + 592);
  v13 = *(v12 + 584);
  v44 = a3;
  LODWORD(v45) = a4;
  if (v13 && (v14 = *(v13 + 1304)) != 0)
  {
    v15 = 1;
    if (v14 > a3)
    {
      if (*(v12 + 57))
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v12 + 208);
  v17 = *(v16 + 88);
  v18 = *(v12 + 112);
  v20 = v17 == 16 && v18 == 2;
  TextureViewFormat = AGX::BlitUtil::getTextureViewFormat(*(v16 + 88), *(v12 + 112), *(v12 + 32), 0, v15, v20);
  v23 = v21;
  v24 = *(v12 + 24);
  if (v24 > 9)
  {
    goto LABEL_19;
  }

  if (((1 << v24) & 0x17C) != 0)
  {
LABEL_18:
    *(a5 + 40) = 1;
    goto LABEL_19;
  }

  if (((1 << v24) & 3) != 0)
  {
    *(a5 + 32) = 1;
    goto LABEL_18;
  }

  if (v24 != 9)
  {
LABEL_19:
    v25 = 4;
    if (!(v21 >> 33))
    {
      v25 = 2;
    }

    if (v24 == 7)
    {
      v26 = 7;
    }

    else
    {
      v26 = v25;
    }

    TextureViewForBlit = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(v50, v12, v26, TextureViewFormat, *(v12 + 40), *(v12 + 56), *(v12 + 324), v45, v44, 0, SHIDWORD(v21), *(v12 + 152), *(v12 + 160), *(v12 + 168), *(v12 + 176), *(v12 + 180), *(v12 + 184), *(v12 + 236) != 0, 0);
    v28 = *(v50[26] + 88);
    MEMORY[0x2A1C7C4A8](TextureViewForBlit);
    v30 = &v43 - v29;
    v45 = v31;
    if (v28 <= a7)
    {
      goto LABEL_32;
    }

    if (v28 >= 2)
    {
      v33 = 0;
      v32 = v28 & 0xFE;
      do
      {
        v34 = a6[(v33 + 1) % a7];
        v35 = &v30[v33];
        *v35 = a6[v33 % a7];
        v35[1] = v34;
        v33 += 2;
      }

      while (v32 != v33);
      if (v32 == v28)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v32 = 0;
    }

    do
    {
      v30[v32] = a6[v32 % a7];
      ++v32;
    }

    while (v28 != v32);
LABEL_31:
    a6 = v30;
LABEL_32:
    v47 = vuzp1q_s32(*(a5 + 24), *a5);
    v48 = 0;
    v49 = 0;
    v36 = *(a5 + 16);
    v46 = 0;
    {
      v51 = 0;
      findEnvVarNum<BOOL>("AGX_DISABLE_PBE_COMPRESSION", &v51);
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression = v51;
    }

    if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression == 1)
    {
      v37 = *(v12 + 584);
      if (v37)
      {
        if (*(v37 + 1304))
        {
          v46 |= 8u;
        }
      }
    }

    if (*(a5 + 40))
    {
      v38 = 1;
      do
      {
        AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBufferToTexture((a1 + 8), a2, v50, 0, 0, a6, v47.i32, v23, v28, 0, 0, v36 + v38 - 1, &v46);
      }

      while (*(a5 + 40) > v38++);
    }

    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v50);
    return;
  }

  v40 = v18 * v17;
  v41 = *(a5 + 24) * v40;
  v42 = *(a2 + *MEMORY[0x29EDC5638] + 72) + v40 * *a5;

  AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer((a1 + 8), a2, v42, 0, 0, v41, a6, a7);
}

void sub_29CD7460C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::optimizeContentsForUncompressedAccess(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = *(a2 + 592);
  v43 = *(v4 + 584);
  if (*(v4 + 48))
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v4 + 584) == 0;
  }

  if (!v5)
  {
    v6 = a4;
    if (*(v43 + 1304) > a4 && !*(v4 + 57))
    {
      v8 = result;
      v9 = *(v4 + 144);
      v10 = *(v4 + 136);
      v11 = v10 >> v9;
      if (v10 >> v9 <= 1)
      {
        v11 = 1;
      }

      v61 = v11;
      v12 = *(v4 + 396) & 0xFF00;
      if ((*(v4 + 396) & 0x10000) != 0 || v12 == 1024)
      {
        v13 = *(v4 + 392);
        if (v12 == 1024)
        {
          v13 *= 6;
        }
      }

      else
      {
        v13 = 1;
      }

      v62 = *(v4 + 24);
      v14 = v62 - 1;
      if (v62 - 1) <= 7 && ((0xB5u >> v14))
      {
        v62 = qword_29D2F4698[v14];
      }

      v15 = *(v4 + 208);
      if (*(v15 + 24))
      {
        v16 = 0;
        v60 = *(v4 + 40);
        v17 = *(v4 + 236);
        v42 = *(v4 + 112);
        v18 = v10 >> (v9 + a4);
        v19 = vmax_u32(vshl_u32(*(v4 + 128), vneg_s32(vdup_n_s32(v9))), 0x100000001);
        v58 = *(v4 + 140);
        v59 = v17;
        if (!v17)
        {
          v13 = 1;
        }

        v57 = v13;
        if (v17)
        {
          v20 = v58 - a4;
        }

        else
        {
          v20 = 1;
        }

        v56 = v20;
        v54 = *(v4 + 160);
        v55 = *(v4 + 152);
        v53 = *(v4 + 168);
        v51 = *(v4 + 180);
        v52 = *(v4 + 176);
        v50 = *(v4 + 184);
        v48 = *(v4 + 232);
        v49 = *(v4 + 241);
        if (v17)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v18 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v18;
        }

        v46 = v19.i32[0];
        v47 = v21;
        v64 = v19;
        v44 = *(v4 + 408);
        v45 = v19.u32[1];
        do
        {
          v23 = *(v4 + 584);
          if (v23 && *(v23 + 1304) > v6)
          {
            if (*(v4 + 57))
            {
              v24 = 2;
            }

            else
            {
              v24 = 1;
            }
          }

          else
          {
            v24 = 1;
          }

          TextureViewFormat = AGX::BlitUtil::getTextureViewFormat(*(v15 + v16 + 88), v42, *(v4 + 32), v16, v24, 0);
          v27 = HIDWORD(v25);
          v28 = TextureViewFormat - 1;
          v29 = &texFormatUnsupported;
          if ((TextureViewFormat - 1) <= 0x289)
          {
            v29 = *(&off_29F342380 + v28);
          }

          AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v70, *(v4 + 8), 0, v47, v62, v29, TextureViewFormat, v60, 0.0, 0, *(v4 + 56), *(v4 + 324), 0, 84148994, v46, v45, v61, v58, SHIDWORD(v25), v57, v55, v59, v49, v54, v53, v52, v51, v50, v6, v56, v48, v44, *(v4 + 409), v39, 0);
          v70[0] = off_2A23FA3D8;
          v30 = &texFormatUnsupported;
          if (v28 <= 0x289)
          {
            v30 = *(&off_29F342380 + v28);
          }

          AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v69, *(v4 + 8), 0, v47, v62, v30, TextureViewFormat, v60, 0.0, 0, *(v4 + 56) | 0x10, *(v4 + 324), 0, 84148994, v46, v45, v61, v58, v27, v57, v55, v59, v49, v54, v53, v52, v51, v50, v6, v56, v48, v44, *(v4 + 409), v40, 0);
          v69[0] = off_2A23FA3D8;
          GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v4, a3, 0, 0, v16);
          v32 = v70[73];
          v33 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v43 + 648 * v16, a3, 0, 0, 0);
          v32[39] = 0;
          v32[9] = v33;
          (*(*v32 + 16))(v32);
          if (v32[168] >= 2uLL)
          {
            v34 = v32[167];
            v32[120] = v34;
            v32[90] = v34 + v33;
            (*(v32[81] + 16))();
          }

          v35 = v69[73];
          v36 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v43 + 648 * v16, a3, 0, 0, 0);
          v35[39] = 0;
          v35[9] = v36;
          (*(*v35 + 16))(v35);
          if (v35[168] >= 2uLL)
          {
            v37 = v35[167];
            v35[120] = v37;
            v35[90] = v37 + v36;
            (*(v35[81] + 16))();
          }

          v70[39] = 0;
          v70[9] = GPUVirtualAddress;
          (*(v70[0] + 16))(v70);
          v69[39] = 0;
          v69[9] = GPUVirtualAddress;
          (*(v69[0] + 16))(v69);
          v6 = a4;
          AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getTextureViewForBlit(v68, v4, a4, v16);
          {
            v66[0].i8[0] = 0;
            findEnvVarNum<BOOL>("AGX_DISABLE_PBE_COMPRESSION", v66);
            AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression = v66[0].i8[0];
          }

          for (i = 0; i != v22; ++i)
          {
            v66[0] = v64;
            v66[1] = 0;
            v66[2] = 0;
            v67 = i;
            v65 = 0;
            AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMTextureToTexture((v8 + 8), a2, v69, a2, v70, &v65, i, v66);
          }

          AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v68);
          AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v69);
          result = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v70);
          ++v16;
          v15 = *(v4 + 208);
        }

        while (v16 < *(v15 + 24));
      }
    }
  }

  return result;
}

void AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyTextureToTextureImpl(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, int64x2_t *a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, int64x2_t *a11, int64x2_t *a12)
{
  v12 = a7;
  v13 = a3;
  v14 = a2;
  v15 = *(a7 + 592);
  v16 = *(a2 + 592);
  v78[0] = 0;
  v17 = *(v15 + 584);
  if (!v17 || !*(v17 + 1304))
  {
    v18 = *(v16 + 584);
    if (!v18 || !*(v18 + 1304))
    {
      v19 = a6;
      v22 = 0;
      goto LABEL_23;
    }

    if (!v17)
    {
      goto LABEL_9;
    }
  }

  if (*(v17 + 1304) > a10 && *(v15 + 57))
  {
    v19 = a6;
    v20 = a2;
    v21 = a7;
    v22 = 2;
  }

  else
  {
LABEL_9:
    v20 = a2;
    v23 = *(v16 + 584);
    if (v23)
    {
      v19 = a6;
      v21 = a7;
      v22 = 1;
      if (*(v23 + 1304) > a5)
      {
        if (*(v16 + 57))
        {
          v22 = 2;
        }

        else
        {
          v22 = 1;
        }
      }
    }

    else
    {
      v19 = a6;
      v21 = a7;
      v22 = 1;
    }
  }

  {
    v69 = v22;
    v13 = a3;
    v22 = v69;
    if (v60)
    {
      v74.i8[0] = 0;
      findEnvVarNum<BOOL>("AGX_DISABLE_PBE_COMPRESSION", &v74);
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression = v74.i8[0];
      v13 = a3;
      v22 = v69;
    }
  }

  if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression != 1)
  {
    v12 = v21;
    goto LABEL_22;
  }

  v24 = *(v16 + 584);
  v12 = v21;
  if (!v24)
  {
LABEL_22:
    v14 = v20;
    goto LABEL_23;
  }

  v14 = v20;
  if (*(v24 + 1304))
  {
    v78[0] |= 8u;
  }

LABEL_23:
  v25 = *(*(v16 + 208) + v13 + 88);
  v26 = *(v16 + 112);
  v62 = v13;
  TextureViewFormat = AGX::BlitUtil::getTextureViewFormat(*(*(v16 + 208) + v13 + 88), v26, *(v16 + 32), v13, v22, 0);
  v29 = v28;
  v30 = 4;
  if (!(v28 >> 33))
  {
    v30 = 2;
  }

  v31 = *(v15 + 24);
  if (v31 <= 9)
  {
    if (((1 << v31) & 0x17C) != 0)
    {
LABEL_29:
      a12[1].i64[0] = 1;
      goto LABEL_30;
    }

    if (((1 << v31) & 3) != 0)
    {
      a12->i64[1] = 1;
      goto LABEL_29;
    }

    if (v31 == 9)
    {
      v46 = *(v15 + 112) * *(*(v15 + 208) + a8 + 88);
      v47 = v46 * a11->i64[0];
      v48 = a12->i64[0] * v46;
      v74 = *v19;
      v75 = v19[1].i64[0];
      v72 = *a12;
      v73 = a12[1].i64[0];
      AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyBufferToTexture(a1, v14, a4, a5, &v74, &v72, v12, v47, v48, v48, 0);
      return;
    }
  }

LABEL_30:
  v32 = *(v16 + 24);
  if (v32 <= 9)
  {
    if (((1 << v32) & 0x17C) != 0)
    {
LABEL_34:
      a12[1].i64[0] = 1;
      goto LABEL_35;
    }

    if (((1 << v32) & 3) != 0)
    {
      a12->i64[1] = 1;
      goto LABEL_34;
    }

    if (v32 == 9)
    {
      v49 = v26 * v25;
      v50 = v49 * v19->i64[0];
      v51 = a12->i64[0] * v49;
      v74 = *a11;
      v75 = a11[1].i64[0];
      v72 = *a12;
      v73 = a12[1].i64[0];
      AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyTextureToBuffer(a1, v14, v50, v51, v51, v12, a9, a10, &v74, &v72, 0);
      return;
    }
  }

LABEL_35:
  if (v31 != 7)
  {
    v31 = v30;
  }

  v61 = v31;
  if (v32 == 7)
  {
    v30 = 7;
  }

  v63 = v30;
  v65 = TextureViewFormat;
  v33 = vmovn_s64(*v19);
  v34 = vmovn_s64(*a12);
  v35 = vmovn_s64(*a11);
  v36 = *(v16 + 216);
  v37 = *(v16 + 220);
  v76[0] = (v36 + v34.i32[0] - 1) / v36;
  v76[1] = (v37 + v34.i32[1] - 1) / v37;
  v76[2] = v33.i32[0] / v36;
  v76[3] = v33.i32[1] / v37;
  v38 = a11[1].u32[0];
  v39 = v19[1].u32[0];
  v76[4] = v35.i32[0] / v36;
  v76[5] = v35.i32[1] / v37;
  v77 = v38;
  v40 = a5;
  if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::blitTextureViewAllowed(v15, a10) && AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::blitTextureViewAllowed(v16, a5))
  {
    v41 = HIDWORD(v29);
    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(&v74, v15, v61, v65, *(v15 + 40), *(v15 + 56), *(v15 + 324), a9, a10, a8, v41, *(v15 + 152), *(v15 + 160), *(v15 + 168), *(v15 + 176), *(v15 + 180), *(v15 + 184), *(v15 + 236) != 0, 0);
    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(&v72, v16, v63, v65, *(v16 + 40), *(v16 + 56), *(v15 + 324), a4, a5, v62, v41, *(v16 + 152), *(v16 + 160), *(v16 + 168), *(v16 + 176), *(v16 + 180), *(v16 + 184), *(v16 + 236) != 0, 0);
    if (a12[1].i64[0])
    {
      v42 = v38 + 1;
      v43 = 1;
      v44 = MEMORY[0x29EDCA610];
      do
      {
        if (v16 && *(v16 + 112) > 1u)
        {
          fwrite("AGX: blitCDM copy texture requirements not met\n", 0x2FuLL, 1uLL, *v44);
        }

        else
        {
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMTextureToTexture(a1 + 1, v14, &v72, v12, &v74, v78, v39 + v43 - 1, v76);
        }

        v77 = v42++;
        v45 = a12[1].i64[0] > v43++;
      }

      while (v45);
    }

    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(&v72);
    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(&v74);
  }

  else if (*(v15 + 236) || *(v16 + 236))
  {
    AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMSparseMiptail(a1 + 1, v14, v16, a4, a5, v12, v15, a9, a10);
  }

  else
  {
    v52 = a12;
    v64 = v12;
    v66 = v14;
    if (a12[1].i64[0])
    {
      v53 = *(*(v15 + 208) + a8 + 88);
      v54 = 1;
      do
      {
        v55 = v52;
        GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v16, a4, *(v16 + 144) + v40, v39, v62);
        v57 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v15, a9, *(v15 + 144) + a10, v38, a8);
        v58 = GPUVirtualAddress;
        v40 = a5;
        AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyBufferToBufferImpl(a1, v66, v58, v64, v57, v53);
        v52 = v55;
        ++v39;
        ++v38;
        v45 = v55[1].i64[0] > v54++;
      }

      while (v45);
    }
  }
}

void AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyBufferToTexture(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4, int64x2_t *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unsigned int a11)
{
  v16 = *MEMORY[0x29EDC5638];
  v17 = a7 + v16;
  v18 = *(a2 + 592);
  v19 = *(v18 + 208);
  if (*(v19 + 24) < 2u)
  {
    v20 = 0;
  }

  else
  {
    v20 = (a11 >> 1) & 1;
    if (!*(v19 + 80))
    {
      v20 = 0;
    }
  }

  v62 = *(a7 + v16 + 72) + a8;
  v63 = v20;
  v21 = *(v18 + 112);
  v22 = *(v18 + 584);
  if (v22 && (v23 = *(v22 + 1304)) != 0)
  {
    v24 = 1;
    if (v23 > a4)
    {
      if (*(v18 + 57))
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  v57 = v21 * *(v19 + v20 + 88);
  v25 = *(v17 + 144);
  v26 = *(v17 + 152);
  TextureViewFormat = AGX::BlitUtil::getTextureViewFormat(*(v19 + v20 + 88), v21, *(v18 + 32), v20, v24, 0);
  v29 = TextureViewFormat;
  v59 = v28;
  if (v28 >> 33)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  v31 = *(v18 + 24);
  if (v31 > 9)
  {
    goto LABEL_21;
  }

  if (((1 << v31) & 0x17C) != 0)
  {
    goto LABEL_20;
  }

  if (((1 << v31) & 3) != 0)
  {
    a6->i64[1] = 1;
LABEL_20:
    a6[1].i64[0] = 1;
LABEL_21:
    v32 = vmovn_s64(*a5);
    v33 = vmovn_s64(*a6);
    v34 = *(v18 + 216);
    v35 = *(v18 + 220);
    v36 = (v34 + v33.i32[0] - 1) / v34;
    v37 = v32.i32[0] / v34;
    if (v31 == 7)
    {
      v38 = 7;
    }

    else
    {
      v38 = v30;
    }

    v75 = 0;
    v39 = a5[1].u32[0];
    v70 = v36;
    v71 = (v35 + v33.i32[1] - 1) / v35;
    v72 = v37;
    v73 = v32.i32[1] / v35;
    v74 = 0;
    v40 = v25;
    if ((TextureViewFormat - 1) > 0x289)
    {
      v41 = &texFormatUnsupported;
    }

    else
    {
      v41 = *(&off_29F342380 + (TextureViewFormat - 1));
    }

    v42 = HIDWORD(v28);
    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v67, *(a1[7] + 848), 0, 2, v30, v41, TextureViewFormat, 0, 0.0, v40, 2, 0, 0, 84148994, v36, (v35 + v33.i32[1] - 1) / v35, 1u, 1u, SHIDWORD(v28), 1, a9, 0, 0, v26, 0, 0, 0, 0, 0, 1, 1, 0, 1, v56, 0);
    v67[0] = off_2A23FA3D8;
    if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::blitTextureViewAllowed(v18, a4))
    {
      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(v65, v18, v38, v29, *(v18 + 40), *(v18 + 56), *(v18 + 324), a3, a4, v63, v42, *(v18 + 152), *(v18 + 160), *(v18 + 168), *(v18 + 176), *(v18 + 180), *(v18 + 184), *(v18 + 236) != 0, 0);
      v43 = *(v66 + 88);
      v64 = 0;
      {
        v76[0] = 0;
        findEnvVarNum<BOOL>("AGX_DISABLE_PBE_COMPRESSION", v76);
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression = v76[0];
      }

      if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression == 1)
      {
        v44 = *(v18 + 584);
        if (v44)
        {
          if (*(v44 + 1304))
          {
            v64 |= 8u;
          }
        }
      }

      if (v42 == 1)
      {
        if (a6[1].i64[0])
        {
          v45 = 0;
          v46 = 1;
          v47 = (v71 | v70) >> 15;
          do
          {
            v48 = v45 * a10 + v62;
            if (v47 || (((a9 / v57 * v57) | v48) & 0xF) != 0)
            {
              AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBufferToTexture(a1 + 1, a2, v65, a7, v48, 0, &v70, v59, v43, a9, SHIDWORD(a9), v39 + v46 - 1, &v64);
            }

            else
            {
              v69 = 0;
              v68 = v45 * a10 + v62;
              (*(v67[0] + 16))(v67);
              AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMTextureToTexture(a1 + 1, a2, v65, a7, v67, &v64, v39 + v46 - 1, &v70);
            }

            v45 = v46++;
          }

          while (a6[1].i64[0] > v45);
        }
      }

      else
      {
        fwrite("AGX: copyBufferToTexture: blit format is multi sampled\n", 0x37uLL, 1uLL, *MEMORY[0x29EDCA610]);
      }

      AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v65);
    }

    else
    {
      v49 = a7;
      if (*(v18 + 236))
      {
        v69 = 0;
        v68 = v62;
        AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::texBaseAddressesUpdated(v67);
        AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMSparseMiptail(a1 + 1, a2, v18, a3, a4, a7, v67, 0, 0);
      }

      else if (a6[1].i64[0])
      {
        v50 = 0;
        v51 = *(*(v18 + 208) + v63 + 88);
        v52 = 1;
        do
        {
          GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v18, a3, *(v18 + 144) + a4, v39, v63);
          AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyBufferToBufferImpl(a1, a2, GPUVirtualAddress, v49, a8 + v50 * a10 + *(v49 + 72 + *MEMORY[0x29EDC5638]), v51);
          ++v39;
          v50 = v52++;
        }

        while (a6[1].i64[0] > v50);
      }
    }

    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v67);
    return;
  }

  if (v31 != 9)
  {
    goto LABEL_21;
  }

  v54 = a6->i64[0] * v57;
  v55 = *(a2 + v16 + 72) + a5->i64[0] * v57;

  AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyBufferToBufferImpl(a1, a2, v55, a7, v62, v54);
}

void AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyTextureToBuffer(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, int64x2_t *a9, int64x2_t *a10, unsigned int a11)
{
  v14 = *(a6 + 592);
  v15 = *MEMORY[0x29EDC5638];
  v16 = a2 + v15;
  v17 = *(v14 + 208);
  if (*(v17 + 24) < 2u)
  {
    v18 = 0;
  }

  else
  {
    v18 = (a11 >> 1) & 1;
    if (!*(v17 + 80))
    {
      v18 = 0;
    }
  }

  v106 = *(a2 + v15 + 72) + a3;
  v19 = v18;
  v20 = *(v17 + v18 + 88);
  v21 = *(v14 + 112);
  v22 = *(v14 + 584);
  if (v22 && (v23 = *(v22 + 1304)) != 0)
  {
    v24 = 1;
    if (v23 > a8)
    {
      if (*(v14 + 57))
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v16 + 144);
  v26 = *(v16 + 152);
  v27 = v21 * v20;
  TextureViewFormat = AGX::BlitUtil::getTextureViewFormat(v20, v21, *(v14 + 32), v18, v24, 0);
  v102 = v29;
  if (v29 >> 33)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  v31 = *(v14 + 24);
  if (v31 > 9)
  {
    goto LABEL_21;
  }

  if (((1 << v31) & 0x17C) != 0)
  {
    goto LABEL_20;
  }

  if (((1 << v31) & 3) != 0)
  {
    a10->i64[1] = 1;
LABEL_20:
    a10[1].i64[0] = 1;
    goto LABEL_21;
  }

  if (v31 == 9)
  {
    v94 = a10->i64[0] * v27;
    v95 = *(a6 + v15 + 72) + a9->i64[0] * v27;

    AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyBufferToBufferImpl(a1, a2, v106, a6, v95, v94);
    return;
  }

LABEL_21:
  v32 = v26;
  v33 = v25;
  v34 = vmovn_s64(*a10);
  v35 = vmovn_s64(*a9);
  v36 = *(v14 + 216);
  v37 = *(v14 + 220);
  v38 = (v36 + v34.i32[0] - 1) / v36;
  v39 = v35.i32[0] / v36;
  v40 = HIDWORD(v29);
  if (v31 == 7)
  {
    v41 = 7;
  }

  else
  {
    v41 = v30;
  }

  v42 = a9[1].u32[0];
  v43 = (v37 + v34.i32[1] - 1) / v37;
  v129[0] = __PAIR64__(v43, v38);
  v129[1] = 0;
  LODWORD(v130) = v39;
  HIDWORD(v130) = v35.i32[1] / v37;
  v131 = v42;
  v98 = a3;
  v100 = v41;
  if ((TextureViewFormat - 1) > 0x289)
  {
    v44 = &texFormatUnsupported;
  }

  else
  {
    v44 = *(&off_29F342380 + (TextureViewFormat - 1));
  }

  v45 = TextureViewFormat;
  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v126, *(a1[7] + 848), 0, 2, v30, v44, TextureViewFormat, 0, 0.0, v33, 2, 0, 0, 84148994, v38, v43, 1u, 1u, SHIDWORD(v29), 1, a4, 0, 0, v32, 0, 0, 0, 0, 0, 1, 1, 0, 1, v96, 0);
  v126[0] = off_2A23FA3D8;
  if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::blitTextureViewAllowed(v14, a8))
  {
    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(v110, v14, v100, v45, *(v14 + 40), *(v14 + 56), *(v14 + 324), a7, a8, v19, v40, *(v14 + 152), *(v14 + 160), *(v14 + 168), *(v14 + 176), *(v14 + 180), *(v14 + 184), *(v14 + 236) != 0, 0);
    if (v40 == 1)
    {
      if (a10[1].i64[0])
      {
        v46 = 0;
        v99 = (v102 - 1);
        v101 = (a4 / v27) & 0xF;
        v97 = *(v117 + 88);
        v47 = 1;
        while (1)
        {
          v48 = v46 * a5 + v106;
          if ((v43 | v38) >> 15 || v101 || (v48 & 0xF) != 0)
          {
            break;
          }

          v128 = 0;
          v127 = v46 * a5 + v106;
          (*(v126[0] + 16))(v126);
          LODWORD(v133) = 0;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMTextureToTexture(a1 + 1, a2, v126, a6, v110, &v133, 0, v129);
LABEL_32:
          v131 = ++v42;
          v46 = v47++;
          if (a10[1].i64[0] <= v46)
          {
            goto LABEL_76;
          }
        }

        v134 = 101;
        v136 = 0;
        v137 = 0;
        v135 = 0;
        v133 = &unk_2A23F67E0;
        v138 = 0;
        UberBlitPipeline = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateUberBlitPipeline(*(a1[2] + 848), &v133);
        v50 = v119 << 8;
        if (v50 == 768)
        {
          v51 = 3;
        }

        else
        {
          v51 = 2;
        }

        if (v99 < 0x19)
        {
          v52 = v50 == 768;
          v53 = &unk_29D2F4458;
          if (v52)
          {
            v53 = &unk_29D2F4390;
          }

          v51 = v53[v99];
        }

        v54 = a1[3];
        if (v54[237])
        {
          MTLResourceListAddResource();
          v54 = a1[3];
          if (v54[237])
          {
            MTLResourceListAddResource();
            v54 = a1[3];
          }
        }

        v55 = v54[21];
        v56 = v55 + 47;
        if ((v55 + 47) > v54[20])
        {
          v89 = AGX::DataBufferAllocator<44ul>::growNoInline(v54 + 3, 3, 0);
          v55 = v54[21];
          if (!v89)
          {
            goto LABEL_49;
          }

          v56 = v55 + 47;
          if ((v55 + 47) > v54[20])
          {
            abort();
          }
        }

        v54[22] = v56;
LABEL_49:
        v57 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
        v58 = v54[23];
        v54[21] = v57 + 32;
        *(v57 + 24) = 0;
        *(v57 + 25) = v119 << 8 == 768;
        *v57 = v130;
        *(v57 + 8) = v42;
        *(v57 + 12) = v97;
        *(v57 + 16) = a4;
        *(v57 + 20) = v102;
        v132 = 0;
        AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::checkBarrierRequirement((a1 + 1), v110, v42, 0, 0, &v132 + 1, &v132);
        if (HIBYTE(v132) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(a1[3], 22, 0, 0, 0);
        }

        v59 = *(*(UberBlitPipeline + 16) + 4064);
        v60 = a1[1];
        *(v60 + 32) = 0;
        *(v60 + 40) = 0;
        v61 = a1[1];
        *(v61 + 48) = 0;
        *(v61 + 56) = 0;
        v62 = a1[1];
        *(v62 + 64) = 0;
        *(v62 + 72) = 0;
        v63 = *(a1[1] + 24) + *(a1[1] + 4);
        *(v63 + 8) = v48;
        *(v63 + 16) = v57 + v58;
        v64 = v122;
        v65 = v123;
        if (v111 < 2)
        {
          v66 = v121 & 0xEFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v66 = v121 | 0x1000000000000000;
          v65 = v123 & 0xF0000FFFFFFFFFFFLL | ((v116 & 0xF | (16 * (v116 & 0xFu))) << 44);
          v64 = v122 | 0x8000000000000000;
        }

        v67 = v124;
        GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v110, 0, 0, 0, 0);
        v69 = GPUVirtualAddress + v118 * v42;
        v70 = v69 >> 4;
        if ((v66 & 0x3F) == 2)
        {
          v71 = v64 & 0xFFFFF00000000000 | (v69 >> 4) & 3;
        }

        else
        {
          v71 = v64;
        }

        v72 = (*(a1[1] + 24) + *(a1[1] + 8) + (v51 << 7));
        v72[8] = v66;
        v72[9] = v71 & 0xFFFFF00000000003 | (4 * ((v70 >> 2) & 0x3FFFFFFFFFFLL));
        v72[10] = v65;
        v72[11] = v67;
        v73 = *(a1[1] + 24) + *(a1[1] + 8) + (v51 << 7);
        v74 = v112;
        v75 = v113;
        v76 = v114;
        *(v73 + 48) = v115;
        *(v73 + 16) = v75;
        *(v73 + 32) = v76;
        *v73 = v74;
        v77 = a1[1];
        *(*(v77 + 24) + *(v77 + 8) + (v51 << 7) + 56) = v115;
        v78 = 1 << v51;
        *(v77 + 32) |= 1 << v51;
        if (v125)
        {
          v79 = *(v125 + 1304);
          v80 = ~v78;
          *(v77 + 48) = *(v77 + 48) & ~v78 | ((v79 != 0) << v51);
          if (v79)
          {
            v81 = v120;
          }

          else
          {
            v81 = 0;
          }
        }

        else
        {
          v81 = 0;
          v80 = ~v78;
          *(v77 + 48) &= ~v78;
        }

        *(v77 + 64) = *(v77 + 64) & v80 | (v81 << v51);
        v82 = a1[3];
        v83 = v129[0];
        *(v82 + 2060) |= 2u;
        v84.i32[0] = 32;
        v84.i32[1] = v59 >> 5;
        v85 = vmin_u32(v84, v83);
        v105 = v83;
        *&v86 = v83.u32[0];
        *(&v86 + 1) = v83.u32[1];
        v141 = v86;
        v142 = 1;
        *&v86 = v85.u32[0];
        *(&v86 + 1) = v85.u32[1];
        v139 = v86;
        v140 = 1;
        v87 = *(v82 + 4536);
        *(v82 + 4536) = v77;
        v88 = *(v82 + 2336);
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(v82, UberBlitPipeline);
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsInternal(v82, 22, &v141, &v139);
        if (v88)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(v82, v88);
        }

        if (v87)
        {
          *(v82 + 4536) = v87;
        }

        if (v132 == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(a1[3], 22, 0, 0, 0);
        }

        v133 = &unk_2A23F6820;
        if (v135)
        {
          v136 = v135;
          operator delete(v135);
        }

        v38 = v105.i32[0];
        v43 = v105.u32[1];
        goto LABEL_32;
      }
    }

    else
    {
      fwrite("AGX: copyTextureToBuffer: blit format is multi sampled\n", 0x37uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

LABEL_76:
    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v110);
  }

  else if (*(v14 + 236))
  {
    v128 = 0;
    v127 = v106;
    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::texBaseAddressesUpdated(v126);
    AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMSparseMiptail(a1 + 1, a2, v126, 0, 0, a6, v14, a7, a8);
  }

  else if (a10[1].i64[0])
  {
    v90 = 0;
    v91 = *(*(v14 + 208) + v19 + 88);
    v92 = 1;
    do
    {
      v93 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v14, a7, *(v14 + 144) + a8, v42, v19);
      AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyBufferToBufferImpl(a1, a2, v98 + v90 * a5 + *(a2 + 72 + *MEMORY[0x29EDC5638]), a6, v93, v91);
      ++v42;
      v90 = v92++;
    }

    while (a10[1].i64[0] > v90);
  }

  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v126);
}

void sub_29CD778B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  *(v39 - 192) = &unk_2A23F6820;
  v41 = *(v39 - 176);
  if (v41)
  {
    *(v39 - 168) = v41;
    operator delete(v41);
  }

  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(&a39);
  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(&STACK[0x378]);
  _Unwind_Resume(a1);
}

void sub_29CD7ACD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a44, 8);
  if (__p)
  {
    a51 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a67, 8);
  v69 = STACK[0x200];
  if (STACK[0x200])
  {
    STACK[0x208] = v69;
    operator delete(v69);
  }

  _Block_object_dispose((v67 - 160), 8);
  _Unwind_Resume(a1);
}

double ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_2(void *a1, _DWORD *a2, _DWORD *a3)
{
  v4 = a1[6];
  v5 = *(*a3 + 592);
  v6 = a3[4];
  v7 = v5[18].i32[0] + v6;
  v8 = *(*a2 + 592);
  v9 = a2[3];
  v10 = a2[4];
  v11 = v8[18].i32[0] + v10;
  v12 = v5[17].i32[0] >> (v5[18].i8[0] + v6);
  if (v12 <= 1)
  {
    v12 = 1;
  }

  LODWORD(v13) = v8[17].i32[0] >> v11;
  if (v13 <= 1)
  {
    LODWORD(v13) = 1;
  }

  if (v13 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v13;
  }

  v24 = 0uLL;
  v14 = a2[2];
  v26 = 0uLL;
  v27 = 0;
  v15 = a1[4];
  v16 = a1[5];
  v17 = a3[2];
  v18 = a3[3];
  v25 = 0;
  v19 = vmin_u32(vmax_u32(vshl_u32(v8[16], vneg_s32(vdup_n_s32(v11))), 0x100000001), vmax_u32(vshl_u32(v5[16], vneg_s32(vdup_n_s32(v7))), 0x100000001));
  v20.i64[0] = v19.u32[0];
  v20.i64[1] = v19.u32[1];
  v22 = v20;
  v23 = v13;
  AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyTextureToTextureImpl(v4, v15, v14, v9, v10, &v26, v16, v17, v18, v6, &v24, &v22);
  return result;
}

uint64_t ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_3(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (*(result + 40) == 1)
  {
    v3 = *(*(*a3 + 592) + 136) >> (*(*(*a3 + 592) + 144) + a3[4]);
    if (v3 <= 1)
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 1;
  }

  *(*(*(result + 32) + 8) + 24) += v3;
  return result;
}

uint64_t ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_4(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = *(*a3 + 592);
  v4 = *(v3 + 584);
  if (v4)
  {
    v5 = *(v3 + 144) + a3[4];
    if (*(v4 + 1304) > v5)
    {
      v6 = *(v3 + 136) >> v5;
      if (v6 <= 1)
      {
        v6 = 1;
      }

      *(*(*(result + 32) + 8) + 24) += v6;
    }
  }

  return result;
}

__n128 __Block_byref_object_copy__433(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__434(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_436(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = *(a1 + 48);
  v6 = *(*a3 + 592);
  v7 = a3[4];
  if (v5)
  {
    v8 = *(v6 + 144);
    v9 = v8 + v7;
    v10 = *(v6 + 136) >> (v8 + v7);
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v9 = *(v6 + 144) + v7;
    v11 = 1;
  }

  v12 = a3[2];
  v13 = *(v6 + 396);
  if (v13 == 3 || v13 == 0)
  {
    v15 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v6, a3[2], 0);
  }

  else
  {
    v16 = v9 + 1;
    if (v9 + 1 < *(v6 + 140) || v16 == *(v6 + 64))
    {
      v17 = *(*a3 + 592);
      v18 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v6, v16, a3[2]);
    }

    else
    {
      v17 = *(*a3 + 592);
      v18 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v6, a3[2]);
    }

    v15 = v18 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v17, v9, v12);
  }

  for (i = 0; i != v11; ++i)
  {
    GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*a3 + 592), a3[3], *(*(*a3 + 592) + 144) + a3[4], i, a3[2]);
    v22 = *(*(a1 + 40) + 8);
    v24 = *(v22 + 48);
    v23 = *(v22 + 56);
    v25 = v22 + 48;
    if (v24 == v23 || *(v23 - 8) != GPUVirtualAddress)
    {
      *&v26 = (*(*(a1 + 32) + 16))();
      *(&v26 + 1) = v20;
      std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v25, &v26);
    }

    else
    {
      *(v23 - 8) = GPUVirtualAddress + v15;
    }
  }
}

void ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_2_437(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(*a3 + 592);
  v4 = *(v3 + 584);
  if (v4)
  {
    v6 = *(v3 + 144) + a3[4];
    if (*(v4 + 1304) > v6)
    {
      if (*(a1 + 48) == 1)
      {
        v8 = *(v3 + 136) >> v6;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }
      }

      else
      {
        v9 = 1;
      }

      v10 = v4 + 648 * a3[2];
      v11 = *(v10 + 396);
      if (v11 == 3 || v11 == 0)
      {
        v13 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v10, 0, 1);
      }

      else
      {
        v14 = v6 + 1;
        if (v6 + 1 < *(v10 + 140) || v14 == *(v10 + 64))
        {
          v15 = v10;
          v16 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v10, v14, 0);
        }

        else
        {
          v15 = v10;
          v16 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v10, 0);
        }

        v13 = v16 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v15, v6, 0);
      }

      for (i = 0; i != v9; ++i)
      {
        GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*(*a3 + 592) + 584) + 648 * a3[2], a3[3], *(*(*a3 + 592) + 144) + a3[4], i, 0);
        v20 = *(*(a1 + 40) + 8);
        v22 = *(v20 + 48);
        v21 = *(v20 + 56);
        v23 = v20 + 48;
        if (v22 == v21 || *(v21 - 8) != GPUVirtualAddress)
        {
          *&v24 = (*(*(a1 + 32) + 16))();
          *(&v24 + 1) = v18;
          std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v23, &v24);
        }

        else
        {
          *(v21 - 8) = GPUVirtualAddress + v13;
        }
      }
    }
  }
}

__n128 __Block_byref_object_copy__438(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__439(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_2_444(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v72 = (*(a1 + 88) & 1) != 0 && (v6 = *(*a2 + 592), (v7 = *(v6 + 584)) != 0) && *(v7 + 1304) > *(v6 + 144) + a2[4];
  v8 = *(a1 + 89);
  v9 = *(*a3 + 592);
  v10 = a3[4];
  if (v8)
  {
    v11 = *(v9 + 144);
    v12 = v11 + v10;
    v13 = *(v9 + 136) >> (v11 + v10);
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v12 = *(v9 + 144) + v10;
    v14 = 1;
  }

  v70 = *(a1 + 80);
  v15 = a3[2];
  v16 = *(v9 + 396);
  if (v16 == 3 || v16 == 0)
  {
    v18 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v9, a3[2], 0);
  }

  else
  {
    v19 = v12 + 1;
    if (v12 + 1 < *(v9 + 140) || v19 == *(v9 + 64))
    {
      v20 = *(*a3 + 592);
      v21 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v9, v19, a3[2]);
    }

    else
    {
      v20 = *(*a3 + 592);
      v21 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v9, a3[2]);
    }

    v18 = v21 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v20, v12, v15);
  }

  v22 = 0;
  v73 = v18;
  v71 = v14;
  do
  {
    v36 = *(a1 + 56);
    v37 = *(*(a1 + 64) + 8);
    v38 = *(a1 + 48);
    GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*a2 + 592), a2[3], *(*(*a2 + 592) + 144) + a2[4], v22, a2[2]);
    v40 = (*(v36 + 16))(v36, GPUVirtualAddress, v18);
    v42 = (*(v38 + 16))(v38, v37 + 48, v40, v41);
    if ((v42 | !v72))
    {
      if (!v42)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v45 = *(a1 + 56);
      v46 = *(*(a1 + 64) + 8);
      v47 = *(a1 + 48);
      v48 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*(*a2 + 592) + 584) + 648 * a2[2], a2[3], *(*(*a2 + 592) + 144) + a2[4], v22, 0);
      v49 = *(*a2 + 592);
      v50 = *(v49 + 584) + 648 * a2[2];
      v51 = *(v50 + 396);
      if (v51 == 3 || v51 == 0)
      {
        v53 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v50, 0, 1);
      }

      else
      {
        v54 = *(v49 + 144) + a2[4];
        v55 = v54 + 1;
        if (v54 + 1 < *(v50 + 140) || v55 == *(v50 + 64))
        {
          v56 = *(v49 + 584) + 648 * a2[2];
          v57 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v50, v55, 0);
        }

        else
        {
          v56 = *(v49 + 584) + 648 * a2[2];
          v57 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v50, 0);
        }

        v53 = v57 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v56, v54, 0);
      }

      v58 = (*(v45 + 16))(v45, v48, v53);
      v14 = v71;
      v18 = v73;
      if (((*(v47 + 16))(v47, v46 + 48, v58, v59) & 1) == 0)
      {
LABEL_29:
        v43 = *(*a2 + 592);
        v44 = a2[4];
        if (*(a1 + 89) == 1)
        {
          v23 = v43[18].i32[0] + v44;
          v24 = 1;
        }

        else
        {
          v23 = v43[18].i32[0] + v44;
          LODWORD(v24) = v43[17].i32[0] >> (v43[18].i8[0] + v44);
          if (v24 <= 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = v24;
          }
        }

        v25 = *(*a3 + 592);
        v27 = a3[3];
        v26 = a3[4];
        v28 = v25[18].i32[0] + v26;
        v76 = 0uLL;
        v29 = a2[2];
        v30 = a2[3];
        v78 = 0uLL;
        v79 = v22;
        v31 = *(a1 + 32);
        v32 = *(a1 + 40);
        v33 = a3[2];
        v77 = v22;
        v34 = vmin_u32(vmax_u32(vshl_u32(v43[16], vneg_s32(vdup_n_s32(v23))), 0x100000001), vmax_u32(vshl_u32(v25[16], vneg_s32(vdup_n_s32(v28))), 0x100000001));
        v35.i64[0] = v34.u32[0];
        v35.i64[1] = v34.u32[1];
        v74 = v35;
        v75 = v24;
        AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyTextureToTextureImpl(v70, v31, v29, v30, v44, &v78, v32, v33, v27, v26, &v76, &v74);
        goto LABEL_26;
      }
    }

    v60 = *(*(a1 + 72) + 8);
    v78.i64[0] = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*a2 + 592), a2[3], *(*(*a2 + 592) + 144) + a2[4], v22, a2[2]);
    v78.i64[1] = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*a3 + 592), a3[3], *(*(*a3 + 592) + 144) + a3[4], v22, a3[2]);
    v79 = v18;
    std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange>>::push_back[abi:nn200100](v60 + 48, v78.i8);
    if (v72)
    {
      v61 = *(*(a1 + 72) + 8);
      v78.i64[0] = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*(*a2 + 592) + 584) + 648 * a2[2], a2[3], *(*(*a2 + 592) + 144) + a2[4], v22, 0);
      v62 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*(*a3 + 592) + 584) + 648 * a3[2], a3[3], *(*(*a3 + 592) + 144) + a3[4], v22, 0);
      v63 = *(*a2 + 592);
      v78.i64[1] = v62;
      v64 = *(v63 + 584) + 648 * a2[2];
      if (*(v64 + 396) != 3 && *(v64 + 396))
      {
        v66 = *(v63 + 144) + a2[4];
        v67 = v66 + 1;
        if (v66 + 1 < *(v64 + 140) || v67 == *(v64 + 64))
        {
          v68 = *(v63 + 584) + 648 * a2[2];
          v69 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v64, v67, 0);
        }

        else
        {
          v68 = *(v63 + 584) + 648 * a2[2];
          v69 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v64, 0);
        }

        v65 = v69 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v68, v66, 0);
        v18 = v73;
      }

      else
      {
        v65 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v64, 0, 1);
      }

      v79 = v65;
      std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange>>::push_back[abi:nn200100](v61 + 48, v78.i8);
    }

LABEL_26:
    ++v22;
  }

  while (v14 != v22);
}

BOOL ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_441(uint64_t a1, unint64_t **a2, unint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (v5 == *a2)
  {
    return 0;
  }

  v6 = (v5 - *a2) >> 4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v4[2 * (v6 >> 1)];
    v9 = v8[1];
    v10 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v9 <= a3)
    {
      v4 = v10;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  return v4 != v5 && *v4 < a4;
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeCommandsInBufferCommon(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(*(a2 + 424) + 27) != 1)
  {
    return;
  }

  v3 = a2;
  v5 = a1 + 4096;
  if ((*(a1 + 4964) & 1) == 0)
  {
    *(a1 + 4964) = 1;
    *(a1 + 4952) = 0;
    v6 = *(a1 + 4544);
    *(v6 + 1360) = 0u;
    *(v6 + 1392) = 0u;
    v7 = *(a1 + 4544);
    *(v7 + 1496) = 0;
    *(v7 + 1424) = 0u;
    *(v7 + 1536) = 0u;
  }

  if (*(a1 + 1896))
  {
    MTLResourceListAddResource();
  }

  if (*(*(v3 + 424) + 24) == 1)
  {
    AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::bindResources(*(a1 + 2336));
    v13 = *(a1 + 2336);
    v14 = *(v13 + 208) + *(v13 + 172);
    v15 = *(v13 + 16);
    v16 = v15[1021] + 3;
    if ((v16 & 0x3FFFFC) != 0)
    {
      v17 = (v16 << 10) & 0xFFFFF000;
    }

    else
    {
      v17 = 0;
    }

    if (v15[979])
    {
      v18 = 0x8000;
    }

    else
    {
      v63 = v15[1015];
      if (*(v13 + 360))
      {
        v63 += *(v13 + 456) * *(v13 + 360) + (v15[1017] >> 5) * *(v13 + 364);
      }

      if (v63 >= 0x8000)
      {
        v18 = 0x8000;
      }

      else
      {
        v18 = v63;
      }
    }

    v64 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(a1 + 5048, v14, v15[327], *(v13 + 184), v18, v17, 0, v8, v9, v10, v11, v12);
    v62 = *(a1 + 2328);
    *(v62 + 608) = 2;
    if ((v64 & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  v19 = *(*(*(a1 + 1872) + 848) + 16576);
  v20 = *v19;
  v21 = *(a1 + 5048);
  v22 = v21 < *v19;
  if (v21 > *v19)
  {
    v20 = *(a1 + 5048);
  }

  *(a1 + 5048) = v20;
  v23 = v19[1];
  v24 = *(a1 + 5052);
  v25 = v24 < v23;
  if (v24 > v23)
  {
    v23 = *(a1 + 5052);
  }

  *(a1 + 5052) = v23;
  v26 = v19[2];
  v27 = *(a1 + 5056);
  if (v25)
  {
    v22 = 1;
  }

  v28 = v27 < v26;
  if (v27 > v26)
  {
    v26 = *(a1 + 5056);
  }

  *(a1 + 5056) = v26;
  v29 = v19[3];
  v30 = *(a1 + 5060);
  if (v28)
  {
    v22 = 1;
  }

  v31 = v30 < v29;
  if (v30 > v29)
  {
    v29 = *(a1 + 5060);
  }

  *(a1 + 5060) = v29;
  v32 = v19[4];
  v33 = *(a1 + 5064);
  if (v31)
  {
    v22 = 1;
  }

  v34 = v33 < v32;
  if (v33 > v32)
  {
    v32 = *(a1 + 5064);
  }

  *(a1 + 5064) = v32;
  v35 = v19[5];
  v36 = *(a1 + 5068);
  if (v34)
  {
    v22 = 1;
  }

  v37 = v36 < v35;
  if (v36 > v35)
  {
    v35 = *(a1 + 5068);
  }

  *(a1 + 5068) = v35;
  v38 = v19[6];
  v39 = *(a1 + 5072);
  if (v37)
  {
    v22 = 1;
  }

  v40 = v39 < v38;
  if (v39 > v38)
  {
    v38 = *(a1 + 5072);
  }

  *(a1 + 5072) = v38;
  v41 = v19[7];
  v42 = *(a1 + 5076);
  if (v40)
  {
    v22 = 1;
  }

  v43 = v42 < v41;
  if (v42 > v41)
  {
    v41 = *(a1 + 5076);
  }

  *(a1 + 5076) = v41;
  v44 = v19[8];
  v45 = *(a1 + 5080);
  v46 = v45 < v44;
  if (v45 > v44)
  {
    v44 = *(a1 + 5080);
  }

  *(a1 + 5080) = v44;
  v47 = v19[9];
  v48 = *(a1 + 5084);
  v49 = v48 < v47;
  if (v48 > v47)
  {
    v47 = *(a1 + 5084);
  }

  *(a1 + 5084) = v47;
  v50 = v19[10];
  v51 = *(a1 + 5088);
  v52 = v51 < v50;
  if (v51 > v50)
  {
    v50 = *(a1 + 5088);
  }

  *(a1 + 5088) = v50;
  v53 = v19[11];
  v54 = *(a1 + 5092);
  v55 = v54 < v53;
  if (v54 > v53)
  {
    v53 = *(a1 + 5092);
  }

  *(a1 + 5092) = v53;
  v56 = v19[12];
  v57 = *(a1 + 5096);
  v58 = v57 < v56;
  if (v57 > v56)
  {
    v56 = *(a1 + 5096);
  }

  *(a1 + 5096) = v56;
  v59 = v58 || v55;
  v60 = v22 | (v43 || v46 || v49 || v52) | v59;
  if (*(*(v3 + 424) + 26) == 1)
  {
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((a1 + 5688), (*(*(*(a1 + 1872) + 848) + 7168) + 268));
  }

  v61 = atomic_load((*(*(a1 + 1872) + 848) + 17020));
  v62 = *(a1 + 2328);
  *(v62 + 591) |= v61 & 1;
  *(v62 + 608) = 2;
  if (v60)
  {
    v14 = 0;
LABEL_69:
    *(a1 + 5584) |= 0x10000000000000uLL;
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 5048, v62 + 336, 0);
LABEL_70:
    if (v14 && **MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }
  }

  v65 = MEMORY[0x29EDC5638];
  if (*(*(v3 + 424) + 24) == 1 && (*(*(*(a1 + 2336) + 16) + 2404) & 0x20) == 0)
  {
    goto LABEL_85;
  }

  v66 = *(*(*(a1 + 1872) + 848) + 17072);
  if (!v66)
  {
    goto LABEL_85;
  }

  IOGPUResourceListAddResource();
  v67 = (v66 + *v65);
  v68 = v67[1].i64[1];
  v69 = *(a1 + 4544);
  *(v69 + 1320) = v67->i64[1];
  *(v69 + 1624) = v68;
  *(a1 + 4600) = v67;
  v70 = *(a1 + 2008);
  v71 = v70[2].i64[1];
  if (*(v71 + 480) != 1)
  {
    goto LABEL_82;
  }

  v72 = v70[3];
  v73 = v70[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v72), vceqzq_s64(v73))))) & 1) == 0)
  {
    goto LABEL_82;
  }

  if ((v67[1].i8[7] & 0x10) != 0)
  {
    v67 = v67->i64[0];
  }

  v74 = v67->i64[0];
  if (!v74 || (v75 = *v74, v76 = v74[1], (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v74), vceqzq_s64(v76))))) & 1) == 0))
  {
LABEL_82:
    v80 = 0;
    v81 = 0;
    goto LABEL_83;
  }

  v77 = vandq_s8(v76, v73);
  v78 = v77.u64[1];
  if (v77.i64[1])
  {
    v79 = 3;
  }

  else
  {
    v78 = v77.i64[0];
    if (v77.i64[0])
    {
      v79 = 2;
    }

    else
    {
      v224 = vandq_s8(v75, v72);
      v78 = v224.u64[1];
      if (v224.i64[1])
      {
        v79 = 1;
      }

      else
      {
        v79 = 0;
        v80 = 0;
        v81 = 0;
        v78 = v224.i64[0];
        if (!v224.i64[0])
        {
          goto LABEL_83;
        }
      }
    }
  }

  v225 = &v70->i8[8 * v79];
  v226 = __clz(v78) ^ 0x3F;
  v80 = ((*(v225 + 10) >> v226) & 1) << 37;
  v81 = ((*(v225 + 14) >> v226) & 1) << 37;
LABEL_83:
  *v71 = *v71 & 0xFFFFFFDFFFFFFFFFLL | v80;
  *(v71 + 160) = *(v71 + 160) & 0xFFFFFFDFFFFFFFFFLL | v81;
  *(v71 + 320) &= ~0x2000000000uLL;
  *(a1 + 4912) |= 0x2000000000uLL;
  *(a1 + 4944) |= 1u;
  if (*(a1 + 1896))
  {
    MTLResourceListAddResource();
  }

LABEL_85:
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::prepareForEnqueue(a1, 1);
  if (!*(a1 + 2184))
  {
    *(a1 + 5024) = *(a1 + 776);
    LODWORD(v240) = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, a1 + 24, 16, 1, 0, 0, &v240);
    v82 = *(a1 + 776);
    *v82++ = xmmword_29D2F1C80;
    *(a1 + 776) = v82;
    *(a1 + 5032) = v82 + *(a1 + 792);
    *(a1 + 5040) = v82;
  }

  v83 = *(a1 + 2336);
  v84 = *(a1 + 2160);
  v85 = v84[18] + 87;
  if (v85 <= v84[17])
  {
LABEL_88:
    v84[19] = v85;
    goto LABEL_89;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 2160), 3, 0))
  {
    v85 = v84[18] + 87;
    if (v85 > v84[17])
    {
      goto LABEL_228;
    }

    goto LABEL_88;
  }

LABEL_89:
  v86 = *(a1 + 2160);
  v87 = (*(v86 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
  v88 = *(v86 + 160);
  *(v86 + 144) = v87 + 56;
  v89 = *(*(v3 + 424) + 24);
  *(v87 + 24) = v89;
  *(v87 + 52) = 0;
  if (v89 == 1)
  {
    v90 = *(v83 + 32);
  }

  else
  {
    v90 = 0;
  }

  *(v87 + 32) = v90;
  if (!*(a1 + 2184))
  {
    v91 = *(v86 + 880);
    *(a1 + 2184) = *(v86 + 896) + v91;
    *(a1 + 2200) = v91;
  }

  v92 = v87 + v88;
  v235 = v5;
  v236 = v3;
  if (*a3 == 1)
  {
    *v87 = a3[2];
    *(v87 + 4) = a3[3];
    *(v87 + 8) = 0;
    v96 = *(a1 + 2176);
    v97 = *(*(v96 + 16) + 4064);
    *(v87 + 48) = v97;
    v98 = a3[3] - a3[2];
    v99 = (v98 + 1);
    if ((*(a3 + 6) - *(a3 + 4) + 1) < v97)
    {
      LOWORD(v97) = v98 + 1;
    }

    if ((v97 & 0xFFE0) != 0)
    {
      v100 = 32;
    }

    else
    {
      v100 = v97;
    }

    v101 = *v65;
    v102 = *(v3 + 416) + v101;
    v103 = *(a1 + 4544);
    *(v103 + 1448) = *(v102 + 8);
    *(a1 + 4728) = v102;
    *(a1 + 4912) |= 0x20000000000000uLL;
    v104 = *(a1 + 4944) | 1;
    *(a1 + 4944) = v104;
    v105 = *(v86 + 1840) - 1;
    if (v105 > 6)
    {
      v106 = 10;
    }

    else
    {
      v106 = dword_29D2F76D0[v105];
    }

    v116 = v106;
    if (((1 << v106) & 0xFFF00000480) != 0 && !*(v86 + 32 * v106 + 48))
    {
      AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v86, v106);
      v101 = *v65;
      v103 = *(a1 + 4544);
      v96 = *(a1 + 2176);
      v104 = *(a1 + 4944) | 1;
    }

    v117 = *(*(v86 + 24) + (v116 << 6) + 32);
    *(v103 + 1440) = v92;
    *(a1 + 4720) = v117 + v101;
    *(a1 + 4912) |= 0x10000000000000uLL;
    *(a1 + 4944) = v104;
    *(a1 + 2060) |= 1u;
    v118 = *(a1 + 2336);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(a1, v96);
    v240 = v99;
    v241 = vdupq_n_s64(1uLL);
    v238 = v100;
    v239 = v241;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsInternal(a1, 26, &v240, &v238);
    if (*(a1 + 2292) == 1 && *(v5 + 1504) == 1)
    {
      v119 = *(a1 + 5616);
      if (*(a1 + 5608) != v119)
      {
        *(v119 - 8) = 1;
        *(v119 - 7) = *(a1 + 2306);
        v120 = *(a1 + 5640);
        v121 = *(v120 - 32);
        v122 = *(v120 - 36) + 1;
        *(v120 - 36) = v122;
        if (*(a1 + 5660) < (v121 + v122))
        {
          v123 = *(a1 + 4976) != 0;
          v124 = *(a1 + 4980);
          LODWORD(v240) = 1;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, 24, 0, v123, v124, &v240);
          ++*(a1 + 5660);
        }
      }
    }

    if (v118)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(a1, v118);
    }

    goto LABEL_125;
  }

  if (*a3)
  {
LABEL_125:
    v125 = 0;
    goto LABEL_159;
  }

  if (!*(a1 + 2192))
  {
    v93 = *(v86 + 912);
    *(a1 + 2192) = *(v86 + 928) + v93;
    *(a1 + 2208) = v93;
  }

  *v87 = 0;
  *(v87 + 8) = *(a3 + 1);
  v94 = *(v86 + 1840) - 1;
  if (v94 > 6)
  {
    v95 = 10;
  }

  else
  {
    v95 = dword_29D2F76D0[v94];
  }

  v107 = v95;
  v108 = v86 + 32 * v95;
  if (((1 << v95) & 0xFFF00000480) != 0 && !*(v108 + 48) && (AGX::DataBufferAllocator<44ul>::growNoInline(v86, v95, 0) & 1) == 0)
  {
LABEL_228:
    abort();
  }

  v110 = *(v108 + 40);
  v109 = *(v108 + 48);
  v111 = (v108 + 40);
  v112 = v109 + 12;
  if (v112 <= v110)
  {
    goto LABEL_111;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v86, v107, 0))
  {
    v112 = v111[1] + 12;
    if (v112 > *v111)
    {
      goto LABEL_228;
    }

LABEL_111:
    v111[2] = v112;
  }

  v113 = *(a1 + 2160);
  v114 = *(v113 + 1840) - 1;
  if (v114 > 6)
  {
    v115 = 10;
  }

  else
  {
    v115 = qword_29D2F76F0[v114];
  }

  v126 = v113 + 32 * v115;
  v127 = *(v126 + 48);
  v128 = *(v126 + 64) + v127;
  *(v126 + 48) = v127 + 12;
  *v127 = 805306368;
  *(v127 + 8) = 0x80000000;
  *(v87 + 16) = v128;
  v129 = *(a1 + 2160);
  v130 = *(v129 + 1840) - 1;
  if (v130 > 6)
  {
    v131 = 10;
  }

  else
  {
    v131 = dword_29D2F76D0[v130];
  }

  v132 = v131;
  v133 = v129 + 32 * v131;
  if (((0xFFF00000480uLL >> v131) & 1) != 0 && !*(v133 + 48) && (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 2160), v131, 0) & 1) == 0)
  {
    goto LABEL_228;
  }

  v135 = *(v133 + 40);
  v134 = *(v133 + 48);
  v136 = (v133 + 40);
  v137 = v134 + 55;
  if (v137 > v135)
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v129, v132, 0))
    {
      goto LABEL_134;
    }

    v137 = v136[1] + 55;
    if (v137 > *v136)
    {
      goto LABEL_228;
    }
  }

  v136[2] = v137;
LABEL_134:
  v138 = *(a1 + 2160);
  v139 = *(v138 + 1840) - 1;
  if (v139 > 6)
  {
    v140 = 10;
  }

  else
  {
    v140 = qword_29D2F76F0[v139];
  }

  v5 = v235;
  v141 = v138 + 40 + 32 * v140;
  v142 = (*(v141 + 8) + 31) & 0xFFFFFFFFFFFFFFE0;
  v143 = v142 + *(v141 + 24);
  *(v141 + 8) = v142 | 0x18;
  *v142 = xmmword_29D2F1AA0;
  *(v142 + 16) = 0x100000001;
  *(v87 + 40) = v143;
  *(v87 + 48) = *(*(*(a1 + 2176) + 16) + 4064);
  v144 = *v65;
  v145 = *(v236 + 416) + v144;
  v146 = *(a1 + 4544);
  *(v146 + 1448) = *(v145 + 8);
  *(a1 + 4728) = v145;
  *(a1 + 4912) |= 0x20000000000000uLL;
  v147 = *(a1 + 4944) | 1;
  *(a1 + 4944) = v147;
  if (v139 > 6)
  {
    v148 = 10;
  }

  else
  {
    v148 = dword_29D2F76D0[v139];
  }

  v149 = v148;
  if (((0xFFF00000480uLL >> v148) & 1) != 0 && !*(v138 + 40 + 32 * v148 + 8))
  {
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v138, v148);
    v144 = *v65;
    v146 = *(a1 + 4544);
    v147 = *(a1 + 4944) | 1;
  }

  v150 = *(*(v138 + 24) + (v149 << 6) + 32);
  *(v146 + 1440) = v92;
  *(a1 + 4720) = v150 + v144;
  *(a1 + 4912) |= 0x10000000000000uLL;
  *(a1 + 4944) = v147;
  v151 = *(a1 + 2168);
  *(a1 + 2060) |= 1u;
  v152 = *(a1 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(a1, v151);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsInternal(a1, 27, qword_29D2F5330, qword_29D2F5330);
  if (*(a1 + 2292) == 1 && *(v235 + 1504) == 1)
  {
    v153 = *(a1 + 5616);
    if (*(a1 + 5608) != v153)
    {
      *(v153 - 8) = 1;
      *(v153 - 7) = *(a1 + 2306);
      v154 = *(a1 + 5640);
      v155 = *(v154 - 32);
      v156 = *(v154 - 36) + 1;
      *(v154 - 36) = v156;
      if (*(a1 + 5660) < (v155 + v156))
      {
        v157 = *(a1 + 4976) != 0;
        v158 = *(a1 + 4980);
        LODWORD(v240) = 1;
        agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, 24, 0, v157, v158, &v240);
        ++*(a1 + 5660);
      }
    }
  }

  if (v152)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(a1, v152);
  }

  v159 = *(a1 + 2176);
  v160 = *(a1 + 2160);
  v161 = *(v160 + 1840) - 1;
  if (v161 > 6)
  {
    v162 = 10;
  }

  else
  {
    v162 = dword_29D2F76D0[v161];
  }

  v163 = v162;
  if (((0xFFF00000480uLL >> v162) & 1) != 0 && !*(v160 + 32 * v162 + 48))
  {
    v230 = *(a1 + 2176);
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(*(a1 + 2160), v162);
    v159 = v230;
  }

  v164 = *(*(v160 + 24) + (v163 << 6) + 32);
  v165 = *v65;
  *(a1 + 2060) |= 1u;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(a1, 26, v159, v143, v164 + v165);
  v166 = *(a1 + 2160);
  LODWORD(v240) = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v166, 48, 1, 0, 0, &v240);
  v167 = *(a1 + 2160);
  v125 = *(v167 + 752);
  ++*(a1 + 1940);
  *v125 = 0x400010000;
  *(v125 + 8) = 0x4000000000000000;
  *(v125 + 16) = 0u;
  *(v125 + 32) = 0u;
  *(v167 + 752) = v125 + 48;
  v168 = *(a1 + 2160);
  LODWORD(v240) = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v168, 8, 1, 0, 0, &v240);
  v169 = *(a1 + 2160);
  v170 = *(v169 + 752);
  *v170 = __ROR8__(v128, 32) & 0xFFFFFFFF0000FFFFLL | 0x30000000;
  *(v169 + 752) = v170 + 1;
  v171 = *(*(*(a1 + 2168) + 16) + 2728);
  do
  {
    v171 &= ~(1 << __clz(__rbit32(v171)));
    IOGPUResourceListAddResource();
  }

  while (v171);
  v3 = v236;
LABEL_159:
  v172 = *(*(*(a1 + 2176) + 16) + 2728);
  do
  {
    v172 &= ~(1 << __clz(__rbit32(v172)));
    IOGPUResourceListAddResource();
  }

  while (v172);
  IOGPUResourceListAddResource();
  v173 = *(a1 + 2336);
  v174 = *(v5 + 440);
  v175 = *(v3 + 424);
  v176 = *(v5 + 448);
  v234 = v125;
  if (*(v175 + 25) != 1 || (v177 = *(v5 + 440), !v174))
  {
    v186 = 0;
    v187 = 0;
    goto LABEL_172;
  }

  v232 = *(a1 + 2336);
  v178 = *v174;
  v179 = *(a1 + 2160);
  v180 = v179[18] + 311;
  if (v180 <= v179[17])
  {
    goto LABEL_164;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 2160), 3, 0))
  {
    v180 = v179[18] + 311;
    if (v180 > v179[17])
    {
      goto LABEL_228;
    }

LABEL_164:
    v179[19] = v180;
  }

  v181 = *(a1 + 2160);
  v182 = (*(v181 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
  v183 = *(v181 + 160);
  *(v181 + 144) = v182 + 280;
  memcpy(v182, (*(v177 + 3) + *(v177 + 1)), 8 * v178);
  v184 = *(v176 + 1272);
  *(v182 + 264) = *(v176 + 1288);
  *(v182 + 248) = v184;
  if (v177[3] == 1)
  {
    v185 = 4 * *v177;
  }

  else
  {
    v185 = 0;
  }

  v188 = *(a1 + 2160);
  v189 = v185 + 31;
  v190 = v188[18] + v185 + 31;
  if (v190 > v188[17])
  {
    v231 = v185;
    v229 = AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 2160), 3, 0);
    v185 = v231;
    if (!v229)
    {
      goto LABEL_171;
    }

    v190 = v188[18] + v189;
    if (v190 > v188[17])
    {
      goto LABEL_228;
    }
  }

  v188[19] = v190;
LABEL_171:
  v187 = v182 + v183;
  v191 = *(a1 + 2160);
  v192 = ((*(v191 + 144) + 31) & 0xFFFFFFFFFFFFFFE0);
  v186 = &v192[*(v191 + 160)];
  *(v191 + 144) = &v192[v185];
  memcpy(v192, (*(v177 + 3) + *(v177 + 5)), v185);
  v173 = v232;
LABEL_172:
  v193 = *(a1 + 2160);
  v194 = v193[26] + 179;
  if (v194 <= v193[25])
  {
LABEL_173:
    v193[27] = v194;
    goto LABEL_174;
  }

  v227 = v173;
  v228 = AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 2160), 5, 0);
  v173 = v227;
  if (v228)
  {
    v194 = v193[26] + 179;
    if (v194 > v193[25])
    {
      goto LABEL_228;
    }

    goto LABEL_173;
  }

LABEL_174:
  v195 = *(a1 + 2160);
  v196 = ((v195[26] + 63) & 0xFFFFFFFFFFFFFFC0);
  v197 = v195[28];
  v195[26] = v196 + 116;
  if (*(v175 + 24))
  {
    v198 = *(*(v173 + 16) + 3264);
    v199 = v195[18] + 55;
    if (v199 > v195[17])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v195, 3, 0))
      {
        goto LABEL_177;
      }

      v199 = v195[18] + 55;
      if (v199 > v195[17])
      {
        goto LABEL_228;
      }
    }

    v195[19] = v199;
LABEL_177:
    v195 = *(a1 + 2160);
    v200 = (v195[18] + 31) & 0xFFFFFFFFFFFFFFE0;
    v201 = v200 + v195[20];
    v202 = v200 | 0x18;
    v195[18] = v200 | 0x18;
    *v200 = *(v176 + 1472);
    *(v200 + 8) = *(v176 + 1488);
    *(v200 + 16) = *(v176 + 1520);
    goto LABEL_179;
  }

  v201 = 0;
  v202 = v195[18];
  v198 = 0xFFFFFFFFLL;
LABEL_179:
  v203 = v202 + 2479;
  if (v203 > v195[17])
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v195, 3, 0))
    {
      goto LABEL_181;
    }

    v203 = v195[18] + 2479;
    if (v203 > v195[17])
    {
      goto LABEL_228;
    }
  }

  v195[19] = v203;
LABEL_181:
  v233 = v175;
  v204 = &v196[v197];
  v205 = *(a1 + 2160);
  v206 = (*(v205 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
  v207 = *(v205 + 160);
  *(v205 + 144) = v206 + 2448;
  memcpy(v206, (v176 + 1304), 0x110uLL);
  memcpy((v206 + 272), v176, 0x880uLL);
  AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(1, v196, v187, 0, v201, v206 + v207, 0, v186, v208, v209, v210, v211, 0, v198);
  v212 = (v204 >> 16) & 0xFFC00000;
  v213 = v204 >> 6;
  if (*a3 == 1)
  {
    v214 = *(a1 + 2160);
    LODWORD(v240) = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v214, 48, 1, 0, 0, &v240);
    v215 = *(a1 + 2160);
    ++*(a1 + 1940);
    v216 = *(v215 + 752);
    *v216 = 0x400010000;
    *(v216 + 8) = 0x4000000000000000;
    *(v216 + 24) = 0;
    *(v216 + 32) = 0;
    *(v216 + 16) = 0;
    *(v216 + 40) = v212;
    *(v216 + 44) = v213;
    *(v215 + 752) = v216 + 48;
  }

  else
  {
    *v234 = 0x400010000;
    *(v234 + 8) = 0x4000000000000000;
    *(v234 + 24) = 0;
    *(v234 + 32) = 0;
    *(v234 + 16) = 0;
    *(v234 + 40) = v212;
    *(v234 + 44) = v213;
  }

  if (*a3 == 1)
  {
    v217 = __ROR8__(*(*(v236 + 416) + *MEMORY[0x29EDC5638] + 8) + (*(v233 + 52) + *(v233 + 56) * a3[2]), 32) & 0xFFFFFFFF0000FFFFLL;
    v218 = *(a1 + 2160);
    LODWORD(v240) = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v218, 8, 1, 0, 0, &v240);
    v219 = *(a1 + 2160);
    v220 = *(v219 + 752);
    *v220 = v217 | 0x30000000;
    *(v219 + 752) = v220 + 1;
  }

  if (!*(a1 + 2292))
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(a1, 22, 0, 0, 0);
    *(a1 + 2306) = 0;
  }

  if (*(*(v236 + 424) + 24) == 1)
  {
    v221 = *(*(a1 + 2336) + 348);
  }

  else
  {
    v221 = 1;
  }

  v222 = *(v235 + 1088) ^ 1;
  v223 = v221 & (*(a1 + 1922) | v222) & 1;
  *(a1 + 2306) |= v221 & (*(a1 + 1923) | v222) & 1;
  *(*(a1 + 2328) + 586) |= v223;
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeIndirectKernelWithThreadgroupOptimization(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (*(a1 + 2292))
  {
    if (**(a1 + 5552) != 96)
    {
      goto LABEL_8;
    }

    v7 = a1;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(a1, 22, 0, 0, 0);
    a1 = v7;
    *(v7 + 2306) = 0;
    if (*(v7 + 2292) != 1 || *(v7 + 4976))
    {
      goto LABEL_8;
    }

    v8 = (v7 + 5544);
    v9 = (v7 + 5552);
    v10 = (v7 + 5560);
    a1 = v7;
  }

  else
  {
    v31 = 0;
    v8 = (a1 + 5544);
    v9 = (a1 + 5552);
    v10 = &v31;
    v7 = a1;
  }

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(a1, 22, v8, v9, v10);
  a1 = v7;
LABEL_8:
  v11 = *(*(a1 + 2336) + 16);
  v12 = *(a1 + 5552);
  v13 = *v12;
  *v12 = v13 + 1;
  v14 = *(a1 + 5544) + 48 * v13;
  v15 = a4[1];
  *(v14 + 28) = *a4;
  *(v14 + 30) = v15;
  *(v14 + 32) = a4[2];
  *(v14 + 34) = *(v11 + 4064);
  *(v14 + 36) = *(v11 + 4068);
  *(v14 + 38) = 96;
  *(v14 + 40) = *(a1 + 5536);
  *v14 = a2;
  *(v14 + 44) = a3;
  v16 = *(a1 + 1864) - 1;
  if (v16 > 6)
  {
    v17 = 10;
  }

  else
  {
    v17 = dword_29D2FF040[v16];
  }

  v18 = v17;
  if (((1 << v17) & 0xFFF00000480) != 0 && !*(a1 + 32 * v17 + 72))
  {
    v29 = a1;
    v30 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v17, 0);
    a1 = v29;
    if ((v30 & 1) == 0)
    {
LABEL_25:
      abort();
    }
  }

  v19 = a1 + 64;
  v20 = (a1 + 64 + 32 * v18);
  v21 = v20[1] + 47;
  if (v21 <= *v20)
  {
    goto LABEL_14;
  }

  v27 = a1;
  v28 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v18, 0);
  a1 = v27;
  if (v28)
  {
    v21 = v20[1] + 47;
    if (v21 > *v20)
    {
      goto LABEL_25;
    }

LABEL_14:
    v20[2] = v21;
  }

  v22 = *(a1 + 1864) - 1;
  if (v22 > 6)
  {
    v23 = 10;
  }

  else
  {
    v23 = qword_29D2FF060[v22];
  }

  v24 = v19 + 32 * v23;
  v25 = (*(v24 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = v25 + *(v24 + 24);
  *(v24 + 8) = v25 + 32;
  *(*(a1 + 5544) + 48 * v13 + 8) = v26;

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelWithImprovedIndirectCommon(a1, v26);
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelWithImprovedIndirectCommon(uint64_t a1, size_t a2)
{
  *(a1 + 4912) |= 0x800000000uLL;
  *(a1 + 4944) |= 1u;
  *(*(a1 + 4544) + 1304) = a2;
  v3 = MEMORY[0x29EDC5638];
  *(a1 + 4584) = *(*(a1 + 48) + 224) + *MEMORY[0x29EDC5638];
  v4 = *(a1 + 168);
  v5 = v4 + 12;
  if ((v4 + 12) <= *(a1 + 160))
  {
LABEL_2:
    *(a1 + 176) = v5;
    goto LABEL_3;
  }

  v9 = a1;
  v10 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
  a1 = v9;
  v4 = *(v9 + 168);
  if (v10)
  {
    v5 = v4 + 12;
    if ((v4 + 12) > *(v9 + 160))
    {
      abort();
    }

    goto LABEL_2;
  }

LABEL_3:
  v6 = *(a1 + 184) + v4;
  *(a1 + 168) = v4 + 12;
  *v4 = 0x100000001;
  *(v4 + 8) = 1;
  v7 = *(a1 + 4544);
  *(v7 + 1312) = v6;
  *(a1 + 4592) = *(*(a1 + 48) + 224) + *v3;
  *(a1 + 4912) |= 0x1000000000uLL;
  *(a1 + 4944) |= 1u;
  *(v7 + 28) = 0x100000001;
  *(v7 + 36) = 1;
  *(v7 + 40) = 0xFFFF000000010001;
  *(v7 + 48) = -65536;
  *(v7 + 52) = 0;
  *(v7 + 60) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = *(a1 + 2336);

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::performEnqueueKernel(a1, 0x16u, a2, v8, 2);
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadgroupsIndirectInternal(uint64_t a1, size_t a2, void *a3)
{
  v3 = *(a1 + 2336);
  if (a3[1] * *a3 * a3[2] > *(v3 + 456))
  {
    return;
  }

  if ((*(a1 + 2292) != 1 || !*(a1 + 4976)) && (*(a1 + 5600) & 1) == 0)
  {
    v5 = *(v3 + 16);
    if (*(v5 + 4088) == 1 && (*(v3 + 346) & 1) == 0 && !*(v5 + 3916) && !*(v5 + 3912))
    {
      v29 = *a3;
      v30 = a3[2];
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeIndirectKernelWithThreadgroupOptimization(a1, a2, 0, &v29);
      return;
    }
  }

  *(a1 + 4912) |= 0x800000000uLL;
  *(a1 + 4944) |= 1u;
  *(*(a1 + 4544) + 1304) = a2;
  v6 = MEMORY[0x29EDC5638];
  *(a1 + 4584) = *(*(a1 + 48) + 224) + *MEMORY[0x29EDC5638];
  v7 = *(a1 + 168);
  v8 = v7 + 3;
  if ((v7 + 3) > *(a1 + 160))
  {
    v26 = a3;
    v27 = a1;
    v28 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
    a1 = v27;
    v7 = *(v27 + 168);
    if (!v28)
    {
      a3 = v26;
      goto LABEL_11;
    }

    v8 = v7 + 3;
    a3 = v26;
    if ((v7 + 3) > *(v27 + 160))
    {
      abort();
    }
  }

  *(a1 + 176) = v8;
LABEL_11:
  v9 = v7 + *(a1 + 184);
  *(a1 + 168) = v7 + 3;
  v10 = *a3;
  v11 = a3[1];
  v12 = *(a3 + 4);
  *v7 = *a3;
  v7[1] = v11;
  v7[2] = v12;
  v13 = *(a1 + 4544);
  *(v13 + 1312) = v9;
  *(a1 + 4592) = *(*(a1 + 48) + 224) + *v6;
  *(a1 + 4912) |= 0x1000000000uLL;
  *(a1 + 4944) |= 1u;
  *(v13 + 28) = v10;
  *(v13 + 32) = v11;
  *(v13 + 36) = v12;
  *(v13 + 40) = v12 * v11 * v10;
  *(v13 + 42) = v11 * v10;
  if ((v11 * v10) == 1)
  {
    v14 = 0;
    LOWORD(v15) = -1;
  }

  else
  {
    v16 = (v11 * v10);
    v17 = __clz((v11 * v10 - 1)) - 16;
    if (v16 == 1)
    {
      v18 = 16;
    }

    else
    {
      v18 = v17;
    }

    v14 = 15 - v18;
    v15 = ((1 << (v18 ^ 0x1F)) + v16 - 1) / v16 - 1;
  }

  *(v13 + 44) = v14;
  *(v13 + 46) = v15;
  if (v10 == 1)
  {
    v19 = 0;
    LOWORD(v20) = -1;
  }

  else
  {
    v21 = v10;
    v22 = v10 - 1;
    v23 = __clz((v10 - 1)) - 16;
    if (v21 == 1)
    {
      v24 = 16;
    }

    else
    {
      v24 = v23;
    }

    v19 = 15 - v24;
    v20 = ((1 << (v24 ^ 0x1F)) + v22) / v21 - 1;
  }

  *(v13 + 48) = v19;
  *(v13 + 50) = v20;
  *(v13 + 52) = 0;
  *(v13 + 60) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v25 = *(a1 + 2336);

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::performEnqueueKernel(a1, 0x16u, a2, v25, 1);
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelCommonImpl(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = *(a1 + 168);
  v4 = v3 + 6;
  if ((v3 + 6) <= *(a1 + 160))
  {
LABEL_2:
    *(a1 + 176) = v4;
    goto LABEL_3;
  }

  v25 = a3;
  v26 = a2;
  v27 = a1;
  v28 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
  a1 = v27;
  v3 = *(v27 + 168);
  if (v28)
  {
    v4 = v3 + 6;
    a2 = v26;
    a3 = v25;
    if ((v3 + 6) > *(v27 + 160))
    {
      abort();
    }

    goto LABEL_2;
  }

  a2 = v26;
  a3 = v25;
LABEL_3:
  v5 = v3 + *(a1 + 184);
  *(a1 + 168) = v3 + 6;
  v6 = *a3;
  v7 = a3[2];
  v8 = a3[4];
  *v3 = *a3;
  v3[1] = v7;
  v3[2] = v8;
  v9 = *(a1 + 4544);
  *(v9 + 1304) = v5;
  v10 = *(*(a1 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(a1 + 4584) = v10;
  *(a1 + 4912) |= 0x800000000uLL;
  *(a1 + 4944) |= 1u;
  v11 = v5 + 12;
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 4);
  v3[3] = *a2;
  v3[4] = v13;
  v3[5] = v14;
  *(v9 + 1312) = v11;
  *(a1 + 4592) = v10;
  *(a1 + 4912) |= 0x1000000000uLL;
  *(a1 + 4944) |= 1u;
  *(v9 + 28) = v12;
  *(v9 + 32) = v13;
  *(v9 + 36) = v14;
  *(v9 + 40) = v14 * v13 * v12;
  *(v9 + 42) = v13 * v12;
  if ((v13 * v12) == 1)
  {
    v15 = 0;
    LOWORD(v16) = -1;
  }

  else
  {
    v17 = (v13 * v12);
    v18 = __clz((v13 * v12 - 1)) - 16;
    if (v17 == 1)
    {
      v19 = 16;
    }

    else
    {
      v19 = v18;
    }

    v15 = 15 - v19;
    v16 = ((1 << (v19 ^ 0x1F)) + (v13 * v12) - 1) / v17 - 1;
  }

  *(v9 + 44) = v15;
  *(v9 + 46) = v16;
  if (v12 == 1)
  {
    v20 = 0;
    LOWORD(v21) = -1;
  }

  else
  {
    v22 = __clz((v12 - 1)) - 16;
    if (v12 == 1)
    {
      v23 = 16;
    }

    else
    {
      v23 = v22;
    }

    v20 = 15 - v23;
    v21 = ((1 << (v23 ^ 0x1F)) + v12 - 1) / v12 - 1;
  }

  *(v9 + 48) = v20;
  *(v9 + 50) = v21;
  *(v9 + 52) = v12 * v6;
  *(v9 + 56) = v13 * v7;
  *(v9 + 60) = v14 * v8;
  *(v9 + 16) = v6;
  *(v9 + 20) = v7;
  *(v9 + 24) = v8;
  v24 = *(a1 + 2336);

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::performEnqueueKernel(a1, 0x16u, 0, v24, 0);
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v9 = a1 + 24576;
  v10 = *(a1 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(a1, a3);
  *(a1 + 26688) = a4;
  *(*(a1 + 22496) + 1304) = a4;
  *(a1 + 22784) = a5;
  *(a1 + 27560) |= 0x800000000uLL;
  *(v9 + 3016) |= 1u;
  v11 = *(a1 + 168);
  v12 = v11 + 12;
  if ((v11 + 12) > *(a1 + 160))
  {
    v15 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
    v11 = *(a1 + 168);
    if (!v15)
    {
      goto LABEL_3;
    }

    v12 = v11 + 12;
    if ((v11 + 12) > *(a1 + 160))
    {
      abort();
    }
  }

  *(a1 + 176) = v12;
LABEL_3:
  v13 = *(a1 + 184) + v11;
  *(a1 + 168) = v11 + 12;
  *v11 = 0x100000001;
  *(v11 + 8) = 1;
  *(a1 + 26696) = v13;
  v14 = *(a1 + 22496);
  *(v14 + 1312) = v13;
  *(a1 + 22792) = *(*(a1 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(a1 + 27560) |= 0x1000000000uLL;
  *(v9 + 3016) |= 1u;
  *(v14 + 28) = 0x100000001;
  *(v14 + 36) = 1;
  *(v14 + 40) = 0xFFFF000000010001;
  *(v14 + 48) = -65536;
  *(v14 + 52) = 0;
  *(v14 + 60) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::performEnqueueKernel(a1, a2, a4, *(a1 + 2336), 2);
  if (*(a1 + 2292) == 1 && (AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(a1, a2, 0, 0), *(a1 + 2306) = 0, *(a1 + 2292) == 1) && !*(v9 + 3048))
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(a1, a2, (a1 + 28192), (a1 + 28200), (a1 + 28208));
    if (!v10)
    {
      return;
    }
  }

  else if (!v10)
  {
    return;
  }

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(a1, v10);
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::getProxyResourceForRestart(void *a1)
{
  v1 = a1[6];
  if (!*(v1 + 1240) || (v2 = *(v1 + 1248)) == 0)
  {
    v3 = a1[85];
    if (!v3)
    {
      v6 = a1;
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 3, 19, 0))
      {
        goto LABEL_12;
      }

      a1 = v6;
      v3 = v6[85];
    }

    v4 = v3 + 16;
    if ((v3 + 16) <= a1[84])
    {
      goto LABEL_5;
    }

    v7 = a1;
    v8 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 3, 19, 0);
    a1 = v7;
    v3 = v7[85];
    if (!v8)
    {
      goto LABEL_6;
    }

    v4 = v3 + 16;
    if ((v3 + 16) <= v7[84])
    {
LABEL_5:
      a1[86] = v4;
LABEL_6:
      a1[85] = v3 + 16;
      return *(a1[6] + 1248);
    }

LABEL_12:
    abort();
  }

  return v2;
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::handleFirstControlFlowPrologue(uint64_t a1)
{
  if ((*(a1 + 28090) & 1) == 0)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::restartComputePass(a1, 22);
  }
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::handleLastControlFlowEpilogue(uint64_t a1)
{
  if ((*(a1 + 28090) & 2) != 0)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::restartComputePass(a1, 22);
  }
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::handleControlFlowEpilogue(uint64_t result)
{
  if (!*(*(result + 1912) + 520))
  {
    *(result + 28090) |= 2u;
  }

  *(result + 2344) = 0;
  return result;
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertBarrierForCoalescingImpl(uint64_t a1)
{
  if (*(a1 + 2292) == 1 || *(a1 + 27624) >= 2u)
  {
    v1 = *(a1 + 27616);
    if (!v1)
    {
      operator new();
    }

    *v1 = *(a1 + 776);
  }

  else
  {
    v2 = *(a1 + 27616);
    if (*(v2 + 32))
    {
      v3 = a1;
      v4 = *(v2 + 24);
      if (v4)
      {
        do
        {
          v5 = *v4;
          operator delete(v4);
          v4 = v5;
        }

        while (v5);
      }

      *(v2 + 24) = 0;
      v6 = *(v2 + 16);
      if (v6)
      {
        bzero(*(v2 + 8), 8 * v6);
      }

      *(v2 + 32) = 0;
      a1 = v3;
    }

    if (*(v2 + 72))
    {
      v7 = a1;
      v8 = *(v2 + 64);
      if (v8)
      {
        do
        {
          v9 = *v8;
          operator delete(v8);
          v8 = v9;
        }

        while (v9);
      }

      *(v2 + 64) = 0;
      v10 = *(v2 + 56);
      if (v10)
      {
        bzero(*(v2 + 48), 8 * v10);
      }

      *(v2 + 72) = 0;
      a1 = v7;
    }
  }

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(a1, 22, 0, 0);
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, uint64_t a5)
{
  v9 = *(a1 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(a1, a3);
  *(*(a1 + 4544) + 1304) = a4;
  *(a1 + 4584) = a5;
  *(a1 + 4912) |= 0x800000000uLL;
  *(a1 + 4944) |= 1u;
  v10 = *(a1 + 168);
  v11 = v10 + 12;
  if ((v10 + 12) > *(a1 + 160))
  {
    v14 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
    v10 = *(a1 + 168);
    if (!v14)
    {
      goto LABEL_3;
    }

    v11 = v10 + 12;
    if ((v10 + 12) > *(a1 + 160))
    {
      abort();
    }
  }

  *(a1 + 176) = v11;
LABEL_3:
  v12 = *(a1 + 184) + v10;
  *(a1 + 168) = v10 + 12;
  *v10 = 0x100000001;
  *(v10 + 8) = 1;
  v13 = *(a1 + 4544);
  *(v13 + 1312) = v12;
  *(a1 + 4592) = *(*(a1 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(a1 + 4912) |= 0x1000000000uLL;
  *(a1 + 4944) |= 1u;
  *(v13 + 28) = 0x100000001;
  *(v13 + 36) = 1;
  *(v13 + 40) = 0xFFFF000000010001;
  *(v13 + 48) = -65536;
  *(v13 + 52) = 0;
  *(v13 + 60) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::performEnqueueKernel(a1, a2, a4, *(a1 + 2336), 2);
  if (*(a1 + 2292) == 1 && (AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(a1, a2, 0, 0, 0), *(a1 + 2306) = 0, *(a1 + 2292) == 1) && !*(a1 + 4976))
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(a1, a2, (a1 + 5544), (a1 + 5552), (a1 + 5560));
    if (!v9)
    {
      return;
    }
  }

  else if (!v9)
  {
    return;
  }

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(a1, v9);
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(uint64_t a1)
{
  if (*(*(a1 + 1912) + 520))
  {
    v7 = xmmword_29D2F0D30;
    v8 = xmmword_29D2F1C50;
    v9 = 0;
    v11 = 0;
    v12 = 0;
    __p = 0;
    v2 = *(a1 + 5640);
    if (v2 >= *(a1 + 5648))
    {
      v4 = std::vector<AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::VirtualSubstream,std::allocator<AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::VirtualSubstream>>::__emplace_back_slow_path<AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::VirtualSubstream>((a1 + 5632), &v7);
      v5 = __p;
      *(a1 + 5640) = v4;
      if (v5)
      {
        operator delete(v5);
      }
    }

    else
    {
      v3 = v8;
      *v2 = v7;
      *(v2 + 16) = v3;
      *(v2 + 32) = v9;
      *(v2 + 48) = 0;
      *(v2 + 56) = 0;
      *(v2 + 40) = 0;
      *(a1 + 5640) = v2 + 64;
    }
  }

  else
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::restartComputePass(a1, 22);
  }

  return *(a1 + 5664) + ((*(a1 + 5640) - *(a1 + 5632)) >> 6) - 1;
}

void sub_29CD7F26C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::waitForVirtualSubstream(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 5664);
  v3 = a2 - v2;
  if (a2 >= v2)
  {
    if (*(*(a1 + 5640) - 32) <= (*(*(a1 + 5632) + (v3 << 6) + 32) + *(*(a1 + 5632) + (v3 << 6) + 28)))
    {
      v5 = *(*(a1 + 5632) + (v3 << 6) + 32) + *(*(a1 + 5632) + (v3 << 6) + 28);
    }

    else
    {
      v5 = *(*(a1 + 5640) - 32);
    }

    if ((v5 + 1) > *(a1 + 5660))
    {
      v6 = *(a1 + 4976) != 0;
      v7 = *(a1 + 4980);
      v13 = 1;
      agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, 24, 0, v6, v7, &v13);
      ++*(a1 + 5660);
    }

    v8 = *(a1 + 4976) != 0;
    v9 = *(a1 + 4980);
    v12 = 1;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, 4, 0, v8, v9, &v12);
    if (*(*(a1 + 1912) + 520))
    {
      v10 = *(a1 + 5640);
      *(v10 - 32) = v5;
      v11 = v3;
      std::vector<unsigned int>::push_back[abi:nn200100](v10 - 24, &v11);
    }

    else
    {

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::restartComputePass(a1, 22);
    }
  }
}

void AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::ESLStateLoadEncoderGen2(uint64_t a1, int a2)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 76) = 0x30000006BLL;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 132) = 0x3000000A6;
  *(a1 + 172) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 184) = 0x3000000A5;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 84) = 3;
  *(a1 + 96) = 1;
  *(a1 + 216) = a2;
  *(a1 + 220) = 0;
  *(a1 + 222) = 0;
  *(a1 + 276) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 288) = xmmword_29D2F0D30;
  *(a1 + 304) = 0;
  *(a1 + 308) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  operator new();
}

void sub_29CD7F4D4(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 248);
  if (v4)
  {
    *(v1 + 256) = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      v6 = *(v1 + 24);
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 232) = v5;
  operator delete(v5);
  v6 = *(v1 + 24);
  if (!v6)
  {
LABEL_4:
    v7 = *v1;
    if (!*v1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v1 + 32) = v6;
  operator delete(v6);
  v7 = *v1;
  if (!*v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  *(v1 + 8) = v7;
  operator delete(v7);
  _Unwind_Resume(exception_object);
}

void AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendLdshdr(uint64_t *a1)
{
  if (*(a1 + 54) != 20)
  {
    v2 = *a1;
    v1 = a1[1];
    v3 = &v1[-*a1];
    *(a1 + 158) = v3;
    v4 = *(a1 + 78);
    if (v4 == 1)
    {
      v5 = 20;
    }

    else if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 28;
    }

    v6 = &v3[v5];
    if (v3 >= &v3[v5])
    {
      if (v3 > &v3[v5])
      {
        a1[1] = &v6[v2];
      }
    }

    else
    {
      if (a1[2] - v1 < v5)
      {
        if ((v6 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v7 = &v1[v5];
      bzero(v1, v5);
      a1[1] = v7;
    }
  }
}

void AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::addBufferPointerLoad(int *a1, unint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v8 = a2;
  v10 = a1[2];
  v11 = *a1;
  v12 = HIDWORD(a2);
  if (SHIDWORD(a2) > 4)
  {
    if (SHIDWORD(a2) <= 6)
    {
      if (HIDWORD(a2) == 5)
      {
        goto LABEL_13;
      }

      LODWORD(v13) = 5;
    }

    else
    {
      if (HIDWORD(a2) != 7)
      {
        if (HIDWORD(a2) == 8)
        {
          goto LABEL_13;
        }

        if (HIDWORD(a2) != 9)
        {
          goto LABEL_24;
        }

        v26 = 0;
        v25 = 0;
        v24 = 0u;
        v27 = 0x300000069;
        v35 = 0;
        LODWORD(v13) = 8;
        v14 = 4;
        v15 = 7;
LABEL_18:
        v17 = a2;
LABEL_19:
        v16 = dword_29D2F4A18[v15];
        if (v13 <= 9 && (((1 << v13) & 0x1C) != 0 || ((1 << v13) & 0xE0) != 0 || ((1 << v13) & 0x300) != 0))
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      LODWORD(v13) = 6;
    }

    v26 = 0;
    v25 = 0;
    v24 = 0u;
    v27 = 0x300000069;
    v35 = 0;
    v15 = v13 - 1;
    v14 = 7;
    goto LABEL_18;
  }

  if (HIDWORD(a2) < 3)
  {
LABEL_13:
    v26 = 0;
    v25 = 0;
    v24 = 0u;
    v27 = 0x300000069;
    v35 = 0;
    v14 = 3;
    v16 = 1;
    v17 = a2;
    goto LABEL_29;
  }

  if (HIDWORD(a2) == 3)
  {
    LODWORD(v13) = 2;
    goto LABEL_17;
  }

  if (HIDWORD(a2) == 4)
  {
    LODWORD(v13) = 3;
LABEL_17:
    v26 = 0;
    v25 = 0;
    v24 = 0u;
    v27 = 0x300000069;
    v35 = 0;
    v15 = v13 - 1;
    v14 = 2;
    goto LABEL_18;
  }

LABEL_24:
  v26 = 0;
  v25 = 0;
  v24 = 0u;
  v27 = 0x300000069;
  v35 = 0;
  v15 = HIDWORD(a2) - 1;
  v14 = 3;
  if ((HIDWORD(a2) - 1) <= 8)
  {
    v17 = a2;
    v13 = HIDWORD(a2);
    goto LABEL_19;
  }

  v16 = 1;
  v17 = a2;
  v13 = HIDWORD(a2);
LABEL_27:
  if (v13 >= 2)
  {
    v17 = 0;
  }

LABEL_29:
  v28 = v17;
  v29 = 0;
  v30 = v14;
  v31 = v16;
  v32 = 0;
  v33 = a3;
  v34 = 0;
  AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendInstruction<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadImmediate32>(a1, &v24);
  v18 = 3;
  v19 = 1;
  if (v12 > 4)
  {
    if (v12 <= 6)
    {
      if (v12 == 5)
      {
        goto LABEL_41;
      }

      LODWORD(v12) = 5;
    }

    else
    {
      if (v12 != 7)
      {
        if (v12 == 9)
        {
          ++v8;
          v26 = 0;
          v25 = 0;
          v24 = 0u;
          v27 = 0x300000069;
          v35 = 0;
          LODWORD(v12) = 8;
          v18 = 4;
          v21 = 7;
          goto LABEL_48;
        }

        if (v12 != 8)
        {
          goto LABEL_47;
        }

LABEL_41:
        ++v8;
        v26 = 0;
        v25 = 0;
        v24 = 0u;
        v27 = 0x300000069;
        v35 = 0;
        v18 = 3;
        v20 = 1;
        goto LABEL_55;
      }

      LODWORD(v12) = 6;
      v19 = 2;
    }

    v8 += v19;
    v18 = 7;
    goto LABEL_47;
  }

  if (v12 < 3)
  {
    goto LABEL_41;
  }

  if (v12 == 3)
  {
    LODWORD(v12) = 2;
  }

  else
  {
    if (v12 != 4)
    {
      goto LABEL_47;
    }

    LODWORD(v12) = 3;
    v19 = 2;
  }

  v8 += v19;
  v18 = 2;
LABEL_47:
  v26 = 0;
  v25 = 0;
  v24 = 0u;
  v27 = 0x300000069;
  v35 = 0;
  v21 = v12 - 1;
  if ((v12 - 1) <= 8)
  {
LABEL_48:
    v20 = dword_29D2F4A18[v21];
    if (v12 > 9)
    {
      goto LABEL_54;
    }

LABEL_51:
    if (((1 << v12) & 0x1C) != 0 || ((1 << v12) & 0xE0) != 0 || ((1 << v12) & 0x300) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v20 = 1;
  if (v12 <= 9)
  {
    goto LABEL_51;
  }

LABEL_54:
  v8 = 0;
LABEL_55:
  v22 = v10 - v11;
  v28 = v8;
  v29 = 0;
  v30 = v18;
  v31 = v20;
  v32 = 0;
  v33 = a3;
  v34 = 0;
  AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendInstruction<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadImmediate32>(a1, &v24);
  if (a5 >> 29)
  {
    LODWORD(v24) = a4;
    DWORD1(v24) = a5 & 0x1FFFFFFF;
    DWORD2(v24) = v22;
    v23 = (a1 + 56);
  }

  else
  {
    *&v24 = __PAIR64__(a5, a4);
    DWORD2(v24) = v22;
    v23 = (a1 + 62);
  }

  std::vector<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::BufferPointer,std::allocator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::BufferPointer>>::push_back[abi:nn200100](v23, &v24);
}

void AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendInstruction<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadImmediate32>(uint64_t a1, uint64_t a2)
{
  LOWORD(v2) = 0;
  v86[3] = *MEMORY[0x29EDCA608];
  memset(v86, 0, 24);
  v4 = *(a2 + 16);
  v3 = *(a2 + 20);
  v6 = *(a2 + 8);
  v5 = *(a2 + 12);
  v7 = *(a2 + 4);
  v8 = v6 | v7;
  v9 = v6 == 0;
  v10 = *(a2 + 16) == 0;
  v11 = v3 | v4 | v5;
  v12 = (v11 | v6 | v7) == 0;
  v13 = v6 == 2;
  if (v7)
  {
    v14 = 0;
  }

  else
  {
    v14 = v6 == 1;
  }

  if (v7)
  {
    v15 = 0;
  }

  else
  {
    v15 = v6 == 2;
  }

  v16 = v7 == 1 && v6 == 0;
  v17 = v7 == 1 && v6 == 1;
  v18 = v7 == 1 && v6 == 2;
  if (v7 == 2)
  {
    v19 = v6 == 1;
  }

  else
  {
    v9 = 0;
    v19 = 0;
  }

  v20 = v7 == 2 && v13;
  v21 = v11 == 0;
  if (v11)
  {
    v22 = 0;
  }

  else
  {
    v22 = v16;
  }

  if (v11)
  {
    v23 = 0;
  }

  else
  {
    v23 = v9;
  }

  v82 = v23;
  v83 = v22;
  v24 = v21 && v14;
  v25 = v21 && v17;
  v80 = v25;
  v81 = v24;
  v26 = v21 && v19;
  v27 = v21 && v15;
  v78 = v27;
  v79 = v26;
  v28 = v21 && v18;
  v29 = v21 && v20;
  v76 = v29;
  v77 = v28;
  v30 = v5 == 1 && *(a2 + 16) == 0;
  if (v5 != 2)
  {
    v10 = 0;
  }

  if (v3)
  {
    v31 = 0;
  }

  else
  {
    v31 = v4 == 1;
  }

  v33 = !v31 || v5 != 0;
  if (v8)
  {
    v34 = 0;
  }

  else
  {
    v34 = v30;
  }

  if (v8)
  {
    v35 = 0;
  }

  else
  {
    v35 = v10;
  }

  v74 = v35;
  v75 = v34;
  v36 = v33 ^ 1;
  if (v8)
  {
    v37 = 0;
  }

  else
  {
    v37 = v36;
  }

  v73 = v37;
  if (*(a2 + 32) == 3 && *(a2 + 56) == 8 && *(a2 + 44) == 2 && !*(a2 + 60) && (v38 = *(a2 + 24), v38 <= 0x3F) && *(a2 + 28) == 105 && (*(a2 + 48) - 1) <= 1)
  {
    v39 = v30 && v16;
    v40 = v30 && v9;
    v41 = v30 && v14;
    v42 = v30 && v17;
    v43 = v30 && v19;
    v44 = v30 && v15;
    v45 = v30 && v18;
    v46 = v30 && v20;
    v47 = v10 && v16;
    v48 = v10 && v9;
    v49 = v10 && v14;
    v50 = v10 && v17;
    v51 = v10 && v19;
    v52 = v10 && v15;
    v53 = v10 && v18;
    v54 = v10 && v20;
    v55 = v36 & v16;
    v56 = v36 & v9;
    v57 = v36 & v14;
    v58 = v36 & v17;
    v72 = v44;
    v71 = v52;
    v59 = (v12 || v83 || v82 || v81 || v80 || v79 || v78 || v77 || v76 || v75) | v39 | v40 | v41 | v42 | v43 | v44 | v45 | v46 | v74 | v47 | v48 | v49 | v50 | v51 | v52;
    v60 = v57;
    v61 = v59 | v53 | v54 | v73 | v55 | v56 | v57 | v58;
    v62 = 0;
    v63 = 2;
    v64 = -32764;
    if (v61)
    {
      v65 = *(a2 + 36);
      v66 = (8 * v65) & 0xF0;
      v67 = (v65 >> 4) & 0x18 | (4 * (v65 & 1)) & 0x3F | (((v65 >> 5) & 3) << 6);
      v68 = *(a2 + 64);
      v69 = v66 | (v68 << 8);
      v63 = v67 & 0xFFFFFFDF | (v68 >> 25 << 9) | (32 * (*(a2 + 52) & 1)) | 2;
      v62 = (v68 >> 13) & 0xFFF | ((v38 > 0x1F) << 15) | (((v38 >> 4) & 1) << 14) | (((v38 >> 3) & 1) << 13);
      if (*(a2 + 48) == 1)
      {
        v70 = -32764;
      }

      else
      {
        v70 = -32756;
      }

      v64 = v69 | v70;
      v2 = (v38 << 13) & 0x1F8000 | ((v38 & 1) << 13) & 0xBFFE | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1;
      if (v12)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1;
      }

      else if (v83)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x20;
      }

      else if (v82)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x40;
      }

      else if (v81)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x60;
      }

      else if (v80)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x80;
      }

      else if (v79)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0xA0;
      }

      else if (v78)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0xC0;
      }

      else if (v77)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0xE0;
      }

      else if (v76)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x100;
      }

      else if (v75)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x120;
      }

      else if (v39)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x140;
      }

      else if (v40)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x160;
      }

      else if (v41)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x180;
      }

      else if (v42)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x1A0;
      }

      else if (v43)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x1C0;
      }

      else if (v72)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x1E0;
      }

      else if (v45)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x200;
      }

      else if (v46)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x220;
      }

      else if (v74)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x240;
      }

      else if (v47)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x260;
      }

      else if (v48)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x280;
      }

      else if (v49)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x2A0;
      }

      else if (v50)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x2C0;
      }

      else if (v51)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x2E0;
      }

      else if (v71)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x300;
      }

      else if (v53)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x320;
      }

      else if (v54)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x340;
      }

      else if (v73)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x360;
      }

      else if (v55)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x380;
      }

      else if (v56)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x3A0;
      }

      else if (v60)
      {
        LOWORD(v2) = (v38 << 13) & 0x8000 | ((v38 & 1) << 13) & 0xBC1E | (((v38 >> 1) & 1) << 14) | (v68 >> 6) & 0x1E | (v68 >> 1) & 0xC00 | *a2 & 1 | 0x3C0;
      }

      else if (v58)
      {
        LOWORD(v2) = v2 | 0x3E0;
      }
    }
  }

  else
  {
    v62 = 0;
    v63 = 2;
    v64 = -32764;
  }

  __src = (v2 << 32) | (v62 << 48) | (v63 << 16) | v64;
  std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(a1, *(a1 + 8), &__src, v86, 8);
}

void std::vector<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::BufferPointer,std::allocator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::BufferPointer>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 4 * ((v3 - *a1) >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = 12 * v8 + 12;
    v13 = 12 * v8 - (v3 - v7);
    memcpy((v12 - (v3 - v7)), v7, v3 - v7);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 12;
  }

  *(a1 + 8) = v6;
}

void std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(uint64_t a1, char *__dst, char *__src, char *a4, int64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if ((v8 - v9) < a5)
  {
    v10 = *a1;
    v11 = v9 - *a1 + a5;
    if (v11 < 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = (__dst - v10);
    v13 = v8 - v10;
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      operator new();
    }

    v37 = (__dst - v10);
    memcpy(v12, __src, a5);
    v38 = &v12[a5];
    v39 = v9 - __dst;
    memcpy(v38, __dst, v9 - __dst);
    *(a1 + 8) = __dst;
    v40 = &v12[v10 - __dst];
    memcpy(v40, v10, v37);
    *a1 = v40;
    *(a1 + 8) = &v38[v39];
    *(a1 + 16) = 0;
    if (v10)
    {

      operator delete(v10);
    }

    return;
  }

  v15 = v9 - __dst;
  if ((v9 - __dst) < a5)
  {
    v16 = &__src[v15];
    if (&__src[v15] == a4)
    {
      v18 = *(a1 + 8);
    }

    else
    {
      v17 = &__dst[a4] - __src - v9;
      if (v17 < 0x20)
      {
        v18 = *(a1 + 8);
      }

      else
      {
        v18 = *(a1 + 8);
        if ((__dst - __src) >= 0x20)
        {
          v19 = v17 & 0xFFFFFFFFFFFFFFE0;
          v16 += v17 & 0xFFFFFFFFFFFFFFE0;
          v20 = (v9 + 16);
          v21 = &__src[v9 + 16 - __dst];
          v22 = v17 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v23 = *v21;
            *(v20 - 1) = *(v21 - 1);
            *v20 = v23;
            v20 += 2;
            v21 += 32;
            v22 -= 32;
          }

          while (v22);
          v18 = (v9 + v19);
          if (v17 == v19)
          {
            goto LABEL_35;
          }
        }
      }

      do
      {
        v41 = *v16++;
        *v18++ = v41;
      }

      while (v16 != a4);
    }

LABEL_35:
    *(a1 + 8) = v18;
    if (v15 < 1)
    {
      return;
    }

    v42 = &__dst[a5];
    v43 = &v18[-a5];
    if (&v18[-a5] >= v9)
    {
      v46 = v18;
    }

    else
    {
      v44 = v9 + a5 - v18;
      v45 = v44 >= 0x20 && a5 > 0x1F;
      v46 = v18;
      if (!v45)
      {
        goto LABEL_58;
      }

      v47 = v44 & 0xFFFFFFFFFFFFFFE0;
      v43 += v44 & 0xFFFFFFFFFFFFFFE0;
      v48 = v18 + 16;
      v49 = &v18[-a5 + 16];
      v50 = v44 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v51 = *v49;
        *(v48 - 1) = *(v49 - 1);
        *v48 = v51;
        v49 += 2;
        v48 += 2;
        v50 -= 32;
      }

      while (v50);
      v46 = &v18[v47];
      if (v44 != v47)
      {
LABEL_58:
        do
        {
          v52 = *v43++;
          *v46++ = v52;
        }

        while (v43 != v9);
      }
    }

    *(a1 + 8) = v46;
    if (v18 != v42)
    {
      v53 = __src;
      memmove(v42, __dst, v18 - v42);
      __src = v53;
    }

    v34 = __dst;
    v35 = __src;
    v36 = v9 - __dst;
    goto LABEL_52;
  }

  v24 = &__dst[a5];
  v25 = (v9 - a5);
  v26 = *(a1 + 8);
  if (v9 >= a5)
  {
    if (a5 <= 0x1F)
    {
      goto LABEL_59;
    }

    v27 = a5 & 0x7FFFFFFFFFFFFFE0;
    v25 += a5 & 0x7FFFFFFFFFFFFFE0;
    v28 = (v9 + 16);
    v29 = (v9 + 16 - a5);
    v30 = a5 & 0x7FFFFFFFFFFFFFE0;
    do
    {
      v31 = *v29;
      *(v28 - 1) = *(v29 - 1);
      *v28 = v31;
      v28 += 2;
      v29 += 2;
      v30 -= 32;
    }

    while (v30);
    v26 = (v9 + v27);
    if (v27 != a5)
    {
LABEL_59:
      do
      {
        v32 = *v25++;
        *v26++ = v32;
      }

      while (v25 != v9);
    }
  }

  *(a1 + 8) = v26;
  if (v9 != v24)
  {
    v33 = __src;
    memmove(v24, __dst, v9 - v24);
    __src = v33;
  }

  v34 = __dst;
  v35 = __src;
  v36 = a5;
LABEL_52:

  memmove(v34, v35, v36);
}

void AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::finishRound(uint64_t a1)
{
  v289 = *MEMORY[0x29EDCA608];
  *(a1 + 56) = 18;
  v2 = *(a1 + 96);
  v3 = (v2 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = (v4 + v3);
  if (v5 == v4)
  {
    v13 = 0;
    v8 = 0;
    v9 = (a1 + 104);
    v12 = (v4 + 8 * ((*(a1 + 104) + v2) >> 6));
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v7 = v2 & 0x3F;
  v8 = (*v6 + (v7 << 6));
  v9 = (a1 + 104);
  v10 = *(a1 + 104) + v2;
  v11 = (v10 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v12 = (v4 + v11);
  v13 = *(v4 + v11) + ((v10 & 0x3F) << 6);
  if (v13 == v8)
  {
    goto LABEL_6;
  }

  v14 = v10 & 0x3F | (8 * (v11 - v3));
  if (v14 == v7)
  {
    goto LABEL_6;
  }

  v15 = 63 - __clz(v14 - v7);
LABEL_7:
  v257 = (a1 + 64);
  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELb0EEEvT1_SL_SB_NS_15iterator_traitsISL_E15difference_typeEb(v6, v8, v12, v13, 2 * v15, 1);
  v16 = *(a1 + 96);
  v17 = *(a1 + 72);
  v18 = *(a1 + 80);
  v19 = (v17 + 8 * (v16 >> 6));
  v265 = a1;
  if (v18 == v17)
  {
    v20 = 0;
  }

  else
  {
    v20 = (*v19 + ((*(a1 + 96) & 0x3FLL) << 6));
  }

  __p = v9;
  while (1)
  {
    v21 = v16 + *v9;
    v22 = v21 >> 6;
    if (v18 == v17)
    {
      break;
    }

    if (v20 == (*(v17 + 8 * v22) + ((v21 & 0x3F) << 6)))
    {
      goto LABEL_195;
    }

LABEL_16:
    v23 = (v20 - *v19) >> 6;
    if (v23 < 0)
    {
      v24 = v19[-((62 - v23) >> 6)] + ((~(62 - v23) & 0x3F) << 6);
    }

    else
    {
      v24 = *(v19 + (((v23 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((v23 + 1) & 0x3F) << 6);
    }

    v25 = *(v20 + 5);
    if (v25 - 5 >= 0xFFFFFFFD)
    {
      v26 = v20[8];
      if (v26 < 0x24 || v26 == 36 && ((v25 > 9) | (0x125u >> v25) & 1 || ((v25 < 0xA) & (0x90u >> v25)) == 0 && *(v20 + 6) < 8))
      {
        v27 = 0;
        goto LABEL_43;
      }
    }

    if (v18 == v17)
    {
      if (!v24)
      {
        goto LABEL_42;
      }
    }

    else if (v24 == *(v17 + 8 * v22) + ((v21 & 0x3F) << 6))
    {
      goto LABEL_42;
    }

    v28 = *(v24 + 20);
    if ((v28 - 2) > 7)
    {
      v29 = 3;
    }

    else
    {
      v29 = dword_29D2F49F8[v28 - 2];
    }

    if (v25 - 2 > 7)
    {
      v30 = 3;
    }

    else
    {
      v30 = dword_29D2F49F8[v25 - 2];
    }

    v31 = v28 - 1;
    if (v31 > 8)
    {
      v32 = 1;
    }

    else
    {
      v32 = dword_29D2F4A18[v31];
    }

    v33 = v25 - 1;
    if (v33 > 8)
    {
      v34 = 1;
      if (v29 != v30)
      {
LABEL_42:
        v27 = 1;
        goto LABEL_43;
      }
    }

    else
    {
      v34 = dword_29D2F4A18[v33];
      if (v29 != v30)
      {
        goto LABEL_42;
      }
    }

    v27 = 1;
    if (v32 == v34 && *(v24 + 16) == v20[8])
    {
      v27 = *(v24 + 24) != *(v20 + 6);
    }

LABEL_43:
    v35 = *(v20 + 2);
    v36 = *(v20 + 6);
    v37 = *(v265 + 48);
    if (*(v20 + 52))
    {
      v38 = 3;
    }

    else
    {
      v38 = 0xFu >> (4 - *(v20 + 35));
    }

    if (*(v20 + 34) != 1)
    {
      v42 = *v20;
      v43 = *(v20 + 1);
      v44 = *(v20 + 2);
      v45 = v20[16];
      v286 = -1;
      memset(v276, 0, sizeof(v276));
      v277 = 0x6800000000uLL;
      memset(v281, 0, sizeof(v281));
      v282 = xmmword_29D2F1CA0;
      v283 = 0u;
      v284 = 0u;
      v285 = 0;
      if (v43 - 2 <= 7)
      {
        v46 = dword_29D2F49F8[v43 - 2];
        v47 = v43 - 1;
        goto LABEL_55;
      }

      v47 = v43 - 1;
      v46 = 3;
      if (v43 - 1 > 8)
      {
        v49 = 1;
        if (v43 <= 9)
        {
          goto LABEL_72;
        }

LABEL_75:
        if (v43 >= 2)
        {
          v42 = 0;
        }
      }

      else
      {
LABEL_55:
        v49 = dword_29D2F4A18[v47];
        if (v43 > 9)
        {
          goto LABEL_75;
        }

LABEL_72:
        v56 = 1 << v43;
        if (((1 << v43) & 0x1C) == 0 && (v56 & 0xE0) == 0 && (v56 & 0x300) == 0)
        {
          goto LABEL_75;
        }
      }

      v57 = HIDWORD(v35);
      DWORD2(v283) = v42;
      *&v284 = __PAIR64__(v49, v46);
      HIDWORD(v284) = v44;
      BYTE12(v277) = v38;
      if ((HIDWORD(v35) - 2) <= 7)
      {
        v58 = dword_29D2F49F8[HIDWORD(v35) - 2];
        v59 = HIDWORD(v35) - 1;
        goto LABEL_80;
      }

      v59 = HIDWORD(v35) - 1;
      v58 = 3;
      if ((HIDWORD(v35) - 1) > 8)
      {
        v60 = 1;
      }

      else
      {
LABEL_80:
        v60 = dword_29D2F4A18[v59];
      }

      LODWORD(v35) = v35;
      if (v57 > 9 || (v84 = 1 << v57, ((1 << v57) & 0x1C) == 0) && (v84 & 0xE0) == 0 && (v84 & 0x300) == 0)
      {
        if (v57 >= 2)
        {
          LODWORD(v35) = 0;
        }
      }

      *&v278 = v35;
      *(&v278 + 1) = __PAIR64__(v60, v58);
      v279 = 0x800000000;
      LOBYTE(v280) = v27;
      *(&v280 + 1) = 0;
      HIBYTE(v280) = 0;
      v85 = 0x201008040201uLL >> (8 * v36);
      if (v36 >= 6)
      {
        LOBYTE(v85) = 0;
      }

      LOBYTE(v277) = v85;
      *&v281[32] = v45;
      *&v281[8] = 0x100000001;
      *&v281[20] = 8;
      *&v281[28] = 2;
      *&v281[36] = 15;
      *&v282 = 0x100000001;
      BYTE8(v282) = 0;
      HIDWORD(v282) = 8;
      LOBYTE(v283) = 0;
      if (v46 == 2)
      {
        if (v43 - 1 <= 8)
        {
          v86 = dword_29D2F46D8[v43 - 1];
          if (v58 != 2)
          {
            goto LABEL_143;
          }

LABEL_140:
          if (v35 + 4 > v42)
          {
            v87 = vcnt_s8(v38);
            v87.i16[0] = vaddlv_u8(v87);
            if (v42 + v86 * v87.i32[0] > v35)
            {
              LOBYTE(v280) = 0;
            }
          }

          goto LABEL_143;
        }

        v86 = 1;
        if (v58 == 2)
        {
          goto LABEL_140;
        }
      }

LABEL_143:
      *__src = 0u;
      v274 = 0u;
      v88 = AGXIotoInstruction_LDDEV::emit(v276, __src);
      std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(v37, *(v37 + 8), __src, v88, v88 - __src);
      goto LABEL_164;
    }

    v39 = HIDWORD(*v20);
    if ((v39 - 2) <= 7)
    {
      v40 = dword_29D2F49F8[(v39 - 2)];
      v41 = v39 - 1;
LABEL_52:
      v48 = dword_29D2F4A18[v41];
      if (v39 > 9)
      {
        goto LABEL_65;
      }

      goto LABEL_62;
    }

    v41 = v39 - 1;
    v40 = 3;
    if ((v39 - 1) <= 8)
    {
      goto LABEL_52;
    }

    v48 = 1;
    if (v39 > 9)
    {
      goto LABEL_65;
    }

LABEL_62:
    v50 = 1 << v39;
    if (((1 << v39) & 0x1C) != 0 || (v50 & 0xE0) != 0 || (v50 & 0x300) != 0)
    {
LABEL_66:
      v51 = *v20;
      v52 = BYTE1(*v20);
      goto LABEL_67;
    }

LABEL_65:
    if (v39 < 2)
    {
      goto LABEL_66;
    }

    v51 = 0;
    v52 = 0;
LABEL_67:
    if ((HIDWORD(v35) - 2) <= 7)
    {
      v53 = dword_29D2F49F8[HIDWORD(v35) - 2];
      v54 = HIDWORD(v35) - 1;
LABEL_70:
      v55 = dword_29D2F4A18[v54];
      goto LABEL_82;
    }

    v54 = HIDWORD(v35) - 1;
    v53 = 3;
    if ((HIDWORD(v35) - 1) <= 8)
    {
      goto LABEL_70;
    }

    v55 = 1;
LABEL_82:
    v61 = *(v20 + 2);
    v62 = v20[16];
    if (HIDWORD(v35) > 9 || (v63 = 1 << SBYTE4(v35), ((1 << SBYTE4(v35)) & 0x1C) == 0) && (v63 & 0xE0) == 0 && (v63 & 0x300) == 0)
    {
      if (HIDWORD(v35) >= 2)
      {
        LODWORD(v35) = 0;
      }
    }

    if (v36 >= 6)
    {
      v64 = 0;
    }

    else
    {
      v64 = 0x201008040201uLL >> (8 * v36);
    }

    *&v276[16] = 0;
    *&v277 = 0;
    v65 = v38 - 1 < 0xF && ((0x7E7Fu >> (v38 - 1)) & 1) != 0 || (v38 & 0xE) == 8;
    LOWORD(v66) = 0;
    if (v61 >= 6 && (v61 & 0xFFFFFFFE) != 6)
    {
      v65 = 0;
    }

    v68 = v40 == 2 && v65;
    if (v51)
    {
      v69 = 0;
    }

    else
    {
      v69 = v61 == 8;
    }

    v71 = v69 && v40 == 0;
    v72 = v53 == 3 && !v27;
    v73 = v53 == 1 && !v27;
    LOWORD(v74) = 8;
    v75 = 2;
    LOWORD(v76) = 1;
    LOWORD(v77) = 7;
    if (v55 - 1) <= 1 && v48 <= 2 && ((v68 | v71))
    {
      v78 = 0;
      v79 = 0;
      v80 = 0;
      if (v53 == 2 || v72 || v73)
      {
        v81 = (v62 >> 1) & 0x6000;
        v82 = v55 == 2;
        if (v48)
        {
          if (v48 == 2)
          {
            v83 = 513;
            goto LABEL_145;
          }

          v76 = v81 | 1;
        }

        else
        {
          v83 = 2049;
LABEL_145:
          v76 = v81 | v83;
        }

        v89 = (v62 >> 2) & 0x40 | (((v62 >> 7) & 1) << 12);
        v77 = (((v64 >> 4) & 1) << 14) | ((((v64 >> 1) & 1) << 11) | ((v64 & 1) << 10)) & 0xFFFFCFFF | (((v64 >> 2) & 1) << 12) & 0xFFFFDFFF | (((v64 >> 3) & 1) << 13) | 7 | 0x20;
        v74 = (v64 << 10) & 0x38000 | 0x2A8;
        if (v68)
        {
          switch(v38)
          {
            case 1u:
              break;
            case 2u:
              LOWORD(v89) = v89 | 7;
              break;
            case 3u:
              LOWORD(v89) = v89 | 8;
              break;
            case 4u:
              LOWORD(v89) = v89 | 9;
              break;
            case 5u:
              LOWORD(v89) = v89 | 0xA;
              break;
            case 6u:
              LOWORD(v89) = v89 | 0xB;
              break;
            case 7u:
              LOWORD(v89) = v89 | 0xC;
              break;
            case 8u:
              LOWORD(v89) = v89 | 0xD;
              break;
            case 0xAu:
              LOWORD(v89) = v89 | 1;
              break;
            case 0xBu:
              LOWORD(v89) = v89 | 2;
              break;
            case 0xCu:
              LOWORD(v89) = v89 | 3;
              break;
            case 0xDu:
              LOWORD(v89) = v89 | 4;
              break;
            case 0xEu:
              LOWORD(v89) = v89 | 5;
              break;
            case 0xFu:
              LOWORD(v89) = v89 | 6;
              break;
            default:
              if (v38 == 9)
              {
                LOWORD(v89) = v89 | 0xE;
              }

              break;
          }

          LOWORD(v77) = (8 * v51) & 0x90 | (((v64 >> 4) & 1) << 14) & 0x7F6F | ((((v64 >> 1) & 1) << 11) | ((v64 & 1) << 10)) & 0x4F6F | (((v64 >> 2) & 1) << 12) & 0x5F6F | (((v64 >> 3) & 1) << 13) & 0x7F6F | 7 | 0x20;
          v76 = ((v51 | (v52 << 8)) >> 4) & 0x18 | v76 & 0x6E67 | (((v51 >> 6) & 1) << 7) & 0xFFFFFEFF | ((v51 & 1) << 8);
          v74 |= (v51 << 8) & 0x2000 | (((v51 >> 2) & 3) << 11);
          if (v61 > 2)
          {
            if (v61 <= 4)
            {
              if (v61 == 3)
              {
                v75 = 806;
              }

              else
              {
                v75 = 1062;
              }

LABEL_153:
              v90 = v82 | 0x8000;
              if (v53 == 2)
              {
                LOWORD(v77) = (2 * v35) & 0x300 | v77 & 0xFCFF;
                LOWORD(v74) = (v35 << 10) & 0x4000 | v74 & 0xBFFF;
                v75 |= (v27 << 7) | (v35 << 12);
                v76 = (32 * v35) & 0x400 | v76 & 0xFFFFFBFF | (v35 >> 6 << 15);
              }

              else if (v72 || v73)
              {
                v75 |= 0x10u;
                if (v72)
                {
                  v91 = v77 & 0xFCFF;
                  v92 = v35 >> 6;
                  v93 = (2 * v35) & 0x300;
                }

                else
                {
                  if (!v73)
                  {
                    goto LABEL_162;
                  }

                  v90 = v82 | 0x8002;
                  v91 = v77 & 0xFEFF;
                  v92 = v35 >> 6;
                  v93 = (2 * v35) & 0x100;
                }

                LOWORD(v77) = v93 | v91;
                LOWORD(v76) = (32 * v35) & 0x400 | v76 & 0xFBFF | (v92 << 15);
                LOWORD(v74) = (v35 << 10) & 0x4000 | v74 & 0xBFFF;
                v75 |= v35 << 12;
              }

LABEL_162:
              v66 = v62 & 0x30 | (((v62 >> 6) & 1) << 10) | (v62 << 12);
              v80 = v62 & 0x3E00;
              v78 = v89 & 0x104F;
              v79 = v90 & 0xE3FF | 0x400;
              goto LABEL_163;
            }

            if (v61 == 5)
            {
              v75 = 1318;
              goto LABEL_153;
            }

            if (v61 == 6)
            {
              v75 = 1574;
              goto LABEL_153;
            }

LABEL_191:
            v75 = 1830;
            goto LABEL_153;
          }

          if (v61)
          {
            if (v61 == 1)
            {
              v75 = 294;
              goto LABEL_153;
            }

            if (v61 == 2)
            {
              v75 = 550;
              goto LABEL_153;
            }

            goto LABEL_191;
          }
        }

        else if (v71)
        {
          v76 |= 0x1000u;
          LOWORD(v89) = v89 | v38;
        }

        v75 = 38;
        goto LABEL_153;
      }
    }

    else
    {
      v78 = 0;
      v79 = 0;
      v80 = 0;
    }

LABEL_163:
    *v276 = v77;
    *&v276[2] = v76;
    *&v276[4] = v75;
    *&v276[6] = v74;
    *&v276[8] = v66;
    *&v276[10] = v78;
    *&v276[12] = v79;
    *&v276[14] = v80;
    std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(v37, *(v37 + 8), v276, &v276[16], 16);
    v9 = __p;
LABEL_164:
    v20 += 32;
    if ((v20 - *v19) == 4096)
    {
      v94 = v19[1];
      ++v19;
      v20 = v94;
    }

    v16 = *(v265 + 96);
    v17 = *(v265 + 72);
    v18 = *(v265 + 80);
  }

  if (v20)
  {
    goto LABEL_16;
  }

LABEL_195:
  v95 = v265;
  if ((*(v265 + 114) & 1) == 0)
  {
    AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendLdshdr(*(v265 + 48));
    v95 = v265;
    *(v265 + 114) = 1;
  }

  if ((*(v95 + 115) & 1) == 0)
  {
    AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::appendStateLoaderInstructions(AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::instance, *(v95 + 120), *(v95 + 48));
    v95 = v265;
    *(v265 + 115) = 1;
  }

  v274 = 0u;
  v275 = 0u;
  *__src = 0u;
  v96 = *(v95 + 72);
  if (*(v95 + 80) != v96)
  {
    v97 = *(v95 + 96);
    v98 = (v96 + 8 * (v97 >> 6));
    v99 = (*v98 + ((v97 & 0x3F) << 6));
    v100 = *(v96 + (((*v9 + v97) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((*v9 + v97) & 0x3F) << 6);
    if (v99 != v100)
    {
      v101 = 0;
      v258 = *(v96 + (((*v9 + v97) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((*v9 + v97) & 0x3F) << 6);
      while (*(v99 + 52) == 1)
      {
        v102 = *(v99 + 35);
        if (v102 <= 2)
        {
          LOBYTE(v102) = 2;
        }

        v103 = (v102 + (*v99 >> 1));
        if (*(v95 + 56) > v103)
        {
          LOBYTE(v103) = *(v95 + 56);
        }

        *(v95 + 56) = v103;
        v287 = *v99;
        v270 = *(v99 + 29);
        v271 = *(v99 + 31);
        v276[16] = *(v99 + 51);
        *v276 = *(v99 + 35);
        *&v272[7] = *(v99 + 15);
        *v272 = *(v99 + 53);
        v104 = *(v99 + 5);
        *&v287 = *v99;
        *(&v287 + 5) = v104;
        v105 = *v99;
        v106 = *v99 & 0xFFFFFFFF00000000;
        v107 = HIDWORD(*v99);
        if (v107 <= 8 && ((0x16Du >> v107) & 1) != 0)
        {
          v106 = qword_29D2F4700[v107];
        }

        v108 = *(v99 + 1);
        v109 = __src[1];
        v110 = 8 * (v274 - __src[1]) - 1;
        v111 = *(v99 + 14);
        if (v274 == __src[1])
        {
          v110 = 0;
        }

        v112 = *(&v275 + 1) + v275;
        if (v110 == *(&v275 + 1) + v275)
        {
          std::deque<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,std::allocator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad>>::__add_back_capacity(__src);
          v109 = __src[1];
          v112 = *(&v275 + 1) + v275;
        }

        v113 = *&v109[(v112 >> 3) & 0x1FFFFFFFFFFFFFF8] + ((v112 & 0x3F) << 6);
        *v113 = v287;
        *(v113 + 16) = v106 | v105;
        *(v113 + 28) = BYTE4(v108);
        *(v113 + 24) = v108;
        *(v113 + 29) = v270;
        *(v113 + 31) = v271;
        *(v113 + 32) = v111;
        *(v113 + 34) = 0;
        *(v113 + 35) = *v276;
        *(v113 + 51) = v276[16];
        *(v113 + 52) = 0;
        *(v113 + 53) = *v272;
        *(v113 + 60) = *&v272[7];
        ++*(&v275 + 1);
        v95 = v265;
LABEL_379:
        v99 += 32;
        if ((v99 - *v98) == 4096)
        {
          v183 = v98[1];
          ++v98;
          v99 = v183;
        }

        if (v99 == v100)
        {
          goto LABEL_381;
        }
      }

      v114 = *(v99 + 1);
      if (v114 > 2)
      {
        if ((v101 & 8) != 0)
        {
          LODWORD(v123) = 8;
        }

        else
        {
          v123 = *(v99 + 1);
        }

        if ((v101 & 0x10) != 0)
        {
          LODWORD(v124) = 8;
        }

        else
        {
          v124 = *(v99 + 1);
        }

        if ((v101 & 0x20) != 0)
        {
          LODWORD(v125) = 8;
        }

        else
        {
          v125 = *(v99 + 1);
        }

        if (v114 == 5)
        {
          v126 = 32;
        }

        else
        {
          v125 = *(v99 + 1);
          v126 = 0;
        }

        if (v114 == 4)
        {
          v127 = 16;
        }

        else
        {
          LODWORD(v124) = v125;
          v127 = v126;
        }

        v128 = v114 == 3;
        if (v114 == 3)
        {
          LODWORD(v121) = v123;
        }

        else
        {
          LODWORD(v121) = v124;
        }

        if (v128)
        {
          v122 = 8;
        }

        else
        {
          v122 = v127;
        }
      }

      else
      {
        LODWORD(v115) = 8;
        if (v101)
        {
          LODWORD(v116) = 8;
        }

        else
        {
          v116 = *(v99 + 1);
        }

        if ((v101 & 2) != 0)
        {
          LODWORD(v117) = 8;
        }

        else
        {
          v117 = *(v99 + 1);
        }

        if ((v101 & 4) == 0)
        {
          v115 = *(v99 + 1);
        }

        if (v114 == 2)
        {
          v118 = 4;
        }

        else
        {
          v115 = *(v99 + 1);
          v118 = 0;
        }

        if (v114 == 1)
        {
          v119 = 2;
        }

        else
        {
          LODWORD(v117) = v115;
          v119 = v118;
        }

        v120 = v114 == 0;
        if (v114)
        {
          LODWORD(v121) = v117;
        }

        else
        {
          LODWORD(v121) = v116;
        }

        if (v120)
        {
          v122 = 1;
        }

        else
        {
          v122 = v119;
        }
      }

      v101 |= v122;
      if (!*(v99 + 35))
      {
        goto LABEL_379;
      }

      v259 = v101;
      v260 = v98;
      v129 = 0;
      v130 = 0;
      v131 = 0;
      v132 = *(v99 + 60);
      v133 = HIDWORD(*v99);
      v266 = v99[31];
      __pa = *v99;
      v261 = *v99 & 0xFFFFFFFF00000000;
      v121 = v121;
      v134 = (v133 - 2);
      v135 = (v133 - 1);
      v264 = v99;
      while (1)
      {
        v138 = *(v99 + 18);
        v139 = HIDWORD(v138);
        if (HIDWORD(v138) <= 9)
        {
          if (((1 << SBYTE4(v138)) & 0x125) != 0)
          {
            LOWORD(v138) = v131 + v138;
          }

          else if (((1 << SBYTE4(v138)) & 0x24A) != 0)
          {
            LOWORD(v138) = v138 + 2 * v131;
          }

          else
          {
            LOWORD(v138) = v129 + v138;
          }
        }

        LOWORD(v140) = __pa;
        if (v133 <= 9)
        {
          if (((1 << v133) & 0x125) != 0)
          {
            LOWORD(v140) = v131 + __pa;
          }

          else if (((1 << v133) & 0x24A) != 0)
          {
            LOWORD(v140) = __pa + 2 * v131;
          }

          else
          {
            LOWORD(v140) = __pa + v129;
          }
        }

        v141 = *(v95 + 48);
        v142 = *(v99 + 22);
        *&v281[24] = -1;
        memset(v276, 0, sizeof(v276));
        LODWORD(v277) = 0;
        *(&v277 + 4) = 35;
        if ((v139 - 2) <= 7)
        {
          break;
        }

        v144 = v139 - 1;
        v143 = 3;
        if ((v139 - 1) <= 8)
        {
          goto LABEL_281;
        }

        v145 = 1;
LABEL_283:
        LODWORD(v138) = v138;
        if (v139 > 9 || (v146 = 1 << v139, ((1 << v139) & 0x1C) == 0) && (v146 & 0xE0) == 0 && (v146 & 0x300) == 0)
        {
          if (v139 >= 2)
          {
            LODWORD(v138) = 0;
          }
        }

        HIDWORD(v277) = v138;
        LODWORD(v278) = 0;
        *(&v278 + 4) = __PAIR64__(v145, v143);
        HIDWORD(v278) = 0;
        v279 = v142;
        if (v134 > 7)
        {
          v147 = 3;
          if (v135 > 8)
          {
LABEL_291:
            v148 = 1;
            goto LABEL_294;
          }
        }

        else
        {
          v147 = dword_29D2F49F8[v134];
          if (v135 > 8)
          {
            goto LABEL_291;
          }
        }

        v148 = dword_29D2F4A18[v135];
LABEL_294:
        v140 = v140;
        if (v133 > 9 || (v149 = 1 << v133, ((1 << v133) & 0x1C) == 0) && (v149 & 0xE0) == 0 && (v149 & 0x300) == 0)
        {
          if (v133 >= 2)
          {
            v140 = 0;
          }
        }

        v280 = v140;
        *v281 = 0;
        *&v281[4] = v147;
        *&v281[8] = v148;
        *&v281[12] = 0x800000000;
        v281[20] = (v132 & 3) == 0;
        v150 = v121 & 0xFFFFFFFFFFFFLL;
        *&v281[21] = 0;
        v281[23] = 0;
        v151 = 0x201008040201uLL >> (8 * v121);
        if (v150 >= 6)
        {
          LOBYTE(v151) = 0;
        }

        LOBYTE(v277) = v151;
        if ((v143 - 3) <= 1)
        {
          DWORD2(v277) = 1;
        }

        v287 = 0u;
        v288 = 0u;
        v152 = AGXIotoInstruction_COPY::emit(v276, &v287);
        std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(v141, *(v141 + 8), &v287, v152, v152 - &v287);
        v135 = (v133 - 1);
        v134 = (v133 - 2);
        if ((v132 & 3) == 0)
        {
          goto LABEL_265;
        }

        v154 = __pa;
        if (v133 <= 9)
        {
          if (((1 << v133) & 0x125) != 0)
          {
            v154 = v131 + __pa;
          }

          else if (((1 << v133) & 0x24A) != 0)
          {
            v154 = __pa + 2 * v131;
          }

          else
          {
            v154 = __pa + v129;
          }
        }

        v155 = (v132 & 1) == 0;
        if (v133 > 4)
        {
          if (v133 > 6)
          {
            if (v133 == 7)
            {
              v154 += 2 * v155;
              v156 = 0x600000000;
              goto LABEL_324;
            }

            if (v133 == 9)
            {
              v154 += v155;
              v156 = 0x800000000;
              goto LABEL_324;
            }

            if (v133 != 8)
            {
LABEL_351:
              v156 = v261;
              goto LABEL_324;
            }

LABEL_323:
            v156 = 0;
            v154 += v155;
            goto LABEL_324;
          }

          if (v133 == 5)
          {
            goto LABEL_323;
          }

          v154 += v155;
          v156 = 0x500000000;
        }

        else
        {
          if (v133 < 3)
          {
            goto LABEL_323;
          }

          if (v133 == 3)
          {
            v154 += v155;
            v156 = 0x200000000;
          }

          else
          {
            if (v133 != 4)
            {
              goto LABEL_351;
            }

            v154 += 2 * v155;
            v156 = 0x300000000;
          }
        }

LABEL_324:
        v157 = (v132 & 3) >> v155;
        v158 = v154 | v156;
        if ((v266 & 2) != 0 || v157 != 3)
        {
          v153.i32[0] = v157;
          v164 = vcnt_s8(v153);
          v164.i16[0] = vaddlv_u8(v164);
          v137 = v164.i32[0];
          if (!v157)
          {
            goto LABEL_264;
          }

          v165 = HIDWORD(v156);
          LOWORD(v156) = v154 | v156;
          if (v165 <= 9)
          {
            LOWORD(v156) = v154;
            if (((1 << v165) & 0x125) == 0)
            {
              LOWORD(v156) = v154;
              if (((1 << v165) & 0x24A) == 0)
              {
                LOWORD(v156) = v154;
              }
            }
          }

          v166 = *(v265 + 48);
          *&v281[24] = -1;
          memset(v276, 0, sizeof(v276));
          *&v277 = 0x2300000000;
          HIDWORD(v277) = (v266 + 16) >> 1;
          v278 = xmmword_29D2F1CB0;
          v279 = 5;
          if ((v165 - 2) <= 7)
          {
            v167 = dword_29D2F49F8[(v165 - 2)];
            v168 = v165 - 1;
            goto LABEL_341;
          }

          v168 = v165 - 1;
          v167 = 3;
          if ((v165 - 1) > 8)
          {
            v170 = 1;
          }

          else
          {
LABEL_341:
            v170 = dword_29D2F4A18[v168];
          }

          LODWORD(v156) = v156;
          v262 = v165 - 2;
          v263 = v158;
          if (v165 > 9 || (v172 = 1 << v165, ((1 << v165) & 0x1C) == 0) && (v172 & 0xE0) == 0 && (v172 & 0x300) == 0)
          {
            if (v165 >= 2)
            {
              LODWORD(v156) = 0;
            }
          }

          *v281 = 0;
          *&v281[4] = v167;
          *&v281[8] = v170;
          *&v281[12] = 0x800000000;
          v281[20] = 1;
          *&v281[21] = 0;
          v281[23] = 0;
          v280 = v156;
          DWORD2(v277) = 1;
          v287 = 0u;
          v288 = 0u;
          v173 = AGXIotoInstruction_COPY::emit(v276, &v287);
          std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(v166, *(v166 + 8), &v287, v173, v173 - &v287);
          v135 = (v133 - 1);
          v134 = (v133 - 2);
          v174 = v263;
          if (v137 < 2)
          {
            goto LABEL_264;
          }

          if (v165 <= 9)
          {
            if (((1 << v165) & 0x125) != 0)
            {
              v174 = v154 + 1;
            }

            else if (((1 << v165) & 0x24A) != 0)
            {
              v174 = v154 + 2;
            }

            else
            {
              v174 = v154 + 4;
            }
          }

          v176 = *(v265 + 48);
          *&v281[24] = -1;
          memset(v276, 0, sizeof(v276));
          *&v277 = 0x2300000000;
          HIDWORD(v277) = ((v266 + 16) >> 1) + 1;
          v278 = xmmword_29D2F1CB0;
          v279 = 5;
          if (v262 <= 7)
          {
            v177 = dword_29D2F49F8[v262];
            v178 = v165 - 1;
            goto LABEL_369;
          }

          v178 = v165 - 1;
          v177 = 3;
          if ((v165 - 1) > 8)
          {
            v179 = 1;
          }

          else
          {
LABEL_369:
            v179 = dword_29D2F4A18[v178];
          }

          v180 = v174;
          if (v165 > 9 || (v181 = 1 << v165, ((1 << v165) & 0x1C) == 0) && (v181 & 0xE0) == 0 && (v181 & 0x300) == 0)
          {
            if (v165 >= 2)
            {
              v180 = 0;
            }
          }

          *v281 = 0;
          *&v281[4] = v177;
          *&v281[8] = v179;
          *&v281[12] = 0x800000000;
          v281[20] = 1;
          *&v281[21] = 0;
          v281[23] = 0;
          v280 = v180;
          DWORD2(v277) = 1;
          v287 = 0u;
          v288 = 0u;
          v182 = AGXIotoInstruction_COPY::emit(v276, &v287);
          std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(v176, *(v176 + 8), &v287, v182, v182 - &v287);
          goto LABEL_263;
        }

        v159 = HIDWORD(v156);
        if (HIDWORD(v156) <= 8 && ((0x16Du >> SBYTE4(v156)) & 1) != 0)
        {
          v160 = qword_29D2F4700[v159];
          v158 = v160 | v154;
          v159 = HIDWORD(v160);
        }

        v161 = *(v95 + 48);
        *&v281[24] = -1;
        memset(v276, 0, sizeof(v276));
        *&v277 = 0x2300000000;
        HIDWORD(v277) = (v266 + 16) >> 1;
        v278 = xmmword_29D2F1CC0;
        v279 = 5;
        if ((v159 - 2) > 7)
        {
          v163 = v159 - 1;
          v162 = 3;
          if ((v159 - 1) > 8)
          {
            v169 = 1;
            goto LABEL_343;
          }
        }

        else
        {
          v162 = dword_29D2F49F8[(v159 - 2)];
          v163 = v159 - 1;
        }

        v169 = dword_29D2F4A18[v163];
LABEL_343:
        v175 = v158;
        if (v159 > 9 || (v171 = 1 << v159, ((1 << v159) & 0x1C) == 0) && (v171 & 0xE0) == 0 && (v171 & 0x300) == 0)
        {
          if (v159 >= 2)
          {
            v175 = 0;
          }
        }

        *v281 = 0;
        *&v281[4] = v162;
        *&v281[8] = v169;
        *&v281[12] = 0x800000000;
        v281[20] = 1;
        *&v281[21] = 0;
        v281[23] = 0;
        v280 = v175;
        DWORD2(v277) = 1;
        v287 = 0u;
        v288 = 0u;
        v136 = AGXIotoInstruction_COPY::emit(v276, &v287);
        std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(v161, *(v161 + 8), &v287, v136, v136 - &v287);
LABEL_263:
        LOWORD(v137) = 2;
        v135 = (v133 - 1);
        v134 = (v133 - 2);
LABEL_264:
        v266 += 2 * v137;
        v99 = v264;
        v95 = v265;
LABEL_265:
        ++v130;
        v132 >>= 2;
        ++v131;
        v129 += 4;
        v121 = 8;
        if (v130 >= *(v99 + 35))
        {
          v98 = v260;
          v100 = v258;
          v101 = v259;
          goto LABEL_379;
        }
      }

      v143 = dword_29D2F49F8[(v139 - 2)];
      v144 = v139 - 1;
LABEL_281:
      v145 = dword_29D2F4A18[v144];
      goto LABEL_283;
    }
  }

LABEL_381:
  if (v257 == __src)
  {
    goto LABEL_468;
  }

  v184 = (v275 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v185 = (__src[1] + v184);
  if (v274 == __src[1])
  {
    v187 = 0;
    goto LABEL_389;
  }

  v186 = v275 & 0x3F;
  v187 = *v185 + 64 * v186;
  v188 = ((*(&v275 + 1) + v275) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v189 = (BYTE8(v275) + v275) & 0x3F;
  if ((*(__src[1] + v188) + (v189 << 6)) == v187)
  {
LABEL_389:
    v190 = 0;
    v192 = (v95 + 104);
    goto LABEL_390;
  }

  v190 = v189 - v186 + 8 * (v188 - v184);
  v192 = (v95 + 104);
  v191 = *(v95 + 104);
  if (v191 < v190)
  {
    v193 = *v185 + 64 * (v275 & 0x3F);
    v194 = v185;
    if (v191)
    {
      v195 = v186 + v191;
      if (v195 < 1)
      {
        v214 = 63 - v195;
        v194 = &v185[-(v214 >> 6)];
        v193 = *v194 + 64 * (~v214 & 0x3F);
      }

      else
      {
        v194 = &v185[v195 >> 6];
        v193 = *v194 + 64 * (v195 & 0x3F);
      }
    }

    v215 = *(v95 + 72);
    if (*(v95 + 80) == v215)
    {
      v216 = 0;
    }

    else
    {
      v216 = *(v215 + 8 * (*(v95 + 96) >> 6)) + ((*(v95 + 96) & 0x3FLL) << 6);
    }

    *v276 = v215 + 8 * (*(v95 + 96) >> 6);
    *&v276[8] = v216;
    std::__for_each_segment[abi:nn200100]<std::__deque_iterator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const*,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const&,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const* const*,long,64l>,std::__copy_impl::_CopySegment<std::__deque_iterator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const*,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const&,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const* const*,long,64l>,std::__deque_iterator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad*,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad&,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad**,long,64l>>>(v185, v187, v194, v193, v276);
    v217 = *(v95 + 72);
    v218 = *(v95 + 80);
    v219 = 8 * (v218 - v217) - 1;
    v220 = v218 - v217;
    if (v218 == v217)
    {
      v219 = 0;
    }

    v221 = *(v95 + 96);
    i = *(v95 + 104);
    v223 = v190 - i;
    v224 = i + v221;
    v225 = v219 - (i + v221);
    v226 = v190 - i >= v225;
    v227 = v190 - i - v225;
    if (v227 != 0 && v226)
    {
      if (v218 == v217)
      {
        v228 = v227 + 1;
      }

      else
      {
        v228 = v227;
      }

      if ((v228 & 0x3F) != 0)
      {
        v229 = (v228 >> 6) + 1;
      }

      else
      {
        v229 = v228 >> 6;
      }

      if (v229 >= v221 >> 6)
      {
        v230 = v221 >> 6;
      }

      else
      {
        v230 = v229;
      }

      if (v229 <= v221 >> 6)
      {
        *(v95 + 96) = v221 - (v230 << 6);
        if (v230)
        {
          v236 = -v230;
          do
          {
            v237 = *(v95 + 72);
            *v276 = *v237;
            *(v95 + 72) = v237 + 1;
            std::__split_buffer<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block *,std::allocator<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block *>>::emplace_back<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block *&>(v257, v276);
            v226 = __CFADD__(v236++, 1);
          }

          while (!v226);
        }
      }

      else
      {
        v267 = *(v95 + 104);
        v231 = v229 - v230;
        v232 = *(v95 + 88) - *(v95 + 64);
        v233 = v220 >> 3;
        if (v231 > (v232 >> 3) - (v220 >> 3))
        {
          if (v232 >> 2 <= v231 + v233)
          {
            v234 = v231 + v233;
          }

          else
          {
            v234 = v232 >> 2;
          }

          if (v234)
          {
            if (!(v234 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          operator new();
        }

        if (v231)
        {
          if (*(v265 + 88) != *(v265 + 80))
          {
            operator new();
          }

          operator new();
        }

        v95 = v265;
        *(v265 + 96) = v221 - (v230 << 6);
        for (i = v267; v230; --v230)
        {
          v238 = *(v265 + 72);
          *v276 = *v238;
          *(v265 + 72) = v238 + 1;
          std::__split_buffer<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block *,std::allocator<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block *>>::emplace_back<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block *&>(v257, v276);
        }
      }

      v235 = *(v95 + 104);
      v217 = *(v95 + 72);
      v218 = *(v95 + 80);
      v224 = *(v95 + 96) + v235;
    }

    else
    {
      v235 = *(v95 + 104);
    }

    v239 = (v217 + 8 * (v224 >> 6));
    if (v218 == v217)
    {
      v240 = 0;
      v241 = 0;
    }

    else
    {
      v240 = (*v239 + ((v224 & 0x3F) << 6));
      v241 = v240;
    }

    v242 = v239;
    if (v190 != i)
    {
      v243 = v223 + ((v241 - *v239) >> 6);
      if (v243 < 1)
      {
        v244 = 63 - v243;
        v242 = &v239[-(v244 >> 6)];
        v241 = *v242 + ((~v244 & 0x3F) << 6);
      }

      else
      {
        v242 = &v239[v243 >> 6];
        v241 = *v242 + ((v243 & 0x3F) << 6);
      }
    }

    while (v240 != v241)
    {
      v245 = v241;
      if (v239 != v242)
      {
        v245 = *v239 + 4096;
      }

      if (v240 == v245)
      {
        v245 = v240;
      }

      else
      {
        v246 = v240;
        do
        {
          v247 = *v193;
          v248 = *(v193 + 16);
          v249 = *(v193 + 48);
          v246[2] = *(v193 + 32);
          v246[3] = v249;
          *v246 = v247;
          v246[1] = v248;
          v193 += 64;
          if (v193 - *v194 == 4096)
          {
            v250 = v194[1];
            ++v194;
            v193 = v250;
          }

          v246 += 4;
        }

        while (v246 != v245);
        v235 = *v192;
      }

      v235 += (v245 - v240) >> 6;
      *v192 = v235;
      if (v239 == v242)
      {
        break;
      }

      v251 = v239[1];
      ++v239;
      v240 = v251;
    }

    goto LABEL_468;
  }

LABEL_390:
  v196 = v187;
  v197 = *(v95 + 72);
  v198 = (v197 + 8 * (*(v95 + 96) >> 6));
  if (*(v95 + 80) != v197)
  {
    v199 = *v198 + ((*(v95 + 96) & 0x3FLL) << 6);
    v200 = v185;
    if (!v190)
    {
      goto LABEL_397;
    }

LABEL_394:
    v201 = v190 + ((v187 - *v185) >> 6);
    if (v201 < 1)
    {
      v202 = 63 - v201;
      v200 = &v185[-(v202 >> 6)];
      v187 = *v200 + 64 * (~v202 & 0x3F);
    }

    else
    {
      v200 = &v185[v201 >> 6];
      v187 = *v200 + 64 * (v201 & 0x3F);
    }

    goto LABEL_397;
  }

  v199 = 0;
  v200 = v185;
  if (v190)
  {
    goto LABEL_394;
  }

LABEL_397:
  *v276 = v198;
  *&v276[8] = v199;
  std::__for_each_segment[abi:nn200100]<std::__deque_iterator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const*,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const&,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const* const*,long,64l>,std::__copy_impl::_CopySegment<std::__deque_iterator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const*,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const&,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const* const*,long,64l>,std::__deque_iterator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad*,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad&,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad**,long,64l>>>(v185, v196, v200, v187, v276);
  v203 = *(v95 + 96);
  v204 = *(v95 + 104);
  v206 = *(v95 + 72);
  v205 = *(v95 + 80);
  v207 = (v206 + 8 * ((v203 + v204) >> 6));
  if (v205 == v206)
  {
    v208 = 0;
    if (!*&v276[8])
    {
      goto LABEL_468;
    }
  }

  else
  {
    v208 = *v207 + (((v203 + v204) & 0x3F) << 6);
    if (v208 == *&v276[8])
    {
      goto LABEL_468;
    }
  }

  v209 = ((v208 - *v207) >> 6) + 8 * (v207 - *v276) - ((*&v276[8] - **v276) >> 6);
  if (v209 >= 1)
  {
    if (v205 == v206)
    {
      v210 = 0;
    }

    else
    {
      v210 = 8 * (v205 - v206) - 1;
    }

    v211 = v204 - v209;
    *v192 = v211;
    v212 = v210 - v203;
    while ((v212 - v211) >= 0x80)
    {
      operator delete(*(v205 - 8));
      v213 = *(v95 + 72);
      v205 = *(v95 + 80) - 8;
      *(v95 + 80) = v205;
      if (v205 == v213)
      {
        v212 = 0;
      }

      else
      {
        v212 = 8 * (v205 - v213) - 1;
      }

      v211 = *(v95 + 104) + *(v95 + 96);
    }
  }

LABEL_468:
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(v95 + 8));
  *v95 = v95 + 8;
  *(v95 + 16) = 0;
  *(v95 + 8) = 0;
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(v95 + 32));
  *(v95 + 24) = v95 + 32;
  *(v95 + 40) = 0;
  *(v95 + 32) = 0;
  v252 = __src[1];
  v253 = v274;
  *(&v275 + 1) = 0;
  v254 = (v274 - __src[1]) >> 3;
  if (v254 >= 3)
  {
    do
    {
      operator delete(*v252);
      v253 = v274;
      v252 = (__src[1] + 8);
      __src[1] = v252;
      v254 = (v274 - v252) >> 3;
    }

    while (v254 > 2);
  }

  if (v254 == 1)
  {
    v255 = 32;
    goto LABEL_474;
  }

  if (v254 == 2)
  {
    v255 = 64;
LABEL_474:
    *&v275 = v255;
  }

  if (v252 != v253)
  {
    do
    {
      v256 = *v252++;
      operator delete(v256);
    }

    while (v252 != v253);
    if (v274 != __src[1])
    {
      *&v274 = v274 + ((__src[1] - v274 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__src[0])
  {
    operator delete(__src[0]);
  }
}

void AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::appendStateLoaderInstructions(void *a1, _BYTE *a2, uint64_t a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a2 && a2[17] == 1)
  {
    v4 = a2[40];
    if (!a2[40])
    {
      return;
    }

    if (a2[41] == 1 && (v5 = *(a3 + 216) - 1, v5 <= 0x13))
    {
      v6 = dword_29D2F4838[v5];
    }

    else
    {
      v6 = 0;
    }

    v15 = a2[42];
    memset(v17, 0, 28);
    *&v17[28] = 0x300000098;
    *&v17[36] = v4;
    *&v17[40] = v6;
    *&v17[44] = v15;
    *__src = 0u;
    v22 = 0u;
    v12 = AGXIotoInstruction_SETPROFILECTL_0::emit(v17, __src);
    v13 = *(a3 + 8);
    v14 = v12 - __src;
  }

  else
  {
    v7 = *(a3 + 216) - 1;
    if (v7 > 0x13)
    {
      v8 = 1;
    }

    else
    {
      v8 = qword_29D2F4748[v7];
    }

    v10 = a1[8] + a1[1] + a1[v8 + 10];
    if (os_parse_boot_arg_int() && AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::appendStateLoaderInstructions(AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,AGX::HAL300::ESLEncoder *)::agx_disable_per_usc_profilectl == 1)
    {
      v16 = v10 + 16 * *(*a1 + 7144);
      memset(v17, 0, 32);
      *&v17[40] = v16 & 0xFFFFFFFFFFFFLL;
      *&v17[28] = 0x300000014;
      *&v17[36] = 1;
      AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendInstruction<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::BranchAndLink>(a3, v17);
      return;
    }

    memset(v17, 0, 28);
    *&v17[28] = xmmword_29D2F1CD0;
    *&v17[44] = xmmword_29D2F1B60;
    *&v17[60] = 0;
    v18 = 0;
    AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendInstruction<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadImmediate32>(a3, v17);
    *&v17[56] = 0;
    v18 = 0;
    *&v20[4] = 0u;
    memset(v17, 0, 48);
    *&v17[28] = 0x400000090;
    v17[36] = 1;
    *&v17[40] = 2;
    *&v17[48] = 0x100000002;
    v19 = 14;
    *v20 = 0x100000007;
    *&v20[12] = 8;
    *__src = 0u;
    v22 = 0u;
    v11 = AGXIotoInstruction_RLD_1::emit(v17, __src);
    std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(a3, *(a3 + 8), __src, v11, v11 - __src);
    memset(v17, 0, 28);
    *&v17[28] = xmmword_29D2F1CE0;
    *&v17[44] = xmmword_29D2F1B60;
    *&v17[60] = 0;
    v18 = v10;
    AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendInstruction<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadImmediate32>(a3, v17);
    memset(&v17[12], 0, 20);
    *v17 = 0x2A300211A040427;
    *&v17[8] = 32904;
    std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(a3, *(a3 + 8), v17, &v17[12], 12);
    memset(v17, 0, 28);
    *&v17[28] = xmmword_29D2F1CD0;
    *&v17[44] = xmmword_29D2F1B60;
    *&v17[60] = 0;
    v18 = HIDWORD(v10);
    AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendInstruction<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadImmediate32>(a3, v17);
    *&v17[44] = 0;
    memset(v17, 0, 32);
    *&v17[28] = 0x20000001BLL;
    *&v17[48] = xmmword_29D2F1950;
    v18 = 0;
    v17[24] = 1;
    *&v17[36] = 1;
    *__src = 0u;
    v22 = 0u;
    v12 = AGXIotoInstruction_CNDCALL_0::emit(v17, __src);
    v13 = *(a3 + 8);
    v14 = v12 - __src;
  }

  std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(a3, v13, __src, v12, v14);
}

void AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendInstruction<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::BranchAndLink>(uint64_t a1, AGXIotoInstruction_BL_1 *this)
{
  v5 = *MEMORY[0x29EDCA608];
  memset(v4, 0, sizeof(v4));
  v3 = AGXIotoInstruction_BL_1::emit(this, v4);
  std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(a1, *(a1 + 8), v4, v3, v3 - v4);
}

unsigned __int8 *AGXIotoInstruction_SETPROFILECTL_0::emit(AGXIotoInstruction_SETPROFILECTL_0 *this, unsigned __int8 *a2)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  v5 = *(this + 2);
  v4 = *(this + 3);
  v6 = v2 != 0;
  v7 = *(this + 1);
  v8 = v5 == 1;
  v9 = v2 | v3 | v4;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5 == 1;
  }

  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v5 == 2;
  }

  v12 = v7 == 1 && v5 == 0;
  v13 = v7 == 1 && v5 == 1;
  v14 = v7 == 1 && v5 == 2;
  v15 = v7 == 2 && v5 == 0;
  if (v7 == 2)
  {
    v16 = v5 == 2;
  }

  else
  {
    v8 = 0;
    v16 = 0;
  }

  v17 = v9 == 0;
  v148 = v9 == 0;
  v137 = v10;
  v138 = v15;
  if (v9)
  {
    v18 = 0;
  }

  else
  {
    v18 = v15;
  }

  v147 = v18;
  v135 = v8;
  v136 = v13;
  v19 = v17 && v8;
  v146 = v19;
  v20 = v17 && v10;
  v21 = v17 && v12;
  v144 = v21;
  v145 = v20;
  v22 = v17 && v13;
  v133 = v14;
  v134 = v11;
  v23 = v17 && v11;
  v142 = v23;
  v143 = v22;
  v24 = v17 && v14;
  v141 = v24;
  v132 = v16;
  v25 = v17 && v16;
  v139 = v12;
  v140 = v25;
  v26 = v2 != 1;
  v27 = v2 != 2;
  if (v3)
  {
    v28 = 1;
  }

  else
  {
    v28 = v26;
  }

  if (v3)
  {
    v29 = 1;
  }

  else
  {
    v29 = v27;
  }

  v30 = v3 != 1 || v6;
  v31 = v3 != 1 || v26;
  v32 = v3 != 1 || v27;
  v17 = v3 == 2;
  v33 = v5 | v7;
  if (v17)
  {
    v34 = v27;
  }

  else
  {
    v6 = 1;
    v26 = 1;
    v34 = 1;
  }

  if (v4)
  {
    v35 = 1;
  }

  else
  {
    v35 = v30;
  }

  if (v4)
  {
    v36 = 1;
  }

  else
  {
    v36 = v6;
  }

  if (v4)
  {
    v37 = 1;
  }

  else
  {
    v37 = v28;
  }

  if (v4)
  {
    v38 = 1;
  }

  else
  {
    v38 = v31;
  }

  if (v4)
  {
    v39 = 1;
  }

  else
  {
    v39 = v26;
  }

  if (v4)
  {
    v40 = 1;
  }

  else
  {
    v40 = v29;
  }

  v151 = v40;
  if (v4)
  {
    v41 = 1;
  }

  else
  {
    v41 = v32;
  }

  v155 = v41;
  if (v4)
  {
    v42 = 1;
  }

  else
  {
    v42 = v34;
  }

  v157 = v42;
  v43 = v4 != 1 || *(this + 2) != 0;
  if (v4 == 1)
  {
    v44 = v30;
  }

  else
  {
    v44 = 1;
  }

  v45 = v4 != 1 || v6;
  if (v4 == 1)
  {
    v46 = v28;
  }

  else
  {
    v46 = 1;
  }

  if (v4 == 1)
  {
    v47 = v31;
  }

  else
  {
    v47 = 1;
  }

  v48 = v4 != 1 || v26;
  if (v4 == 1)
  {
    v49 = v29;
  }

  else
  {
    v49 = 1;
  }

  if (v4 == 1)
  {
    v50 = v32;
  }

  else
  {
    v50 = 1;
  }

  v149 = v50;
  if (v4 == 1)
  {
    v51 = v34;
  }

  else
  {
    v51 = 1;
  }

  v153 = v51;
  v52 = v4 == 2;
  v53 = v4 != 2 || *(this + 2) != 0;
  if (v52)
  {
    v54 = v28;
  }

  else
  {
    v30 = 1;
    v6 = 1;
    v54 = 1;
  }

  if (v52)
  {
    v55 = v26;
  }

  else
  {
    v31 = 1;
    v55 = 1;
  }

  if (v52)
  {
    v56 = v32;
  }

  else
  {
    v29 = 1;
    v56 = 1;
  }

  if (v52)
  {
    v57 = v34;
  }

  else
  {
    v57 = 1;
  }

  v58 = v33 == 0;
  v59 = !v43;
  v60 = !v53;
  v61 = v35 ^ 1;
  v62 = v44 ^ 1;
  v63 = v30 ^ 1;
  v64 = v36 ^ 1;
  v65 = v45 ^ 1;
  v66 = !v6;
  v67 = v37 ^ 1;
  v68 = v46 ^ 1;
  v69 = v38 ^ 1;
  v70 = v47 ^ 1;
  v71 = v31 ^ 1;
  v72 = v48 ^ 1;
  v73 = v55 ^ 1;
  v74 = v49 ^ 1;
  v75 = v29 ^ 1;
  v76 = v155 ^ 1;
  v77 = v149 ^ 1;
  v78 = v56 ^ 1;
  v79 = v157 ^ 1;
  v80 = v153 ^ 1;
  v81 = v57 ^ 1;
  v82 = v58;
  v156 = v60;
  v158 = v59;
  if (!v58)
  {
    v59 = 0;
    v60 = 0;
  }

  v154 = v60;
  v112 = v61;
  v113 = v44 ^ 1;
  if (!v58)
  {
    v61 = 0;
    v62 = 0;
  }

  v109 = v61;
  v110 = v62;
  v114 = v63;
  v115 = v64;
  if (v58)
  {
    v83 = v63;
  }

  else
  {
    v83 = 0;
  }

  if (v58)
  {
    v84 = v64;
  }

  else
  {
    v84 = 0;
  }

  v116 = v65;
  v117 = v66;
  if (v58)
  {
    v85 = v65;
  }

  else
  {
    v85 = 0;
  }

  if (v58)
  {
    v86 = v66;
  }

  else
  {
    v86 = 0;
  }

  v118 = v67;
  v119 = v68;
  if (v58)
  {
    v87 = v67;
  }

  else
  {
    v87 = 0;
  }

  if (v58)
  {
    v88 = v68;
  }

  else
  {
    v88 = 0;
  }

  v120 = v54 ^ 1;
  v121 = v69;
  if (v58)
  {
    v89 = v54 ^ 1;
  }

  else
  {
    v89 = 0;
  }

  if (v58)
  {
    v90 = v69;
  }

  else
  {
    v90 = 0;
  }

  v122 = v70;
  v123 = v71;
  if (v58)
  {
    v91 = v70;
  }

  else
  {
    v91 = 0;
  }

  if (v58)
  {
    v92 = v71;
  }

  else
  {
    v92 = 0;
  }

  v124 = v39 ^ 1;
  v125 = v72;
  if (v58)
  {
    v93 = v39 ^ 1;
  }

  else
  {
    v93 = 0;
  }

  if (v58)
  {
    v94 = v72;
  }

  else
  {
    v94 = 0;
  }

  v126 = v73;
  v127 = v151 ^ 1;
  if (v58)
  {
    v95 = v73;
  }

  else
  {
    v95 = 0;
  }

  if (v58)
  {
    v96 = v151 ^ 1;
  }

  else
  {
    v96 = 0;
  }

  v128 = v74;
  v129 = v75;
  if (v58)
  {
    v97 = v74;
  }

  else
  {
    v97 = 0;
  }

  if (v58)
  {
    v98 = v76;
  }

  else
  {
    v75 = 0;
    v98 = 0;
  }

  if (v58)
  {
    v99 = v149 ^ 1;
  }

  else
  {
    v99 = 0;
  }

  v130 = v76;
  v131 = v99;
  if (v58)
  {
    v100 = v78;
  }

  else
  {
    v100 = 0;
  }

  v152 = v100;
  if (v58)
  {
    v101 = v79;
  }

  else
  {
    v101 = 0;
  }

  if (v58)
  {
    v102 = v80;
  }

  else
  {
    v102 = 0;
  }

  v111 = v57 ^ 1;
  if (!v58)
  {
    v81 = 0;
  }

  v150 = v81;
  LOWORD(v81) = 3840;
  if (*(this + 8) == 3)
  {
    v108 = v77;
    LOWORD(v77) = 0;
    if (*(this + 7) == 152)
    {
      v107 = v101;
      v103 = *(this + 24);
      v81 = (((*(this + 22) & 1) << 12) | ((*(this + 20) & 1) << 7) | (8 * (*(this + 18) & 3))) & 0x9FFF | (*this << 15) | (((v103 >> 7) & 1) << 14) | (((v103 >> 6) & 1) << 13) | 0xF00;
      v77 = (v103 << 10) & 0x38000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10);
      if ((v148 & v82) == 1)
      {
        LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10);
      }

      else if (v147)
      {
        LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 4;
      }

      else if (v146)
      {
        LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 8;
      }

      else if (v145)
      {
        LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0xC;
      }

      else if (v144)
      {
        LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x10;
      }

      else if (v143)
      {
        LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x14;
      }

      else if (v142)
      {
        LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x18;
      }

      else if (v141)
      {
        LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x1C;
      }

      else if (v140)
      {
        LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x20;
      }

      else if (v59)
      {
        LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x24;
      }

      else if ((v158 & v139) != 0)
      {
        LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x28;
      }

      else if ((v158 & v138) != 0)
      {
        LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x2C;
      }

      else if ((v158 & v137) != 0)
      {
        LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x30;
      }

      else
      {
        if ((v158 & v136) != 0)
        {
          v104 = 13;
        }

        else
        {
          if ((v158 & v135) != 0)
          {
            LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x38;
            goto LABEL_237;
          }

          if ((v158 & v134) != 0)
          {
            LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x3C;
            goto LABEL_237;
          }

          if ((v158 & v133) != 0)
          {
            LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x40;
            goto LABEL_237;
          }

          if ((v158 & v132) != 0)
          {
            v104 = 17;
          }

          else if (v154)
          {
            v104 = 18;
          }

          else if ((v156 & v139) != 0)
          {
            v104 = 19;
          }

          else if ((v156 & v138) != 0)
          {
            v104 = 20;
          }

          else if ((v156 & v137) != 0)
          {
            v104 = 21;
          }

          else if ((v156 & v136) != 0)
          {
            v104 = 22;
          }

          else if ((v156 & v135) != 0)
          {
            v104 = 23;
          }

          else
          {
            if ((v156 & v134) != 0)
            {
              LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x60;
              goto LABEL_237;
            }

            if ((v156 & v133) != 0)
            {
              v104 = 25;
            }

            else if ((v156 & v132) != 0)
            {
              v104 = 26;
            }

            else if (v109)
            {
              v104 = 27;
            }

            else
            {
              if ((v112 & v139) != 0)
              {
                LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x70;
                goto LABEL_237;
              }

              if ((v112 & v138) != 0)
              {
                v104 = 29;
              }

              else
              {
                if ((v112 & v137) != 0)
                {
                  LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x78;
                  goto LABEL_237;
                }

                if ((v112 & v136) != 0)
                {
                  LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x7C;
                  goto LABEL_237;
                }

                if ((v112 & v135) != 0)
                {
                  LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x80;
                  goto LABEL_237;
                }

                if ((v112 & v134) != 0)
                {
                  v104 = 33;
                }

                else if ((v112 & v133) != 0)
                {
                  v104 = 34;
                }

                else if ((v112 & v132) != 0)
                {
                  v104 = 35;
                }

                else if (v110)
                {
                  v104 = 36;
                }

                else if ((v113 & v139) != 0)
                {
                  v104 = 37;
                }

                else if ((v113 & v138) != 0)
                {
                  v104 = 38;
                }

                else if ((v113 & v137) != 0)
                {
                  v104 = 39;
                }

                else if ((v113 & v136) != 0)
                {
                  v104 = 40;
                }

                else if ((v113 & v135) != 0)
                {
                  v104 = 41;
                }

                else if ((v113 & v134) != 0)
                {
                  v104 = 42;
                }

                else if ((v113 & v133) != 0)
                {
                  v104 = 43;
                }

                else if ((v113 & v132) != 0)
                {
                  v104 = 44;
                }

                else if (v83)
                {
                  v104 = 45;
                }

                else if ((v114 & v139) != 0)
                {
                  v104 = 46;
                }

                else if ((v114 & v138) != 0)
                {
                  v104 = 47;
                }

                else
                {
                  if ((v114 & v137) != 0)
                  {
                    LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0xC0;
                    goto LABEL_237;
                  }

                  if ((v114 & v136) != 0)
                  {
                    v104 = 49;
                  }

                  else if ((v114 & v135) != 0)
                  {
                    v104 = 50;
                  }

                  else if ((v114 & v134) != 0)
                  {
                    v104 = 51;
                  }

                  else if ((v114 & v133) != 0)
                  {
                    v104 = 52;
                  }

                  else if ((v114 & v132) != 0)
                  {
                    v104 = 53;
                  }

                  else if (v84)
                  {
                    v104 = 54;
                  }

                  else if ((v115 & v139) != 0)
                  {
                    v104 = 55;
                  }

                  else
                  {
                    if ((v115 & v138) != 0)
                    {
                      LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0xE0;
                      goto LABEL_237;
                    }

                    if ((v115 & v137) != 0)
                    {
                      v104 = 57;
                    }

                    else if ((v115 & v136) != 0)
                    {
                      v104 = 58;
                    }

                    else if ((v115 & v135) != 0)
                    {
                      v104 = 59;
                    }

                    else
                    {
                      if ((v115 & v134) != 0)
                      {
                        LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0xF0;
                        goto LABEL_237;
                      }

                      if ((v115 & v133) != 0)
                      {
                        v104 = 61;
                      }

                      else
                      {
                        if ((v115 & v132) != 0)
                        {
                          LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0xF8;
                          goto LABEL_237;
                        }

                        if (v85)
                        {
                          LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0xFC;
                          goto LABEL_237;
                        }

                        if ((v116 & v139) != 0)
                        {
                          LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x100;
                          goto LABEL_237;
                        }

                        if ((v116 & v138) != 0)
                        {
                          v104 = 65;
                        }

                        else if ((v116 & v137) != 0)
                        {
                          v104 = 66;
                        }

                        else if ((v116 & v136) != 0)
                        {
                          v104 = 67;
                        }

                        else if ((v116 & v135) != 0)
                        {
                          v104 = 68;
                        }

                        else if ((v116 & v134) != 0)
                        {
                          v104 = 69;
                        }

                        else if ((v116 & v133) != 0)
                        {
                          v104 = 70;
                        }

                        else if ((v116 & v132) != 0)
                        {
                          v104 = 71;
                        }

                        else if (v86)
                        {
                          v104 = 72;
                        }

                        else if ((v117 & v139) != 0)
                        {
                          v104 = 73;
                        }

                        else if ((v117 & v138) != 0)
                        {
                          v104 = 74;
                        }

                        else if ((v117 & v137) != 0)
                        {
                          v104 = 75;
                        }

                        else if ((v117 & v136) != 0)
                        {
                          v104 = 76;
                        }

                        else if ((v117 & v135) != 0)
                        {
                          v104 = 77;
                        }

                        else if ((v117 & v134) != 0)
                        {
                          v104 = 78;
                        }

                        else if ((v117 & v133) != 0)
                        {
                          v104 = 79;
                        }

                        else if ((v117 & v132) != 0)
                        {
                          v104 = 80;
                        }

                        else if (v87)
                        {
                          v104 = 81;
                        }

                        else if ((v118 & v139) != 0)
                        {
                          v104 = 82;
                        }

                        else if ((v118 & v138) != 0)
                        {
                          v104 = 83;
                        }

                        else if ((v118 & v137) != 0)
                        {
                          v104 = 84;
                        }

                        else if ((v118 & v136) != 0)
                        {
                          v104 = 85;
                        }

                        else if ((v118 & v135) != 0)
                        {
                          v104 = 86;
                        }

                        else if ((v118 & v134) != 0)
                        {
                          v104 = 87;
                        }

                        else if ((v118 & v133) != 0)
                        {
                          v104 = 88;
                        }

                        else if ((v118 & v132) != 0)
                        {
                          v104 = 89;
                        }

                        else if (v88)
                        {
                          v104 = 90;
                        }

                        else if ((v119 & v139) != 0)
                        {
                          v104 = 91;
                        }

                        else if ((v119 & v138) != 0)
                        {
                          v104 = 92;
                        }

                        else if ((v119 & v137) != 0)
                        {
                          v104 = 93;
                        }

                        else if ((v119 & v136) != 0)
                        {
                          v104 = 94;
                        }

                        else if ((v119 & v135) != 0)
                        {
                          v104 = 95;
                        }

                        else
                        {
                          if ((v119 & v134) != 0)
                          {
                            LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x180;
                            goto LABEL_237;
                          }

                          if ((v119 & v133) != 0)
                          {
                            v104 = 97;
                          }

                          else if ((v119 & v132) != 0)
                          {
                            v104 = 98;
                          }

                          else if (v89)
                          {
                            v104 = 99;
                          }

                          else if ((v120 & v139) != 0)
                          {
                            v104 = 100;
                          }

                          else if ((v120 & v138) != 0)
                          {
                            v104 = 101;
                          }

                          else if ((v120 & v137) != 0)
                          {
                            v104 = 102;
                          }

                          else if ((v120 & v136) != 0)
                          {
                            v104 = 103;
                          }

                          else if ((v120 & v135) != 0)
                          {
                            v104 = 104;
                          }

                          else if ((v120 & v134) != 0)
                          {
                            v104 = 105;
                          }

                          else if ((v120 & v133) != 0)
                          {
                            v104 = 106;
                          }

                          else if ((v120 & v132) != 0)
                          {
                            v104 = 107;
                          }

                          else if (v90)
                          {
                            v104 = 108;
                          }

                          else if ((v121 & v139) != 0)
                          {
                            v104 = 109;
                          }

                          else if ((v121 & v138) != 0)
                          {
                            v104 = 110;
                          }

                          else if ((v121 & v137) != 0)
                          {
                            v104 = 111;
                          }

                          else
                          {
                            if ((v121 & v136) != 0)
                            {
                              LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x1C0;
                              goto LABEL_237;
                            }

                            if ((v121 & v135) != 0)
                            {
                              v104 = 113;
                            }

                            else if ((v121 & v134) != 0)
                            {
                              v104 = 114;
                            }

                            else if ((v121 & v133) != 0)
                            {
                              v104 = 115;
                            }

                            else if ((v121 & v132) != 0)
                            {
                              v104 = 116;
                            }

                            else if (v91)
                            {
                              v104 = 117;
                            }

                            else if ((v122 & v139) != 0)
                            {
                              v104 = 118;
                            }

                            else if ((v122 & v138) != 0)
                            {
                              v104 = 119;
                            }

                            else
                            {
                              if ((v122 & v137) != 0)
                              {
                                LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x1E0;
                                goto LABEL_237;
                              }

                              if ((v122 & v136) != 0)
                              {
                                v104 = 121;
                              }

                              else if ((v122 & v135) != 0)
                              {
                                v104 = 122;
                              }

                              else if ((v122 & v134) != 0)
                              {
                                v104 = 123;
                              }

                              else
                              {
                                if ((v122 & v133) != 0)
                                {
                                  LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x1F0;
                                  goto LABEL_237;
                                }

                                if ((v122 & v132) != 0)
                                {
                                  v104 = 125;
                                }

                                else
                                {
                                  if (v92)
                                  {
                                    LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x1F8;
                                    goto LABEL_237;
                                  }

                                  if ((v123 & v139) != 0)
                                  {
                                    LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x1FC;
                                    goto LABEL_237;
                                  }

                                  if ((v123 & v138) != 0)
                                  {
                                    LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x200;
                                    goto LABEL_237;
                                  }

                                  if ((v123 & v137) != 0)
                                  {
                                    v104 = -127;
                                  }

                                  else if ((v123 & v136) != 0)
                                  {
                                    v104 = -126;
                                  }

                                  else if ((v123 & v135) != 0)
                                  {
                                    v104 = -125;
                                  }

                                  else if ((v123 & v134) != 0)
                                  {
                                    v104 = -124;
                                  }

                                  else if ((v123 & v133) != 0)
                                  {
                                    v104 = -123;
                                  }

                                  else if ((v123 & v132) != 0)
                                  {
                                    v104 = -122;
                                  }

                                  else if (v93)
                                  {
                                    v104 = -121;
                                  }

                                  else if ((v124 & v139) != 0)
                                  {
                                    v104 = -120;
                                  }

                                  else if ((v124 & v138) != 0)
                                  {
                                    v104 = -119;
                                  }

                                  else if ((v124 & v137) != 0)
                                  {
                                    v104 = -118;
                                  }

                                  else if ((v124 & v136) != 0)
                                  {
                                    v104 = -117;
                                  }

                                  else
                                  {
                                    if ((v124 & v135) == 0)
                                    {
                                      if ((v124 & v134) != 0)
                                      {
                                        v106 = -115;
                                      }

                                      else if ((v124 & v133) != 0)
                                      {
                                        v106 = -114;
                                      }

                                      else if ((v124 & v132) != 0)
                                      {
                                        v106 = -113;
                                      }

                                      else if (v94)
                                      {
                                        v106 = -112;
                                      }

                                      else if ((v125 & v139) != 0)
                                      {
                                        v106 = -111;
                                      }

                                      else if ((v125 & v138) != 0)
                                      {
                                        v106 = -110;
                                      }

                                      else if ((v125 & v137) != 0)
                                      {
                                        v106 = -109;
                                      }

                                      else if ((v125 & v136) != 0)
                                      {
                                        v106 = -108;
                                      }

                                      else if ((v125 & v135) != 0)
                                      {
                                        v106 = -107;
                                      }

                                      else if ((v125 & v134) != 0)
                                      {
                                        v106 = -106;
                                      }

                                      else if ((v125 & v133) != 0)
                                      {
                                        v106 = -105;
                                      }

                                      else if ((v125 & v132) != 0)
                                      {
                                        v106 = -104;
                                      }

                                      else if (v95)
                                      {
                                        v106 = -103;
                                      }

                                      else if ((v126 & v139) != 0)
                                      {
                                        v106 = -102;
                                      }

                                      else if ((v126 & v138) != 0)
                                      {
                                        v106 = -101;
                                      }

                                      else if ((v126 & v137) != 0)
                                      {
                                        v106 = -100;
                                      }

                                      else if ((v126 & v136) != 0)
                                      {
                                        v106 = -99;
                                      }

                                      else if ((v126 & v135) != 0)
                                      {
                                        v106 = -98;
                                      }

                                      else if ((v126 & v134) != 0)
                                      {
                                        v106 = -97;
                                      }

                                      else if ((v126 & v133) != 0)
                                      {
                                        v106 = -96;
                                      }

                                      else if ((v126 & v132) != 0)
                                      {
                                        v106 = -95;
                                      }

                                      else if (v96)
                                      {
                                        v106 = -94;
                                      }

                                      else if ((v127 & v139) != 0)
                                      {
                                        v106 = -93;
                                      }

                                      else if ((v127 & v138) != 0)
                                      {
                                        v106 = -92;
                                      }

                                      else if ((v127 & v137) != 0)
                                      {
                                        v106 = -91;
                                      }

                                      else if ((v127 & v136) != 0)
                                      {
                                        v106 = -90;
                                      }

                                      else if ((v127 & v135) != 0)
                                      {
                                        v106 = -89;
                                      }

                                      else if ((v127 & v134) != 0)
                                      {
                                        v106 = -88;
                                      }

                                      else if ((v127 & v133) != 0)
                                      {
                                        v106 = -87;
                                      }

                                      else if ((v127 & v132) != 0)
                                      {
                                        v106 = -86;
                                      }

                                      else if (v97)
                                      {
                                        v106 = -85;
                                      }

                                      else if ((v128 & v139) != 0)
                                      {
                                        v106 = -84;
                                      }

                                      else if ((v128 & v138) != 0)
                                      {
                                        v106 = -83;
                                      }

                                      else if ((v128 & v137) != 0)
                                      {
                                        v106 = -82;
                                      }

                                      else if ((v128 & v136) != 0)
                                      {
                                        v106 = -81;
                                      }

                                      else if ((v128 & v135) != 0)
                                      {
                                        v106 = -80;
                                      }

                                      else if ((v128 & v134) != 0)
                                      {
                                        v106 = -79;
                                      }

                                      else if ((v128 & v133) != 0)
                                      {
                                        v106 = -78;
                                      }

                                      else if ((v128 & v132) != 0)
                                      {
                                        v106 = -77;
                                      }

                                      else if (v75)
                                      {
                                        v106 = -76;
                                      }

                                      else if ((v129 & v139) != 0)
                                      {
                                        v106 = -75;
                                      }

                                      else if ((v129 & v138) != 0)
                                      {
                                        v106 = -74;
                                      }

                                      else if ((v129 & v137) != 0)
                                      {
                                        v106 = -73;
                                      }

                                      else if ((v129 & v136) != 0)
                                      {
                                        v106 = -72;
                                      }

                                      else if ((v129 & v135) != 0)
                                      {
                                        v106 = -71;
                                      }

                                      else if ((v129 & v134) != 0)
                                      {
                                        v106 = -70;
                                      }

                                      else if ((v129 & v133) != 0)
                                      {
                                        v106 = -69;
                                      }

                                      else if ((v129 & v132) != 0)
                                      {
                                        v106 = -68;
                                      }

                                      else if (v98)
                                      {
                                        v106 = -67;
                                      }

                                      else if ((v130 & v139) != 0)
                                      {
                                        v106 = -66;
                                      }

                                      else if ((v130 & v138) != 0)
                                      {
                                        v106 = -65;
                                      }

                                      else
                                      {
                                        if ((v130 & v137) != 0)
                                        {
                                          LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x300;
                                          goto LABEL_237;
                                        }

                                        if ((v130 & v136) != 0)
                                        {
                                          v106 = -63;
                                        }

                                        else if ((v130 & v135) != 0)
                                        {
                                          v106 = -62;
                                        }

                                        else if ((v130 & v134) != 0)
                                        {
                                          v106 = -61;
                                        }

                                        else if ((v130 & v133) != 0)
                                        {
                                          v106 = -60;
                                        }

                                        else if ((v130 & v132) != 0)
                                        {
                                          v106 = -59;
                                        }

                                        else if (v131)
                                        {
                                          v106 = -58;
                                        }

                                        else if ((v108 & v139) != 0)
                                        {
                                          v106 = -57;
                                        }

                                        else if ((v108 & v138) != 0)
                                        {
                                          v106 = -56;
                                        }

                                        else if ((v108 & v137) != 0)
                                        {
                                          v106 = -55;
                                        }

                                        else if ((v108 & v136) != 0)
                                        {
                                          v106 = -54;
                                        }

                                        else if ((v108 & v135) != 0)
                                        {
                                          v106 = -53;
                                        }

                                        else if ((v108 & v134) != 0)
                                        {
                                          v106 = -52;
                                        }

                                        else if ((v108 & v133) != 0)
                                        {
                                          v106 = -51;
                                        }

                                        else if ((v108 & v132) != 0)
                                        {
                                          v106 = -50;
                                        }

                                        else if (v152)
                                        {
                                          v106 = -49;
                                        }

                                        else if ((v78 & v139) != 0)
                                        {
                                          v106 = -48;
                                        }

                                        else if ((v78 & v138) != 0)
                                        {
                                          v106 = -47;
                                        }

                                        else if ((v78 & v137) != 0)
                                        {
                                          v106 = -46;
                                        }

                                        else if ((v78 & v136) != 0)
                                        {
                                          v106 = -45;
                                        }

                                        else if ((v78 & v135) != 0)
                                        {
                                          v106 = -44;
                                        }

                                        else if ((v78 & v134) != 0)
                                        {
                                          v106 = -43;
                                        }

                                        else if ((v78 & v133) != 0)
                                        {
                                          v106 = -42;
                                        }

                                        else if ((v78 & v132) != 0)
                                        {
                                          v106 = -41;
                                        }

                                        else if (v107)
                                        {
                                          v106 = -40;
                                        }

                                        else if ((v79 & v139) != 0)
                                        {
                                          v106 = -39;
                                        }

                                        else if ((v79 & v138) != 0)
                                        {
                                          v106 = -38;
                                        }

                                        else if ((v79 & v137) != 0)
                                        {
                                          v106 = -37;
                                        }

                                        else if ((v79 & v136) != 0)
                                        {
                                          v106 = -36;
                                        }

                                        else if ((v79 & v135) != 0)
                                        {
                                          v106 = -35;
                                        }

                                        else if ((v79 & v134) != 0)
                                        {
                                          v106 = -34;
                                        }

                                        else if ((v79 & v133) != 0)
                                        {
                                          v106 = -33;
                                        }

                                        else
                                        {
                                          if ((v79 & v132) != 0)
                                          {
                                            LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x380;
                                            goto LABEL_237;
                                          }

                                          if (v102)
                                          {
                                            v106 = -31;
                                          }

                                          else if ((v80 & v139) != 0)
                                          {
                                            v106 = -30;
                                          }

                                          else if ((v80 & v138) != 0)
                                          {
                                            v106 = -29;
                                          }

                                          else if ((v80 & v137) != 0)
                                          {
                                            v106 = -28;
                                          }

                                          else if ((v80 & v136) != 0)
                                          {
                                            v106 = -27;
                                          }

                                          else if ((v80 & v135) != 0)
                                          {
                                            v106 = -26;
                                          }

                                          else if ((v80 & v134) != 0)
                                          {
                                            v106 = -25;
                                          }

                                          else if ((v80 & v133) != 0)
                                          {
                                            v106 = -24;
                                          }

                                          else if ((v80 & v132) != 0)
                                          {
                                            v106 = -23;
                                          }

                                          else if (v150)
                                          {
                                            v106 = -22;
                                          }

                                          else if ((v111 & v139) != 0)
                                          {
                                            v106 = -21;
                                          }

                                          else if ((v111 & v138) != 0)
                                          {
                                            v106 = -20;
                                          }

                                          else if ((v111 & v137) != 0)
                                          {
                                            v106 = -19;
                                          }

                                          else if ((v111 & v136) != 0)
                                          {
                                            v106 = -18;
                                          }

                                          else if ((v111 & v135) != 0)
                                          {
                                            v106 = -17;
                                          }

                                          else
                                          {
                                            if ((v111 & v134) != 0)
                                            {
                                              LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | 0x3C0;
                                              goto LABEL_237;
                                            }

                                            if ((v111 & v133) != 0)
                                            {
                                              v106 = -15;
                                            }

                                            else
                                            {
                                              if ((v111 & v132) == 0)
                                              {
                                                goto LABEL_237;
                                              }

                                              v106 = -14;
                                            }
                                          }
                                        }
                                      }

                                      LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | (4 * v106);
                                      goto LABEL_237;
                                    }

                                    v104 = -116;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        LOWORD(v77) = (v103 << 10) & 0x8000 | (((v103 >> 4) & 1) << 14) | (((v103 >> 3) & 1) << 13) | (((v103 >> 2) & 1) << 12) | (((v103 >> 1) & 1) << 11) | ((v103 & 1) << 10) | (4 * v104);
      }
    }
  }

  else
  {
    LOWORD(v77) = 0;
  }

LABEL_237:
  *a2 = 7;
  *(a2 + 1) = v81;
  *(a2 + 2) = v77;
  return a2 + 6;
}