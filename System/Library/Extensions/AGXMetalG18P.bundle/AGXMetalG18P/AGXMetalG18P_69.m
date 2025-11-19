void sub_29CDF5CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, char *a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, void **a24, void **a25, uint64_t a26, void **a27, void **a28, void **a29, void **a30, uint64_t a31, void **a32)
{
  CompileStatistics::~CompileStatistics(a23);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a32);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v32 + 2168));
  v35 = *a24;
  if (*a24)
  {
    *(v32 + 2152) = v35;
    operator delete(v35);
  }

  v36 = *a25;
  if (*a25)
  {
    *(v32 + 2128) = v36;
    operator delete(v36);
  }

  if (*a12 < 0)
  {
    operator delete(*a13);
    if ((*(v32 + 1527) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v32 + 1527) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v32 + 1495) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

  operator delete(*a27);
  if (*(v32 + 1495) < 0)
  {
LABEL_8:
    operator delete(*a28);
    if ((*(v32 + 1471) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  if ((*(v32 + 1471) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v32 + 1447) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_29:
  operator delete(*a29);
  if ((*(v32 + 1447) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(v32 + 1152));
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo((v32 + 1016));
    v37 = *(v32 + 936);
    if (v37)
    {
      *(v32 + 944) = v37;
      operator delete(v37);
    }

    v38 = *(v32 + 912);
    if (v38)
    {
      *(v32 + 920) = v38;
      operator delete(v38);
    }

    v39 = (v32 + 864);
    v40 = *(v32 + 888);
    if (v40)
    {
      *(v32 + 896) = v40;
      operator delete(v40);
    }

    v41 = *v39;
    if (*v39)
    {
      *(v32 + 872) = v41;
      operator delete(v41);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v32 + 776);
    v42 = *a10;
    if (*a10)
    {
      *(v32 + 760) = v42;
      operator delete(v42);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a11);
    v43 = *(v32 + 592);
    if (v43)
    {
      *(v32 + 600) = v43;
      operator delete(v43);
    }

    AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(a22);
    if (*(v33 - 193) < 0)
    {
      operator delete(*(v33 - 216));
    }

    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*a30);
  goto LABEL_11;
}

void AGX::ComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(uint64_t a1)
{
  std::mutex::lock((a1 + 4144));
  v2 = *(a1 + 584);
  if (v2)
  {
    v165 = *(a1 + 576);
    v3 = *(v2 + 208);
    v5 = *(v2 + 144);
    v4 = *(v2 + 148);
    if (v3)
    {
      v6 = *(v2 + 144);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v2 + 176);
    if (*(v2 + 176) == 0)
    {
      v5 = 0;
    }

    v8 = (*(v2 + 132) + *(v2 + 124) + *(v2 + 140) - (*(v2 + 128) + *(v2 + 120) + *(v2 + 136)));
    *(a1 + 656) = v6 + v4 + v5 + *(v2 + 152) + ((v8 + 3) & 0xFFFFFFFC);
    v9 = (a1 + 664);
    v10 = *(a1 + 664);
    v11 = (*(a1 + 672) - v10) >> 2;
    v166 = v2;
    if (v8 <= v11)
    {
      if (v8 < v11)
      {
        *(a1 + 672) = v10 + 4 * v8;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 664), v8 - v11);
      v7 = *(v2 + 176);
      v4 = *(v2 + 148);
      v3 = *(v2 + 208);
    }

    if (v3)
    {
      v12 = *(v2 + 144);
    }

    else
    {
      v12 = 0;
    }

    if (v7 | *(v2 + 184))
    {
      v13 = *(v2 + 144);
    }

    else
    {
      v13 = 0;
    }

    v14 = (v4 + v12 + v13);
    v15 = *(a1 + 752);
    v16 = (*(a1 + 760) - v15) >> 2;
    if (v14 <= v16)
    {
      if (v14 < v16)
      {
        *(a1 + 760) = v15 + 4 * v14;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 752), v14 - v16);
    }

    v17 = *v165;
    v18 = v165[1];
    if (*v165 != v18)
    {
      do
      {
        v19 = *v17;
        v20 = *(*v17 + 4);
        if ((v20 & 0x80000000) == 0)
        {
          v21 = 4 * *(v19 + 8) - *(v2 + 120);
          v22 = *v19 == 6 ? 32 : 6;
          v23 = (v22 & 0xF800007F | ((v20 & 0xFFFFF) << 7)) >> 3;
          *(*v9 + 4 * v21) = v23 | 0x40000008;
          v23 += 1073741832;
          *(*v9 + 4 * (v21 + 1)) = v23 + 1;
          *(*v9 + 4 * (v21 + 2)) = v23 + 2;
          *(*v9 + 4 * (v21 + 3)) = v23 + 3;
          if (*(v19 + 12) == 1)
          {
            *(a1 + 1376 + 8 * ((*(v19 + 4) & 0xFFFC0) != 0)) |= 1 << *(v19 + 4);
          }
        }

        ++v17;
      }

      while (v17 != v18);
    }

    if (*(a1 + 1350))
    {
      for (i = v165[9]; i != v165[10]; ++i)
      {
        if (**i == 93)
        {
          v25 = *(*i + 4);
          if ((v25 & 0x80000000) == 0 && (v25 & 0xFFF00000) != 0x400000)
          {
            *(a1 + 1376) = vorrq_s8(*(a1 + 1376), *(a1 + 1392));
            break;
          }
        }
      }
    }

    v26 = v165[3];
    for (j = v165[4]; v26 != j; ++v26)
    {
      v28 = *(*v26 + 4);
      if ((v28 & 0x80000000) == 0)
      {
        v29 = *(a1 + 2192) ? 3 : 1;
        v30 = *(v2 + 124) + v29 * *(*v26 + 8) - (*(v2 + 120) + *(v2 + 128));
        v31 = 4 * (v28 & 0xFFFFF);
        *(*(a1 + 664) + 4 * v30) = v31 | 0x60000001;
        if (*(a1 + 2192) == 1)
        {
          v32 = v31 + 1610612737;
          *(*v9 + 4 * (v30 + 1)) = v32 + 1;
          *(*v9 + 4 * (v30 + 2)) = v32 + 2;
        }
      }
    }

    v33 = v165[6];
    v34 = v165[7];
    if (v33 != v34)
    {
      v35 = (a1 + 1152);
      do
      {
        v36 = *v33;
        v37 = *(*v33 + 4);
        if ((v37 & 0x80000000) == 0)
        {
          v38 = ((*(v36 + 8) >> 1) & 0x1FFFFFFF) + *(v2 + 124) + *(v2 + 132) - (*(v2 + 120) + *(v2 + 128) + *(v2 + 136));
          v39 = v37 & 0xFFFFF;
          v40 = v37 & 0xFFFFF | 0x20000000;
          if ((v37 & 0xFFFFFu) >= 0x1F)
          {
            v40 = (v37 & 0xFFFFF) + 128;
          }

          *(*v9 + 4 * v38) = v40;
          if (*(v36 + 12) == 1)
          {
            *(a1 + 1360 + 8 * (v39 > 0x3F)) |= 1 << v37;
          }

          if (*(a1 + 2195) == 1)
          {
            v41 = *(a1 + 2208);
            if (!v41)
            {
LABEL_257:
              abort();
            }

            v42 = 2 * v38;
            v43 = (2 * v38) | 1;
            while (1)
            {
              while (1)
              {
                v44 = *(v41 + 7);
                if (v39 >= v44)
                {
                  break;
                }

                v41 = *v41;
                if (!v41)
                {
                  goto LABEL_257;
                }
              }

              if (v44 >= v39)
              {
                break;
              }

              v41 = v41[1];
              if (!v41)
              {
                goto LABEL_257;
              }
            }

            v45 = *v35;
            if (!*v35)
            {
LABEL_69:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v46 = v45;
                v47 = *(v45 + 7);
                if (v43 >= v47)
                {
                  break;
                }

                v45 = *v46;
                if (!*v46)
                {
                  goto LABEL_69;
                }
              }

              if (v47 > v42)
              {
                break;
              }

              v45 = v46[1];
              if (!v45)
              {
                goto LABEL_69;
              }
            }

            *(v46 + 8) = *(v41 + 8);
            v2 = v166;
          }
        }

        ++v33;
      }

      while (v33 != v34);
    }

    *(a1 + 744) = 1;
    v48 = *(a1 + 672) - *(a1 + 664);
    *(a1 + 736) = v48 >> 2;
    if (*(a1 + 728) - *(a1 + 712) < v48)
    {
      if (!((v48 >> 2) >> 62))
      {
        operator new();
      }

      goto LABEL_258;
    }

    v49 = *(a1 + 664);
    v50 = *(a1 + 672);
    if (v49 != v50)
    {
      do
      {
        v51 = *v49;
        if (*v49 >> 29 == 7)
        {
          v52 = 272;
        }

        else
        {
          v52 = dword_29D2F52CC[v51 >> 29];
        }

        LODWORD(m) = v52 + (v51 & 0x1FFFFFFF);
        std::vector<unsigned int>::push_back[abi:nn200100](a1 + 712, &m);
        ++v49;
      }

      while (v49 != v50);
      v49 = *(a1 + 664);
      if (*(a1 + 672) != v49)
      {
        operator new();
      }
    }

    *(a1 + 672) = v49;
    v54 = *(v166 + 120);
    v53 = *(v166 + 124);
    v55 = *(v166 + 128);
    v56 = *(v166 + 132);
    v57 = *(v166 + 136);
    v58 = *(v166 + 140);
    v59 = (v53 + v56 + v58 - (v54 + v55 + v57) + 3) & 0xFFFFFFFC;
    v60 = *(v166 + 160);
    v61 = *(v166 + 168);
    if (*(v166 + 160) != 0)
    {
      v62 = 0;
      v63 = *(v166 + 144);
      if (*(v166 + 208) == 1)
      {
        v64 = (a1 + 752);
        if (!v63)
        {
          goto LABEL_92;
        }

        v65 = 0;
        v167 = *(v166 + 168);
        m = v60;
        for (k = v60; ; k = m)
        {
          if (k)
          {
            v67 = __clz(__rbit64(k));
            v68 = &m;
            v69 = v67;
          }

          else
          {
            k = v167;
            if (!v167)
            {
              v57 = *(v166 + 136);
              v58 = *(v166 + 140);
              v55 = *(v166 + 128);
              v56 = *(v166 + 132);
              v54 = *(v166 + 120);
              v53 = *(v166 + 124);
              v63 = *(v166 + 144);
              v62 = v63;
              goto LABEL_92;
            }

            v67 = __clz(__rbit64(v167));
            v69 = v67 | 0x40;
            v68 = &v167;
          }

          *v68 = k & ~(1 << v67);
          *(*(a1 + 752) + 4 * v65) = vorrq_s8(vdupq_n_s32(16 * v69), xmmword_29D2F2010);
          v65 += 4;
        }
      }

      v64 = (a1 + 752);
LABEL_92:
      v70 = *(v166 + 176);
      if (*&v70 != 0 && v63 != 0)
      {
        v159 = v62 - v59 + ((v58 + v56 - (v57 + v55 + v54) + v53 + 3) & 0xFFFFFFFC);
        v167 = v61;
        m = v60;
        while (1)
        {
          if (v60)
          {
            v160 = __clz(__rbit64(v60));
            v161 = &m;
            v162 = v160;
          }

          else
          {
            v60 = v167;
            if (!v167)
            {
              break;
            }

            v160 = __clz(__rbit64(v167));
            v162 = v160 | 0x40;
            v161 = &v167;
          }

          v163 = *v64;
          *(*v64 + 4 * (v159 + 1)) = (16 * (v162 & 0x7F)) | 0xD;
          *(v163 + 4 * v159) = (16 * (v162 & 0x7F)) | 0xC;
          *v161 = v60 & ~(1 << v160);
          *(v163 + 4 * (v159 + 2)) = (16 * (v162 & 0x7F)) | 0xE;
          v164 = v159 + 3;
          v159 += 4;
          v60 = m;
          *(v163 + 4 * v164) = (16 * v162) | 0xF;
        }
      }

      *(a1 + 1376) = vorrq_s8(*(a1 + 1376), v70);
    }

    if (*(v166 + 148))
    {
      v72 = *(v166 + 144);
      if (*(v166 + 208))
      {
        v73 = *(v166 + 144);
      }

      else
      {
        v73 = 0;
      }

      if (*(v166 + 176) == 0)
      {
        v72 = 0;
      }

      v74 = ((*(v166 + 124) + *(v166 + 132) + *(v166 + 140) - (*(v166 + 120) + *(v166 + 128) + *(v166 + 136)) + 3) & 0xFFFFFFFC) - v59 + v73 + v72;
      v75 = *(v166 + 192);
      v167 = *(v166 + 200);
      for (m = v75; ; v75 = m)
      {
        if (v75)
        {
          v76 = __clz(__rbit64(v75));
          p_m = &m;
          v78 = v76;
        }

        else
        {
          v75 = v167;
          if (!v167)
          {
            break;
          }

          v76 = __clz(__rbit64(v167));
          v78 = v76 | 0x40;
          p_m = &v167;
        }

        *p_m = v75 & ~(1 << v76);
        v79 = *(a1 + 752);
        *(v79 + 4 * v74) = (4 * (v78 & 0x7F)) | 1;
        if (*(a1 + 2192) == 1)
        {
          v80 = 4 * v78;
          *(v79 + 4 * (v74 + 1)) = v80 | 2;
          *(v79 + 4 * (v74 + 2)) = v80 | 3;
        }

        v74 += 4;
      }
    }

    v81 = (*(v165 + 24) + 3) >> 2;
    if (*(v166 + 467) == 1)
    {
      *(a1 + 1016) = v81;
    }

    *(a1 + 660) = v81;
    v82 = *(a1 + 776);
    v83 = (*(a1 + 784) - v82) >> 2;
    if (v81 <= v83)
    {
      if (v81 < v83)
      {
        *(a1 + 784) = v82 + 4 * v81;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((a1 + 776), v81 - v83);
    }

    if (a1 + 864 != v166 + 216)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 864), *(v166 + 216), *(v166 + 224), (*(v166 + 224) - *(v166 + 216)) >> 2);
    }

    if (a1 + 912 != v166 + 240)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 912), *(v166 + 240), *(v166 + 248), (*(v166 + 248) - *(v166 + 240)) >> 2);
    }

    if (a1 + 888 != v166 + 320)
    {
      std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((a1 + 888), *(v166 + 320), *(v166 + 328), (*(v166 + 328) - *(v166 + 320)) >> 1);
    }

    if (a1 + 936 != v166 + 368)
    {
      std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((a1 + 936), *(v166 + 368), *(v166 + 376), (*(v166 + 376) - *(v166 + 368)) >> 1);
    }

    *(a1 + 960) = *(v166 + 416);
    *(a1 + 1352) = *(v166 + 160) != 0;
    *(a1 + 1353) = *(v166 + 148) != 0;
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::finalizeGatherSizes(a1, v166);
    if ((*(a1 + 3703) & 1) == 0)
    {
      v84 = *(a1 + 2392);
      v85 = *(a1 + 3012);
      v86 = *(a1 + 3024);
      v87 = ((*(a1 + 3008) + 3) >> 2);
      *(v84 + 140) = *(v84 + 140) & 0xFFFFF00000000000 | (v87 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(a1 + 3020) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v87;
      *(v84 + 320) = (v85 + 3) >> 2;
      *(v84 + 324) = (((v86 + 3) >> 2) + 1) & 0x7FFFFFFE;
      if (*(v84 + 222) == 1)
      {
        AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v84 + 48), *(v84 + 312), *v84 + *(v84 + 316));
      }
    }

    v88 = *(a1 + 3704);
    if (v88 != -1)
    {
      AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::setConstantCalculationProgramInfo(*(a1 + 2392), v88, *(a1 + 3708), *(a1 + 3056), *(a1 + 3064), *(a1 + 3072), *(a1 + 3716));
    }

    v89 = *(a1 + 3272);
    if (v89)
    {
      v90 = *(a1 + 3012);
      v91 = *(a1 + 3024);
      v92 = ((*(a1 + 3008) + 3) >> 2);
      *(v89 + 140) = *(v89 + 140) & 0xFFFFF00000000000 | (v92 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(a1 + 3020) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v92;
      *(v89 + 320) = (v90 + 3) >> 2;
      *(v89 + 324) = (((v91 + 3) >> 2) + 1) & 0x7FFFFFFE;
      if (*(v89 + 222) == 1)
      {
        AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v89 + 48), *(v89 + 312), *v89 + *(v89 + 316));
      }

      v93 = *(a1 + 3272);
      v94 = *(a1 + 3224);
      memcpy(v94, *v93, *(v93 + 8) - *v93);
      if (*(v93 + 272) == 1)
      {
        *&v94[*(v93 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v94[*(v93 + 276)], vshlq_u8(vqtbl1q_s8(0, xmmword_29D2F17A0), xmmword_29D2F17B0));
      }

      v95 = *(a1 + 3272);
      v97 = *(v95 + 64);
      v96 = *(v95 + 80);
      *(a1 + 3280) = *(v95 + 48);
      *(a1 + 3296) = v97;
      *(a1 + 3312) = v96;
      v98 = *(v95 + 128);
      v99 = *(v95 + 144);
      v100 = *(v95 + 112);
      *(a1 + 3328) = *(v95 + 96);
      *(a1 + 3376) = v99;
      *(a1 + 3360) = v98;
      *(a1 + 3344) = v100;
      v102 = *(v95 + 176);
      v101 = *(v95 + 192);
      v103 = *(v95 + 208);
      *(a1 + 3392) = *(v95 + 160);
      *(a1 + 3440) = v103;
      *(a1 + 3424) = v101;
      *(a1 + 3408) = v102;
    }

    AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::finish(*(a1 + 2392));
    v104 = *(a1 + 2392);
    v105 = *(a1 + 3724);
    v106 = 8 * (*(v104 + 324) & 0xFFF);
    {
      AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value = 1;
    }

    if (AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value)
    {
      v107 = 0x80000;
    }

    else
    {
      v107 = 0;
    }

    if (v105)
    {
      v108 = 0x800000;
    }

    else
    {
      v108 = 0;
    }

    v109 = v107 | v108 | v106;
    v110 = 8 * (*(v104 + 320) & 0x3FFFF);
    *(a1 + 3728) = v109;
    *(a1 + 3732) = v110;
    *(a1 + 3736) = 0x4000000000000000;
    *(a1 + 3744) = 0;
    *(a1 + 3760) = 0;
    *(a1 + 3752) = 0;
    v111 = *(a1 + 2392);
    v112 = *(a1 + 3724);
    v113 = 8 * (*(v111 + 324) & 0xFFF);
    {
      AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value = 1;
    }

    if (AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value)
    {
      v114 = 0x80000;
    }

    else
    {
      v114 = 0;
    }

    if (v112)
    {
      v115 = 0x800000;
    }

    else
    {
      v115 = 0;
    }

    v116 = v114 | v115 | v113;
    v117 = 8 * (*(v111 + 320) & 0x3FFFF);
    *(a1 + 3768) = v116;
    *(a1 + 3772) = v117;
    *(a1 + 3776) = 0x4000000000000000;
    *(a1 + 3784) = 0;
    *(a1 + 3800) = 0;
    *(a1 + 3792) = 0;
    v118 = *(a1 + 2392);
    v119 = *(a1 + 3724);
    {
      AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value = 1;
    }

    if (AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value)
    {
      v120 = 134742016;
    }

    else
    {
      v120 = 0x8000000;
    }

    if (v119)
    {
      v121 = 0x800000;
    }

    else
    {
      v121 = 0;
    }

    v122 = 8 * (*(v118 + 320) & 0x3FFFF);
    *(a1 + 3808) = v121 & 0xFFFF8007 | (8 * (*(v118 + 324) & 0xFFF)) | v120;
    *(a1 + 3812) = v122;
    *(a1 + 3816) = 0x4000000000000000;
    *(a1 + 3824) = 0u;
    *(a1 + 3840) = 0;
    v123 = *(a1 + 2392);
    v124 = *(a1 + 3724);
    {
      AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value = 1;
    }

    if (AGX::CDMEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants>::getSubKernelXTargetWorkitems(void)::subkernelxtarget_value)
    {
      v125 = 268959744;
    }

    else
    {
      v125 = 0x10000000;
    }

    if (v124)
    {
      v126 = 0x800000;
    }

    else
    {
      v126 = 0;
    }

    v127 = 8 * (*(v123 + 320) & 0x3FFFF);
    *(a1 + 3844) = v126 & 0xFFFF8007 | (8 * (*(v123 + 324) & 0xFFF)) | v125;
    *(a1 + 3848) = v127;
    *(a1 + 3852) = 0x4000000000000000;
    *(a1 + 3860) = 0;
    if (*(v166 + 312) == 1)
    {
      *(a1 + 2608) = vorrq_s8(*(a1 + 2608), *(a1 + 2448));
      *(a1 + 2448) = 0uLL;
    }

    if (*(v166 + 313) == 1)
    {
      *(a1 + 2624) = vorrq_s8(*(a1 + 2624), *(a1 + 2464));
      *(a1 + 2464) = 0u;
    }

    if (*(v166 + 314) == 1)
    {
      *(a1 + 2592) = vorrq_s8(*(a1 + 2592), *(a1 + 2432));
      *(a1 + 2432) = 0u;
    }

    if (*(v166 + 315))
    {
      v128 = vorrq_s8(*(a1 + 2656), *(a1 + 2544));
      *(a1 + 2656) = v128;
      *(a1 + 2672) = vorrq_s8(*(a1 + 2672), *(a1 + 2560));
      v129 = vorrq_s8(*(a1 + 2640), *(a1 + 2528));
      *(a1 + 2640) = v129;
      *(a1 + 2688) = vorrq_s8(*(a1 + 2688), *(a1 + 2576));
      v130 = 0uLL;
      *(a1 + 2560) = 0u;
      *(a1 + 2576) = 0u;
      v131 = 0uLL;
      *(a1 + 2528) = 0u;
      *(a1 + 2544) = 0u;
    }

    else
    {
      v130 = *(a1 + 2528);
      v129 = *(a1 + 2640);
      v131 = *(a1 + 2544);
      v128 = *(a1 + 2656);
    }

    *(a1 + 2400) = vorrq_s8(vorrq_s8(vorrq_s8(*(a1 + 2432), *(a1 + 2480)), vorrq_s8(v130, *(a1 + 2592))), v129);
    *(a1 + 2416) = vorrq_s8(vorrq_s8(vorrq_s8(*(a1 + 2448), *(a1 + 2496)), vorrq_s8(v131, *(a1 + 2608))), v128);
    AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::buildUniqueResourceMask(a1 + 2392);
    v132 = *(a1 + 576);
    v133 = *(v132 + 72);
    v134 = *(v132 + 80);
    if (v133 != v134)
    {
      while (1)
      {
        v136 = *v133;
        v137 = **v133;
        if ((v137 > 0x3E || ((1 << v137) & 0x4000000000033800) == 0) && (v137 - 93 > 0x14 || ((1 << (v137 - 93)) & 0x100031) == 0))
        {
          break;
        }

        v140 = v136[1];
        if ((v140 & 0x80000000) == 0)
        {
          goto LABEL_189;
        }

LABEL_178:
        if (++v133 == v134)
        {
          goto LABEL_230;
        }
      }

      v140 = v136[1];
LABEL_189:
      v141 = (*(a1 + 776) + 4 * v136[2]);
      switch(v137)
      {
        case ' ':
          v135 = 13;
          goto LABEL_177;
        case '!':
          v135 = 14;
          goto LABEL_177;
        case '""':
          v135 = 15;
          goto LABEL_177;
        case '#':
          v135 = 7;
          goto LABEL_177;
        case '$':
          v135 = 8;
          goto LABEL_177;
        case '%':
          v135 = 9;
          goto LABEL_177;
        case '&':
          v135 = 4;
          goto LABEL_177;
        case '\'':
          v135 = 5;
          goto LABEL_177;
        case '(':
          v135 = 6;
          goto LABEL_177;
        case '*':
          *v141 = 470;
          *(a1 + 4074) = 1;
          goto LABEL_178;
        case '+':
          *v141 = (v140 + 474) & 0x1FFFFFFF;
          v142 = *(a1 + 3916);
          *(a1 + 3920 + 4 * v142) = v140;
          *(a1 + 3916) = v142 + 1;
          goto LABEL_178;
        case ',':
          *v141 = 0x1100000010;
          *(a1 + 4072) = 1;
          goto LABEL_178;
        case '-':
          v135 = 10;
          goto LABEL_177;
        case '.':
          v135 = 11;
          goto LABEL_177;
        case '/':
          v135 = 12;
          goto LABEL_177;
        case ':':
          v135 = 471;
          goto LABEL_177;
        case '@':
          *v141 = 0x1300000012;
          goto LABEL_178;
        case 'H':
          *v141 = 0x1500000014;
          v141[2] = 22;
          goto LABEL_178;
        case 'I':
          *v141 = 0x1800000017;
          v141[2] = 25;
          goto LABEL_178;
        case 'T':
          v135 = 473;
          goto LABEL_177;
        case '^':
          v135 = 3;
          goto LABEL_177;
        case 'o':
          v135 = 472;
          goto LABEL_177;
        case 'v':
          *v141 = 0x1B0000001ALL;
          goto LABEL_178;
        case 'w':
          *v141 = 0x1D0000001CLL;
          goto LABEL_178;
        case 'x':
          goto LABEL_178;
        default:
          v143 = v137 - 11;
          v144 = v140 & 0xFFFFF;
          v145 = (v140 & 0xFFFFF) << 7;
          switch(v143)
          {
            case 0u:
              *v141 = *&vshrq_n_u32(vorrq_s8(vdupq_n_s32(v145), xmmword_29D2F2020), 2uLL) | __PAIR128__(0x4000000040000000, 0x4000000040000000);
              goto LABEL_178;
            case 1u:
              LODWORD(v146) = (32 * v144) | 0x40000000;
              DWORD1(v146) = (32 * (v140 & 0xFFFFF)) | 0x40000001;
              *(&v146 + 1) = *&vshr_n_u32(vorr_s8(vdup_n_s32(v145), 0xC00000008), 2uLL) | 0x4000000040000000;
              *v141 = v146;
              goto LABEL_178;
            case 2u:
              v135 = (32 * v144) | 0x40000008;
              break;
            case 5u:
              v135 = (32 * v144) | 0x40000009;
              break;
            case 6u:
              v135 = (32 * v144) | 0x4000000A;
              break;
            case 0x33u:
              v135 = (32 * v144) | 0x4000000B;
              break;
            case 0x52u:
              if ((v140 & 0xFFF00000) == 0x400000)
              {
                *v141 = 0;
                goto LABEL_178;
              }

              v135 = (32 * v144) | 0x4000000C;
              break;
            case 0x56u:
              *v141 = vorr_s8(vdup_n_s32(32 * v144), 0x4000000F4000000ELL);
              goto LABEL_178;
            case 0x57u:
              *v141 = vorr_s8(vdup_n_s32(8 * v144), 0x6000000160000000);
              goto LABEL_178;
            case 0x62u:
              v135 = (2 * (v140 & 0xFFFFFFF)) | 0xC0000000;
              break;
            case 0x63u:
              v135 = (2 * (v140 & 0xFFFFFFF)) | 0xC0000001;
              break;
            case 0x66u:
              v135 = (8 * v144) | 0x60000000;
              break;
            case 0x78u:
              v135 = v140 & 0x1FFFFFFF | 0x80000000;
              break;
            default:
              goto LABEL_178;
          }

LABEL_177:
          *v141 = v135;
          break;
      }

      goto LABEL_178;
    }

LABEL_230:
    *(a1 + 856) = 1;
    v147 = *(a1 + 784) - *(a1 + 776);
    *(a1 + 848) = v147 >> 2;
    if (*(a1 + 840) - *(a1 + 824) < v147)
    {
      if (!((v147 >> 2) >> 62))
      {
        operator new();
      }

LABEL_258:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v148 = *(a1 + 776);
    v149 = *(a1 + 784);
    if (v148 != v149)
    {
      do
      {
        v150 = *v148;
        if (*v148 >> 29 == 7)
        {
          v151 = 544;
        }

        else
        {
          v151 = dword_29D2F5224[v150 >> 29];
        }

        LODWORD(m) = v151 + (v150 & 0x1FFFFFFF);
        std::vector<unsigned int>::push_back[abi:nn200100](a1 + 824, &m);
        ++v148;
      }

      while (v148 != v149);
      v148 = *(a1 + 776);
      if (*(a1 + 784) != v148)
      {
        operator new();
      }
    }

    *(a1 + 784) = v148;
    if (*(v166 + 467) == 1)
    {
      v152 = *(a1 + 576);
      v153 = *(a1 + 1344);
      v154 = *(v152 + 136);
      if (*(a1 + 968) > v153)
      {
        v153 = *(a1 + 968);
      }

      *(a1 + 968) = v153;
      v155 = vorrq_s8(*(a1 + 992), *(v152 + 120));
      *(a1 + 976) = vorrq_s8(*(a1 + 976), *(v152 + 104));
      *(a1 + 992) = v155;
      *(a1 + 1008) |= v154;
      AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserComputeArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::ComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(a1);
    }

    *(a1 + 1360) &= ~0x4000000000uLL;
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::finalizeGatherSizes(a1, v166);
    v156 = *(a1 + 584);
    if (v156)
    {
      v157 = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(v156);
      MEMORY[0x29ED520D0](v157, 0x1030C40704B4075);
    }

    *(a1 + 584) = 0;
    v158 = *(a1 + 576);
    if (v158)
    {
      ProgramBindingsAndDMAList::~ProgramBindingsAndDMAList(v158);
      MEMORY[0x29ED520D0]();
    }

    *(a1 + 576) = 0;
  }

  std::mutex::unlock((a1 + 4144));
}

void sub_29CDF78CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    operator delete(a13);
  }

  std::mutex::unlock((v13 + 4144));
  _Unwind_Resume(a1);
}

uint64_t *AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserComputeArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::ComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(uint64_t a1)
{
  v2 = *(a1 + 976);
  v3 = (512 - 8 * __clz(v2)) >> 2;
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 1024) = v4;
  v5 = vcnt_s8(*(a1 + 984));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.i32[0];
  v7 = vcnt_s8(*(a1 + 992));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.i32[0] + v6;
  v9 = vcnt_s8(*(a1 + 1000));
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v8 + v9.i32[0];
  v11 = vcnt_s8(*(a1 + 1008));
  v11.i16[0] = vaddlv_u8(v11);
  v12 = (v11.i32[0] + 2 * v10);
  *(a1 + 1028) = v12;
  v13 = *(a1 + 1064);
  v14 = *(a1 + 1056);
  while (v13 != v14)
  {
    v15 = *(v13 - 24);
    if (v15)
    {
      *(v13 - 16) = v15;
      operator delete(v15);
    }

    v13 -= 32;
  }

  *(a1 + 1064) = v14;
  *(a1 + 1088) = *(a1 + 1080);
  *(a1 + 1104) = v12;
  *(a1 + 1112) = 0;
  v16 = *(a1 + 1032);
  v17 = (*(a1 + 1040) - v16) >> 2;
  if (v12 <= v17)
  {
    if (v12 < v17)
    {
      *(a1 + 1040) = v16 + 4 * v12;
    }
  }

  else
  {
    std::vector<unsigned int>::__append((a1 + 1032), v12 - v17);
    v16 = *(a1 + 1032);
  }

  v18 = *(a1 + 984);
  v31 = *(a1 + 992);
  for (i = v18; ; v18 = i)
  {
    if (v18)
    {
      v19 = __clz(__rbit64(v18));
      p_i = &i;
      v21 = v19;
      goto LABEL_15;
    }

    v18 = v31;
    if (!v31)
    {
      break;
    }

    v19 = __clz(__rbit64(v31));
    v21 = v19 | 0x40;
    p_i = &v31;
LABEL_15:
    *p_i = v18 & ~(1 << v19);
    *v16++ = vorr_s8(vdup_n_s32(32 * v21), 0x4000000F4000000ELL);
  }

  for (j = *(a1 + 1000); j; j &= ~(1 << v23))
  {
    v23 = __clz(__rbit64(j));
    *v16++ = vorr_s8(vdup_n_s32(8 * v23), 0x6000000160000000);
  }

  for (k = *(a1 + 1008); k; k &= ~(1 << v25))
  {
    v25 = __clz(__rbit64(k));
    v16->i32[0] = v25 + 474;
    v16 = (v16 + 4);
    v26 = *(a1 + 3916);
    *(a1 + 3920 + 4 * v26) = v25;
    *(a1 + 3916) = v26 + 1;
  }

  result = AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather((a1 + 1032));
  v28 = *(a1 + 1128);
  v29 = *(a1 + 1120);
  if (v28 == v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(a1 + 1016) & 1;
  }

  *(a1 + 624) = ((*(a1 + 920) - *(a1 + 912) + 4 * (*(a1 + 1024) + *(a1 + 660) + *(a1 + 1028) + v30 + (((v28 - v29) >> 1) & 0x3FFFFFFE))) & 0xFFFFFFFC) + 8 * (*(a1 + 656) + ((*(a1 + 872) - *(a1 + 864)) >> 2));
  return result;
}

void AGX::ComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 4144));
  v4 = *(a1 + 968);
  if (v4 <= *(a2 + 264))
  {
    v4 = *(a2 + 264);
  }

  *(a1 + 968) = v4;
  *(a1 + 976) |= *(a2 + 272);
  *(a1 + 984) = vorrq_s8(*(a1 + 984), *(a2 + 280));
  *(a1 + 1000) |= *(a2 + 296);
  *(a1 + 1008) |= *(a2 + 304);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserComputeArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::updateGlobalBindingTableInfo<AGX::ComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>>(a1);
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 48);
  v9 = *(a2 + 52);
  v10 = *(a2 + 64);
  v11 = *(a2 + 88);
  if (*(a1 + 3016) > v8)
  {
    v8 = *(a1 + 3016);
  }

  *(a1 + 3016) = v8;
  v12 = v11 + v9;
  v13 = *(a1 + 3008);
  if (v13 <= v12)
  {
    v13 = v12;
  }

  *(a1 + 3008) = v13;
  if (*(a1 + 3020) > v10)
  {
    v10 = *(a1 + 3020);
  }

  *(a1 + 3020) = v10;
  v14 = *(a1 + 2392);
  v15 = *(a1 + 3012);
  v16 = *(a1 + 3024);
  *(v14 + 140) = *(v14 + 140) & 0xFFFFF00000000000 | (((v13 + 3) >> 2) << 16) | (((((((v10 + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | ((v13 + 3) >> 2);
  *(v14 + 320) = (v15 + 3) >> 2;
  *(v14 + 324) = (((v16 + 3) >> 2) + 1) & 0x7FFFFFFE;
  if (*(v14 + 222) == 1)
  {
    AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v14 + 48), *(v14 + 312), *v14 + *(v14 + 316));
  }

  v17 = *(a1 + 3272);
  if (v17)
  {
    v18 = *(a1 + 3012);
    v19 = *(a1 + 3024);
    v20 = ((*(a1 + 3008) + 3) >> 2);
    *(v17 + 140) = *(v17 + 140) & 0xFFFFF00000000000 | (v20 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(a1 + 3020) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v20;
    *(v17 + 320) = (v18 + 3) >> 2;
    *(v17 + 324) = (((v19 + 3) >> 2) + 1) & 0x7FFFFFFE;
    if (*(v17 + 222) == 1)
    {
      AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v17 + 48), *(v17 + 312), *v17 + *(v17 + 316));
    }

    v21 = *(a1 + 3272);
    v22 = *(a1 + 3224);
    memcpy(v22, *v21, *(v21 + 8) - *v21);
    if (*(v21 + 272) == 1)
    {
      *&v22[*(v21 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v22[*(v21 + 276)], vshlq_u8(vqtbl1q_s8(0, xmmword_29D2F17A0), xmmword_29D2F17B0));
    }

    v23 = *(a1 + 3272);
    v25 = *(v23 + 64);
    v24 = *(v23 + 80);
    *(a1 + 3280) = *(v23 + 48);
    *(a1 + 3296) = v25;
    *(a1 + 3312) = v24;
    v26 = *(v23 + 128);
    v27 = *(v23 + 144);
    v28 = *(v23 + 112);
    *(a1 + 3328) = *(v23 + 96);
    *(a1 + 3376) = v27;
    *(a1 + 3360) = v26;
    *(a1 + 3344) = v28;
    v30 = *(v23 + 176);
    v29 = *(v23 + 192);
    v31 = *(v23 + 208);
    *(a1 + 3392) = *(v23 + 160);
    *(a1 + 3440) = v31;
    *(a1 + 3424) = v29;
    *(a1 + 3408) = v30;
  }

  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (*(a2 + 228) == 1)
  {
    *(a1 + 1376) = vorrq_s8(*(a1 + 1376), *(a1 + 1392));
  }

  std::mutex::unlock((a1 + 4144));
}

void AGX::BackgroundObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::BackgroundObjectProgramVariant(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = 0;
  v479 = *MEMORY[0x29EDCA608];
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  *a1 = &unk_2A23F7E40;
  *(a1 + 8) = a2;
  *(a1 + 56) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 233) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 489) = 0u;
  v466 = (a1 + 544);
  *(a1 + 536) = a1 + 544;
  *(a1 + 560) = 0xFFFFFFFF00000001;
  *(a1 + 568) = 1610612736;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 672) = -1;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *(a1 + 640) = v8;
  *(a1 + 656) = v8;
  *(a1 + 608) = 0u;
  *(a1 + 624) = v8;
  *(a1 + 680) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 808) = atomic_fetch_add((a2 + 17008), 1uLL);
  *(a1 + 896) = 0;
  v456 = (a1 + 896);
  *(a1 + 904) = 0u;
  v9 = a1 + 928;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1376) = 0;
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1392) = 0;
  *(a1 + 1396) = 0;
  v10 = (a1 + 1423);
  *(a1 + 1400) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  v459 = (a1 + 816);
  *(a1 + 873) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0;
  *(a1 + 1468) = 0u;
  *(a1 + 1439) = 0u;
  *(a1 + 1455) = 0u;
  *(a1 + 1423) = 0u;
  *(a1 + 1504) = 0;
  *(a1 + 1488) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1560) = 0u;
  v464 = a1 + 1512;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = *(a4 + 465);
  *(a1 + 1586) = 0;
  *(a1 + 1600) = 0u;
  v469 = (a1 + 1600);
  *(a1 + 1592) = a1 + 1600;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0;
  if (a3[28])
  {
    v11 = a3[29] == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = 28;
  if (v11)
  {
    v12 = 98;
    v13 = a3 + 98;
  }

  else
  {
    v13 = a3 + 28;
  }

  v14 = a3[v12];
  if (v14 && v13[1])
  {
    v7 = (v14 + *v14);
  }

  v15 = (v7 - *v7);
  if (*v15 >= 5u && (v16 = v15[2]) != 0)
  {
    v471 = (v7 + v16 + *(v7 + v16));
  }

  else
  {
    v471 = 0;
  }

  v17 = 0;
  v18 = a3 + 128;
  if (a3[58])
  {
    v19 = a3[59] == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = 58;
  if (v19)
  {
    v20 = 128;
  }

  else
  {
    v18 = a3 + 58;
  }

  v21 = a3[v20];
  if (v21 && v18[1])
  {
    v17 = (v21 + *v21);
  }

  v22 = (v17 - *v17);
  if (*v22 < 5u)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22[2];
    if (v23)
    {
      v23 = (v23 + v17 + *(v23 + v17));
    }
  }

  v24 = *v23;
  v25 = -v24;
  v470 = v23;
  v26 = (v23 - v24);
  v27 = *v26;
  if (v27 < 0x25)
  {
    LOBYTE(v28) = 0;
  }

  else
  {
    v28 = v26[18];
    if (v26[18])
    {
      LOBYTE(v28) = *(v470 + v28) != 0;
    }
  }

  *(a1 + 1585) = v28;
  v29 = (v471 - *v471);
  if (*v29 < 0x55u || (v30 = v29[42]) == 0 || !*(v471 + v30))
  {
LABEL_63:
    if (v27 < 7)
    {
      LODWORD(v44) = 0;
    }

    else
    {
      v44 = *(v470 + v25 + 6);
      if (*(v470 + v25 + 6))
      {
        LODWORD(v44) = *(v470 + v44);
      }
    }

    v454 = (a1 + 304);
    v455 = (a1 + 256);
    v452 = (a1 + 328);
    v453 = (a1 + 280);
    *(a1 + 800) = v44;
    v45 = (v470 - *v470);
    if (*v45 >= 0x13u && (v46 = v45[9]) != 0)
    {
      v47 = v470 + v46 + *(v470 + v46) + 4;
    }

    else
    {
      v47 = "";
    }

    v457 = (a1 + 864);
    v458 = (a1 + 840);
    v48 = (a1 + 1400);
    v463 = a1 + 1536;
    v451 = (a1 + 1616);
    v467 = (a1 + 56);
    v460 = (a1 + 144);
    MEMORY[0x29ED51E00](v459, v47);
    v49 = (v470 - *v470);
    if (*v49 >= 9u && (v50 = v49[4]) != 0)
    {
      v51 = v470 + v50 + *(v470 + v50) + 4;
    }

    else
    {
      v51 = "";
    }

    MEMORY[0x29ED51E00](v458, v51);
    v52 = (v470 - *v470);
    if (*v52 < 0x29u)
    {
      LOBYTE(v53) = 0;
    }

    else
    {
      v53 = v52[20];
      if (v53)
      {
        LOBYTE(v53) = *(v470 + v53) != 0;
      }
    }

    *(a1 + 888) = v53;
    std::string::operator=(v457, &__str);
    v54 = (v470 - *v470);
    if (*v54 >= 0x51u && (v55 = v54[40]) != 0)
    {
      v56 = v470 + v55 + *(v470 + v55) + 4;
    }

    else
    {
      v56 = "";
    }

    MEMORY[0x29ED51E00](v456, v56);
    v450 = v9;
    v57 = v471;
    v58 = (v470 - *v470);
    if (*v58 >= 5u && v58[2] && *(a2 + 16608) == 1)
    {
      v59 = a3[1];
      if (v59 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_719;
      }

      v60 = *a3;
      if (v59 >= 0x17)
      {
        operator new();
      }

      __dst[23] = a3[1];
      if (v59)
      {
        memmove(__dst, v60, v59);
      }

      __dst[v59] = 0;
      if (*v10 < 0)
      {
        operator delete(*v48);
      }

      *v48 = *__dst;
      *(a1 + 1416) = *&__dst[16];
      v61 = a3[3];
      if (a3[4])
      {
        v62 = v61 == 0;
      }

      else
      {
        v62 = 1;
      }

      if (v62)
      {
        v61 = a3[73];
      }

      *(a1 + 1424) = v61 - *a3;
      v57 = v471;
    }

    v63 = a3 + 113;
    if (a3[43])
    {
      v64 = a3[44] == 0;
    }

    else
    {
      v64 = 1;
    }

    v65 = 43;
    if (v64)
    {
      v65 = 113;
    }

    else
    {
      v63 = a3 + 43;
    }

    v465 = a3;
    v66 = a3[v65];
    if (!v66 || !v63[1])
    {
LABEL_126:
      v79 = v465;
      v80 = v465 + 138;
      if (v465[68])
      {
        v81 = v465[69] == 0;
      }

      else
      {
        v81 = 1;
      }

      v82 = 68;
      if (v81)
      {
        v82 = 138;
      }

      else
      {
        v80 = v465 + 68;
      }

      v83 = v465[v82];
      v84 = v80[1];
      if (v83)
      {
        v85 = v84 == 0;
      }

      else
      {
        v85 = 1;
      }

      if (v85 || (v86 = (v83 + *v83), v87 = (v86 - *v86), *v87 < 5u) || (v88 = v87[2]) == 0)
      {
        v89 = 0;
      }

      else
      {
        v89 = *(v86 + v88);
      }

      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
      }

      v90 = v470;
      *(a1 + 1624) = (v89 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0) / 1000000.0;
      v91 = (v57 - *v57);
      if (*v91 < 5u)
      {
        LODWORD(v92) = 0;
      }

      else
      {
        v92 = v91[2];
        if (v92)
        {
          LODWORD(v92) = *(v57 + v92);
        }
      }

      *v451 = v92;
      v93 = (v57 - *v57);
      if (*v93 < 0x2Du)
      {
        LODWORD(v94) = 0;
      }

      else
      {
        v94 = v93[22];
        if (v94)
        {
          LODWORD(v94) = *(v57 + v94);
        }
      }

      *(a1 + 1620) = v94;
      v95 = (v57 - *v57);
      if (*v95 < 0x35u)
      {
        LODWORD(v96) = 0;
      }

      else
      {
        v96 = v95[26];
        if (v96)
        {
          LODWORD(v96) = *(v57 + v96);
        }
      }

      *(a1 + 1660) = v96;
      v97 = (v57 - *v57);
      if (*v97 < 0x43u)
      {
        LODWORD(v98) = 0;
      }

      else
      {
        v98 = v97[33];
        if (v98)
        {
          LODWORD(v98) = *(v57 + v98);
        }
      }

      *(a1 + 1696) = v98;
      v99 = v465 + 108;
      if (v465[38])
      {
        v100 = v465[39] == 0;
      }

      else
      {
        v100 = 1;
      }

      v101 = 38;
      if (v100)
      {
        v101 = 108;
      }

      else
      {
        v99 = v465 + 38;
      }

      v102 = v465[v101];
      if (v102 && v99[1])
      {
        v103 = (v102 + *v102);
        v104 = (v103 - *v103);
        if (*v104 < 0xDu)
        {
          LODWORD(v105) = 0;
        }

        else
        {
          v105 = v104[6];
          if (v105)
          {
            LODWORD(v105) = *(v103 + v105);
          }
        }

        *(a1 + 1620) = v105;
        v106 = (v103 - *v103);
        if (*v106 < 0xBu)
        {
          LODWORD(v107) = 0;
        }

        else
        {
          v107 = v106[5];
          if (v107)
          {
            LODWORD(v107) = *(v103 + v107);
          }
        }

        *(a1 + 1628) = v107;
        v108 = (v103 - *v103);
        if (*v108 < 0x11u)
        {
          LODWORD(v109) = 0;
        }

        else
        {
          v109 = v108[8];
          if (v109)
          {
            LODWORD(v109) = *(v103 + v109);
          }
        }

        *(a1 + 1632) = v109;
        v110 = (v103 - *v103);
        if (*v110 < 0x13u)
        {
          LODWORD(v111) = 0;
        }

        else
        {
          v111 = v110[9];
          if (v111)
          {
            LODWORD(v111) = *(v103 + v111);
          }
        }

        *(a1 + 1636) = v111;
        v112 = (v103 - *v103);
        if (*v112 < 0x17u)
        {
          LODWORD(v113) = 0;
        }

        else
        {
          v113 = v112[11];
          if (v113)
          {
            LODWORD(v113) = *(v103 + v113);
          }
        }

        *(a1 + 1640) = v113;
        v114 = (v103 - *v103);
        if (*v114 < 0x1Bu)
        {
          LODWORD(v115) = 0;
        }

        else
        {
          v115 = v114[13];
          if (v115)
          {
            LODWORD(v115) = *(v103 + v115);
          }
        }

        *(a1 + 1644) = v115;
        v116 = (v103 - *v103);
        if (*v116 < 0x15u)
        {
          LODWORD(v117) = 0;
        }

        else
        {
          v117 = v116[10];
          if (v117)
          {
            LODWORD(v117) = *(v103 + v117);
          }
        }

        *(a1 + 1648) = v117;
        v118 = (v103 - *v103);
        if (*v118 < 0x19u)
        {
          LODWORD(v119) = 0;
        }

        else
        {
          v119 = v118[12];
          if (v119)
          {
            LODWORD(v119) = *(v103 + v119);
          }
        }

        *(a1 + 1652) = v119;
        v120 = (v103 - *v103);
        if (*v120 < 0x1Du)
        {
          LODWORD(v121) = 0;
        }

        else
        {
          v121 = v120[14];
          if (v121)
          {
            LODWORD(v121) = *(v103 + v121);
          }
        }

        *(a1 + 1656) = v121;
        v122 = (v103 - *v103);
        if (*v122 < 0xFu)
        {
          LODWORD(v123) = 0;
        }

        else
        {
          v123 = v122[7];
          if (v123)
          {
            LODWORD(v123) = *(v103 + v123);
          }
        }

        *(a1 + 1660) = v123;
        v124 = (v103 - *v103);
        if (*v124 < 0x1Fu)
        {
          LODWORD(v125) = 0;
        }

        else
        {
          v125 = v124[15];
          if (v125)
          {
            LODWORD(v125) = *(v103 + v125);
          }
        }

        *(a1 + 1664) = v125;
        v126 = (v103 - *v103);
        if (*v126 < 0x21u)
        {
          LODWORD(v127) = 0;
        }

        else
        {
          v127 = v126[16];
          if (v127)
          {
            LODWORD(v127) = *(v103 + v127);
          }
        }

        *(a1 + 1668) = v127;
        v128 = (v103 - *v103);
        if (*v128 < 0x23u)
        {
          LODWORD(v129) = 0;
        }

        else
        {
          v129 = v128[17];
          if (v129)
          {
            LODWORD(v129) = *(v103 + v129);
          }
        }

        *(a1 + 1672) = v129;
        v130 = (v103 - *v103);
        if (*v130 < 0x25u)
        {
          LODWORD(v131) = 0;
        }

        else
        {
          v131 = v130[18];
          if (v131)
          {
            LODWORD(v131) = *(v103 + v131);
          }
        }

        *(a1 + 1676) = v131;
        v132 = (v103 - *v103);
        if (*v132 < 0x27u)
        {
          LODWORD(v133) = 0;
        }

        else
        {
          v133 = v132[19];
          if (v133)
          {
            LODWORD(v133) = *(v103 + v133);
          }
        }

        *(a1 + 1680) = v133;
        v134 = (v103 - *v103);
        if (*v134 < 0x29u)
        {
          LODWORD(v135) = 0;
        }

        else
        {
          v135 = v134[20];
          if (v135)
          {
            LODWORD(v135) = *(v103 + v135);
          }
        }

        *(a1 + 1684) = v135;
        v136 = (v103 - *v103);
        if (*v136 < 0x2Bu)
        {
          LODWORD(v137) = 0;
        }

        else
        {
          v137 = v136[21];
          if (v137)
          {
            LODWORD(v137) = *(v103 + v137);
          }
        }

        *(a1 + 1688) = v137;
        v138 = (v103 - *v103);
        if (*v138 < 7u)
        {
          LODWORD(v139) = 0;
        }

        else
        {
          v139 = v138[3];
          if (v139)
          {
            LODWORD(v139) = *(v103 + v139);
          }
        }

        *(a1 + 1692) = v139;
        v140 = (v103 - *v103);
        if (*v140 >= 5u && (v141 = v140[2]) != 0)
        {
          v142 = *(v103 + v141);
        }

        else
        {
          v142 = 0;
        }

        *(a1 + 1700) = v142;
      }

      if (v465[53])
      {
        v143 = v465[54];
        if (v143)
        {
          v144 = v465[53];
        }

        else
        {
          v144 = v465[123];
        }

        if (v143)
        {
          v145 = v465 + 53;
        }

        else
        {
          v145 = v465 + 123;
        }
      }

      else
      {
        v145 = v465 + 123;
        v144 = v465[123];
      }

      MEMORY[0x29ED51E10](a1 + 1760, v144, v145[1]);
      std::string::push_back((a1 + 1760), 0);
      v146 = *v57;
      v147 = v57 - v146;
      v148 = *(v57 - v146);
      if (v148 < 0x39)
      {
        goto LABEL_269;
      }

      v149 = -v146;
      v150 = *(v147 + 28);
      if (v150)
      {
        v151 = (v57 + v150 + *(v57 + v150));
        if (*v151)
        {
          *(a1 + 1504) = 1;
          v152 = (v151 + v151[1] + 4);
          v153 = (v152 - *v152);
          if (*v153 >= 9u && (v154 = v153[4]) != 0)
          {
            v155 = *(v152 + v154);
          }

          else
          {
            v155 = 0;
          }

          *(a1 + 1704) = v155;
          *(a1 + 1708) = 1;
          v156 = *v57;
          v149 = -v156;
          v148 = *(v57 - v156);
        }
      }

      if (v148 < 0x3B)
      {
        goto LABEL_269;
      }

      v157 = v57 + v149;
      if (*(v157 + 29))
      {
        v158 = (v57 + *(v157 + 29) + *(v57 + *(v157 + 29)));
        v159 = *v158;
        if (v159)
        {
          v160 = v158 + 1;
          do
          {
            v162 = *v160++;
            v161 = v162;
            if (!(v162 >> 20))
            {
              *(a1 + 1488 + 8 * (v161 > 0x3F)) |= 1 << v161;
            }

            --v159;
          }

          while (v159);
        }
      }

      if (v148 < 0x57)
      {
LABEL_269:
        LODWORD(v163) = 0;
      }

      else
      {
        v163 = *(v157 + 43);
        if (*(v157 + 43))
        {
          LODWORD(v163) = *(v57 + v163);
        }
      }

      *(a1 + 692) = v163;
      v164 = (v57 - *v57);
      if (*v164 >= 0x21u && (v165 = v164[16]) != 0)
      {
        v166 = *(v57 + v165);
      }

      else
      {
        v166 = 0;
      }

      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
      }

      *(a1 + 696) = getAdditionalSpillBufferBytes(void)::extra + v166;
      v167 = (v57 - *v57);
      if (*v167 < 0x59u)
      {
        LODWORD(v168) = 0;
      }

      else
      {
        v168 = v167[44];
        if (v168)
        {
          LODWORD(v168) = *(v57 + v168);
        }
      }

      *(a1 + 720) = v168;
      v169 = (v57 - *v57);
      if (*v169 < 0x51u)
      {
        LODWORD(v170) = 0;
      }

      else
      {
        v170 = v169[40];
        if (v170)
        {
          LODWORD(v170) = *(v57 + v170);
        }
      }

      *(a1 + 724) = v170;
      v171 = (v57 - *v57);
      if (*v171 < 0x4Bu)
      {
        LODWORD(v172) = 0;
      }

      else
      {
        v172 = v171[37];
        if (v172)
        {
          LODWORD(v172) = *(v57 + v172);
        }
      }

      *(a1 + 732) = v172;
      v173 = (v57 - *v57);
      v174 = *v173;
      if (v174 >= 0x25)
      {
        if (v173[18] && *(v57 + v173[18]))
        {
          if (v174 < 0x27)
          {
            LOBYTE(v175) = 0;
            v176 = 1;
            goto LABEL_298;
          }

          v175 = v173[19];
          goto LABEL_292;
        }

        if (v174 >= 0x27)
        {
          v175 = v173[19];
          if (v173[19] && *(v57 + v173[19]))
          {
            v176 = 1;
            LOBYTE(v175) = 1;
            goto LABEL_298;
          }

          if (v174 < 0x29)
          {
            goto LABEL_715;
          }

          if (v173[20] && *(v57 + v173[20]))
          {
LABEL_292:
            v176 = 1;
            goto LABEL_716;
          }

          if (v174 >= 0x71 && (v442 = v173[56]) != 0)
          {
            v176 = *(v57 + v442) != 0;
          }

          else
          {
LABEL_715:
            v176 = 0;
          }

LABEL_716:
          if (v175)
          {
            LOBYTE(v175) = *(v57 + v175) != 0;
          }

LABEL_298:
          *(a1 + 742) = v175;
          v177 = (v470 - *v470);
          v178 = *v177;
          if (v178 < 0x21)
          {
            v180 = 0;
            LODWORD(v179) = 0;
          }

          else
          {
            v179 = v177[16];
            if (v177[16])
            {
              LODWORD(v179) = *(v470 + v179);
            }

            if (v178 < 0x4D)
            {
              v180 = 0;
            }

            else
            {
              v180 = v177[38];
              if (v177[38])
              {
                v180 = *(v470 + v180);
              }

              if (v178 >= 0x4F)
              {
                v181 = v177[39];
                if (v181)
                {
                  v181 = *(v470 + v181);
                }

LABEL_310:
                *(a1 + 784) = v179 | (v180 << 32);
                *(a1 + 792) = v181;
                *(a1 + 746) = (v176 | v175) & 1;
                v182 = *v57;
                v183 = (v57 - v182);
                v184 = *(v57 - v182);
                if (v184 < 0x37)
                {
                  LOBYTE(v185) = 0;
                }

                else
                {
                  v185 = v183[27];
                  if (v183[27])
                  {
                    LOBYTE(v185) = *(v57 + v185) != 0;
                  }
                }

                *(a1 + 741) = v185;
                v186 = (v470 - *v470);
                v187 = *v186;
                if (v187 < 0x33)
                {
                  LOBYTE(v188) = 0;
                }

                else
                {
                  v188 = v186[25];
                  if (v186[25])
                  {
                    LOBYTE(v188) = *(v470 + v188) != 0;
                  }
                }

                *(a1 + 747) = v188;
                if (v184 < 0x3F)
                {
                  LOBYTE(v189) = 0;
                }

                else
                {
                  v189 = v183[31];
                  if (v183[31])
                  {
                    v190 = (v57 + v189 + *(v57 + v189));
                    v189 = *v190;
                    if (v189)
                    {
                      v191 = v190 + 1;
                      while (1)
                      {
                        v193 = *v191++;
                        v192 = v193;
                        if (v193 < 0x36 && ((0x3F000000000777uLL >> v192) & 1) != 0)
                        {
                          break;
                        }

                        if (!--v189)
                        {
                          goto LABEL_327;
                        }
                      }

                      LOBYTE(v189) = 1;
                    }
                  }
                }

LABEL_327:
                *(a1 + 749) = v189;
                if (v187 <= 0x14)
                {
                  LOBYTE(v195) = 0;
                  *(a1 + 743) = 0;
                }

                else
                {
                  v194 = v186[10];
                  if (v186[10])
                  {
                    LOBYTE(v194) = *(v470 + v194) != 0;
                  }

                  *(a1 + 743) = v194;
                  if (v187 < 0x25)
                  {
                    LOBYTE(v195) = 0;
                  }

                  else
                  {
                    v195 = v186[18];
                    if (v186[18])
                    {
                      LOBYTE(v195) = *(v470 + v195) != 0;
                    }
                  }
                }

                v196 = -v182;
                *(a1 + 1585) = v195;
                if (v184 < 0x5D)
                {
                  LOBYTE(v197) = 0;
                }

                else
                {
                  v197 = v183[46];
                  if (v197)
                  {
                    LOBYTE(v197) = *(v57 + v197) != 0;
                  }
                }

                v461 = v176;
                *(a1 + 748) = v197;
                if (v187 >= 0x23 && (v198 = v186[17]) != 0)
                {
                  *(a1 + 1587) = 1;
                  v199 = (v470 + v198 + *(v470 + v198));
                  v200 = *v199;
                  if (v200)
                  {
                    v201 = &v199[v200];
                    while (1)
                    {
                      v202 = v199[1];
                      v203 = (++v199 + v202);
                      v204 = (v203 - *v203);
                      v205 = *v204;
                      if (v205 < 7)
                      {
                        v206 = 0;
                        v208 = 0;
                        if (v205 < 5)
                        {
                          goto LABEL_351;
                        }

                        v207 = v204[2];
                        if (v207)
                        {
                          goto LABEL_350;
                        }
                      }

                      else if (v204[3])
                      {
                        v206 = *(v203 + v204[3]);
                        v207 = v204[2];
                        if (v207)
                        {
                          goto LABEL_350;
                        }
                      }

                      else
                      {
                        v206 = 0;
                        v207 = v204[2];
                        if (v207)
                        {
LABEL_350:
                          v208 = *(v203 + v207);
                          goto LABEL_351;
                        }
                      }

                      v208 = 0;
LABEL_351:
                      v209 = v469;
LABEL_352:
                      v210 = *v209;
                      if (!*v209)
                      {
LABEL_356:
                        operator new();
                      }

                      while (1)
                      {
                        v209 = v210;
                        v211 = *(v210 + 28);
                        if (v208 < v211)
                        {
                          goto LABEL_352;
                        }

                        if (v211 >= v208)
                        {
                          break;
                        }

                        v210 = v209[1];
                        if (!v210)
                        {
                          goto LABEL_356;
                        }
                      }

                      v212 = v209;
                      v79 = v465;
                      v57 = v471;
                      *(v212 + 8) = v206;
                      if (v199 == v201)
                      {
                        v213 = *v471;
                        v196 = -v213;
                        v184 = *(v471 - v213);
                        v90 = v470;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  *(a1 + 1587) = 0;
                }

                if (v184 >= 0x21 && *(v57 + v196 + 32))
                {
                  v214 = *(v57 + *(v57 + v196 + 32));
                  {
                    goto LABEL_367;
                  }
                }

                else
                {
                  v214 = 0;
                  {
                    goto LABEL_367;
                  }
                }

                {
                  getAdditionalSpillBufferBytes(void)::extra = 0;
                }

LABEL_367:
                v215 = getAdditionalSpillBufferBytes(void)::extra + v214;
                *(a1 + 688) = getAdditionalSpillBufferBytes(void)::extra + v214;
                v216 = (v57 - *v57);
                if (*v216 < 0x43u)
                {
                  LODWORD(v217) = 0;
                }

                else
                {
                  v217 = v216[33];
                  if (v217)
                  {
                    LODWORD(v217) = *(v57 + v217);
                  }
                }

                *(a1 + 700) = v217;
                v218 = (v57 - *v57);
                if (*v218 < 5u)
                {
                  LODWORD(v219) = 0;
                }

                else
                {
                  v219 = v218[2];
                  if (v219)
                  {
                    LODWORD(v219) = *(v57 + v219);
                  }
                }

                *(a1 + 684) = v219;
                v220 = (v57 - *v57);
                if (*v220 < 0x51u)
                {
                  LODWORD(v221) = 0;
                }

                else
                {
                  v221 = v220[40];
                  if (v221)
                  {
                    LODWORD(v221) = *(v57 + v221);
                  }
                }

                *(a1 + 716) = v221;
                v222 = (v57 - *v57);
                if (*v222 < 0x4Fu)
                {
                  LODWORD(v223) = 0;
                }

                else
                {
                  v223 = v222[39];
                  if (v223)
                  {
                    LODWORD(v223) = *(v57 + v223);
                  }
                }

                *(a1 + 728) = v223;
                *(a1 + 736) = *(a4 + 468);
                v224 = (v57 - *v57);
                if ((*(v57 + v224[6] + *(v57 + v224[6])) | v215) != 0 || v461)
                {
                  goto LABEL_394;
                }

                v225 = *v224;
                if (v225 < 0x21)
                {
                  v226 = 0;
                  goto LABEL_389;
                }

                if (v224[16])
                {
                  v226 = *(v57 + v224[16]);
                  if (v225 < 0x43)
                  {
                    goto LABEL_389;
                  }
                }

                else
                {
                  v226 = 0;
                  if (v225 < 0x43)
                  {
                    goto LABEL_389;
                  }
                }

                if (v224[33])
                {
                  v227 = *(v57 + v224[33]);
                  {
                    goto LABEL_390;
                  }

                  goto LABEL_688;
                }

LABEL_389:
                v227 = 0;
                {
                  goto LABEL_390;
                }

LABEL_688:
                {
                  getAdditionalSpillBufferBytes(void)::extra = 0;
                }

LABEL_390:
                if (!(v227 + v226 + getAdditionalSpillBufferBytes(void)::extra))
                {
                  v228 = (v57 - *v57);
                  if (*v228 < 0x5Fu)
                  {
                    LOBYTE(v229) = 0;
                  }

                  else
                  {
                    v229 = v228[47];
                    if (v229)
                    {
                      LOBYTE(v229) = *(v57 + v229) != 0;
                    }
                  }

LABEL_395:
                  *(a1 + 740) = v229;
                  v230 = (v90 - *v90);
                  if (*v230 < 0x11u)
                  {
                    LODWORD(v231) = 0;
                  }

                  else
                  {
                    v231 = v230[8];
                    if (v231)
                    {
                      LODWORD(v231) = *(v90 + v231);
                    }
                  }

                  v232 = (a1 + 1200);
                  *(a1 + 1392) = v231;
                  {
                  }

                  v233 = v79 + 3;
                  if (v79[4])
                  {
                    v234 = v79[3] == 0;
                  }

                  else
                  {
                    v234 = 1;
                  }

                  v235 = v79 + 73;
                  if (v234)
                  {
                    v236 = v79 + 73;
                  }

                  else
                  {
                    v236 = v79 + 3;
                  }

                  AGX::Heap<true>::allocateImpl(__dst, a2 + 6496, v236[1], (a1 + 1448));
                  *(a1 + 1480) += *&__dst[16];
                  v237 = *&__dst[16];
                  *v232 = *__dst;
                  *(a1 + 1216) = v237;
                  *(a1 + 1225) = *&__dst[25];
                  *(a1 + 920) = *(a1 + 1200);
                  *(a1 + 952) = a2 + 6496;
                  v238 = *(a1 + 1216);
                  *(a1 + 960) = *v232;
                  *(a1 + 976) = v238;
                  *(a1 + 985) = *(a1 + 1225);
                  if (*v233)
                  {
                    v239 = v79[4];
                    if (v239)
                    {
                      v240 = *v233;
                    }

                    else
                    {
                      v240 = v79[73];
                    }

                    if (v239)
                    {
                      v235 = v79 + 3;
                    }
                  }

                  else
                  {
                    v240 = *v235;
                  }

                  v241 = v460;
                  memcpy(*(a1 + 1208), v240, v235[1]);
                  v242 = *(a1 + 1208);
                  v243 = *(a1 + 1216);
                  *(a1 + 928) = *(a1 + 920);
                  *(a1 + 936) = v242;
                  *(a1 + 944) = v243;
                  v244 = v79 + 8;
                  if (v79[8])
                  {
                    if (v79[9])
                    {
                      v245 = v79 + 8;
                    }

                    else
                    {
                      v245 = v79 + 78;
                    }

                    v246 = v245[1];
                    if (!v246)
                    {
                      goto LABEL_430;
                    }
                  }

                  else
                  {
                    v246 = v79[79];
                    if (!v246)
                    {
                      goto LABEL_430;
                    }
                  }

                  AGX::Heap<true>::allocateImpl(__dst, a2 + 6328, v246, (a1 + 1456));
                  *(a1 + 1480) += *&__dst[16];
                  v247 = *&__dst[16];
                  *(a1 + 1248) = *__dst;
                  *(a1 + 1264) = v247;
                  *(a1 + 1273) = *&__dst[25];
                  v248 = *(a1 + 1264);
                  *(a1 + 1008) = *(a1 + 1248);
                  *(a1 + 1024) = v248;
                  *(a1 + 1033) = *(a1 + 1273);
                  if (*v244)
                  {
                    v249 = v79[9];
                    if (v249)
                    {
                      v250 = *v244;
                    }

                    else
                    {
                      v250 = v79[78];
                    }

                    if (v249)
                    {
                      v251 = v79 + 8;
                    }

                    else
                    {
                      v251 = v79 + 78;
                    }
                  }

                  else
                  {
                    v251 = v79 + 78;
                    v250 = v79[78];
                  }

                  v241 = v460;
                  memcpy(*(a1 + 1256), v250, v251[1]);
LABEL_430:
                  v252 = v79 + 13;
                  if (v79[13])
                  {
                    if (v79[14])
                    {
                      v253 = v79 + 13;
                    }

                    else
                    {
                      v253 = v79 + 83;
                    }

                    v254 = v253[1];
                    if (!v254)
                    {
                      goto LABEL_446;
                    }
                  }

                  else
                  {
                    v254 = v79[84];
                    if (!v254)
                    {
                      goto LABEL_446;
                    }
                  }

                  AGX::Heap<true>::allocateImpl(__dst, a2 + 6328, v254, (a1 + 1464));
                  *(a1 + 1480) += *&__dst[16];
                  v255 = *&__dst[16];
                  *(a1 + 1296) = *__dst;
                  *(a1 + 1312) = v255;
                  *(a1 + 1321) = *&__dst[25];
                  v256 = *(a1 + 1312);
                  *(a1 + 1056) = *(a1 + 1296);
                  *(a1 + 1072) = v256;
                  *(a1 + 1081) = *(a1 + 1321);
                  if (*v252)
                  {
                    v257 = v79[14];
                    if (v257)
                    {
                      v258 = *v252;
                    }

                    else
                    {
                      v258 = v79[83];
                    }

                    if (v257)
                    {
                      v259 = v79 + 13;
                    }

                    else
                    {
                      v259 = v79 + 83;
                    }
                  }

                  else
                  {
                    v259 = v79 + 83;
                    v258 = v79[83];
                  }

                  v241 = v460;
                  memcpy(*(a1 + 1304), v258, v259[1]);
                  v260 = *(a1 + 1312);
                  *(a1 + 1152) = *(a1 + 1296);
                  *(a1 + 1168) = v260;
LABEL_446:
                  v261 = v79 + 23;
                  if (v79[23])
                  {
                    if (!v79[24])
                    {
                      v261 = v79 + 93;
                    }

                    v262 = v261[1];
                    if (!v262)
                    {
                      goto LABEL_451;
                    }
                  }

                  else
                  {
                    v262 = v79[94];
                    if (!v262)
                    {
LABEL_451:
                      v266 = v467;
                      v267 = v470;
                      if ((*(a1 + 888) & 1) != 0 || *(*(a1 + 8) + 16945) == 1)
                      {
                        {
                          {
                            v269 = v459;
                            if (*(a1 + 839) < 0)
                            {
                              v269 = *v459;
                            }

                            v270 = v457;
                            if (*(a1 + 887) < 0)
                            {
                              v270 = v457->__r_.__value_.__r.__words[0];
                            }

                            v271 = v458;
                            if (*(a1 + 863) < 0)
                            {
                              v271 = *v458;
                            }

                            v272 = *(a1 + 800);
                            v273 = *(a1 + 808);
                            v274 = v456;
                            if (*(a1 + 919) < 0)
                            {
                              v274 = *v456;
                            }

                            v275 = *(a1 + 920);
                            v276 = *(a1 + 1216);
                            *__dst = 136448002;
                            *&__dst[4] = v269;
                            *&__dst[12] = 2082;
                            *&__dst[14] = v270;
                            *&__dst[22] = 2082;
                            *&__dst[24] = v271;
                            *&__dst[32] = 1026;
                            *&__dst[34] = v272;
                            *&__dst[38] = 2050;
                            *&__dst[40] = v273;
                            *v476 = 2082;
                            *&v476[2] = v274;
                            *&v476[10] = 2050;
                            *&v476[12] = v275;
                            v477 = 2050;
                            v478 = v276;
                            _os_signpost_emit_with_name_impl(&dword_29CA13000, v268, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
                          }
                        }

                        v277 = *(a1 + 8);
                        v278 = v459;
                        if (*(a1 + 839) < 0)
                        {
                          v278 = *v459;
                        }

                        v279 = v457;
                        if (*(a1 + 887) < 0)
                        {
                          v279 = v457->__r_.__value_.__r.__words[0];
                        }

                        v280 = v458;
                        if (*(a1 + 863) < 0)
                        {
                          v280 = *v458;
                        }

                        v281 = v456;
                        if (*(a1 + 919) < 0)
                        {
                          v281 = *v456;
                        }

                        v282 = *(a1 + 800);
                        v283 = *(a1 + 808);
                        v284 = *(a1 + 920);
                        v285 = *(a1 + 1216);
                        v286 = *(a1 + 888);
                        *__dst = v278;
                        *&__dst[8] = v279;
                        *&__dst[16] = v280;
                        *&__dst[24] = v281;
                        *&__dst[32] = v282;
                        *&__dst[40] = v283;
                        *v476 = v284;
                        *&v476[8] = v285;
                        v476[16] = v286;
                        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v277, a1, __dst);
                      }

                      v287 = *(a4 + 208);
                      v289 = *(a4 + 144);
                      v288 = *(a4 + 148);
                      if (v287)
                      {
                        v290 = *(a4 + 144);
                      }

                      else
                      {
                        v290 = 0;
                      }

                      v291 = *(a4 + 176);
                      if (*(a4 + 176) == 0)
                      {
                        v289 = 0;
                      }

                      v292 = (*(a4 + 132) + *(a4 + 124) + *(a4 + 140) - (*(a4 + 128) + *(a4 + 120) + *(a4 + 136)));
                      *(a1 + 48) = v290 + v288 + v289 + *(a4 + 152) + ((v292 + 3) & 0xFFFFFFFC);
                      v293 = *(a1 + 56);
                      v294 = (*(a1 + 64) - v293) >> 2;
                      if (v292 <= v294)
                      {
                        if (v292 < v294)
                        {
                          *(a1 + 64) = v293 + 4 * v292;
                        }
                      }

                      else
                      {
                        std::vector<unsigned int>::__append(v467, v292 - v294);
                        v291 = *(a4 + 176);
                        v288 = *(a4 + 148);
                        v287 = *(a4 + 208);
                      }

                      if (v287)
                      {
                        v295 = *(a4 + 144);
                      }

                      else
                      {
                        v295 = 0;
                      }

                      if (v291 | *(a4 + 184))
                      {
                        v296 = *(a4 + 144);
                      }

                      else
                      {
                        v296 = 0;
                      }

                      v297 = (v288 + v295 + v296);
                      v298 = *(a1 + 144);
                      v299 = (*(a1 + 152) - v298) >> 2;
                      if (v297 <= v299)
                      {
                        if (v297 < v299)
                        {
                          *(a1 + 152) = v298 + 4 * v297;
                        }
                      }

                      else
                      {
                        std::vector<unsigned int>::__append(v241, v297 - v299);
                      }

                      v300 = *v471;
                      v301 = *(v471 - v300 + 16);
                      v302 = *(v471 + v301);
                      v303 = *(v471 + v301 + v302);
                      if (v303)
                      {
                        v304 = 4 * v303;
                        v305 = v301 + v302;
                        while (1)
                        {
                          v307 = *(v471 + v305 + 4);
                          v308 = v471 + v305 + v307;
                          v309 = v307 - *(v308 + 1);
                          v310 = v471 + v305 + v309;
                          v311 = *(v310 + 2);
                          if (v311 < 7)
                          {
                            v314 = -*(a4 + 120);
                            if (v311 >= 5)
                            {
                              goto LABEL_509;
                            }

                            goto LABEL_517;
                          }

                          v312 = *(v310 + 5);
                          if (!v312 || (*(v471 + v305 + v307 + v312 + 4) & 0x80000000) == 0)
                          {
                            break;
                          }

LABEL_497:
                          v305 += 4;
                          v304 -= 4;
                          if (!v304)
                          {
                            v300 = *v471;
                            goto LABEL_524;
                          }
                        }

                        if (v311 <= 8)
                        {
                          v314 = -*(a4 + 120);
                        }

                        else
                        {
                          if (*(v471 + v305 + v309 + 12))
                          {
                            v313 = 4 * *(v471 + v305 + v307 + *(v471 + v305 + v309 + 12) + 4);
                          }

                          else
                          {
                            v313 = 0;
                          }

                          v314 = v313 - *(a4 + 120);
                        }

LABEL_509:
                        if (*(v471 + v305 + v309 + 8))
                        {
                          v315 = *(v471 + v305 + v307 + *(v471 + v305 + v309 + 8) + 4) != 6;
                          if (v311 >= 7)
                          {
LABEL_513:
                            v316 = *(v471 + v305 + v309 + 10);
                            if (v316)
                            {
                              v317 = 4 * (*(v471 + v305 + v307 + v316 + 4) & 0xFFFFF);
                              if (v315)
                              {
                                goto LABEL_518;
                              }

LABEL_517:
                              v317 = 0x40000000;
LABEL_518:
                              v467->__begin_[v314] = v317 & 0x1FFFFFFF | 0x40000000;
                              v467->__begin_[v314 + 1] = (v317 + 1) & 0x1FFFFFFF | 0x40000000;
                              v467->__begin_[v314 + 2] = (v317 + 2) & 0x1FFFFFFF | 0x40000000;
                              v467->__begin_[v314 + 3] = (v317 + 3) & 0x1FFFFFFF | 0x40000000;
                              v318 = v307 - *(v308 + 1);
                              v319 = v471 + v305 + v318;
                              if (*(v319 + 2) >= 0xBu)
                              {
                                v320 = *(v319 + 7);
                                if (v320)
                                {
                                  if (*(v471 + v305 + v307 + v320 + 4))
                                  {
                                    v321 = *(v471 + v305 + v318 + 10);
                                    if (v321)
                                    {
                                      v306 = *(v471 + v305 + v307 + v321 + 4) & 0xFFFFF;
                                    }

                                    else
                                    {
                                      v306 = 0;
                                    }

                                    *(a1 + 768 + 8 * (v306 > 0x3F)) |= 1 << v306;
                                  }
                                }
                              }

                              goto LABEL_497;
                            }
                          }
                        }

                        else
                        {
                          v315 = 1;
                          if (v311 >= 7)
                          {
                            goto LABEL_513;
                          }
                        }

                        v317 = 0x40000000;
                        if (!v315)
                        {
                          goto LABEL_517;
                        }

                        goto LABEL_518;
                      }

LABEL_524:
                      v322 = -v300;
                      v323 = v471 + v322;
                      if (*(a1 + 742))
                      {
                        v324 = *(v323 + 12);
                        v325 = *(v471 + v324);
                        v326 = (v471 + v324 + v325);
                        v327 = *v326;
                        if (v327)
                        {
                          v328 = 0;
                          v329 = 4 * v327;
                          v330 = v471 + v324 + v325;
                          while (1)
                          {
                            v331 = v326[v328 / 4 + 1];
                            v332 = v331 - *(&v326[v328 / 4 + 1] + v331);
                            v333 = &v330[v328 + v332];
                            v334 = *(v333 + 2);
                            if (v334 >= 5)
                            {
                              v335 = *(v333 + 4);
                              if (v335)
                              {
                                if (v330[v328 + 4 + v331 + v335] == 93)
                                {
                                  if (v334 < 7)
                                  {
                                    break;
                                  }

                                  v336 = *&v330[v328 + 10 + v332];
                                  if (!v336)
                                  {
                                    break;
                                  }

                                  v337 = *&v330[v328 + 4 + v331 + v336];
                                  if ((v337 & 0x80000000) == 0 && (v337 & 0xFFF00000) != 0x400000)
                                  {
                                    break;
                                  }
                                }
                              }
                            }

                            v328 += 4;
                            if (v329 == v328)
                            {
                              goto LABEL_536;
                            }
                          }

                          *(a1 + 768) = vorrq_s8(*(a1 + 768), *(a1 + 784));
                        }
                      }

LABEL_536:
                      v338 = *(v323 + 10);
                      v339 = *(v471 + v338);
                      v340 = *(v471 + v338 + v339);
                      if (!v340)
                      {
                        goto LABEL_555;
                      }

                      v341 = 4 * v340;
                      v342 = v338 + v339;
                      while (1)
                      {
                        v343 = *(v471 + v342 + 4);
                        v344 = v343 - *(v471 + v342 + v343 + 4);
                        v345 = v471 + v342 + v344;
                        v346 = *(v345 + 2);
                        if (v346 < 7)
                        {
                          goto LABEL_545;
                        }

                        v347 = *(v345 + 5);
                        if (!v347 || (*(v471 + v342 + v343 + v347 + 4) & 0x80000000) == 0)
                        {
                          break;
                        }

LABEL_538:
                        v342 += 4;
                        v341 -= 4;
                        if (!v341)
                        {
                          v322 = -*v471;
LABEL_555:
                          v462 = a1 + 752;
                          v353 = (v471 + *(v471 + v322 + 12));
                          v354 = (v353 + *v353);
                          v355 = *v354;
                          if (v355)
                          {
                            v356 = &v354[v355];
                            while (1)
                            {
                              v357 = v354[1];
                              v358 = (++v354 + v357);
                              v359 = (v358 - *v358);
                              v360 = *v359;
                              if (v360 < 7)
                              {
                                LODWORD(v361) = 0;
                                goto LABEL_565;
                              }

                              if (!v359[3] || (*(v358 + v359[3]) & 0x80000000) == 0)
                              {
                                break;
                              }

LABEL_557:
                              if (v354 == v356)
                              {
                                goto LABEL_595;
                              }
                            }

                            if (v360 < 9)
                            {
                              LODWORD(v361) = 0;
                              goto LABEL_566;
                            }

                            v361 = v359[4];
                            if (v359[4])
                            {
                              LODWORD(v361) = (*(v358 + v361) >> 1) & 0x1FFFFFFF;
                              goto LABEL_566;
                            }

LABEL_565:
                            if (v360 < 7)
                            {
                              LODWORD(v362) = 0;
                            }

                            else
                            {
LABEL_566:
                              v362 = v359[3];
                              if (v362)
                              {
                                LODWORD(v362) = *(v358 + v362) & 0xFFFFF;
                                if (v362 == 62)
                                {
                                  v363 = 0;
                                }

                                else
                                {
                                  v363 = 536871012;
                                }

                                if (v362 == 49)
                                {
                                  v363 = 536871011;
                                }

LABEL_576:
                                v364 = *(a4 + 124) + v361 + *(a4 + 132) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136));
                                *(*v266 + 4 * v364) = v363;
                                v365 = (v358 - *v358);
                                if (*v365 >= 0xBu)
                                {
                                  v366 = v365[5];
                                  if (v366)
                                  {
                                    if (*(v358 + v366))
                                    {
                                      *(v462 + 8 * (v362 > 0x3F)) |= 1 << v362;
                                    }
                                  }
                                }

                                if (*(a1 + 1587) == 1)
                                {
                                  v367 = *v469;
                                  if (!*v469)
                                  {
LABEL_718:
                                    abort();
                                  }

                                  v368 = 2 * v364;
                                  v369 = (2 * v364) | 1;
                                  while (1)
                                  {
                                    while (1)
                                    {
                                      v370 = *(v367 + 7);
                                      if (v362 >= v370)
                                      {
                                        break;
                                      }

                                      v367 = *v367;
                                      if (!v367)
                                      {
                                        goto LABEL_718;
                                      }
                                    }

                                    if (v370 >= v362)
                                    {
                                      break;
                                    }

                                    v367 = v367[1];
                                    if (!v367)
                                    {
                                      goto LABEL_718;
                                    }
                                  }

                                  v371 = v466;
LABEL_589:
                                  v372 = *v371;
                                  if (!*v371)
                                  {
LABEL_593:
                                    operator new();
                                  }

                                  while (1)
                                  {
                                    v371 = v372;
                                    v373 = *(v372 + 28);
                                    if (v369 < v373)
                                    {
                                      goto LABEL_589;
                                    }

                                    if (v373 > v368)
                                    {
                                      break;
                                    }

                                    v372 = v371[1];
                                    if (!v372)
                                    {
                                      goto LABEL_593;
                                    }
                                  }

                                  v374 = v371;
                                  v266 = v467;
                                  v267 = v470;
                                  *(v374 + 8) = *(v367 + 8);
                                }

                                goto LABEL_557;
                              }
                            }

                            v363 = 536871012;
                            goto LABEL_576;
                          }

LABEL_595:
                          AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather(v266);
                          v377 = *(a4 + 120);
                          v376 = *(a4 + 124);
                          v378 = *(a4 + 128);
                          v379 = *(a4 + 132);
                          v380 = *(a4 + 136);
                          v381 = *(a4 + 140);
                          v382 = (v376 + v379 + v381 - (v377 + v378 + v380) + 3) & 0xFFFFFFFC;
                          v383 = *(a4 + 160);
                          v384 = *(a4 + 168);
                          if (*(a4 + 160) == 0)
                          {
                            goto LABEL_613;
                          }

                          v385 = 0;
                          v386 = *(a4 + 144);
                          if (*(a4 + 208) != 1 || !v386)
                          {
                            goto LABEL_607;
                          }

                          v387 = 0;
                          *__dst = *(a4 + 160);
                          *&v474 = v384;
                          v388 = v383;
                          while (2)
                          {
                            if (v388)
                            {
                              v389 = __clz(__rbit64(v388));
                              v390 = __dst;
                              v391 = v389;
LABEL_600:
                              *v390 = v388 & ~(1 << v389);
                              v392 = &v460->__begin_[v387];
                              *v392 = 4 * v391;
                              *(v392 + 4) = vorr_s8(vdup_n_s32(4 * v391), 0x200000001);
                              *(v392 + 12) = (4 * (v391 & 0x7F)) | 3;
                              v387 += 4;
                              v388 = *__dst;
                              continue;
                            }

                            break;
                          }

                          v388 = v474;
                          if (v474)
                          {
                            v389 = __clz(__rbit64(v474));
                            v391 = v389 | 0x40;
                            v390 = &v474;
                            goto LABEL_600;
                          }

                          v380 = *(a4 + 136);
                          v381 = *(a4 + 140);
                          v378 = *(a4 + 128);
                          v379 = *(a4 + 132);
                          v377 = *(a4 + 120);
                          v376 = *(a4 + 124);
                          v386 = *(a4 + 144);
                          v385 = v386;
LABEL_607:
                          v393 = *(a4 + 176);
                          if (*&v393 != 0 && v386 != 0)
                          {
                            v406 = v385 - v382 + ((v381 + v379 - (v380 + v378 + v377) + v376 + 3) & 0xFFFFFFFC);
                            *__dst = v383;
                            *&v474 = v384;
                            while (1)
                            {
                              if (v383)
                              {
                                v407 = __dst;
                              }

                              else
                              {
                                v383 = v474;
                                if (!v474)
                                {
                                  break;
                                }

                                v407 = &v474;
                              }

                              *v407 = v383 & (v383 - 1);
                              begin = v460->__begin_;
                              v460->__begin_[v406] = 0;
                              begin[v406 + 1] = 1;
                              begin[v406 + 2] = 2;
                              begin[v406 + 3] = 3;
                              v406 += 4;
                              v383 = *__dst;
                            }
                          }

                          v375 = vorrq_s8(*(a1 + 768), v393);
                          *(a1 + 768) = v375;
LABEL_613:
                          if (*(a4 + 148))
                          {
                            v395 = *(a4 + 144);
                            if (*(a4 + 208))
                            {
                              v396 = *(a4 + 144);
                            }

                            else
                            {
                              v396 = 0;
                            }

                            if (*(a4 + 176) == 0)
                            {
                              v395 = 0;
                            }

                            v397 = ((*(a4 + 124) + *(a4 + 132) + *(a4 + 140) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136)) + 3) & 0xFFFFFFFC) - v382 + v396 + v395;
                            v399 = *(a4 + 192);
                            v398 = *(a4 + 200);
                            *__dst = v399;
                            *&v474 = v398;
                            while (1)
                            {
                              if (v399)
                              {
                                v400 = __clz(__rbit64(v399));
                                v401 = __dst;
                                v402 = v400;
                              }

                              else
                              {
                                v399 = v474;
                                if (!v474)
                                {
                                  break;
                                }

                                v400 = __clz(__rbit64(v474));
                                v402 = v400 | 0x40;
                                v401 = &v474;
                              }

                              *v401 = v399 & ~(1 << v400);
                              v403 = *(a1 + 144);
                              *(v403 + 4 * v397) = v402 + 96;
                              if (*(a1 + 1584) == 1)
                              {
                                *(v403 + 4 * (v397 + 1)) = -1;
                                *(v403 + 4 * (v397 + 2)) = 0;
                              }

                              v397 += 4;
                              v399 = *__dst;
                            }
                          }

                          if (*(a4 + 467) == 1)
                          {
                            v404 = (v471 - *v471);
                            if (*v404 < 0x17u)
                            {
                              LODWORD(v405) = 0;
                            }

                            else
                            {
                              v405 = v404[11];
                              if (v405)
                              {
                                v405 = (*(v471 + v405) + 3) >> 2;
                              }
                            }

                            *(a1 + 408) = v405;
                            *(a1 + 412) = 200;
                          }

                          v409 = (v471 - *v471);
                          if (*v409 >= 0x17u && (v410 = v409[11]) != 0)
                          {
                            v411 = *(v471 + v410) + 3;
                            v412 = (a1 + 176);
                            v413 = *(a1 + 176);
                            v414 = v411 >> 2;
                            *(a1 + 52) = v414;
                            v415 = *(a1 + 168);
                            v416 = (v413 - v415) >> 2;
                            if (v414 > v416)
                            {
                              std::vector<unsigned int>::__append((a1 + 168), v414 - v416);
                              goto LABEL_645;
                            }
                          }

                          else
                          {
                            v414 = 0;
                            v412 = (a1 + 176);
                            v417 = *(a1 + 176);
                            *(a1 + 52) = 0;
                            v415 = *(a1 + 168);
                            v416 = (v417 - v415) >> 2;
                          }

                          if (v416 > v414)
                          {
                            *v412 = v415 + 4 * v414;
                          }

LABEL_645:
                          if (v455 != (a4 + 216))
                          {
                            std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v455, *(a4 + 216), *(a4 + 224), (*(a4 + 224) - *(a4 + 216)) >> 2);
                          }

                          if (v454 != (a4 + 240))
                          {
                            std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v454, *(a4 + 240), *(a4 + 248), (*(a4 + 248) - *(a4 + 240)) >> 2);
                          }

                          if (v453 != (a4 + 320))
                          {
                            std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v453, *(a4 + 320), *(a4 + 328), (*(a4 + 328) - *(a4 + 320)) >> 1);
                          }

                          if (v452 != (a4 + 368))
                          {
                            std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v452, *(a4 + 368), *(a4 + 376), (*(a4 + 376) - *(a4 + 368)) >> 1);
                          }

                          *(a1 + 352) = *(a4 + 416);
                          *(a1 + 744) = *(a4 + 160) != 0;
                          *(a1 + 745) = *(a4 + 148) != 0;
                          v418 = *(v471 - *v471 + 24);
                          v419 = *(v471 + v418);
                          v420 = (v471 + v418 + v419);
                          v421 = *v420;
                          if (v421)
                          {
                            v422 = 0;
                            v423 = 4 * v421;
                            v424 = v471 + v418 + v419;
                            do
                            {
                              v425 = v420[v422 / 4 + 1];
                              v426 = v425 - *(&v420[v422 / 4 + 1] + v425);
                              v427 = &v424[v422 + v426];
                              v428 = *(v427 + 2);
                              if (v428 >= 5)
                              {
                                v429 = *(v427 + 4);
                                if (v429)
                                {
                                  if (v428 >= 7 && v424[v422 + 4 + v425 + v429] == 139)
                                  {
                                    if (*&v424[v422 + 10 + v426])
                                    {
                                      v430 = *&v424[v422 + 4 + v425 + *&v424[v422 + 10 + v426]] & 0xFFFFF;
                                      if (v428 >= 0xB)
                                      {
                                        goto LABEL_664;
                                      }
                                    }

                                    else
                                    {
                                      v430 = 0;
                                      if (v428 >= 0xB)
                                      {
LABEL_664:
                                        v431 = *&v424[v422 + 14 + v426];
                                        if (v431 && v424[v422 + 4 + v425 + v431])
                                        {
                                          *(v462 + 8 * (v430 > 0x3F)) |= 1 << v430;
                                        }
                                      }
                                    }
                                  }
                                }
                              }

                              v422 += 4;
                            }

                            while (v423 != v422);
                          }

                          v432 = (v267 - *v267);
                          if (*v432 >= 0xDu)
                          {
                            v433 = v432[6];
                            if (v432[6])
                            {
                              v434 = v470 + v433;
                              v435 = *(v470 + v433);
                              if (*(v470 + v433 + v435) > ((*(a1 + 1528) - *(a1 + 1512)) >> 4))
                              {
                                operator new();
                              }

                              v436 = (v470 - *v470);
                              if (*v436 >= 0x41u && (v437 = v436[32]) != 0)
                              {
                                v438 = v470 + v437 + *(v470 + v437);
                                if (!*&v434[v435])
                                {
                                  goto LABEL_698;
                                }

LABEL_676:
                                if (v438)
                                {
                                  v439 = 0;
                                  v440 = v470 + v433 + v435 + 4;
                                  do
                                  {
                                    if (*v438)
                                    {
                                      v441 = *(v438 + 8 * v439 + 4);
                                    }

                                    else
                                    {
                                      v441 = 0;
                                    }

                                    *__dst = *(v440 + 8 * v439);
                                    *&__dst[8] = v441;
                                    std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v464, __dst);
                                    ++v439;
                                  }

                                  while (v439 < *&v434[v435]);
                                }

                                else
                                {
                                  v443 = v470 + v433 + v435 + 4;
                                  do
                                  {
                                    *__dst = *(v443 + 8 * v438);
                                    std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v464, __dst);
                                    ++v438;
                                  }

                                  while (v438 < *&v434[v435]);
                                }
                              }

                              else
                              {
                                v438 = 0;
                                if (*&v434[v435])
                                {
                                  goto LABEL_676;
                                }
                              }
                            }
                          }

LABEL_698:
                          v444 = (v470 - *v470);
                          if (*v444 >= 0xBu)
                          {
                            v445 = v444[5];
                            if (v445)
                            {
                              v446 = (v470 + v445 + *(v470 + v445));
                              if (*v446 > ((*(a1 + 1576) - *(a1 + 1560)) >> 4))
                              {
                                operator new();
                              }

                              if (*v446 > ((*(a1 + 1552) - *(a1 + 1536)) >> 3))
                              {
                                operator new();
                              }

                              if (*v446)
                              {
                                v447 = 0;
                                v448 = v446 + 1;
                                do
                                {
                                  AGX::SamplerDescriptor::SamplerDescriptor(__dst, (v448 + *v448), *v375.i32);
                                  AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v474, a2, __dst);
                                  std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](a1 + 1560, &v474);
                                  v473 = *(v474 + 96);
                                  std::vector<unsigned long long>::push_back[abi:nn200100](v463, &v473);
                                  v449 = *(&v474 + 1);
                                  if (*(&v474 + 1) && !atomic_fetch_add((*(&v474 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                                  {
                                    (v449->__on_zero_shared)(v449);
                                    std::__shared_weak_count::__release_weak(v449);
                                  }

                                  if (SBYTE1(v478) < 0)
                                  {
                                    operator delete(*v476);
                                  }

                                  ++v447;
                                  ++v448;
                                }

                                while (v447 < *v446);
                              }
                            }
                          }

                          *(a1 + 1396) = 0;
                          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(__str.__r_.__value_.__l.__data_);
                          }

                          *a1 = &unk_2A23F7750;
                          *__dst = *v450;
                          *&__dst[16] = *(v450 + 16);
                          AGX::BackgroundObjectProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::BackgroundObjectProgramVariantESLState(a1 + 1784, a2, v465, a4, __dst);
                        }
                      }

                      if (v346 >= 9 && *(v471 + v342 + v344 + 12))
                      {
                        v348 = *(v471 + v342 + v343 + *(v471 + v342 + v344 + 12) + 4);
                      }

                      else
                      {
LABEL_545:
                        v348 = 0;
                      }

                      if (*(a1 + 1584))
                      {
                        v349 = 3;
                      }

                      else
                      {
                        v349 = 1;
                      }

                      v350 = 1610612832;
                      if (v346 >= 7)
                      {
                        v351 = *(v471 + v342 + v344 + 10);
                        if (v351)
                        {
                          v350 = (*(v471 + v342 + v343 + v351 + 4) & 0xFFFFF) + 1610612832;
                        }
                      }

                      v352 = *(a4 + 124) + v349 * v348 - (*(a4 + 120) + *(a4 + 128));
                      *(*(a1 + 56) + 4 * v352) = v350;
                      if (*(a1 + 1584) == 1)
                      {
                        v467->__begin_[v352 + 1] = 0x7FFFFFFF;
                        v467->__begin_[v352 + 2] = 1610612736;
                      }

                      goto LABEL_538;
                    }
                  }

                  AGX::Heap<true>::allocateImpl(__dst, a2 + 6328, v262, (a1 + 1472));
                  *(a1 + 1480) += *&__dst[16];
                  v263 = *&__dst[16];
                  *(a1 + 1344) = *__dst;
                  *(a1 + 1360) = v263;
                  *(a1 + 1369) = *&__dst[25];
                  v264 = *(a1 + 1360);
                  *(a1 + 1104) = *(a1 + 1344);
                  *(a1 + 1120) = v264;
                  *(a1 + 1129) = *(a1 + 1369);
                  v265 = *(a1 + 1360);
                  *(a1 + 1176) = *(a1 + 1344);
                  *(a1 + 1192) = v265;
                  v241 = v460;
                  goto LABEL_451;
                }

LABEL_394:
                LOBYTE(v229) = 1;
                goto LABEL_395;
              }
            }
          }

          v181 = 0;
          goto LABEL_310;
        }
      }

      v176 = 0;
      LOBYTE(v175) = 0;
      goto LABEL_298;
    }

    v67 = (v66 + *v66);
    v68 = (v67 - *v67);
    v69 = *v68;
    if (v68[2])
    {
      v70 = (v67 + v68[2] + *(v67 + v68[2]));
      if (v69 < 7)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v70 = 0;
      if (v69 < 7)
      {
        goto LABEL_115;
      }
    }

    v71 = v68[3];
    if (v71)
    {
      v72 = v67 + v71 + *(v67 + v71);
      if (!*v70)
      {
        goto LABEL_126;
      }

      goto LABEL_116;
    }

LABEL_115:
    v72 = 0;
    if (!*v70)
    {
      goto LABEL_126;
    }

LABEL_116:
    v73 = 0;
    v74 = v72 + 4;
    v75 = (v70 + 2);
    while (1)
    {
      v76 = *(v75 - 1);
      v77 = strlen(&v75[v76]);
      if (v77 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v78 = v77;
      if (v77 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v77;
      if (v77)
      {
        memmove(__dst, &v75[v76], v77);
      }

      __dst[v78] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 1712, __dst);
      v57 = v471;
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v74[4 * v73];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 1736, __dst);
      ++v73;
      v75 += 4;
      if (v73 >= *v70)
      {
        goto LABEL_126;
      }
    }

LABEL_719:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v27 < 0x45)
  {
    if (v27 < 0x3D)
    {
      LOWORD(v32) = 0;
      if (v27 < 0x3B)
      {
        LODWORD(v34) = 0;
        v35 = 0;
        LOWORD(v31) = 0;
        v33 = 0;
LABEL_56:
        *(a1 + 560) = v34;
        v36 = v32 + v34 - 1;
        v37 = -v34;
        v38 = *(a1 + 568);
        v39 = (v31 | ((v37 & v36) << 32) | (v33 << 48)) + v35 + (v38 & 0xFF000000);
        *(a1 + 568) = v39;
        if (v39 != v38)
        {
          *(a1 + 592) = 0uLL;
          *(a1 + 608) = 0uLL;
          *(a1 + 576) = 0uLL;
          *&v40 = -1;
          *(&v40 + 1) = -1;
          *(a1 + 624) = v40;
          *(a1 + 640) = v40;
          *(a1 + 656) = v40;
          *(a1 + 672) = -1;
        }

        v41 = (v470 - *v470);
        if (*v41 < 0x57u)
        {
          LODWORD(v42) = 0;
        }

        else
        {
          v42 = v41[43];
          if (v42)
          {
            LODWORD(v42) = *(v470 + v42);
          }
        }

        *(a1 + 680) = v42;
        v43 = *v470;
        v25 = -v43;
        v27 = *(v470 - v43);
        goto LABEL_63;
      }

      LOWORD(v31) = 0;
      v33 = v26[29];
      if (!v26[29])
      {
LABEL_41:
        if (v27 < 0x3F)
        {
          LODWORD(v34) = 0;
          v35 = 0;
        }

        else
        {
          v34 = v26[31];
          if (v26[31])
          {
            v34 = *(v470 + v34);
          }

          if (v27 < 0x4B)
          {
            v35 = 0;
          }

          else
          {
            v35 = v26[37];
            if (v26[37])
            {
              v35 = *(v470 + v35) << 16;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_40:
      v33 = *(v470 + v33);
      goto LABEL_41;
    }

    LOWORD(v31) = 0;
    v32 = v26[30];
    if (v26[30])
    {
      goto LABEL_38;
    }
  }

  else
  {
    v31 = v26[34];
    if (v26[34])
    {
      LODWORD(v31) = *(v470 + v31);
    }

    v32 = v26[30];
    if (v26[30])
    {
LABEL_38:
      LODWORD(v32) = *(v470 + v32);
    }
  }

  v33 = v26[29];
  if (!v26[29])
  {
    goto LABEL_41;
  }

  goto LABEL_40;
}

void sub_29CDFB4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, char *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, void **a20, void **a21, void **a22, void **a23, void **a24, void **a25, void **a26, void **a27, void **a28, uint64_t a29, void **a30, void **a31, uint64_t a32, void **a33, uint64_t a34, uint64_t a35, void **a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  CompileStatistics::~CompileStatistics(a19);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a36);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v44 + 1560));
  v46 = *a30;
  if (*a30)
  {
    *(v44 + 1544) = v46;
    operator delete(v46);
  }

  v47 = *a31;
  if (*a31)
  {
    *(v44 + 1520) = v47;
    operator delete(v47);
  }

  if (*a11 < 0)
  {
    operator delete(*a10);
    if ((*(v44 + 919) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v44 + 919) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v44 + 887) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  operator delete(*a24);
  if (*(v44 + 887) < 0)
  {
LABEL_8:
    operator delete(*a25);
    if ((*(v44 + 863) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((*(v44 + 863) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v44 + 839) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_27:
  operator delete(*a26);
  if ((*(v44 + 839) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a33);
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo(a12);
    v48 = *a20;
    if (*a20)
    {
      *(v44 + 336) = v48;
      operator delete(v48);
    }

    v49 = *a22;
    if (*a22)
    {
      *(v44 + 312) = v49;
      operator delete(v49);
    }

    v50 = *a21;
    if (*a21)
    {
      *(v44 + 288) = v50;
      operator delete(v50);
    }

    v51 = *a23;
    if (*a23)
    {
      *(v44 + 264) = v51;
      operator delete(v51);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v44 + 168);
    v52 = *a28;
    if (*a28)
    {
      *(v44 + 152) = v52;
      operator delete(v52);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a34);
    if (a44 < 0)
    {
      operator delete(__p);
    }

    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*a27);
  goto LABEL_11;
}

uint64_t *AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather(uint64_t *result)
{
  *(result + 80) = 1;
  v1 = *result;
  v2 = result[1] - *result;
  result[9] = v2 >> 2;
  if (v2)
  {
    operator new();
  }

  result[1] = v1;
  return result;
}

void sub_29CDFBA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void AGX::BlitFragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::BlitFragmentProgramVariant(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = 0;
  v473 = *MEMORY[0x29EDCA608];
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  *a1 = &unk_2A23F7E60;
  *(a1 + 8) = a2;
  *(a1 + 56) = 0u;
  v463 = (a1 + 56);
  *(a1 + 144) = 0u;
  v450 = (a1 + 144);
  *(a1 + 360) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 233) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 489) = 0u;
  v462 = (a1 + 544);
  *(a1 + 536) = a1 + 544;
  *(a1 + 560) = 0xFFFFFFFF00000001;
  *(a1 + 568) = 1610612736;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 672) = -1;
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *(a1 + 640) = v9;
  *(a1 + 656) = v9;
  *(a1 + 608) = 0u;
  *(a1 + 624) = v9;
  *(a1 + 680) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 808) = atomic_fetch_add((a2 + 17008), 1uLL);
  *(a1 + 896) = 0;
  v451 = (a1 + 896);
  *(a1 + 904) = 0u;
  v10 = a1 + 928;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1376) = 0;
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1392) = 0;
  *(a1 + 1396) = 0;
  v11 = (a1 + 1423);
  *(a1 + 1400) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  v454 = (a1 + 816);
  *(a1 + 873) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0;
  *(a1 + 1468) = 0u;
  *(a1 + 1439) = 0u;
  *(a1 + 1455) = 0u;
  *(a1 + 1423) = 0u;
  *(a1 + 1504) = 0;
  *(a1 + 1488) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1560) = 0u;
  v460 = a1 + 1512;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = *(a4 + 465);
  *(a1 + 1586) = 0;
  *(a1 + 1600) = 0u;
  v464 = (a1 + 1600);
  *(a1 + 1592) = a1 + 1600;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0;
  if (a3[28])
  {
    v12 = a3[29] == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = 28;
  if (v12)
  {
    v13 = 98;
    v14 = a3 + 98;
  }

  else
  {
    v14 = a3 + 28;
  }

  v15 = a3[v13];
  if (v15 && v14[1])
  {
    v8 = (v15 + *v15);
  }

  v16 = (v8 - *v8);
  if (*v16 >= 5u && (v17 = v16[2]) != 0)
  {
    v465 = (v8 + v17 + *(v8 + v17));
  }

  else
  {
    v465 = 0;
  }

  v18 = 0;
  if (a3[58])
  {
    v19 = a3[59] == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = 58;
  if (v19)
  {
    v20 = 128;
    v21 = a3 + 128;
  }

  else
  {
    v21 = a3 + 58;
  }

  v22 = a3[v20];
  if (v22 && v21[1])
  {
    v18 = (v22 + *v22);
  }

  v23 = (v18 - *v18);
  if (*v23 >= 5u && (v24 = v23[2]) != 0)
  {
    v25 = (v18 + v24 + *(v18 + v24));
  }

  else
  {
    v25 = 0;
  }

  v26 = *v25;
  v27 = -v26;
  v28 = (v25 - v26);
  v29 = *(v25 - v26);
  if (v29 < 0x25)
  {
    LOBYTE(v30) = 0;
  }

  else
  {
    v30 = v28[18];
    if (v28[18])
    {
      LOBYTE(v30) = *(v25 + v30) != 0;
    }
  }

  *(a1 + 1585) = v30;
  v31 = (v465 - *v465);
  if (*v31 < 0x55u || (v32 = v31[42]) == 0 || !*(v465 + v32))
  {
LABEL_63:
    if (v29 < 7)
    {
      LODWORD(v46) = 0;
    }

    else
    {
      v46 = *(v25 + v27 + 6);
      if (*(v25 + v27 + 6))
      {
        LODWORD(v46) = *(v25 + v46);
      }
    }

    v448 = (a1 + 304);
    v449 = (a1 + 256);
    v446 = (a1 + 328);
    v447 = (a1 + 280);
    *(a1 + 800) = v46;
    v47 = (v25 - *v25);
    if (*v47 >= 0x13u && (v48 = v47[9]) != 0)
    {
      v49 = v25 + v48 + *(v25 + v48) + 4;
    }

    else
    {
      v49 = "";
    }

    v452 = (a1 + 864);
    v453 = (a1 + 840);
    v443 = a1 + 1400;
    v459 = a1 + 1536;
    v445 = (a1 + 1616);
    MEMORY[0x29ED51E00](v454, v49);
    v50 = (v25 - *v25);
    if (*v50 >= 9u && (v51 = v50[4]) != 0)
    {
      v52 = v25 + v51 + *(v25 + v51) + 4;
    }

    else
    {
      v52 = "";
    }

    MEMORY[0x29ED51E00](v453, v52);
    v53 = (v25 - *v25);
    if (*v53 < 0x29u)
    {
      LOBYTE(v54) = 0;
    }

    else
    {
      v54 = v53[20];
      if (v54)
      {
        LOBYTE(v54) = *(v25 + v54) != 0;
      }
    }

    *(a1 + 888) = v54;
    std::string::operator=(v452, &__str);
    v55 = (v25 - *v25);
    if (*v55 >= 0x51u && (v56 = v55[40]) != 0)
    {
      v57 = v25 + v56 + *(v25 + v56) + 4;
    }

    else
    {
      v57 = "";
    }

    MEMORY[0x29ED51E00](v451, v57);
    v444 = v10;
    v58 = (v25 - *v25);
    v456 = a2;
    v461 = v25;
    if (*v58 >= 5u && v58[2] && *(a2 + 16608) == 1)
    {
      v59 = a3[1];
      if (v59 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_715;
      }

      v60 = *a3;
      if (v59 >= 0x17)
      {
        operator new();
      }

      __dst[23] = a3[1];
      if (v59)
      {
        memmove(__dst, v60, v59);
      }

      __dst[v59] = 0;
      if (*v11 < 0)
      {
        operator delete(*v443);
      }

      *v443 = *__dst;
      *(v443 + 16) = *&__dst[16];
      v61 = a3[3];
      if (a3[4])
      {
        v62 = v61 == 0;
      }

      else
      {
        v62 = 1;
      }

      if (v62)
      {
        v61 = a3[73];
      }

      *(a1 + 1424) = v61 - *a3;
    }

    v63 = a3 + 113;
    if (a3[43])
    {
      v64 = a3[44] == 0;
    }

    else
    {
      v64 = 1;
    }

    v65 = 43;
    if (v64)
    {
      v65 = 113;
    }

    else
    {
      v63 = a3 + 43;
    }

    v455 = a3;
    v66 = a3[v65];
    if (!v66 || !v63[1])
    {
LABEL_126:
      v79 = v455 + 138;
      if (v455[68])
      {
        v80 = v455[69] == 0;
      }

      else
      {
        v80 = 1;
      }

      v81 = 68;
      if (v80)
      {
        v81 = 138;
      }

      else
      {
        v79 = v455 + 68;
      }

      v82 = v455[v81];
      v83 = v79[1];
      if (v82)
      {
        v84 = v83 == 0;
      }

      else
      {
        v84 = 1;
      }

      if (v84)
      {
        v85 = 0;
        v86 = v465;
      }

      else
      {
        v87 = (v82 + *v82);
        v88 = (v87 - *v87);
        v86 = v465;
        if (*v88 >= 5u && (v89 = v88[2]) != 0)
        {
          v85 = *(v87 + v89);
        }

        else
        {
          v85 = 0;
        }
      }

      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
      }

      *(a1 + 1624) = (v85 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0) / 1000000.0;
      v90 = (v86 - *v86);
      if (*v90 < 5u)
      {
        LODWORD(v91) = 0;
      }

      else
      {
        v91 = v90[2];
        if (v91)
        {
          LODWORD(v91) = *(v86 + v91);
        }
      }

      *v445 = v91;
      v92 = (v86 - *v86);
      if (*v92 < 0x2Du)
      {
        LODWORD(v93) = 0;
      }

      else
      {
        v93 = v92[22];
        if (v93)
        {
          LODWORD(v93) = *(v86 + v93);
        }
      }

      *(a1 + 1620) = v93;
      v94 = (v86 - *v86);
      if (*v94 < 0x35u)
      {
        LODWORD(v95) = 0;
      }

      else
      {
        v95 = v94[26];
        if (v95)
        {
          LODWORD(v95) = *(v86 + v95);
        }
      }

      *(a1 + 1660) = v95;
      v96 = (v86 - *v86);
      if (*v96 < 0x43u)
      {
        LODWORD(v97) = 0;
      }

      else
      {
        v97 = v96[33];
        if (v97)
        {
          LODWORD(v97) = *(v86 + v97);
        }
      }

      *(a1 + 1696) = v97;
      v98 = v455 + 108;
      if (v455[38])
      {
        v99 = v455[39] == 0;
      }

      else
      {
        v99 = 1;
      }

      v100 = 38;
      if (v99)
      {
        v100 = 108;
      }

      else
      {
        v98 = v455 + 38;
      }

      v101 = v455[v100];
      if (v101 && v98[1])
      {
        v102 = (v101 + *v101);
        v103 = (v102 - *v102);
        if (*v103 < 0xDu)
        {
          LODWORD(v104) = 0;
        }

        else
        {
          v104 = v103[6];
          if (v104)
          {
            LODWORD(v104) = *(v102 + v104);
          }
        }

        *(a1 + 1620) = v104;
        v105 = (v102 - *v102);
        if (*v105 < 0xBu)
        {
          LODWORD(v106) = 0;
        }

        else
        {
          v106 = v105[5];
          if (v106)
          {
            LODWORD(v106) = *(v102 + v106);
          }
        }

        *(a1 + 1628) = v106;
        v107 = (v102 - *v102);
        if (*v107 < 0x11u)
        {
          LODWORD(v108) = 0;
        }

        else
        {
          v108 = v107[8];
          if (v108)
          {
            LODWORD(v108) = *(v102 + v108);
          }
        }

        *(a1 + 1632) = v108;
        v109 = (v102 - *v102);
        if (*v109 < 0x13u)
        {
          LODWORD(v110) = 0;
        }

        else
        {
          v110 = v109[9];
          if (v110)
          {
            LODWORD(v110) = *(v102 + v110);
          }
        }

        *(a1 + 1636) = v110;
        v111 = (v102 - *v102);
        if (*v111 < 0x17u)
        {
          LODWORD(v112) = 0;
        }

        else
        {
          v112 = v111[11];
          if (v112)
          {
            LODWORD(v112) = *(v102 + v112);
          }
        }

        *(a1 + 1640) = v112;
        v113 = (v102 - *v102);
        if (*v113 < 0x1Bu)
        {
          LODWORD(v114) = 0;
        }

        else
        {
          v114 = v113[13];
          if (v114)
          {
            LODWORD(v114) = *(v102 + v114);
          }
        }

        *(a1 + 1644) = v114;
        v115 = (v102 - *v102);
        if (*v115 < 0x15u)
        {
          LODWORD(v116) = 0;
        }

        else
        {
          v116 = v115[10];
          if (v116)
          {
            LODWORD(v116) = *(v102 + v116);
          }
        }

        *(a1 + 1648) = v116;
        v117 = (v102 - *v102);
        if (*v117 < 0x19u)
        {
          LODWORD(v118) = 0;
        }

        else
        {
          v118 = v117[12];
          if (v118)
          {
            LODWORD(v118) = *(v102 + v118);
          }
        }

        *(a1 + 1652) = v118;
        v119 = (v102 - *v102);
        if (*v119 < 0x1Du)
        {
          LODWORD(v120) = 0;
        }

        else
        {
          v120 = v119[14];
          if (v120)
          {
            LODWORD(v120) = *(v102 + v120);
          }
        }

        *(a1 + 1656) = v120;
        v121 = (v102 - *v102);
        if (*v121 < 0xFu)
        {
          LODWORD(v122) = 0;
        }

        else
        {
          v122 = v121[7];
          if (v122)
          {
            LODWORD(v122) = *(v102 + v122);
          }
        }

        *(a1 + 1660) = v122;
        v123 = (v102 - *v102);
        if (*v123 < 0x1Fu)
        {
          LODWORD(v124) = 0;
        }

        else
        {
          v124 = v123[15];
          if (v124)
          {
            LODWORD(v124) = *(v102 + v124);
          }
        }

        *(a1 + 1664) = v124;
        v125 = (v102 - *v102);
        if (*v125 < 0x21u)
        {
          LODWORD(v126) = 0;
        }

        else
        {
          v126 = v125[16];
          if (v126)
          {
            LODWORD(v126) = *(v102 + v126);
          }
        }

        *(a1 + 1668) = v126;
        v127 = (v102 - *v102);
        if (*v127 < 0x23u)
        {
          LODWORD(v128) = 0;
        }

        else
        {
          v128 = v127[17];
          if (v128)
          {
            LODWORD(v128) = *(v102 + v128);
          }
        }

        *(a1 + 1672) = v128;
        v129 = (v102 - *v102);
        if (*v129 < 0x25u)
        {
          LODWORD(v130) = 0;
        }

        else
        {
          v130 = v129[18];
          if (v130)
          {
            LODWORD(v130) = *(v102 + v130);
          }
        }

        *(a1 + 1676) = v130;
        v131 = (v102 - *v102);
        if (*v131 < 0x27u)
        {
          LODWORD(v132) = 0;
        }

        else
        {
          v132 = v131[19];
          if (v132)
          {
            LODWORD(v132) = *(v102 + v132);
          }
        }

        *(a1 + 1680) = v132;
        v133 = (v102 - *v102);
        if (*v133 < 0x29u)
        {
          LODWORD(v134) = 0;
        }

        else
        {
          v134 = v133[20];
          if (v134)
          {
            LODWORD(v134) = *(v102 + v134);
          }
        }

        *(a1 + 1684) = v134;
        v135 = (v102 - *v102);
        if (*v135 < 0x2Bu)
        {
          LODWORD(v136) = 0;
        }

        else
        {
          v136 = v135[21];
          if (v136)
          {
            LODWORD(v136) = *(v102 + v136);
          }
        }

        *(a1 + 1688) = v136;
        v137 = (v102 - *v102);
        if (*v137 < 7u)
        {
          LODWORD(v138) = 0;
        }

        else
        {
          v138 = v137[3];
          if (v138)
          {
            LODWORD(v138) = *(v102 + v138);
          }
        }

        *(a1 + 1692) = v138;
        v139 = (v102 - *v102);
        if (*v139 >= 5u && (v140 = v139[2]) != 0)
        {
          v141 = *(v102 + v140);
        }

        else
        {
          v141 = 0;
        }

        *(a1 + 1700) = v141;
      }

      if (v455[53])
      {
        v142 = v455[54];
        if (v142)
        {
          v143 = v455[53];
        }

        else
        {
          v143 = v455[123];
        }

        if (v142)
        {
          v144 = v455 + 53;
        }

        else
        {
          v144 = v455 + 123;
        }
      }

      else
      {
        v144 = v455 + 123;
        v143 = v455[123];
      }

      MEMORY[0x29ED51E10](a1 + 1760, v143, v144[1]);
      std::string::push_back((a1 + 1760), 0);
      v145 = *v86;
      v146 = v86 - v145;
      v147 = *(v86 - v145);
      if (v147 < 0x39)
      {
        goto LABEL_271;
      }

      v148 = -v145;
      v149 = *(v146 + 28);
      if (v149)
      {
        v150 = (v86 + v149 + *(v86 + v149));
        if (*v150)
        {
          *(a1 + 1504) = 1;
          v151 = (v150 + v150[1] + 4);
          v152 = (v151 - *v151);
          if (*v152 >= 9u && (v153 = v152[4]) != 0)
          {
            v154 = *(v151 + v153);
          }

          else
          {
            v154 = 0;
          }

          *(a1 + 1704) = v154;
          *(a1 + 1708) = 1;
          v155 = *v86;
          v148 = -v155;
          v147 = *(v86 - v155);
        }
      }

      if (v147 < 0x3B)
      {
        goto LABEL_271;
      }

      v156 = v86 + v148;
      if (*(v156 + 29))
      {
        v157 = (v86 + *(v156 + 29) + *(v86 + *(v156 + 29)));
        v158 = *v157;
        if (v158)
        {
          v159 = v157 + 1;
          do
          {
            v161 = *v159++;
            v160 = v161;
            if (!(v161 >> 20))
            {
              *(a1 + 1488 + 8 * (v160 > 0x3F)) |= 1 << v160;
            }

            --v158;
          }

          while (v158);
        }
      }

      if (v147 < 0x57)
      {
LABEL_271:
        LODWORD(v162) = 0;
      }

      else
      {
        v162 = *(v156 + 43);
        if (*(v156 + 43))
        {
          LODWORD(v162) = *(v86 + v162);
        }
      }

      *(a1 + 692) = v162;
      v163 = (v86 - *v86);
      if (*v163 >= 0x21u && (v164 = v163[16]) != 0)
      {
        v165 = *(v86 + v164);
      }

      else
      {
        v165 = 0;
      }

      v166 = &qword_2A17A1000;
      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
      }

      *(a1 + 696) = getAdditionalSpillBufferBytes(void)::extra + v165;
      v167 = (v86 - *v86);
      if (*v167 < 0x59u)
      {
        LODWORD(v168) = 0;
      }

      else
      {
        v168 = v167[44];
        if (v168)
        {
          LODWORD(v168) = *(v86 + v168);
        }
      }

      *(a1 + 720) = v168;
      v169 = (v86 - *v86);
      if (*v169 < 0x51u)
      {
        LODWORD(v170) = 0;
      }

      else
      {
        v170 = v169[40];
        if (v170)
        {
          LODWORD(v170) = *(v86 + v170);
        }
      }

      *(a1 + 724) = v170;
      v171 = (v86 - *v86);
      if (*v171 < 0x4Bu)
      {
        LODWORD(v172) = 0;
      }

      else
      {
        v172 = v171[37];
        if (v172)
        {
          LODWORD(v172) = *(v86 + v172);
        }
      }

      *(a1 + 732) = v172;
      v173 = (v86 - *v86);
      v174 = *v173;
      if (v174 >= 0x25)
      {
        if (v173[18] && *(v86 + v173[18]))
        {
          if (v174 < 0x27)
          {
            LOBYTE(v175) = 0;
            v176 = 1;
            goto LABEL_300;
          }

          v175 = v173[19];
          goto LABEL_294;
        }

        if (v174 >= 0x27)
        {
          v175 = v173[19];
          if (v173[19] && *(v86 + v173[19]))
          {
            v176 = 1;
            LOBYTE(v175) = 1;
            goto LABEL_300;
          }

          if (v174 < 0x29)
          {
            goto LABEL_711;
          }

          if (v173[20] && *(v86 + v173[20]))
          {
LABEL_294:
            v176 = 1;
            goto LABEL_712;
          }

          if (v174 >= 0x71 && (v435 = v173[56]) != 0)
          {
            v176 = *(v86 + v435) != 0;
          }

          else
          {
LABEL_711:
            v176 = 0;
          }

LABEL_712:
          if (v175)
          {
            LOBYTE(v175) = *(v86 + v175) != 0;
          }

LABEL_300:
          *(a1 + 742) = v175;
          v177 = (v25 - *v25);
          v178 = *v177;
          if (v178 < 0x21)
          {
            v180 = 0;
            LODWORD(v179) = 0;
          }

          else
          {
            v179 = v177[16];
            if (v177[16])
            {
              LODWORD(v179) = *(v25 + v179);
            }

            if (v178 < 0x4D)
            {
              v180 = 0;
            }

            else
            {
              v180 = v177[38];
              if (v177[38])
              {
                v180 = *(v25 + v180);
              }

              if (v178 >= 0x4F)
              {
                v181 = v177[39];
                if (v181)
                {
                  v181 = *(v25 + v181);
                }

LABEL_312:
                *(a1 + 784) = v179 | (v180 << 32);
                *(a1 + 792) = v181;
                *(a1 + 746) = (v176 | v175) & 1;
                v182 = *v86;
                v183 = (v86 - v182);
                v184 = *(v86 - v182);
                if (v184 < 0x37)
                {
                  LOBYTE(v185) = 0;
                }

                else
                {
                  v185 = v183[27];
                  if (v183[27])
                  {
                    LOBYTE(v185) = *(v86 + v185) != 0;
                  }
                }

                *(a1 + 741) = v185;
                v186 = (v25 - *v25);
                v187 = *v186;
                if (v187 < 0x33)
                {
                  LOBYTE(v188) = 0;
                }

                else
                {
                  v188 = v186[25];
                  if (v186[25])
                  {
                    LOBYTE(v188) = *(v25 + v188) != 0;
                  }
                }

                *(a1 + 747) = v188;
                if (v184 < 0x3F)
                {
                  LOBYTE(v189) = 0;
                }

                else
                {
                  v189 = v183[31];
                  if (v183[31])
                  {
                    v190 = (v86 + v189 + *(v86 + v189));
                    v189 = *v190;
                    if (v189)
                    {
                      v191 = v190 + 1;
                      while (1)
                      {
                        v193 = *v191++;
                        v192 = v193;
                        if (v193 < 0x36 && ((0x3F000000000777uLL >> v192) & 1) != 0)
                        {
                          break;
                        }

                        if (!--v189)
                        {
                          goto LABEL_329;
                        }
                      }

                      LOBYTE(v189) = 1;
                    }
                  }
                }

LABEL_329:
                *(a1 + 749) = v189;
                if (v187 <= 0x14)
                {
                  LOBYTE(v195) = 0;
                  *(a1 + 743) = 0;
                }

                else
                {
                  v194 = v186[10];
                  if (v186[10])
                  {
                    LOBYTE(v194) = *(v25 + v194) != 0;
                  }

                  *(a1 + 743) = v194;
                  if (v187 < 0x25)
                  {
                    LOBYTE(v195) = 0;
                  }

                  else
                  {
                    v195 = v186[18];
                    if (v186[18])
                    {
                      LOBYTE(v195) = *(v25 + v195) != 0;
                    }
                  }
                }

                v196 = -v182;
                *(a1 + 1585) = v195;
                if (v184 < 0x5D)
                {
                  LOBYTE(v197) = 0;
                }

                else
                {
                  v197 = v183[46];
                  if (v197)
                  {
                    LOBYTE(v197) = *(v86 + v197) != 0;
                  }
                }

                v457 = v176;
                *(a1 + 748) = v197;
                if (v187 >= 0x23 && (v198 = v186[17]) != 0)
                {
                  *(a1 + 1587) = 1;
                  v199 = (v25 + v198 + *(v25 + v198));
                  v200 = *v199;
                  if (v200)
                  {
                    v201 = &v199[v200];
                    while (1)
                    {
                      v202 = v199[1];
                      v203 = (++v199 + v202);
                      v204 = (v203 - *v203);
                      v205 = *v204;
                      if (v205 < 7)
                      {
                        v206 = 0;
                        v208 = 0;
                        if (v205 < 5)
                        {
                          goto LABEL_353;
                        }

                        v207 = v204[2];
                        if (v207)
                        {
                          goto LABEL_352;
                        }
                      }

                      else if (v204[3])
                      {
                        v206 = *(v203 + v204[3]);
                        v207 = v204[2];
                        if (v207)
                        {
                          goto LABEL_352;
                        }
                      }

                      else
                      {
                        v206 = 0;
                        v207 = v204[2];
                        if (v207)
                        {
LABEL_352:
                          v208 = *(v203 + v207);
                          goto LABEL_353;
                        }
                      }

                      v208 = 0;
LABEL_353:
                      v209 = v464;
LABEL_354:
                      v210 = *v209;
                      if (!*v209)
                      {
LABEL_358:
                        operator new();
                      }

                      while (1)
                      {
                        v209 = v210;
                        v211 = *(v210 + 28);
                        if (v208 < v211)
                        {
                          goto LABEL_354;
                        }

                        if (v211 >= v208)
                        {
                          break;
                        }

                        v210 = v209[1];
                        if (!v210)
                        {
                          goto LABEL_358;
                        }
                      }

                      v212 = v209;
                      v86 = v465;
                      *(v212 + 8) = v206;
                      if (v199 == v201)
                      {
                        v215 = *v465;
                        v196 = -v215;
                        v25 = v461;
                        v166 = &qword_2A17A1000;
                        if (*(v465 - v215) < 0x21u)
                        {
LABEL_368:
                          v214 = 0;
                          v213 = v455;
                          {
                            goto LABEL_718;
                          }

                          goto LABEL_371;
                        }

LABEL_364:
                        v213 = v455;
                        if (*(v86 + v196 + 32))
                        {
                          v214 = *(v86 + *(v86 + v196 + 32));
                          {
                            goto LABEL_371;
                          }
                        }

                        else
                        {
                          v214 = 0;
                          {
                            goto LABEL_371;
                          }
                        }

LABEL_718:
                        {
                          *(v166 + 402) = 0;
                        }

LABEL_371:
                        v216 = *(v166 + 402) + v214;
                        *(a1 + 688) = v216;
                        v217 = (v86 - *v86);
                        if (*v217 < 0x43u)
                        {
                          LODWORD(v218) = 0;
                        }

                        else
                        {
                          v218 = v217[33];
                          if (v218)
                          {
                            LODWORD(v218) = *(v86 + v218);
                          }
                        }

                        *(a1 + 700) = v218;
                        v219 = (v86 - *v86);
                        if (*v219 < 5u)
                        {
                          LODWORD(v220) = 0;
                        }

                        else
                        {
                          v220 = v219[2];
                          if (v220)
                          {
                            LODWORD(v220) = *(v86 + v220);
                          }
                        }

                        *(a1 + 684) = v220;
                        v221 = (v86 - *v86);
                        if (*v221 < 0x51u)
                        {
                          LODWORD(v222) = 0;
                        }

                        else
                        {
                          v222 = v221[40];
                          if (v222)
                          {
                            LODWORD(v222) = *(v86 + v222);
                          }
                        }

                        *(a1 + 716) = v222;
                        v223 = (v86 - *v86);
                        if (*v223 < 0x4Fu)
                        {
                          LODWORD(v224) = 0;
                        }

                        else
                        {
                          v224 = v223[39];
                          if (v224)
                          {
                            LODWORD(v224) = *(v86 + v224);
                          }
                        }

                        *(a1 + 728) = v224;
                        *(a1 + 736) = *(a4 + 468);
                        v225 = (v86 - *v86);
                        if ((*(v86 + v225[6] + *(v86 + v225[6])) | v216) != 0 || v457)
                        {
                          goto LABEL_398;
                        }

                        v226 = *v225;
                        if (v226 < 0x21)
                        {
                          v227 = 0;
                        }

                        else if (v225[16])
                        {
                          v227 = *(v86 + v225[16]);
                          if (v226 >= 0x43)
                          {
LABEL_682:
                            if (v225[33])
                            {
                              v228 = *(v86 + v225[33]);
                              {
                                goto LABEL_684;
                              }

                              goto LABEL_394;
                            }
                          }
                        }

                        else
                        {
                          v227 = 0;
                          if (v226 >= 0x43)
                          {
                            goto LABEL_682;
                          }
                        }

                        v228 = 0;
                        {
LABEL_684:
                          {
                            *(v166 + 402) = 0;
                          }
                        }

LABEL_394:
                        if (v228 + v227 + *(v166 + 402))
                        {
LABEL_398:
                          LOBYTE(v230) = 1;
                        }

                        else
                        {
                          v229 = (v86 - *v86);
                          if (*v229 < 0x5Fu)
                          {
                            LOBYTE(v230) = 0;
                          }

                          else
                          {
                            v230 = v229[47];
                            if (v230)
                            {
                              LOBYTE(v230) = *(v86 + v230) != 0;
                            }
                          }
                        }

                        *(a1 + 740) = v230;
                        v231 = (v25 - *v25);
                        if (*v231 < 0x11u)
                        {
                          LODWORD(v232) = 0;
                        }

                        else
                        {
                          v232 = v231[8];
                          if (v232)
                          {
                            LODWORD(v232) = *(v25 + v232);
                          }
                        }

                        v233 = (a1 + 1200);
                        *(a1 + 1392) = v232;
                        {
                        }

                        v234 = (v213 + 3);
                        if (v213[4])
                        {
                          v235 = v213[3] == 0;
                        }

                        else
                        {
                          v235 = 1;
                        }

                        v236 = v213;
                        v237 = (v213 + 73);
                        if (v235)
                        {
                          v238 = v234 + 70;
                        }

                        else
                        {
                          v238 = v234;
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v456 + 6496, v238[1], (a1 + 1448));
                        *(a1 + 1480) += *&__dst[16];
                        v239 = *&__dst[16];
                        *v233 = *__dst;
                        *(a1 + 1216) = v239;
                        *(a1 + 1225) = *&__dst[25];
                        *(a1 + 920) = *(a1 + 1200);
                        *(a1 + 952) = v456 + 6496;
                        v240 = *(a1 + 1216);
                        *(a1 + 960) = *v233;
                        *(a1 + 976) = v240;
                        *(a1 + 985) = *(a1 + 1225);
                        if (*v234)
                        {
                          v241 = v236[4];
                          if (v241)
                          {
                            v242 = *v234;
                          }

                          else
                          {
                            v242 = v236[73];
                          }

                          if (v241)
                          {
                            v237 = v234;
                          }
                        }

                        else
                        {
                          v242 = *v237;
                        }

                        memcpy(*(a1 + 1208), v242, v237[1]);
                        v243 = *(a1 + 1208);
                        v244 = *(a1 + 1216);
                        *(a1 + 928) = *(a1 + 920);
                        *(a1 + 936) = v243;
                        *(a1 + 944) = v244;
                        v245 = (v236 + 8);
                        if (v236[8])
                        {
                          if (v236[9])
                          {
                            v246 = v236 + 8;
                          }

                          else
                          {
                            v246 = v236 + 78;
                          }

                          v247 = v246[1];
                        }

                        else
                        {
                          v247 = v236[79];
                        }

                        if (v247)
                        {
                          AGX::Heap<true>::allocateImpl(__dst, v456 + 6328, v247, (a1 + 1456));
                          *(a1 + 1480) += *&__dst[16];
                          v248 = *&__dst[16];
                          *(a1 + 1248) = *__dst;
                          *(a1 + 1264) = v248;
                          *(a1 + 1273) = *&__dst[25];
                          v249 = *(a1 + 1264);
                          *(a1 + 1008) = *(a1 + 1248);
                          *(a1 + 1024) = v249;
                          *(a1 + 1033) = *(a1 + 1273);
                          if (*v245)
                          {
                            v250 = v236[9];
                            if (v250)
                            {
                              v251 = *v245;
                            }

                            else
                            {
                              v251 = v236[78];
                            }

                            if (v250)
                            {
                              v252 = v236 + 8;
                            }

                            else
                            {
                              v252 = v236 + 78;
                            }
                          }

                          else
                          {
                            v252 = v236 + 78;
                            v251 = v236[78];
                          }

                          memcpy(*(a1 + 1256), v251, v252[1]);
                        }

                        v253 = (v236 + 13);
                        if (v236[13])
                        {
                          if (v236[14])
                          {
                            v254 = v236 + 13;
                          }

                          else
                          {
                            v254 = v236 + 83;
                          }

                          v255 = v254[1];
                          if (!v255)
                          {
                            goto LABEL_450;
                          }
                        }

                        else
                        {
                          v255 = v236[84];
                          if (!v255)
                          {
                            goto LABEL_450;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v456 + 6328, v255, (a1 + 1464));
                        *(a1 + 1480) += *&__dst[16];
                        v256 = *&__dst[16];
                        *(a1 + 1296) = *__dst;
                        *(a1 + 1312) = v256;
                        *(a1 + 1321) = *&__dst[25];
                        v257 = *(a1 + 1312);
                        *(a1 + 1056) = *(a1 + 1296);
                        *(a1 + 1072) = v257;
                        *(a1 + 1081) = *(a1 + 1321);
                        if (*v253)
                        {
                          v258 = v236[14];
                          if (v258)
                          {
                            v259 = *v253;
                          }

                          else
                          {
                            v259 = v236[83];
                          }

                          if (v258)
                          {
                            v260 = v236 + 13;
                          }

                          else
                          {
                            v260 = v236 + 83;
                          }
                        }

                        else
                        {
                          v260 = v236 + 83;
                          v259 = v236[83];
                        }

                        memcpy(*(a1 + 1304), v259, v260[1]);
                        v261 = *(a1 + 1312);
                        *(a1 + 1152) = *(a1 + 1296);
                        *(a1 + 1168) = v261;
LABEL_450:
                        v262 = v236 + 23;
                        if (v236[23])
                        {
                          if (!v236[24])
                          {
                            v262 = v236 + 93;
                          }

                          v263 = v262[1];
                          v264 = v463;
                          if (v263)
                          {
LABEL_454:
                            AGX::Heap<true>::allocateImpl(__dst, v456 + 6328, v263, (a1 + 1472));
                            *(a1 + 1480) += *&__dst[16];
                            v265 = *&__dst[16];
                            *(a1 + 1344) = *__dst;
                            *(a1 + 1360) = v265;
                            *(a1 + 1369) = *&__dst[25];
                            v266 = *(a1 + 1360);
                            *(a1 + 1104) = *(a1 + 1344);
                            *(a1 + 1120) = v266;
                            *(a1 + 1129) = *(a1 + 1369);
                            v267 = *(a1 + 1360);
                            *(a1 + 1176) = *(a1 + 1344);
                            *(a1 + 1192) = v267;
                          }
                        }

                        else
                        {
                          v263 = v236[94];
                          v264 = v463;
                          if (v263)
                          {
                            goto LABEL_454;
                          }
                        }

                        if ((*(a1 + 888) & 1) != 0 || *(*(a1 + 8) + 16945) == 1)
                        {
                          {
                            {
                              v269 = v454;
                              if (*(a1 + 839) < 0)
                              {
                                v269 = *v454;
                              }

                              v270 = v452;
                              if (*(a1 + 887) < 0)
                              {
                                v270 = v452->__r_.__value_.__r.__words[0];
                              }

                              v271 = v453;
                              if (*(a1 + 863) < 0)
                              {
                                v271 = *v453;
                              }

                              v272 = *(a1 + 800);
                              v273 = *(a1 + 808);
                              v274 = v451;
                              if (*(a1 + 919) < 0)
                              {
                                v274 = *v451;
                              }

                              v275 = *(a1 + 920);
                              v276 = *(a1 + 1216);
                              *__dst = 136448002;
                              *&__dst[4] = v269;
                              *&__dst[12] = 2082;
                              *&__dst[14] = v270;
                              *&__dst[22] = 2082;
                              *&__dst[24] = v271;
                              *&__dst[32] = 1026;
                              *&__dst[34] = v272;
                              *&__dst[38] = 2050;
                              *&__dst[40] = v273;
                              *v470 = 2082;
                              *&v470[2] = v274;
                              *&v470[10] = 2050;
                              *&v470[12] = v275;
                              v471 = 2050;
                              v472 = v276;
                              _os_signpost_emit_with_name_impl(&dword_29CA13000, v268, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
                            }
                          }

                          v277 = *(a1 + 8);
                          v278 = v454;
                          if (*(a1 + 839) < 0)
                          {
                            v278 = *v454;
                          }

                          v279 = v452;
                          if (*(a1 + 887) < 0)
                          {
                            v279 = v452->__r_.__value_.__r.__words[0];
                          }

                          v280 = v453;
                          if (*(a1 + 863) < 0)
                          {
                            v280 = *v453;
                          }

                          v281 = v451;
                          if (*(a1 + 919) < 0)
                          {
                            v281 = *v451;
                          }

                          v282 = *(a1 + 800);
                          v283 = *(a1 + 808);
                          v284 = *(a1 + 920);
                          v285 = *(a1 + 1216);
                          v286 = *(a1 + 888);
                          *__dst = v278;
                          *&__dst[8] = v279;
                          *&__dst[16] = v280;
                          *&__dst[24] = v281;
                          *&__dst[32] = v282;
                          *&__dst[40] = v283;
                          *v470 = v284;
                          *&v470[8] = v285;
                          v470[16] = v286;
                          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v277, a1, __dst);
                        }

                        v287 = *(a4 + 208);
                        v289 = *(a4 + 144);
                        v288 = *(a4 + 148);
                        if (v287)
                        {
                          v290 = *(a4 + 144);
                        }

                        else
                        {
                          v290 = 0;
                        }

                        v291 = *(a4 + 176);
                        if (*(a4 + 176) == 0)
                        {
                          v289 = 0;
                        }

                        v292 = (*(a4 + 132) + *(a4 + 124) + *(a4 + 140) - (*(a4 + 128) + *(a4 + 120) + *(a4 + 136)));
                        *(a1 + 48) = v290 + v288 + v289 + *(a4 + 152) + ((v292 + 3) & 0xFFFFFFFC);
                        v293 = *(a1 + 56);
                        v294 = (*(a1 + 64) - v293) >> 2;
                        if (v292 <= v294)
                        {
                          if (v292 < v294)
                          {
                            *(a1 + 64) = v293 + 4 * v292;
                          }
                        }

                        else
                        {
                          std::vector<unsigned int>::__append(v264, v292 - v294);
                          v291 = *(a4 + 176);
                          v288 = *(a4 + 148);
                          v287 = *(a4 + 208);
                        }

                        if (v287)
                        {
                          v295 = *(a4 + 144);
                        }

                        else
                        {
                          v295 = 0;
                        }

                        if (v291 | *(a4 + 184))
                        {
                          v296 = *(a4 + 144);
                        }

                        else
                        {
                          v296 = 0;
                        }

                        v297 = (v288 + v295 + v296);
                        v298 = *(a1 + 144);
                        v299 = (*(a1 + 152) - v298) >> 2;
                        if (v297 <= v299)
                        {
                          if (v297 < v299)
                          {
                            *(a1 + 152) = v298 + 4 * v297;
                          }
                        }

                        else
                        {
                          std::vector<unsigned int>::__append(v450, v297 - v299);
                        }

                        v300 = *v86;
                        v301 = *(v86 - v300 + 16);
                        v302 = *(v86 + v301);
                        v303 = *(v86 + v301 + v302);
                        if (v303)
                        {
                          v304 = 4 * v303;
                          v305 = v301 + v302;
                          while (1)
                          {
                            v307 = *(v86 + v305 + 4);
                            v308 = v86 + v305 + v307;
                            v309 = v307 - *(v308 + 1);
                            v310 = v86 + v305 + v309;
                            v311 = *(v310 + 2);
                            if (v311 < 7)
                            {
                              break;
                            }

                            v312 = *(v310 + 5);
                            if (!v312 || (*(v86 + v305 + v307 + v312 + 4) & 0x80000000) == 0)
                            {
                              if (v311 <= 8)
                              {
                                v314 = -*(a4 + 120);
                              }

                              else
                              {
                                if (*(v86 + v305 + v309 + 12))
                                {
                                  v313 = 4 * *(v86 + v305 + v307 + *(v86 + v305 + v309 + 12) + 4);
                                }

                                else
                                {
                                  v313 = 0;
                                }

                                v314 = v313 - *(a4 + 120);
                              }

LABEL_513:
                              v315 = *(v86 + v305 + v309 + 8);
                              if (v315 && *(v86 + v305 + v307 + v315 + 4) == 6)
                              {
                                v316 = 1073741828;
LABEL_517:
                                v264->__begin_[v314] = v316;
                                v264->__begin_[v314 + 1] = v316 | 0x40000001;
                                v264->__begin_[v314 + 2] = v316 | 0x40000002;
                                v264->__begin_[v314 + 3] = v316 | 0x40000003;
                                v317 = v307 - *(v308 + 1);
                                v318 = v86 + v305 + v317;
                                if (*(v318 + 2) >= 0xBu)
                                {
                                  v319 = *(v318 + 7);
                                  if (v319)
                                  {
                                    if (*(v86 + v305 + v307 + v319 + 4))
                                    {
                                      v320 = *(v86 + v305 + v317 + 10);
                                      if (v320)
                                      {
                                        v306 = *(v86 + v305 + v307 + v320 + 4) & 0xFFFFF;
                                      }

                                      else
                                      {
                                        v306 = 0;
                                      }

                                      *(a1 + 768 + 8 * (v306 > 0x3F)) |= 1 << v306;
                                    }
                                  }
                                }

                                goto LABEL_501;
                              }

LABEL_516:
                              v316 = 0x40000000;
                              goto LABEL_517;
                            }

LABEL_501:
                            v305 += 4;
                            v304 -= 4;
                            if (!v304)
                            {
                              v300 = *v86;
                              goto LABEL_523;
                            }
                          }

                          v314 = -*(a4 + 120);
                          if (v311 >= 5)
                          {
                            goto LABEL_513;
                          }

                          goto LABEL_516;
                        }

LABEL_523:
                        v321 = -v300;
                        v322 = v86 + v321;
                        if (*(a1 + 742))
                        {
                          v323 = *(v322 + 12);
                          v324 = *(v86 + v323);
                          v325 = (v86 + v323 + v324);
                          v326 = *v325;
                          if (v326)
                          {
                            v327 = 0;
                            v328 = 4 * v326;
                            v329 = v86 + v323 + v324;
                            while (1)
                            {
                              v330 = v325[v327 / 4 + 1];
                              v331 = v330 - *(&v325[v327 / 4 + 1] + v330);
                              v332 = &v329[v327 + v331];
                              v333 = *(v332 + 2);
                              if (v333 >= 5)
                              {
                                v334 = *(v332 + 4);
                                if (v334)
                                {
                                  if (v329[v327 + 4 + v330 + v334] == 93)
                                  {
                                    if (v333 < 7)
                                    {
                                      break;
                                    }

                                    v335 = *&v329[v327 + 10 + v331];
                                    if (!v335)
                                    {
                                      break;
                                    }

                                    v336 = *&v329[v327 + 4 + v330 + v335];
                                    if ((v336 & 0x80000000) == 0 && (v336 & 0xFFF00000) != 0x400000)
                                    {
                                      break;
                                    }
                                  }
                                }
                              }

                              v327 += 4;
                              if (v328 == v327)
                              {
                                goto LABEL_535;
                              }
                            }

                            *(a1 + 768) = vorrq_s8(*(a1 + 768), *(a1 + 784));
                          }
                        }

LABEL_535:
                        v337 = *(v322 + 10);
                        v338 = *(v86 + v337);
                        v339 = *(v86 + v337 + v338);
                        if (!v339)
                        {
                          goto LABEL_551;
                        }

                        v340 = 4 * v339;
                        v341 = v337 + v338;
                        while (2)
                        {
                          v342 = *(v86 + v341 + 4);
                          v343 = v342 - *(v86 + v341 + v342 + 4);
                          v344 = v86 + v341 + v343;
                          v345 = *(v344 + 2);
                          if (v345 < 7)
                          {
                            goto LABEL_544;
                          }

                          v346 = *(v344 + 5);
                          if (v346 && *(v86 + v341 + v342 + v346 + 4) < 0)
                          {
                            goto LABEL_537;
                          }

                          if (v345 < 9 || (v347 = *(v86 + v341 + v343 + 12)) == 0)
                          {
LABEL_544:
                            v348 = 0;
                            goto LABEL_545;
                          }

                          v348 = *(v86 + v341 + v342 + v347 + 4);
LABEL_545:
                          if (*(a1 + 1584))
                          {
                            v349 = 3;
                          }

                          else
                          {
                            v349 = 1;
                          }

                          v350 = *(a4 + 124) + v349 * v348 - (*(a4 + 120) + *(a4 + 128));
                          *(*(a1 + 56) + 4 * v350) = 1610612744;
                          if (*(a1 + 1584) == 1)
                          {
                            v264->__begin_[v350 + 1] = 0x7FFFFFFF;
                            v264->__begin_[v350 + 2] = 1610612736;
                          }

LABEL_537:
                          v341 += 4;
                          v340 -= 4;
                          if (v340)
                          {
                            continue;
                          }

                          break;
                        }

                        v321 = -*v86;
LABEL_551:
                        v458 = a1 + 752;
                        v351 = (v86 + *(v86 + v321 + 12));
                        v352 = (v351 + *v351);
                        v353 = *v352;
                        if (v353)
                        {
                          v354 = &v352[v353];
                          while (1)
                          {
                            v355 = v352[1];
                            v356 = (++v352 + v355);
                            v357 = (v356 - *v356);
                            v358 = *v357;
                            if (v358 < 7)
                            {
                              LODWORD(v359) = 0;
                              goto LABEL_561;
                            }

                            if (!v357[3] || (*(v356 + v357[3]) & 0x80000000) == 0)
                            {
                              break;
                            }

LABEL_553:
                            if (v352 == v354)
                            {
                              goto LABEL_591;
                            }
                          }

                          if (v358 < 9)
                          {
                            LODWORD(v359) = 0;
                            goto LABEL_562;
                          }

                          v359 = v357[4];
                          if (v357[4])
                          {
                            LODWORD(v359) = (*(v356 + v359) >> 1) & 0x1FFFFFFF;
                            goto LABEL_562;
                          }

LABEL_561:
                          if (v358 < 7)
                          {
                            LODWORD(v360) = 0;
                          }

                          else
                          {
LABEL_562:
                            v360 = v357[3];
                            if (v360)
                            {
                              LODWORD(v360) = *(v356 + v360) & 0xFFFFF;
                              switch(v360)
                              {
                                case '1':
                                  v361 = 536870925;
                                  goto LABEL_570;
                                case '5':
                                  v361 = 536870927;
                                  goto LABEL_570;
                                case '2':
                                  v361 = 536870926;
LABEL_570:
                                  v362 = *(a4 + 124) + v359 + *(a4 + 132) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136));
                                  v264->__begin_[v362] = v361;
                                  v363 = (v356 - *v356);
                                  if (*v363 >= 0xBu)
                                  {
                                    v364 = v363[5];
                                    if (v364)
                                    {
                                      if (*(v356 + v364))
                                      {
                                        *(v458 + 8 * (v360 > 0x3F)) |= 1 << v360;
                                      }
                                    }
                                  }

                                  if (*(a1 + 1587) == 1)
                                  {
                                    v365 = *v464;
                                    if (!*v464)
                                    {
LABEL_714:
                                      abort();
                                    }

                                    v366 = 2 * v362;
                                    v367 = (2 * v362) | 1;
                                    while (1)
                                    {
                                      while (1)
                                      {
                                        v368 = *(v365 + 7);
                                        if (v360 >= v368)
                                        {
                                          break;
                                        }

                                        v365 = *v365;
                                        if (!v365)
                                        {
                                          goto LABEL_714;
                                        }
                                      }

                                      if (v368 >= v360)
                                      {
                                        break;
                                      }

                                      v365 = v365[1];
                                      if (!v365)
                                      {
                                        goto LABEL_714;
                                      }
                                    }

                                    v369 = v462;
LABEL_583:
                                    v370 = *v369;
                                    if (!*v369)
                                    {
LABEL_587:
                                      operator new();
                                    }

                                    while (1)
                                    {
                                      v369 = v370;
                                      v371 = *(v370 + 28);
                                      if (v367 < v371)
                                      {
                                        goto LABEL_583;
                                      }

                                      if (v371 > v366)
                                      {
                                        break;
                                      }

                                      v370 = v369[1];
                                      if (!v370)
                                      {
                                        goto LABEL_587;
                                      }
                                    }

                                    v372 = v369;
                                    v264 = v463;
                                    v86 = v465;
                                    *(v372 + 8) = *(v365 + 8);
                                  }

                                  goto LABEL_553;
                              }
                            }
                          }

                          v361 = 536870921;
                          goto LABEL_570;
                        }

LABEL_591:
                        AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather(v264);
                        v375 = *(a4 + 120);
                        v374 = *(a4 + 124);
                        v376 = *(a4 + 128);
                        v377 = *(a4 + 132);
                        v378 = *(a4 + 136);
                        v379 = *(a4 + 140);
                        v380 = (v374 + v377 + v379 - (v375 + v376 + v378) + 3) & 0xFFFFFFFC;
                        v381 = *(a4 + 160);
                        v382 = *(a4 + 168);
                        if (*(a4 + 160) == 0)
                        {
                          goto LABEL_609;
                        }

                        v383 = 0;
                        v384 = *(a4 + 144);
                        if (*(a4 + 208) != 1 || !v384)
                        {
                          goto LABEL_603;
                        }

                        v385 = 0;
                        *__dst = *(a4 + 160);
                        *&v467 = v382;
                        v386 = v381;
                        while (2)
                        {
                          if (v386)
                          {
                            v387 = __dst;
LABEL_596:
                            *v387 = v386 & (v386 - 1);
                            *&v450->__begin_[v385] = xmmword_29D2F17F0;
                            v385 += 4;
                            v386 = *__dst;
                            continue;
                          }

                          break;
                        }

                        v386 = v467;
                        if (v467)
                        {
                          v387 = &v467;
                          goto LABEL_596;
                        }

                        v378 = *(a4 + 136);
                        v379 = *(a4 + 140);
                        v376 = *(a4 + 128);
                        v377 = *(a4 + 132);
                        v375 = *(a4 + 120);
                        v374 = *(a4 + 124);
                        v384 = *(a4 + 144);
                        v383 = v384;
LABEL_603:
                        v388 = *(a4 + 176);
                        if (*&v388 != 0 && v384 != 0)
                        {
                          v399 = v383 - v380 + ((v379 + v377 - (v378 + v376 + v375) + v374 + 3) & 0xFFFFFFFC);
                          *__dst = v381;
                          *&v467 = v382;
                          while (1)
                          {
                            if (v381)
                            {
                              v400 = __dst;
                            }

                            else
                            {
                              v381 = v467;
                              if (!v467)
                              {
                                break;
                              }

                              v400 = &v467;
                            }

                            *v400 = v381 & (v381 - 1);
                            begin = v450->__begin_;
                            v450->__begin_[v399] = 4;
                            begin[v399 + 1] = 5;
                            begin[v399 + 2] = 6;
                            begin[v399 + 3] = 7;
                            v399 += 4;
                            v381 = *__dst;
                          }
                        }

                        v373 = vorrq_s8(*(a1 + 768), v388);
                        *(a1 + 768) = v373;
LABEL_609:
                        if (*(a4 + 148))
                        {
                          v390 = *(a4 + 144);
                          if (*(a4 + 208))
                          {
                            v391 = *(a4 + 144);
                          }

                          else
                          {
                            v391 = 0;
                          }

                          if (*(a4 + 176) == 0)
                          {
                            v390 = 0;
                          }

                          v392 = ((*(a4 + 124) + *(a4 + 132) + *(a4 + 140) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136)) + 3) & 0xFFFFFFFC) - v380 + v391 + v390;
                          v394 = *(a4 + 192);
                          v393 = *(a4 + 200);
                          *__dst = v394;
                          *&v467 = v393;
                          while (1)
                          {
                            if (v394)
                            {
                              v395 = __dst;
                            }

                            else
                            {
                              v394 = v467;
                              if (!v467)
                              {
                                break;
                              }

                              v395 = &v467;
                            }

                            *v395 = v394 & (v394 - 1);
                            v396 = *(a1 + 144);
                            *(v396 + 4 * v392) = 8;
                            if (*(a1 + 1584) == 1)
                            {
                              *(v396 + 4 * (v392 + 1)) = -1;
                              *(v396 + 4 * (v392 + 2)) = 0;
                            }

                            v392 += 4;
                            v394 = *__dst;
                          }
                        }

                        if (*(a4 + 467) == 1)
                        {
                          v397 = (v86 - *v86);
                          if (*v397 < 0x17u)
                          {
                            LODWORD(v398) = 0;
                          }

                          else
                          {
                            v398 = v397[11];
                            if (v398)
                            {
                              v398 = (*(v86 + v398) + 3) >> 2;
                            }
                          }

                          *(a1 + 408) = v398;
                          *(a1 + 412) = 18;
                        }

                        v402 = (v86 - *v86);
                        if (*v402 >= 0x17u && (v403 = v402[11]) != 0)
                        {
                          v404 = *(v86 + v403) + 3;
                          v405 = (a1 + 176);
                          v406 = *(a1 + 176);
                          v407 = v404 >> 2;
                          *(a1 + 52) = v407;
                          v408 = *(a1 + 168);
                          v409 = (v406 - v408) >> 2;
                          if (v407 > v409)
                          {
                            std::vector<unsigned int>::__append((a1 + 168), v407 - v409);
                            goto LABEL_641;
                          }
                        }

                        else
                        {
                          v407 = 0;
                          v405 = (a1 + 176);
                          v410 = *(a1 + 176);
                          *(a1 + 52) = 0;
                          v408 = *(a1 + 168);
                          v409 = (v410 - v408) >> 2;
                        }

                        if (v409 > v407)
                        {
                          *v405 = v408 + 4 * v407;
                        }

LABEL_641:
                        if (v449 != (a4 + 216))
                        {
                          std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v449, *(a4 + 216), *(a4 + 224), (*(a4 + 224) - *(a4 + 216)) >> 2);
                        }

                        if (v448 != (a4 + 240))
                        {
                          std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v448, *(a4 + 240), *(a4 + 248), (*(a4 + 248) - *(a4 + 240)) >> 2);
                        }

                        if (v447 != (a4 + 320))
                        {
                          std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v447, *(a4 + 320), *(a4 + 328), (*(a4 + 328) - *(a4 + 320)) >> 1);
                        }

                        if (v446 != (a4 + 368))
                        {
                          std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v446, *(a4 + 368), *(a4 + 376), (*(a4 + 376) - *(a4 + 368)) >> 1);
                        }

                        *(a1 + 352) = *(a4 + 416);
                        *(a1 + 744) = *(a4 + 160) != 0;
                        *(a1 + 745) = *(a4 + 148) != 0;
                        v411 = *(v86 - *v86 + 24);
                        v412 = *(v86 + v411);
                        v413 = (v86 + v411 + v412);
                        v414 = *v413;
                        if (v414)
                        {
                          v415 = 0;
                          v416 = 4 * v414;
                          v417 = v86 + v411 + v412;
                          do
                          {
                            v418 = v413[v415 / 4 + 1];
                            v419 = v418 - *(&v413[v415 / 4 + 1] + v418);
                            v420 = &v417[v415 + v419];
                            v421 = *(v420 + 2);
                            if (v421 >= 5)
                            {
                              v422 = *(v420 + 4);
                              if (v422)
                              {
                                if (v421 >= 7 && v417[v415 + 4 + v418 + v422] == 139)
                                {
                                  if (*&v417[v415 + 10 + v419])
                                  {
                                    v423 = *&v417[v415 + 4 + v418 + *&v417[v415 + 10 + v419]] & 0xFFFFF;
                                    if (v421 >= 0xB)
                                    {
                                      goto LABEL_660;
                                    }
                                  }

                                  else
                                  {
                                    v423 = 0;
                                    if (v421 >= 0xB)
                                    {
LABEL_660:
                                      v424 = *&v417[v415 + 14 + v419];
                                      if (v424 && v417[v415 + 4 + v418 + v424])
                                      {
                                        *(v458 + 8 * (v423 > 0x3F)) |= 1 << v423;
                                      }
                                    }
                                  }
                                }
                              }
                            }

                            v415 += 4;
                          }

                          while (v416 != v415);
                        }

                        v425 = (v461 - *v461);
                        if (*v425 >= 0xDu)
                        {
                          v426 = v425[6];
                          if (v425[6])
                          {
                            v427 = v461 + v426;
                            v428 = *(v461 + v426);
                            if (*(v461 + v426 + v428) > ((*(a1 + 1528) - *(a1 + 1512)) >> 4))
                            {
                              operator new();
                            }

                            v429 = (v461 - *v461);
                            if (*v429 >= 0x41u && (v430 = v429[32]) != 0)
                            {
                              v431 = v461 + v430 + *(v461 + v430);
                              if (!*&v427[v428])
                              {
                                goto LABEL_694;
                              }

LABEL_672:
                              if (v431)
                              {
                                v432 = 0;
                                v433 = v461 + v426 + v428 + 4;
                                do
                                {
                                  if (*v431)
                                  {
                                    v434 = *(v431 + 8 * v432 + 4);
                                  }

                                  else
                                  {
                                    v434 = 0;
                                  }

                                  *__dst = *(v433 + 8 * v432);
                                  *&__dst[8] = v434;
                                  std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v460, __dst);
                                  ++v432;
                                }

                                while (v432 < *&v427[v428]);
                              }

                              else
                              {
                                v436 = v461 + v426 + v428 + 4;
                                do
                                {
                                  *__dst = *(v436 + 8 * v431);
                                  std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v460, __dst);
                                  ++v431;
                                }

                                while (v431 < *&v427[v428]);
                              }
                            }

                            else
                            {
                              v431 = 0;
                              if (*&v427[v428])
                              {
                                goto LABEL_672;
                              }
                            }
                          }
                        }

LABEL_694:
                        v437 = (v461 - *v461);
                        if (*v437 >= 0xBu)
                        {
                          v438 = v437[5];
                          if (v438)
                          {
                            v439 = (v461 + v438 + *(v461 + v438));
                            if (*v439 > ((*(a1 + 1576) - *(a1 + 1560)) >> 4))
                            {
                              operator new();
                            }

                            if (*v439 > ((*(a1 + 1552) - *(a1 + 1536)) >> 3))
                            {
                              operator new();
                            }

                            if (*v439)
                            {
                              v440 = 0;
                              v441 = v439 + 1;
                              do
                              {
                                AGX::SamplerDescriptor::SamplerDescriptor(__dst, (v441 + *v441), *v373.i32);
                                AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v467, v456, __dst);
                                std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](a1 + 1560, &v467);
                                *v466 = *(v467 + 96);
                                std::vector<unsigned long long>::push_back[abi:nn200100](v459, v466);
                                v442 = *(&v467 + 1);
                                if (*(&v467 + 1) && !atomic_fetch_add((*(&v467 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                                {
                                  (v442->__on_zero_shared)(v442);
                                  std::__shared_weak_count::__release_weak(v442);
                                }

                                if (SBYTE1(v472) < 0)
                                {
                                  operator delete(*v470);
                                }

                                ++v440;
                                ++v441;
                              }

                              while (v440 < *v439);
                            }
                          }
                        }

                        *(a1 + 1396) = 0;
                        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__str.__r_.__value_.__l.__data_);
                        }

                        *a1 = &unk_2A23F7770;
                        *__dst = *v444;
                        *&__dst[16] = *(v444 + 16);
                        AGX::BlitFragmentProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::BlitFragmentProgramVariantESLState(a1 + 1784, v456, v455, a4, __dst);
                      }
                    }
                  }
                }

                else
                {
                  *(a1 + 1587) = 0;
                }

                if (v184 < 0x21)
                {
                  goto LABEL_368;
                }

                goto LABEL_364;
              }
            }
          }

          v181 = 0;
          goto LABEL_312;
        }
      }

      v176 = 0;
      LOBYTE(v175) = 0;
      goto LABEL_300;
    }

    v67 = (v66 + *v66);
    v68 = (v67 - *v67);
    v69 = *v68;
    if (v68[2])
    {
      v70 = (v67 + v68[2] + *(v67 + v68[2]));
      if (v69 < 7)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v70 = 0;
      if (v69 < 7)
      {
        goto LABEL_115;
      }
    }

    v71 = v68[3];
    if (v71)
    {
      v72 = v67 + v71 + *(v67 + v71);
      if (!*v70)
      {
        goto LABEL_126;
      }

      goto LABEL_116;
    }

LABEL_115:
    v72 = 0;
    if (!*v70)
    {
      goto LABEL_126;
    }

LABEL_116:
    v73 = 0;
    v74 = v72 + 4;
    v75 = (v70 + 2);
    while (1)
    {
      v76 = *(v75 - 1);
      v77 = strlen(&v75[v76]);
      if (v77 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v78 = v77;
      if (v77 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v77;
      if (v77)
      {
        memmove(__dst, &v75[v76], v77);
      }

      __dst[v78] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 1712, __dst);
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v74[4 * v73];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 1736, __dst);
      ++v73;
      v75 += 4;
      if (v73 >= *v70)
      {
        goto LABEL_126;
      }
    }

LABEL_715:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v29 < 0x45)
  {
    if (v29 < 0x3D)
    {
      LOWORD(v34) = 0;
      if (v29 < 0x3B)
      {
        LODWORD(v36) = 0;
        v37 = 0;
        LOWORD(v33) = 0;
        v35 = 0;
LABEL_56:
        *(a1 + 560) = v36;
        v38 = v34 + v36 - 1;
        v39 = -v36;
        v40 = *(a1 + 568);
        v41 = (v33 | ((v39 & v38) << 32) | (v35 << 48)) + v37 + (v40 & 0xFF000000);
        *(a1 + 568) = v41;
        if (v41 != v40)
        {
          *(a1 + 592) = 0uLL;
          *(a1 + 608) = 0uLL;
          *(a1 + 576) = 0uLL;
          *&v42 = -1;
          *(&v42 + 1) = -1;
          *(a1 + 624) = v42;
          *(a1 + 640) = v42;
          *(a1 + 656) = v42;
          *(a1 + 672) = -1;
        }

        v43 = (v25 - *v25);
        if (*v43 < 0x57u)
        {
          LODWORD(v44) = 0;
        }

        else
        {
          v44 = v43[43];
          if (v44)
          {
            LODWORD(v44) = *(v25 + v44);
          }
        }

        *(a1 + 680) = v44;
        v45 = *v25;
        v27 = -v45;
        v29 = *(v25 - v45);
        goto LABEL_63;
      }

      LOWORD(v33) = 0;
      v35 = v28[29];
      if (!v28[29])
      {
LABEL_41:
        if (v29 < 0x3F)
        {
          LODWORD(v36) = 0;
          v37 = 0;
        }

        else
        {
          v36 = v28[31];
          if (v28[31])
          {
            v36 = *(v25 + v36);
          }

          if (v29 < 0x4B)
          {
            v37 = 0;
          }

          else
          {
            v37 = v28[37];
            if (v28[37])
            {
              v37 = *(v25 + v37) << 16;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_40:
      v35 = *(v25 + v35);
      goto LABEL_41;
    }

    LOWORD(v33) = 0;
    v34 = v28[30];
    if (v28[30])
    {
      goto LABEL_38;
    }
  }

  else
  {
    v33 = v28[34];
    if (v28[34])
    {
      LODWORD(v33) = *(v25 + v33);
    }

    v34 = v28[30];
    if (v28[30])
    {
LABEL_38:
      LODWORD(v34) = *(v25 + v34);
    }
  }

  v35 = v28[29];
  if (!v28[29])
  {
    goto LABEL_41;
  }

  goto LABEL_40;
}

void sub_29CDFF650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, void **a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, void **a21, void **a22, void **a23, void **a24, uint64_t a25, void **a26, void **a27, void **a28, void **a29, void **a30, uint64_t a31, uint64_t a32, uint64_t a33, void **a34, void **a35, uint64_t a36, void **a37, uint64_t a38, void **a39)
{
  CompileStatistics::~CompileStatistics(a19);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a39);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v39 + 1560));
  v42 = *a34;
  if (*a34)
  {
    *(v39 + 1544) = v42;
    operator delete(v42);
  }

  v43 = *a35;
  if (*a35)
  {
    *(v39 + 1520) = v43;
    operator delete(v43);
  }

  if (*a10 < 0)
  {
    operator delete(*a11);
    if ((*(v39 + 919) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v39 + 919) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v39 + 887) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  operator delete(*a27);
  if (*(v39 + 887) < 0)
  {
LABEL_8:
    operator delete(*a28);
    if ((*(v39 + 863) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((*(v39 + 863) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v39 + 839) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_27:
  operator delete(*a29);
  if ((*(v39 + 839) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a37);
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo(a14);
    v44 = *a21;
    if (*a21)
    {
      *(v39 + 336) = v44;
      operator delete(v44);
    }

    v45 = *a23;
    if (*a23)
    {
      *(v39 + 312) = v45;
      operator delete(v45);
    }

    v46 = *a22;
    if (*a22)
    {
      *(v39 + 288) = v46;
      operator delete(v46);
    }

    v47 = *a24;
    if (*a24)
    {
      *(v39 + 264) = v47;
      operator delete(v47);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v39 + 168);
    v48 = *a26;
    if (*a26)
    {
      *(v39 + 152) = v48;
      operator delete(v48);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a38);
    if (*(v40 - 209) < 0)
    {
      operator delete(*(v40 - 232));
    }

    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*a30);
  goto LABEL_11;
}

void AGX::BlitVertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::BlitVertexProgramVariant(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = 0;
  v468 = *MEMORY[0x29EDCA608];
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  *a1 = &unk_2A23F7E80;
  *(a1 + 8) = a2;
  *(a1 + 56) = 0u;
  v456 = (a1 + 56);
  *(a1 + 144) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 233) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 489) = 0u;
  v455 = a1 + 544;
  *(a1 + 536) = a1 + 544;
  *(a1 + 560) = 0xFFFFFFFF00000001;
  *(a1 + 568) = 1610612736;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 672) = -1;
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *(a1 + 640) = v9;
  *(a1 + 656) = v9;
  *(a1 + 608) = 0u;
  *(a1 + 624) = v9;
  *(a1 + 680) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 808) = atomic_fetch_add((a2 + 17008), 1uLL);
  *(a1 + 896) = 0;
  v446 = (a1 + 896);
  *(a1 + 904) = 0u;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1376) = 0;
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1392) = 0;
  *(a1 + 1396) = 0;
  v10 = (a1 + 1423);
  *(a1 + 1400) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  v449 = (a1 + 816);
  *(a1 + 873) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0;
  *(a1 + 1468) = 0u;
  *(a1 + 1439) = 0u;
  *(a1 + 1455) = 0u;
  *(a1 + 1423) = 0u;
  *(a1 + 1504) = 0;
  *(a1 + 1488) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1560) = 0u;
  v453 = a1 + 1512;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = *(a4 + 465);
  *(a1 + 1586) = 0;
  *(a1 + 1600) = 0u;
  v458 = (a1 + 1600);
  *(a1 + 1592) = a1 + 1600;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0;
  if (a3[28])
  {
    v11 = a3[29] == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = 28;
  if (v11)
  {
    v12 = 98;
    v13 = a3 + 98;
  }

  else
  {
    v13 = a3 + 28;
  }

  v14 = a3[v12];
  if (v14 && v13[1])
  {
    v8 = (v14 + *v14);
  }

  v15 = (v8 - *v8);
  v439 = a1 + 928;
  if (*v15 >= 5u && (v16 = v15[2]) != 0)
  {
    v460 = (v8 + v16 + *(v8 + v16));
  }

  else
  {
    v460 = 0;
  }

  v17 = 0;
  if (a3[58])
  {
    v18 = a3[59] == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = 58;
  if (v18)
  {
    v19 = 128;
    v20 = a3 + 128;
  }

  else
  {
    v20 = a3 + 58;
  }

  v21 = a3[v19];
  if (v21 && v20[1])
  {
    v17 = (v21 + *v21);
  }

  v22 = (v17 - *v17);
  if (*v22 >= 5u && (v23 = v22[2]) != 0)
  {
    v24 = (v17 + v23 + *(v17 + v23));
  }

  else
  {
    v24 = 0;
  }

  v25 = *v24;
  v26 = -v25;
  v27 = (v24 - v25);
  v28 = *(v24 - v25);
  if (v28 < 0x25)
  {
    LOBYTE(v29) = 0;
  }

  else
  {
    v29 = v27[18];
    if (v27[18])
    {
      LOBYTE(v29) = *(v24 + v29) != 0;
    }
  }

  *(a1 + 1585) = v29;
  v30 = (v460 - *v460);
  if (*v30 < 0x55u || (v31 = v30[42]) == 0 || !*(v460 + v31))
  {
LABEL_63:
    if (v28 < 7)
    {
      LODWORD(v45) = 0;
    }

    else
    {
      v45 = *(v24 + v26 + 6);
      if (*(v24 + v26 + 6))
      {
        LODWORD(v45) = *(v24 + v45);
      }
    }

    v443 = (a1 + 304);
    v444 = (a1 + 256);
    v441 = (a1 + 328);
    v442 = (a1 + 280);
    *(a1 + 800) = v45;
    v46 = (v24 - *v24);
    if (*v46 >= 0x13u && (v47 = v46[9]) != 0)
    {
      v48 = v24 + v47 + *(v24 + v47) + 4;
    }

    else
    {
      v48 = "";
    }

    v447 = (a1 + 864);
    v448 = (a1 + 840);
    v438 = a1 + 1400;
    v452 = a1 + 1536;
    v440 = (a1 + 1616);
    v445 = (a1 + 144);
    MEMORY[0x29ED51E00](v449, v48);
    v49 = (v24 - *v24);
    if (*v49 >= 9u && (v50 = v49[4]) != 0)
    {
      v51 = v24 + v50 + *(v24 + v50) + 4;
    }

    else
    {
      v51 = "";
    }

    MEMORY[0x29ED51E00](v448, v51);
    v52 = (v24 - *v24);
    if (*v52 < 0x29u)
    {
      LOBYTE(v53) = 0;
    }

    else
    {
      v53 = v52[20];
      if (v53)
      {
        LOBYTE(v53) = *(v24 + v53) != 0;
      }
    }

    *(a1 + 888) = v53;
    std::string::operator=(v447, &__str);
    v54 = (v24 - *v24);
    if (*v54 >= 0x51u && (v55 = v54[40]) != 0)
    {
      v56 = v24 + v55 + *(v24 + v55) + 4;
    }

    else
    {
      v56 = "";
    }

    MEMORY[0x29ED51E00](v446, v56);
    v57 = (v24 - *v24);
    v459 = v24;
    if (*v57 >= 5u && v57[2] && *(a2 + 16608) == 1)
    {
      v58 = a3[1];
      if (v58 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_705;
      }

      v59 = *a3;
      if (v58 >= 0x17)
      {
        operator new();
      }

      __dst[23] = a3[1];
      if (v58)
      {
        memmove(__dst, v59, v58);
      }

      __dst[v58] = 0;
      if (*v10 < 0)
      {
        operator delete(*v438);
      }

      *v438 = *__dst;
      *(v438 + 16) = *&__dst[16];
      v60 = a3[3];
      if (a3[4])
      {
        v61 = v60 == 0;
      }

      else
      {
        v61 = 1;
      }

      if (v61)
      {
        v60 = a3[73];
      }

      *(a1 + 1424) = v60 - *a3;
    }

    v457 = a2;
    v62 = a3 + 113;
    if (a3[43])
    {
      v63 = a3[44] == 0;
    }

    else
    {
      v63 = 1;
    }

    v64 = 43;
    if (v63)
    {
      v64 = 113;
    }

    else
    {
      v62 = a3 + 43;
    }

    v454 = a3;
    v65 = a3[v64];
    if (!v65 || !v62[1])
    {
LABEL_126:
      v78 = v454 + 138;
      if (v454[68])
      {
        v79 = v454[69] == 0;
      }

      else
      {
        v79 = 1;
      }

      v80 = 68;
      if (v79)
      {
        v80 = 138;
      }

      else
      {
        v78 = v454 + 68;
      }

      v81 = v454[v80];
      v82 = v78[1];
      if (v81)
      {
        v83 = v82 == 0;
      }

      else
      {
        v83 = 1;
      }

      if (v83 || (v84 = (v81 + *v81), v85 = (v84 - *v84), *v85 < 5u) || (v86 = v85[2]) == 0)
      {
        v87 = 0;
      }

      else
      {
        v87 = *(v84 + v86);
      }

      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
      }

      *(a1 + 1624) = (v87 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0) / 1000000.0;
      v88 = (v460 - *v460);
      if (*v88 < 5u)
      {
        LODWORD(v89) = 0;
      }

      else
      {
        v89 = v88[2];
        if (v89)
        {
          LODWORD(v89) = *(v460 + v89);
        }
      }

      *v440 = v89;
      v90 = (v460 - *v460);
      if (*v90 < 0x2Du)
      {
        LODWORD(v91) = 0;
      }

      else
      {
        v91 = v90[22];
        if (v91)
        {
          LODWORD(v91) = *(v460 + v91);
        }
      }

      *(a1 + 1620) = v91;
      v92 = (v460 - *v460);
      if (*v92 < 0x35u)
      {
        LODWORD(v93) = 0;
      }

      else
      {
        v93 = v92[26];
        if (v93)
        {
          LODWORD(v93) = *(v460 + v93);
        }
      }

      *(a1 + 1660) = v93;
      v94 = (v460 - *v460);
      if (*v94 < 0x43u)
      {
        LODWORD(v95) = 0;
      }

      else
      {
        v95 = v94[33];
        if (v95)
        {
          LODWORD(v95) = *(v460 + v95);
        }
      }

      *(a1 + 1696) = v95;
      v96 = v454 + 108;
      if (v454[38])
      {
        v97 = v454[39] == 0;
      }

      else
      {
        v97 = 1;
      }

      v98 = 38;
      if (v97)
      {
        v98 = 108;
      }

      else
      {
        v96 = v454 + 38;
      }

      v99 = v454[v98];
      if (v99 && v96[1])
      {
        v100 = (v99 + *v99);
        v101 = (v100 - *v100);
        if (*v101 < 0xDu)
        {
          LODWORD(v102) = 0;
        }

        else
        {
          v102 = v101[6];
          if (v102)
          {
            LODWORD(v102) = *(v100 + v102);
          }
        }

        *(a1 + 1620) = v102;
        v103 = (v100 - *v100);
        if (*v103 < 0xBu)
        {
          LODWORD(v104) = 0;
        }

        else
        {
          v104 = v103[5];
          if (v104)
          {
            LODWORD(v104) = *(v100 + v104);
          }
        }

        *(a1 + 1628) = v104;
        v105 = (v100 - *v100);
        if (*v105 < 0x11u)
        {
          LODWORD(v106) = 0;
        }

        else
        {
          v106 = v105[8];
          if (v106)
          {
            LODWORD(v106) = *(v100 + v106);
          }
        }

        *(a1 + 1632) = v106;
        v107 = (v100 - *v100);
        if (*v107 < 0x13u)
        {
          LODWORD(v108) = 0;
        }

        else
        {
          v108 = v107[9];
          if (v108)
          {
            LODWORD(v108) = *(v100 + v108);
          }
        }

        *(a1 + 1636) = v108;
        v109 = (v100 - *v100);
        if (*v109 < 0x17u)
        {
          LODWORD(v110) = 0;
        }

        else
        {
          v110 = v109[11];
          if (v110)
          {
            LODWORD(v110) = *(v100 + v110);
          }
        }

        *(a1 + 1640) = v110;
        v111 = (v100 - *v100);
        if (*v111 < 0x1Bu)
        {
          LODWORD(v112) = 0;
        }

        else
        {
          v112 = v111[13];
          if (v112)
          {
            LODWORD(v112) = *(v100 + v112);
          }
        }

        *(a1 + 1644) = v112;
        v113 = (v100 - *v100);
        if (*v113 < 0x15u)
        {
          LODWORD(v114) = 0;
        }

        else
        {
          v114 = v113[10];
          if (v114)
          {
            LODWORD(v114) = *(v100 + v114);
          }
        }

        *(a1 + 1648) = v114;
        v115 = (v100 - *v100);
        if (*v115 < 0x19u)
        {
          LODWORD(v116) = 0;
        }

        else
        {
          v116 = v115[12];
          if (v116)
          {
            LODWORD(v116) = *(v100 + v116);
          }
        }

        *(a1 + 1652) = v116;
        v117 = (v100 - *v100);
        if (*v117 < 0x1Du)
        {
          LODWORD(v118) = 0;
        }

        else
        {
          v118 = v117[14];
          if (v118)
          {
            LODWORD(v118) = *(v100 + v118);
          }
        }

        *(a1 + 1656) = v118;
        v119 = (v100 - *v100);
        if (*v119 < 0xFu)
        {
          LODWORD(v120) = 0;
        }

        else
        {
          v120 = v119[7];
          if (v120)
          {
            LODWORD(v120) = *(v100 + v120);
          }
        }

        *(a1 + 1660) = v120;
        v121 = (v100 - *v100);
        if (*v121 < 0x1Fu)
        {
          LODWORD(v122) = 0;
        }

        else
        {
          v122 = v121[15];
          if (v122)
          {
            LODWORD(v122) = *(v100 + v122);
          }
        }

        *(a1 + 1664) = v122;
        v123 = (v100 - *v100);
        if (*v123 < 0x21u)
        {
          LODWORD(v124) = 0;
        }

        else
        {
          v124 = v123[16];
          if (v124)
          {
            LODWORD(v124) = *(v100 + v124);
          }
        }

        *(a1 + 1668) = v124;
        v125 = (v100 - *v100);
        if (*v125 < 0x23u)
        {
          LODWORD(v126) = 0;
        }

        else
        {
          v126 = v125[17];
          if (v126)
          {
            LODWORD(v126) = *(v100 + v126);
          }
        }

        *(a1 + 1672) = v126;
        v127 = (v100 - *v100);
        if (*v127 < 0x25u)
        {
          LODWORD(v128) = 0;
        }

        else
        {
          v128 = v127[18];
          if (v128)
          {
            LODWORD(v128) = *(v100 + v128);
          }
        }

        *(a1 + 1676) = v128;
        v129 = (v100 - *v100);
        if (*v129 < 0x27u)
        {
          LODWORD(v130) = 0;
        }

        else
        {
          v130 = v129[19];
          if (v130)
          {
            LODWORD(v130) = *(v100 + v130);
          }
        }

        *(a1 + 1680) = v130;
        v131 = (v100 - *v100);
        if (*v131 < 0x29u)
        {
          LODWORD(v132) = 0;
        }

        else
        {
          v132 = v131[20];
          if (v132)
          {
            LODWORD(v132) = *(v100 + v132);
          }
        }

        *(a1 + 1684) = v132;
        v133 = (v100 - *v100);
        if (*v133 < 0x2Bu)
        {
          LODWORD(v134) = 0;
        }

        else
        {
          v134 = v133[21];
          if (v134)
          {
            LODWORD(v134) = *(v100 + v134);
          }
        }

        *(a1 + 1688) = v134;
        v135 = (v100 - *v100);
        if (*v135 < 7u)
        {
          LODWORD(v136) = 0;
        }

        else
        {
          v136 = v135[3];
          if (v136)
          {
            LODWORD(v136) = *(v100 + v136);
          }
        }

        *(a1 + 1692) = v136;
        v137 = (v100 - *v100);
        if (*v137 >= 5u && (v138 = v137[2]) != 0)
        {
          v139 = *(v100 + v138);
        }

        else
        {
          v139 = 0;
        }

        *(a1 + 1700) = v139;
      }

      if (v454[53])
      {
        v140 = v454[54];
        if (v140)
        {
          v141 = v454[53];
        }

        else
        {
          v141 = v454[123];
        }

        if (v140)
        {
          v142 = v454 + 53;
        }

        else
        {
          v142 = v454 + 123;
        }
      }

      else
      {
        v142 = v454 + 123;
        v141 = v454[123];
      }

      MEMORY[0x29ED51E10](a1 + 1760, v141, v142[1]);
      v143 = v460;
      std::string::push_back((a1 + 1760), 0);
      v144 = *v460;
      v145 = v460 - v144;
      v146 = *(v460 - v144);
      if (v146 < 0x39)
      {
        goto LABEL_269;
      }

      v147 = -v144;
      v148 = *(v145 + 28);
      if (v148)
      {
        v149 = (v460 + v148 + *(v460 + v148));
        if (*v149)
        {
          *(a1 + 1504) = 1;
          v150 = (v149 + v149[1] + 4);
          v151 = (v150 - *v150);
          if (*v151 >= 9u && (v152 = v151[4]) != 0)
          {
            v153 = *(v150 + v152);
          }

          else
          {
            v153 = 0;
          }

          *(a1 + 1704) = v153;
          *(a1 + 1708) = 1;
          v154 = *v460;
          v147 = -v154;
          v146 = *(v460 - v154);
        }
      }

      if (v146 < 0x3B)
      {
        goto LABEL_269;
      }

      v155 = v460 + v147;
      if (*(v155 + 29))
      {
        v156 = (v460 + *(v155 + 29) + *(v460 + *(v155 + 29)));
        v157 = *v156;
        if (v157)
        {
          v158 = v156 + 1;
          do
          {
            v160 = *v158++;
            v159 = v160;
            if (!(v160 >> 20))
            {
              *(a1 + 1488 + 8 * (v159 > 0x3F)) |= 1 << v159;
            }

            --v157;
          }

          while (v157);
        }
      }

      if (v146 < 0x57)
      {
LABEL_269:
        LODWORD(v161) = 0;
      }

      else
      {
        v161 = *(v155 + 43);
        if (*(v155 + 43))
        {
          LODWORD(v161) = *(v460 + v161);
        }
      }

      *(a1 + 692) = v161;
      v162 = (v460 - *v460);
      if (*v162 >= 0x21u && (v163 = v162[16]) != 0)
      {
        v164 = *(v460 + v163);
      }

      else
      {
        v164 = 0;
      }

      v165 = &qword_2A17A1000;
      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
      }

      *(a1 + 696) = getAdditionalSpillBufferBytes(void)::extra + v164;
      v166 = (v460 - *v460);
      if (*v166 < 0x59u)
      {
        LODWORD(v167) = 0;
      }

      else
      {
        v167 = v166[44];
        if (v167)
        {
          LODWORD(v167) = *(v460 + v167);
        }
      }

      *(a1 + 720) = v167;
      v168 = (v460 - *v460);
      if (*v168 < 0x51u)
      {
        LODWORD(v169) = 0;
      }

      else
      {
        v169 = v168[40];
        if (v169)
        {
          LODWORD(v169) = *(v460 + v169);
        }
      }

      *(a1 + 724) = v169;
      v170 = (v460 - *v460);
      if (*v170 < 0x4Bu)
      {
        LODWORD(v171) = 0;
      }

      else
      {
        v171 = v170[37];
        if (v171)
        {
          LODWORD(v171) = *(v460 + v171);
        }
      }

      *(a1 + 732) = v171;
      v172 = (v460 - *v460);
      v173 = *v172;
      if (v173 >= 0x25)
      {
        if (v172[18] && *(v460 + v172[18]))
        {
          if (v173 < 0x27)
          {
            LOBYTE(v174) = 0;
            v175 = 1;
            goto LABEL_298;
          }

          v174 = v172[19];
          goto LABEL_292;
        }

        if (v173 >= 0x27)
        {
          v174 = v172[19];
          if (v172[19] && *(v460 + v172[19]))
          {
            v175 = 1;
            LOBYTE(v174) = 1;
            goto LABEL_298;
          }

          if (v173 < 0x29)
          {
            goto LABEL_701;
          }

          if (v172[20] && *(v460 + v172[20]))
          {
LABEL_292:
            v175 = 1;
            goto LABEL_702;
          }

          if (v173 >= 0x71 && (v430 = v172[56]) != 0)
          {
            v175 = *(v460 + v430) != 0;
          }

          else
          {
LABEL_701:
            v175 = 0;
          }

LABEL_702:
          if (v174)
          {
            LOBYTE(v174) = *(v460 + v174) != 0;
          }

LABEL_298:
          *(a1 + 742) = v174;
          v176 = (v24 - *v24);
          v177 = *v176;
          if (v177 < 0x21)
          {
            v179 = 0;
            LODWORD(v178) = 0;
          }

          else
          {
            v178 = v176[16];
            if (v176[16])
            {
              LODWORD(v178) = *(v24 + v178);
            }

            if (v177 < 0x4D)
            {
              v179 = 0;
            }

            else
            {
              v179 = v176[38];
              if (v176[38])
              {
                v179 = *(v24 + v179);
              }

              if (v177 >= 0x4F)
              {
                v180 = v176[39];
                if (v180)
                {
                  v180 = *(v24 + v180);
                }

LABEL_310:
                *(a1 + 784) = v178 | (v179 << 32);
                *(a1 + 792) = v180;
                *(a1 + 746) = (v175 | v174) & 1;
                v181 = *v460;
                v182 = (v460 - v181);
                v183 = *(v460 - v181);
                if (v183 < 0x37)
                {
                  LOBYTE(v184) = 0;
                }

                else
                {
                  v184 = v182[27];
                  if (v182[27])
                  {
                    LOBYTE(v184) = *(v460 + v184) != 0;
                  }
                }

                *(a1 + 741) = v184;
                v185 = (v24 - *v24);
                v186 = *v185;
                if (v186 < 0x33)
                {
                  LOBYTE(v187) = 0;
                }

                else
                {
                  v187 = v185[25];
                  if (v185[25])
                  {
                    LOBYTE(v187) = *(v24 + v187) != 0;
                  }
                }

                *(a1 + 747) = v187;
                if (v183 < 0x3F)
                {
                  LOBYTE(v188) = 0;
                }

                else
                {
                  v188 = v182[31];
                  if (v182[31])
                  {
                    v189 = (v460 + v188 + *(v460 + v188));
                    v188 = *v189;
                    if (v188)
                    {
                      v190 = v189 + 1;
                      while (1)
                      {
                        v192 = *v190++;
                        v191 = v192;
                        if (v192 < 0x36 && ((0x3F000000000777uLL >> v191) & 1) != 0)
                        {
                          break;
                        }

                        if (!--v188)
                        {
                          goto LABEL_327;
                        }
                      }

                      LOBYTE(v188) = 1;
                    }
                  }
                }

LABEL_327:
                *(a1 + 749) = v188;
                if (v186 <= 0x14)
                {
                  LOBYTE(v194) = 0;
                  *(a1 + 743) = 0;
                }

                else
                {
                  v193 = v185[10];
                  if (v185[10])
                  {
                    LOBYTE(v193) = *(v24 + v193) != 0;
                  }

                  *(a1 + 743) = v193;
                  if (v186 < 0x25)
                  {
                    LOBYTE(v194) = 0;
                  }

                  else
                  {
                    v194 = v185[18];
                    if (v185[18])
                    {
                      LOBYTE(v194) = *(v24 + v194) != 0;
                    }
                  }
                }

                v195 = -v181;
                *(a1 + 1585) = v194;
                if (v183 < 0x5D)
                {
                  LOBYTE(v196) = 0;
                }

                else
                {
                  v196 = v182[46];
                  if (v196)
                  {
                    LOBYTE(v196) = *(v460 + v196) != 0;
                  }
                }

                v450 = v175;
                *(a1 + 748) = v196;
                if (v186 >= 0x23 && (v197 = v185[17]) != 0)
                {
                  *(a1 + 1587) = 1;
                  v198 = (v24 + v197 + *(v24 + v197));
                  v199 = *v198;
                  if (v199)
                  {
                    v200 = &v198[v199];
                    while (1)
                    {
                      v201 = v198[1];
                      v202 = (++v198 + v201);
                      v203 = (v202 - *v202);
                      v204 = *v203;
                      if (v204 < 7)
                      {
                        v205 = 0;
                        v207 = 0;
                        if (v204 < 5)
                        {
                          goto LABEL_351;
                        }

                        v206 = v203[2];
                        if (v206)
                        {
                          goto LABEL_350;
                        }
                      }

                      else if (v203[3])
                      {
                        v205 = *(v202 + v203[3]);
                        v206 = v203[2];
                        if (v206)
                        {
                          goto LABEL_350;
                        }
                      }

                      else
                      {
                        v205 = 0;
                        v206 = v203[2];
                        if (v206)
                        {
LABEL_350:
                          v207 = *(v202 + v206);
                          goto LABEL_351;
                        }
                      }

                      v207 = 0;
LABEL_351:
                      v208 = v458;
LABEL_352:
                      v209 = *v208;
                      if (!*v208)
                      {
LABEL_356:
                        operator new();
                      }

                      while (1)
                      {
                        v208 = v209;
                        v210 = *(v209 + 28);
                        if (v207 < v210)
                        {
                          goto LABEL_352;
                        }

                        if (v210 >= v207)
                        {
                          break;
                        }

                        v209 = v208[1];
                        if (!v209)
                        {
                          goto LABEL_356;
                        }
                      }

                      v24 = v459;
                      *(v208 + 8) = v205;
                      if (v198 == v200)
                      {
                        v143 = v460;
                        v213 = *v460;
                        v195 = -v213;
                        v165 = &qword_2A17A1000;
                        if (*(v460 - v213) < 0x21u)
                        {
LABEL_366:
                          v212 = 0;
                          v211 = v454;
                          {
                            goto LABEL_708;
                          }

                          goto LABEL_369;
                        }

LABEL_362:
                        v211 = v454;
                        if (*(v143 + v195 + 32))
                        {
                          v212 = *(v143 + *(v143 + v195 + 32));
                          {
                            goto LABEL_369;
                          }
                        }

                        else
                        {
                          v212 = 0;
                          {
                            goto LABEL_369;
                          }
                        }

LABEL_708:
                        {
                          *(v165 + 402) = 0;
                        }

LABEL_369:
                        v214 = *(v165 + 402) + v212;
                        *(a1 + 688) = v214;
                        v215 = (v143 - *v143);
                        if (*v215 < 0x43u)
                        {
                          LODWORD(v216) = 0;
                        }

                        else
                        {
                          v216 = v215[33];
                          if (v216)
                          {
                            LODWORD(v216) = *(v143 + v216);
                          }
                        }

                        *(a1 + 700) = v216;
                        v217 = (v143 - *v143);
                        if (*v217 < 5u)
                        {
                          LODWORD(v218) = 0;
                        }

                        else
                        {
                          v218 = v217[2];
                          if (v218)
                          {
                            LODWORD(v218) = *(v143 + v218);
                          }
                        }

                        *(a1 + 684) = v218;
                        v219 = (v143 - *v143);
                        if (*v219 < 0x51u)
                        {
                          LODWORD(v220) = 0;
                        }

                        else
                        {
                          v220 = v219[40];
                          if (v220)
                          {
                            LODWORD(v220) = *(v143 + v220);
                          }
                        }

                        *(a1 + 716) = v220;
                        v221 = (v143 - *v143);
                        if (*v221 < 0x4Fu)
                        {
                          LODWORD(v222) = 0;
                        }

                        else
                        {
                          v222 = v221[39];
                          if (v222)
                          {
                            LODWORD(v222) = *(v143 + v222);
                          }
                        }

                        *(a1 + 728) = v222;
                        *(a1 + 736) = *(a4 + 468);
                        v223 = (v143 - *v143);
                        if ((*(v143 + v223[6] + *(v143 + v223[6])) | v214) != 0 || v450)
                        {
                          goto LABEL_396;
                        }

                        v224 = *v223;
                        if (v224 < 0x21)
                        {
                          v225 = 0;
                        }

                        else if (v223[16])
                        {
                          v225 = *(v143 + v223[16]);
                          if (v224 >= 0x43)
                          {
LABEL_672:
                            if (v223[33])
                            {
                              v226 = *(v143 + v223[33]);
                              {
                                goto LABEL_674;
                              }

                              goto LABEL_392;
                            }
                          }
                        }

                        else
                        {
                          v225 = 0;
                          if (v224 >= 0x43)
                          {
                            goto LABEL_672;
                          }
                        }

                        v226 = 0;
                        {
LABEL_674:
                          {
                            *(v165 + 402) = 0;
                          }
                        }

LABEL_392:
                        if (v226 + v225 + *(v165 + 402))
                        {
LABEL_396:
                          LOBYTE(v228) = 1;
                        }

                        else
                        {
                          v227 = (v460 - *v460);
                          if (*v227 < 0x5Fu)
                          {
                            LOBYTE(v228) = 0;
                          }

                          else
                          {
                            v228 = v227[47];
                            if (v228)
                            {
                              LOBYTE(v228) = *(v460 + v228) != 0;
                            }
                          }
                        }

                        *(a1 + 740) = v228;
                        v229 = (v24 - *v24);
                        if (*v229 < 0x11u)
                        {
                          LODWORD(v230) = 0;
                        }

                        else
                        {
                          v230 = v229[8];
                          if (v230)
                          {
                            LODWORD(v230) = *(v24 + v230);
                          }
                        }

                        v231 = (a1 + 1200);
                        *(a1 + 1392) = v230;
                        {
                        }

                        v232 = (v211 + 3);
                        if (v211[4])
                        {
                          v233 = v211[3] == 0;
                        }

                        else
                        {
                          v233 = 1;
                        }

                        v234 = v211;
                        v235 = (v211 + 73);
                        if (v233)
                        {
                          v236 = v232 + 70;
                        }

                        else
                        {
                          v236 = v232;
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v457 + 6496, v236[1], (a1 + 1448));
                        *(a1 + 1480) += *&__dst[16];
                        v237 = *&__dst[16];
                        *v231 = *__dst;
                        *(a1 + 1216) = v237;
                        *(a1 + 1225) = *&__dst[25];
                        *(a1 + 920) = *(a1 + 1200);
                        *(a1 + 952) = v457 + 6496;
                        v238 = *(a1 + 1216);
                        *(a1 + 960) = *v231;
                        *(a1 + 976) = v238;
                        *(a1 + 985) = *(a1 + 1225);
                        if (*v232)
                        {
                          v239 = v234[4];
                          if (v239)
                          {
                            v240 = *v232;
                          }

                          else
                          {
                            v240 = v234[73];
                          }

                          if (v239)
                          {
                            v235 = v232;
                          }
                        }

                        else
                        {
                          v240 = *v235;
                        }

                        v241 = v456;
                        memcpy(*(a1 + 1208), v240, v235[1]);
                        v242 = *(a1 + 1208);
                        v243 = *(a1 + 1216);
                        *(a1 + 928) = *(a1 + 920);
                        *(a1 + 936) = v242;
                        *(a1 + 944) = v243;
                        v244 = (v234 + 8);
                        v245 = v460;
                        if (v234[8])
                        {
                          if (v234[9])
                          {
                            v246 = v234 + 8;
                          }

                          else
                          {
                            v246 = v234 + 78;
                          }

                          v247 = v246[1];
                          v248 = v445;
                          if (!v247)
                          {
                            goto LABEL_432;
                          }
                        }

                        else
                        {
                          v247 = v234[79];
                          v248 = v445;
                          if (!v247)
                          {
                            goto LABEL_432;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v457 + 6328, v247, (a1 + 1456));
                        *(a1 + 1480) += *&__dst[16];
                        v249 = *&__dst[16];
                        *(a1 + 1248) = *__dst;
                        *(a1 + 1264) = v249;
                        *(a1 + 1273) = *&__dst[25];
                        v250 = *(a1 + 1264);
                        *(a1 + 1008) = *(a1 + 1248);
                        *(a1 + 1024) = v250;
                        *(a1 + 1033) = *(a1 + 1273);
                        if (*v244)
                        {
                          v251 = v454[9];
                          if (v251)
                          {
                            v252 = *v244;
                          }

                          else
                          {
                            v252 = v454[78];
                          }

                          if (v251)
                          {
                            v253 = v234 + 8;
                          }

                          else
                          {
                            v253 = v454 + 78;
                          }
                        }

                        else
                        {
                          v253 = v454 + 78;
                          v252 = v454[78];
                        }

                        v245 = v460;
                        memcpy(*(a1 + 1256), v252, v253[1]);
LABEL_432:
                        v254 = (v454 + 13);
                        if (v454[13])
                        {
                          if (v454[14])
                          {
                            v255 = v454 + 13;
                          }

                          else
                          {
                            v255 = v454 + 83;
                          }

                          v256 = v255[1];
                          if (!v256)
                          {
                            goto LABEL_448;
                          }
                        }

                        else
                        {
                          v256 = v454[84];
                          if (!v256)
                          {
                            goto LABEL_448;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v457 + 6328, v256, (a1 + 1464));
                        *(a1 + 1480) += *&__dst[16];
                        v257 = *&__dst[16];
                        *(a1 + 1296) = *__dst;
                        *(a1 + 1312) = v257;
                        *(a1 + 1321) = *&__dst[25];
                        v258 = *(a1 + 1312);
                        *(a1 + 1056) = *(a1 + 1296);
                        *(a1 + 1072) = v258;
                        *(a1 + 1081) = *(a1 + 1321);
                        if (*v254)
                        {
                          v259 = v454[14];
                          if (v259)
                          {
                            v260 = *v254;
                          }

                          else
                          {
                            v260 = v454[83];
                          }

                          if (v259)
                          {
                            v261 = v454 + 13;
                          }

                          else
                          {
                            v261 = v454 + 83;
                          }
                        }

                        else
                        {
                          v261 = v454 + 83;
                          v260 = v454[83];
                        }

                        v245 = v460;
                        memcpy(*(a1 + 1304), v260, v261[1]);
                        v262 = *(a1 + 1312);
                        *(a1 + 1152) = *(a1 + 1296);
                        *(a1 + 1168) = v262;
LABEL_448:
                        v263 = v454 + 23;
                        if (v454[23])
                        {
                          if (!v454[24])
                          {
                            v263 = v454 + 93;
                          }

                          v264 = v263[1];
                          if (v264)
                          {
LABEL_452:
                            AGX::Heap<true>::allocateImpl(__dst, v457 + 6328, v264, (a1 + 1472));
                            *(a1 + 1480) += *&__dst[16];
                            v265 = *&__dst[16];
                            *(a1 + 1344) = *__dst;
                            *(a1 + 1360) = v265;
                            *(a1 + 1369) = *&__dst[25];
                            v266 = *(a1 + 1360);
                            *(a1 + 1104) = *(a1 + 1344);
                            *(a1 + 1120) = v266;
                            *(a1 + 1129) = *(a1 + 1369);
                            v267 = *(a1 + 1360);
                            *(a1 + 1176) = *(a1 + 1344);
                            *(a1 + 1192) = v267;
                            v245 = v460;
                          }
                        }

                        else
                        {
                          v264 = v454[94];
                          if (v264)
                          {
                            goto LABEL_452;
                          }
                        }

                        if ((*(a1 + 888) & 1) != 0 || *(*(a1 + 8) + 16945) == 1)
                        {
                          {
                            {
                              v269 = v449;
                              if (*(a1 + 839) < 0)
                              {
                                v269 = *v449;
                              }

                              v270 = v447;
                              if (*(a1 + 887) < 0)
                              {
                                v270 = v447->__r_.__value_.__r.__words[0];
                              }

                              v271 = v448;
                              if (*(a1 + 863) < 0)
                              {
                                v271 = *v448;
                              }

                              v272 = *(a1 + 800);
                              v273 = *(a1 + 808);
                              v274 = v446;
                              if (*(a1 + 919) < 0)
                              {
                                v274 = *v446;
                              }

                              v275 = *(a1 + 920);
                              v276 = *(a1 + 1216);
                              *__dst = 136448002;
                              *&__dst[4] = v269;
                              *&__dst[12] = 2082;
                              *&__dst[14] = v270;
                              *&__dst[22] = 2082;
                              *&__dst[24] = v271;
                              *&__dst[32] = 1026;
                              *&__dst[34] = v272;
                              *&__dst[38] = 2050;
                              *&__dst[40] = v273;
                              *v465 = 2082;
                              *&v465[2] = v274;
                              *&v465[10] = 2050;
                              *&v465[12] = v275;
                              v466 = 2050;
                              v467 = v276;
                              _os_signpost_emit_with_name_impl(&dword_29CA13000, v268, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
                            }
                          }

                          v277 = *(a1 + 8);
                          v278 = v449;
                          if (*(a1 + 839) < 0)
                          {
                            v278 = *v449;
                          }

                          v279 = v447;
                          if (*(a1 + 887) < 0)
                          {
                            v279 = v447->__r_.__value_.__r.__words[0];
                          }

                          v280 = v448;
                          if (*(a1 + 863) < 0)
                          {
                            v280 = *v448;
                          }

                          v281 = v446;
                          v245 = v460;
                          if (*(a1 + 919) < 0)
                          {
                            v281 = *v446;
                          }

                          v282 = *(a1 + 800);
                          v283 = *(a1 + 808);
                          v284 = *(a1 + 920);
                          v285 = *(a1 + 1216);
                          v286 = *(a1 + 888);
                          *__dst = v278;
                          *&__dst[8] = v279;
                          *&__dst[16] = v280;
                          *&__dst[24] = v281;
                          *&__dst[32] = v282;
                          *&__dst[40] = v283;
                          *v465 = v284;
                          *&v465[8] = v285;
                          v465[16] = v286;
                          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v277, a1, __dst);
                        }

                        v287 = *(a4 + 208);
                        v289 = *(a4 + 144);
                        v288 = *(a4 + 148);
                        if (v287)
                        {
                          v290 = *(a4 + 144);
                        }

                        else
                        {
                          v290 = 0;
                        }

                        v291 = *(a4 + 176);
                        if (*(a4 + 176) == 0)
                        {
                          v289 = 0;
                        }

                        v292 = (*(a4 + 132) + *(a4 + 124) + *(a4 + 140) - (*(a4 + 128) + *(a4 + 120) + *(a4 + 136)));
                        *(a1 + 48) = v290 + v288 + v289 + *(a4 + 152) + ((v292 + 3) & 0xFFFFFFFC);
                        v293 = *(a1 + 56);
                        v294 = (*(a1 + 64) - v293) >> 2;
                        if (v292 <= v294)
                        {
                          if (v292 < v294)
                          {
                            *(a1 + 64) = v293 + 4 * v292;
                          }
                        }

                        else
                        {
                          std::vector<unsigned int>::__append(v456, v292 - v294);
                          v291 = *(a4 + 176);
                          v288 = *(a4 + 148);
                          v287 = *(a4 + 208);
                        }

                        if (v287)
                        {
                          v295 = *(a4 + 144);
                        }

                        else
                        {
                          v295 = 0;
                        }

                        if (v291 | *(a4 + 184))
                        {
                          v296 = *(a4 + 144);
                        }

                        else
                        {
                          v296 = 0;
                        }

                        v297 = (v288 + v295 + v296);
                        v298 = *(a1 + 144);
                        v299 = (*(a1 + 152) - v298) >> 2;
                        if (v297 <= v299)
                        {
                          if (v297 < v299)
                          {
                            *(a1 + 152) = v298 + 4 * v297;
                          }
                        }

                        else
                        {
                          std::vector<unsigned int>::__append(v248, v297 - v299);
                        }

                        v300 = *v245;
                        v301 = *(v245 - v300 + 16);
                        v302 = *(v245 + v301);
                        v303 = *(v245 + v301 + v302);
                        if (v303)
                        {
                          v304 = 4 * v303;
                          v305 = v301 + v302;
                          while (1)
                          {
                            v307 = *(v245 + v305 + 4);
                            v308 = v245 + v305 + v307;
                            v309 = v307 - *(v308 + 1);
                            v310 = v245 + v305 + v309;
                            v311 = *(v310 + 2);
                            if (v311 < 7)
                            {
                              goto LABEL_506;
                            }

                            v312 = *(v310 + 5);
                            if (!v312 || (*(v245 + v305 + v307 + v312 + 4) & 0x80000000) == 0)
                            {
                              break;
                            }

LABEL_499:
                            v305 += 4;
                            v304 -= 4;
                            if (!v304)
                            {
                              v300 = *v245;
                              goto LABEL_513;
                            }
                          }

                          if (v311 < 9)
                          {
LABEL_506:
                            LODWORD(v313) = 0;
                          }

                          else
                          {
                            v313 = *(v245 + v305 + v309 + 12);
                            if (v313)
                            {
                              LODWORD(v313) = 4 * *(v245 + v305 + v307 + v313 + 4);
                            }
                          }

                          v314 = v313 - *(a4 + 120);
                          v456->__begin_[v314] = 0x40000000;
                          v456->__begin_[v314 + 1] = 1073741825;
                          v456->__begin_[v314 + 2] = 1073741826;
                          v456->__begin_[v314 + 3] = 1073741827;
                          v315 = v307 - *(v308 + 1);
                          if (*(v245 + v305 + v315 + 4) >= 0xBu && *(v245 + v305 + v315 + 14) && *(v245 + v305 + v307 + *(v245 + v305 + v315 + 14) + 4))
                          {
                            v316 = *(v245 + v305 + v315 + 10);
                            if (v316)
                            {
                              v306 = *(v245 + v305 + v307 + v316 + 4) & 0xFFFFF;
                            }

                            else
                            {
                              v306 = 0;
                            }

                            *(a1 + 768 + 8 * (v306 > 0x3F)) |= 1 << v306;
                          }

                          goto LABEL_499;
                        }

LABEL_513:
                        v317 = -v300;
                        v318 = v245 + v317;
                        if (*(a1 + 742))
                        {
                          v319 = *(v318 + 12);
                          v320 = *(v245 + v319);
                          v321 = (v245 + v319 + v320);
                          v322 = *v321;
                          if (v322)
                          {
                            v323 = 0;
                            v324 = 4 * v322;
                            v325 = v245 + v319 + v320;
                            while (1)
                            {
                              v326 = v321[v323 / 4 + 1];
                              v327 = v326 - *(&v321[v323 / 4 + 1] + v326);
                              v328 = &v325[v323 + v327];
                              v329 = *(v328 + 2);
                              if (v329 >= 5)
                              {
                                v330 = *(v328 + 4);
                                if (v330)
                                {
                                  if (v325[v323 + 4 + v326 + v330] == 93)
                                  {
                                    if (v329 < 7)
                                    {
                                      break;
                                    }

                                    v331 = *&v325[v323 + 10 + v327];
                                    if (!v331)
                                    {
                                      break;
                                    }

                                    v332 = *&v325[v323 + 4 + v326 + v331];
                                    if ((v332 & 0x80000000) == 0 && (v332 & 0xFFF00000) != 0x400000)
                                    {
                                      break;
                                    }
                                  }
                                }
                              }

                              v323 += 4;
                              if (v324 == v323)
                              {
                                goto LABEL_525;
                              }
                            }

                            *(a1 + 768) = vorrq_s8(*(a1 + 768), *(a1 + 784));
                          }
                        }

LABEL_525:
                        v333 = *(v318 + 10);
                        v334 = *(v245 + v333);
                        v335 = *(v245 + v333 + v334);
                        if (!v335)
                        {
                          goto LABEL_541;
                        }

                        v336 = 4 * v335;
                        v337 = v333 + v334;
                        while (2)
                        {
                          v338 = *(v245 + v337 + 4);
                          v339 = v338 - *(v245 + v337 + v338 + 4);
                          v340 = v245 + v337 + v339;
                          v341 = *(v340 + 2);
                          if (v341 < 7)
                          {
                            goto LABEL_534;
                          }

                          v342 = *(v340 + 5);
                          if (v342 && *(v245 + v337 + v338 + v342 + 4) < 0)
                          {
                            goto LABEL_527;
                          }

                          if (v341 < 9 || (v343 = *(v245 + v337 + v339 + 12)) == 0)
                          {
LABEL_534:
                            v344 = 0;
                            goto LABEL_535;
                          }

                          v344 = *(v245 + v337 + v338 + v343 + 4);
LABEL_535:
                          if (*(a1 + 1584))
                          {
                            v345 = 3;
                          }

                          else
                          {
                            v345 = 1;
                          }

                          v346 = *(a4 + 124) + v345 * v344 - (*(a4 + 120) + *(a4 + 128));
                          *(*(a1 + 56) + 4 * v346) = 1610612740;
                          if (*(a1 + 1584) == 1)
                          {
                            v456->__begin_[v346 + 1] = 0x7FFFFFFF;
                            v456->__begin_[v346 + 2] = 1610612736;
                          }

LABEL_527:
                          v337 += 4;
                          v336 -= 4;
                          if (v336)
                          {
                            continue;
                          }

                          break;
                        }

                        v317 = -*v245;
LABEL_541:
                        v451 = a1 + 752;
                        v347 = (v245 + *(v245 + v317 + 12));
                        v348 = (v347 + *v347);
                        v349 = *v348;
                        if (v349)
                        {
                          v350 = &v348[v349];
                          while (1)
                          {
                            v351 = v348[1];
                            v352 = (++v348 + v351);
                            v353 = (v352 - *v352);
                            v354 = *v353;
                            if (v354 < 7)
                            {
                              LODWORD(v355) = 0;
                              goto LABEL_551;
                            }

                            if (!v353[3] || (*(v352 + v353[3]) & 0x80000000) == 0)
                            {
                              break;
                            }

LABEL_543:
                            if (v348 == v350)
                            {
                              goto LABEL_581;
                            }
                          }

                          if (v354 < 9)
                          {
                            LODWORD(v355) = 0;
                            goto LABEL_552;
                          }

                          v355 = v353[4];
                          if (v353[4])
                          {
                            LODWORD(v355) = (*(v352 + v355) >> 1) & 0x1FFFFFFF;
                            goto LABEL_552;
                          }

LABEL_551:
                          if (v354 < 7)
                          {
                            LODWORD(v356) = 0;
                          }

                          else
                          {
LABEL_552:
                            v356 = v353[3];
                            if (v356)
                            {
                              LODWORD(v356) = *(v352 + v356) & 0xFFFFF;
                              if (v356 == 53)
                              {
                                v357 = 536870920;
                              }

                              else
                              {
                                v357 = 0x1FFFFFFF;
                              }

                              if (v356 == 49)
                              {
                                v357 = 536870919;
                              }

LABEL_562:
                              v358 = *(a4 + 124) + v355 + *(a4 + 132) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136));
                              *(*v241 + 4 * v358) = v357;
                              v359 = (v352 - *v352);
                              if (*v359 >= 0xBu)
                              {
                                v360 = v359[5];
                                if (v360)
                                {
                                  if (*(v352 + v360))
                                  {
                                    *(v451 + 8 * (v356 > 0x3F)) |= 1 << v356;
                                  }
                                }
                              }

                              if (*(a1 + 1587) == 1)
                              {
                                v361 = *v458;
                                if (!*v458)
                                {
LABEL_704:
                                  abort();
                                }

                                v362 = 2 * v358;
                                v363 = (2 * v358) | 1;
                                while (1)
                                {
                                  while (1)
                                  {
                                    v364 = *(v361 + 7);
                                    if (v356 >= v364)
                                    {
                                      break;
                                    }

                                    v361 = *v361;
                                    if (!v361)
                                    {
                                      goto LABEL_704;
                                    }
                                  }

                                  if (v364 >= v356)
                                  {
                                    break;
                                  }

                                  v361 = v361[1];
                                  if (!v361)
                                  {
                                    goto LABEL_704;
                                  }
                                }

                                v365 = v455;
LABEL_575:
                                v366 = *v365;
                                if (!*v365)
                                {
LABEL_579:
                                  operator new();
                                }

                                while (1)
                                {
                                  v365 = v366;
                                  v367 = *(v366 + 28);
                                  if (v363 < v367)
                                  {
                                    goto LABEL_575;
                                  }

                                  if (v367 > v362)
                                  {
                                    break;
                                  }

                                  v366 = *(v365 + 8);
                                  if (!v366)
                                  {
                                    goto LABEL_579;
                                  }
                                }

                                v241 = v456;
                                v245 = v460;
                                *(v365 + 32) = *(v361 + 8);
                              }

                              goto LABEL_543;
                            }
                          }

                          v357 = 0x1FFFFFFF;
                          goto LABEL_562;
                        }

LABEL_581:
                        AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather(v241);
                        v370 = *(a4 + 120);
                        v369 = *(a4 + 124);
                        v371 = *(a4 + 128);
                        v372 = *(a4 + 132);
                        v373 = *(a4 + 136);
                        v374 = *(a4 + 140);
                        v375 = (v369 + v372 + v374 - (v370 + v371 + v373) + 3) & 0xFFFFFFFC;
                        v376 = *(a4 + 160);
                        v377 = *(a4 + 168);
                        if (*(a4 + 160) == 0)
                        {
                          goto LABEL_599;
                        }

                        v378 = 0;
                        v379 = *(a4 + 144);
                        if (*(a4 + 208) != 1 || !v379)
                        {
                          goto LABEL_593;
                        }

                        v380 = 0;
                        *__dst = *(a4 + 160);
                        *&v462 = v377;
                        v381 = v376;
                        while (2)
                        {
                          if (v381)
                          {
                            v382 = __dst;
LABEL_586:
                            *v382 = v381 & (v381 - 1);
                            *&v445->__begin_[v380] = xmmword_29D2F17F0;
                            v380 += 4;
                            v381 = *__dst;
                            continue;
                          }

                          break;
                        }

                        v381 = v462;
                        if (v462)
                        {
                          v382 = &v462;
                          goto LABEL_586;
                        }

                        v373 = *(a4 + 136);
                        v374 = *(a4 + 140);
                        v371 = *(a4 + 128);
                        v372 = *(a4 + 132);
                        v370 = *(a4 + 120);
                        v369 = *(a4 + 124);
                        v379 = *(a4 + 144);
                        v378 = v379;
LABEL_593:
                        v383 = *(a4 + 176);
                        if (*&v383 != 0 && v379 != 0)
                        {
                          v394 = v378 - v375 + ((v374 + v372 - (v373 + v371 + v370) + v369 + 3) & 0xFFFFFFFC);
                          *__dst = v376;
                          *&v462 = v377;
                          while (1)
                          {
                            if (v376)
                            {
                              v395 = __dst;
                            }

                            else
                            {
                              v376 = v462;
                              if (!v462)
                              {
                                break;
                              }

                              v395 = &v462;
                            }

                            *v395 = v376 & (v376 - 1);
                            begin = v445->__begin_;
                            v445->__begin_[v394] = 0;
                            begin[v394 + 1] = 1;
                            begin[v394 + 2] = 2;
                            begin[v394 + 3] = 3;
                            v394 += 4;
                            v376 = *__dst;
                          }
                        }

                        v368 = vorrq_s8(*(a1 + 768), v383);
                        *(a1 + 768) = v368;
LABEL_599:
                        if (*(a4 + 148))
                        {
                          v385 = *(a4 + 144);
                          if (*(a4 + 208))
                          {
                            v386 = *(a4 + 144);
                          }

                          else
                          {
                            v386 = 0;
                          }

                          if (*(a4 + 176) == 0)
                          {
                            v385 = 0;
                          }

                          v387 = ((*(a4 + 124) + *(a4 + 132) + *(a4 + 140) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136)) + 3) & 0xFFFFFFFC) - v375 + v386 + v385;
                          v389 = *(a4 + 192);
                          v388 = *(a4 + 200);
                          *__dst = v389;
                          *&v462 = v388;
                          while (1)
                          {
                            if (v389)
                            {
                              v390 = __dst;
                            }

                            else
                            {
                              v389 = v462;
                              if (!v462)
                              {
                                break;
                              }

                              v390 = &v462;
                            }

                            *v390 = v389 & (v389 - 1);
                            v391 = *(a1 + 144);
                            *(v391 + 4 * v387) = 4;
                            if (*(a1 + 1584) == 1)
                            {
                              *(v391 + 4 * (v387 + 1)) = -1;
                              *(v391 + 4 * (v387 + 2)) = 0;
                            }

                            v387 += 4;
                            v389 = *__dst;
                          }
                        }

                        if (*(a4 + 467) == 1)
                        {
                          v392 = (v245 - *v245);
                          if (*v392 < 0x17u)
                          {
                            LODWORD(v393) = 0;
                          }

                          else
                          {
                            v393 = v392[11];
                            if (v393)
                            {
                              v393 = (*(v245 + v393) + 3) >> 2;
                            }
                          }

                          *(a1 + 408) = v393;
                          *(a1 + 412) = 1073741822;
                        }

                        v397 = (v245 - *v245);
                        if (*v397 >= 0x17u && (v398 = v397[11]) != 0)
                        {
                          v399 = *(v245 + v398) + 3;
                          v400 = (a1 + 176);
                          v401 = *(a1 + 176);
                          v402 = v399 >> 2;
                          *(a1 + 52) = v402;
                          v403 = *(a1 + 168);
                          v404 = (v401 - v403) >> 2;
                          if (v402 > v404)
                          {
                            std::vector<unsigned int>::__append((a1 + 168), v402 - v404);
                            goto LABEL_631;
                          }
                        }

                        else
                        {
                          v402 = 0;
                          v400 = (a1 + 176);
                          v405 = *(a1 + 176);
                          *(a1 + 52) = 0;
                          v403 = *(a1 + 168);
                          v404 = (v405 - v403) >> 2;
                        }

                        if (v404 > v402)
                        {
                          *v400 = v403 + 4 * v402;
                        }

LABEL_631:
                        if (v444 != (a4 + 216))
                        {
                          std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v444, *(a4 + 216), *(a4 + 224), (*(a4 + 224) - *(a4 + 216)) >> 2);
                        }

                        if (v443 != (a4 + 240))
                        {
                          std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v443, *(a4 + 240), *(a4 + 248), (*(a4 + 248) - *(a4 + 240)) >> 2);
                        }

                        if (v442 != (a4 + 320))
                        {
                          std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v442, *(a4 + 320), *(a4 + 328), (*(a4 + 328) - *(a4 + 320)) >> 1);
                        }

                        if (v441 != (a4 + 368))
                        {
                          std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v441, *(a4 + 368), *(a4 + 376), (*(a4 + 376) - *(a4 + 368)) >> 1);
                        }

                        *(a1 + 352) = *(a4 + 416);
                        *(a1 + 744) = *(a4 + 160) != 0;
                        *(a1 + 745) = *(a4 + 148) != 0;
                        v406 = *(v245 - *v245 + 24);
                        v407 = *(v245 + v406);
                        v408 = (v245 + v406 + v407);
                        v409 = *v408;
                        if (v409)
                        {
                          v410 = 0;
                          v411 = 4 * v409;
                          v412 = v245 + v406 + v407;
                          do
                          {
                            v413 = v408[v410 / 4 + 1];
                            v414 = v413 - *(&v408[v410 / 4 + 1] + v413);
                            v415 = &v412[v410 + v414];
                            v416 = *(v415 + 2);
                            if (v416 >= 5)
                            {
                              v417 = *(v415 + 4);
                              if (v417)
                              {
                                if (v416 >= 7 && v412[v410 + 4 + v413 + v417] == 139)
                                {
                                  if (*&v412[v410 + 10 + v414])
                                  {
                                    v418 = *&v412[v410 + 4 + v413 + *&v412[v410 + 10 + v414]] & 0xFFFFF;
                                    if (v416 >= 0xB)
                                    {
                                      goto LABEL_650;
                                    }
                                  }

                                  else
                                  {
                                    v418 = 0;
                                    if (v416 >= 0xB)
                                    {
LABEL_650:
                                      v419 = *&v412[v410 + 14 + v414];
                                      if (v419 && v412[v410 + 4 + v413 + v419])
                                      {
                                        *(v451 + 8 * (v418 > 0x3F)) |= 1 << v418;
                                      }
                                    }
                                  }
                                }
                              }
                            }

                            v410 += 4;
                          }

                          while (v411 != v410);
                        }

                        v420 = (v459 - *v459);
                        if (*v420 >= 0xDu)
                        {
                          v421 = v420[6];
                          if (v420[6])
                          {
                            v422 = v459 + v421;
                            v423 = *(v459 + v421);
                            if (*(v459 + v421 + v423) > ((*(a1 + 1528) - *(a1 + 1512)) >> 4))
                            {
                              operator new();
                            }

                            v424 = (v459 - *v459);
                            if (*v424 >= 0x41u && (v425 = v424[32]) != 0)
                            {
                              v426 = v459 + v425 + *(v459 + v425);
                              if (!*&v422[v423])
                              {
                                goto LABEL_684;
                              }

LABEL_662:
                              if (v426)
                              {
                                v427 = 0;
                                v428 = v459 + v421 + v423 + 4;
                                do
                                {
                                  if (*v426)
                                  {
                                    v429 = *(v426 + 8 * v427 + 4);
                                  }

                                  else
                                  {
                                    v429 = 0;
                                  }

                                  *__dst = *(v428 + 8 * v427);
                                  *&__dst[8] = v429;
                                  std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v453, __dst);
                                  ++v427;
                                }

                                while (v427 < *&v422[v423]);
                              }

                              else
                              {
                                v431 = v459 + v421 + v423 + 4;
                                do
                                {
                                  *__dst = *(v431 + 8 * v426);
                                  std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v453, __dst);
                                  ++v426;
                                }

                                while (v426 < *&v422[v423]);
                              }
                            }

                            else
                            {
                              v426 = 0;
                              if (*&v422[v423])
                              {
                                goto LABEL_662;
                              }
                            }
                          }
                        }

LABEL_684:
                        v432 = (v459 - *v459);
                        if (*v432 >= 0xBu)
                        {
                          v433 = v432[5];
                          if (v433)
                          {
                            v434 = (v459 + v433 + *(v459 + v433));
                            if (*v434 > ((*(a1 + 1576) - *(a1 + 1560)) >> 4))
                            {
                              operator new();
                            }

                            if (*v434 > ((*(a1 + 1552) - *(a1 + 1536)) >> 3))
                            {
                              operator new();
                            }

                            if (*v434)
                            {
                              v435 = 0;
                              v436 = v434 + 1;
                              do
                              {
                                AGX::SamplerDescriptor::SamplerDescriptor(__dst, (v436 + *v436), *v368.i32);
                                AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v462, v457, __dst);
                                std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](a1 + 1560, &v462);
                                v461 = *(v462 + 96);
                                std::vector<unsigned long long>::push_back[abi:nn200100](v452, &v461);
                                v437 = *(&v462 + 1);
                                if (*(&v462 + 1) && !atomic_fetch_add((*(&v462 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                                {
                                  (v437->__on_zero_shared)(v437);
                                  std::__shared_weak_count::__release_weak(v437);
                                }

                                if (SBYTE1(v467) < 0)
                                {
                                  operator delete(*v465);
                                }

                                ++v435;
                                ++v436;
                              }

                              while (v435 < *v434);
                            }
                          }
                        }

                        *(a1 + 1396) = 0;
                        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__str.__r_.__value_.__l.__data_);
                        }

                        *a1 = &unk_2A23F7790;
                        *__dst = *v439;
                        *&__dst[16] = *(v439 + 16);
                        AGX::BlitVertexProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::BlitVertexProgramVariantESLState(a1 + 1784, v457, v454, a4, __dst);
                      }
                    }
                  }
                }

                else
                {
                  *(a1 + 1587) = 0;
                }

                if (v183 < 0x21)
                {
                  goto LABEL_366;
                }

                goto LABEL_362;
              }
            }
          }

          v180 = 0;
          goto LABEL_310;
        }
      }

      v175 = 0;
      LOBYTE(v174) = 0;
      goto LABEL_298;
    }

    v66 = (v65 + *v65);
    v67 = (v66 - *v66);
    v68 = *v67;
    if (v67[2])
    {
      v69 = (v66 + v67[2] + *(v66 + v67[2]));
      if (v68 < 7)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v69 = 0;
      if (v68 < 7)
      {
        goto LABEL_115;
      }
    }

    v70 = v67[3];
    if (v70)
    {
      v71 = v66 + v70 + *(v66 + v70);
      if (!*v69)
      {
        goto LABEL_126;
      }

      goto LABEL_116;
    }

LABEL_115:
    v71 = 0;
    if (!*v69)
    {
      goto LABEL_126;
    }

LABEL_116:
    v72 = 0;
    v73 = v71 + 4;
    v74 = (v69 + 2);
    while (1)
    {
      v75 = *(v74 - 1);
      v76 = strlen(&v74[v75]);
      if (v76 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v77 = v76;
      if (v76 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v76;
      if (v76)
      {
        memmove(__dst, &v74[v75], v76);
      }

      __dst[v77] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 1712, __dst);
      v24 = v459;
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v73[4 * v72];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 1736, __dst);
      ++v72;
      v74 += 4;
      if (v72 >= *v69)
      {
        goto LABEL_126;
      }
    }

LABEL_705:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v28 < 0x45)
  {
    if (v28 < 0x3D)
    {
      LOWORD(v33) = 0;
      if (v28 < 0x3B)
      {
        LODWORD(v35) = 0;
        v36 = 0;
        LOWORD(v32) = 0;
        v34 = 0;
LABEL_56:
        *(a1 + 560) = v35;
        v37 = v33 + v35 - 1;
        v38 = -v35;
        v39 = *(a1 + 568);
        v40 = (v32 | ((v38 & v37) << 32) | (v34 << 48)) + v36 + (v39 & 0xFF000000);
        *(a1 + 568) = v40;
        if (v40 != v39)
        {
          *(a1 + 592) = 0uLL;
          *(a1 + 608) = 0uLL;
          *(a1 + 576) = 0uLL;
          *&v41 = -1;
          *(&v41 + 1) = -1;
          *(a1 + 624) = v41;
          *(a1 + 640) = v41;
          *(a1 + 656) = v41;
          *(a1 + 672) = -1;
        }

        v42 = (v24 - *v24);
        if (*v42 < 0x57u)
        {
          LODWORD(v43) = 0;
        }

        else
        {
          v43 = v42[43];
          if (v43)
          {
            LODWORD(v43) = *(v24 + v43);
          }
        }

        *(a1 + 680) = v43;
        v44 = *v24;
        v26 = -v44;
        v28 = *(v24 - v44);
        goto LABEL_63;
      }

      LOWORD(v32) = 0;
      v34 = v27[29];
      if (!v27[29])
      {
LABEL_41:
        if (v28 < 0x3F)
        {
          LODWORD(v35) = 0;
          v36 = 0;
        }

        else
        {
          v35 = v27[31];
          if (v27[31])
          {
            v35 = *(v24 + v35);
          }

          if (v28 < 0x4B)
          {
            v36 = 0;
          }

          else
          {
            v36 = v27[37];
            if (v27[37])
            {
              v36 = *(v24 + v36) << 16;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_40:
      v34 = *(v24 + v34);
      goto LABEL_41;
    }

    LOWORD(v32) = 0;
    v33 = v27[30];
    if (v27[30])
    {
      goto LABEL_38;
    }
  }

  else
  {
    v32 = v27[34];
    if (v27[34])
    {
      LODWORD(v32) = *(v24 + v32);
    }

    v33 = v27[30];
    if (v27[30])
    {
LABEL_38:
      LODWORD(v33) = *(v24 + v33);
    }
  }

  v34 = v27[29];
  if (!v27[29])
  {
    goto LABEL_41;
  }

  goto LABEL_40;
}