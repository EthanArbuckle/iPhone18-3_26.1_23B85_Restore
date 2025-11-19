uint64_t std::__shared_ptr_pointer<AGX::HeapBuffer *,std::shared_ptr<AGX::HeapBuffer>::__shared_ptr_default_delete<AGX::HeapBuffer,AGX::HeapBuffer>,std::allocator<AGX::HeapBuffer>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 64) && *(v1 + 24))
    {
      v2 = *(v1 + 32);
      v3 = *(v2 + 16);
      v4[0] = MEMORY[0x29EDCA5F8];
      v4[1] = 3221225472;
      v4[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
      v4[3] = &__block_descriptor_48_e5_v8__0l;
      v4[4] = v2;
      v4[5] = v1;
      dispatch_sync(v3, v4);
      *(v1 + 25) = 0u;
      *v1 = 0u;
      *(v1 + 16) = 0u;
    }

    JUMPOUT(0x29ED520D0);
  }

  return result;
}

void std::__shared_ptr_pointer<AGX::HeapBuffer *,std::shared_ptr<AGX::HeapBuffer>::__shared_ptr_default_delete<AGX::HeapBuffer,AGX::HeapBuffer>,std::allocator<AGX::HeapBuffer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29ED520D0);
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::waitForVirtualSubstream(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 24576);
  v3 = *(a1 + 28312);
  v4 = a2 - v3;
  if (a2 >= v3)
  {
    if (*(*(a1 + 28288) - 32) <= (*(*(a1 + 28280) + (v4 << 6) + 32) + *(*(a1 + 28280) + (v4 << 6) + 28)))
    {
      v6 = *(*(a1 + 28280) + (v4 << 6) + 32) + *(*(a1 + 28280) + (v4 << 6) + 28);
    }

    else
    {
      v6 = *(*(a1 + 28288) - 32);
    }

    if ((v6 + 1) > *(a1 + 28308))
    {
      v7 = *(a1 + 27624) != 0;
      v8 = *(a1 + 27628);
      v14 = 1;
      agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, 24, 0, v7, v8, &v14);
      ++v2[933];
    }

    v9 = v2[762] != 0;
    v10 = v2[763];
    v13 = 1;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, 4, 0, v9, v10, &v13);
    if (*(*(a1 + 1912) + 520))
    {
      v11 = *(a1 + 28288);
      *(v11 - 32) = v6;
      v12 = v4;
      std::vector<unsigned int>::push_back[abi:nn200100](v11 - 24, &v12);
    }

    else
    {

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::restartComputePass(a1, 22);
    }
  }
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::restartComputePass(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 28248);
  if (v4 == 1)
  {
    *(a1 + 28312) = *(a1 + 28312) + ((*(a1 + 28288) - *(a1 + 28280)) >> 6) - 1;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endVirtualSubstream(a1);
  }

  if (((1 << a2) & 0xFFF339E0480) != 0 && !*(a1 + 32 * a2 + 72))
  {
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, a2);
  }

  IOGPUResourceListAddResource();
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(a1, 1, a2);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::beginComputePass(a1, 1, a2);
  IOGPUResourceListAddResource();
  if (v4)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::beginVirtualSubstream(a1);
  }
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endVirtualSubstream(uint64_t a1)
{
  v55[1] = *MEMORY[0x29EDCA608];
  v2 = a1 + 24576;
  v3 = *(a1 + 792);
  v4 = *(a1 + 776);
  if (*(a1 + 28316))
  {
    goto LABEL_69;
  }

  v50 = *(a1 + 776);
  v51 = 0;
  v5 = 0;
  v6 = 0;
  v54 = 0;
  v55[0] = 0;
  do
  {
    v53 = 0;
    v7 = *(a1 + 28280);
    if (*(a1 + 28288) != v7)
    {
      v52 = 0;
      v8 = 0;
      while (1)
      {
        v9 = v7 + (v8 << 6);
        v10 = *(v9 + 40);
        v11 = *(v9 + 48);
        if (v10 == v11)
        {
          goto LABEL_26;
        }

        v12 = *(v9 + 48);
        while (1)
        {
          v13 = *(v12 - 4);
          v12 -= 4;
          v14 = (*(a1 + 28280) + (v13 << 6));
          if (v14[3] != v14[1] || v14[6] >= v6)
          {
            break;
          }

          *(v9 + 48) = v12;
          if (*(v2 + 3048))
          {
            v16 = v14[2];
            v17 = *(v9 + 8);
            if (v16 != v17 && v14[4] == v5)
            {
              v19 = *(a1 + 1160);
              if (*(v2 + 3052) != v17)
              {
                *(v2 + 3052) = v17;
                *v19++ = (v17 + 1) & 7 | 0xA0000000;
                v16 = v14[2];
              }

              *v19 = (((v16 << 18) + 0x40000) & 0x1C0000 | ((v14[5] << 21) + 0x200000) & 0x1FE00000) + 1610613248;
              *(a1 + 1160) = v19 + 1;
              v10 = *(v9 + 40);
              v12 = *(v9 + 48);
            }
          }

          v11 = v12;
          if (v10 == v12)
          {
            goto LABEL_26;
          }
        }

        if (v10 == v11)
        {
LABEL_26:
          v20 = *(v9 + 12);
          while (1)
          {
            v23 = *(v9 + 4);
            if (v23 <= v20)
            {
              break;
            }

            v24 = *v9 + v20;
            v25 = *(a1 + 28256);
            if (v24 >= (*(a1 + 28264) - v25) >> 5)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v26 = v25 + 32 * v24;
            v27 = *v26;
            v28 = *(v26 + 16);
            v29 = *(v26 + 24);
            v30 = *(v26 + 25);
            if (*(v2 + 3048))
            {
              v31 = *(v9 + 8);
              v21 = *(a1 + 1160);
              if (*(v2 + 3052) != v31)
              {
                *(v2 + 3052) = v31;
                *v21++ = (v31 + 1) & 7 | 0xA0000000;
              }
            }

            else
            {
              v21 = *(a1 + 1160);
            }

            *(a1 + 1160) = v21 + v28;
            memcpy(v21, v27, v28);
            v22 = *(v9 + 12);
            *(&v54 + *(v9 + 8)) |= v30 & 1;
            v20 = v22 + 1;
            *(v9 + 12) = v22 + 1;
            if (v29)
            {
              v23 = *(v9 + 4);
              break;
            }
          }

          if (v20 >= v23)
          {
            if (*(v9 + 24) == -1)
            {
              *(v9 + 24) = v6;
              if (*(v2 + 3048))
              {
                v32 = *(v9 + 8);
                *(&v53 + v32) = 1;
                LODWORD(v32) = *(v55 + v32);
                *(v9 + 16) = v5;
                *(v9 + 20) = v32;
              }
            }

            goto LABEL_9;
          }
        }

        v52 = 1;
LABEL_9:
        ++v8;
        v7 = *(a1 + 28280);
        if (v8 >= (*(a1 + 28288) - v7) >> 6)
        {
          goto LABEL_40;
        }
      }
    }

    v52 = 0;
LABEL_40:
    if (*(v2 + 3048))
    {
      *(v2 + 3052) = 0;
      v33 = *(a1 + 1160);
      *v33 = -1610612735;
      *(a1 + 1160) = v33 + 1;
      if (v53)
      {
        AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::encodeBarrierForSubstream(a1 + 24, v54, v51);
        LODWORD(v51) = v51 + 1;
        LODWORD(v55[0]) = v51;
        v34 = v51 == 255;
        v35 = *(a1 + 1160);
      }

      else
      {
        if (v54)
        {
          v38 = 1610617184;
        }

        else
        {
          v38 = 1610613088;
        }

        {
        }

        v34 = 0;
        v39 = *(a1 + 1160);
        *v39 = v38;
        v35 = v39 + 1;
      }

      *(v2 + 3052) = 1;
      *v35 = -1610612734;
      *(a1 + 1160) = v35 + 1;
      if ((v53 & 0x100) != 0)
      {
        AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::encodeBarrierForSubstream(a1 + 24, HIBYTE(v54), SHIDWORD(v51));
        HIDWORD(v55[0]) = ++HIDWORD(v51);
        if (HIDWORD(v51) == 255 || v34)
        {
          v40 = *(a1 + 1160);
LABEL_3:
          v51 = 0;
          *(v2 + 3052) = -1;
          *v40 = 0x60000300A0000000;
          *(a1 + 1160) = v40 + 1;
          v55[0] = 0;
          ++v5;
        }
      }

      else
      {
        if (HIBYTE(v54))
        {
          v41 = 1610617184;
        }

        else
        {
          v41 = 1610613088;
        }

        {
        }

        v42 = *(a1 + 1160);
        *v42 = v41;
        v40 = v42 + 1;
        *(a1 + 1160) = v40;
        if (v34)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      if (v54)
      {
        v36 = 1610617184;
      }

      else
      {
        v36 = 1610613088;
      }

      {
      }

      v37 = *(a1 + 1160);
      *v37 = v36;
      *(a1 + 1160) = v37 + 1;
      LOBYTE(v54) = 0;
    }

    ++v6;
  }

  while ((v52 & 1) != 0);
  v4 = v50;
LABEL_69:
  *(a1 + 28264) = *(a1 + 28256);
  v43 = *(a1 + 28288);
  v44 = *(a1 + 28280);
  while (v43 != v44)
  {
    v45 = *(v43 - 24);
    if (v45)
    {
      *(v43 - 16) = v45;
      operator delete(v45);
    }

    v43 -= 64;
  }

  *(a1 + 28288) = v44;
  *(v2 + 3672) = 0;
  v46 = *(a1 + 1160);
  if (*(v2 + 3048))
  {
    *v46++ = 0x60000300A0000000;
    *(v2 + 3052) = 0;
    *(a1 + 27632) = 0;
  }

  *v46 = __ROR8__(v3 + v4, 32) & 0xFFFFFFFF0000FFFFLL | 0x20000000;
  *(a1 + 1160) = v46 + 1;
  if (*(v2 + 3048))
  {
    v47 = *(v2 + 3728);
    *(v2 + 3052) = v47;
    v48 = (v47 + 1) & 7 | 0xA0000000;
    v49 = *(a1 + 776);
    *v49 = v48;
    *(a1 + 776) = v49 + 1;
  }
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 2292) == 1)
  {
    v5 = *(a1 + 28200);
    if (v5)
    {
      if (!*v5)
      {
        v6 = *(a1 + 28208);
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

  v8 = *(a1 + 27552);
  if (v8)
  {
    LODWORD(v8) = *(v8 + 528);
  }

  v9 = *(a1 + 27544);
  if (v9)
  {
    LODWORD(v9) = *(v9 + 528);
  }

  v10 = v9 + v8;
  v11 = *a1;
  if (([*a1 skipRender] & 1) != 0 || (*(a1 + 28090) & 2) != 0 || (*(a1 + 28090) & 1) != 0 && !v10 && !*(a1 + 2028) && !*(a1 + 2032) && !*(a1 + 2036) && !*(a1 + 2040) && !*(a1 + 2044) && !*(a1 + 2048) && !*(a1 + 2052) && !*(a1 + 2056))
  {
    v12 = *(a1 + 1968) - *(a1 + 1984);
    *(v12 + 140) = 1;
    if ((*(v12 + 136) & 4) != 0)
    {
      **(a1 + 8) = 1;
    }
  }

  if (([v11 skipRender] & 1) == 0 && (*(a1 + 28090) & 3) == 1 && (v10 || *(a1 + 2028) || *(a1 + 2032) || *(a1 + 2036) || *(a1 + 2040) || *(a1 + 2044) || *(a1 + 2048) || *(a1 + 2052) || *(a1 + 2056)))
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(a1, a3, 0, 0);
    *(a1 + 2306) = 0;
  }

  if (*(a1 + 27624))
  {
    v18 = *(a1 + 27628);
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
      AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::patchCDMControlStreamAndReset(a1 + 2152, a1, *(a1 + 27672), *(a1 + 27680), *(a1 + 27688));
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
      FenceEncoder::encode((a1 + 1880), 1, *(a1 + 2320), *(a1 + 27552), *(a1 + 27544), 0, 0);
      *(a1 + 28240) |= 0x20000uLL;
      v25 = *(a1 + 2328);
    }

    *(v25 + 196) = *(a1 + 1928);
    *(v25 + 192) = *(a1 + 1924);
    *(v25 + 200) = *(a1 + 1932);
    v26 = *(a1 + 27808);
    if (!v26 || vand_s8(*(a1 + 27816), vdup_lane_s32(*(a1 + 27816), 1)).u32[0] == -1)
    {
      *(v25 + 604) = -1;
      *(v25 + 596) = -1;
    }

    else
    {
      v97 = *(a1 + 27816);
      *(v25 + 596) = [v26 resourceID];
      *(v25 + 600) = v97;
    }

    *(a1 + 27816) = -1;
    if (*(a1 + 28464) != *(a1 + 28472) || *(a1 + 28488) != *(a1 + 28496))
    {
      AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::encodeTimestampLists(a1, *(a1 + 2320), (a1 + 28464), (a1 + 28488), 0, 0);
      *(a1 + 28472) = *(a1 + 28464);
      *(a1 + 28496) = *(a1 + 28488);
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::finalizeScsParameters(*(a1 + 28328), a1 + 28336);
    if (WORD2(*(a1 + 28344)) | HIWORD(*(a1 + 28344)))
    {
      v27 = *(*(a1 + 1872) + 848);
      block = MEMORY[0x29EDCA5F8];
      v99 = 3221225472;
      v100 = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36setupDriverIntersectionTableIfNeededEv_block_invoke;
      v101 = &__block_descriptor_40_e5_v8__0l;
      v102 = v27;
      if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken != -1)
      {
        dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, &block);
      }

      v28 = *(v27 + 6288);
      v29 = *(a1 + 27696);
      v30 = *(v28 + 72);
      v31 = v29.i32[0];
      if (v29.i32[0] <= v30)
      {
        v31 = *(v28 + 72);
      }

      *(a1 + 27696) = v31;
      v32 = *(v28 + 76);
      v33 = v29.i32[1];
      if (v29.i32[1] <= v32)
      {
        v33 = *(v28 + 76);
      }

      *(a1 + 27700) = v33;
      v34 = *(v28 + 80);
      v35 = v29.i32[2];
      if (v29.i32[2] <= v34)
      {
        v35 = *(v28 + 80);
      }

      *(a1 + 27704) = v35;
      v36 = *(v28 + 84);
      v37 = v29.i32[3];
      if (v29.i32[3] <= v36)
      {
        v37 = *(v28 + 84);
      }

      *(a1 + 27708) = v37;
      v38 = *(v28 + 88);
      v39 = *(a1 + 27712);
      v40 = *(a1 + 27728);
      v41 = v39.i32[0];
      if (v39.i32[0] <= v38)
      {
        v41 = *(v28 + 88);
      }

      *(a1 + 27712) = v41;
      v42 = v39.i32[1];
      v43 = *(v28 + 92);
      if (v39.i32[1] <= v43)
      {
        v42 = *(v28 + 92);
      }

      *(a1 + 27716) = v42;
      v44 = v39.i32[2];
      v45 = *(v28 + 96);
      if (v39.i32[2] <= v45)
      {
        v44 = *(v28 + 96);
      }

      *(a1 + 27720) = v44;
      v46.i64[0] = __PAIR64__(v43, v38);
      v46.i32[2] = v45;
      v46.i32[3] = *(v28 + 100);
      v47.i64[0] = __PAIR64__(v32, v30);
      v47.i64[1] = __PAIR64__(v36, v34);
      v48 = v39.i32[3];
      if (v39.i32[3] <= v46.i32[3])
      {
        v48 = *(v28 + 100);
      }

      *(a1 + 27724) = v48;
      v49 = *(v28 + 104);
      v50 = v40.i32[0];
      if (v40.i32[0] <= v49)
      {
        v50 = *(v28 + 104);
      }

      *(a1 + 27728) = v50;
      v51 = *(v28 + 108);
      v52 = v40.i32[1];
      if (v40.i32[1] <= v51)
      {
        v52 = *(v28 + 108);
      }

      *(a1 + 27732) = v52;
      v53 = *(v28 + 112);
      v54 = v40.i32[2];
      if (v40.i32[2] <= v53)
      {
        v54 = *(v28 + 112);
      }

      *(a1 + 27736) = v54;
      v55 = *(v28 + 116);
      v56 = v40.i32[3];
      if (v40.i32[3] <= v55)
      {
        v56 = *(v28 + 116);
      }

      *(a1 + 27740) = v56;
      v57 = *(v28 + 120);
      v58 = *(a1 + 27744);
      if (v58 <= v57)
      {
        v59 = *(v28 + 120);
      }

      else
      {
        v59 = *(a1 + 27744);
      }

      *(a1 + 27744) = v59;
      if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v47, v29), vcgtq_s32(v46, v39)))) & 1) != 0 || ((v60.i64[0] = __PAIR64__(v51, v49), v60.i64[1] = __PAIR64__(v55, v53), (vaddvq_s32(vandq_s8(vcgtq_s32(v60, v40), xmmword_29D2F1960)) & 0xF) == 0) ? (v61 = v58 < v57) : (v61 = 1), v61))
      {
        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 27696, *(a1 + 2328) + 336, 0);
      }

      v62 = *(a1 + 22496);
      v63 = *(*(a1 + 1872) + 848);
      block = v62 + 1544;
      v99 = a1 + 23024;
      AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::addToResourceList(v63 + 3534, &block);
      v64 = *(*(a1 + 23024) + 16);
      v65 = *(a1 + 2328);
      v65[65] = *(v62 + 1544) & 0xFFFFFFFFFFC0;
      v65[66] = (v64 >> 14) & 0x1FFFFFF;
      v66 = ((*(v28 + 188) & 0x3FFFF) << 7) | 0xC0000000;
      v65[63] = (*(v62 + 1544) + (*(v28 + 184) << 7)) & 0xFFFFFFFFFFC0 | 0x8000000000000;
      v65[64] = v66;
      IOGPUResourceListAddResource();
      v67 = *(v28 + 16);
      if (v67 != (v28 + 24))
      {
        do
        {
          IOGPUResourceListAddResource();
          v68 = v67[1];
          if (v68)
          {
            do
            {
              v69 = v68;
              v68 = *v68;
            }

            while (v68);
          }

          else
          {
            do
            {
              v69 = v67[2];
              v70 = *v69 == v67;
              v67 = v69;
            }

            while (!v70);
          }

          v67 = v69;
        }

        while (v69 != (v28 + 24));
      }

      v71 = a1 + 28344;
      v72 = *(a1 + 2328);
      *(v72 + 536) = *(v28 + 40);
      *(v72 + 544) = *(v28 + 48);
      if (!*(a1 + 28347))
      {
        *(*v21 + 132) = 1;
      }

      SectionEnd = *(a1 + 28372);
      if (!SectionEnd)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v71, 10);
        *(a1 + 28372) = SectionEnd;
      }

      *(v72 + 552) = SectionEnd;
      v74 = *(a1 + 28448);
      if (v74 == -1)
      {
        v96 = *(a1 + 28346);
        if (v96 > 1)
        {
          ++v96;
        }

        v74 = 8 * v96;
        *(a1 + 28448) = v74;
      }

      *(v72 + 556) = v74;
      *(v72 + 560) = *(a1 + 28347);
      *(v72 + 564) = *(a1 + 28344);
      *(v72 + 568) = *(a1 + 28346);
      v75 = *(a1 + 28452);
      if (v75 == -1)
      {
        v75 = (RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v71, 12) + 0x1FFF) & 0xFFFFF000;
        *(a1 + 28452) = v75;
      }

      v76 = (v75 + 4095) >> 12;
      v77 = (4 * v76 + 1023) >> 10;
      v78 = *(a1 + 27696);
      v79.i64[0] = 0;
      v79.i32[2] = 0;
      *(a1 + 27696) = vmaxq_s32(v78, 0);
      v16 = *(a1 + 27712);
      *(a1 + 27712) = vmaxq_s32(v16, 0);
      v13 = *(a1 + 27728);
      v79.i32[3] = v76;
      *(a1 + 27728) = vmaxq_s32(v13, v79);
      v80 = *(a1 + 27744);
      v81 = vorrq_s8(v16, v78);
      *v81.i8 = vorr_s8(*v81.i8, *&vextq_s8(v81, v81, 8uLL));
      v82 = v81.i32[0] | v81.i32[1];
      if (v80 <= v77)
      {
        v83 = (4 * v76 + 1023) >> 10;
      }

      else
      {
        v83 = *(a1 + 27744);
      }

      v84 = vdup_laneq_s32(v13, 2);
      v84.i32[0] = v82;
      *(a1 + 27744) = v83;
      v85 = vorr_s8(v84, *v13.i8);
      v15 = vdup_lane_s32(v85, 1);
      v14 = COERCE_DOUBLE(vorr_s8(v85, v15));
      if ((LODWORD(v14) & 0x80000000) != 0 || v13.i32[3] < v76 || v80 < v77)
      {
        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 27696, v72 + 336, 0);
        v72 = *(a1 + 2328);
      }
    }

    else
    {
      v72 = *(a1 + 2328);
      *(v72 + 564) = 8;
    }

    *(v72 + 104) = 0;
    *(v72 + 589) = 0;
    {
    }

    *(*(a1 + 2328) + 590) = *(a1 + 1961);
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(BOOL,eAGXDataBufferPools)::pipelineBarrierType = 1;
    }

    if ((AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(BOOL,eAGXDataBufferPools)::pipelineBarrierType & 1) == 0)
    {
      *(*(a1 + 2328) + 608) = 0;
    }
  }

  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(a1 + 27696, 0, 0, 0, 0, 0, 0, *v13.i64, v14, *&v15, *v16.i64, v17))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 27696, *(a1 + 2328) + 336, 0);
  }

  *v21 = 0;
  *(a1 + 2328) = 0;
  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::endCommand(a1, v86, v87, v88, v89);
  AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::reset(*(a1 + 2008));
  v90 = *(a1 + 27836);
  v91 = *(a1 + 27840);
  v92 = *(a1 + 1872) + 856;
  v93 = *(*(a1 + 1872) + 1136);
  if (v90 >= v91)
  {
    if (v93 < v90)
    {
      v95 = *(*(a1 + 1872) + 1136);
      do
      {
        atomic_compare_exchange_strong_explicit((v92 + 280), &v95, v90, memory_order_relaxed, memory_order_relaxed);
        if (v95 == v93)
        {
          break;
        }

        v93 = v95;
      }

      while (v95 < v90);
    }
  }

  else if (v93 < v91)
  {
    v94 = *(*(a1 + 1872) + 1136);
    do
    {
      atomic_compare_exchange_strong_explicit((v92 + 280), &v94, v91, memory_order_relaxed, memory_order_relaxed);
      if (v94 == v93)
      {
        break;
      }

      v93 = v94;
    }

    while (v94 < v91);
  }

  *(a1 + 27836) = 0;
  *(a1 + 27840) = 0;
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::beginComputePass(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a1 + 24576;
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

  *(v6 + 3514) = *(v6 + 3514) & 0xFC | 1;
  *(v6 + 3936) = 0;
  if (*(v6 + 3528) == 1)
  {
    *(v6 + 3528) = 0;
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

  v125 = a3;
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
  if (*(v6 + 3048))
  {
    *(v11 + 500) = 1;
    *(a1 + 27628) = 0u;
  }

  *(a1 + 27728) = 0u;
  *(a1 + 27712) = 0u;
  *(a1 + 27696) = 0u;
  v126 = (a1 + 27696);
  *(a1 + 27744) = 0;
  AGX::ContextSwitcherGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupComputeCommand(*(a1 + 2128), v11, a1 + 24);
  v12 = *(a1 + 22496);
  *(v12 + 1360) = 0u;
  *(v12 + 1392) = 0u;
  v13 = *(a1 + 22496);
  *(v13 + 1496) = 0;
  *(v13 + 1424) = 0u;
  *(v13 + 1536) = 0u;
  v14 = a1 + 64;
  v15 = *(a1 + 1864) - 1;
  v127 = a2;
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
LABEL_94:
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
      goto LABEL_94;
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
    v118 = v25;
    v119 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v22, 0);
    v25 = v118;
    if (!v119)
    {
      goto LABEL_94;
    }
  }

  v28 = v27[1] + 15;
  if (v28 <= *v27)
  {
    goto LABEL_27;
  }

  v109 = v25;
  v110 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v26, 0);
  v25 = v109;
  if (v110)
  {
    v28 = v27[1] + 15;
    if (v28 > *v27)
    {
      goto LABEL_94;
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
    v120 = v25;
    v121 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v31, 0);
    v25 = v120;
    if (!v121)
    {
      goto LABEL_94;
    }
  }

  v37 = v36[1] + 15;
  if (v37 <= *v36)
  {
    goto LABEL_34;
  }

  v111 = v35;
  v112 = v25;
  v113 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v111, 0);
  v25 = v112;
  if (v113)
  {
    v37 = v36[1] + 15;
    if (v37 > *v36)
    {
      goto LABEL_94;
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
    v124 = v25;
    v122 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v40, 0);
    v25 = v124;
    if (!v122)
    {
      goto LABEL_94;
    }
  }

  v46 = v45[1] + 15;
  if (v46 <= *v45)
  {
    goto LABEL_41;
  }

  v114 = v44;
  v115 = v25;
  v116 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v114, 0);
  v25 = v115;
  if (v116)
  {
    v46 = v45[1] + 15;
    if (v46 > *v45)
    {
      goto LABEL_94;
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
  v54 = *(*(a1 + 1872) + 848);
  v55 = *(v54 + 6320);
  v56 = MEMORY[0x29EDC5638];
  if (*(v6 + 3032) != v55)
  {
    v57 = *(v54 + 6832);
    if (v57)
    {
      do
      {
        IOGPUResourceListAddResource();
        v57 = *v57;
      }

      while (v57);
      v54 = *(*(a1 + 1872) + 848);
    }

    for (i = *(v54 + 6664); i; i = *i)
    {
      IOGPUResourceListAddResource();
    }

    *(v6 + 3032) = v55;
  }

  if ((v127 & 1) == 0)
  {
    *(a1 + 28128) = 0;
    *(a1 + 28112) = 0u;
    v59 = *(a1 + 168);
    v60 = v59 + 47;
    if ((v59 + 47) > *(a1 + 160))
    {
      v123 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
      v59 = *(a1 + 168);
      if (!v123)
      {
        goto LABEL_55;
      }

      v60 = v59 + 47;
      if ((v59 + 47) > *(a1 + 160))
      {
        goto LABEL_94;
      }
    }

    *(a1 + 176) = v60;
LABEL_55:
    v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
    v62 = v61 + *(a1 + 184);
    *(a1 + 168) = v61 + 32;
    *(a1 + 27560) |= 0x10000000000uLL;
    *(v6 + 3016) |= 1u;
    *(*(a1 + 22496) + 1344) = v62;
    *(a1 + 22824) = *(*(a1 + 48) + 224) + *v56;
    v63 = *(a1 + 28112);
    *(v61 + 16) = *(a1 + 28128);
    *v61 = v63;
  }

  if (!*(*(a1 + 1912) + 520))
  {
    *(v6 + 3514) |= 2u;
  }

  if (*(*(*(a1 + 1872) + 848) + 16472))
  {
    IOGPUResourceListAddResource();
  }

  *(a1 + 27600) = 0;
  *(v6 + 3036) = 0;
  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::createScsParameters(&v128, a1, 3);
  *(a1 + 28320) = v128;
  *(a1 + 27560) |= 0x2000000000000000uLL;
  *(v6 + 3016) |= 1u;
  v64 = v129;
  *(*(a1 + 22496) + 1512) = v128;
  *(a1 + 22992) = v64;
  v65 = *(a1 + 168);
  v66 = v65 + 103;
  if ((v65 + 103) <= *(a1 + 160))
  {
LABEL_61:
    *(a1 + 176) = v66;
    goto LABEL_62;
  }

  v117 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
  v65 = *(a1 + 168);
  if (v117)
  {
    v66 = v65 + 103;
    if ((v65 + 103) > *(a1 + 160))
    {
      goto LABEL_94;
    }

    goto LABEL_61;
  }

LABEL_62:
  v67 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  v68 = v67 + *(a1 + 184);
  *(a1 + 28136) = v68;
  *(a1 + 168) = v67 + 88;
  *(a1 + 28144) = v67;
  *(*(a1 + 22496) + 1416) = v68;
  v69 = *(a1 + 28216);
  if (v69)
  {
    *(v67 + 80) = *(a1 + 28224) + *(v69 + *v56 + 8);
    IOGPUResourceListAddResource();
  }

  if (v127)
  {
    v70 = *(a1 + 2336);
    if (v70)
    {
      v71 = v70[2];
      AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::bindResources(v70);
      v75 = *(a1 + 2336);
      v76 = v75[43];
      v77 = v75[52];
      v78 = v75[46];
      v79 = *(a1 + 2104);
      v80 = *(a1 + 2096);
      if (v79 <= 1)
      {
        v79 = 1;
      }

      v81 = 4 * v79 * ((*(v71 + 4084) + 3) >> 2);
      v82 = v81 * v80.i32[0] * v80.i32[1];
      v83 = COERCE_DOUBLE(vand_s8(vneg_s32(vclz_s32(vadd_s32(v80, -1))), 0x1F0000001FLL));
      v84 = v81 * (1 << SLOBYTE(v83) << SBYTE4(v83));
      if (v82)
      {
        v85 = v84;
      }

      else
      {
        v85 = 0;
      }

      v86 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(v126, v77 + v76, *(v71 + 1308), v78, *(v6 + 3224), v85, 0, v83, COERCE_DOUBLE(0x1F0000001FLL), v72, v73, v74);
      v87 = *(*(a1 + 2336) + 608);
      if (v87)
      {
        if (((v86 | AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom(v126, v87)) & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      else if ((v86 & 1) == 0)
      {
LABEL_73:
        v88 = *(v71 + 2408);
        v89 = *(a1 + 2336);
        if (*(v89 + 24) == 1)
        {
          if (*(v89 + 136))
          {
            v90 = ((*(v89 + 120) != 0) << 56) | 0x400000000000000;
          }

          else
          {
            v90 = (*(v89 + 120) != 0) << 56;
          }

          if (*v89)
          {
            v91 = v90 | 0x4000000000000000;
          }

          else
          {
            v91 = v90;
          }

          v92 = ~v91;
        }

        else
        {
          v92 = -1;
        }

        v93 = *(v71 + 2400) & v92;
        while (1)
        {
          if (!v93)
          {
            if (!v88)
            {
              v103 = *(a1 + 22488);
              v104 = *(v103 + 17896);
              v105 = *(v71 + 2416) & *(v103 + 17888);
              v130 = *(v71 + 2424) & v104;
              for (j = v105; ; v105 = j)
              {
                if (v105)
                {
                  v106 = __clz(__rbit64(v105));
                  p_j = &j;
                  v108 = v106;
                }

                else
                {
                  v105 = v130;
                  if (!v130)
                  {
                    goto LABEL_101;
                  }

                  v106 = __clz(__rbit64(v130));
                  v108 = v106 | 0x40;
                  p_j = &v130;
                }

                *p_j = v105 & ~(1 << v106);
                v128 = *(v71 + 1376);
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::bindTextureResourceToCommand(a1, v108, (*(&v128 | (8 * (v108 > 0x3F))) >> v108) & 1);
              }
            }

            v93 = 0;
            v94 = __clz(__rbit64(v88));
            LODWORD(v95) = v94 | 0x40;
            v88 &= ~(1 << v94);
LABEL_85:
            v128 = *(v71 + 1360);
            v96 = *(&v128 | (8 * (v95 > 0x3F))) & (1 << v95);
            goto LABEL_86;
          }

          v95 = __clz(__rbit64(v93));
          v93 &= ~(1 << v95);
          if (v95 != 40)
          {
            goto LABEL_85;
          }

          v97 = *(a1 + 168);
          v98 = v97 + 47;
          if ((v97 + 47) > *(a1 + 160))
          {
            v102 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
            v97 = *(a1 + 168);
            if (!v102)
            {
              goto LABEL_91;
            }

            v98 = v97 + 47;
            if ((v97 + 47) > *(a1 + 160))
            {
              goto LABEL_94;
            }
          }

          *(a1 + 176) = v98;
LABEL_91:
          v99 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
          v100 = v99 + *(a1 + 184);
          *(a1 + 168) = v99 + 32;
          *(a1 + 27560) |= 0x10000000000uLL;
          *(v6 + 3016) |= 1u;
          *(*(a1 + 22496) + 1344) = v100;
          *(a1 + 22824) = *(*(a1 + 48) + 224) + *v56;
          v101 = *(a1 + 28112);
          *(v99 + 16) = *(a1 + 28128);
          *v99 = v101;
          v96 = *(v71 + 1360) & 0x10000000000;
          LODWORD(v95) = 40;
LABEL_86:
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::bindBufferResourceToCommand(a1, v95, v96 != 0);
        }
      }

      AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v126, *(a1 + 2328) + 336, 0);
      goto LABEL_73;
    }
  }

LABEL_101:
  if (*(a1 + 2292) == 1 && !*(v6 + 3048))
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(a1, v125, (a1 + 28192), (a1 + 28200), (a1 + 28208));
  }

  if (*(a1 + 27808))
  {
    if (*(a1 + 1896))
    {
      MTLResourceListAddResource();
    }

    IOGPUResourceListAddResource();
  }

  if (*(v6 + 3880) == 1)
  {
    *(a1 + 2060) |= 4u;
  }
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::beginVirtualSubstream(uint64_t a1)
{
  v2 = a1 + 24576;
  v3 = *(a1 + 27624) != 0;
  v4 = *(a1 + 27628);
  LODWORD(v30) = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, a1 + 24, 36, 0, v3, v4, &v30);
  v5 = *(v2 + 3048) != 0;
  v6 = *(v2 + 3052);
  LODWORD(v30) = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, 44, 0, v5, v6, &v30);
  if (!*(*(a1 + 1912) + 520))
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::restartComputePass(a1, 22);
    v20 = *(v2 + 3048) != 0;
    v21 = *(v2 + 3052);
    LODWORD(v30) = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, a1 + 24, 36, 0, v20, v21, &v30);
    v22 = *(v2 + 3048) != 0;
    v23 = *(v2 + 3052);
    LODWORD(v30) = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, 44, 0, v22, v23, &v30);
  }

  *(v2 + 3728) = *(v2 + 3052);
  *(v2 + 3732) = 1;
  if (*(v2 + 3048))
  {
    *(v2 + 3052) = 0;
    v7 = *(a1 + 776);
    *v7 = -1610612735;
    *(a1 + 776) = v7 + 1;
    if (*(a1 + 2306))
    {
      v8 = 1610617184;
    }

    else
    {
      v8 = 1610613088;
    }

    {
      v27 = v8;
      v8 = v27;
      if (v24)
      {
        v8 = v27;
      }
    }

    v9 = *(a1 + 776);
    *v9 = v8;
    *(v2 + 3052) = 1;
    *(v2 + 3060) = 0;
    v9[1] = -1610612734;
    *(a1 + 776) = v9 + 2;
    if (*(a1 + 2306))
    {
      v10 = 1610617184;
    }

    else
    {
      v10 = 1610613088;
    }

    {
      v28 = v10;
      v10 = v28;
      if (v25)
      {
        v10 = v28;
      }
    }

    v11 = *(a1 + 776);
    *v11 = v10;
    v11[1] = -1610612736;
    *(v2 + 3052) = -1;
    v11[2] = 1610613504;
    *(a1 + 776) = v11 + 3;
    *(a1 + 2306) = 0;
    ++*(v2 + 3064);
  }

  else if (*(a1 + 2292) == 1)
  {
    if (*(a1 + 2306))
    {
      v12 = 1610617184;
    }

    else
    {
      v12 = 1610613088;
    }

    {
      v29 = v12;
      v12 = v29;
      if (v26)
      {
        v12 = v29;
      }
    }

    v13 = *(a1 + 776);
    *v13 = v12;
    *(a1 + 776) = v13 + 1;
    *(a1 + 2306) = 0;
  }

  v14 = *(a1 + 1160);
  if (!v14)
  {
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, 0x22u);
    v14 = *(a1 + 1160);
  }

  v15 = *(a1 + 776);
  *v15 = __ROR8__(*(a1 + 1176) + v14, 32) & 0xFFFFFFFF0000FFFFLL | 0x20000000;
  *(a1 + 776) = v15 + 1;
  *(v2 + 3672) = 1;
  v30 = xmmword_29D2F0D30;
  v31 = xmmword_29D2F1C50;
  v32 = 0;
  v34 = 0;
  v35 = 0;
  __p = 0;
  v16 = *(a1 + 28288);
  if (v16 >= *(a1 + 28296))
  {
    v18 = std::vector<AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::VirtualSubstream,std::allocator<AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::VirtualSubstream>>::__emplace_back_slow_path<AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::VirtualSubstream>((a1 + 28280), &v30);
    v19 = __p;
    *(a1 + 28288) = v18;
    if (v19)
    {

      operator delete(v19);
    }
  }

  else
  {
    v17 = v31;
    *v16 = v30;
    *(v16 + 16) = v17;
    *(v16 + 32) = v32;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 40) = 0;
    *(a1 + 28288) = v16 + 64;
  }
}

void sub_29CD59B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 24576;
  if (*(a1 + 28248))
  {
    return;
  }

  if (*a4 && !**a4)
  {
    v11 = *a5;
    *&v12 = 0x6000000060000000;
    *(&v12 + 1) = 0x6000000060000000;
    *v11 = v12;
    *(v11 + 16) = v12;
    *(v11 + 32) = 0x6000000060000000;
  }

  v13 = *(a1 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(a1, *(*(*(a1 + 1872) + 848) + 17104));
  if (*(a1 + 2292) == 1)
  {
    v14 = 4608;
  }

  else
  {
    v14 = 48;
  }

  v15 = v14 | 0xF;
  v16 = *(a1 + 160);
  v17 = *(a1 + 168);
  v18 = v17 + (v14 | 0xF);
  if (v18 <= v16)
  {
LABEL_9:
    *(a1 + 176) = v18;
    goto LABEL_10;
  }

  v28 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
  v16 = *(a1 + 160);
  v17 = *(a1 + 168);
  if (v28)
  {
    v18 = v17 + v15;
    if (v17 + v15 > v16)
    {
      goto LABEL_27;
    }

    goto LABEL_9;
  }

LABEL_10:
  v19 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v19 + *(a1 + 184);
  v21 = v19 + v14;
  *(a1 + 168) = v19 + v14;
  *(a1 + 27560) |= 0x4000000000uLL;
  *(v5 + 3016) |= 1u;
  *(*(a1 + 22496) + 1328) = v20;
  v22 = MEMORY[0x29EDC5638];
  *(a1 + 22808) = *(*(a1 + 48) + 224) + *MEMORY[0x29EDC5638];
  *a3 = v19;
  v23 = v21 + 31;
  if (v21 + 31 <= v16)
  {
LABEL_11:
    *(a1 + 176) = v23;
    goto LABEL_12;
  }

  v29 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
  v21 = *(a1 + 168);
  if (v29)
  {
    v23 = v21 + 31;
    if (v21 + 31 <= *(a1 + 160))
    {
      goto LABEL_11;
    }

LABEL_27:
    abort();
  }

LABEL_12:
  v24 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v24 + *(a1 + 184);
  *(v5 + 3016) |= 1u;
  v26 = *v22;
  *a4 = v24;
  *v24 = 0;
  *(a1 + 168) = v24 + 8;
  *(a1 + 27560) |= 0x8000000000uLL;
  *(*(a1 + 22496) + 1336) = v25;
  *(a1 + 22816) = *(*(a1 + 48) + 224) + v26;
  v32 = xmmword_29D2F1C60;
  v33 = 1;
  v30 = xmmword_29D2F1C70;
  v31 = 1;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(a1, a2, &v32, &v30);
  v27 = a1 + 32 * a2;
  if (((1 << a2) & 0xFFF339E0480) != 0 && !*(v27 + 72))
  {
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, a2);
  }

  *a5 = *(v27 + 72) - 40;
  if (*(a1 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(a1, a2, 0, 0);
  }

  if (v13)
  {

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(a1, v13);
  }
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(uint64_t a1, uint64_t a2)
{
  *(a1 + 2336) = a2;
  *(a1 + 2308) = 0;
  AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((a1 + 28336), (a2 + 220));
  v3 = *(a1 + 2336);
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v4 + 56);
    v6 = *(v4 + 64);
    *(a1 + 26904) = v5;
    *(a1 + 27456) = v6;
    v7 = *(a1 + 22496);
    *(v7 + 1520) = v5;
    *(v7 + 1824) = v6;
    if (*(v4 + 80) == 1)
    {
      *(a1 + 23000) = *(v4 + 48);
      *(a1 + 27560) |= 0x4000000000000000uLL;
      *(a1 + 27592) |= 1u;
    }
  }

  else
  {
    v8 = *(a1 + 2312);
    *(a1 + 26904) = v8;
    *(a1 + 27456) = 0;
    v9 = *(a1 + 22496);
    *(v9 + 1520) = v8;
    *(v9 + 1824) = 0;
  }

  if ((*(v3[2] + 2404) & 0x20) != 0)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(a1, *(*(*(a1 + 1872) + 848) + 17072), 0, 0x25u, 0);
    v3 = *(a1 + 2336);
  }

  if (*(v3 + 25) == 1)
  {
    v10 = *(a1 + 2312);
    *(a1 + 2312) = 0;
    v11 = v3[15];
    if (v11)
    {
      v12 = *(v11 + 56);
      v13 = *(v11 + 64);
      *(a1 + 26856) = v12;
      *(a1 + 27408) = v13;
      v14 = *(a1 + 22496);
      v14[184] = v12;
      v14[222] = v13;
      if (*(v11 + 80) == 1)
      {
        *(a1 + 22952) = *(v11 + 48);
        *(a1 + 27560) |= 0x100000000000000uLL;
        *(a1 + 27592) |= 1u;
      }

      v15 = v3[17];
      if (v15)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 26856) = 0;
      *(a1 + 27408) = 0;
      v14 = *(a1 + 22496);
      v14[184] = 0;
      v14[222] = 0;
      v15 = v3[17];
      if (v15)
      {
LABEL_12:
        v16 = *(v15 + 56);
        v17 = *(v15 + 64);
        *(a1 + 26872) = v16;
        *(a1 + 27424) = v17;
        v14[186] = v16;
        v14[224] = v17;
        if (*(v15 + 80) == 1)
        {
          *(a1 + 22968) = *(v15 + 48);
          *(a1 + 27560) |= 0x400000000000000uLL;
          *(a1 + 27592) |= 1u;
        }

        goto LABEL_16;
      }
    }

    v18 = *(a1 + 2312);
    *(a1 + 26872) = v18;
    *(a1 + 27424) = 0;
    v14[186] = v18;
    v14[224] = 0;
LABEL_16:
    *(a1 + 2312) = v10;
  }
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(uint64_t a1, unsigned int a2, _DWORD *a3, void *a4)
{
  if (a4[1] * *a4 * a4[2] > *(*(a1 + 2336) + 456))
  {
    return;
  }

  v4 = *(a1 + 168);
  v5 = v4 + 24;
  if ((v4 + 24) > *(a1 + 160))
  {
    v29 = a3;
    v30 = a4;
    v31 = a2;
    v32 = a1;
    v33 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
    a1 = v32;
    v4 = *(v32 + 168);
    if (!v33)
    {
      a2 = v31;
      a4 = v30;
      a3 = v29;
      goto LABEL_4;
    }

    v5 = v4 + 24;
    a2 = v31;
    a4 = v30;
    a3 = v29;
    if ((v4 + 24) > *(v32 + 160))
    {
      abort();
    }
  }

  *(a1 + 176) = v5;
LABEL_4:
  v6 = *(a1 + 184) + v4;
  *(a1 + 168) = v4 + 24;
  v7 = *a3;
  v8 = a3[2];
  v9 = a3[4];
  *v4 = *a3;
  *(v4 + 4) = v8;
  *(v4 + 8) = v9;
  *(a1 + 26688) = v6;
  v10 = *(a1 + 22496);
  *(v10 + 1304) = v6;
  v11 = *(*(a1 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(a1 + 22784) = v11;
  *(a1 + 27560) |= 0x800000000uLL;
  *(a1 + 27592) |= 1u;
  *(v4 + 12) = 0x100000001;
  *(v4 + 20) = 1;
  *(a1 + 26696) = v6 + 12;
  *(v10 + 1312) = v6 + 12;
  *(a1 + 22792) = v11;
  *(a1 + 27560) |= 0x1000000000uLL;
  *(a1 + 27592) |= 1u;
  v12 = *a4;
  v13 = a4[1];
  v14 = *(a4 + 4);
  *(v10 + 28) = *a4;
  *(v10 + 32) = v13;
  *(v10 + 36) = v14;
  v15 = v13 * v12;
  *(v10 + 40) = v14 * v15;
  *(v10 + 42) = v15;
  if (v15 == 1)
  {
    v16 = 0;
    LOWORD(v17) = -1;
  }

  else
  {
    v18 = v15;
    v19 = v15 - 1;
    v20 = __clz((v15 - 1)) - 16;
    if (v18 == 1)
    {
      v21 = 16;
    }

    else
    {
      v21 = v20;
    }

    v16 = 15 - v21;
    v17 = ((1 << (v21 ^ 0x1F)) + v19) / v18 - 1;
  }

  *(v10 + 44) = v16;
  *(v10 + 46) = v17;
  if (v12 == 1)
  {
    v22 = 0;
    LOWORD(v23) = -1;
  }

  else
  {
    v24 = v12;
    v25 = v12 - 1;
    v26 = __clz((v12 - 1)) - 16;
    if (v24 == 1)
    {
      v27 = 16;
    }

    else
    {
      v27 = v26;
    }

    v22 = 15 - v27;
    v23 = ((1 << (v27 ^ 0x1F)) + v25) / v24 - 1;
  }

  *(v10 + 48) = v22;
  *(v10 + 50) = v23;
  *(v10 + 52) = v7;
  *(v10 + 56) = v8;
  *(v10 + 60) = v9;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v28 = *(a1 + 2336);

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::performEnqueueKernel(a1, a2, 0, v28, 3);
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = a1 + 24576;
  if ((a2 & 0xFFFFFFFE) == 0x16 && *(a1 + 2184))
  {
    v8 = a3;
    AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::patchCDMControlStreamAndReset(a1 + 2152, a1, *(a1 + 27672), *(a1 + 27680), *(a1 + 27688));
    a3 = v8;
  }

  if (*(v7 + 3672) == 1)
  {
    v9 = *(a1 + 28264);
    if (*(a1 + 28256) != v9)
    {
      *(v9 - 8) = 1;
      *(v9 - 7) = *(a1 + 2306);
      v10 = *(a1 + 28288);
      v11 = *(v10 - 32);
      v12 = *(v10 - 36) + 1;
      *(v10 - 36) = v12;
      if (*(v7 + 3732) < (v11 + v12))
      {
        v13 = *(v7 + 3048) != 0;
        v14 = *(v7 + 3052);
        v28 = 1;
        agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, 24, 0, v13, v14, &v28);
        ++*(v7 + 3732);
      }
    }
  }

  else if ((a2 - 22) <= 3)
  {
    if (*(a1 + 2306))
    {
      v15 = 1610617184;
    }

    else
    {
      v15 = 1610613088;
    }

    if (a3 ^ 1 | a4)
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 | 0x400;
    }

    {
    }

    v17 = *(v7 + 3037);
    v18 = *(v7 + 3048) != 0;
    v19 = *(v7 + 3052);
    v29 = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(a2, a1 + 24, 4, v17, v18, v19, &v29);
    v20 = a1 + 32 * a2;
    v22 = *(v20 + 72);
    v21 = (v20 + 72);
    *v22 = v16;
    *v21 = v22 + 1;
    if (a4)
    {
      v23 = *(v7 + 3037);
      v24 = *(v7 + 3048) != 0;
      v25 = *(v7 + 3052);
      v30 = 0;
      agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(a2, a1 + 24, 4, v23, v24, v25, &v30);
      v26 = *v21;
      *v26 = 1610614018;
      *v21 = v26 + 1;
    }

    v27 = *(v7 + 3264);
    if (*(v7 + 3260) < v27)
    {
      *(v7 + 3260) = v27;
    }

    *(v7 + 3264) = 0;
  }
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::performEnqueueKernel(uint64_t a1, unsigned int a2, int *a3, uint64_t a4, int a5)
{
  v293 = *MEMORY[0x29EDCA608];
  v9 = (a1 + 27560);
  v278 = a5;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::prepareForEnqueue(a1, 0);
  v261 = a2;
  if (v9[43].i8[0])
  {
    v10 = 33;
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 16);
  *(*(a1 + 2328) + 591) |= *(a4 + 345);
  v12 = &qword_2A17A1000;
  {
    goto LABEL_296;
  }

  while (1)
  {
    if (v12[150])
    {
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::performEnqueueKernel(eAGXDataBufferPools,unsigned long long,AGX::HAL300::ComputePipeline const*,unsigned int,unsigned long long *)::per_shader_extra_space = 0;
      }

      v13 = *(a1 + 2328);
      if (AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::performEnqueueKernel(eAGXDataBufferPools,unsigned long long,AGX::HAL300::ComputePipeline const*,unsigned int,unsigned long long *)::per_shader_extra_space)
      {
        *(v13 + 168) = (*(v11 + 1528) - AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::performEnqueueKernel(eAGXDataBufferPools,unsigned long long,AGX::HAL300::ComputePipeline const*,unsigned int,unsigned long long *)::per_shader_extra_space + *(v11 + 1824) + 4095) & 0xFFFFFFFFFFFFF000;
      }
    }

    else
    {
      v13 = *(a1 + 2328);
    }

    *(v13 + 176) = *(a1 + 2240);
    *(v13 + 184) = *(a1 + 2248);
    v14 = 4 * *(v11 + 3912);
    v9[15].i32[0] = v14;
    if (*(v11 + 3916))
    {
      v15 = 0;
      v16 = *(a1 + 22496);
      v17 = v16 + 1896;
      v18 = v11 + 3920;
      v19 = v16 + 2036;
      do
      {
        *(v17 + 4 * *(v18 + 4 * v15)) = v14 | 0x80000000;
        v14 = v9[15].i32[0] + *(v19 + 4 * *(v18 + 4 * v15));
        v9[15].i32[0] = v14;
        ++v15;
      }

      while (v15 < *(v11 + 3916));
    }

    if (*(a4 + 360))
    {
      v9[15].i32[0] = v14 + *(*(a1 + 22496) + 28) * *(a4 + 360) * *(*(a1 + 22496) + 32) * *(*(a1 + 22496) + 36) + (*(*(a4 + 16) + 4068) >> 5) * *(a4 + 364);
    }

    if (!a3)
    {
      v20 = *(a4 + 16);
      if (*(v20 + 4088) == 1 && (*(a4 + 346) & 1) == 0 && !*(v20 + 3916) && !*(v20 + 3912))
      {
        AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::directTGSizeOptimization(a1 + 2072, v11, *(a1 + 22496), &v278);
      }
    }

    v21 = *(a1 + 2344);
    if (v11 != v21)
    {
      if (v21)
      {
        v22 = vmvnq_s8(v21[150]);
        v23 = vmvnq_s8(v21[85]);
        v24 = vmvnq_s8(v21[151]);
        v25 = vmvnq_s8(v21[86]);
      }

      else
      {
        v25.i64[0] = -1;
        v25.i64[1] = -1;
        v24.i64[0] = -1;
        v24.i64[1] = -1;
        v23.i64[0] = -1;
        v23.i64[1] = -1;
        v22.i64[0] = -1;
        v22.i64[1] = -1;
      }

      *(a1 + 2344) = v11;
      v26 = vorrq_s8(vandq_s8(*(v11 + 1360), v23), vandq_s8(*(v11 + 2400), v22));
      if (*&v26 != 0)
      {
        *v9 = vorrq_s8(*v9, v26);
        v9[2].i32[0] |= 1u;
      }

      v27 = vorrq_s8(vandq_s8(*(v11 + 1376), v25), vandq_s8(*(v11 + 2416), v24));
      if (*&v27 != 0)
      {
        v9[1] = vorrq_s8(v9[1], v27);
        v9[2].i32[0] |= 2u;
      }

      AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::bindResources(*(a1 + 2336));
      v32 = *(a1 + 2336);
      v33 = *(v32 + 208) + *(v32 + 172);
      v34 = *(v32 + 16);
      v35 = *(v34 + 1308);
      v36 = *(a1 + 22496);
      if (v36[14] * v36[13] * v36[15])
      {
        v37 = v36[8] * v36[7] * v36[9];
      }

      else
      {
        v37 = 0;
      }

      v38 = (*(v34 + 4084) + 3) >> 2;
      v39 = *(a1 + 2104);
      v40 = *(a1 + 2096);
      if (v39 <= 1)
      {
        v39 = 1;
      }

      v41 = 4 * v39 * v38;
      if (v41 * v40.i32[0] * v40.i32[1])
      {
        v28 = 0x1F0000001FLL;
        v40 = vand_s8(vneg_s32(vclz_s32(vadd_s32(v40, -1))), 0x1F0000001FLL);
        v42 = v41 * (1 << v40.i8[0] << v40.i8[4]);
      }

      else
      {
        v42 = 0;
      }

      v43 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(a1 + 27696, *(v32 + 208) + *(v32 + 172), v35, *(v32 + 184), v9[15].u32[0], v42, v37, *&v40, *&v28, v29, v30, v31);
      v44 = *(v32 + 608);
      if (v44)
      {
        if (((v43 | AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((a1 + 27696), v44)) & 1) == 0)
        {
LABEL_38:
          if (!v33)
          {
            goto LABEL_39;
          }

LABEL_285:
          if (**MEMORY[0x29EDC56B0])
          {
            IOGPUDeviceTraceEvent();
          }

          goto LABEL_39;
        }
      }

      else if ((v43 & 1) == 0)
      {
        goto LABEL_38;
      }

      *(a1 + 28232) |= 0x10000000000000uLL;
      AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 27696, *(a1 + 2328) + 336, 0);
      if (!v33)
      {
        goto LABEL_39;
      }

      goto LABEL_285;
    }

LABEL_39:
    v45 = v278;
    v46 = *(a1 + 2328);
    if (v278)
    {
      v47 = 2;
LABEL_41:
      *(v46 + 608) = v47;
      goto LABEL_43;
    }

    if (!*(v46 + 608))
    {
      if (*(v11 + 2480) == 0)
      {
        v47 = *(v11 + 2112);
      }

      else
      {
        v47 = 1;
      }

      goto LABEL_41;
    }

LABEL_43:
    v48 = v9[2].i32[0];
    v277 = a3;
    if (v48)
    {
      v49 = *(a1 + 27568) & *(v11 + 2408);
      v50 = *(a1 + 2336);
      if (*(v50 + 24) == 1)
      {
        if (*(v50 + 136))
        {
          v51 = ((*(v50 + 120) != 0) << 56) | 0x400000000000000;
        }

        else
        {
          v51 = (*(v50 + 120) != 0) << 56;
        }

        if (*v50)
        {
          v52 = v51 | 0x4000000000000000;
        }

        else
        {
          v52 = v51;
        }

        v53 = ~v52;
      }

      else
      {
        v53 = -1;
      }

      v54 = *(a1 + 27560) & *(v11 + 2400) & v53;
      v287 = v54;
      v280 = v49;
      *v282 = *(v11 + 1360);
      while (1)
      {
        if (v54)
        {
          v55 = __clz(__rbit64(v54));
          v56 = &v287;
          v57 = v55;
        }

        else
        {
          v54 = v280;
          if (!v280)
          {
            v48 = v9[2].i32[0];
            break;
          }

          v55 = __clz(__rbit64(v280));
          v57 = v55 | 0x40;
          v56 = &v280;
        }

        *v56 = (v54 & ~(1 << v55));
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::bindBufferResourceToCommand(a1, v57, (*(v282 | (8 * (v57 > 0x3F))) >> v57) & 1);
        v54 = v287;
      }
    }

    v271 = v45;
    v268 = v10;
    if ((v48 & 2) != 0)
    {
      v58 = *(a1 + 22488);
      if (v58)
      {
        v59 = *(v11 + 2416) & *(a1 + 27576) & v58[2236];
        v60 = *(v11 + 2424) & *(a1 + 27584) & v58[2237];
        v287 = v59;
        v280 = v60;
        v61 = *(v11 + 1376);
        v62 = *(v11 + 1384);
        *v282 = v61;
        *&v282[8] = v62;
        v275 = v58[2238];
        v63 = v58[2239];
        while (1)
        {
          if (v59)
          {
            v64 = __clz(__rbit64(v59));
            v65 = &v287;
            v66 = v64;
          }

          else
          {
            v59 = v280;
            if (!v280)
            {
              *(a1 + 2306) |= (*(*(a1 + 22488) + 17920) & v61 | *(*(a1 + 22488) + 17928) & v62) != 0;
              *(*(a1 + 2328) + 586) |= (v275 & v61 | v63 & v62) != 0;
              a3 = v277;
              break;
            }

            v64 = __clz(__rbit64(v280));
            v66 = v64 | 0x40;
            v65 = &v280;
          }

          *v65 = (v59 & ~(1 << v64));
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::bindTextureResourceToCommand(a1, v66, (*&v282[8 * (v66 > 0x3F)] >> v66) & 1);
          v59 = v287;
        }
      }
    }

    *(a1 + 27592) = 0;
    *(a1 + 27560) = 0u;
    *(a1 + 27576) = 0u;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::reserveEnqueueDatabufferSpace(a1, v10, a3 != 0);
    if (!*(*(a1 + 1912) + 520))
    {
      if (*(a1 + 28080) || (AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::restartComputePass(a1, v261), v9[33].i8[2] &= ~1u, AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::reserveEnqueueDatabufferSpace(a1, v10, a3 != 0), !*(*(a1 + 1912) + 520)))
      {
        v9[33].i8[2] |= 2u;
      }
    }

    v67 = *(a4 + 348);
    v68 = v9[17].i8[0] ^ 1;
    v69 = v67 & (*(a1 + 1922) | v68);
    *(a1 + 2306) |= v67 & (*(a1 + 1923) | v68);
    *(*(a1 + 2328) + 586) |= v69;
    if (v45 != 2 && (*(v11 + 4080) & 1) == 0 && ((*(*(a1 + 22496) + 32) * *(*(a1 + 22496) + 28) * *(*(a1 + 22496) + 36)) & 0x1F) != 0)
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    GPUAddress = AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, v10);
    v71 = *(a1 + 1864);
    if (v71 == 7)
    {
      v73 = v10 == 31;
      v72 = 43;
    }

    else if (v71 == 3)
    {
      v73 = v10 == 31;
      v72 = 40;
    }

    else
    {
      v72 = v10;
      if (v71 != 1)
      {
        goto LABEL_81;
      }

      v73 = v10 == 31;
      v72 = 37;
    }

    if (!v73)
    {
      v72 = v10;
    }

LABEL_81:
    if (((1 << v72) & 0xFFF339E0480) != 0 && !*(a1 + 32 * v72 + 72))
    {
      v247 = GPUAddress;
      AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, v72);
      GPUAddress = v247;
      v71 = *(a1 + 1864);
    }

    v264 = GPUAddress;
    if (v71 == 7)
    {
      v75 = v10 == 31;
      v74 = 43;
    }

    else if (v71 == 3)
    {
      v75 = v10 == 31;
      v74 = 40;
    }

    else
    {
      v74 = v10;
      if (v71 != 1)
      {
        goto LABEL_92;
      }

      v75 = v10 == 31;
      v74 = 37;
    }

    if (!v75)
    {
      v74 = v10;
    }

LABEL_92:
    v276 = a1 + 64;
    v76 = a1 + 64 + 32 * v74;
    v77 = v9[15].i32[0];
    v78 = (*(v11 + 4084) + 3) >> 2;
    v79 = *(a1 + 2104);
    v80 = *(a1 + 2096);
    if (v79 <= 1)
    {
      v81 = 1;
    }

    else
    {
      v81 = v79;
    }

    v82 = 4 * v81 * v78;
    v83 = *(a1 + 2096);
    v84 = HIDWORD(*(a1 + 2096));
    v85 = v82 * v80.i32[0] * v80.i32[1];
    if (v85)
    {
      v86 = vand_s8(vneg_s32(vclz_s32(vadd_s32(v80, -1))), 0x1F0000001FLL);
      v85 = v82 * (1 << v86.i8[0] << v86.i8[4]);
    }

    v12 = *(a1 + 22488);
    v269 = v9[33].u16[0];
    v263 = *(v76 + 8);
    *(a1 + 4244) = v85;
    *(a1 + 4248) = v77;
    v287 = 0;
    v288 = 0;
    v290[0] = 0;
    v289 = 0;
    *&v290[1] = 0x3000000A5;
    v292 = 0;
    v291 = 0;
    if (v84 * v83 * v82 && (v87 = 1 << -__clz(v83 - 1), v88 = -__clz(v84 - 1), (v87 << v88) * v82))
    {
      v291 = AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::SpecLM::encodeImageBlockData(v78, v81, v87, 1 << (v88 & 0x1F));
      v292 = v89;
      v90 = 0x100000000;
    }

    else
    {
      v90 = 0;
    }

    a4 = a1 + 2360;
    if (v77)
    {
      ++v90;
    }

    *&v290[3] = v90 | ((v77 << 16) + 4128768) & 0xFFC00000;
    AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::AGX3EncodedInstr<AGXIotoInstruction_SPECLM_0>::AGX3EncodedInstr(&v286, &v287);
    memset(v282, 0, sizeof(v282));
    v283 = 0;
    v284 = 0;
    v285 = 0;
    v91 = *(v11 + 624);
    if (v91)
    {
      v92 = 3;
      if (!v71)
      {
        v92 = 10;
      }

      switch(v71)
      {
        case 7:
          v92 = 3;
          break;
        case 3:
          v92 = 3;
          break;
        case 1:
          v92 = 3;
          break;
      }

      v95 = v276 + 32 * v92;
      v94 = (*(v95 + 8) + 31) & 0xFFFFFFFFFFFFFFE0;
      v93 = v94 + *(v95 + 24);
      *(v95 + 8) = v94 + v91;
    }

    else
    {
      v93 = 0;
      v94 = 0;
    }

    v270 = (a1 + 2388);
    v96 = ((*(a1 + 232) + 63) & 0xFFFFFFFFFFFFFFC0);
    v97 = *(a1 + 248);
    *(a1 + 232) = &v96[*(*(v11 + 2392) + 8) - **(v11 + 2392)];
    v262 = v286;
    v98 = *(v11 + 1128);
    v99 = *(v11 + 1120);
    v100 = v98 - v99;
    v73 = v98 == v99;
    v101 = *(v11 + 1016);
    v102 = v101 & 1;
    if (v73)
    {
      v102 = 0;
    }

    v266 = v93;
    if (!v91)
    {
      goto LABEL_198;
    }

    v272 = *(v11 + 1320);
    v257 = *(v11 + 736);
    v103 = *(v11 + 660);
    v104 = *(v11 + 1024);
    v105 = *(v11 + 1028);
    v265 = *(v11 + 656);
    v106 = v265 + ((*(v11 + 872) - *(v11 + 864)) >> 2);
    v107 = *(v11 + 1353);
    v256 = *(v11 + 1352);
    if (*(v11 + 1352))
    {
      *(a1 + 3736) = vaddw_u32(vdupq_n_s64(v93), *(v11 + 628));
    }

    v258 = v107;
    if (v107)
    {
      *(a1 + 3768) = v93 + *(v11 + 648);
    }

    v260 = 8 * v106;
    v108 = v102 + v101;
    v109 = v272;
    if (v105 + v104)
    {
      *(a1 + 3888) = v260 + v93 + 4 * (v108 + ((v100 >> 1) & 0xFFFFFFFE));
    }

    v259 = v108;
    if (v265 == v272)
    {
      v110 = 0;
      v111 = v100 >> 2;
      if (!v272)
      {
        goto LABEL_174;
      }

LABEL_170:
      if (v109 >= 4)
      {
        v141 = *(v11 + 2920);
        v142 = v272 >> 2;
        v143 = (v94 + v110);
        do
        {
          v144 = *v141;
          v141 += 4;
          *v143 = v144;
          v143 += 4;
          --v142;
        }

        while (v142);
      }

      v110 += 8 * v272;
      goto LABEL_174;
    }

    if (v12)
    {
      v112 = *(v11 + 712);
      v113 = *(v11 + 720);
      if (v112 != v113)
      {
        v114 = v94;
        do
        {
          v115 = *v112++;
          *v114++ = *(a4 + 8 * v115);
        }

        while (v112 != v113);
      }

      if (*(v11 + 1160))
      {
        goto LABEL_150;
      }
    }

    else
    {
      v251 = v104;
      v252 = v105;
      v253 = v100;
      v254 = v97;
      v280 = a1 + 2360;
      v116 = &unk_2A23F7078;
      v287 = &unk_2A23F7078;
      v288 = &v280;
      *v290 = &v287;
      a3 = *(v11 + 688);
      v10 = *(v11 + 696);
      v250 = v103;
      if (a3 != v10)
      {
        v117 = 0;
        while (1)
        {
          LODWORD(v279) = *a3;
          if (!*v290)
          {
            goto LABEL_295;
          }

          v119 = (*(**v290 + 48))(*v290, &v279);
          v120 = *(a3 + 1);
          v121 = *(a3 + 2);
          if (v120 == v121)
          {
            v118 = v117;
          }

          else
          {
            do
            {
              v122 = *v120++;
              v118 = (v117 + 1);
              *(v94 + 8 * v117) = *(v119 + 8 * v122);
              LODWORD(v117) = v117 + 1;
            }

            while (v120 != v121);
          }

          a3 += 8;
          v117 = v118;
          if (a3 == v10)
          {
            v123 = *v290;
            if (*v290 == &v287)
            {
              v116 = **v290;
              v93 = v266;
              v10 = v268;
              v97 = v254;
              goto LABEL_148;
            }

            v93 = v266;
            v10 = v268;
            v97 = v254;
            if (*v290)
            {
              (*(**v290 + 40))();
            }

            goto LABEL_149;
          }
        }
      }

      v123 = &v287;
      v10 = v268;
      v97 = v254;
LABEL_148:
      v116[4](v123);
LABEL_149:
      v100 = v253;
      v104 = v251;
      v105 = v252;
      v103 = v250;
      if (*(v11 + 1160))
      {
LABEL_150:
        v124 = *(v11 + 1144);
        if (v124 != (v11 + 1152))
        {
          do
          {
            *(v94 + 4 * *(v124 + 7)) |= *(v124 + 8);
            v133 = v124[1];
            if (v133)
            {
              do
              {
                v134 = v133;
                v133 = *v133;
              }

              while (v133);
            }

            else
            {
              do
              {
                v134 = v124[2];
                v73 = *v134 == v124;
                v124 = v134;
              }

              while (!v73);
            }

            v124 = v134;
          }

          while (v134 != (v11 + 1152));
        }
      }
    }

    v125 = (v257 + 3) & 0xFFFFFFFC;
    if (v256)
    {
      v126 = *(v11 + 1312);
      if (v126 >= 4)
      {
        v127 = v126 >> 2;
        v128 = *(v11 + 752);
        v129 = (v94 + 8 * v125);
        do
        {
          v130 = *v128;
          v128 += 4;
          v131 = &v12[v130 + 62];
          v132 = *(v131 + 1);
          *v129 = *v131;
          v129[1] = v132;
          v129 += 2;
          --v127;
        }

        while (v127);
      }

      v125 += v126;
    }

    else
    {
      v126 = 0;
    }

    if (v258)
    {
      v135 = *(v11 + 1316);
      v136 = (v94 + 8 * v125);
      v137 = v12 + 2110;
      if (*(v11 + 2192) == 1)
      {
        if (v135)
        {
          v248 = (*(v11 + 752) + 4 * v126);
          do
          {
            v249 = *v248++;
            *v136++ = v137[v249];
            --v135;
          }

          while (v135);
        }
      }

      else if (v135 >= 4)
      {
        v138 = v135 >> 2;
        v139 = (*(v11 + 752) + 4 * v126);
        do
        {
          v140 = *v139;
          v139 += 4;
          *v136 = v137[v140];
          v136 += 4;
          --v138;
        }

        while (v138);
      }
    }

    v110 = 8 * (v265 - v272);
    v109 = v272;
    v111 = v100 >> 2;
    if (v272)
    {
      goto LABEL_170;
    }

LABEL_174:
    if (v103)
    {
      *(a1 + 2432) = v93 + v110 + 8;
      v145 = *(v11 + 824);
      v146 = *(v11 + 832);
      if (v145 != v146)
      {
        v147 = (v94 + v110);
        do
        {
          v148 = *v145++;
          *v147++ = *(a4 + 4 * v148);
        }

        while (v145 != v146);
      }

      v110 += 4 * v103;
    }

    if (v111)
    {
      v149 = v260 + 4 * v259;
      v150 = (v94 + (v149 & 0xFFFFFFFC));
      v151 = *(v11 + 1120);
      do
      {
        v152 = *v151++;
        *v150++ = v12[v152 + 2110];
        LODWORD(v111) = v111 - 1;
      }

      while (v111);
      v110 = v149 + 8 * (v100 >> 2);
    }

    if (v105 == -v104)
    {
      goto LABEL_198;
    }

    v255 = v97;
    v153 = (v94 + v110);
    v154 = 4 * *(v11 + 1024);
    v273 = v153;
    memcpy(v153, v12 + 4 * *(v11 + 1020), v154);
    v279 = a1 + 2360;
    v280 = v12;
    v155 = &unk_2A23F7198;
    v287 = &unk_2A23F7198;
    v288 = &v279;
    v289 = &v280;
    *v290 = &v287;
    a3 = *(v11 + 1056);
    v156 = *(v11 + 1064);
    if (a3 == v156)
    {
      break;
    }

    v10 = 0;
    v157 = v273 + v154;
    while (1)
    {
      v281 = *a3;
      if (!*v290)
      {
        break;
      }

      v159 = (*(**v290 + 48))(*v290, &v281);
      v160 = *(a3 + 1);
      v161 = *(a3 + 2);
      if (v160 == v161)
      {
        v158 = v10;
      }

      else
      {
        do
        {
          v162 = *v160++;
          v158 = (v10 + 1);
          *(v157 + 4 * v10) = *(v159 + 4 * v162);
          LODWORD(v10) = v10 + 1;
        }

        while (v160 != v161);
      }

      a3 += 8;
      v10 = v158;
      if (a3 == v156)
      {
        v163 = *v290;
        if (*v290 == &v287)
        {
          v155 = **v290;
          v10 = v268;
          v97 = v255;
          goto LABEL_197;
        }

        v10 = v268;
        v97 = v255;
        if (*v290)
        {
          (*(**v290 + 40))();
        }

        goto LABEL_198;
      }
    }

LABEL_295:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_296:
    {
      *(v12 + 1200) = 0;
    }
  }

  v163 = &v287;
  v97 = v255;
LABEL_197:
  v155[4](v163);
LABEL_198:
  v164 = *(v11 + 2392);
  memcpy(v96, *v164, *(v164 + 8) - *v164);
  if (*(v164 + 272) == 1)
  {
    v165.i64[0] = v266;
    v165.i64[1] = v266 >> 5;
    *&v96[*(v164 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v96[*(v164 + 276)], vshlq_u8(vqtbl1q_s8(v165, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  if (v12)
  {
    v166 = *(v164 + 224);
    for (i = *(v164 + 232); v166 != i; v166 += 3)
    {
      v168.i64[0] = v12[v166[1]] + *v166;
      v168.i64[1] = v168.i64[0] >> 5;
      *&v96[v166[2]] = vbslq_s8(xmmword_29D2F17C0, *&v96[v166[2]], vshlq_u8(vqtbl1q_s8(v168, xmmword_29D2F17A0), xmmword_29D2F17B0));
    }
  }

  v169 = *(v164 + 248);
  for (j = *(v164 + 256); v169 != j; v169 += 3)
  {
    v171.i64[0] = *(a4 + 8 * v169[1]) + *v169;
    v171.i64[1] = v171.i64[0] >> 5;
    *&v96[v169[2]] = vbslq_s8(xmmword_29D2F17C0, *&v96[v169[2]], vshlq_u8(vqtbl1q_s8(v171, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  if (!*(v164 + 312))
  {
    *&v96[*(v164 + 316)] = v262;
  }

  v172 = &v96[v97];
  v173 = *(a1 + 2072);
  if (v173)
  {
    v176 = v164;
    v175 = *v164;
    v174 = *(v176 + 8);
    v177 = *(v11 + 2800);
    LODWORD(v178) = *(v173 + 2);
    v179 = v178 + 1;
    if (*(v173 + 3) >= (v178 + 1))
    {
      v182 = *v173;
    }

    else
    {
      v267 = v174;
      v274 = *(v11 + 2800);
      v180 = -__clz(v178);
      v181 = malloc_type_malloc(40 << (v180 & 0x1F), 0x10800400D7C94D2uLL);
      v182 = v181;
      v183 = 1 << v180;
      v178 = *(v173 + 2);
      if (v178)
      {
        memcpy(v181, *v173, 40 * v178);
        free(*v173);
        LODWORD(v178) = *(v173 + 2);
      }

      v177 = v274;
      *(v173 + 3) = v183;
      *v173 = v182;
      LODWORD(v174) = v267;
      v10 = v268;
    }

    v184 = &v182[40 * v178];
    *v184 = 8;
    *(v184 + 1) = v172;
    *(v184 + 2) = v96;
    *(v184 + 3) = (v174 - v175);
    *(v184 + 8) = v177;
    *(v173 + 2) = v179;
  }

  if (v277)
  {
    if (v271 == 2)
    {
      if ((v269 - 1) > 2u)
      {
        v185 = 0;
      }

      else
      {
        v185 = dword_29D2F4558[(v269 - 1)];
      }

      v198 = *(v11 + 3844);
      v199 = (v172 >> 16) & 0xFFC00000 | *(v11 + 3848) & 0x3FFFFF;
      v200 = WORD2(v277) | (*(v11 + 3862) << 16);
      if ((v269 & 0xFFFFFFFFFFFFFCFFLL) == 3)
      {
        v201 = *(&unk_29D2F2740 + ((v269 >> 6) & 0x3FC)) & 7;
      }

      else
      {
        v201 = 0;
      }

      v206 = v201 | v185 | *(v11 + 3856) & 0xFFFFFFC0;
      ++*(a1 + 1940);
      v207 = v276 + 32 * v10;
      v208 = *(v207 + 8);
      *v208 = v198;
      v208[1] = v199;
      v208[2] = v172 >> 6;
      v208[3] = v206;
      v208[4] = v200;
      v208[5] = v277;
      *(v207 + 8) = v208 + 6;
    }

    else
    {
      v190 = *v270 & 0x7FF;
      v191 = *(a1 + 2392) & 0x7FF;
      v192 = *(a1 + 2396) & 0x7FF;
      if ((v269 - 1) > 2u)
      {
        v193 = 0;
      }

      else
      {
        v193 = dword_29D2F4558[(v269 - 1)];
      }

      v202 = *(v11 + 3808);
      v203 = (v172 >> 16) & 0xFFC00000 | *(v11 + 3812) & 0x3FFFFF;
      v204 = WORD2(v277) | (*(v11 + 3826) << 16);
      if ((v269 & 0xFFFFFFFFFFFFFCFFLL) == 3)
      {
        v205 = *(&unk_29D2F2740 + ((v269 >> 6) & 0x3FC)) & 7;
      }

      else
      {
        v205 = 0;
      }

      v209 = v205 | v193 | *(v11 + 3820) & 0xFFFFFFC0;
      ++*(a1 + 1940);
      v210 = v276 + 32 * v10;
      v211 = *(v210 + 8);
      *v211 = v202;
      v211[1] = v203;
      v211[2] = v172 >> 6;
      v211[3] = v209;
      v211[4] = v204;
      v211[5] = v277;
      v211[6] = v190;
      v211[7] = v191;
      v211[8] = v192;
      *(v210 + 8) = v211 + 9;
    }
  }

  else if (v271 == 3)
  {
    v186 = *v270 & 0x7FF;
    v187 = *(a1 + 2392) & 0x7FF;
    v188 = *(a1 + 2396) & 0x7FF;
    if ((v269 - 1) > 2u)
    {
      v189 = 0;
    }

    else
    {
      v189 = dword_29D2F4558[(v269 - 1)];
    }

    v212 = *(v11 + 3768);
    v213 = *(a1 + 2412);
    v214 = *(a1 + 2416);
    v215 = (v172 >> 16) & 0xFFC00000 | *(v11 + 3772) & 0x3FFFFF;
    v216 = *(a1 + 2420);
    if ((v269 & 0xFFFFFFFFFFFFFCFFLL) == 3)
    {
      v217 = *(&unk_29D2F2740 + ((v269 >> 6) & 0x3FC)) & 7;
    }

    else
    {
      v217 = 0;
    }

    v224 = v217 | v189 | *(v11 + 3780) & 0xFFFFFFC0;
    ++*(a1 + 1940);
    v225 = v276 + 32 * v10;
    v226 = *(v225 + 8);
    *v226 = v212;
    v226[1] = v215;
    v226[2] = v172 >> 6;
    v226[3] = v224;
    v226[4] = v213;
    v226[5] = v214;
    v226[6] = v216;
    v226[7] = v186;
    v226[8] = v187;
    v226[9] = v188;
    *(v225 + 8) = v226 + 10;
  }

  else
  {
    v194 = *(a1 + 2392);
    v195 = *v270 & 0x7FF;
    v196 = *(a1 + 2396) & 0x7FF;
    if ((v269 - 1) > 2u)
    {
      v197 = 0x40000000;
    }

    else
    {
      v197 = dword_29D2F4558[(v269 - 1)] | 0x40000000;
    }

    v218 = *(v11 + 3728);
    v219 = (v172 >> 16) & 0xFFC00000 | *(v11 + 3732) & 0x3FFFFF;
    v220 = *v270 * *(a1 + 2376);
    v221 = v194 * *(a1 + 2380);
    v222 = *(a1 + 2396) * *(a1 + 2384);
    if ((v269 & 0xFFFFFFFFFFFFFCFFLL) == 3)
    {
      v223 = *(&unk_29D2F2740 + ((v269 >> 6) & 0x3FC)) & 7;
    }

    else
    {
      v223 = 0;
    }

    v227 = v223 | v197;
    ++*(a1 + 1940);
    v228 = v276 + 32 * v10;
    v229 = *(v228 + 8);
    *v229 = v218;
    v229[1] = v219;
    v229[2] = v172 >> 6;
    v229[3] = v227;
    v229[4] = v220;
    v229[5] = v221;
    v229[6] = v222;
    v229[7] = v195;
    v229[8] = v194 & 0x7FF;
    v229[9] = v196;
    *(v228 + 8) = v229 + 10;
  }

  if (**MEMORY[0x29EDC56B0] && *(v11 + 1348) == 1 && **MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  ++v9[17].i32[2];
  if (v9[43].i8[0] == 1)
  {
    v230 = AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, v10) - v264;
    v231 = *(a1 + 28264);
    v232 = *(a1 + 28272);
    if (v231 >= v232)
    {
      v234 = *(a1 + 28256);
      v235 = v231 - v234;
      v236 = (v231 - v234) >> 5;
      v237 = v236 + 1;
      if ((v236 + 1) >> 59)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v238 = v232 - v234;
      if (v238 >> 4 > v237)
      {
        v237 = v238 >> 4;
      }

      if (v238 >= 0x7FFFFFFFFFFFFFE0)
      {
        v239 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v239 = v237;
      }

      if (v239)
      {
        if (!(v239 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v240 = 32 * v236;
      *v240 = v263;
      *(v240 + 8) = v264;
      *(v240 + 16) = v230;
      *(v240 + 24) = 0;
      v233 = 32 * v236 + 32;
      memcpy(0, v234, v235);
      *(a1 + 28256) = 0;
      *(a1 + 28264) = v233;
      *(a1 + 28272) = 0;
      if (v234)
      {
        operator delete(v234);
      }
    }

    else
    {
      *v231 = v263;
      *(v231 + 8) = v264;
      *(v231 + 16) = v230;
      v233 = v231 + 32;
      *(v231 + 24) = 0;
    }

    *(a1 + 28264) = v233;
    v241 = *(a1 + 28288);
    if (*(v241 - 64) == -1)
    {
      *(v241 - 64) = ((v233 - *(a1 + 28256)) >> 5) - 1;
    }

    ++*(v241 - 60);
  }

  if (!*(a1 + 2292))
  {
    if (*(a1 + 2184))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(a1, v261, 0, 0);
    }

    else if (v9[43].i8[0] == 1)
    {
      v242 = *(a1 + 28264);
      if (*(a1 + 28256) != v242)
      {
        *(v242 - 8) = 1;
        *(v242 - 7) = *(a1 + 2306);
      }
    }

    else if (v261 - 22 <= 3)
    {
      if (*(a1 + 2306))
      {
        v243 = 1610617184;
      }

      else
      {
        v243 = 1610613088;
      }

      {
      }

      v244 = v276 + 32 * v261;
      v245 = *(v244 + 8);
      *v245 = v243;
      *(v244 + 8) = v245 + 1;
      v246 = v9[17].u32[2];
      if (v9[17].i32[1] < v246)
      {
        v9[17].i32[1] = v246;
      }

      v9[17].i32[2] = 0;
    }

    *(a1 + 2306) = 0;
  }
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::prepareForEnqueue(uint64_t result, char a2)
{
  v2 = result;
  v3 = (result + 24576);
  *(result + 28090) &= ~1u;
  v4 = *(*(result + 1872) + 848);
  os_unfair_lock_opaque = v4[1804]._os_unfair_lock_opaque;
  v6 = *(result + 27600);
  v7 = *(result + 27612);
  if ((a2 & 1) == 0 && (*(*(*(result + 2336) + 16) + 2408) & 8) != 0)
  {
    v8 = *(result + 22496);
    v9 = *(v8 + 1568);
    v10 = *(v8 + 1304);
    v11 = *(v8 + 1344);
    v12 = *(result + 168);
    v13 = v12 + 47;
    if ((v12 + 47) > *(result + 160))
    {
      v30 = v10;
      v33 = v11;
      v34 = v9;
      v31 = v4[1804]._os_unfair_lock_opaque;
      v32 = *(result + 27600);
      v29 = a2;
      result = AGX::DataBufferAllocator<44ul>::growNoInline(result + 24, 3, 0);
      v12 = *(v2 + 168);
      if (!result)
      {
        a2 = v29;
        os_unfair_lock_opaque = v31;
        v6 = v32;
        v11 = v33;
        v9 = v34;
        v10 = v30;
        goto LABEL_5;
      }

      v13 = v12 + 47;
      a2 = v29;
      os_unfair_lock_opaque = v31;
      v6 = v32;
      v11 = v33;
      v9 = v34;
      v10 = v30;
      if ((v12 + 47) > *(v2 + 160))
      {
        abort();
      }
    }

    *(v2 + 176) = v13;
LABEL_5:
    v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
    v15 = v14 + *(v2 + 184);
    *(v2 + 168) = v14 + 32;
    *(v2 + 27568) |= 8uLL;
    v3[754] |= 1u;
    *(*(v2 + 22496) + 1560) = v15;
    *(v2 + 23040) = *(*(v2 + 48) + 224) + *MEMORY[0x29EDC5638];
    *v14 = v9;
    *(v14 + 8) = v10;
    *(v14 + 24) = v11;
  }

  v16 = v7 | a2;
  if (v6 != os_unfair_lock_opaque)
  {
    v41 = 0;
    v3[756] = os_unfair_lock_opaque;
    v17 = *(v2 + 22496);
    v35 = v17 + 1360;
    v36 = v2 + 22840;
    v37 = v17 + 1368;
    v38 = v2 + 22848;
    v39 = v17 + 1392;
    v40 = v2 + 22872;
    if (AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::addToResourceList(&v4[1810], &v35, *(v2 + 1904), &v41))
    {
      if ((v16 & 1) != 0 && (v41 & 1) == 0)
      {
        IOGPUResourceListAddResource();
        IOGPUResourceListAddResource();
        IOGPUResourceListAddResource();
      }

      *(v2 + 27560) |= 0x4C0000000000uLL;
      v3[754] |= 1u;
    }

    v35 = *(v2 + 22496) + 1496;
    v36 = v2 + 22976;
    if (AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::BVHStateHeapElem>::addToResourceList(v4 + 2352, &v35))
    {
      if (v16)
      {
        IOGPUResourceListAddResource();
      }

      *(v2 + 27560) |= 0x800000000000000uLL;
      v3[754] |= 1u;
    }

    v35 = v2 + 28152;
    v36 = v2 + 28160;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v4 + 3146, &v35))
    {
      IOGPUResourceListAddResource();
    }

    **(v2 + 28144) = *(v2 + 28152);
    v35 = v2 + 28168;
    v36 = v2 + 28176;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v4 + 2952, &v35))
    {
      IOGPUResourceListAddResource();
    }

    *(*(v2 + 28144) + 8) = *(v2 + 28168);
    v35 = *(v2 + 22496) + 1544;
    v36 = v2 + 23024;
    if (AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::addToResourceList(v4 + 3534, &v35))
    {
      if (v16)
      {
        IOGPUResourceListAddResource();
      }

      *(v2 + 27568) |= 2uLL;
      v3[754] |= 1u;
    }

    v18 = *(v2 + 2280);
    v35 = *(v2 + 22496) + 1424;
    v36 = v2 + 22904;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v18, &v35))
    {
      if (v16)
      {
        IOGPUResourceListAddResource();
      }

      *(v2 + 27560) |= 0x4000000000000uLL;
      v3[754] |= 1u;
    }

    v19 = *(v2 + 2272);
    v35 = *(v2 + 22496) + 1432;
    v36 = v2 + 22912;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v19, &v35))
    {
      if (v16)
      {
        IOGPUResourceListAddResource();
      }

      *(v2 + 27560) |= 0x8000000000000uLL;
      v3[754] |= 1u;
    }

    v35 = *(v2 + 22496) + 1536;
    v36 = v2 + 23016;
    result = AGX::Mempool<16u,0u,true,8u,0u,AGX::HAL300::TensorStateHeapElem>::addToResourceList(v4 + 2752, &v35);
    if (result)
    {
      if (v16)
      {
        result = IOGPUResourceListAddResource();
      }

      *(v2 + 27568) |= 1uLL;
      v3[754] |= 1u;
    }
  }

  explicit = atomic_load_explicit(&v4[2347], memory_order_acquire);
  if (explicit)
  {
    v21 = explicit + 1;
  }

  else
  {
    v21 = 0;
  }

  if (v3[757] != v21)
  {
    v35 = *(v2 + 22496) + 1400;
    v36 = v2 + 22880;
    result = AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::SamplerHeapElem>::addToResourceList(v4 + 2152, &v35);
    v22 = *(v2 + 2328);
    *(v22 + 152) = *(*(v2 + 22496) + 1400);
    v23 = atomic_load_explicit(&v4[2347], memory_order_acquire);
    v24 = v23 ? v23 + 1 : 0;
    *(v22 + 160) = v24;
    if (result)
    {
      if (v16)
      {
        result = IOGPUResourceListAddResource();
      }

      *(v2 + 27560) |= 0x800000000000uLL;
      v3[754] |= 1u;
    }
  }

  v25 = *(*(v2 + 1872) + 848);
  v26 = *(v25 + 6320);
  if (v3[758] != v26)
  {
    v27 = *(v25 + 6832);
    if (v27)
    {
      do
      {
        result = IOGPUResourceListAddResource();
        v27 = *v27;
      }

      while (v27);
      v25 = *(*(v2 + 1872) + 848);
    }

    for (i = *(v25 + 6664); i; i = *i)
    {
      result = IOGPUResourceListAddResource();
    }

    v3[758] = v26;
  }

  return result;
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::bindBufferResourceToCommand(uint64_t a1, unsigned int a2, int a3)
{
  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  v4 = a1 + 22504;
  v5 = *(a1 + 22504 + 8 * a2);
  if (v5)
  {
    if (a2 - 37 <= 0x1D && ((1 << (a2 - 37)) & 0x3E687661) != 0)
    {

      IOGPUResourceListAddResource();
    }

    else
    {
      AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(a1 + 2008), v5, 0, a2, v3);
      v8 = a2;
      IOGPUResourceListAddResource();
      v9 = a1;
      if (*(a1 + 2292) == 1)
      {
        v10 = *(a1 + 27616);
        if (!v10)
        {
          operator new();
        }

        v11 = *(*(v4 + 8 * v8) + 48);
        v17 = v3;
        ResourceTracker<_ResourceTrackerBinding>::addResource((v10 + 8), &v17, v11, v3);
        v9 = a1;
      }

      if (v8 <= 0x22)
      {
        v12 = v9 + 26128;
        if (*(v9 + 26128 + 8 * v8))
        {
          v13 = MEMORY[0x29EDC5638];
          IOGPUResourceListAddResource();
          AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(a1 + 2008), *(v12 + 8 * v8), v3, v14);
          if (*(a1 + 2292) == 1)
          {
            v15 = *(a1 + 27616);
            if (!v15)
            {
              operator new();
            }

            v16 = *(*(v12 + 8 * v8) + *v13 + 48);
            v18 = v3;
            ResourceTracker<_ResourceTrackerBinding>::addResource((v15 + 8), &v18, v16, v3);
          }
        }
      }
    }
  }
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::bindTextureResourceToCommand(uint64_t a1, unsigned int a2, int a3)
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
  v6 = a1 + 23056;
  AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(a1 + 2008), *(a1 + 23056 + 8 * v5), 3u, a2, v4);
  result = IOGPUResourceListAddResource();
  if (*(a1 + 2292) == 1)
  {
    v8 = *(a1 + 27616);
    if (!v8)
    {
      operator new();
    }

    v9 = *(*(v6 + 8 * v5) + 48);
    v10 = v4;
    result = ResourceTracker<_ResourceTrackerBinding>::addResource((v8 + 8), &v10, v9, v4);
  }

  if (*(v6 + 8 * (v5 + 1)))
  {
    result = IOGPUResourceListAddResource();
  }

  if (*(v6 + 8 * (v5 + 2)))
  {

    return IOGPUResourceListAddResource();
  }

  return result;
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::reserveEnqueueDatabufferSpace(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a1 + 24576;
  v6 = *(a1 + 27624);
  v7 = *(*(a1 + 2336) + 16);
  v8 = *(a1 + 1864);
  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 10;
  }

  v10 = *(v7 + 624);
  v11 = a1 + 32 * v9;
  if (!v8 && !*(v11 + 72))
  {
    v38 = a3;
    v37 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 10, 0);
    a3 = v38;
    if ((v37 & 1) == 0)
    {
LABEL_27:
      abort();
    }
  }

  v13 = *(v11 + 64);
  v12 = *(v11 + 72);
  v14 = (v11 + 64);
  v15 = v10 + 31;
  v16 = v12 + v15;
  if (v16 <= v13)
  {
    goto LABEL_7;
  }

  v32 = v9;
  v33 = a3;
  v34 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v32, 0);
  a3 = v33;
  if (v34)
  {
    v16 = v14[1] + v15;
    if (v16 > *v14)
    {
      goto LABEL_27;
    }

LABEL_7:
    v14[2] = v16;
  }

  v17 = (*(*(v7 + 2392) + 8) - **(v7 + 2392)) + 63;
  v18 = *(a1 + 232) + v17;
  if (v18 <= *(a1 + 224))
  {
LABEL_9:
    *(a1 + 240) = v18;
    goto LABEL_10;
  }

  v35 = a3;
  v36 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 5, 0);
  a3 = v35;
  if (v36)
  {
    v18 = *(a1 + 232) + v17;
    if (v18 > *(a1 + 224))
    {
      goto LABEL_27;
    }

    goto LABEL_9;
  }

LABEL_10:
  if (a3)
  {
    v19 = 36;
  }

  else
  {
    v19 = 40;
  }

  v20 = *(v5 + 3037);
  v21 = *(v5 + 3052);
  v39 = 0;
  result = agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(a2, a1 + 24, v19, v20, v6 != 0, v21, &v39);
  if (*(v5 + 3672))
  {
    v23 = *(v5 + 3048) != 0;
    v24 = *(v5 + 3052);
    v39 = 1;
    result = agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, v19 + 4, 0, v23, v24, &v39);
    if (!*(a1 + 2292))
    {
      v25 = *(a1 + 28288);
      v26 = *(v25 - 32);
      v27 = *(v25 - 36) + 1;
      *(v25 - 36) = v27;
      if (*(v5 + 3732) < (v26 + v27))
      {
        v28 = *(v5 + 3048) != 0;
        v29 = *(v5 + 3052);
        v39 = 1;
        result = agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, 24, 0, v28, v29, &v39);
        ++*(v5 + 3732);
      }
    }
  }

  else if (!*(a1 + 2292))
  {
    v30 = *(v5 + 3037);
    v31 = *(v5 + 3052);
    v39 = 1;
    return agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(a2, a1 + 24, 4, v30, v6 != 0, v31, &v39);
  }

  return result;
}

void AGX::HAL300::ComputeCoalescingResourceTracker::ComputeCoalescingResourceTracker(AGX::HAL300::ComputeCoalescingResourceTracker *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 10) = 1065353216;
  operator new();
}

void sub_29CD5CAD0(_Unwind_Exception *a1)
{
  std::unordered_map<unsigned long,AGX::FunctionCompiledEventInfo>::~unordered_map[abi:nn200100](v2);
  std::unordered_map<unsigned long,AGX::FunctionCompiledEventInfo>::~unordered_map[abi:nn200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(uint64_t a1)
{
  if (*(*(a1 + 1912) + 520))
  {
    v7 = xmmword_29D2F0D30;
    v8 = xmmword_29D2F1C50;
    v9 = 0;
    v11 = 0;
    v12 = 0;
    __p = 0;
    v2 = *(a1 + 28288);
    if (v2 >= *(a1 + 28296))
    {
      v4 = std::vector<AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::VirtualSubstream,std::allocator<AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::VirtualSubstream>>::__emplace_back_slow_path<AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::VirtualSubstream>((a1 + 28280), &v7);
      v5 = __p;
      *(a1 + 28288) = v4;
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
      *(a1 + 28288) = v2 + 64;
    }
  }

  else
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::restartComputePass(a1, 22);
  }

  return *(a1 + 28312) + ((*(a1 + 28288) - *(a1 + 28280)) >> 6) - 1;
}

void sub_29CD5CC14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::signalProgress(uint64_t a1, unsigned int a2)
{
  v4 = a1 + 24576;
  v5 = a1 + 27632;
  v6 = *(a1 + 27628);
  v7 = *(a1 + 27632 + 4 * v6);
  *(a1 + 27632 + 4 * v6) = v7 + 1;
  if (v7 >= 0xFF)
  {
    v8 = *(a1 + 27624) != 0;
    v24 = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, a1 + 24, 4, 0, v8, v6, &v24);
    v9 = *(a1 + 776);
    *v9 = -1610612736;
    *(a1 + 776) = v9 + 1;
    v10 = *(v4 + 3052);
    *(v4 + 3052) = -1;
    v11 = *(v4 + 3048) != 0;
    v24 = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, a1 + 24, 4, 0, v11, 0xFFFFFFFFLL, &v24);
    v12 = *(a1 + 776);
    *v12 = 1610613504;
    *(a1 + 776) = v12 + 1;
    *(v4 + 3052) = 0;
    *(a1 + 27632) = 0;
    if (*(v4 + 3672) == 1)
    {
      LODWORD(v6) = 0;
      *(*(a1 + 28288) - 56) = v10;
    }

    else
    {
      *(v4 + 3052) = v10;
      v13 = *(v4 + 3048) != 0;
      v24 = 0;
      agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, a1 + 24, 4, 0, v13, v10, &v24);
      v14 = *(a1 + 776);
      *v14 = (v10 + 1) & 7 | 0xA0000000;
      *(a1 + 776) = v14 + 1;
      LODWORD(v6) = *(v4 + 3052);
    }

    ++*(v4 + 3064);
    v7 = *(v5 + 4 * v6);
    *(v5 + 4 * v6) = v7 + 1;
  }

  v15 = *(v4 + 3064);
  v16 = *(a1 + 27656);
  if (!v16)
  {
LABEL_12:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v17 = v16;
      v18 = *(v16 + 7);
      if (v18 <= a2)
      {
        break;
      }

      v16 = *v17;
      if (!*v17)
      {
        goto LABEL_12;
      }
    }

    if (v18 >= a2)
    {
      break;
    }

    v16 = v17[1];
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  *(v17 + 8) = v6;
  *(v17 + 9) = v7;
  *(v17 + 10) = v15;
  v19 = *(v4 + 3037);
  v20 = *(v4 + 3048) != 0;
  v21 = *(v4 + 3052);
  v24 = 0;
  result = agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, a1 + 24, 4, v19, v20, v21, &v24);
  v23 = *(a1 + 776);
  *v23 = ((v7 << 21) + 0x200000) & 0x1FE00000 | 0x60000060;
  *(a1 + 776) = v23 + 1;
  return result;
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeCommandsInBufferCommon(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(*(a2 + 424) + 27) != 1)
  {
    return;
  }

  v4 = a2;
  v6 = (a1 + 24576);
  if ((*(a1 + 27612) & 1) == 0)
  {
    *(a1 + 27612) = 1;
    *(a1 + 27600) = 0;
    v7 = *(a1 + 22496);
    *(v7 + 1360) = 0u;
    *(v7 + 1392) = 0u;
    v8 = *(a1 + 22496);
    *(v8 + 1496) = 0;
    *(v8 + 1424) = 0u;
    *(v8 + 1536) = 0u;
  }

  if (*(a1 + 1896))
  {
    MTLResourceListAddResource();
  }

  if (*(*(v4 + 424) + 24) == 1)
  {
    AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::bindResources(*(a1 + 2336));
    v14 = *(a1 + 2336);
    v15 = *(v14 + 208) + *(v14 + 172);
    v16 = *(v14 + 16);
    v17 = v16[1021] + 3;
    if ((v17 & 0x3FFFFC) != 0)
    {
      v18 = (v17 << 10) & 0xFFFFF000;
    }

    else
    {
      v18 = 0;
    }

    if (v16[979])
    {
      v19 = 0x8000;
    }

    else
    {
      v64 = v16[1015];
      if (*(v14 + 360))
      {
        v64 += *(v14 + 456) * *(v14 + 360) + (v16[1017] >> 5) * *(v14 + 364);
      }

      if (v64 >= 0x8000)
      {
        v19 = 0x8000;
      }

      else
      {
        v19 = v64;
      }
    }

    v65 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(a1 + 27696, v15, v16[327], *(v14 + 184), v19, v18, 0, v9, v10, v11, v12, v13);
    v63 = *(a1 + 2328);
    *(v63 + 608) = 2;
    if ((v65 & 1) == 0)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v20 = *(*(*(a1 + 1872) + 848) + 16576);
    v21 = *v20;
    v22 = v6[780];
    v23 = v22 < *v20;
    if (v22 > *v20)
    {
      v21 = v6[780];
    }

    v6[780] = v21;
    v24 = v20[1];
    v25 = v6[781];
    v26 = v25 < v24;
    if (v25 > v24)
    {
      v24 = v6[781];
    }

    v6[781] = v24;
    v27 = v20[2];
    v28 = v6[782];
    if (v26)
    {
      v23 = 1;
    }

    v29 = v28 < v27;
    if (v28 > v27)
    {
      v27 = v6[782];
    }

    v6[782] = v27;
    v30 = v20[3];
    v31 = v6[783];
    if (v29)
    {
      v23 = 1;
    }

    v32 = v31 < v30;
    if (v31 > v30)
    {
      v30 = v6[783];
    }

    v6[783] = v30;
    v33 = v20[4];
    v34 = v6[784];
    if (v32)
    {
      v23 = 1;
    }

    v35 = v34 < v33;
    if (v34 > v33)
    {
      v33 = v6[784];
    }

    v6[784] = v33;
    v36 = v20[5];
    v37 = v6[785];
    if (v35)
    {
      v23 = 1;
    }

    v38 = v37 < v36;
    if (v37 > v36)
    {
      v36 = v6[785];
    }

    v6[785] = v36;
    v39 = v20[6];
    v40 = v6[786];
    if (v38)
    {
      v23 = 1;
    }

    v41 = v40 < v39;
    if (v40 > v39)
    {
      v39 = v6[786];
    }

    v6[786] = v39;
    v42 = v20[7];
    v43 = v6[787];
    if (v41)
    {
      v23 = 1;
    }

    v44 = v43 < v42;
    if (v43 > v42)
    {
      v42 = v6[787];
    }

    v6[787] = v42;
    v45 = v20[8];
    v46 = v6[788];
    v47 = v46 < v45;
    if (v46 > v45)
    {
      v45 = v6[788];
    }

    v6[788] = v45;
    v48 = v20[9];
    v49 = v6[789];
    v50 = v49 < v48;
    if (v49 > v48)
    {
      v48 = v6[789];
    }

    v6[789] = v48;
    v51 = v20[10];
    v52 = v6[790];
    v53 = v52 < v51;
    if (v52 > v51)
    {
      v51 = v6[790];
    }

    v6[790] = v51;
    v54 = v20[11];
    v55 = v6[791];
    v56 = v55 < v54;
    if (v55 > v54)
    {
      v54 = v6[791];
    }

    v6[791] = v54;
    v57 = v20[12];
    v58 = v6[792];
    v59 = v58 < v57;
    if (v58 > v57)
    {
      v57 = v6[792];
    }

    v6[792] = v57;
    v60 = v59 || v56;
    v61 = v23 | (v44 || v47 || v50 || v53) | v60;
    if (*(*(v4 + 424) + 26) == 1)
    {
      AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((a1 + 28336), (*(*(*(a1 + 1872) + 848) + 7168) + 268));
    }

    v62 = atomic_load((*(*(a1 + 1872) + 848) + 17020));
    v63 = *(a1 + 2328);
    *(v63 + 591) |= v62 & 1;
    *(v63 + 608) = 2;
    if ((v61 & 1) == 0)
    {
      goto LABEL_71;
    }

    v15 = 0;
  }

  *(a1 + 28232) |= 0x10000000000000uLL;
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 27696, v63 + 336, 0);
LABEL_70:
  if (v15 && **MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

LABEL_71:
  v66 = *(v4 + 424);
  v67 = MEMORY[0x29EDC5638];
  if (*(v66 + 25) != 1)
  {
    goto LABEL_108;
  }

  v68 = (a1 + 22504);
  v69 = -35;
  do
  {
    v72 = *v68;
    if (*v68)
    {
      v73 = v72[2];
      if ((v73 & 0x7FFFFFFF80) != 0)
      {
        v74 = *(a1 + 2008);
        v75 = v74[5];
        if (*(v75 + 480) == 1)
        {
          v76 = 1 << (v69 + 35);
          v77 = (*v75 & v76) != 0;
          if (((*(v75 + 160) | *v75) & v76) != 0)
          {
            v78 = *v68;
            if ((v73 & 0x1000000000000000) != 0)
            {
              v78 = *v72;
            }

            v79 = (&v72[1][7].u64[1] + 7) & 0xFFFFFFFFFFFFFF80;
            v268 = v78;
            v269.i64[0] = v79;
            v269.i32[2] = v73 >> 7;
            v269.i32[3] = 1;
            v270 = v77;
            ResourceTracker<_ResourceGroupBinding>::addResource(v74, &v268, *(v72 + 12), 1);
          }
        }
      }

      IOGPUResourceListAddResource();
    }

    v80 = v68[453];
    if (v80)
    {
      v81 = *v67;
      v82 = v80 + v81;
      v83 = *(v80 + v81 + 16);
      v84 = (v83 & 0x7FFFFFFF80) != 0 && (v83 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL;
      if (!v84)
      {
        goto LABEL_74;
      }

      v85 = *(a1 + 2008);
      if (*(v85[2].i64[1] + 480) != 1)
      {
        goto LABEL_74;
      }

      v86 = v85[3];
      v87 = v85[4];
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v86), vceqzq_s64(v87))))) & 1) == 0)
      {
        goto LABEL_74;
      }

      v88 = (v80 + v81);
      if ((v83 & 0x1000000000000000) != 0)
      {
        v88 = *v82;
      }

      v89 = *v88;
      if (!v89)
      {
        goto LABEL_74;
      }

      v90 = *v89;
      v91 = v89[1];
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v89), vceqzq_s64(v91))))) & 1) == 0)
      {
        goto LABEL_74;
      }

      v92 = vandq_s8(v91, v87);
      v93 = v92.u64[1];
      if (v92.i64[1])
      {
        v94 = 3;
      }

      else
      {
        v93 = v92.i64[0];
        if (v92.i64[0])
        {
          v94 = 2;
        }

        else
        {
          v95 = vandq_s8(v90, v86);
          v93 = v95.u64[1];
          if (v95.i64[1])
          {
            v94 = 1;
          }

          else
          {
            v93 = v95.i64[0];
            if (!v95.i64[0])
            {
LABEL_74:
              IOGPUResourceListAddResource();
              goto LABEL_75;
            }

            v94 = 0;
          }
        }
      }

      v96 = &v85->i8[8 * v94];
      v97 = *(v96 + 10);
      v98 = 1 << (__clz(v93) ^ 0x3Fu);
      if ((v98 & (*(v96 + 14) | v97)) != 0)
      {
        v99 = (v80 + v81);
        if ((v83 & 0x1000000000000000) != 0)
        {
          v99 = *v82;
        }

        v70 = v83 >> 7;
        v71 = (*(v82 + 8) + 127) & 0xFFFFFFFFFFFFFF80;
        v268 = v99;
        v269.i64[0] = v71;
        v269.i64[1] = v70 | 0x100000000;
        v270 = (v98 & v97) != 0;
        ResourceTracker<_ResourceGroupBinding>::addResource(v85, &v268, *(v82 + 48), 1);
      }

      goto LABEL_74;
    }

LABEL_75:
    ++v68;
    v84 = __CFADD__(v69++, 1);
  }

  while (!v84);
  v66 = *(v4 + 424);
LABEL_108:
  if (*(v66 + 24) != 1 || (*(*(*(a1 + 2336) + 16) + 2404) & 0x20) != 0)
  {
    v100 = *(*(*(a1 + 1872) + 848) + 17072);
    if (v100)
    {
      IOGPUResourceListAddResource();
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(a1, v100, 0, 0x25u, 0);
    }
  }

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::prepareForEnqueue(a1, 1);
  if (!*(a1 + 2184))
  {
    *(a1 + 27672) = *(a1 + 776);
    LODWORD(v268) = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, a1 + 24, 16, 1, 0, 0, &v268);
    v101 = *(a1 + 776);
    *v101++ = xmmword_29D2F1C80;
    *(a1 + 776) = v101;
    *(a1 + 27680) = v101 + *(a1 + 792);
    *(a1 + 27688) = v101;
  }

  v102 = *(a1 + 2336);
  v103 = *(a1 + 2160);
  v104 = v103[18] + 87;
  if (v104 <= v103[17])
  {
LABEL_115:
    v103[19] = v104;
    goto LABEL_116;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 2160), 3, 0))
  {
    v104 = v103[18] + 87;
    if (v104 <= v103[17])
    {
      goto LABEL_115;
    }

LABEL_245:
    abort();
  }

LABEL_116:
  v105 = *(a1 + 2160);
  v106 = (*(v105 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
  v107 = *(v105 + 160);
  *(v105 + 144) = v106 + 56;
  v108 = *(*(v4 + 424) + 24);
  *(v106 + 24) = v108;
  *(v106 + 52) = 0;
  if (v108 == 1)
  {
    v109 = *(v102 + 32);
  }

  else
  {
    v109 = 0;
  }

  v267 = (a1 + 27592);
  *(v106 + 32) = v109;
  if (!*(a1 + 2184))
  {
    v110 = *(v105 + 880);
    *(a1 + 2184) = *(v105 + 896) + v110;
    *(a1 + 2200) = v110;
  }

  v111 = v106 + v107;
  v266 = a3;
  if (*a3 == 1)
  {
    *v106 = a3[2];
    *(v106 + 4) = a3[3];
    *(v106 + 8) = 0;
    v115 = *(a1 + 2176);
    v116 = *(*(v115 + 16) + 4064);
    *(v106 + 48) = v116;
    v117 = a3[3] - a3[2];
    v118 = (v117 + 1);
    if ((*(a3 + 6) - *(a3 + 4) + 1) < v116)
    {
      LOWORD(v116) = v117 + 1;
    }

    if ((v116 & 0xFFE0) != 0)
    {
      v119 = 32;
    }

    else
    {
      v119 = v116;
    }

    v120 = *v67;
    v121 = *(v4 + 416) + v120;
    v122 = *(v121 + 8);
    *(a1 + 26832) = v122;
    v123 = *(a1 + 22496);
    *(v123 + 1448) = v122;
    *(a1 + 22928) = v121;
    *(a1 + 27560) |= 0x20000000000000uLL;
    v124 = *v267 | 1;
    *v267 = v124;
    v125 = *(v105 + 1840) - 1;
    if (v125 > 6)
    {
      v126 = 10;
    }

    else
    {
      v126 = dword_29D2F76D0[v125];
    }

    v136 = v126;
    if (((1 << v126) & 0xFFF00000480) != 0 && !*(v105 + 32 * v126 + 48))
    {
      AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v105, v126);
      v120 = *v67;
      v123 = *(a1 + 22496);
      v115 = *(a1 + 2176);
      v124 = *v267 | 1;
    }

    v137 = *(*(v105 + 24) + (v136 << 6) + 32);
    *(a1 + 26824) = v111;
    *(v123 + 1440) = v111;
    *(a1 + 22920) = v137 + v120;
    *(a1 + 27560) |= 0x10000000000000uLL;
    *v267 = v124;
    *(a1 + 2060) |= 1u;
    v138 = *(a1 + 2336);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(a1, v115);
    v268 = v118;
    v269 = vdupq_n_s64(1uLL);
    v271 = v119;
    v272 = v269;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(a1, 0x1Au, &v268, &v271);
    if (*(a1 + 2292) == 1 && *(a1 + 28248) == 1)
    {
      v139 = *(a1 + 28264);
      if (*(a1 + 28256) != v139)
      {
        *(v139 - 8) = 1;
        *(v139 - 7) = *(a1 + 2306);
        v140 = *(a1 + 28288);
        v141 = *(v140 - 32);
        v142 = *(v140 - 36) + 1;
        *(v140 - 36) = v142;
        if (*(a1 + 28308) < (v141 + v142))
        {
          v143 = *(a1 + 27628);
          v144 = *(a1 + 27624) != 0;
          LODWORD(v268) = 1;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, 24, 0, v144, v143, &v268);
          ++*(a1 + 28308);
        }
      }
    }

    if (v138)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(a1, v138);
    }

    goto LABEL_152;
  }

  if (*a3)
  {
LABEL_152:
    v145 = 0;
    goto LABEL_185;
  }

  if (!*(a1 + 2192))
  {
    v112 = *(v105 + 912);
    *(a1 + 2192) = *(v105 + 928) + v112;
    *(a1 + 2208) = v112;
  }

  *v106 = 0;
  *(v106 + 8) = *(a3 + 1);
  v113 = *(v105 + 1840) - 1;
  if (v113 > 6)
  {
    v114 = 10;
  }

  else
  {
    v114 = dword_29D2F76D0[v113];
  }

  v127 = v114;
  v128 = v105 + 32 * v114;
  if (((1 << v114) & 0xFFF00000480) != 0 && !*(v128 + 48) && (AGX::DataBufferAllocator<44ul>::growNoInline(v105, v114, 0) & 1) == 0)
  {
    goto LABEL_245;
  }

  v130 = *(v128 + 40);
  v129 = *(v128 + 48);
  v131 = (v128 + 40);
  v132 = v129 + 12;
  if (v132 > v130)
  {
    if (AGX::DataBufferAllocator<44ul>::growNoInline(v105, v127, 0))
    {
      v132 = v131[1] + 12;
      if (v132 > *v131)
      {
        goto LABEL_245;
      }

      goto LABEL_138;
    }
  }

  else
  {
LABEL_138:
    v131[2] = v132;
  }

  v133 = *(a1 + 2160);
  v134 = *(v133 + 1840) - 1;
  if (v134 > 6)
  {
    v135 = 10;
  }

  else
  {
    v135 = qword_29D2F76F0[v134];
  }

  v146 = v133 + 32 * v135;
  v147 = *(v146 + 48);
  v148 = *(v146 + 64) + v147;
  *(v146 + 48) = v147 + 12;
  *v147 = 805306368;
  *(v147 + 8) = 0x80000000;
  *(v106 + 16) = v148;
  v149 = *(a1 + 2160);
  v150 = *(v149 + 1840) - 1;
  v151 = v4;
  if (v150 > 6)
  {
    v152 = 10;
  }

  else
  {
    v152 = dword_29D2F76D0[v150];
  }

  v153 = v152;
  v154 = v149 + 32 * v152;
  if (((0xFFF00000480uLL >> v152) & 1) != 0 && !*(v154 + 48) && (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 2160), v152, 0) & 1) == 0)
  {
    goto LABEL_245;
  }

  v156 = *(v154 + 40);
  v155 = *(v154 + 48);
  v157 = (v154 + 40);
  v158 = v155 + 55;
  if (v158 > v156)
  {
    if (AGX::DataBufferAllocator<44ul>::growNoInline(v149, v153, 0))
    {
      v158 = v157[1] + 55;
      if (v158 > *v157)
      {
        goto LABEL_245;
      }

      goto LABEL_160;
    }
  }

  else
  {
LABEL_160:
    v157[2] = v158;
  }

  v159 = *(a1 + 2160);
  v160 = *(v159 + 1840) - 1;
  if (v160 > 6)
  {
    v161 = 10;
  }

  else
  {
    v161 = qword_29D2F76F0[v160];
  }

  v4 = v151;
  v162 = v159 + 40 + 32 * v161;
  v163 = (*(v162 + 8) + 31) & 0xFFFFFFFFFFFFFFE0;
  v164 = (v163 + *(v162 + 24));
  *(v162 + 8) = v163 | 0x18;
  *v163 = xmmword_29D2F1AA0;
  *(v163 + 16) = 0x100000001;
  *(v106 + 40) = v164;
  *(v106 + 48) = *(*(*(a1 + 2176) + 16) + 4064);
  v165 = *v67;
  v166 = *(v151 + 416) + v165;
  v167 = *(v166 + 8);
  *(a1 + 26832) = v167;
  v168 = *(a1 + 22496);
  *(v168 + 1448) = v167;
  *(a1 + 22928) = v166;
  *(a1 + 27560) |= 0x20000000000000uLL;
  v169 = *v267 | 1;
  *v267 = v169;
  if (v160 > 6)
  {
    v170 = 10;
  }

  else
  {
    v170 = dword_29D2F76D0[v160];
  }

  v171 = v170;
  if (((0xFFF00000480uLL >> v170) & 1) != 0 && !*(v159 + 40 + 32 * v170 + 8))
  {
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v159, v170);
    v165 = *v67;
    v168 = *(a1 + 22496);
    v169 = *v267 | 1;
  }

  v172 = *(*(v159 + 24) + (v171 << 6) + 32);
  *(a1 + 26824) = v111;
  *(v168 + 1440) = v111;
  *(a1 + 22920) = v172 + v165;
  *(a1 + 27560) |= 0x10000000000000uLL;
  *v267 = v169;
  v173 = *(a1 + 2168);
  *(a1 + 2060) |= 1u;
  v174 = *(a1 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(a1, v173);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(a1, 0x1Bu, qword_29D2F5330, qword_29D2F5330);
  if (*(a1 + 2292) == 1 && *(a1 + 28248) == 1)
  {
    v175 = *(a1 + 28264);
    if (*(a1 + 28256) != v175)
    {
      *(v175 - 8) = 1;
      *(v175 - 7) = *(a1 + 2306);
      v176 = *(a1 + 28288);
      v177 = *(v176 - 32);
      v178 = *(v176 - 36) + 1;
      *(v176 - 36) = v178;
      if (*(a1 + 28308) < (v177 + v178))
      {
        v179 = *(a1 + 27628);
        v180 = *(a1 + 27624) != 0;
        LODWORD(v268) = 1;
        agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, 24, 0, v180, v179, &v268);
        ++*(a1 + 28308);
      }
    }
  }

  if (v174)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(a1, v174);
  }

  v181 = *(a1 + 2176);
  v182 = *(a1 + 2160);
  v183 = *(v182 + 1840) - 1;
  if (v183 > 6)
  {
    v184 = 10;
  }

  else
  {
    v184 = dword_29D2F76D0[v183];
  }

  v185 = v184;
  if (((0xFFF00000480uLL >> v184) & 1) != 0 && !*(v182 + 32 * v184 + 48))
  {
    v261 = *(a1 + 2176);
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(*(a1 + 2160), v184);
    v181 = v261;
  }

  v186 = *(*(v182 + 24) + (v185 << 6) + 32);
  v187 = *v67;
  *(a1 + 2060) |= 1u;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(a1, 26, v181, v164, v186 + v187);
  v188 = *(a1 + 2160);
  LODWORD(v268) = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v188, 48, 1, 0, 0, &v268);
  v189 = *(a1 + 2160);
  v145 = *(v189 + 752);
  ++*(a1 + 1940);
  *v145 = 0x400010000;
  *(v145 + 8) = 0x4000000000000000;
  *(v145 + 16) = 0u;
  *(v145 + 32) = 0u;
  *(v189 + 752) = v145 + 48;
  v190 = *(a1 + 2160);
  LODWORD(v268) = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v190, 8, 1, 0, 0, &v268);
  v191 = *(a1 + 2160);
  v192 = *(v191 + 752);
  *v192 = __ROR8__(v148, 32) & 0xFFFFFFFF0000FFFFLL | 0x30000000;
  *(v191 + 752) = v192 + 1;
  v193 = *(*(*(a1 + 2168) + 16) + 2728);
  do
  {
    v193 &= ~(1 << __clz(__rbit32(v193)));
    IOGPUResourceListAddResource();
  }

  while (v193);
LABEL_185:
  v194 = *(*(*(a1 + 2176) + 16) + 2728);
  do
  {
    v194 &= ~(1 << __clz(__rbit32(v194)));
    IOGPUResourceListAddResource();
  }

  while (v194);
  IOGPUResourceListAddResource();
  v195 = v4;
  v196 = *(a1 + 2336);
  v265 = v195;
  v197 = *(v195 + 424);
  v198 = *(a1 + 22496);
  if (*(v197 + 25) == 1 && (v199 = *(a1 + 22488)) != 0)
  {
    v200 = *(a1 + 2160);
    v201 = v200[18] + 311;
    if (v201 <= v200[17])
    {
      goto LABEL_190;
    }

    if (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 2160), 3, 0))
    {
      v201 = v200[18] + 311;
      if (v201 > v200[17])
      {
        goto LABEL_245;
      }

LABEL_190:
      v200[19] = v201;
    }

    v202 = *(a1 + 2160);
    v203 = (*(v202 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
    v204 = *(v202 + 160);
    *(v202 + 144) = v203 + 280;
    v205 = v199[8];
    v206 = v199[9];
    v207 = v199[11];
    *(v203 + 160) = v199[10];
    *(v203 + 176) = v207;
    *(v203 + 128) = v205;
    *(v203 + 144) = v206;
    v208 = v199[4];
    v209 = v199[5];
    v210 = v199[7];
    *(v203 + 96) = v199[6];
    *(v203 + 112) = v210;
    *(v203 + 64) = v208;
    *(v203 + 80) = v209;
    v211 = *v199;
    v212 = v199[1];
    v213 = v199[3];
    *(v203 + 32) = v199[2];
    *(v203 + 48) = v213;
    *v203 = v211;
    *(v203 + 16) = v212;
    v214 = v199[12];
    v215 = v199[13];
    v216 = v199[14];
    *(v203 + 240) = *(v199 + 30);
    *(v203 + 208) = v215;
    *(v203 + 224) = v216;
    *(v203 + 192) = v214;
    v217 = *(v198 + 1272);
    *(v203 + 264) = *(v198 + 1288);
    *(v203 + 248) = v217;
    v218 = *(a1 + 2160);
    v219 = v218[18] + 155;
    if (v219 > v218[17])
    {
      if (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 2160), 3, 0))
      {
        v219 = v218[18] + 155;
        if (v219 > v218[17])
        {
          goto LABEL_245;
        }

        goto LABEL_192;
      }
    }

    else
    {
LABEL_192:
      v218[19] = v219;
    }

    v220 = v203 + v204;
    v221 = *(a1 + 2160);
    v222 = ((*(v221 + 144) + 31) & 0xFFFFFFFFFFFFFFE0);
    v223 = v222 + *(v221 + 160);
    *(v221 + 144) = v222 + 124;
    v224 = v199[1087];
    v225 = v199[1088];
    v226 = v199[1090];
    v222[2] = v199[1089];
    v222[3] = v226;
    *v222 = v224;
    v222[1] = v225;
    v227 = v199[1091];
    v228 = v199[1092];
    v229 = v199[1093];
    *(v222 + 108) = *(v199 + 17500);
    v222[5] = v228;
    v222[6] = v229;
    v222[4] = v227;
  }

  else
  {
    v223 = 0;
    v220 = 0;
  }

  v230 = *(a1 + 2160);
  v231 = v230[26] + 179;
  if (v231 > v230[25])
  {
    if (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 2160), 5, 0))
    {
      v231 = v230[26] + 179;
      if (v231 > v230[25])
      {
        goto LABEL_245;
      }

      goto LABEL_196;
    }
  }

  else
  {
LABEL_196:
    v230[27] = v231;
  }

  v263 = v223;
  v264 = v220;
  v232 = *(a1 + 2160);
  v233 = ((v232[26] + 63) & 0xFFFFFFFFFFFFFFC0);
  v234 = v232[28];
  v232[26] = v233 + 116;
  if (*(v197 + 24))
  {
    v235 = *(*(v196 + 16) + 3264);
    v236 = v232[18] + 55;
    if (v236 <= v232[17])
    {
      goto LABEL_199;
    }

    if (AGX::DataBufferAllocator<44ul>::growNoInline(v232, 3, 0))
    {
      v236 = v232[18] + 55;
      if (v236 > v232[17])
      {
        goto LABEL_245;
      }

LABEL_199:
      v232[19] = v236;
    }

    v232 = *(a1 + 2160);
    v237 = (v232[18] + 31) & 0xFFFFFFFFFFFFFFE0;
    v238 = v237 + v232[20];
    v239 = v237 | 0x18;
    v232[18] = v237 | 0x18;
    *v237 = *(v198 + 1472);
    *(v237 + 8) = *(v198 + 1488);
    *(v237 + 16) = *(v198 + 1520);
  }

  else
  {
    v238 = 0;
    v239 = v232[18];
    v235 = 0xFFFFFFFFLL;
  }

  v240 = v239 + 2479;
  if (v240 > v232[17])
  {
    if (AGX::DataBufferAllocator<44ul>::growNoInline(v232, 3, 0))
    {
      v240 = v232[18] + 2479;
      if (v240 > v232[17])
      {
        goto LABEL_245;
      }

      goto LABEL_203;
    }
  }

  else
  {
LABEL_203:
    v232[19] = v240;
  }

  v262 = v197;
  v241 = &v233[v234];
  v242 = *(a1 + 2160);
  v243 = (*(v242 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
  v244 = *(v242 + 160);
  *(v242 + 144) = v243 + 2448;
  memcpy(v243, (v198 + 1304), 0x110uLL);
  memcpy((v243 + 272), v198, 0x880uLL);
  AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(1, v233, v264, 0, v238, v243 + v244, 0, v263, v245, v246, v247, v248, 0, v235);
  v249 = (v241 >> 16) & 0xFFC00000;
  v250 = v241 >> 6;
  if (*v266 == 1)
  {
    v251 = *(a1 + 2160);
    LODWORD(v268) = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v251, 48, 1, 0, 0, &v268);
    v252 = *(a1 + 2160);
    ++*(a1 + 1940);
    v253 = *(v252 + 752);
    *v253 = 0x400010000;
    *(v253 + 8) = 0x4000000000000000;
    *(v253 + 24) = 0;
    *(v253 + 32) = 0;
    *(v253 + 16) = 0;
    *(v253 + 40) = v249;
    *(v253 + 44) = v250;
    *(v252 + 752) = v253 + 48;
  }

  else
  {
    *v145 = 0x400010000;
    *(v145 + 8) = 0x4000000000000000;
    *(v145 + 24) = 0;
    *(v145 + 32) = 0;
    *(v145 + 16) = 0;
    *(v145 + 40) = v249;
    *(v145 + 44) = v250;
  }

  if (*v266 == 1)
  {
    v254 = __ROR8__(*(*(v265 + 416) + *v67 + 8) + (*(v262 + 52) + *(v262 + 56) * v266[2]), 32) & 0xFFFFFFFF0000FFFFLL;
    v255 = *(a1 + 2160);
    LODWORD(v268) = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v255, 8, 1, 0, 0, &v268);
    v256 = *(a1 + 2160);
    v257 = *(v256 + 752);
    *v257 = v254 | 0x30000000;
    *(v256 + 752) = v257 + 1;
  }

  if (!*(a1 + 2292))
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(a1, 22, 0, 0);
    *(a1 + 2306) = 0;
  }

  if (*(*(v265 + 424) + 24) == 1)
  {
    v258 = *(*(a1 + 2336) + 348);
  }

  else
  {
    v258 = 1;
  }

  v259 = *(a1 + 27832) ^ 1;
  v260 = v258 & (*(a1 + 1922) | v259) & 1;
  *(a1 + 2306) |= v258 & (*(a1 + 1923) | v259) & 1;
  *(*(a1 + 2328) + 586) |= v260;
}

void *std::deque<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block,std::allocator<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x40;
  v3 = v1 - 64;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block *,std::allocator<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block *>>::emplace_back<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block *&>(a1, &v10);
}

void sub_29CD5FE38(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block *,std::allocator<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block *>>::emplace_back<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 2336);
  if (*(a1 + 2292) == 1 && *(a1 + 27624) || (*(a1 + 28248) & 1) != 0 || (v6 = *(v5 + 16), *(v6 + 4088) != 1) || (*(v5 + 346) & 1) != 0 || *(v6 + 3916) || *(v6 + 3912))
  {

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelWithImprovedIndirectCommon(a1, a2, a3, 0);
  }

  else
  {
    v15[5] = v3;
    v15[6] = v4;
    if (*(a1 + 1896))
    {
      v8 = a1;
      v9 = a2;
      MTLResourceListAddResource();
      a2 = v9;
      a1 = v8;
    }

    v10 = MEMORY[0x29EDC5638];
    v11 = a2;
    v12 = a1;
    IOGPUResourceListAddResource();
    v13 = *(v11 + *v10 + 8);
    memset(v14, 0, sizeof(v14));
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeIndirectKernelWithThreadgroupOptimization(v12, v13 + a3, 1, v14, v15);
  }
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeIndirectKernelWithThreadgroupOptimization(uint64_t a1, uint64_t a2, char a3, void *a4, unint64_t *a5)
{
  v9 = a1 + 24576;
  if (*(a1 + 2292))
  {
    if (**(a1 + 28200) != 96)
    {
      goto LABEL_8;
    }

    v10 = a1;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(a1, 22, 0, 0);
    a1 = v10;
    *(v10 + 2306) = 0;
    if (*(v10 + 2292) != 1 || *(v9 + 3048))
    {
      goto LABEL_8;
    }

    v11 = (v10 + 28192);
    v12 = (v10 + 28200);
    v13 = (v10 + 28208);
    a1 = v10;
  }

  else
  {
    v34 = 0;
    v11 = (a1 + 28192);
    v12 = (a1 + 28200);
    v13 = &v34;
    v10 = a1;
  }

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(a1, 22, v11, v12, v13);
  a1 = v10;
LABEL_8:
  v14 = *(*(a1 + 2336) + 16);
  v15 = *(a1 + 28200);
  v16 = *v15;
  *v15 = v16 + 1;
  v17 = *(a1 + 28192) + 48 * v16;
  v18 = a4[1];
  *(v17 + 28) = *a4;
  *(v17 + 30) = v18;
  *(v17 + 32) = a4[2];
  *(v17 + 34) = *(v14 + 4064);
  *(v17 + 36) = *(v14 + 4068);
  *(v17 + 38) = 96;
  *(v17 + 40) = *(v9 + 3608);
  *v17 = a2;
  *(v17 + 44) = a3;
  v19 = *(a1 + 1864) - 1;
  if (v19 > 6)
  {
    v20 = 10;
  }

  else
  {
    v20 = dword_29D2FEFE8[v19];
  }

  v21 = v20;
  if (((1 << v20) & 0xFFF00000480) != 0 && !*(a1 + 32 * v20 + 72))
  {
    v32 = a1;
    v33 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v20, 0);
    a1 = v32;
    if ((v33 & 1) == 0)
    {
LABEL_27:
      abort();
    }
  }

  v22 = a1 + 64;
  v23 = (a1 + 64 + 32 * v21);
  v24 = v23[1] + 47;
  if (v24 <= *v23)
  {
    goto LABEL_14;
  }

  v30 = a1;
  v31 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v21, 0);
  a1 = v30;
  if (v31)
  {
    v24 = v23[1] + 47;
    if (v24 > *v23)
    {
      goto LABEL_27;
    }

LABEL_14:
    v23[2] = v24;
  }

  v25 = *(a1 + 1864) - 1;
  if (v25 > 6)
  {
    v26 = 10;
  }

  else
  {
    v26 = qword_29D2FF008[v25];
  }

  v27 = v22 + 32 * v26;
  v28 = (*(v27 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = *(v27 + 24);
  *(v27 + 8) = v28 + 32;
  if (a5)
  {
    *a5 = v28;
  }

  *(*(a1 + 28192) + 48 * v16 + 8) = v28 + v29;

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelWithImprovedIndirectCommon(a1, 0, 0, (v28 + v29));
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelWithImprovedIndirectCommon(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = MEMORY[0x29EDC5638];
  if (a2)
  {
    v5 = (*(a2 + *MEMORY[0x29EDC5638] + 8) + a3);
    v6 = a1;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeIndirectComputeParameters(a1, a2, a3, 0x23u);
    a1 = v6;
  }

  else
  {
    v5 = a4;
    *(a1 + 27560) |= 0x800000000uLL;
    *(a1 + 27592) |= 1u;
    *(*(a1 + 22496) + 1304) = a4;
    *(a1 + 22784) = *(*(a1 + 48) + 224) + *v4;
  }

  v7 = *(a1 + 168);
  v8 = v7 + 12;
  if ((v7 + 12) <= *(a1 + 160))
  {
LABEL_5:
    *(a1 + 176) = v8;
    goto LABEL_6;
  }

  v12 = a1;
  v13 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
  a1 = v12;
  v7 = *(v12 + 168);
  if (v13)
  {
    v8 = v7 + 12;
    if ((v7 + 12) > *(v12 + 160))
    {
      abort();
    }

    goto LABEL_5;
  }

LABEL_6:
  v9 = *(a1 + 184) + v7;
  *(a1 + 168) = v7 + 12;
  *v7 = 0x100000001;
  *(v7 + 8) = 1;
  *(a1 + 26696) = v9;
  v10 = *(a1 + 22496);
  *(v10 + 1312) = v9;
  *(a1 + 22792) = *(*(a1 + 48) + 224) + *v4;
  *(a1 + 27560) |= 0x1000000000uLL;
  *(a1 + 27592) |= 1u;
  *(v10 + 28) = 0x100000001;
  *(v10 + 36) = 1;
  *(v10 + 40) = 0xFFFF000000010001;
  *(v10 + 48) = -65536;
  *(v10 + 52) = 0;
  *(v10 + 60) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v11 = *(a1 + 2336);

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::performEnqueueKernel(a1, 0x16u, v5, v11, 2);
}

uint64_t *AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeIndirectComputeParameters(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(a1, a2, a3, a4, 0);
  v6 = MEMORY[0x29EDC5638];
  v7 = *MEMORY[0x29EDC5638];
  v8 = a2 + v7;
  v9 = *(a2 + v7 + 16);
  if ((v9 & 0x7FFFFFFF80) != 0 && (v9 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v11 = *(a1 + 2008);
    if (*(v11[2].i64[1] + 480) == 1)
    {
      v12 = v11[3];
      v13 = v11[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v12), vceqzq_s64(v13))))))
      {
        v14 = (a2 + v7);
        if ((v9 & 0x1000000000000000) != 0)
        {
          v14 = *v8;
        }

        v15 = *v14;
        if (v15)
        {
          v16 = *v15;
          v17 = v15[1];
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v15), vceqzq_s64(v17))))))
          {
            v18 = vandq_s8(v17, v13);
            v19 = v18.u64[1];
            if (v18.i64[1])
            {
              v20 = 3;
            }

            else
            {
              v19 = v18.i64[0];
              if (v18.i64[0])
              {
                v20 = 2;
              }

              else
              {
                v21 = vandq_s8(v16, v12);
                v19 = v21.u64[1];
                if (v21.i64[1])
                {
                  v20 = 1;
                }

                else
                {
                  v19 = v21.i64[0];
                  if (!v21.i64[0])
                  {
                    goto LABEL_24;
                  }

                  v20 = 0;
                }
              }
            }

            v22 = &v11->i8[8 * v20];
            v23 = *(v22 + 10);
            v24 = 1 << (__clz(v19) ^ 0x3Fu);
            v25 = (v24 & v23) != 0;
            if ((v24 & (*(v22 + 14) | v23)) != 0)
            {
              v26 = (*(v8 + 8) + 127) & 0xFFFFFFFFFFFFFF80;
              v27 = (a2 + v7);
              if ((v9 & 0x1000000000000000) != 0)
              {
                v27 = *v8;
              }

              v31[0] = v27;
              v31[1] = v26;
              v32 = v9 >> 7;
              v33 = 1;
              v34 = v25;
              ResourceTracker<_ResourceGroupBinding>::addResource(v11, v31, *(v8 + 48), 1);
            }
          }
        }
      }
    }
  }

LABEL_24:
  result = IOGPUResourceListAddResource();
  if (*(a1 + 2292) == 1)
  {
    v29 = *(a1 + 27616);
    if (!v29)
    {
      operator new();
    }

    v30 = *(a2 + *v6 + 48);
    LODWORD(v31[0]) = 1;
    return ResourceTracker<_ResourceTrackerBinding>::addResource((v29 + 8), v31, v30, 1);
  }

  return result;
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadgroupsIndirectInternal(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 2336);
  if (a4[1] * *a4 * a4[2] > *(v4 + 456))
  {
    return;
  }

  v7 = a1 + 24576;
  if (*(a1 + 2292) == 1 && *(a1 + 27624) || (*(a1 + 28248) & 1) != 0 || (v8 = *(v4 + 16), *(v8 + 4088) != 1) || (*(v4 + 346) & 1) != 0 || *(v8 + 3916) || *(v8 + 3912))
  {
    v9 = MEMORY[0x29EDC5638];
    v10 = *(a2 + *MEMORY[0x29EDC5638] + 8);
    v11 = a1;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeIndirectComputeParameters(a1, a2, a3, 0x23u);
    v12 = v11[21];
    v13 = v12 + 3;
    if ((v12 + 3) > v11[20])
    {
      v37 = AGX::DataBufferAllocator<44ul>::growNoInline(v11 + 3, 3, 0);
      v14 = v11;
      v12 = v11[21];
      if (!v37)
      {
        goto LABEL_12;
      }

      v13 = v12 + 3;
      if ((v12 + 3) > v11[20])
      {
        abort();
      }
    }

    else
    {
      v14 = v11;
    }

    v14[22] = v13;
LABEL_12:
    v15 = v12 + v14[23];
    v14[21] = v12 + 3;
    v16 = *a4;
    v17 = a4[1];
    v18 = *(a4 + 4);
    *v12 = *a4;
    v12[1] = v17;
    v12[2] = v18;
    v14[3337] = v15;
    v19 = v14[2812];
    *(v19 + 1312) = v15;
    v14[2849] = *(v14[6] + 224) + *v9;
    v14[3445] |= 0x1000000000uLL;
    *(v7 + 3016) |= 1u;
    *(v19 + 28) = v16;
    *(v19 + 32) = v17;
    *(v19 + 36) = v18;
    *(v19 + 40) = v18 * v17 * v16;
    *(v19 + 42) = v17 * v16;
    if ((v17 * v16) == 1)
    {
      v20 = 0;
      LOWORD(v21) = -1;
    }

    else
    {
      v22 = (v17 * v16);
      v23 = __clz((v17 * v16 - 1)) - 16;
      if (v22 == 1)
      {
        v24 = 16;
      }

      else
      {
        v24 = v23;
      }

      v20 = 15 - v24;
      v21 = ((1 << (v24 ^ 0x1F)) + v22 - 1) / v22 - 1;
    }

    *(v19 + 44) = v20;
    *(v19 + 46) = v21;
    if (v16 == 1)
    {
      v25 = 0;
      LOWORD(v26) = -1;
    }

    else
    {
      v27 = v16;
      v28 = v16 - 1;
      v29 = __clz((v16 - 1)) - 16;
      if (v27 == 1)
      {
        v30 = 16;
      }

      else
      {
        v30 = v29;
      }

      v25 = 15 - v30;
      v26 = ((1 << (v30 ^ 0x1F)) + v28) / v27 - 1;
    }

    *(v19 + 48) = v25;
    *(v19 + 50) = v26;
    *(v19 + 52) = 0;
    *(v19 + 60) = 0;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    v31 = v14[292];

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::performEnqueueKernel(v14, 0x16u, (v10 + a3), v31, 1);
    return;
  }

  v38 = *a4;
  v39 = a4[2];
  if (*(a1 + 1896))
  {
    v32 = a1;
    v33 = a2;
    MTLResourceListAddResource();
    a2 = v33;
    a1 = v32;
  }

  v34 = MEMORY[0x29EDC5638];
  v35 = a2;
  v36 = a1;
  IOGPUResourceListAddResource();
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeIndirectKernelWithThreadgroupOptimization(v36, *(v35 + *v34 + 8) + a3, 0, &v38, &v40);
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(uint64_t a1, uint64_t *a2, _DWORD *a3)
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
  *(a1 + 26688) = v5;
  v9 = *(a1 + 22496);
  *(v9 + 1304) = v5;
  v10 = *(*(a1 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(a1 + 22784) = v10;
  *(a1 + 27560) |= 0x800000000uLL;
  *(a1 + 27592) |= 1u;
  v11 = v5 + 12;
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 4);
  v3[3] = *a2;
  v3[4] = v13;
  v3[5] = v14;
  *(a1 + 26696) = v11;
  *(v9 + 1312) = v11;
  *(a1 + 22792) = v10;
  *(a1 + 27560) |= 0x1000000000uLL;
  *(a1 + 27592) |= 1u;
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

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::performEnqueueKernel(a1, 0x16u, 0, v24, 0);
}

void sub_29CD62020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29CD621C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffers_impl<AGXBuffer>(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5, int *a6)
{
  v10 = a2;
  v11 = result;
  if (a5 && *(result + 1896))
  {
    v12 = a5;
    v13 = a2;
    do
    {
      if (*v13)
      {
        result = MTLResourceListAddResource();
      }

      ++v13;
      --v12;
    }

    while (v12);
  }

  if (a5)
  {
    v14 = v11 + 26408;
    v15 = v11 + 26960;
    v16 = v11 + 22504;
    v17 = MEMORY[0x29EDC5638];
    v18 = a6;
    LODWORD(result) = a4;
    v19 = a5;
    while (1)
    {
      v20 = *v10;
      if (a4 <= 0x22)
      {
        *(v11 + 26128 + 8 * a4) = 0;
      }

      if (v20)
      {
        break;
      }

      v30 = *(v11 + 2312);
      *(v14 + 8 * result) = v30;
      *(v15 + 8 * result) = 0;
      if (result >= 0x1F)
      {
        v48 = *(v11 + 22496) + 8 * (result - 31);
        *(v48 + 1272) = v30;
        *(v48 + 1576) = 0;
        *(v16 + 8 * result) = 0;
        if (a6)
        {
LABEL_31:
          v47 = *v18;
          if (result > 0x1E)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }

      else
      {
        v31 = *(v11 + 22488);
        v32 = v31 + 8 * result;
        *v32 = v30;
        *(v32 + 248) = 0;
        v33 = *(v11 + 2312);
        *(v31 + 4 * result + 17516) = 0;
        *(v32 + 17640) = 0;
        *(v32 + 17644) = v33 >> 8;
        *(v16 + 8 * result) = 0;
        if (a6)
        {
          goto LABEL_31;
        }
      }

LABEL_34:
      v47 = 0;
      if (result > 0x1E)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(*(v11 + 22488) + 4 * result + 17392) = v47;
LABEL_10:
      result = (result + 1);
      v18 += 2;
      ++a3;
      ++v10;
      if (!--v19)
      {
        goto LABEL_42;
      }
    }

    v21 = v20 + *v17;
    v22 = *(v21 + 8);
    v25 = v21 + 16;
    v23 = *(v21 + 16);
    v24 = *(v25 + 8);
    *(v14 + 8 * result) = v22;
    *(v15 + 8 * result) = v24;
    v26 = *a3;
    v27 = *a3 + v22;
    if (result >= 0x1F)
    {
      v34 = *(v11 + 22496) + 8 * (result - 31);
      *(v34 + 1272) = v27;
      *(v34 + 1576) = v24 + v26;
    }

    else
    {
      v28 = *(v11 + 22488);
      v29 = v28 + 8 * result;
      *v29 = v27;
      *(v29 + 248) = v24 + v26;
      *(v28 + 4 * result + 17516) = v23;
      *(v29 + 17640) = v23;
      *(v29 + 17644) = v22 >> 8;
    }

    *(v16 + 8 * result) = v20 + *v17;
    v35 = *(v11 + 2008);
    v36 = v35[2].i64[1];
    if (*(v36 + 480) == 1)
    {
      v37 = v35[3];
      v38 = v35[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v37), vceqzq_s64(v38))))))
      {
        v39 = v20 + *v17;
        if ((*(v39 + 23) & 0x10) != 0)
        {
          v39 = *v39;
        }

        v40 = *v39;
        if (!v40)
        {
          goto LABEL_29;
        }

        v41 = *(v40 + 16);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v40), vceqzq_s64(v41))))))
        {
          v42 = vandq_s8(v41, v38);
          v43 = v42.u64[1];
          if (v42.i64[1])
          {
            v44 = 3;
          }

          else
          {
            v43 = v42.i64[0];
            if (v42.i64[0])
            {
              v44 = 2;
            }

            else
            {
              v49 = vandq_s8(*v40, v37);
              v43 = v49.u64[1];
              if (v49.i64[1])
              {
                v44 = 1;
              }

              else
              {
                v44 = 0;
                v40 = 0;
                v45 = 0;
                v43 = v49.i64[0];
                if (!v49.i64[0])
                {
                  goto LABEL_30;
                }
              }
            }
          }

          v50 = &v35->i8[8 * v44];
          v51 = __clz(v43) ^ 0x3F;
          v40 = (*(v50 + 10) >> v51) & 1;
          v45 = (*(v50 + 14) >> v51) & 1;
LABEL_30:
          v46 = (v36 + 8 * (result > 0x3F));
          *v46 = *v46 & ~(1 << result) | (v40 << result);
          v46[20] = v46[20] & ~(1 << result) | (v45 << result);
          v46[40] &= ~(1 << result);
          if (a6)
          {
            goto LABEL_31;
          }

          goto LABEL_34;
        }
      }
    }

    v40 = 0;
LABEL_29:
    v45 = 0;
    goto LABEL_30;
  }

LABEL_42:
  v52 = a5 + a4;
  if (a5 + a4 == 128)
  {
    v53 = -1;
  }

  else
  {
    v53 = ~(-1 << (a5 + a4));
  }

  v54 = v52 >= 0x40;
  if (v52 < 0x40)
  {
    v55 = ~(-1 << (a5 + a4));
  }

  else
  {
    v55 = -1;
  }

  if (!v54)
  {
    v53 = 0;
  }

  v56 = -1 << a4;
  if (a4 < 0x40)
  {
    v56 = -1;
  }

  v57 = -1 << a4;
  if (a4 >= 0x40)
  {
    v57 = 0;
  }

  *(v11 + 27560) |= v55 & v57;
  *(v11 + 27568) |= v53 & v56;
  *(v11 + 27592) |= 1u;
  return result;
}

void *AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setIntersectionFunctionTable(void *result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  if (!a2)
  {
    v12 = &result[a3];
    v12[2813] = 0;
    v12[3266] = 0;
    if (a3 >= 0x1F)
    {
      v34 = result[2812] + 8 * (a3 - 31);
      *(v34 + 1272) = 0;
      *(v34 + 1576) = 0;
      v35 = &result[a3];
      v35[3301] = result[289];
      v35[3370] = 0;
    }

    else
    {
      v13 = result[2811];
      v14 = (v13 + 8 * a3);
      *v14 = 0;
      v14[31] = 0;
      v15 = &result[a3];
      v15[3301] = result[289];
      v15[3370] = 0;
      *(v13 + 4 * a3 + 17516) = 0;
      v14[2205] = 0;
    }

    goto LABEL_25;
  }

  v5 = *(a2 + 312);
  v6 = *(v5 + 112);
  if (a3 >= 0x1F)
  {
    v16 = result[2812] + 8 * (a3 - 31);
    *(v16 + 1272) = v6;
    *(v16 + 1576) = 0;
    v8 = a3;
    v17 = &result[a3];
    v17[3301] = result[289];
    v17[3370] = 0;
  }

  else
  {
    v7 = result[2811];
    v8 = a3;
    v9 = a3;
    v10 = (v7 + v9 * 8);
    *v10 = v6;
    v10[31] = 0;
    v11 = &result[v9];
    v11[3301] = result[289];
    v11[3370] = 0;
    *(v7 + 4 * a3 + 17516) = 0;
    v10[2205] = 0;
  }

  v18 = [*(v5 + 8) backingResource];
  v19 = MEMORY[0x29EDC5638];
  v4[v8 + 2813] = v18 + *MEMORY[0x29EDC5638];
  v20 = v4[251];
  v21 = v20[2].i64[1];
  if (*(v21 + 480) != 1)
  {
    goto LABEL_15;
  }

  v22 = v20[3];
  v23 = v20[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v22), vceqzq_s64(v23))))) & 1) == 0)
  {
    goto LABEL_15;
  }

  v24 = v18 + *v19;
  if ((*(v24 + 23) & 0x10) != 0)
  {
    v24 = *v24;
  }

  v25 = *v24;
  if (!v25)
  {
    goto LABEL_16;
  }

  v26 = *(v25 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v25), vceqzq_s64(v26))))) & 1) == 0)
  {
LABEL_15:
    v25 = 0;
LABEL_16:
    v30 = 0;
    goto LABEL_17;
  }

  v27 = vandq_s8(v26, v23);
  v28 = v27.u64[1];
  if (v27.i64[1])
  {
    v29 = 3;
LABEL_31:
    v37 = &v20->i8[8 * v29];
    v38 = __clz(v28) ^ 0x3F;
    v25 = (*(v37 + 10) >> v38) & 1;
    v30 = (*(v37 + 14) >> v38) & 1;
    goto LABEL_17;
  }

  v28 = v27.i64[0];
  if (v27.i64[0])
  {
    v29 = 2;
    goto LABEL_31;
  }

  v36 = vandq_s8(*v25, v22);
  v28 = v36.u64[1];
  if (v36.i64[1])
  {
    v29 = 1;
    goto LABEL_31;
  }

  v29 = 0;
  v25 = 0;
  v30 = 0;
  v28 = v36.i64[0];
  if (v36.i64[0])
  {
    goto LABEL_31;
  }

LABEL_17:
  v31 = (v21 + 8 * (a3 > 0x3F));
  *v31 = *v31 & ~(1 << a3) | (v25 << a3);
  v31[20] = v31[20] & ~(1 << a3) | (v30 << a3);
  v31[40] &= ~(1 << a3);
  [*(v5 + 8) backingResource];
  result = v4[237];
  if (result)
  {
    result = MTLResourceListAddResource();
  }

  v32 = *(v5 + 64);
  for (i = *(v5 + 72); v32 != i; v32 += 2)
  {
    result = *v32;
    if (*v32)
    {
      AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(result);
      result = IOGPUResourceListAddResource();
    }
  }

LABEL_25:
  v4[(a3 > 0x3F) + 3445] |= 1 << a3;
  *(v4 + 6898) |= 1u;
  return result;
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    if (a3 > 0x1E)
    {
      v4 = (*(result + 22496) + 8 * (a3 - 31) + 1272);
      v3 = a3;
    }

    else
    {
      v3 = a3;
      v4 = (*(result + 22488) + 8 * a3);
    }

    *v4 = *(a2 + 376);
    v9 = (result + 8 * v3);
    v9[3266] = 0;
    v10 = MEMORY[0x29EDC5638];
    v11 = a2 + *MEMORY[0x29EDC5638];
    v12 = *(v11 + 8);
    v15 = v11 + 16;
    v14 = *(v11 + 16);
    v13 = *(v15 + 8);
    v9[3301] = v12;
    v9[3370] = v13;
    if (a3 >= 0x1F)
    {
      *(*(result + 22496) + 8 * (a3 - 31) + 1576) = v13;
    }

    else
    {
      v16 = *(result + 22488);
      v17 = v16 + 8 * v3;
      *(v16 + 4 * v3 + 17516) = v14;
      *(v17 + 248) = v13;
      *(v17 + 17640) = v14;
      *(v17 + 17644) = v12 >> 8;
    }

    v9[2813] = a2 + *v10;
    v18 = *(result + 2008);
    v19 = v18[2].i64[1];
    if (*(v19 + 480) == 1)
    {
      v20 = v18[3];
      v21 = v18[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v20), vceqzq_s64(v21))))))
      {
        v22 = a2 + *v10;
        if ((*(v22 + 23) & 0x10) != 0)
        {
          v22 = *v22;
        }

        v23 = *v22;
        if (!v23)
        {
          goto LABEL_19;
        }

        v24 = *(v23 + 16);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v23), vceqzq_s64(v24))))))
        {
          v25 = vandq_s8(v24, v21);
          v26 = v25.u64[1];
          if (v25.i64[1])
          {
            v27 = 3;
          }

          else
          {
            v26 = v25.i64[0];
            if (v25.i64[0])
            {
              v27 = 2;
            }

            else
            {
              v33 = vandq_s8(*v23, v20);
              v26 = v33.u64[1];
              if (v33.i64[1])
              {
                v27 = 1;
              }

              else
              {
                v27 = 0;
                v23 = 0;
                v28 = 0;
                v26 = v33.i64[0];
                if (!v33.i64[0])
                {
                  goto LABEL_20;
                }
              }
            }
          }

          v34 = &v18->i8[8 * v27];
          v35 = __clz(v26) ^ 0x3F;
          v23 = (*(v34 + 10) >> v35) & 1;
          v28 = (*(v34 + 14) >> v35) & 1;
LABEL_20:
          v29 = 8 * (a3 > 0x3F);
          v30 = (v19 + v29);
          *v30 = *v30 & ~(1 << a3) | (v23 << a3);
          v30[20] = v30[20] & ~(1 << a3) | (v28 << a3);
          v30[40] &= ~(1 << a3);
          *(result + v29 + 27560) |= 1 << a3;
          *(result + 27592) |= 1u;
          result = *(result + 1896);
          if (result)
          {
            return MTLResourceListAddResource();
          }

          return result;
        }
      }
    }

    v23 = 0;
LABEL_19:
    v28 = 0;
    goto LABEL_20;
  }

  if (a3 >= 0x1F)
  {
    v31 = *(result + 22496) + 8 * (a3 - 31);
    *(v31 + 1272) = 0;
    v32 = (result + 8 * a3);
    v32[3266] = 0;
    v32[2813] = 0;
    *(v31 + 1576) = 0;
    v32[3301] = *(result + 2312);
    v32[3370] = 0;
  }

  else
  {
    v5 = *(result + 22488);
    v6 = 8 * a3;
    v7 = (v5 + v6);
    *v7 = 0;
    v8 = (result + v6);
    v8[3266] = 0;
    v8[2813] = 0;
    v7[31] = 0;
    v8[3301] = *(result + 2312);
    v8[3370] = 0;
    *(v5 + 4 * a3 + 17516) = 0;
    v7[2205] = 0;
  }

  return result;
}

void *AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBytes(uint64_t a1, const void *a2, size_t a3, unsigned int a4, int a5)
{
  if (a4 <= 0x1E)
  {
    *(*(a1 + 22488) + 4 * a4 + 17392) = a5;
    v6 = a3 + 15;
    v7 = (a3 + 15) | 0xF;
    v8 = *(a1 + 168);
    v9 = v8 + v7;
    if ((v8 + v7) <= *(a1 + 160))
    {
      goto LABEL_3;
    }

    v22 = a2;
    v23 = a3;
    v24 = a1;
    v25 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
    a1 = v24;
    v8 = *(v24 + 168);
    if (!v25)
    {
      a3 = v23;
      a2 = v22;
      goto LABEL_4;
    }

    v9 = v8 + v7;
    a3 = v23;
    a2 = v22;
    if ((v8 + v7) <= *(v24 + 160))
    {
LABEL_3:
      *(a1 + 176) = v9;
LABEL_4:
      v10 = a4;
      v11 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = &v11[*(a1 + 184)];
      *(a1 + 168) = &v11[v6 & 0xFFFFFFFFFFFFFFF0];
      goto LABEL_9;
    }

LABEL_21:
    abort();
  }

  v13 = a3 + 15;
  v14 = (a3 + 15) | 0xF;
  v15 = *(a1 + 168);
  v16 = v15 + v14;
  if ((v15 + v14) > *(a1 + 160))
  {
    v26 = a2;
    v27 = a3;
    v28 = a1;
    v29 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
    a1 = v28;
    v15 = *(v28 + 168);
    if (!v29)
    {
      a3 = v27;
      a2 = v26;
      goto LABEL_7;
    }

    v16 = v15 + v14;
    a3 = v27;
    a2 = v26;
    if ((v15 + v14) > *(v28 + 160))
    {
      goto LABEL_21;
    }
  }

  *(a1 + 176) = v16;
LABEL_7:
  v11 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v11[*(a1 + 184)];
  *(a1 + 168) = &v11[v13 & 0xFFFFFFFFFFFFFFF0];
  if (a4 > 0x22)
  {
    goto LABEL_10;
  }

  v10 = a4;
LABEL_9:
  *(a1 + 8 * v10 + 26128) = 0;
LABEL_10:
  *(a1 + 8 * (a4 > 0x3F) + 27560) |= 1 << a4;
  *(a1 + 27592) |= 1u;
  if (a4 >= 0x1F)
  {
    *(*(a1 + 22496) + 8 * (a4 - 31) + 1272) = v12;
    *(a1 + 8 * a4 + 22504) = *(*(a1 + 48) + 224) + *MEMORY[0x29EDC5638];
  }

  else
  {
    v17 = *(a1 + 22488);
    v18 = 8 * a4;
    v19 = v17 + v18;
    *v19 = v12;
    v20 = *(*(a1 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v17 + 4 * a4 + 17516) = a3;
    *(a1 + v18 + 22504) = v20;
    *(v19 + 17640) = a3;
    *(v19 + 17644) = v12 >> 8;
  }

  return memcpy(v11, a2, a3);
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::issueProgressMarkerDispatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 1872);
  v5 = *(v4 + 848);
  block.i64[0] = MEMORY[0x29EDCA5F8];
  block.i64[1] = 3221225472;
  v22 = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE47createComputeProgressMarkerDriverShaderIfNeededEP19AGXG18PFamilyDevice_block_invoke;
  v23 = &unk_29F340FF0;
  v24 = v4;
  v25 = v5;
  if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createComputeProgressMarkerDriverShaderIfNeeded(AGXG18PFamilyDevice *)::dispatch_once_pred == -1)
  {
    if (!*(v5 + 17200))
    {
      return;
    }
  }

  else
  {
    v12 = a2;
    v13 = a3;
    dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createComputeProgressMarkerDriverShaderIfNeeded(AGXG18PFamilyDevice *)::dispatch_once_pred, &block);
    a3 = v13;
    a2 = v12;
    if (!*(v5 + 17200))
    {
      return;
    }
  }

  v6 = *(a1 + 712);
  if (!v6)
  {
    v14 = a3;
    v15 = a2;
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 20, 0))
    {
      goto LABEL_19;
    }

    v6 = *(a1 + 712);
    a2 = v15;
    a3 = v14;
  }

  v7 = v6 + 1;
  if ((v6 + 1) > *(a1 + 704))
  {
    v16 = a3;
    v17 = a2;
    v18 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 20, 0);
    v6 = *(a1 + 712);
    if (!v18)
    {
      a2 = v17;
      a3 = v16;
      goto LABEL_6;
    }

    v7 = v6 + 1;
    a2 = v17;
    a3 = v16;
    if ((v6 + 1) > *(a1 + 704))
    {
LABEL_19:
      abort();
    }
  }

  *(a1 + 720) = v7;
LABEL_6:
  v8 = &v6[*(a1 + 728)];
  *(a1 + 712) = v6 + 1;
  *v6 = 0;
  v9 = *(a1 + 8);
  block.i64[0] = v6;
  block.i64[1] = a3;
  v22 = a2;
  std::vector<AGX::CommandBuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ProgressMarker,std::allocator<AGX::CommandBuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ProgressMarker>>::push_back[abi:nn200100](v9 + 544, block.i8);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(a1, *(*(*(a1 + 1872) + 848) + 17200));
  if (!*(a1 + 712))
  {
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, 0x14u);
  }

  v10 = *(*(a1 + 48) + 1312) + *MEMORY[0x29EDC5638];
  *(a1 + 26864) = v8;
  *(*(a1 + 22496) + 1480) = v8;
  *(a1 + 22960) = v10;
  v11 = *(a1 + 27592);
  *(a1 + 27560) |= 0x200000000000000uLL;
  *(a1 + 27592) = v11 | 1;
  if (*(a1 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(a1, 22, 0, 0);
  }

  block = vdupq_n_s64(1uLL);
  v22 = 1;
  v19 = block;
  v20 = 1;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(a1, block.i64, &v19);
  if (*(a1 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(a1, 22, 0, 0);
  }
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::~ComputeContext(uint64_t a1)
{
  v2 = *(a1 + 27544);
  if (v2)
  {
    for (i = *(v2 + 512); i; *(v2 + 512) = i)
    {
      v4 = *(v2 + 520);
      v5 = *(v2 + 8 * __clz(__rbit64(i)));
      os_unfair_lock_lock((v4 + 16));
      *v5 = *v4;
      *v4 = v5;
      os_unfair_lock_unlock((v4 + 16));
      i = (*(v2 + 512) - 1) & *(v2 + 512);
    }

    MEMORY[0x29ED520D0](v2, 0x1020C40C758419CLL);
  }

  v6 = *(a1 + 27552);
  if (v6)
  {
    for (j = *(v6 + 512); j; *(v6 + 512) = j)
    {
      v8 = *(v6 + 520);
      v9 = *(v6 + 8 * __clz(__rbit64(j)));
      os_unfair_lock_lock((v8 + 16));
      *v9 = *v8;
      *v8 = v9;
      os_unfair_lock_unlock((v8 + 16));
      j = (*(v6 + 512) - 1) & *(v6 + 512);
    }

    MEMORY[0x29ED520D0](v6, 0x1020C40C758419CLL);
  }

  v10 = *(a1 + 27616);
  if (v10)
  {
    v11 = v10[8];
    if (v11)
    {
      do
      {
        v12 = *v11;
        operator delete(v11);
        v11 = v12;
      }

      while (v12);
    }

    v13 = v10[6];
    v10[6] = 0;
    if (v13)
    {
      operator delete(v13);
    }

    v14 = v10[3];
    if (v14)
    {
      do
      {
        v15 = *v14;
        operator delete(v14);
        v14 = v15;
      }

      while (v15);
    }

    v16 = v10[1];
    v10[1] = 0;
    if (v16)
    {
      operator delete(v16);
    }

    MEMORY[0x29ED520D0](v10, 0x10A0C40B4CCAB04);
  }

  v17 = *(a1 + 28488);
  if (v17)
  {
    *(a1 + 28496) = v17;
    operator delete(v17);
  }

  v18 = *(a1 + 28464);
  if (v18)
  {
    *(a1 + 28472) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 28280);
  if (v19)
  {
    v20 = *(a1 + 28288);
    v21 = *(a1 + 28280);
    if (v20 != v19)
    {
      do
      {
        v22 = *(v20 - 24);
        if (v22)
        {
          *(v20 - 16) = v22;
          operator delete(v22);
        }

        v20 -= 64;
      }

      while (v20 != v19);
      v21 = *(a1 + 28280);
    }

    *(a1 + 28288) = v19;
    operator delete(v21);
  }

  v23 = *(a1 + 28256);
  if (v23)
  {
    *(a1 + 28264) = v23;
    operator delete(v23);
  }

  std::deque<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block,std::allocator<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block>>::~deque[abi:nn200100](a1 + 28040);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 27656));
  v24 = *(a1 + 2072);
  if (v24)
  {
    free(*v24);
    MEMORY[0x29ED520D0](v24, 0x1020C4014030ADELL);
  }

  v25 = *(a1 + 1824);
  v26 = *(a1 + 1832);
  if (v25 != v26)
  {
    do
    {
      v27 = *v25++;
      free(v27);
    }

    while (v25 != v26);
    v25 = *(a1 + 1824);
  }

  if (v25)
  {
    *(a1 + 1832) = v25;
    operator delete(v25);
  }

  return a1;
}

void AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyBufferToBufferImpl(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a6 + a5;
  v7 = a6 + a3;
  if (a6 + a5 <= a3 || v7 <= a5)
  {
    v9 = a1 + 1;

    AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(v9, a2, a3, a4, a5, a6, 0, 0);
    return;
  }

  v10 = a3 - a5;
  if (a3 == a5)
  {
    return;
  }

  if (v10 >= 0)
  {
    v11 = a3 - a5;
  }

  else
  {
    v11 = a5 - a3;
  }

  if (v11 >= 0x8000)
  {
    v12 = v11 & 0x7FFFFFFFFFFFFFF0;
  }

  else
  {
    v12 = 0x8000;
  }

  v114 = v11;
  v123 = a5;
  if (!(v11 >> 15))
  {
    v13 = a2;
    v14 = a1;
    v15 = a1[8];
    v16 = a3;
    if (v15)
    {
LABEL_17:
      if ((-v16 & 0xFuLL) >= a6)
      {
        v17 = a6;
      }

      else
      {
        v17 = -v16 & 0xFLL;
      }

      v18 = (a6 - v17) & 0xFLL;
      goto LABEL_28;
    }

    v105 = *a1;
    v106 = *(*a1 + 648);
    if (!v106)
    {
      v109 = a6;
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v105 + 3, 18, 0))
      {
        goto LABEL_117;
      }

      v106 = v105[81];
      v14 = a1;
      a5 = v123;
      v16 = a3;
      a6 = v109;
    }

    v107 = v106 + 0x8000;
    if (v107 <= v105[80])
    {
      goto LABEL_111;
    }

    v110 = a6;
    v111 = AGX::DataBufferAllocator<44ul>::growNoInline(v105 + 3, 18, 0);
    a6 = v110;
    a5 = v123;
    if (!v111)
    {
      goto LABEL_112;
    }

    v107 = v105[81] + 0x8000;
    if (v107 <= v105[80])
    {
LABEL_111:
      v105[82] = v107;
LABEL_112:
      v108 = *v14;
      *(v108 + 648) = *(*v14 + 648) + 0x8000;
      v15 = *(*(v108 + 48) + 1184);
      v14[8] = v15;
      v13 = a2;
      goto LABEL_17;
    }

LABEL_117:
    abort();
  }

  LODWORD(v10) = 1 << __clz(__rbit64(v10));
  if (v10 >= 0x10)
  {
    v10 = 16;
  }

  else
  {
    v10 = v10;
  }

  v16 = a3;
  if (((-a3 - v10) | -v10) + v10 >= a6)
  {
    v17 = a6;
  }

  else
  {
    v17 = ((-a3 - v10) | -v10) + v10;
  }

  v18 = (a6 - v17) & (v10 - 1);
  v13 = a2;
  v14 = a1;
  v15 = a1[8];
LABEL_28:
  v19 = v7 - v18;
  v20 = v6 - v18;
  v21 = v17 + v16;
  v130 = v17 + a5;
  v126 = v18;
  v128 = a6 - v17 - v18;
  v22 = v12 - 1;
  v23 = v15;
  v24 = v15 + 72;
  v119 = v15 + 72;
  v115 = v12 - 1;
  if (v16 >= a5)
  {
    v112 = v17 + v16;
    v121 = v17;
    v35 = v18 + v22;
    v36 = a4;
    if (v35 >= v12)
    {
      v37 = v35 / v12;
      if (v114 >= 0x8000)
      {
        v62 = 0;
        v36 = a4;
        do
        {
          v63 = (v37 + ~v62) * v12;
          if (v126 - v63 >= v12)
          {
            v64 = v12;
          }

          else
          {
            v64 = v126 - v63;
          }

          v65 = v36;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(a1 + 1, v13, v63 + v19, v36, v63 + v20, v64, 0, 0);
          v36 = v65;
          ++v62;
        }

        while (v62 < v37);
      }

      else
      {
        v38 = 0;
        v36 = a4;
        v117 = v35 / v12;
        v39 = v15;
        do
        {
          v40 = (v37 + ~v38) * v12;
          if (v18 - v40 >= v12)
          {
            v41 = v12;
          }

          else
          {
            v41 = v18 - v40;
          }

          v42 = *(v24 + *MEMORY[0x29EDC5638]);
          v43 = v40 + v20;
          v44 = v20;
          v45 = v19;
          v46 = v36;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(a1 + 1, v39, v42, v36, v43, v41, 0, 0);
          v47 = v40 + v45;
          v13 = a2;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(a1 + 1, a2, v47, v39, v42, v41, 0, 0);
          v24 = v119;
          v36 = v46;
          v19 = v45;
          v20 = v44;
          v37 = v117;
          v18 = v126;
          ++v38;
        }

        while (v38 < v117);
      }
    }

    v66 = v128;
    if (v128 + v115 >= v12)
    {
      v67 = (v128 + v115) / v12;
      if (v114 >= 0x8000)
      {
        v85 = 0;
        v36 = a4;
        do
        {
          v86 = (v67 + ~v85) * v12;
          if (v128 - v86 >= v12)
          {
            v87 = v12;
          }

          else
          {
            v87 = v128 - v86;
          }

          v88 = v36;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(a1 + 1, v13, v86 + v112, v36, v86 + v130, v87, 0, 0);
          v36 = v88;
          ++v85;
        }

        while (v85 < v67);
      }

      else
      {
        v68 = 0;
        v127 = a1[8];
        v69 = MEMORY[0x29EDC5638];
        v36 = a4;
        do
        {
          v70 = (v67 + ~v68) * v12;
          if (v66 - v70 >= v12)
          {
            v71 = v12;
          }

          else
          {
            v71 = v66 - v70;
          }

          v72 = *(v127 + 72 + *v69);
          v73 = v36;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(a1 + 1, v127, v72, v36, v70 + v130, v71, 0, 0);
          v67 = (v128 + v115) / v12;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(a1 + 1, a2, v70 + v112, v127, v72, v71, 0, 0);
          v36 = v73;
          v66 = v128;
          ++v68;
        }

        while (v68 < v67);
      }
    }

    v89 = v121;
    if (v121 + v115 >= v12)
    {
      v90 = v36;
      v91 = (v121 + v115) / v12;
      if (v114 >= 0x8000)
      {
        v101 = 0;
        do
        {
          v102 = (v91 + ~v101) * v12;
          v103 = v89 - v102;
          if (v103 >= v12)
          {
            v104 = v12;
          }

          else
          {
            v104 = v103;
          }

          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(a1 + 1, a2, v102 + a3, v90, v102 + v123, v104, 0, 0);
          v89 = v121;
          ++v101;
        }

        while (v101 < v91);
      }

      else
      {
        v92 = 0;
        v93 = a1[8];
        do
        {
          v94 = (v91 + ~v92) * v12;
          if (v89 - v94 >= v12)
          {
            v95 = v12;
          }

          else
          {
            v95 = v89 - v94;
          }

          v96 = *(v93 + 72 + *MEMORY[0x29EDC5638]);
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(a1 + 1, v93, v96, v90, v94 + v123, v95, 0, 0);
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(a1 + 1, a2, v94 + a3, v93, v96, v95, 0, 0);
          v89 = v121;
          ++v92;
        }

        while (v92 < v91);
      }
    }
  }

  else
  {
    v116 = v7 - v18;
    v25 = v17 + v22;
    v26 = a4;
    v27 = v14;
    if (v25 >= v12)
    {
      v124 = v25 / v12;
      if (v114 >= 0x8000)
      {
        v48 = 0;
        v26 = a4;
        v49 = a3;
        v50 = v13;
        do
        {
          v51 = v17 - v12;
          if (v17 >= v12)
          {
            v52 = v12;
          }

          else
          {
            v52 = v17;
          }

          v53 = v26;
          v54 = a5;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(v27 + 1, v50, v49, v26, a5, v52, 0, 0);
          v26 = v53;
          ++v48;
          a5 = v54 + v12;
          v49 += v12;
          v17 = v51;
        }

        while (v48 < v124);
      }

      else
      {
        v28 = 0;
        v26 = a4;
        v29 = a3;
        v30 = v23;
        do
        {
          v120 = v17 - v12;
          if (v17 >= v12)
          {
            v31 = v12;
          }

          else
          {
            v31 = v17;
          }

          v32 = *(v24 + *MEMORY[0x29EDC5638]);
          v33 = v26;
          v34 = a5;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(a1 + 1, v30, v32, v26, a5, v31, 0, 0);
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(a1 + 1, a2, v29, v30, v32, v31, 0, 0);
          v24 = v119;
          v17 = v120;
          v26 = v33;
          ++v28;
          a5 = v34 + v12;
          v29 += v12;
          v27 = a1;
        }

        while (v28 < v124);
      }
    }

    v55 = v128;
    v56 = v27;
    v57 = v116;
    if (v128 + v115 >= v12)
    {
      v125 = (v128 + v115) / v12;
      if (v114 >= 0x8000)
      {
        v74 = 0;
        v26 = a4;
        do
        {
          v75 = v55 - v12;
          if (v55 >= v12)
          {
            v76 = v12;
          }

          else
          {
            v76 = v55;
          }

          v77 = v26;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(v56 + 1, a2, v21, v26, v130, v76, 0, 0);
          v26 = v77;
          ++v74;
          v130 += v12;
          v21 += v12;
          v55 = v75;
        }

        while (v74 < v125);
      }

      else
      {
        v58 = 0;
        v122 = v56[8];
        v26 = a4;
        do
        {
          v129 = v55 - v12;
          if (v55 >= v12)
          {
            v59 = v12;
          }

          else
          {
            v59 = v55;
          }

          v60 = *(v122 + 72 + *MEMORY[0x29EDC5638]);
          v61 = v26;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(a1 + 1, v122, v60, v26, v130, v59, 0, 0);
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(a1 + 1, a2, v21, v122, v60, v59, 0, 0);
          v26 = v61;
          ++v58;
          v130 += v12;
          v21 += v12;
          v55 = v129;
        }

        while (v58 < v125);
      }
    }

    v78 = v126;
    if (v126 + v115 >= v12)
    {
      v79 = (v126 + v115) / v12;
      if (v114 >= 0x8000)
      {
        v97 = v26;
        v98 = 0;
        do
        {
          v99 = v78 - v12;
          if (v78 >= v12)
          {
            v100 = v12;
          }

          else
          {
            v100 = v78;
          }

          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(a1 + 1, a2, v57, v97, v20, v100, 0, 0);
          ++v98;
          v20 += v12;
          v57 += v12;
          v78 = v99;
        }

        while (v98 < v79);
      }

      else
      {
        v80 = 0;
        v81 = a1[8];
        do
        {
          v82 = v78 - v12;
          if (v78 >= v12)
          {
            v83 = v12;
          }

          else
          {
            v83 = v78;
          }

          v84 = *(v81 + 72 + *MEMORY[0x29EDC5638]);
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(a1 + 1, v81, v84, a4, v20, v83, 0, 0);
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(a1 + 1, a2, v57, v81, v84, v83, 0, 0);
          ++v80;
          v20 += v12;
          v57 += v12;
          v78 = v82;
        }

        while (v80 < v79);
      }
    }
  }
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a1 + 4096;
  if ((a2 & 0xFFFFFFFE) == 0x16 && *(a1 + 2184))
  {
    v9 = a3;
    v10 = a4;
    AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::patchCDMControlStreamAndReset(a1 + 2152, a1, *(a1 + 5024), *(a1 + 5032), *(a1 + 5040));
    a4 = v10;
    a3 = v9;
  }

  if (*(v8 + 1504) == 1)
  {
    v11 = *(a1 + 5616);
    if (*(a1 + 5608) != v11)
    {
      *(v11 - 8) = 1;
      *(v11 - 7) = *(a1 + 2306);
      v12 = *(a1 + 5640);
      v13 = *(v12 - 32);
      v14 = *(v12 - 36) + 1;
      *(v12 - 36) = v14;
      if (*(a1 + 5660) < (v13 + v14))
      {
        v15 = *(a1 + 4976) != 0;
        v16 = *(a1 + 4980);
        v32 = 1;
        agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, 24, 0, v15, v16, &v32);
        ++*(a1 + 5660);
      }
    }
  }

  else if ((a2 - 22) <= 3)
  {
    v17 = a4 ^ 1 | a5;
    if (a3)
    {
      if (*(a1 + 2306))
      {
        v18 = 1610748414;
      }

      else
      {
        v18 = 1610744318;
      }

      if (v17)
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 | 0x400;
      }
    }

    else
    {
      if (*(a1 + 2306))
      {
        v20 = 1610617184;
      }

      else
      {
        v20 = 1610613088;
      }

      if (v17)
      {
        v19 = v20;
      }

      else
      {
        v19 = v20 | 0x400;
      }

      {
      }
    }

    v21 = *(v8 + 869);
    v22 = *(a1 + 4976) != 0;
    v23 = *(a1 + 4980);
    v32 = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(a2, a1 + 24, 4, v21, v22, v23, &v32);
    v24 = a1 + 32 * a2;
    v26 = *(v24 + 72);
    v25 = (v24 + 72);
    *v26 = v19;
    *v25 = v26 + 1;
    if (a5)
    {
      v27 = *(v8 + 869);
      v28 = *(a1 + 4976) != 0;
      v29 = *(a1 + 4980);
      v32 = 0;
      agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(a2, a1 + 24, 4, v27, v28, v29, &v32);
      v30 = *v25;
      *v30 = 1610614018;
      *v25 = v30 + 1;
    }

    v31 = *(a1 + 5192);
    if (*(a1 + 5188) < v31)
    {
      *(a1 + 5188) = v31;
    }

    *(a1 + 5192) = 0;
  }
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, uint64_t *a5)
{
  if (*(a1 + 5600))
  {
    return;
  }

  if (*a4 && !**a4)
  {
    v10 = *a5;
    *&v11 = 0x6000000060000000;
    *(&v11 + 1) = 0x6000000060000000;
    *v10 = v11;
    *(v10 + 16) = v11;
    *(v10 + 32) = 0x6000000060000000;
  }

  v12 = *(a1 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(a1, *(*(*(a1 + 1872) + 848) + 17104));
  if (*(a1 + 2292) == 1)
  {
    v13 = 4608;
  }

  else
  {
    v13 = 48;
  }

  v14 = v13 | 0xF;
  v15 = *(a1 + 160);
  v16 = *(a1 + 168);
  v17 = v16 + (v13 | 0xF);
  if (v17 <= v15)
  {
LABEL_9:
    *(a1 + 176) = v17;
    goto LABEL_10;
  }

  v27 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
  v15 = *(a1 + 160);
  v16 = *(a1 + 168);
  if (v27)
  {
    v17 = v16 + v14;
    if (v16 + v14 > v15)
    {
      goto LABEL_27;
    }

    goto LABEL_9;
  }

LABEL_10:
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = v18 + *(a1 + 184);
  v20 = v18 + v13;
  *(a1 + 168) = v18 + v13;
  *(a1 + 4912) |= 0x4000000000uLL;
  *(a1 + 4944) |= 1u;
  *(*(a1 + 4544) + 1328) = v19;
  v21 = MEMORY[0x29EDC5638];
  *(a1 + 4608) = *(*(a1 + 48) + 224) + *MEMORY[0x29EDC5638];
  *a3 = v18;
  v22 = v20 + 31;
  if (v20 + 31 <= v15)
  {
LABEL_11:
    *(a1 + 176) = v22;
    goto LABEL_12;
  }

  v28 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
  v20 = *(a1 + 168);
  if (v28)
  {
    v22 = v20 + 31;
    if (v20 + 31 <= *(a1 + 160))
    {
      goto LABEL_11;
    }

LABEL_27:
    abort();
  }

LABEL_12:
  v23 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v23 + *(a1 + 184);
  v25 = *v21;
  *a4 = v23;
  *v23 = 0;
  *(a1 + 168) = v23 + 8;
  *(a1 + 4912) |= 0x8000000000uLL;
  *(a1 + 4944) |= 1u;
  *(*(a1 + 4544) + 1336) = v24;
  *(a1 + 4616) = *(*(a1 + 48) + 224) + v25;
  v31 = xmmword_29D2F1C60;
  v32 = 1;
  v29 = xmmword_29D2F1C70;
  v30 = 1;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsInternal(a1, a2, &v31, &v29);
  v26 = a1 + 32 * a2;
  if (((1 << a2) & 0xFFF339E0480) != 0 && !*(v26 + 72))
  {
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, a2);
  }

  *a5 = *(v26 + 72) - 40;
  if (*(a1 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(a1, a2, 0, 0, 0);
  }

  if (v12)
  {

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(a1, v12);
  }
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(uint64_t a1, uint64_t a2)
{
  *(a1 + 2336) = a2;
  *(a1 + 2308) = 0;
  AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((a1 + 5688), (a2 + 220));
  v3 = *(a1 + 2336);
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v4 + 64);
    v6 = *(a1 + 4544);
    *(v6 + 1520) = *(v4 + 56);
    *(v6 + 1824) = v5;
    if (*(v4 + 80) == 1)
    {
      *(a1 + 4800) = *(v4 + 48);
      *(a1 + 4912) |= 0x4000000000000000uLL;
      *(a1 + 4944) |= 1u;
    }
  }

  else
  {
    v7 = *(a1 + 4544);
    *(v7 + 1520) = *(a1 + 2312);
    *(v7 + 1824) = 0;
  }

  if ((*(v3[2] + 2404) & 0x20) != 0)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setBuffer_impl<AGXBuffer>(a1, *(*(*(a1 + 1872) + 848) + 17072));
    v3 = *(a1 + 2336);
  }

  if (*(v3 + 25) == 1)
  {
    v8 = *(a1 + 2312);
    *(a1 + 2312) = 0;
    v9 = v3[15];
    if (v9)
    {
      v10 = *(v9 + 64);
      v11 = *(a1 + 4544);
      v11[184] = *(v9 + 56);
      v11[222] = v10;
      if (*(v9 + 80) == 1)
      {
        *(a1 + 4752) = *(v9 + 48);
        *(a1 + 4912) |= 0x100000000000000uLL;
        *(a1 + 4944) |= 1u;
      }

      v12 = v3[17];
      if (v12)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = *(a1 + 4544);
      v11[184] = 0;
      v11[222] = 0;
      v12 = v3[17];
      if (v12)
      {
LABEL_12:
        v13 = *(v12 + 64);
        v11[186] = *(v12 + 56);
        v11[224] = v13;
        if (*(v12 + 80) == 1)
        {
          *(a1 + 4768) = *(v12 + 48);
          *(a1 + 4912) |= 0x400000000000000uLL;
          *(a1 + 4944) |= 1u;
        }

        goto LABEL_16;
      }
    }

    v11[186] = *(a1 + 2312);
    v11[224] = 0;
LABEL_16:
    *(a1 + 2312) = v8;
  }
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsInternal(uint64_t result, uint64_t a2, _DWORD *a3, void *a4)
{
  if (a4[1] * *a4 * a4[2] > *(*(result + 2336) + 456))
  {
    return result;
  }

  v4 = *(result + 168);
  v5 = v4 + 24;
  if ((v4 + 24) > *(result + 160))
  {
    v29 = a3;
    v30 = a4;
    v31 = a2;
    v32 = result;
    v33 = AGX::DataBufferAllocator<44ul>::growNoInline(result + 24, 3, 0);
    result = v32;
    v4 = *(v32 + 168);
    if (!v33)
    {
      a2 = v31;
      a4 = v30;
      a3 = v29;
      goto LABEL_4;
    }

    v5 = v4 + 24;
    a2 = v31;
    a4 = v30;
    a3 = v29;
    if ((v4 + 24) > *(v32 + 160))
    {
      abort();
    }
  }

  *(result + 176) = v5;
LABEL_4:
  v6 = *(result + 184) + v4;
  *(result + 168) = v4 + 24;
  v7 = *a3;
  v8 = a3[2];
  v9 = a3[4];
  *v4 = *a3;
  *(v4 + 4) = v8;
  *(v4 + 8) = v9;
  v10 = *(result + 4544);
  *(v10 + 1304) = v6;
  v11 = *(*(result + 48) + 224) + *MEMORY[0x29EDC5638];
  *(result + 4584) = v11;
  *(result + 4912) |= 0x800000000uLL;
  *(result + 4944) |= 1u;
  *(v4 + 12) = 0x100000001;
  *(v4 + 20) = 1;
  *(v10 + 1312) = v6 + 12;
  *(result + 4592) = v11;
  *(result + 4912) |= 0x1000000000uLL;
  *(result + 4944) |= 1u;
  v12 = *a4;
  v13 = a4[1];
  v14 = *(a4 + 4);
  *(v10 + 28) = *a4;
  *(v10 + 32) = v13;
  *(v10 + 36) = v14;
  v15 = v13 * v12;
  *(v10 + 40) = v14 * v15;
  *(v10 + 42) = v15;
  if (v15 == 1)
  {
    v16 = 0;
    LOWORD(v17) = -1;
  }

  else
  {
    v18 = v15;
    v19 = v15 - 1;
    v20 = __clz((v15 - 1)) - 16;
    if (v18 == 1)
    {
      v21 = 16;
    }

    else
    {
      v21 = v20;
    }

    v16 = 15 - v21;
    v17 = ((1 << (v21 ^ 0x1F)) + v19) / v18 - 1;
  }

  *(v10 + 44) = v16;
  *(v10 + 46) = v17;
  if (v12 == 1)
  {
    v22 = 0;
    LOWORD(v23) = -1;
  }

  else
  {
    v24 = v12;
    v25 = v12 - 1;
    v26 = __clz((v12 - 1)) - 16;
    if (v24 == 1)
    {
      v27 = 16;
    }

    else
    {
      v27 = v26;
    }

    v22 = 15 - v27;
    v23 = ((1 << (v27 ^ 0x1F)) + v25) / v24 - 1;
  }

  *(v10 + 48) = v22;
  *(v10 + 50) = v23;
  *(v10 + 52) = v7;
  *(v10 + 56) = v8;
  *(v10 + 60) = v9;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v28 = *(result + 2336);

  return AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::performEnqueueKernel(result, a2, 0, v28, 3);
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::performEnqueueKernel(uint64_t a1, unsigned int a2, size_t a3, uint64_t a4, int a5)
{
  v309 = *MEMORY[0x29EDCA608];
  v9 = a1 + 2388;
  v294 = a5;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::prepareForEnqueue(a1, 0);
  v293 = v9;
  v280 = a2;
  if (*(v9 + 3212))
  {
    v10 = 33;
  }

  else
  {
    v10 = a2;
  }

  v291 = v10;
  v11 = *(a4 + 16);
  *(*(a1 + 2328) + 591) |= *(a4 + 345);
  v12 = &qword_2A17A1000;
  {
    goto LABEL_5;
  }

  while (1)
  {
    {
      *(v12 + 1264) = 0;
    }

LABEL_5:
    if (v12[158])
    {
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::performEnqueueKernel(eAGXDataBufferPools,unsigned long long,AGX::HAL300::ComputePipeline const*,unsigned int,unsigned long long *)::per_shader_extra_space = 0;
      }

      v13 = *(a1 + 2328);
      if (AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::performEnqueueKernel(eAGXDataBufferPools,unsigned long long,AGX::HAL300::ComputePipeline const*,unsigned int,unsigned long long *)::per_shader_extra_space)
      {
        *(v13 + 168) = (*(v11 + 1528) - AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::performEnqueueKernel(eAGXDataBufferPools,unsigned long long,AGX::HAL300::ComputePipeline const*,unsigned int,unsigned long long *)::per_shader_extra_space + *(v11 + 1824) + 4095) & 0xFFFFFFFFFFFFF000;
      }
    }

    else
    {
      v13 = *(a1 + 2328);
    }

    *(v13 + 176) = *(a1 + 2240);
    *(v13 + 184) = *(a1 + 2248);
    v14 = 4 * *(v11 + 3912);
    *(a1 + 5152) = v14;
    if (*(v11 + 3916))
    {
      v15 = 0;
      v16 = *(a1 + 4544);
      v17 = v16 + 1896;
      v18 = v11 + 3920;
      v19 = v16 + 2036;
      do
      {
        *(v17 + 4 * *(v18 + 4 * v15)) = v14 | 0x80000000;
        v14 = *(a1 + 5152) + *(v19 + 4 * *(v18 + 4 * v15));
        *(a1 + 5152) = v14;
        ++v15;
      }

      while (v15 < *(v11 + 3916));
    }

    if (*(a4 + 360))
    {
      *(a1 + 5152) = v14 + *(*(a1 + 4544) + 28) * *(a4 + 360) * *(*(a1 + 4544) + 32) * *(*(a1 + 4544) + 36) + (*(*(a4 + 16) + 4068) >> 5) * *(a4 + 364);
    }

    if (!a3)
    {
      v20 = *(a4 + 16);
      if (*(v20 + 4088) == 1 && (*(a4 + 346) & 1) == 0 && !*(v20 + 3916) && !*(v20 + 3912))
      {
        AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::directTGSizeOptimization(a1 + 2072, v11, *(a1 + 4544), &v294);
      }
    }

    v21 = *(a1 + 2344);
    if (v11 != v21)
    {
      if (v21)
      {
        v22 = v21[151];
        v23 = v21[86];
        v24 = ~v21[150].i64[0];
        v25 = ~v21[150].i64[1];
        v26 = ~v21[85].i64[0];
        v27 = ~v21[85].i64[1];
        v28 = vmvnq_s8(v22);
        v29 = vmvnq_s8(v23);
      }

      else
      {
        v29.i64[0] = -1;
        v29.i64[1] = -1;
        v27 = -1;
        v26 = -1;
        v25 = -1;
        v24 = -1;
        v28.i64[0] = -1;
        v28.i64[1] = -1;
      }

      *(a1 + 2344) = v11;
      v30 = *(v11 + 1368) & v27 | *(v11 + 2408) & v25;
      v31 = (*(v11 + 1360) & v26 | *(v11 + 2400) & v24) & 0xFFFFFFFF80000000;
      if (v31 | v30)
      {
        *(a1 + 4912) |= v31;
        *(a1 + 4920) |= v30;
        *(a1 + 4944) |= 1u;
      }

      v32 = vorrq_s8(vandq_s8(*(v11 + 1376), v29), vandq_s8(*(v11 + 2416), v28));
      if (*&v32 != 0)
      {
        *(a1 + 4928) = vorrq_s8(*(a1 + 4928), v32);
        *(a1 + 4944) |= 2u;
      }

      AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::bindResources(*(a1 + 2336));
      v37 = *(a1 + 2336);
      v38 = *(v37 + 208) + *(v37 + 172);
      v39 = *(v37 + 16);
      v40 = *(v39 + 1308);
      v41 = *(a1 + 4544);
      if (v41[14] * v41[13] * v41[15])
      {
        v42 = v41[8] * v41[7] * v41[9];
      }

      else
      {
        v42 = 0;
      }

      v43 = (*(v39 + 4084) + 3) >> 2;
      v44 = *(a1 + 2104);
      v45 = *(a1 + 2096);
      if (v44 <= 1)
      {
        v44 = 1;
      }

      v46 = 4 * v44 * v43;
      if (v46 * v45.i32[0] * v45.i32[1])
      {
        v33 = 0x1F0000001FLL;
        v45 = vand_s8(vneg_s32(vclz_s32(vadd_s32(v45, -1))), 0x1F0000001FLL);
        v47 = v46 * (1 << v45.i8[0] << v45.i8[4]);
      }

      else
      {
        v47 = 0;
      }

      v48 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(a1 + 5048, *(v37 + 208) + *(v37 + 172), v40, *(v37 + 184), *(a1 + 5152), v47, v42, *&v45, *&v33, v34, v35, v36);
      v49 = *(v37 + 608);
      if (v49)
      {
        if (((v48 | AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((a1 + 5048), v49)) & 1) == 0)
        {
LABEL_38:
          if (!v38)
          {
            goto LABEL_39;
          }

LABEL_104:
          if (**MEMORY[0x29EDC56B0])
          {
            IOGPUDeviceTraceEvent();
          }

          goto LABEL_39;
        }
      }

      else if ((v48 & 1) == 0)
      {
        goto LABEL_38;
      }

      *(a1 + 5584) |= 0x10000000000000uLL;
      AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 5048, *(a1 + 2328) + 336, 0);
      if (!v38)
      {
        goto LABEL_39;
      }

      goto LABEL_104;
    }

LABEL_39:
    v50 = *(a1 + 2328);
    v290 = v294;
    if (v294)
    {
      v51 = 2;
LABEL_41:
      *(v50 + 608) = v51;
      goto LABEL_43;
    }

    if (!*(v50 + 608))
    {
      if (*(v11 + 2480) == 0)
      {
        v51 = *(v11 + 2112);
      }

      else
      {
        v51 = 1;
      }

      goto LABEL_41;
    }

LABEL_43:
    v52 = *(a1 + 4944);
    __n = a3;
    if (v52)
    {
      v53 = *(a1 + 4920) & *(v11 + 2408);
      v54 = *(a1 + 2336);
      if (*(v54 + 24) == 1)
      {
        if (*(v54 + 136))
        {
          v55 = ((*(v54 + 120) != 0) << 56) | 0x400000000000000;
        }

        else
        {
          v55 = (*(v54 + 120) != 0) << 56;
        }

        if (*v54)
        {
          v56 = v55 | 0x4000000000000000;
        }

        else
        {
          v56 = v55;
        }

        v57 = ~v56;
      }

      else
      {
        v57 = -1;
      }

      v58 = *(a1 + 4912) & *(v11 + 2400) & v57;
      v303 = v58;
      v296 = v53;
      *v298 = *(v11 + 1360);
      if (v58)
      {
LABEL_54:
        v59 = __clz(__rbit64(v58));
        v60 = &v303;
        v61 = v59;
        goto LABEL_57;
      }

      while (1)
      {
        v58 = v296;
        if (!v296)
        {
          break;
        }

        v59 = __clz(__rbit64(v296));
        v61 = v59 | 0x40;
        v60 = &v296;
LABEL_57:
        *v60 = (v58 & ~(1 << v59));
        if ((*(v298 | (8 * (v61 > 0x3F))) >> v61))
        {
          v62 = 3;
        }

        else
        {
          v62 = 1;
        }

        v63 = *(a1 + 4552 + 8 * (v61 - 31));
        if (v63)
        {
          if (v61 - 37 > 0x1D || ((1 << (v61 - 37)) & 0x3E687661) == 0)
          {
            AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(a1 + 2008), v63, 0, v61, v62);
          }

          IOGPUResourceListAddResource();
        }

        v58 = v303;
        if (v303)
        {
          goto LABEL_54;
        }
      }

      v52 = *(a1 + 4944);
    }

    if ((v52 & 2) != 0)
    {
      v64 = *(a1 + 4536);
      if (v64)
      {
        v65 = *(v11 + 2416) & *(a1 + 4928) & v64[4];
        v66 = (*(v11 + 2424) & *(a1 + 4936) & v64[5]);
        *v298 = v65;
        v303 = v66;
        v67 = *(v11 + 1376);
        v68 = *(v11 + 1384);
        v69 = v64[6];
        v70 = v64[7];
        while (1)
        {
          if (v65)
          {
            v71 = v298;
          }

          else
          {
            v65 = v303;
            if (!v303)
            {
              *(a1 + 2306) |= (v64[8] & v67 | v64[9] & v68) != 0;
              *(*(a1 + 2328) + 586) |= (v69 & v67 | v70 & v68) != 0;
              break;
            }

            v71 = &v303;
          }

          *v71 = (v65 & (v65 - 1));
          v65 = *v298;
        }
      }
    }

    *(a1 + 4944) = 0;
    *(a1 + 4912) = 0u;
    *(a1 + 4928) = 0u;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::reserveEnqueueDatabufferSpace(a1, v291, a3 != 0);
    if (!*(*(a1 + 1912) + 520))
    {
      if (*(a1 + 5432) || (AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::restartComputePass(a1, v280), *(v293 + 3054) &= ~1u, AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::reserveEnqueueDatabufferSpace(a1, v291, a3 != 0), !*(*(a1 + 1912) + 520)))
      {
        *(v293 + 3054) |= 2u;
      }
    }

    v72 = *(a4 + 348);
    v73 = *(v293 + 2796) ^ 1;
    v74 = v72 & (*(a1 + 1922) | v73);
    *(a1 + 2306) |= v72 & (*(a1 + 1923) | v73);
    *(*(a1 + 2328) + 586) |= v74;
    if (v290 != 2 && (*(v11 + 4080) & 1) == 0 && ((*(*(a1 + 4544) + 32) * *(*(a1 + 4544) + 28) * *(*(a1 + 4544) + 36)) & 0x1F) != 0)
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    GPUAddress = AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, v291);
    v76 = *(a1 + 1864);
    if (v76 == 7)
    {
      v78 = v291 == 31;
      v77 = 43;
    }

    else if (v76 == 3)
    {
      v78 = v291 == 31;
      v77 = 40;
    }

    else
    {
      v77 = v291;
      if (v76 != 1)
      {
        goto LABEL_89;
      }

      v78 = v291 == 31;
      v77 = 37;
    }

    if (!v78)
    {
      v77 = v291;
    }

LABEL_89:
    if (((1 << v77) & 0xFFF339E0480) != 0 && !*(a1 + 32 * v77 + 72))
    {
      AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, v77);
      v76 = *(a1 + 1864);
      if (v76 == 7)
      {
LABEL_107:
        v80 = v291 == 31;
        v79 = 43;
        goto LABEL_108;
      }
    }

    else if (v76 == 7)
    {
      goto LABEL_107;
    }

    if (v76 == 3)
    {
      v80 = v291 == 31;
      v79 = 40;
    }

    else
    {
      v79 = v291;
      if (v76 != 1)
      {
        goto LABEL_110;
      }

      v80 = v291 == 31;
      v79 = 37;
    }

LABEL_108:
    if (!v80)
    {
      v79 = v291;
    }

LABEL_110:
    v289 = a1 + 64;
    v81 = a1 + 64 + 32 * v79;
    v82 = *(a1 + 5152);
    v83 = (*(v11 + 4084) + 3) >> 2;
    v84 = *(a1 + 2104);
    v85 = *(a1 + 2096);
    if (v84 <= 1)
    {
      v86 = 1;
    }

    else
    {
      v86 = v84;
    }

    v87 = 4 * v86 * v83;
    v88 = *(a1 + 2096);
    v89 = HIDWORD(*(a1 + 2096));
    v90 = v87 * v85.i32[0] * v85.i32[1];
    if (v90)
    {
      v91 = vand_s8(vneg_s32(vclz_s32(vadd_s32(v85, -1))), 0x1F0000001FLL);
      v90 = v87 * (1 << v91.i8[0] << v91.i8[4]);
    }

    v92 = *(a1 + 4536);
    v93 = *(a1 + 5440);
    v282 = *(v81 + 8);
    *(a1 + 4244) = v90;
    *(a1 + 4248) = v82;
    v303 = 0;
    v304 = 0;
    v306[0] = 0;
    v305 = 0;
    *&v306[1] = 0x3000000A5;
    v308 = 0;
    v307 = 0;
    v286 = v93;
    if (v89 * v88 * v87 && (v94 = 1 << -__clz(v88 - 1), v95 = -__clz(v89 - 1), (v94 << v95) * v87))
    {
      v307 = AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::SpecLM::encodeImageBlockData(v83, v86, v94, 1 << (v95 & 0x1F));
      v308 = v96;
      v97 = 0x100000000;
    }

    else
    {
      v97 = 0;
    }

    v12 = (a1 + 2360);
    if (v82)
    {
      ++v97;
    }

    *&v306[3] = v97 | ((v82 << 16) + 4128768) & 0xFFC00000;
    AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::AGX3EncodedInstr<AGXIotoInstruction_SPECLM_0>::AGX3EncodedInstr(&v302, &v303);
    memset(v298, 0, sizeof(v298));
    v299 = 0;
    v300 = 0;
    v301 = 0;
    v98 = *(v11 + 624);
    v283 = GPUAddress;
    if (v98)
    {
      v99 = 3;
      if (!v76)
      {
        v99 = 10;
      }

      switch(v76)
      {
        case 7:
          v99 = 3;
          break;
        case 3:
          v99 = 3;
          break;
        case 1:
          v99 = 3;
          break;
      }

      v102 = v289 + 32 * v99;
      v101 = (*(v102 + 8) + 31) & 0xFFFFFFFFFFFFFFE0;
      v100 = v101 + *(v102 + 24);
      *(v102 + 8) = v101 + v98;
    }

    else
    {
      v100 = 0;
      v101 = 0;
    }

    v103 = ((*(a1 + 232) + 63) & 0xFFFFFFFFFFFFFFC0);
    v287 = *(a1 + 248);
    *(a1 + 232) = &v103[*(*(v11 + 2392) + 8) - **(v11 + 2392)];
    v281 = v302;
    v104 = *(v11 + 1128);
    v105 = *(v11 + 1120);
    v106 = v104 - v105;
    v78 = v104 == v105;
    v107 = *(v11 + 1016);
    v108 = v107 & 1;
    if (v78)
    {
      v108 = 0;
    }

    v285 = v100;
    if (!v98)
    {
      break;
    }

    v109 = *(v11 + 1320);
    a3 = *(v11 + 656);
    v110 = *(v11 + 736);
    v111 = *(v11 + 660);
    v112 = *(v11 + 1024);
    v113 = *(v11 + 1028);
    v114 = a3 + ((*(v11 + 872) - *(v11 + 864)) >> 2);
    v115 = *(v11 + 1352);
    v116 = *(v11 + 1353);
    if (*(v11 + 1352))
    {
      *(v293 + 1348) = vaddw_u32(vdupq_n_s64(v100), *(v11 + 628));
    }

    if (v116)
    {
      *(a1 + 3768) = v100 + *(v11 + 648);
    }

    v117 = v108 + v107;
    if (v113 + v112)
    {
      *(a1 + 3888) = 8 * v114 + v100 + 4 * (v117 + ((v106 >> 1) & 0xFFFFFFFE));
    }

    v284 = v92;
    v279 = v106;
    v276 = v112;
    v277 = v113;
    v278 = v111;
    v275 = 8 * v114;
    v274 = v117;
    if (a3 == v109)
    {
      v118 = 0;
      if (!v109)
      {
        goto LABEL_192;
      }

      goto LABEL_143;
    }

    v272 = v115;
    v273 = v110;
    v271 = v116;
    if (v92)
    {
      v295 = a1 + 2360;
      v296 = v92;
      v123 = &unk_2A23F71E0;
      v303 = &unk_2A23F71E0;
      v304 = &v295;
      v305 = &v296;
      *v306 = &v303;
      v124 = *(v11 + 688);
      v125 = *(v11 + 696);
      if (v124 != v125)
      {
        a4 = 0;
        while (1)
        {
          v297 = *v124;
          if (!*v306)
          {
            goto LABEL_320;
          }

          v127 = (*(**v306 + 48))(*v306, &v297);
          v128 = *(v124 + 1);
          v129 = *(v124 + 2);
          if (v128 == v129)
          {
            v126 = a4;
          }

          else
          {
            do
            {
              v130 = *v128++;
              v126 = (a4 + 1);
              *(v101 + 8 * a4) = *(v127 + 8 * v130);
              LODWORD(a4) = a4 + 1;
            }

            while (v128 != v129);
          }

          v124 += 8;
          a4 = v126;
          if (v124 == v125)
          {
            goto LABEL_165;
          }
        }
      }
    }

    else
    {
      v296 = a1 + 2360;
      v123 = &unk_2A23F7078;
      v303 = &unk_2A23F7078;
      v304 = &v296;
      *v306 = &v303;
      v131 = *(v11 + 688);
      v132 = *(v11 + 696);
      if (v131 != v132)
      {
        a4 = 0;
        while (1)
        {
          LODWORD(v295) = *v131;
          if (!*v306)
          {
            goto LABEL_320;
          }

          v134 = (*(**v306 + 48))(*v306, &v295);
          v135 = *(v131 + 8);
          v136 = *(v131 + 16);
          if (v135 == v136)
          {
            v133 = a4;
          }

          else
          {
            do
            {
              v137 = *v135++;
              v133 = (a4 + 1);
              *(v101 + 8 * a4) = *(v134 + 8 * v137);
              LODWORD(a4) = a4 + 1;
            }

            while (v135 != v136);
          }

          v131 += 32;
          a4 = v133;
          if (v131 == v132)
          {
LABEL_165:
            v138 = *v306;
            if (*v306 == &v303)
            {
              v123 = **v306;
              v92 = v284;
              v100 = v285;
              v139 = v271;
              goto LABEL_170;
            }

            v92 = v284;
            v100 = v285;
            v139 = v271;
            if (*v306)
            {
              (*(**v306 + 40))();
            }

            goto LABEL_171;
          }
        }
      }
    }

    v138 = &v303;
    v92 = v284;
    v139 = v271;
LABEL_170:
    v123[4](v138);
LABEL_171:
    v106 = v279;
    v111 = v278;
    if (*(v11 + 1160))
    {
      v140 = *(v11 + 1144);
      if (v140 != (v11 + 1152))
      {
        do
        {
          *(v101 + 4 * *(v140 + 7)) |= *(v140 + 8);
          v151 = v140[1];
          if (v151)
          {
            do
            {
              v152 = v151;
              v151 = *v151;
            }

            while (v151);
          }

          else
          {
            do
            {
              v152 = v140[2];
              v78 = *v152 == v140;
              v140 = v152;
            }

            while (!v78);
          }

          v140 = v152;
        }

        while (v152 != (v11 + 1152));
      }
    }

    v141 = (v273 + 3) & 0xFFFFFFFC;
    if (!v272)
    {
      v142 = 0;
      v150 = a3 - v109;
      if (!v139)
      {
        goto LABEL_191;
      }

LABEL_187:
      v153 = *(v11 + 1316);
      v154 = (v101 + 8 * v141);
      v155 = *(v92 + 24) + *(v92 + 12);
      if (*(v11 + 2192) == 1)
      {
        if (v153)
        {
          v269 = (*(v11 + 752) + 4 * v142);
          do
          {
            v270 = *v269++;
            *v154++ = *(v155 + 8 * v270);
            --v153;
          }

          while (v153);
        }
      }

      else if (v153 >= 4)
      {
        v156 = v153 >> 2;
        v157 = (*(v11 + 752) + 4 * v142);
        do
        {
          v158 = *v157;
          v157 += 4;
          *v154 = *(v155 + 8 * v158);
          v154 += 4;
          --v156;
        }

        while (v156);
      }

      goto LABEL_191;
    }

    v142 = *(v11 + 1312);
    if (v142 >= 4)
    {
      v143 = *(v92 + 24) + *(v92 + 8);
      v144 = v142 >> 2;
      v145 = *(v11 + 752);
      v146 = (v101 + 8 * v141);
      do
      {
        v147 = *v145;
        v145 += 4;
        v148 = (v143 + 8 * v147);
        v149 = v148[1];
        *v146 = *v148;
        v146[1] = v149;
        v146 += 2;
        --v144;
      }

      while (v144);
    }

    v141 += v142;
    v150 = a3 - v109;
    if (v139)
    {
      goto LABEL_187;
    }

LABEL_191:
    v118 = 8 * v150;
    if (!v109)
    {
LABEL_192:
      if (v111)
      {
        goto LABEL_193;
      }

      goto LABEL_147;
    }

LABEL_143:
    if (v109 >= 4)
    {
      v119 = *(v11 + 2920);
      v120 = v109 >> 2;
      v121 = (v101 + v118);
      do
      {
        v122 = *v119;
        v119 += 4;
        *v121 = v122;
        v121 += 4;
        --v120;
      }

      while (v120);
    }

    v118 += 8 * v109;
    if (v111)
    {
LABEL_193:
      *(a1 + 2432) = v100 + v118 + 8;
      v295 = a1 + 2360;
      v296 = v92;
      v159 = &unk_2A23F7228;
      v303 = &unk_2A23F7228;
      v304 = &v295;
      v305 = &v296;
      *v306 = &v303;
      a3 = *(v11 + 800);
      v160 = *(v11 + 808);
      if (a3 != v160)
      {
        a4 = 0;
        while (1)
        {
          v297 = *a3;
          if (!*v306)
          {
            goto LABEL_320;
          }

          v162 = (*(**v306 + 48))(*v306, &v297);
          v163 = *(a3 + 8);
          v164 = *(a3 + 16);
          if (v163 == v164)
          {
            v161 = a4;
          }

          else
          {
            do
            {
              v165 = *v163++;
              v161 = (a4 + 1);
              *(v101 + v118 + 4 * a4) = *(v162 + 4 * v165);
              LODWORD(a4) = a4 + 1;
            }

            while (v163 != v164);
          }

          a3 += 32;
          a4 = v161;
          if (a3 == v160)
          {
            v166 = *v306;
            if (*v306 == &v303)
            {
              v159 = **v306;
              a3 = __n;
              v92 = v284;
              goto LABEL_206;
            }

            a3 = __n;
            v92 = v284;
            if (*v306)
            {
              (*(**v306 + 40))();
            }

            goto LABEL_207;
          }
        }
      }

      v166 = &v303;
      a3 = __n;
      v92 = v284;
LABEL_206:
      v159[4](v166);
LABEL_207:
      v118 += 4 * v278;
      v106 = v279;
      goto LABEL_208;
    }

LABEL_147:
    a3 = __n;
LABEL_208:
    v167 = v106 >> 2;
    if ((v106 >> 2))
    {
      v168 = v275 + 4 * v274;
      v169 = (v101 + (v168 & 0xFFFFFFFC));
      v170 = *(v92 + 24) + *(v92 + 12);
      v171 = *(v11 + 1120);
      do
      {
        v172 = *v171++;
        *v169++ = *(v170 + 8 * v172);
        LODWORD(v167) = v167 - 1;
      }

      while (v167);
      v118 = v168 + 8 * (v106 >> 2);
    }

    if (v277 == -v276)
    {
      break;
    }

    v174 = (v101 + v118);
    v175 = 4 * *(v11 + 1024);
    memcpy(v174, (v92 + 4 * *(v11 + 1020)), v175);
    v295 = a1 + 2360;
    v296 = v92;
    v176 = &unk_2A23F7270;
    v303 = &unk_2A23F7270;
    v304 = &v295;
    v305 = &v296;
    *v306 = &v303;
    v177 = *(v11 + 1056);
    v178 = *(v11 + 1064);
    if (v177 == v178)
    {
      v185 = &v303;
      a3 = __n;
LABEL_228:
      v92 = v284;
      v176[4](v185);
      if (!v284)
      {
        goto LABEL_229;
      }

LABEL_214:
      v173 = *(v92 + 24) + *(v92 + 4);
      goto LABEL_230;
    }

    a4 = 0;
    v179 = &v174[v175];
    a3 = __n;
    while (1)
    {
      v297 = *v177;
      if (!*v306)
      {
        break;
      }

      v181 = (*(**v306 + 48))(*v306, &v297);
      v182 = *(v177 + 1);
      v183 = *(v177 + 2);
      if (v182 == v183)
      {
        v180 = a4;
      }

      else
      {
        do
        {
          v184 = *v182++;
          v180 = (a4 + 1);
          *&v179[4 * a4] = *(v181 + 4 * v184);
          LODWORD(a4) = a4 + 1;
        }

        while (v182 != v183);
      }

      v177 += 8;
      a4 = v180;
      if (v177 == v178)
      {
        v185 = *v306;
        if (*v306 == &v303)
        {
          v176 = **v306;
          goto LABEL_228;
        }

        v92 = v284;
        if (*v306)
        {
          (*(**v306 + 40))();
        }

        goto LABEL_213;
      }
    }

LABEL_320:
    std::__throw_bad_function_call[abi:nn200100]();
  }

LABEL_213:
  if (v92)
  {
    goto LABEL_214;
  }

LABEL_229:
  v173 = 0;
LABEL_230:
  v186 = *(v11 + 2392);
  memcpy(v103, *v186, *(v186 + 8) - *v186);
  if (*(v186 + 272) == 1)
  {
    v187.i64[0] = v285;
    v187.i64[1] = v285 >> 5;
    *&v103[*(v186 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v103[*(v186 + 276)], vshlq_u8(vqtbl1q_s8(v187, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  if (v173)
  {
    v188 = *(v186 + 224);
    for (i = *(v186 + 232); v188 != i; v188 += 3)
    {
      v190.i64[0] = *(v173 + 8 * v188[1]) + *v188;
      v190.i64[1] = v190.i64[0] >> 5;
      *&v103[v188[2]] = vbslq_s8(xmmword_29D2F17C0, *&v103[v188[2]], vshlq_u8(vqtbl1q_s8(v190, xmmword_29D2F17A0), xmmword_29D2F17B0));
    }
  }

  v191 = *(v186 + 248);
  for (j = *(v186 + 256); v191 != j; v191 += 3)
  {
    v193.i64[0] = v12[v191[1]] + *v191;
    v193.i64[1] = v193.i64[0] >> 5;
    *&v103[v191[2]] = vbslq_s8(xmmword_29D2F17C0, *&v103[v191[2]], vshlq_u8(vqtbl1q_s8(v193, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  if (!*(v186 + 312))
  {
    *&v103[*(v186 + 316)] = v281;
  }

  v194 = &v103[v287];
  v195 = *(a1 + 2072);
  if (v195)
  {
    v197 = *v186;
    v196 = *(v186 + 8);
    v198 = *(v11 + 2800);
    LODWORD(v199) = *(v195 + 2);
    v200 = v199 + 1;
    if (*(v195 + 3) >= (v199 + 1))
    {
      v203 = *v195;
    }

    else
    {
      v288 = *(v11 + 2800);
      v201 = -__clz(v199);
      v202 = malloc_type_malloc(40 << (v201 & 0x1F), 0x10800400D7C94D2uLL);
      v203 = v202;
      v204 = 1 << v201;
      v199 = *(v195 + 2);
      if (v199)
      {
        memcpy(v202, *v195, 40 * v199);
        free(*v195);
        LODWORD(v199) = *(v195 + 2);
      }

      v198 = v288;
      *(v195 + 3) = v204;
      *v195 = v203;
    }

    v205 = &v203[40 * v199];
    *v205 = 8;
    *(v205 + 1) = v194;
    *(v205 + 2) = v103;
    *(v205 + 3) = (v196 - v197);
    *(v205 + 8) = v198;
    *(v195 + 2) = v200;
    a3 = __n;
  }

  if (a3)
  {
    if (v290 == 2)
    {
      if ((v286 - 1) > 2u)
      {
        v206 = 0;
      }

      else
      {
        v206 = dword_29D2F4558[(v286 - 1)];
      }

      v219 = v291;
      v220 = *(v11 + 3844);
      v221 = (v194 >> 16) & 0xFFC00000 | *(v11 + 3848) & 0x3FFFFF;
      v222 = WORD2(a3) | (*(v11 + 3862) << 16);
      if ((v286 & 0xFFFFFFFFFFFFFCFFLL) == 3)
      {
        v223 = *(&unk_29D2F2740 + ((v286 >> 6) & 0x3FC)) & 7;
      }

      else
      {
        v223 = 0;
      }

      v228 = v223 | v206 | *(v11 + 3856) & 0xFFFFFFC0;
      ++*(a1 + 1940);
      v229 = v289 + 32 * v291;
      v230 = *(v229 + 8);
      *v230 = v220;
      v230[1] = v221;
      v230[2] = v194 >> 6;
      v230[3] = v228;
      v230[4] = v222;
      v230[5] = a3;
      *(v229 + 8) = v230 + 6;
    }

    else
    {
      v211 = *v293 & 0x7FF;
      v212 = *(v293 + 4) & 0x7FF;
      v213 = *(a1 + 2396) & 0x7FF;
      if ((v286 - 1) > 2u)
      {
        v214 = 0;
      }

      else
      {
        v214 = dword_29D2F4558[(v286 - 1)];
      }

      v219 = v291;
      v224 = *(v11 + 3808);
      v225 = (v194 >> 16) & 0xFFC00000 | *(v11 + 3812) & 0x3FFFFF;
      v226 = WORD2(a3) | (*(v11 + 3826) << 16);
      if ((v286 & 0xFFFFFFFFFFFFFCFFLL) == 3)
      {
        v227 = *(&unk_29D2F2740 + ((v286 >> 6) & 0x3FC)) & 7;
      }

      else
      {
        v227 = 0;
      }

      v231 = v227 | v214 | *(v11 + 3820) & 0xFFFFFFC0;
      ++*(a1 + 1940);
      v232 = v289 + 32 * v291;
      v233 = *(v232 + 8);
      *v233 = v224;
      v233[1] = v225;
      v233[2] = v194 >> 6;
      v233[3] = v231;
      v233[4] = v226;
      v233[5] = a3;
      v233[6] = v211;
      v233[7] = v212;
      v233[8] = v213;
      *(v232 + 8) = v233 + 9;
    }
  }

  else if (v290 == 3)
  {
    v207 = *v293 & 0x7FF;
    v208 = *(v293 + 4) & 0x7FF;
    v209 = *(a1 + 2396) & 0x7FF;
    if ((v286 - 1) > 2u)
    {
      v210 = 0;
    }

    else
    {
      v210 = dword_29D2F4558[(v286 - 1)];
    }

    v219 = v291;
    v234 = *(v11 + 3768);
    v235 = *(v293 + 24);
    v236 = *(v293 + 28);
    v237 = (v194 >> 16) & 0xFFC00000 | *(v11 + 3772) & 0x3FFFFF;
    v238 = *(a1 + 2420);
    if ((v286 & 0xFFFFFFFFFFFFFCFFLL) == 3)
    {
      v239 = *(&unk_29D2F2740 + ((v286 >> 6) & 0x3FC)) & 7;
    }

    else
    {
      v239 = 0;
    }

    v246 = v239 | v210 | *(v11 + 3780) & 0xFFFFFFC0;
    ++*(a1 + 1940);
    v247 = v289 + 32 * v291;
    v248 = *(v247 + 8);
    *v248 = v234;
    v248[1] = v237;
    v248[2] = v194 >> 6;
    v248[3] = v246;
    v248[4] = v235;
    v248[5] = v236;
    v248[6] = v238;
    v248[7] = v207;
    v248[8] = v208;
    v248[9] = v209;
    *(v247 + 8) = v248 + 10;
  }

  else
  {
    v215 = *(v293 + 4);
    v216 = *v293 & 0x7FF;
    v217 = *(a1 + 2396) & 0x7FF;
    if ((v286 - 1) > 2u)
    {
      v218 = 0x40000000;
    }

    else
    {
      v218 = dword_29D2F4558[(v286 - 1)] | 0x40000000;
    }

    v219 = v291;
    v240 = *(v11 + 3728);
    v241 = (v194 >> 16) & 0xFFC00000 | *(v11 + 3732) & 0x3FFFFF;
    v242 = *v293 * *(a1 + 2376);
    v243 = v215 * *(a1 + 2380);
    v244 = *(a1 + 2396) * *(a1 + 2384);
    if ((v286 & 0xFFFFFFFFFFFFFCFFLL) == 3)
    {
      v245 = *(&unk_29D2F2740 + ((v286 >> 6) & 0x3FC)) & 7;
    }

    else
    {
      v245 = 0;
    }

    v249 = v245 | v218;
    ++*(a1 + 1940);
    v250 = v289 + 32 * v291;
    v251 = *(v250 + 8);
    *v251 = v240;
    v251[1] = v241;
    v251[2] = v194 >> 6;
    v251[3] = v249;
    v251[4] = v242;
    v251[5] = v243;
    v251[6] = v244;
    v251[7] = v216;
    v251[8] = v215 & 0x7FF;
    v251[9] = v217;
    *(v250 + 8) = v251 + 10;
  }

  if (**MEMORY[0x29EDC56B0] && *(v11 + 1348) == 1 && **MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
    v219 = v291;
  }

  ++*(a1 + 5192);
  if (*(v293 + 3212) == 1)
  {
    v252 = AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, v219) - v283;
    v253 = *(a1 + 5616);
    v254 = *(a1 + 5624);
    if (v253 >= v254)
    {
      v256 = *(a1 + 5608);
      v257 = v253 - v256;
      v258 = (v253 - v256) >> 5;
      v259 = v258 + 1;
      if ((v258 + 1) >> 59)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v260 = v254 - v256;
      if (v260 >> 4 > v259)
      {
        v259 = v260 >> 4;
      }

      if (v260 >= 0x7FFFFFFFFFFFFFE0)
      {
        v261 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v261 = v259;
      }

      if (v261)
      {
        if (!(v261 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v262 = 32 * v258;
      *v262 = v282;
      *(v262 + 8) = v283;
      *(v262 + 16) = v252;
      *(v262 + 24) = 0;
      v255 = 32 * v258 + 32;
      memcpy(0, v256, v257);
      *(a1 + 5608) = 0;
      *(a1 + 5616) = v255;
      *(a1 + 5624) = 0;
      if (v256)
      {
        operator delete(v256);
      }
    }

    else
    {
      *v253 = v282;
      *(v253 + 8) = v283;
      *(v253 + 16) = v252;
      v255 = v253 + 32;
      *(v253 + 24) = 0;
    }

    *(a1 + 5616) = v255;
    v263 = *(a1 + 5640);
    if (*(v263 - 64) == -1)
    {
      *(v263 - 64) = ((v255 - *(a1 + 5608)) >> 5) - 1;
    }

    ++*(v263 - 60);
  }

  if (!*(a1 + 2292))
  {
    if (*(a1 + 2184))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(a1, v280, 0, 0, 0);
    }

    else if (*(v293 + 3212) == 1)
    {
      v264 = *(a1 + 5616);
      if (*(a1 + 5608) != v264)
      {
        *(v264 - 8) = 1;
        *(v264 - 7) = *(a1 + 2306);
      }
    }

    else if (v280 - 22 <= 3)
    {
      if (*(a1 + 2306))
      {
        v265 = 1610617184;
      }

      else
      {
        v265 = 1610613088;
      }

      {
      }

      v266 = v289 + 32 * v280;
      v267 = *(v266 + 8);
      *v267 = v265;
      *(v266 + 8) = v267 + 1;
      v268 = *(a1 + 5192);
      if (*(a1 + 5188) < v268)
      {
        *(a1 + 5188) = v268;
      }

      *(a1 + 5192) = 0;
    }

    *(a1 + 2306) = 0;
  }
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::prepareForEnqueue(uint64_t result, char a2)
{
  v2 = result;
  *(result + 5442) &= ~1u;
  v3 = *(*(result + 1872) + 848);
  os_unfair_lock_opaque = v3[1804]._os_unfair_lock_opaque;
  v5 = *(result + 4952);
  v6 = *(result + 4964);
  if ((a2 & 1) == 0 && (*(*(*(result + 2336) + 16) + 2408) & 8) != 0)
  {
    v7 = *(result + 4544);
    v8 = *(v7 + 1568);
    v9 = *(v7 + 1304);
    v10 = *(v7 + 1344);
    v11 = *(result + 168);
    v12 = v11 + 47;
    if ((v11 + 47) > *(result + 160))
    {
      v29 = v9;
      v32 = v10;
      v33 = v8;
      v30 = v3[1804]._os_unfair_lock_opaque;
      v31 = *(result + 4952);
      v28 = a2;
      result = AGX::DataBufferAllocator<44ul>::growNoInline(result + 24, 3, 0);
      v11 = *(v2 + 168);
      if (!result)
      {
        a2 = v28;
        os_unfair_lock_opaque = v30;
        v5 = v31;
        v10 = v32;
        v8 = v33;
        v9 = v29;
        goto LABEL_5;
      }

      v12 = v11 + 47;
      a2 = v28;
      os_unfair_lock_opaque = v30;
      v5 = v31;
      v10 = v32;
      v8 = v33;
      v9 = v29;
      if ((v11 + 47) > *(v2 + 160))
      {
        abort();
      }
    }

    *(v2 + 176) = v12;
LABEL_5:
    v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
    v14 = v13 + *(v2 + 184);
    *(v2 + 168) = v13 + 32;
    *(v2 + 4920) |= 8uLL;
    *(v2 + 4944) |= 1u;
    *(*(v2 + 4544) + 1560) = v14;
    *(v2 + 4840) = *(*(v2 + 48) + 224) + *MEMORY[0x29EDC5638];
    *v13 = v8;
    *(v13 + 8) = v9;
    *(v13 + 24) = v10;
  }

  v15 = v6 | a2;
  if (v5 != os_unfair_lock_opaque)
  {
    v40 = 0;
    *(v2 + 4952) = os_unfair_lock_opaque;
    v16 = *(v2 + 4544);
    v34 = v16 + 1360;
    v35 = v2 + 4640;
    v36 = v16 + 1368;
    v37 = v2 + 4648;
    v38 = v16 + 1392;
    v39 = v2 + 4672;
    if (AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::addToResourceList(&v3[1810], &v34, *(v2 + 1904), &v40))
    {
      if ((v15 & 1) != 0 && (v40 & 1) == 0)
      {
        IOGPUResourceListAddResource();
        IOGPUResourceListAddResource();
        IOGPUResourceListAddResource();
      }

      *(v2 + 4912) |= 0x4C0000000000uLL;
      *(v2 + 4944) |= 1u;
    }

    v34 = *(v2 + 4544) + 1496;
    v35 = v2 + 4776;
    if (AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::BVHStateHeapElem>::addToResourceList(v3 + 2352, &v34))
    {
      if (v15)
      {
        IOGPUResourceListAddResource();
      }

      *(v2 + 4912) |= 0x800000000000000uLL;
      *(v2 + 4944) |= 1u;
    }

    v34 = v2 + 5504;
    v35 = v2 + 5512;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v3 + 3146, &v34))
    {
      IOGPUResourceListAddResource();
    }

    **(v2 + 5496) = *(v2 + 5504);
    v34 = v2 + 5520;
    v35 = v2 + 5528;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v3 + 2952, &v34))
    {
      IOGPUResourceListAddResource();
    }

    *(*(v2 + 5496) + 8) = *(v2 + 5520);
    v34 = *(v2 + 4544) + 1544;
    v35 = v2 + 4824;
    if (AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::addToResourceList(v3 + 3534, &v34))
    {
      if (v15)
      {
        IOGPUResourceListAddResource();
      }

      *(v2 + 4920) |= 2uLL;
      *(v2 + 4944) |= 1u;
    }

    v17 = *(v2 + 2280);
    v34 = *(v2 + 4544) + 1424;
    v35 = v2 + 4704;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v17, &v34))
    {
      if (v15)
      {
        IOGPUResourceListAddResource();
      }

      *(v2 + 4912) |= 0x4000000000000uLL;
      *(v2 + 4944) |= 1u;
    }

    v18 = *(v2 + 2272);
    v34 = *(v2 + 4544) + 1432;
    v35 = v2 + 4712;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v18, &v34))
    {
      if (v15)
      {
        IOGPUResourceListAddResource();
      }

      *(v2 + 4912) |= 0x8000000000000uLL;
      *(v2 + 4944) |= 1u;
    }

    v34 = *(v2 + 4544) + 1536;
    v35 = v2 + 4816;
    result = AGX::Mempool<16u,0u,true,8u,0u,AGX::HAL300::TensorStateHeapElem>::addToResourceList(v3 + 2752, &v34);
    if (result)
    {
      if (v15)
      {
        result = IOGPUResourceListAddResource();
      }

      *(v2 + 4920) |= 1uLL;
      *(v2 + 4944) |= 1u;
    }
  }

  explicit = atomic_load_explicit(&v3[2347], memory_order_acquire);
  if (explicit)
  {
    v20 = explicit + 1;
  }

  else
  {
    v20 = 0;
  }

  if (*(v2 + 4956) != v20)
  {
    v34 = *(v2 + 4544) + 1400;
    v35 = v2 + 4680;
    result = AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::SamplerHeapElem>::addToResourceList(v3 + 2152, &v34);
    v21 = *(v2 + 2328);
    *(v21 + 152) = *(*(v2 + 4544) + 1400);
    v22 = atomic_load_explicit(&v3[2347], memory_order_acquire);
    v23 = v22 ? v22 + 1 : 0;
    *(v21 + 160) = v23;
    if (result)
    {
      if (v15)
      {
        result = IOGPUResourceListAddResource();
      }

      *(v2 + 4912) |= 0x800000000000uLL;
      *(v2 + 4944) |= 1u;
    }
  }

  if (*(v2 + 2305) == 1)
  {
    v24 = *(*(v2 + 1872) + 848);
    v25 = *(v24 + 6320);
    if (*(v2 + 4960) != v25)
    {
      v26 = *(v24 + 6832);
      if (v26)
      {
        do
        {
          result = IOGPUResourceListAddResource();
          v26 = *v26;
        }

        while (v26);
        v24 = *(*(v2 + 1872) + 848);
      }

      for (i = *(v24 + 6664); i; i = *i)
      {
        result = IOGPUResourceListAddResource();
      }

      *(v2 + 4960) = v25;
    }
  }

  return result;
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::reserveEnqueueDatabufferSpace(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 4976);
  v6 = *(*(a1 + 2336) + 16);
  v7 = *(a1 + 1864);
  if (v7)
  {
    v8 = 3;
  }

  else
  {
    v8 = 10;
  }

  v9 = *(v6 + 624);
  v10 = a1 + 32 * v8;
  if (!v7 && !*(v10 + 72))
  {
    v37 = a3;
    v36 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 10, 0);
    a3 = v37;
    if ((v36 & 1) == 0)
    {
LABEL_27:
      abort();
    }
  }

  v12 = *(v10 + 64);
  v11 = *(v10 + 72);
  v13 = (v10 + 64);
  v14 = v9 + 31;
  v15 = v11 + v14;
  if (v15 <= v12)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v32 = a3;
  v33 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v31, 0);
  a3 = v32;
  if (v33)
  {
    v15 = v13[1] + v14;
    if (v15 > *v13)
    {
      goto LABEL_27;
    }

LABEL_7:
    v13[2] = v15;
  }

  v16 = (*(*(v6 + 2392) + 8) - **(v6 + 2392)) + 63;
  v17 = *(a1 + 232) + v16;
  if (v17 <= *(a1 + 224))
  {
LABEL_9:
    *(a1 + 240) = v17;
    goto LABEL_10;
  }

  v34 = a3;
  v35 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 5, 0);
  a3 = v34;
  if (v35)
  {
    v17 = *(a1 + 232) + v16;
    if (v17 > *(a1 + 224))
    {
      goto LABEL_27;
    }

    goto LABEL_9;
  }

LABEL_10:
  if (a3)
  {
    v18 = 36;
  }

  else
  {
    v18 = 40;
  }

  v19 = *(a1 + 4965);
  v20 = *(a1 + 4980);
  v38 = 0;
  result = agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(a2, a1 + 24, v18, v19, v5 != 0, v20, &v38);
  if (*(a1 + 5600))
  {
    v22 = *(a1 + 4976) != 0;
    v23 = *(a1 + 4980);
    v38 = 1;
    result = agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, v18 + 4, 0, v22, v23, &v38);
    if (!*(a1 + 2292))
    {
      v24 = *(a1 + 5640);
      v25 = *(v24 - 32);
      v26 = *(v24 - 36) + 1;
      *(v24 - 36) = v26;
      if (*(a1 + 5660) < (v25 + v26))
      {
        v27 = *(a1 + 4976) != 0;
        v28 = *(a1 + 4980);
        v38 = 1;
        result = agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, a1 + 24, 24, 0, v27, v28, &v38);
        ++*(a1 + 5660);
      }
    }
  }

  else if (!*(a1 + 2292))
  {
    v29 = *(a1 + 4965);
    v30 = *(a1 + 4980);
    v38 = 1;
    return agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(a2, a1 + 24, 4, v29, v5 != 0, v30, &v38);
  }

  return result;
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::restartComputePass(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 5600);
  if (v4 == 1)
  {
    *(a1 + 5664) = *(a1 + 5664) + ((*(a1 + 5640) - *(a1 + 5632)) >> 6) - 1;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::endVirtualSubstream(a1);
  }

  if (((1 << a2) & 0xFFF339E0480) != 0 && !*(a1 + 32 * a2 + 72))
  {
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, a2);
  }

  IOGPUResourceListAddResource();
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::endComputePass(a1, 1, a2);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginComputePass(a1, 1, a2);
  IOGPUResourceListAddResource();
  if (v4)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(a1);
  }
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::endVirtualSubstream(uint64_t a1)
{
  v55[1] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 792);
  v3 = *(a1 + 776);
  if (*(a1 + 5668))
  {
    goto LABEL_69;
  }

  v49 = *(a1 + 776);
  v50 = *(a1 + 792);
  v51 = 0;
  v4 = 0;
  v5 = 0;
  v54 = 0;
  v55[0] = 0;
  do
  {
    v53 = 0;
    v6 = *(a1 + 5632);
    if (*(a1 + 5640) != v6)
    {
      v52 = 0;
      v7 = 0;
      while (1)
      {
        v8 = v6 + (v7 << 6);
        v9 = *(v8 + 40);
        v10 = *(v8 + 48);
        if (v9 == v10)
        {
          goto LABEL_26;
        }

        v11 = *(v8 + 48);
        while (1)
        {
          v12 = *(v11 - 4);
          v11 -= 4;
          v13 = (*(a1 + 5632) + (v12 << 6));
          if (v13[3] != v13[1] || v13[6] >= v5)
          {
            break;
          }

          *(v8 + 48) = v11;
          if (*(a1 + 4976))
          {
            v15 = v13[2];
            v16 = *(v8 + 8);
            if (v15 != v16 && v13[4] == v4)
            {
              v18 = *(a1 + 1160);
              if (*(a1 + 4980) != v16)
              {
                *(a1 + 4980) = v16;
                *v18++ = (v16 + 1) & 7 | 0xA0000000;
                v15 = v13[2];
              }

              *v18 = (((v15 << 18) + 0x40000) & 0x1C0000 | ((v13[5] << 21) + 0x200000) & 0x1FE00000) + 1610613248;
              *(a1 + 1160) = v18 + 1;
              v9 = *(v8 + 40);
              v11 = *(v8 + 48);
            }
          }

          v10 = v11;
          if (v9 == v11)
          {
            goto LABEL_26;
          }
        }

        if (v9 == v10)
        {
LABEL_26:
          v19 = *(v8 + 12);
          while (1)
          {
            v22 = *(v8 + 4);
            if (v22 <= v19)
            {
              break;
            }

            v23 = *v8 + v19;
            v24 = *(a1 + 5608);
            if (v23 >= (*(a1 + 5616) - v24) >> 5)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v25 = v24 + 32 * v23;
            v26 = *v25;
            v27 = *(v25 + 16);
            v28 = *(v25 + 24);
            v29 = *(v25 + 25);
            if (*(a1 + 4976))
            {
              v30 = *(v8 + 8);
              v20 = *(a1 + 1160);
              if (*(a1 + 4980) != v30)
              {
                *(a1 + 4980) = v30;
                *v20++ = (v30 + 1) & 7 | 0xA0000000;
              }
            }

            else
            {
              v20 = *(a1 + 1160);
            }

            *(a1 + 1160) = v20 + v27;
            memcpy(v20, v26, v27);
            v21 = *(v8 + 12);
            *(&v54 + *(v8 + 8)) |= v29 & 1;
            v19 = v21 + 1;
            *(v8 + 12) = v21 + 1;
            if (v28)
            {
              v22 = *(v8 + 4);
              break;
            }
          }

          if (v19 >= v22)
          {
            if (*(v8 + 24) == -1)
            {
              *(v8 + 24) = v5;
              if (*(a1 + 4976))
              {
                v31 = *(v8 + 8);
                *(&v53 + v31) = 1;
                LODWORD(v31) = *(v55 + v31);
                *(v8 + 16) = v4;
                *(v8 + 20) = v31;
              }
            }

            goto LABEL_9;
          }
        }

        v52 = 1;
LABEL_9:
        ++v7;
        v6 = *(a1 + 5632);
        if (v7 >= (*(a1 + 5640) - v6) >> 6)
        {
          goto LABEL_40;
        }
      }
    }

    v52 = 0;
LABEL_40:
    if (*(a1 + 4976))
    {
      *(a1 + 4980) = 0;
      v32 = *(a1 + 1160);
      *v32 = -1610612735;
      *(a1 + 1160) = v32 + 1;
      if (v53)
      {
        AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::encodeBarrierForSubstream(a1 + 24, v54, v51);
        LODWORD(v51) = v51 + 1;
        LODWORD(v55[0]) = v51;
        v33 = v51 == 255;
        v34 = *(a1 + 1160);
      }

      else
      {
        if (v54)
        {
          v37 = 1610617184;
        }

        else
        {
          v37 = 1610613088;
        }

        {
        }

        v33 = 0;
        v38 = *(a1 + 1160);
        *v38 = v37;
        v34 = v38 + 1;
      }

      *(a1 + 4980) = 1;
      *v34 = -1610612734;
      *(a1 + 1160) = v34 + 1;
      if ((v53 & 0x100) != 0)
      {
        AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::encodeBarrierForSubstream(a1 + 24, HIBYTE(v54), SHIDWORD(v51));
        HIDWORD(v55[0]) = ++HIDWORD(v51);
        if (HIDWORD(v51) == 255 || v33)
        {
          v39 = *(a1 + 1160);
LABEL_3:
          v51 = 0;
          *(a1 + 4980) = -1;
          *v39 = 0x60000300A0000000;
          *(a1 + 1160) = v39 + 1;
          v55[0] = 0;
          ++v4;
        }
      }

      else
      {
        if (HIBYTE(v54))
        {
          v40 = 1610617184;
        }

        else
        {
          v40 = 1610613088;
        }

        {
        }

        v41 = *(a1 + 1160);
        *v41 = v40;
        v39 = v41 + 1;
        *(a1 + 1160) = v39;
        if (v33)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      if (v54)
      {
        v35 = 1610617184;
      }

      else
      {
        v35 = 1610613088;
      }

      {
      }

      v36 = *(a1 + 1160);
      *v36 = v35;
      *(a1 + 1160) = v36 + 1;
      LOBYTE(v54) = 0;
    }

    ++v5;
  }

  while ((v52 & 1) != 0);
  v3 = v49;
  v2 = v50;
LABEL_69:
  *(a1 + 5616) = *(a1 + 5608);
  v42 = *(a1 + 5640);
  v43 = *(a1 + 5632);
  while (v42 != v43)
  {
    v44 = *(v42 - 24);
    if (v44)
    {
      *(v42 - 16) = v44;
      operator delete(v44);
    }

    v42 -= 64;
  }

  *(a1 + 5640) = v43;
  *(a1 + 5600) = 0;
  v45 = *(a1 + 1160);
  if (*(a1 + 4976))
  {
    *v45++ = 0x60000300A0000000;
    *(a1 + 4980) = 0;
    *(a1 + 4984) = 0;
  }

  *v45 = __ROR8__(v2 + v3, 32) & 0xFFFFFFFF0000FFFFLL | 0x20000000;
  *(a1 + 1160) = v45 + 1;
  if (*(a1 + 4976))
  {
    v46 = *(a1 + 5656);
    *(a1 + 4980) = v46;
    v47 = (v46 + 1) & 7 | 0xA0000000;
    v48 = *(a1 + 776);
    *v48 = v47;
    *(a1 + 776) = v48 + 1;
  }
}