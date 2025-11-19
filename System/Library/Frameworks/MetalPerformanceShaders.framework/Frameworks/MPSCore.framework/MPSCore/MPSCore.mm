unint64_t MPSDevice::GetMPSDevice(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  DefaultOptions = GetDefaultOptions();
  v7 = v2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22E2EE6C8;
  block[3] = &unk_2787BFEA0;
  block[4] = DefaultOptions;
  block[5] = v2;
  if (qword_280AFECD0 == -1)
  {
    explicit = atomic_load_explicit(&qword_280AFECD8, memory_order_acquire);
    v9 = dword_280AFECCC;
    if (explicit)
    {
      goto LABEL_4;
    }

LABEL_15:
    switch(v9)
    {
      case 1:
        v10 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E2EE9D8(v10, a1);
      case 2:
        v26 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E2EE9D8(v26, a1);
      case 3:
        v21 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E2EE9D8(v21, a1);
      case 4:
        v31 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E2EE9D8(v31, a1);
      case 5:
        v32 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E2EE9D8(v32, a1);
      case 6:
        v23 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E2EE9D8(v23, a1);
      case 7:
        v27 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E2EE9D8(v27, a1);
      case 8:
        v28 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E2EE9D8(v28, a1);
      case 9:
        v34 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E2EE9D8(v34, a1);
      case 10:
        v33 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E2EE9D8(v33, a1);
      case 11:
        v16 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E36D3BC(v16, a1);
      case 12:
        v24 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E36D334(v24, a1);
      case 16:
        v19 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E2EEB88(v19, a1);
      case 17:
        v13 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E36D254(v13, a1);
      case 18:
        v29 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E2EEC88(v29, a1);
      case 19:
        v30 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E36D174(v30, a1);
      case 20:
        v90 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E36D098(v90, a1);
      case 21:
        v89 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E36E4D8(v89, a1);
      case 22:
        v11 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
        sub_22E36E6E0(v11, a1);
      case 26:
        v20 = malloc_type_calloc(1uLL, 0xAB8uLL, 0x4F88454BuLL);
        sub_22E36CFC8(v20, a1);
      case 27:
        v91 = malloc_type_calloc(1uLL, 0xAB8uLL, 0x4F88454BuLL);
        sub_22E36C9C4(v91, a1);
      case 28:
        v12 = malloc_type_calloc(1uLL, 0xAB8uLL, 0x4F88454BuLL);
        sub_22E36C4C4(v12, a1);
      case 29:
        v18 = malloc_type_calloc(1uLL, 0xAB8uLL, 0x4F88454BuLL);
        sub_22E36C5C4(v18, a1);
      case 30:
        v15 = malloc_type_calloc(1uLL, 0xAB8uLL, 0x4F88454BuLL);
        sub_22E36C6C4(v15, a1);
      case 31:
        v25 = malloc_type_calloc(1uLL, 0xAB8uLL, 0x4F88454BuLL);
        sub_22E36C7C4(v25, a1);
      case 32:
        v14 = malloc_type_calloc(1uLL, 0xAB8uLL, 0x4F88454BuLL);
        sub_22E36C8C4(v14, a1);
      case 34:
        v93 = malloc_type_calloc(1uLL, 0xAB8uLL, 0x4F88454BuLL);
        sub_22E36CAC4(v93, a1);
      case 35:
        v92 = malloc_type_calloc(1uLL, 0xAB8uLL, 0x4F88454BuLL);
        sub_22E36CC14(v92, a1);
      case 36:
        v17 = malloc_type_calloc(1uLL, 0xAB8uLL, 0x4F88454BuLL);
        sub_22E36CD14(v17, a1);
      case 37:
        v22 = malloc_type_calloc(1uLL, 0xAB8uLL, 0x4F88454BuLL);
        sub_22E36CE78(v22, a1);
      default:
        v35 = objc_msgSend_productName(a1, v2, v3, v4, v5);
        v42 = a1;
        if (objc_msgSend_isEqualToString_(v35, v36, @"Paravirtual device", v37, v38))
        {
          v43 = [MPSParavirtDevice alloc];
          v42 = objc_msgSend_initWithDevice_(v43, v44, a1, v45, v46);
        }

        if (objc_msgSend_supportsFamily_(v42, v39, 1010, v40, v41))
        {
          v54 = a1;
          if (objc_opt_respondsToSelector())
          {
            v54 = objc_msgSend_performSelector_(a1, v51, sel_originalObject, v52, v53);
          }

          if ((objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_gpuCoreCount(v54, v55, v47, v56, v57) <= 0xA)
          {
            v58 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
            sub_22E36E6E0(v58, a1);
          }

          explicit = 0;
        }

        else if (objc_msgSend_supportsFamily_(v42, v48, -1009, v49, v50))
        {
          v66 = a1;
          if (objc_opt_respondsToSelector())
          {
            v66 = objc_msgSend_performSelector_(a1, v63, sel_originalObject, v64, v65);
          }

          if (objc_opt_respondsToSelector())
          {
            v70 = objc_msgSend_gpuCoreCount(v66, v67, v47, v68, v69);
            v71 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
            if (v70 <= 0xA)
            {
              sub_22E36D098(v71, a1);
            }

            sub_22E36E4D8(v71, a1);
          }

          explicit = 0;
        }

        else if (objc_msgSend_supportsFamily_(v42, v60, 1009, v61, v62))
        {
          v78 = a1;
          if (objc_opt_respondsToSelector())
          {
            v78 = objc_msgSend_performSelector_(a1, v75, sel_originalObject, v76, v77);
          }

          if (objc_opt_respondsToSelector())
          {
            v82 = objc_msgSend_gpuCoreCount(v78, v79, v47, v80, v81);
            v83 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
            if (v82 <= 0xA)
            {
              sub_22E2EEC88(v83, a1);
            }

            sub_22E36D174(v83, a1);
          }

          explicit = 0;
        }

        else
        {
          if (objc_msgSend_supportsFamily_(v42, v72, 1008, v73, v74))
          {
            v199 = 0;
            if (sub_22E36D444(a1, &v199))
            {
              v87 = v199;
              v88 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
              if (v87 <= 9)
              {
                sub_22E2EEB88(v88, a1);
              }

              sub_22E36D254(v88, a1);
            }

            v103 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
            sub_22E2EEB88(v103, a1);
          }

          if (objc_msgSend_supportsFamily_(v42, v84, 1007, v85, v86))
          {
            v199 = 0;
            if (sub_22E36D444(a1, &v199))
            {
              v101 = v199;
              if (v199 <= 4)
              {
                v102 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
                sub_22E36D3BC(v102, a1);
              }

              if (v199 <= 8)
              {
                v132 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
                sub_22E36D334(v132, a1);
              }

              if (v199 <= 0x10)
              {
                v158 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
                sub_22E36D4E4(v158, a1);
              }

              if (v199 <= 0x20)
              {
                v172 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
                sub_22E36D568(v172, a1);
              }

              v192 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
              if (v101 <= 0x40)
              {
                sub_22E36D5EC(v192, a1);
              }

              sub_22E36D334(v192, a1);
            }

            v113 = objc_msgSend_name(a1, v97, v98, v99, v100);
            if (objc_msgSend_isEqualToString_(v113, v114, @"Apple A14 GPU", v115, v116))
            {
              v121 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
              sub_22E36D3BC(v121, a1);
            }

            v133 = objc_msgSend_name(a1, v117, v118, v119, v120);
            if (objc_msgSend_isEqualToString_(v133, v134, @"Apple A14X GPU", v135, v136) & 1) != 0 || (v141 = objc_msgSend_name(a1, v137, v138, v139, v140), (objc_msgSend_isEqualToString_(v141, v142, @"Apple M1 GPU", v143, v144)) || (v149 = objc_msgSend_name(a1, v145, v146, v147, v148), objc_msgSend_isEqualToString_(v149, v150, @"Apple M1", v151, v152)))
            {
              v153 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
              sub_22E36D334(v153, a1);
            }

            v182 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
            sub_22E36D4E4(v182, a1);
          }

          if (objc_msgSend_supportsFamily_(v42, v94, 1006, v95, v96))
          {
            v108 = objc_msgSend_name(a1, v104, v105, v106, v107);
            if (objc_msgSend_isEqualToString_(v108, v109, @"Apple A13 GPU", v110, v111))
            {
              v112 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
              sub_22E2EE9D8(v112, a1);
            }

            explicit = 0;
          }

          else
          {
            if (objc_msgSend_supportsFamily_(v42, v104, 1005, v106, v107))
            {
              v126 = objc_msgSend_name(a1, v122, v123, v124, v125);
              isEqualToString = objc_msgSend_isEqualToString_(v126, v127, @"Apple A12X GPU", v128, v129);
              v131 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
              if (isEqualToString)
              {
                sub_22E2EE9D8(v131, a1);
              }

              sub_22E2EE9D8(v131, a1);
            }

            if (objc_msgSend_supportsFamily_(v42, v122, 1004, v124, v125))
            {
              v157 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
              sub_22E2EE9D8(v157, a1);
            }

            if (objc_msgSend_supportsFamily_(v42, v154, 1003, v155, v156))
            {
              v163 = objc_msgSend_name(a1, v159, v160, v161, v162);
              if (objc_msgSend_isEqualToString_(v163, v164, @"Apple A10X GPU", v165, v166))
              {
                v171 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
                sub_22E2EE9D8(v171, a1);
              }

              v183 = objc_msgSend_name(a1, v167, v168, v169, v170);
              if (objc_msgSend_isEqualToString_(v183, v184, @"Apple A10 GPU", v185, v186))
              {
                v191 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
                sub_22E2EE9D8(v191, a1);
              }

              v193 = objc_msgSend_name(a1, v187, v188, v189, v190);
              v197 = objc_msgSend_isEqualToString_(v193, v194, @"Apple A9X GPU", v195, v196);
              v198 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
              if (v197)
              {
                sub_22E2EE9D8(v198, a1);
              }

              sub_22E2EE9D8(v198, a1);
            }

            if (objc_msgSend_supportsFamily_(v42, v159, 1002, v161, v162))
            {
              v176 = objc_msgSend_name(a1, v173, v47, v174, v175);
              v180 = objc_msgSend_isEqualToString_(v176, v177, @"Apple A8X GPU", v178, v179);
              v181 = malloc_type_calloc(1uLL, 0xAB0uLL, 0x4F88454BuLL);
              if (v180)
              {
                sub_22E2EE9D8(v181, a1);
              }

              sub_22E2EE9D8(v181, a1);
            }

            explicit = 0;
          }
        }

        if (v42 != a1)
        {
        }

        sub_22E2EF6A8(DefaultOptions, v7, v47, "GetMPSDevice() no device found!\n");
        break;
    }

    return explicit;
  }

  dispatch_once(&qword_280AFECD0, block);
  explicit = atomic_load_explicit(&qword_280AFECD8, memory_order_acquire);
  v9 = dword_280AFECCC;
  if (!explicit)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (v9)
  {
    while (*(explicit + 16) != a1 || *(explicit + 1472) != v9)
    {
      explicit = *(explicit + 8);
      if (!explicit)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    while (*(explicit + 16) != a1)
    {
      explicit = *(explicit + 8);
      if (!explicit)
      {
        goto LABEL_15;
      }
    }
  }

  return explicit;
}

void sub_22E2EC468(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t MPSDevice::GetMPSLibrary_DoNotUse(MPSDevice *this, const MPSLibraryInfo *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = atomic_load_explicit(this + a2->var0 + 188, memory_order_acquire);
  if (!result)
  {
    if (!MPSDevice::GetLibrary(this, a2, a3, a4, a5))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    operator new();
  }

  return result;
}

uint64_t GetDefaultOptions()
{
  if (qword_280AFECA0 != -1)
  {
    dispatch_once_f(&qword_280AFECA0, &xmmword_280AFECB0, sub_22E2EE670);
  }

  return xmmword_280AFECB0;
}

void MPSLibrary::PrefetchComputeState(void *a1, unsigned int a2, int64x2_t *a3, int a4, void *a5, uint64_t a6)
{
  v8 = a2;
  if (a1[3] <= a2)
  {
    v9 = a1;
    v10 = a3;
    v11 = a6;
    v12 = MTLReportFailureTypeEnabled();
    a6 = v11;
    a3 = v10;
    v13 = v12;
    a1 = v9;
    if (v13)
    {
      MTLReportFailure();
      a1 = v9;
      a6 = v11;
      a3 = v10;
    }
  }

  if (!**(a1[35] + 16 * v8))
  {
    v14 = a1;
    v15 = a3;
    v16 = a6;
    v17 = MTLReportFailureTypeEnabled();
    a6 = v16;
    a3 = v15;
    v18 = v17;
    a1 = v14;
    if (v18)
    {
      MTLReportFailure();
      a1 = v14;
      a6 = v16;
      a3 = v15;
    }
  }

  MPSLibrary::GetCacheKeyAtomic(a1, a1[35] + 16 * v8, a3, 1, (a1[2] + 8 * v8), a4, 0, a5, a6);
}

void MPSLibrary::GetCacheKeyAtomic(uint64_t a1, uint64_t a2, int64x2_t *a3, int a4, atomic_ullong *a5, int a6, int a7, void *a8, uint64_t a9)
{
  explicit = atomic_load_explicit(a5, memory_order_acquire);
  if (explicit)
  {
LABEL_2:
    v18 = explicit;
    while ((vminv_u16(vmovn_s32(vandq_s8(vuzp1q_s32(vceqq_s64(*(v18 + 120), *a3), vceqq_s64(*(v18 + 136), a3[1])), vuzp1q_s32(vceqq_s64(*(v18 + 152), a3[2]), vceqq_s64(*(v18 + 184), a3[4]))))) & 1) == 0 || *(v18 + 168) != a3[3].i64[0] || *(v18 + 176) != a3[3].i64[1])
    {
      v18 = *(v18 + 200);
      if (!v18)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    while (1)
    {
      v20 = MPSLibrary::MPSKey_Create(a1, a2, a3, a4, a6, a7, 0, a8, a9, 0);
      *(v20 + 25) = explicit;
      v21 = explicit;
      atomic_compare_exchange_strong_explicit(a5, &v21, v20, memory_order_release, memory_order_relaxed);
      if (v21 == explicit)
      {
        break;
      }

      *(v20 + 25) = 0;
      sub_22E2F0214(v20);
      explicit = atomic_load_explicit(a5, memory_order_acquire);
      if (explicit)
      {
        goto LABEL_2;
      }
    }
  }
}

uint64_t MPSDevice::GetPixelInfo(MPSDevice *this, MTLPixelFormat a2, MPSImageFeatureChannelFormat a3)
{
  if (a2 > (MTLPixelFormatBC5_RGSnorm|0x200))
  {
    return 3758096384;
  }

  v5 = qword_22E37BFC8[a2];
  result = 3758096384;
  if ((v5 & 0xF0000000) != 0xE0000000)
  {
    v6 = *(this + a2 + 52);
    if ((v6 & 0x80) == 0)
    {
      MTLPixelFormatGetInfoForDevice();
      return 3758096384;
    }

    if ((v6 & 0x10) == 0)
    {
      return 3758096384;
    }

    result = (((v6 >> 2) & 1) << 45) | (((v6 >> 3) & 1) << 46) | v5 & 0xF87F07FFFFFFFFFFLL | ((v6 & 1) << 43) | (((v6 >> 8) & 0xF) << 55) | (((v6 >> 1) & 1) << 44) | 0x800000000000;
    if (a3 == MPSImageFeatureChannelFormat_reserved0)
    {
      return ((((v6 >> 2) & 1) << 45) | (((v6 >> 3) & 1) << 46)) & 0xC7FEA000FFFFFFFFLL | v5 & 0xC07E0000FFFFFFFFLL | ((((v6 >> 8) & 0xF) << 55) | (((v6 >> 1) & 1) << 44)) & 0xC7FEA000FFFFFFFFLL | 0x2800810800000000;
    }

    else if (a3 && ((v5 >> 59) & 7) != a3)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      return (((v6 >> 2) & 1) << 45) | (((v6 >> 3) & 1) << 46) | v5 & 0xF87F07FFFFFFFFFFLL | ((v6 & 1) << 43) | (((v6 >> 8) & 0xF) << 55) | (((v6 >> 1) & 1) << 44) | 0x800000000000;
    }
  }

  return result;
}

uint64_t MPSDevice::GetLibrary(MPSDevice *this, const MPSLibraryInfo *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = *MEMORY[0x277D85DE8];
  var0 = a2->var0;
  v8 = &unk_2787BECD8;
  if (a2->var0 >= 9)
  {
    v9 = &unk_2787BED50;
    if (var0 >= 0x9A)
    {
      v9 = 0;
    }

    if (var0 < 0x67)
    {
      v9 = &unk_2787BED38;
    }

    if (var0 < 0x61)
    {
      v9 = &unk_2787BED20;
    }

    if (var0 < 0x55)
    {
      v9 = &unk_2787BED08;
    }

    if (var0 >= 0x34)
    {
      v8 = v9;
    }

    else
    {
      v8 = &unk_2787BECF0;
    }
  }

  v10 = MEMORY[0x277CCA8D8];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v8[1], a4, a5);
  v18 = objc_msgSend_bundleWithIdentifier_(v10, v12, v11, v13, v14);
  if (!v18)
  {
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%s/Frameworks/%s.framework", v16, v17, "/System/Library/Frameworks/MetalPerformanceShaders.framework", v8[2]);
    isDirectory = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v20, v19, 1, v21);
    v18 = objc_msgSend_bundleWithURL_(MEMORY[0x277CCA8D8], v23, isDirectory, v24, v25);
    if (!v18)
    {
      v26 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v15, "/System/Cryptexes/OS", 4, v17);
      v30 = objc_msgSend_stringByAppendingString_(v26, v27, v19, v28, v29);
      v33 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v31, v30, 1, v32);
      v18 = objc_msgSend_bundleWithURL_(MEMORY[0x277CCA8D8], v34, v33, v35, v36);
      if (!v18)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v55 = v8[1];
          MTLReportFailure();
        }

        v18 = 0;
      }
    }
  }

  if (a2->var2)
  {
    v37 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v15, a2->var2, 1, v17, v55);
  }

  else
  {
    v37 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v15, "default", 1, v17, v55);
  }

  v40 = v37;
  v44 = objc_msgSend_pathForResource_ofType_(v18, v38, v37, @"metallib", v39);
  if (!v44 && MTLReportFailureTypeEnabled())
  {
    v49 = objc_msgSend_cStringUsingEncoding_(v40, v41, 1, v42, v43);
    v57 = v8[1];
    v58 = objc_msgSend_bundlePath(v18, v50, v51, v52, v53);
    v56 = v49;
    MTLReportFailure();
  }

  v45 = objc_msgSend_cStringUsingEncoding_(v44, v41, 1, v42, v43, v56, v57, v58);
  snprintf(__str, 0x400uLL, "%s", v45);
  for (i = (this + 32); ; i = (explicit + 24))
  {
    explicit = atomic_load_explicit(i, memory_order_acquire);
    if (!explicit)
    {
      operator new();
    }

    v48 = strlen(__str);
    if (v48 == *(explicit + 16) && !memcmp(__str, *(explicit + 8), v48))
    {
      break;
    }
  }

  return *explicit;
}

void sub_22E2ED2B0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_22E33DD44(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MPSLibrary::MPSLibrary(uint64_t a1, void *a2, uint64_t a3, void (***a4)(void, uint64_t, uint64_t))
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v8 = *(a3 + 4);
  *(a1 + 24) = v8;
  *(a1 + 280) = malloc_type_calloc(v8, 0x10uLL, 0xE00402B90B96AuLL);
  *(a1 + 64) = 766030772;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = dispatch_queue_create("com.apple.MPS.MPSLibrary.preheat", 0);
  v9 = malloc_type_calloc(*(a3 + 4), 8uLL, 0x2004093837F09uLL);
  __dmb(0xBu);
  *(a1 + 16) = v9;
  *(a1 + 56) = malloc_type_calloc(4uLL, 8uLL, 0x2004093837F09uLL);
  *(a1 + 264) = 4;
  v10 = a2;
  *(a1 + 272) = a4;
  (**a4)(a4, a3, a1);
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      *(a1 + 32) = v12(a4, *(v11 + 16));
    }
  }

  return a1;
}

uint64_t sub_22E2ED458(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 2);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 6);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 7);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 8);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 9);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 10);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 11);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 12);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 13);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 15);
}

uint64_t sub_22E2ED50C(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *a3)
{
  sub_22E2ED458(a1, a2, a3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 16);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 17);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 21);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 22);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 23);
}

uint64_t MPSLibrary::LoadMPSDeviceSpecificInfo(uint64_t this, const MPSDeviceSpecificInfo *a2)
{
  if (a2->var1)
  {
    *(this + 32) = a2;
  }

  var0 = a2->var0;
  if (a2->var0)
  {
    v3 = *(var0 + 4);
    if (v3 != -1)
    {
      v4 = *(this + 280);
      do
      {
        v5 = *(var0 + 1);
        if (!v5)
        {
          v5 = sub_22E370A64;
        }

        v6 = (v4 + 16 * v3);
        *v6 = var0;
        v6[1] = v5;
        v3 = *(var0 + 36);
        var0 = (var0 + 128);
      }

      while (v3 != -1);
    }
  }

  return this;
}

char *MPSLibrary::MPSKey_Create(uint64_t a1, uint64_t a2, _OWORD *a3, int a4, int a5, int a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v19 = malloc_type_calloc(1uLL, 0x100uLL, 0x10E0040EDA73DD6uLL);
  *(v19 + 5) = a5;
  *(v19 + 6) = a6;
  *(v19 + 4) = a2;
  *(v19 + 5) = a7;
  *(v19 + 120) = *a3;
  v20 = a3[3];
  v21 = a3[4];
  v22 = a3[2];
  *(v19 + 136) = a3[1];
  *(v19 + 184) = v21;
  *(v19 + 168) = v20;
  *(v19 + 152) = v22;
  atomic_store(1uLL, v19 + 1);
  *(v19 + 4) = 0;
  *(v19 + 7) = a8;
  *(v19 + 8) = a9;
  *(v19 + 9) = a10;
  v27 = objc_msgSend_device(*a1, v23, v24, v25, v26);
  atomic_fetch_add(v19 + 1, 1uLL);
  if (a4)
  {
    v28 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22E2EE4E8;
    block[3] = &unk_2787BFEA0;
    block[4] = a1;
    block[5] = v19;
    dispatch_async(v28, block);
  }

  else
  {
    MPSLibrary::MPSKey_Compile(a1, v19);
  }

  return v19;
}

unint64_t MPSLibrary::MPSKey_Compile(void *a1, uint64_t a2)
{
  v173 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a2 + 16));
  if (*(a2 + 48) != 1)
  {
    v155 = objc_msgSend_device(*a1, v4, v5, v6, v7);
    v156 = *(a2 + 32);
    v9 = *v156;
    v10 = *(*v156 + 24);
    if (v10)
    {
      v11 = *(v9 + 32);
      v12 = *(v9 + 48);
    }

    else
    {
      *&v11 = -1;
      *(&v11 + 1) = -1;
      *&v12 = -1;
      *(&v12 + 1) = -1;
    }

    v154 = *v9;
    *(a2 + 80) = v11;
    *(a2 + 96) = v12;
    v13 = *v156;
    v14 = *(*v156 + 72);
    if (v14)
    {
      *(a2 + 112) = *(v13 + 80);
      v15 = 0uLL;
      if (v10)
      {
LABEL_8:
        v17 = *(v13 + 96);
        v16 = *(v13 + 112);
        goto LABEL_11;
      }
    }

    else
    {
      *(a2 + 112) = 0;
      v15 = 0uLL;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    v17 = 0uLL;
    v16 = 0uLL;
LABEL_11:
    *(a2 + 224) = v17;
    *(a2 + 240) = v16;
    v165[1] = 0x2B2B03242B2B0320;
    v166 = v15;
    v167 = v15;
    kdebug_trace();
    if (qword_280AFED70 != -1)
    {
      dispatch_once(&qword_280AFED70, &unk_284217500);
    }

    v18 = qword_280AFED68;
    v19 = a1[34];
    os_unfair_lock_lock((v19 + 1432));
    v151 = *(v19 + 1440);
    v20 = *(v19 + 1424);
    os_unfair_lock_unlock((v19 + 1432));
    context = objc_autoreleasePoolPush();
    v158 = v18;
    v159[0] = 0;
    *buf = 0;
    *&buf[8] = 0;
    if (v18)
    {
      v25 = MEMORY[0x277CCACA8];
      v26 = qword_280AFED60++;
      v27 = objc_msgSend_UTF8String(v154, v21, v22, v23, v24);
      *buf = objc_msgSend_stringWithFormat_(v25, v28, @"func%llu_%s", v29, v30, v26, v27);
      *&buf[8] = objc_msgSend_arrayByAddingObjectsFromArray_(v10, v31, v14, v32, v33);
    }

    v34 = (v156[1])(*a1, *v156, a2 + 120, buf, v159);
    v157 = v34;
    if (v34)
    {
      objc_msgSend_setLabel_(v34, v35, *(a2 + 56), v36, v37);
      v38 = objc_opt_new();
      objc_msgSend_setComputeFunction_(v38, v39, v157, v40, v41);
      v45 = v154;
      if (*(a1[34] + 1464) == 1)
      {
        v46 = **(a2 + 32);
        v45 = *v46;
        if (*(a2 + 72))
        {
          v45 = objc_msgSend_stringByAppendingFormat_(v45, v42, @"_hash%llu", v43, v44, *(a2 + 72));
          v46 = **(a2 + 32);
        }

        if (*(v46 + 64))
        {
          v45 = objc_msgSend_stringByAppendingFormat_(v45, v42, @"_userInfo%llu", v43, v44, *(v46 + 64));
          v46 = **(a2 + 32);
        }

        v47 = *(v46 + 16);
        if (v47 != -1)
        {
          v45 = objc_msgSend_stringByAppendingFormat_(v45, v42, @"_kernelID%u", v43, v44, v47);
        }

        v48 = *(a2 + 120);
        v49 = *(a2 + 136);
        v50 = *(a2 + 144);
        v51 = *(a2 + 184);
        v52 = *(a2 + 192);
        if (*(a2 + 128) != -1)
        {
          v45 = objc_msgSend_stringByAppendingFormat_(v45, v42, @"_texT%llu", v43, v44, *(a2 + 128));
        }

        if (v48 != -1)
        {
          v45 = objc_msgSend_stringByAppendingFormat_(v45, v42, @"_bS%llu", v43, v44, v48);
        }

        if (v49 != -1)
        {
          v45 = objc_msgSend_stringByAppendingFormat_(v45, v42, @"_uC%llu", v43, v44, v49);
        }

        if (v50 != -1)
        {
          v45 = objc_msgSend_stringByAppendingFormat_(v45, v42, @"_ndC%llu", v43, v44, v50);
        }

        if (v51 != -1)
        {
          v45 = objc_msgSend_stringByAppendingFormat_(v45, v42, @"_ndS%llu", v43, v44, v51);
        }

        if (v52 != -1)
        {
          v45 = objc_msgSend_stringByAppendingFormat_(v45, v42, @"_imgLC%llu", v43, v44, v51);
        }

        v53 = *(a2 + 96);
        v54.i64[0] = -1;
        v54.i64[1] = -1;
        v55 = vceqq_s64(vandq_s8(*(a2 + 80), v53), v54);
        if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v55), 1), v55).u64[0] & 0x8000000000000000) != 0)
        {
          v45 = objc_msgSend_stringByAppendingFormat_(v45, v42, @"_ndLH%llu_%llu_%llu_%llu", v43, v44, *(a2 + 80), *(a2 + 88), *&v53);
        }

        if (*(a2 + 112))
        {
          v45 = objc_msgSend_stringByAppendingFormat_(v45, v42, @"_userStitchedHash%llu", v43, v44, *(a2 + 112));
        }

        v56 = *(a2 + 240);
        v57 = vorrq_s8(*(a2 + 224), v56);
        if ((vornq_s8(vdupq_laneq_s64(vtstq_s64(v57, v57), 1), vceqzq_s64(v57)).u64[0] & 0x8000000000000000) != 0)
        {
          v45 = objc_msgSend_stringByAppendingFormat_(v45, v42, @"_ndLH%llu_%llu_%llu_%llu", v43, v44, *(a2 + 224), *(a2 + 232), *&v56);
        }
      }

      objc_msgSend_setLabel_(v38, v42, v45, v43, v44);
      v62 = *(a2 + 24);
      if (v62)
      {
        v63 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v58, v59, v60, v61);
        v67 = v63;
        switch(v62)
        {
          case 1:
            objc_msgSend_setObject_forKeyedSubscript_(v63, v64, @"latency1", @"scheduleOption", v66);
            break;
          case 4:
            objc_msgSend_setObject_forKeyedSubscript_(v63, v64, @"latency_code_motion", @"scheduleOption", v66);
            break;
          case 2:
            objc_msgSend_setObject_forKeyedSubscript_(v63, v64, @"latency2", @"scheduleOption", v66);
            break;
        }

        objc_msgSend_setDriverCompilerOptions_(v38, v64, v67, v65, v66);
      }

      else
      {
        objc_msgSend_setDriverCompilerOptions_(v38, v58, 0, v60, v61);
      }

      v73 = objc_alloc_init(MEMORY[0x277CD6EB8]);
      v77 = objc_msgSend_arrayByAddingObjectsFromArray_(v10, v74, v14, v75, v76);
      objc_msgSend_setPrivateFunctions_(v73, v78, v77, v79, v80);
      objc_msgSend_setLinkedFunctions_(v38, v81, v73, v82, v83);
      if (objc_msgSend_supportsTextureWriteRoundingMode_(v155, v84, 2, v85, v86))
      {
        objc_msgSend_setTextureWriteRoundingMode_(v38, v87, 2, v88, v89);
      }
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v149 = v154;
        v150 = objc_msgSend_localizedDescription(v159[0], v68, v69, v70, v71);
        MTLReportFailure();
      }

      *(a2 + 48) = 1;
      os_unfair_lock_unlock((a2 + 16));

      v72 = *(a2 + 40);
      if (v72)
      {
        v72(v156);
      }

      sub_22E2F0214(a2);
      v38 = 0;
    }

    objc_autoreleasePoolPop(context);
    if (!v157)
    {
      explicit = 0;
LABEL_107:
      kdebug_trace();
      return explicit;
    }

    objc_msgSend_setThreadGroupSizeIsMultipleOfThreadExecutionWidth_(v38, v90, *(a2 + 20) != 0, v91, v92, v149, v150);
    if (v158)
    {
      v96 = 262145;
    }

    else
    {
      v96 = 0;
    }

    v164 = 0;
    v165[0] = 0;
    if (v20)
    {
      if ((v151 & 2) != 0)
      {
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v93, &v160, v168, 16);
        if (v104)
        {
          v105 = *v161;
          do
          {
            for (i = 0; i != v104; ++i)
            {
              if (*v161 != v105)
              {
                objc_enumerationMutation(v20);
              }

              objc_msgSend_addComputePipelineFunctionsWithDescriptor_error_(*(*(&v160 + 1) + 8 * i), v93, v38, &v164, v103);
            }

            v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v93, &v160, v168, 16);
          }

          while (v104);
        }
      }

      else if (v151)
      {
        objc_msgSend_setBinaryArchives_(v38, v93, v20, v94, v95);
        v98 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(v155, v97, v38, v151 & 4 | v96, v165, &v164);
LABEL_74:
        explicit = v98;
        if (!v98 && MTLReportFailureTypeEnabled())
        {
          v137 = objc_msgSend_userInfo(v164, v99, v100, v101, v102);
          objc_msgSend_objectForKey_(v137, v138, *MEMORY[0x277CCA450], v139, v140);
          v145 = objc_msgSend_userInfo(v164, v141, v142, v143, v144);
          objc_msgSend_objectForKey_(v145, v146, *MEMORY[0x277CCA470], v147, v148);
          MTLReportFailure();
        }

        if (v158)
        {
          v107 = objc_msgSend_computeFunction(v38, v99, v100, v101, v102);
          v112 = objc_msgSend_name(v107, v108, v109, v110, v111);
          v113 = v165[0];
          v118 = objc_msgSend_bitcodeData(v157, v114, v115, v116, v117);
          v119 = v112;
          v159[0] = v119;
          v120 = v113;
          v159[1] = v120;
          contexta = v118;
          v159[2] = contexta;
          v121 = 0x9DDFEA08EB382D69 * ((8 * (explicit & 0x1FFFFFFF) + 8) ^ HIDWORD(explicit));
          v122 = 0x9DDFEA08EB382D69 * (HIDWORD(explicit) ^ (v121 >> 47) ^ v121);
          v123 = 0x9DDFEA08EB382D69 * (v122 ^ (v122 >> 47));
          v124 = v158[1];
          if (!*&v124)
          {
            goto LABEL_97;
          }

          v125 = vcnt_s8(v124);
          v125.i16[0] = vaddlv_u8(v125);
          if (v125.u32[0] > 1uLL)
          {
            v126 = 0x9DDFEA08EB382D69 * (v122 ^ (v122 >> 47));
            if (v123 >= *&v124)
            {
              v126 = v123 % *&v124;
            }
          }

          else
          {
            v126 = (*&v124 - 1) & v123;
          }

          v127 = *(*v158 + 8 * v126);
          if (!v127 || (v128 = *v127) == 0)
          {
LABEL_97:
            operator new();
          }

          if (v125.u32[0] < 2uLL)
          {
            while (1)
            {
              v130 = v128[1];
              if (v130 == v123)
              {
                if (v128[2] == explicit)
                {
                  goto LABEL_98;
                }
              }

              else if ((v130 & (*&v124 - 1)) != v126)
              {
                goto LABEL_97;
              }

              v128 = *v128;
              if (!v128)
              {
                goto LABEL_97;
              }
            }
          }

          while (1)
          {
            v129 = v128[1];
            if (v129 == v123)
            {
              if (v128[2] == explicit)
              {
LABEL_98:
                v128[3] = v119;
                v128[4] = v120;
                v128[5] = contexta;

                break;
              }
            }

            else
            {
              if (v129 >= *&v124)
              {
                v129 %= *&v124;
              }

              if (v129 != v126)
              {
                goto LABEL_97;
              }
            }

            v128 = *v128;
            if (!v128)
            {
              goto LABEL_97;
            }
          }
        }

        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 0x40000000;
        *&buf[16] = sub_22E2EE648;
        v170 = &unk_2787C0840;
        v171 = "com.apple.MetalPerformanceShaders";
        v172 = "MetalPerformanceShaders";
        if (qword_280AFED90 == -1)
        {
          v131 = qword_280AFED98;
          if (os_signpost_enabled(qword_280AFED98))
          {
LABEL_101:
            v132 = os_signpost_id_make_with_pointer(v131, explicit);
            if (v132 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v133 = v132;
              if (os_signpost_enabled(v131))
              {
                *buf = 134218242;
                *&buf[4] = explicit;
                *&buf[12] = 2112;
                *&buf[14] = v154;
                _os_signpost_emit_with_name_impl(&dword_22E2EA000, v131, OS_SIGNPOST_EVENT, v133, "MPSCompilation", "PipelineState: %p %@", buf, 0x16u);
              }
            }
          }
        }

        else
        {
          dispatch_once(&qword_280AFED90, buf);
          v131 = qword_280AFED98;
          if (os_signpost_enabled(qword_280AFED98))
          {
            goto LABEL_101;
          }
        }

        v134 = v165[0];
        atomic_store(v165[0], (a2 + 208));
        atomic_store(explicit, a2);
        *(a2 + 48) = 1;
        os_unfair_lock_unlock((a2 + 16));

        v135 = *(a2 + 40);
        if (v135)
        {
          v135(v156);
        }

        sub_22E2F0214(a2);

        goto LABEL_107;
      }
    }

    v98 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(v155, v93, v38, v96, v165, &v164);
    goto LABEL_74;
  }

  explicit = atomic_load_explicit(a2, memory_order_acquire);
  os_unfair_lock_unlock((a2 + 16));
  return explicit;
}

char *sub_22E2EE4F4()
{
  result = getenv("MPS_GRAPH_CAPTURE_OUTPUT_FOLDER");
  if (result)
  {
    operator new();
  }

  return result;
}

void *MPSCreateFunctionConstantValues(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_device(a1, a2, a3, a4, a5);
  v9 = *(MPSDevice::GetMPSDevice(v5) + 1476);
  v6 = objc_opt_new();
  objc_msgSend_setConstantValue_type_atIndex_(v6, v7, &v9, 33, 127);
  return v6;
}

uint64_t _MPSNewSpecializedFunction(void *a1, const char *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], a2, a3, a4, a5);
  objc_msgSend_setName_(v10, v11, a2, v12, v13);
  if (*a4)
  {
    objc_msgSend_setSpecializedName_(v10, v14, *a4, v15, v16);
  }

  objc_msgSend_setConstantValues_(v10, v14, a3, v15, v16);
  v21 = objc_msgSend_device(a1, v17, v18, v19, v20);
  MPSDevice = MPSDevice::GetMPSDevice(v21);
  MPSDevice::AddBinaryArchives(MPSDevice, v10, a1);

  return objc_msgSend_newFunctionWithDescriptor_error_(a1, v23, v10, a5, v24);
}

os_log_t sub_22E2EE648(uint64_t a1)
{
  result = os_log_create(*(a1 + 32), *(a1 + 40));
  qword_280AFED98 = result;
  return result;
}

int8x16_t sub_22E2EE670(int8x16_t *a1)
{
  if (a1)
  {
    v2 = getenv("MPS_LOG_INFO");
    if (v2)
    {
      v4 = atol(v2);
      if (v4)
      {
        v5.i64[0] = vdupq_n_s64(0x10uLL).u64[0];
        v5.i64[1] = v4;
        result = vorrq_s8(*a1, v5);
        *a1 = result;
      }
    }
  }

  return result;
}

const char *sub_22E2EE6C8(uint64_t a1)
{
  result = getenv("MPS_DEVICE_SET");
  if (!result)
  {
    return result;
  }

  v4 = result;
  sub_22E2EF6A8(*(a1 + 32), *(a1 + 40), v3, "MPS_DEVICE_SET set to: %s\n", result);
  result = strncmp(v4, "Vega16", 6uLL);
  if (!result)
  {
    v6 = 28;
    goto LABEL_29;
  }

  result = strncmp(v4, "Vega20", 6uLL);
  if (!result)
  {
    v6 = 29;
    goto LABEL_29;
  }

  result = strncmp(v4, "Vega56", 6uLL);
  if (!result)
  {
    v6 = 30;
    goto LABEL_29;
  }

  result = strncmp(v4, "Vega64", 6uLL);
  if (!result)
  {
    v6 = 31;
    goto LABEL_29;
  }

  result = strncmp(v4, "VegaII", 6uLL);
  if (!result)
  {
    v6 = 32;
    goto LABEL_29;
  }

  result = strncmp(v4, "Vega", 4uLL);
  if (!result)
  {
    v6 = 27;
    goto LABEL_29;
  }

  result = strncmp(v4, "Navi10", 6uLL);
  if (!result)
  {
    v6 = 34;
    goto LABEL_29;
  }

  result = strncmp(v4, "Navi12", 6uLL);
  if (!result)
  {
    v6 = 35;
    goto LABEL_29;
  }

  result = strncmp(v4, "Navi14", 6uLL);
  if (!result)
  {
    v6 = 36;
    goto LABEL_29;
  }

  result = strncmp(v4, "Navi21", 6uLL);
  if (!result)
  {
    v6 = 37;
    goto LABEL_29;
  }

  if (*v4 != 65)
  {
    return result;
  }

  v5 = *(v4 + 1);
  if (v5 > 0x38)
  {
    if (v5 == 57)
    {
      if (!v4[2])
      {
        v6 = 3;
        goto LABEL_29;
      }

      if (v4[2] == 88)
      {
        v6 = 4;
        goto LABEL_29;
      }

      return result;
    }

    if (v5 != 77 || v4[2] != 68)
    {
      return result;
    }

    v6 = 26;
LABEL_29:
    dword_280AFECCC = v6;
    return result;
  }

  if (v5 != 49)
  {
    if (v5 != 56)
    {
      return result;
    }

    if (v4[2])
    {
      if (v4[2] != 88)
      {
        return result;
      }

      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    goto LABEL_29;
  }

  v7 = *(v4 + 2);
  if (v7 <= 0x33)
  {
    if (*(v4 + 2) > 0x31u)
    {
      if (v7 != 50)
      {
        if (v7 == 51)
        {
          v6 = 10;
          goto LABEL_29;
        }

        return result;
      }

      v8 = v4[3] == 88;
      v6 = 8;
    }

    else
    {
      if (v7 != 48)
      {
        if (v7 == 49)
        {
          v6 = 7;
          goto LABEL_29;
        }

        return result;
      }

      v8 = v4[3] == 88;
      v6 = 5;
    }

LABEL_66:
    if (v8)
    {
      ++v6;
    }

    goto LABEL_29;
  }

  if (*(v4 + 2) <= 0x35u)
  {
    if (v7 == 52)
    {
      v9 = *(v4 + 3);
      if (v9 == 88)
      {
        v10 = 12;
      }

      else
      {
        v10 = 11;
      }

      if (v9 == 83)
      {
        v6 = 13;
      }

      else
      {
        v6 = v10;
      }

      goto LABEL_29;
    }

    if (v7 != 53)
    {
      return result;
    }

    v8 = v4[3] == 88;
    v6 = 16;
    goto LABEL_66;
  }

  switch(v7)
  {
    case '6':
      v8 = v4[3] == 88;
      v6 = 18;
      goto LABEL_66;
    case '7':
      v8 = v4[3] == 88;
      v6 = 20;
      goto LABEL_66;
    case '8':
      v6 = 22;
      goto LABEL_29;
  }

  return result;
}

void MPSDevice_Common::MPSDevice_Common(void *a1, void *a2)
{
  *a1 = &unk_284217530;
  a1[2] = a2;
  a1[184] = 0;
  operator new();
}

uint64_t sub_22E2EF060(uint64_t a1, uint64_t a2)
{
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  atomic_store(0, (a1 + 616));
  if (pthread_mutex_init((a1 + 8), 0))
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  *(a1 + 72) = v4;
  atomic_store(0, (a1 + 608));
  atomic_store(0xFFFFFFFFFFFFFFFFLL, a1);
  atomic_store(0xFFFFFFFFFFFFFFFFLL, a1);
  global_queue = dispatch_get_global_queue(17, 0);
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, global_queue);
  *(a1 + 592) = v6;
  if (v6)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_22E2F17AC;
    handler[3] = &unk_2787BED68;
    handler[4] = a1;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(*(a1 + 592));
  }

  v7 = dispatch_get_global_queue(33, 0);
  v8 = dispatch_source_create(MEMORY[0x277D85D18], 0, 4uLL, v7);
  *(a1 + 600) = v8;
  if (v8)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_22E3426A4;
    v21[3] = &unk_2787BED68;
    v21[4] = a1;
    dispatch_source_set_event_handler(v8, v21);
    dispatch_resume(*(a1 + 600));
  }

  *(a1 + 624) = 0;
  v9 = *(a1 + 72);
  if (v9)
  {
    v10 = sub_22E2EF260(v9, *MEMORY[0x277D85FA0], 0);
    if (v10)
    {
      v15 = v10;
      v16 = objc_msgSend_size(v10, v11, v12, v13, v14);
      v19 = __clz(v16) ^ 0x3F;
      if (!v16)
      {
        v19 = 0;
      }

      *(a1 + 624) = v19;
      sub_22E2EF3F8(a1, v15, 0x3B9ACA00uLL, v17, v18);
    }
  }

  return a1;
}

void *sub_22E2EF260(void **a1, uint64_t a2, uint64_t a3)
{
  result = objc_opt_new();
  if (result)
  {
    v10 = (a2 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
    v11 = result;
    objc_msgSend_setSize_(result, v7, v10, v8, v9);
    v12 = (*(*a1 + 4))(a1);
    objc_msgSend_setStorageMode_(v11, v13, v12, v14, v15);
    v16 = (*(*a1 + 5))(a1);
    objc_msgSend_setCpuCacheMode_(v11, v17, v16, v18, v19);
    v20 = (*(*a1 + 6))(a1);
    v21 = (16 * (*(*a1 + 4))(a1)) | (v20 << 8);
    v22 = (*(*a1 + 5))(a1);
    objc_msgSend_setResourceOptions_(v11, v23, v21 | v22, v24, v25);
    objc_msgSend_setProtectionOptions_(v11, v26, a3, v27, v28);
    v32 = objc_msgSend_newHeapWithDescriptor_(a1[2], v29, v11, v30, v31);

    return v32;
  }

  return result;
}

void sub_22E2EF3F8(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a3)
    {
      do
      {
        explicit = atomic_load_explicit((a1 + 616), memory_order_acquire);
        if (!explicit)
        {
          operator new();
        }

        v8 = explicit;
        atomic_compare_exchange_strong_explicit((a1 + 616), &v8, atomic_load_explicit(explicit + 2, memory_order_acquire), memory_order_release, memory_order_relaxed);
      }

      while (v8 != explicit);
      objc_msgSend_setPurgeableState_(a2, a2, 3, a4, a5);
      v13 = explicit[1];
      if (v13)
      {
      }

      explicit[1] = a2;
      explicit[3] = objc_msgSend_size(a2, v9, v10, v11, v12);
      if (a3 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = a3;
      }

      *explicit = dispatch_time(0, v14);
      v15 = explicit[3];
      v16 = __clz(v15) ^ 0x3F;
      if (!v15)
      {
        v16 = 0;
      }

      if (v16 <= *(a1 + 624))
      {
        v17 = *(a1 + 624);
      }

      else
      {
        v17 = v16;
      }

      v18 = *(a1 + 80 + 8 * v17);
      if (!v18)
      {
LABEL_18:
        operator new();
      }

      while (v18[2] != v15)
      {
        v18 = atomic_load_explicit(v18, memory_order_acquire);
        if (!v18)
        {
          goto LABEL_18;
        }
      }

      v19 = v18 + 1;
      do
      {
        v20 = atomic_load_explicit(v19, memory_order_acquire);
        atomic_store(v20, explicit + 2);
        v21 = v20;
        atomic_compare_exchange_strong_explicit(v19, &v21, explicit, memory_order_release, memory_order_relaxed);
      }

      while (v21 != v20);
      v22 = dispatch_time(0, a3);
      v23 = v22;
      while (1)
      {
        v24 = atomic_load_explicit(a1, memory_order_acquire);
        if (v24 <= v22)
        {
          break;
        }

        v25 = v24;
        atomic_compare_exchange_strong_explicit(a1, &v25, v22, memory_order_release, memory_order_relaxed);
        if (v25 == v24)
        {
          v26 = dispatch_time(0, 0);
          v27 = v23 - v26;
          if (v23 < v26)
          {
            v27 = 0;
          }

          v28 = *(a1 + 592);

          dispatch_source_set_timer(v28, v23, 0xFFFFFFFFFFFFFFFFLL, v27 >> 1);
          return;
        }
      }
    }

    else
    {

      MEMORY[0x2821F96F8]();
    }
  }
}

uint64_t sub_22E2EF644()
{
  result = getenv("MPS_DISABLE_CBJ");
  if (result)
  {
    __endptr = 0;
    v1 = result;
    result = strtol(result, &__endptr, 10);
    if (__endptr != v1 && result >= 1)
    {
      byte_280AFECC0 = 1;
    }
  }

  return result;
}

uint64_t sub_22E2EF6A8(uint64_t result, unint64_t a2, uint64_t a3, char *a4, ...)
{
  va_start(va, a4);
  if ((result & 0x10) != 0 && a2 >= 2)
  {
    return vfprintf(*MEMORY[0x277D85DF8], a4, va);
  }

  return result;
}

uint64_t sub_22E2EF6F4(uint64_t result, unint64_t a2, uint64_t a3, char *a4, ...)
{
  va_start(va, a4);
  if ((result & 0x10) != 0 && a2 >= 5)
  {
    return vfprintf(*MEMORY[0x277D85DF8], a4, va);
  }

  return result;
}

uint64_t sub_22E2EF74C(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 1) != 0 || (*(a1 + 1477) & 4) == 0 && (objc_msgSend_usage(a2, a2, a3, a4, a5) & 2) != 0 || (v8 = objc_msgSend_pixelFormat(a2, a2, a3, a4, a5), (MPSDevice::GetPixelInfo(a1, v8, MPSImageFeatureChannelFormatNone) & 0x1000000000000) != 0) || (objc_msgSend_textureType(a2, v9, v10, v11, v12) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v17 = *(*a1 + 64);

    return v17(a1, a2);
  }

  else
  {
    v19 = objc_msgSend_pixelFormat(a2, v13, v14, v15, v16);
    PixelInfo = MPSDevice::GetPixelInfo(a1, v19, MPSImageFeatureChannelFormatNone);
    v25 = objc_msgSend_width(a2, v21, v22, v23, v24);
    v30 = objc_msgSend_height(a2, v26, v27, v28, v29);
    objc_msgSend_depth(a2, v31, v32, v33, v34);
    v35 = (PixelInfo >> 16) & 0xF;
    if (v35 == 1)
    {
      v36 = v25;
    }

    else
    {
      v36 = (v25 + v35 - 1) / v35;
    }

    v37 = (PixelInfo >> 20) & 0xF;
    v38 = v37 == 1;
    v39 = (v37 + v30 - 1) / v37;
    if (v38)
    {
      v40 = v30;
    }

    else
    {
      v40 = v39;
    }

    v41 = ((1 << ((PixelInfo >> 55) & 0xF)) + v36 * (PixelInfo >> 10) - 1) & -(1 << ((PixelInfo >> 55) & 0xF));
    if (a3)
    {
      *a3 = v41;
    }

    v42 = (*(*a1 + 32))(a1);
    v44 = (*(*a1 + 40))(a1) | (16 * v42);
    v46 = (*MEMORY[0x277D85FA0] + v40 * v41 - 1) & -*MEMORY[0x277D85FA0];
    v47 = *(a1 + 16);

    return objc_msgSend_heapBufferSizeAndAlignWithLength_options_(v47, v43, v46, v44, v45);
  }
}

uint64_t sub_22E2EF93C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t), uint64_t a4)
{
  v8 = 0;
  v9 = *(*a1 + 8);
  v10 = *(*a1 + 568);
  while (1)
  {
    v11 = sub_22E2EFC10(*a1, a2, v10 != a1);
    if (!v11)
    {
      break;
    }

    v16 = v11;
    *v11 = v8;
    v17 = a3(v9, v11[1], a4);
    v8 = v16;
    if (v17)
    {
      v49 = v17;
      v18 = *v16;
      if (!*v16)
      {
        goto LABEL_16;
      }

      goto LABEL_8;
    }
  }

  if (!v8)
  {
    goto LABEL_28;
  }

  v16 = v8;
  v49 = 0;
  v18 = *v8;
  if (v18)
  {
LABEL_8:
    v19 = *a1 + 32;
    do
    {
LABEL_10:
      v21 = v18;
      v18 = *v18;
      v22 = v21[1];
      *v21 = 0;
      v23 = objc_msgSend_size(v22, v12, v13, v14, v15);
      v24 = 64 - __clz(v23);
      if (!v23)
      {
        v24 = 0;
      }

      v25 = (v19 + 8 * v24);
      v26 = v25;
      do
      {
        v26 = *v26;
        if (!v26)
        {
          v20 = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
          v20[2] = v21[2];
          *v20 = *v25;
          v20[1] = v21;
          *v25 = v20;
          if (!v18)
          {
            goto LABEL_16;
          }

          goto LABEL_10;
        }
      }

      while (v26[2] != v21[2]);
      *v21 = v26[1];
      v26[1] = v21;
    }

    while (v18);
  }

LABEL_16:
  *v16 = 0;
  if ((*(*v9 + 112))(v9))
  {
    v31 = *a1 + 32;
    do
    {
LABEL_19:
      v34 = *v16;
      v33 = v16[1];
      *v16 = 0;
      v35 = objc_msgSend_size(v33, v27, v28, v29, v30);
      v36 = 64 - __clz(v35);
      if (!v35)
      {
        v36 = 0;
      }

      v37 = (v31 + 8 * v36);
      v38 = v37;
      do
      {
        v38 = *v38;
        if (!v38)
        {
          v32 = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
          v32[2] = v16[2];
          *v32 = *v37;
          v32[1] = v16;
          *v37 = v32;
          v16 = v34;
          if (!v34)
          {
            goto LABEL_25;
          }

          goto LABEL_19;
        }
      }

      while (v38[2] != v16[2]);
      *v16 = v38[1];
      v38[1] = v16;
      v16 = v34;
    }

    while (v34);
LABEL_25:
    result = v49;
    if (v49)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v40 = a1[2];
    *v16 = *(v40 + 16);
    *(v40 + 16) = v16;
    result = v49;
    if (v49)
    {
      goto LABEL_29;
    }
  }

LABEL_28:
  result = a3(v9, 0, a4);
  if (!result)
  {
    return result;
  }

LABEL_29:
  v41 = result;
  v45 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
  if (v45)
  {
    result = v41;
    v45[1] = v41;
  }

  else
  {
    v46 = MTLReportFailureTypeEnabled();
    result = v41;
    if (v46)
    {
      MTLReportFailure();
      result = v41;
    }
  }

  v47 = a1[1];
  v48 = a1[2];
  *v45 = *(v48 + 8);
  *(v48 + 8) = v45;
  if (v47)
  {
    objc_msgSend_setLabel_(v41, v42, v47, v43, v44);
    return v41;
  }

  return result;
}

void *sub_22E2EFC10(uint64_t a1, uint64_t *a2, char a3)
{
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v7 = (*(**(a1 + 8) + 104))(*(a1 + 8));
  v93 = v7 - 1;
  v12 = v7 - 1 + v3;
  v13 = 64 - __clz(v12 & -v7);
  v92 = -v7;
  v14 = v12 & -v7;
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_msgSend_protectionOptions(*(a1 + 16), v8, v9, v10, v11);
  v17 = *(a1 + 8);
  v18 = *v17;
  if (a3)
  {
    v19 = -1;
  }

  else
  {
    v21 = (*(v18 + 112))(*(a1 + 8));
    v19 = 4 * v14;
    if (v21)
    {
      v19 = -1;
    }
  }

  v100 = v14;
  if (v19 < v14)
  {
    v19 = -1;
  }

  v22 = 64 - __clz(v19);
  if (v19)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a1 + 576);
  if (v15 <= v24)
  {
    v25 = *(a1 + 576);
  }

  else
  {
    v25 = v15;
  }

  if (v23 <= v24)
  {
    v23 = *(a1 + 576);
  }

  v97 = v23;
  v94 = a1;
  v95 = v25;
  v98 = a1 + 32;
  if ((*(v18 + 112))(v17))
  {
    v96 = 0;
    v30 = 0;
    v20 = 0;
    v31 = 0;
    v32 = v14;
    while (1)
    {
      v33 = *(v98 + 8 * v25);
      if (v33)
      {
        v34 = 0;
        while (1)
        {
          v35 = v34;
          v34 = v33;
          if (v33[2] >= v32)
          {
            v36 = v33[1];
            if (v36)
            {
              break;
            }
          }

LABEL_24:
          v33 = *v34;
          v32 = v100;
          if (!*v34)
          {
            goto LABEL_34;
          }
        }

        v37 = 0;
        while (1)
        {
          v38 = v37;
          v37 = v36;
          v39 = v36[1];
          if (v39)
          {
            if (objc_msgSend_protectionOptions(v39, v26, v27, v28, v29) == v16 && objc_msgSend_maxAvailableSizeWithAlignment_(v37[1], v26, a2[1], v28, v29) >= *a2)
            {
              break;
            }
          }

          v36 = *v37;
          if (!*v37)
          {
            goto LABEL_24;
          }
        }

        v40 = v34[2] == -1;
        v95 = v25;
        v96 = v34;
        v31 = v38;
        v20 = v37;
        v30 = v35;
        v32 = v100;
        if (v25 == v97)
        {
          goto LABEL_59;
        }
      }

      else
      {
LABEL_34:
        v40 = 1;
        if (v25 == v97)
        {
          goto LABEL_59;
        }
      }

      ++v25;
      if (!v40)
      {
        goto LABEL_59;
      }
    }
  }

  v96 = 0;
  v30 = 0;
  v20 = 0;
  v31 = 0;
  v41 = v14;
  do
  {
    v42 = *(v98 + 8 * v25);
    if (!v42)
    {
      v52 = 1;
      if (v25 == v97)
      {
        break;
      }

      goto LABEL_58;
    }

    v99 = v25;
    v43 = 0;
    v44 = -1;
    while (1)
    {
      v47 = v43;
      v43 = v42;
      v48 = v42[2];
      if (v48 >= v41 && v48 <= v44)
      {
        v50 = v43[1];
        if (v50)
        {
          break;
        }
      }

      v45 = v31;
      v46 = v20;
      v47 = v30;
LABEL_41:
      v42 = *v43;
      v30 = v47;
      v20 = v46;
      v31 = v45;
      if (!*v43)
      {
        goto LABEL_57;
      }
    }

    v46 = 0;
    while (1)
    {
      v45 = v46;
      v46 = v50;
      v51 = v50[1];
      if (v51)
      {
        if (objc_msgSend_protectionOptions(v51, v26, v27, v28, v29) == v16 && objc_msgSend_maxAvailableSizeWithAlignment_(v46[1], v26, a2[1], v28, v29) >= *a2)
        {
          break;
        }
      }

      v50 = *v46;
      if (!*v46)
      {
        v45 = v31;
        v46 = v20;
        v47 = v30;
        v41 = v100;
        goto LABEL_41;
      }
    }

    v44 = v43[2];
    v41 = v100;
    v95 = v99;
    v96 = v43;
    if (v44 != v100)
    {
      goto LABEL_41;
    }

    v44 = v100;
    v95 = v99;
    v96 = v43;
LABEL_57:
    v52 = v44 == -1;
    v31 = v45;
    v20 = v46;
    v30 = v47;
    v25 = v99;
    if (v99 == v97)
    {
      break;
    }

LABEL_58:
    ++v25;
  }

  while (v52);
LABEL_59:
  if (v96)
  {
    v53 = *v20;
    if (v31)
    {
      *v31 = v53;
      v54 = v96[1];
      v55 = v95;
      *v20 = 0;
      if (!v54)
      {
LABEL_74:
        v90 = (v98 + 8 * v55);
        if (v30)
        {
          v90 = v30;
        }

        *v90 = *v96;
        free(v96);
      }
    }

    else
    {
      v96[1] = v53;
      v55 = v95;
      *v20 = 0;
      if (!v53)
      {
        goto LABEL_74;
      }
    }
  }

  else
  {
    v56 = MEMORY[0x277D85FA0];
    v57 = (v93 + ((*a2 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0]) * *(v94 + 584)) & v92;
    if (*(v94 + 624) && (v58 = *(v94 + 8), (v59 = objc_opt_new()) != 0) && (v61 = v59, objc_msgSend_setSize_(v59, v26, (v57 + *v56 - 1) & -*v56, v60, v29), v62 = (*(*v58 + 32))(v58), objc_msgSend_setStorageMode_(v61, v63, v62, v64, v65), v66 = (*(*v58 + 40))(v58), objc_msgSend_setCpuCacheMode_(v61, v67, v66, v68, v69), v70 = (*(*v58 + 48))(v58), v71 = (16 * (*(*v58 + 32))(v58)) | (v70 << 8), v72 = (*(*v58 + 40))(v58), objc_msgSend_setResourceOptions_(v61, v73, v71 | v72, v74, v75), objc_msgSend_setProtectionOptions_(v61, v76, v16, v77, v78), v82 = objc_msgSend_newHeapWithDescriptor_(*(v94 + 624), v79, v61, v80, v81), v61, v82))
    {
      v83 = *(v94 + 624);
    }

    else
    {
      v82 = objc_msgSend_newHeapBlock_protections_(v94, v26, v57, v16, v29);
      v83 = 0;
      v20 = 0;
      if (!v82)
      {
        return v20;
      }
    }

    v20 = malloc_type_malloc(0x20uLL, 0x10A0040F80CF474uLL);
    v88 = objc_msgSend_size(v82, v84, v85, v86, v87);
    *v20 = 0;
    v20[1] = v82;
    v20[2] = v88;
    v20[3] = v83;
    *(v94 + 600) += v88;
    v89 = 64 - __clz(v88);
    if (!v88)
    {
      v89 = 0;
    }

    if (*(v94 + 576) < v89)
    {
      v89 = *(v94 + 576);
    }

    *(v94 + 576) = v89;
  }

  return v20;
}

void sub_22E2F0214(uint64_t a1)
{
  if (a1 && atomic_fetch_add((a1 + 8), 0xFFFFFFFFFFFFFFFFLL) <= 1)
  {
    explicit = atomic_load_explicit(a1, memory_order_acquire);
    if (explicit)
    {
    }

    v3 = atomic_load_explicit((a1 + 208), memory_order_acquire);
    if (v3)
    {
    }

    if (*(a1 + 200))
    {
      sub_22E2F0214();
    }

    free(a1);
  }
}

void MPSDevice::AddBinaryArchives(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 1432));
  v6 = *(a1 + 1440);
  v7 = *(a1 + 1424);
  os_unfair_lock_unlock((a1 + 1432));
  if (v7)
  {
    if ((v6 & 2) != 0)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v24, v28, 16);
      if (v19)
      {
        v21 = v19;
        v22 = *v25;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v25 != v22)
            {
              objc_enumerationMutation(v7);
            }

            objc_msgSend_addFunctionWithDescriptor_library_error_(*(*(&v24 + 1) + 8 * i), v20, a2, a3, 0);
          }

          v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v20, &v24, v28, 16);
        }

        while (v21);
      }
    }

    else if (v6)
    {
      objc_msgSend_setBinaryArchives_(a2, v8, v7, v9, v10);
      if ((v6 & 4) != 0)
      {
        v16 = objc_msgSend_pipelineOptions(a2, v11, v12, v13, v14) | 4;

        objc_msgSend_setPipelineOptions_(a2, v15, v16, v17, v18);
      }
    }
  }
}

uint64_t *MPSAutoCache::MPSAutoCache(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_userDictionary(a2, a2, a3, a4, a5);
  v12 = objc_msgSend_objectForKey_(v8, v9, @"MPSCommandBufferImageCache", v10, v11);
  if (!v12)
  {
    os_unfair_lock_lock(&unk_280AFEB78);
    v16 = objc_msgSend_objectForKey_(v8, v13, @"MPSCommandBufferImageCache", v14, v15);
    if (!v16)
    {
      v17 = [MPSCommandBufferImageCache alloc];
      v16 = objc_msgSend_initWithCommandBuffer_(v17, v18, a2, v19, v20);
      if (v16)
      {
        v21 = v16;

        v16 = v21;
      }
    }

    v22 = v16;
    os_unfair_lock_unlock(&unk_280AFEB78);
    v12 = v22;
  }

  *a1 = v12;
  v23 = malloc_type_malloc(0x18uLL, 0x20040960023A9uLL);
  if (v23)
  {
    v23[1] = 0;
    v23[2] = 0;
    v28 = *a1;
    *v23 = *(*a1 + 552);
    *(v28 + 552) = v23;
    a1[1] = 0;
    a1[2] = v23;
    if (*(v28 + 24))
    {
      a1[1] = objc_msgSend_debugDescription(a3, v24, v25, v26, v27);
    }

    return a1;
  }

  if (!MTLReportFailureTypeEnabled())
  {
    return a1;
  }

  MTLReportFailure();
  return a1;
}

unint64_t MPSLibrary::GetComputeState(void *a1, unsigned int a2, int64x2_t *a3, int a4, int a5, void *a6, uint64_t a7)
{
  v11 = a2;
  if (a1[3] <= a2)
  {
    v15 = a3;
    v16 = a7;
    v17 = MTLReportFailureTypeEnabled();
    a7 = v16;
    a3 = v15;
    if (v17)
    {
      MTLReportFailure();
      a7 = v16;
      a3 = v15;
    }
  }

  if (!**(a1[35] + 16 * v11))
  {
    v18 = a3;
    v19 = a7;
    v20 = MTLReportFailureTypeEnabled();
    a7 = v19;
    a3 = v18;
    if (v20)
    {
      MTLReportFailure();
      a7 = v19;
      a3 = v18;
    }
  }

  MPSLibrary::GetCacheKeyAtomic(a1, a1[35] + 16 * v11, a3, 0, (a1[2] + 8 * v11), a4, a5, a6, a7);
  v13 = v12;
  result = atomic_load_explicit(v12, memory_order_acquire);
  if (!result)
  {

    return MPSLibrary::MPSKey_Compile(a1, v13);
  }

  return result;
}

uint64_t MPSAutoCache::GetCompressedTempTexture(uint64_t *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5, __int128 *a6)
{
  v12 = *(*a1 + 8);
  v13 = *v12;
  v14 = (*(*v12 + 72))(v12);
  v15 = (*(v13 + 80))(v12);
  v20 = v15;
  if (!v14 || (a5 & 1) == 0)
  {
    objc_msgSend_setAllowGPUOptimizedContents_(a4, v16, v15 ^ 1u, v18, v19);
    v28 = a1;
    v29 = a2;
    v30 = a3;
    v31 = a4;
    v32 = a5;
    goto LABEL_6;
  }

  if (a4)
  {
    v21 = objc_msgSend_usage(a4, v16, v17, v18, v19);
    objc_msgSend_setUsage_(a4, v22, v21 | v14, v23, v24);
    objc_msgSend_setAllowGPUOptimizedContents_(a4, v25, v20 ^ 1u, v26, v27);
    v28 = a1;
    v29 = a2;
    v30 = a3;
    v31 = a4;
    v32 = 1;
LABEL_6:

    return MPSAutoCache::GetTempTexture(v28, v29, v30, v31, v32, a6, 1);
  }

  v34 = objc_opt_new();
  objc_msgSend_setPixelFormat_(v34, v35, *a2 & 0x3FFLL, v36, v37);
  objc_msgSend_setWidth_(v34, v38, *a3, v39, v40);
  objc_msgSend_setHeight_(v34, v41, a3[1], v42, v43);
  objc_msgSend_setArrayLength_(v34, v44, a3[2], v45, v46);
  if (a3[2] == 1)
  {
    objc_msgSend_setTextureType_(v34, v47, 2, v48, v49);
  }

  else
  {
    objc_msgSend_setTextureType_(v34, v47, 3, v48, v49);
  }

  v50 = (*(*v12 + 32))(v12);
  objc_msgSend_setStorageMode_(v34, v51, v50, v52, v53);
  v54 = (*(*v12 + 40))(v12);
  objc_msgSend_setCpuCacheMode_(v34, v55, v54, v56, v57);
  objc_msgSend_setUsage_(v34, v58, v14 | 3, v59, v60);
  objc_msgSend_setAllowGPUOptimizedContents_(v34, v61, v20 ^ 1u, v62, v63);
  if (v34)
  {
    TempTexture = MPSAutoCache::GetTempTexture(a1, a2, a3, v34, 1, a6, 1);

    return TempTexture;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return 0;
  }
}

uint64_t sub_22E2F09B8()
{
  if (qword_280AFED48 == -1)
  {
    if (byte_280AFECC8)
    {
      return 0x4000;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&qword_280AFED48, &unk_28421C218);
    if (byte_280AFECC8)
    {
      return 0x4000;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22E2F0A20()
{
  if (qword_280AFED50 != -1)
  {
    dispatch_once(&qword_280AFED50, &unk_28421C238);
  }

  return byte_280AFECC9;
}

uint64_t MPSAutoCache::GetTempTexture(uint64_t *a1, uint64_t a2, uint64_t *a3, id a4, uint64_t a5, __int128 *a6, char a7)
{
  if ((*(a2 + 5) & 0x20) == 0 && MTLReportFailureTypeEnabled())
  {
    v64 = *a2 & 0x3FFLL;
    MTLReportFailure();
  }

  v18 = objc_autoreleasePoolPush();
  v19 = *(*a1 + 8);
  if (a4)
  {
    objc_msgSend_storageMode(a4, v14, v15, v16, v17);
    if (objc_msgSend_storageMode(a4, v20, v21, v22, v23) != 2 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_usage(a4, v24, v25, v26, v27, v64);
    if ((~objc_msgSend_usage(a4, v28, v29, v30, v31) & 3) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

LABEL_13:
    v67[0] = 0;
    v66[0] = a4;
    v66[1] = 0;
    v67[1] = a5;
    if (a6 && (*a6 + 1) >= 2 && *(a6 + 1))
    {
      v65 = *a6;
      v67[0] = *(a6 + 2);
    }

    else
    {
      *&v65 = sub_22E2EF74C(v19, a4, v67, a5, v32);
      *(&v65 + 1) = v61;
    }

    v62 = sub_22E2EF93C(a1, &v65, sub_22E2F0FDC, v66);
    if (!v62 && MTLReportFailureTypeEnabled())
    {
      MTLPixelFormatGetName();
      MTLReportFailure();
    }

    objc_autoreleasePoolPop(v18);
    return v62;
  }

  a4 = objc_opt_new();
  objc_msgSend_setPixelFormat_(a4, v33, *a2 & 0x3FFLL, v34, v35);
  objc_msgSend_setWidth_(a4, v36, *a3, v37, v38);
  objc_msgSend_setHeight_(a4, v39, a3[1], v40, v41);
  objc_msgSend_setArrayLength_(a4, v42, a3[2], v43, v44);
  if (a3[2] == 1)
  {
    objc_msgSend_setTextureType_(a4, v45, 2, v46, v47, v64);
  }

  else
  {
    objc_msgSend_setTextureType_(a4, v45, 3, v46, v47, v64);
  }

  v48 = (*(*v19 + 32))(v19);
  objc_msgSend_setStorageMode_(a4, v49, v48, v50, v51);
  v52 = (*(*v19 + 40))(v19);
  objc_msgSend_setCpuCacheMode_(a4, v53, v52, v54, v55);
  objc_msgSend_setUsage_(a4, v56, 3, v57, v58);
  if ((a7 & 1) == 0)
  {
    objc_msgSend_setCompressionMode_(a4, v59, 2, v60, v32);
  }

  if (a4)
  {
    goto LABEL_13;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_autoreleasePoolPop(v18);
  return 0;
}

void *sub_22E2F0DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  v6 = __clz(v5) ^ 0x3F;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= *(a1 + 624))
  {
    v7 = *(a1 + 624);
  }

  else
  {
    v7 = v6;
  }

  if (v7 + 1 < 0x3F)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 63;
  }

  pthread_mutex_lock((a1 + 8));
  if (v7 > v8)
  {
    pthread_mutex_unlock((a1 + 8));
    goto LABEL_38;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    while (1)
    {
      explicit = *(a1 + 80 + 8 * v7);
      if (explicit)
      {
        break;
      }

LABEL_12:
      if (++v7 > v8)
      {
        goto LABEL_35;
      }
    }

    v16 = 0;
    v17 = -1;
    do
    {
      v18 = explicit[2];
      if (v18 >= v5 && v18 < v17)
      {
        if (atomic_load_explicit(explicit + 1, memory_order_acquire))
        {
          v16 = explicit;
          v17 = v18;
          if (v18 == v5)
          {
            v16 = explicit;
            goto LABEL_24;
          }
        }
      }

      explicit = atomic_load_explicit(explicit, memory_order_acquire);
    }

    while (explicit);
    if (!v16)
    {
      goto LABEL_12;
    }

LABEL_24:
    v20 = v16 + 1;
    do
    {
      v21 = atomic_load_explicit(v20, memory_order_acquire);
      v22 = v21 + 2;
      v23 = v21;
      atomic_compare_exchange_strong_explicit(v20, &v23, atomic_load_explicit(v21 + 2, memory_order_acquire), memory_order_release, memory_order_relaxed);
    }

    while (v23 != v21);
    atomic_store(0, v22);
    if (!v14)
    {
      v14 = v21;
    }

    atomic_store(v13, v22);
    v24 = v21[1];
    if (v24)
    {
      v24 = objc_msgSend_protectionOptions(v24, v9, v10, v11, v12);
    }

    if (v24 == a3)
    {
      v25 = v21[1];
      if (v25)
      {
        break;
      }
    }

LABEL_34:
    v13 = v21;
    if (v7 > v8)
    {
LABEL_35:
      v25 = 0;
      pthread_mutex_unlock((a1 + 8));
      if (!v14)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  v21[1] = 0;
  v21[3] = 0;
  if (objc_msgSend_setPurgeableState_(v25, v9, 2, v11, v12) == 4)
  {

    goto LABEL_34;
  }

  v13 = v21;
  pthread_mutex_unlock((a1 + 8));
  if (!v14)
  {
    goto LABEL_37;
  }

  do
  {
LABEL_36:
    v26 = atomic_load_explicit((a1 + 616), memory_order_acquire);
    atomic_store(v26, v14 + 2);
    v27 = v26;
    atomic_compare_exchange_strong_explicit((a1 + 616), &v27, v13, memory_order_release, memory_order_relaxed);
  }

  while (v27 != v26);
LABEL_37:
  if (v25)
  {
    return v25;
  }

LABEL_38:
  v28 = *(a1 + 72);
  if (!v28)
  {
    return 0;
  }

  v25 = sub_22E2EF260(v28, v5, a3);
  if (v25)
  {
    return v25;
  }

  sub_22E2F1938(a1, 1);
  v29 = *(a1 + 72);

  return sub_22E2EF260(v29, v5, a3);
}

uint64_t sub_22E2F0FDC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = *a3;
    if ((*(a3 + 24) & 1) == 0)
    {
      v8 = *(a3 + 8);
      v9 = *(a3 + 16);
      if ((*(a1 + 1477) & 4) != 0 || (objc_msgSend_usage(*a3, a2, a3, a4, a5) & 2) == 0)
      {
        v10 = objc_msgSend_pixelFormat(v7, a2, a3, a4, a5);
        if ((MPSDevice::GetPixelInfo(a1, v10, MPSImageFeatureChannelFormatNone) & 0x1000000000000) == 0 && (objc_msgSend_textureType(v7, a2, v11, a4, a5) & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          v16 = objc_msgSend_height(v7, a2, v12, a4, a5) * v9;
          v17 = (*(*a1 + 32))(a1);
          v18 = (*(*a1 + 40))(a1);
          v21 = objc_msgSend_newBufferWithLength_options_(a2, v19, v16, v18 | (16 * v17), v20);
          v23 = objc_msgSend_newLinearTextureWithDescriptor_offset_bytesPerRow_bytesPerImage_(v21, v22, v7, v8, v9, v16);

          return v23;
        }
      }
    }

    v13 = a2;
    v14 = v7;
  }

  else
  {
    v13 = *(a1 + 16);
    v14 = *a3;
  }

  return objc_msgSend_newTextureWithDescriptor_(v13, a2, v14, a4, a5);
}

void MPSAutoCache::ReleaseTempResource(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1[2];
    if (v3)
    {
      if (((*(**(*a1 + 8) + 112))(*(*a1 + 8)) & 1) != 0 || (v9 = objc_msgSend_heap(a2, v5, v6, v7, v8)) == 0)
      {
        v12 = 0;
      }

      else
      {
        v10 = 0;
        v11 = (v3 + 16);
        v12 = (v3 + 16);
        while (1)
        {
          v12 = *v12;
          if (!v12)
          {
            break;
          }

          v13 = v10;
          v10 = v12;
          if (v12[1] == v9)
          {
            if (v13)
            {
              v11 = v13;
            }

            *v11 = *v12;
            *v12 = 0;
            break;
          }
        }
      }

      v14 = 0;
      v15 = (v3 + 8);
      v16 = (v3 + 8);
      while (1)
      {
        v16 = *v16;
        if (!v16)
        {
          break;
        }

        v17 = v14;
        v14 = v16;
        if (v16[1] == a2)
        {
          if (v17)
          {
            v15 = v17;
          }

          *v15 = *v16;
          *v16 = 0;
          v18 = *a1;
          if ((*(**(*a1 + 8) + 112))(*(*a1 + 8)))
          {
            v23 = v16;
            do
            {
              v24 = v23;
              v25 = v23[1];
              if (v25)
              {
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  objc_msgSend_parentTexture(v25, v26, v27, v28, v29);
                  if (objc_msgSend_buffer(v25, v30, v31, v32, v33))
                  {
                    v25 = objc_msgSend_buffer(v25, v26, v27, v28, v29);
                  }
                }

                if (objc_msgSend_heap(v25, v26, v27, v28, v29))
                {
                  objc_msgSend_makeAliasable(v25, v19, v20, v21, v22);
                }
              }

              v23 = *v24;
            }

            while (*v24);
            if (*(v18 + 592))
            {
LABEL_35:
              *v24 = *(v18 + 560);
              *(v18 + 560) = v16;
              goto LABEL_37;
            }
          }

          else if (*(v18 + 592) == 1)
          {
            v34 = v16;
            do
            {
              v24 = v34;
              v34 = *v34;
            }

            while (v34);
            goto LABEL_35;
          }

          do
          {
            v36 = *v16;
            v35 = v16[1];
            *v16 = 0;

            free(v16);
            v16 = v36;
          }

          while (v36);
LABEL_37:
          if (v12)
          {
            v37 = v18 + 32;
            do
            {
LABEL_40:
              v39 = v12;
              v12 = *v12;
              v40 = v39[1];
              *v39 = 0;
              v41 = objc_msgSend_size(v40, v19, v20, v21, v22);
              v42 = 64 - __clz(v41);
              if (!v41)
              {
                v42 = 0;
              }

              v43 = (v37 + 8 * v42);
              v44 = v43;
              do
              {
                v44 = *v44;
                if (!v44)
                {
                  v38 = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
                  v38[2] = v39[2];
                  *v38 = *v43;
                  v38[1] = v39;
                  *v43 = v38;
                  if (!v12)
                  {
                    return;
                  }

                  goto LABEL_40;
                }
              }

              while (v44[2] != v39[2]);
              *v39 = v44[1];
              v44[1] = v39;
            }

            while (v12);
          }

          return;
        }
      }

      if (!MTLReportFailureTypeEnabled())
      {
        return;
      }

      goto LABEL_29;
    }

    if (MTLReportFailureTypeEnabled())
    {

LABEL_29:
      MTLReportFailure();
    }
  }
}

void sub_22E2F1450(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return;
  }

  v6 = *(a1 + 552);
  if (!v6)
  {
    if (MTLReportFailureTypeEnabled())
    {

      MTLReportFailure();
    }

    return;
  }

  v7 = v6[1];
  *(a1 + 552) = *v6;
  v8 = v6[2];
  if (v7)
  {
    if ((*(**(a1 + 8) + 112))(*(a1 + 8)))
    {
      v9 = v7;
      do
      {
        v10 = v9;
        v11 = v9[1];
        if (v11)
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            objc_msgSend_parentTexture(v11, v12, v13, v14, v15);
            if (objc_msgSend_buffer(v11, v16, v17, v18, v19))
            {
              v11 = objc_msgSend_buffer(v11, v12, v13, v14, v15);
            }
          }

          if (objc_msgSend_heap(v11, v12, v13, v14, v15))
          {
            objc_msgSend_makeAliasable(v11, a2, a3, a4, a5);
          }
        }

        v9 = *v10;
      }

      while (*v10);
      if (*(a1 + 592))
      {
        goto LABEL_23;
      }
    }

    else if (*(a1 + 592) == 1)
    {
      v20 = v7;
      do
      {
        v10 = v20;
        v20 = *v20;
      }

      while (v20);
LABEL_23:
      *v10 = *(a1 + 560);
      *(a1 + 560) = v7;
      goto LABEL_25;
    }

    do
    {
      v22 = *v7;
      v21 = v7[1];
      *v7 = 0;

      free(v7);
      v7 = v22;
    }

    while (v22);
  }

LABEL_25:
  while (v8)
  {
LABEL_28:
    v24 = v8;
    v8 = *v8;
    v25 = v24[1];
    *v24 = 0;
    v26 = objc_msgSend_size(v25, a2, a3, a4, a5);
    v27 = 64 - __clz(v26);
    if (!v26)
    {
      v27 = 0;
    }

    v28 = (a1 + 32 + 8 * v27);
    v29 = v28;
    do
    {
      v29 = *v29;
      if (!v29)
      {
        v23 = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
        v23[2] = v24[2];
        *v23 = *v28;
        v23[1] = v24;
        *v28 = v23;
        if (!v8)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }
    }

    while (v29[2] != v24[2]);
    *v24 = v29[1];
    v29[1] = v24;
  }

LABEL_34:

  free(v6);
}

void MPSAutoCache::~MPSAutoCache(MPSAutoCache *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (this->var0)
  {
    if (this->var2 != *(this->var0 + 69))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    sub_22E2F1450(this->var0, a2, a3, a4, a5);
  }
}

{
  if (this->var0)
  {
    if (this->var2 != *(this->var0 + 69))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    sub_22E2F1450(this->var0, a2, a3, a4, a5);
  }
}

void sub_22E2F17AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  atomic_store(0xFFFFFFFFFFFFFFFFLL, v1);
  v2 = sub_22E2F1938(v1, 0);
  if (v2 != -1)
  {
    while (1)
    {
      explicit = atomic_load_explicit(v1, memory_order_acquire);
      if (explicit <= v2)
      {
        break;
      }

      v4 = explicit;
      atomic_compare_exchange_strong_explicit(v1, &v4, v2, memory_order_release, memory_order_relaxed);
      if (v4 == explicit)
      {
        v5 = v2;
        v6 = dispatch_time(0, 0);
        v7 = v5 - v6;
        if (v5 < v6)
        {
          v7 = 0;
        }

        v8 = v1[74];

        dispatch_source_set_timer(v8, v5, 0xFFFFFFFFFFFFFFFFLL, v7 >> 1);
        return;
      }
    }
  }
}

uint64_t sub_22E2F1848(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_userDictionary(a2, a2, a3, a4, a5);
  v10 = *(a1 + 32);

  return objc_msgSend_removeObjectForKey_(v6, v7, v10, v8, v9);
}

uint64_t sub_22E2F1884(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_userDictionary(a2, a2, a3, a4, a5);
  v10 = *(a1 + 32);

  return objc_msgSend_removeObjectForKey_(v6, v7, v10, v8, v9);
}

uint64_t sub_22E2F18C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_userDictionary(a2, a2, a3, a4, a5);
  v10 = *(a1 + 32);

  return objc_msgSend_removeObjectForKey_(v6, v7, v10, v8, v9);
}

uint64_t sub_22E2F18FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_userDictionary(a2, a2, a3, a4, a5);
  v10 = *(a1 + 32);

  return objc_msgSend_removeObjectForKey_(v6, v7, v10, v8, v9);
}

unint64_t sub_22E2F1938(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v3 = -1;
  }

  else
  {
    v3 = dispatch_time(0, 0);
  }

  pthread_mutex_lock((a1 + 8));
  v4 = 0;
  v5 = 0;
  v24 = 0;
  v21 = a1;
  v22 = a1 + 80;
  v6 = -1;
  do
  {
    v23 = v4;
    for (i = *(v22 + 8 * v4); i; i = atomic_load_explicit(i, memory_order_acquire))
    {
      v9 = atomic_exchange(i + 1, 0);
      if (v9)
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v8 = -1;
        v13 = v9;
        do
        {
          while (1)
          {
            explicit = atomic_load_explicit((v13 + 16), memory_order_acquire);
            if (*v13 > v3)
            {
              break;
            }

            if (v10)
            {
              atomic_store(explicit, (v10 + 16));
            }

            else
            {
              v9 = explicit;
            }

            atomic_store(v11, (v13 + 16));
            if (!v12)
            {
              v12 = v13;
            }

            *(v13 + 8) = 0;
            v11 = v13;
            v13 = explicit;
            if (!explicit)
            {
              goto LABEL_24;
            }
          }

          if (v8 >= *v13)
          {
            v8 = *v13;
          }

          v10 = v13;
          v13 = explicit;
        }

        while (explicit);
LABEL_24:
        if (v10)
        {
          do
          {
            v15 = atomic_load_explicit(i + 1, memory_order_acquire);
            atomic_store(v15, (v10 + 16));
            v16 = v15;
            atomic_compare_exchange_strong_explicit(i + 1, &v16, v9, memory_order_release, memory_order_relaxed);
          }

          while (v16 != v15);
        }

        if (v12)
        {
          atomic_store(v24, (v12 + 16));
          if (!v5)
          {
            v5 = v12;
          }

          v24 = v11;
        }
      }

      else
      {
        v8 = -1;
      }

      if (v6 >= v8)
      {
        v6 = v8;
      }
    }

    v4 = v23 + 1;
  }

  while (v23 != 63);
  pthread_mutex_unlock((v21 + 8));
  if (v5)
  {
    if (v24)
    {
      v17 = v24;
      do
      {

        *(v17 + 8) = 0;
        v17 = atomic_load_explicit((v17 + 16), memory_order_acquire);
      }

      while (v17);
    }

    do
    {
      v18 = atomic_load_explicit((v21 + 616), memory_order_acquire);
      atomic_store(v18, (v5 + 16));
      v19 = v18;
      atomic_compare_exchange_strong_explicit((v21 + 616), &v19, v24, memory_order_release, memory_order_relaxed);
    }

    while (v19 != v18);
  }

  return v6;
}

uint64_t MPSGetOriginalMTLCommandBuffer(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_commandBuffer(a1, v2, v3, v4, v5);
  }

  else
  {
    v6 = a1;
  }

  return MPSGetOriginalMTLObject(v6);
}

uint64_t MPSGetOriginalMTLComputeCommandEncoder(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a1 = objc_msgSend_computeCommandEncoder(a1, v2, v3, v4, v5);
  }

  return MPSGetOriginalMTLObject(a1);
}

void sub_22E2F24C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MPSKernelDAG::GetCoreOpInputAtIndex(MPSKernelDAG *this, unsigned int a2)
{
  v2 = *(***(this + 7) + 8);
  if (v2 && (v3 = *v2, a2 < ((*(*(***(this + 7) + 8) + 8) - v3) >> 3)))
  {
    return *(v3 + 8 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t MPSKernelDAG::GetCoreOpOutputAtIndex(MPSKernelDAG *this, unsigned int a2)
{
  v2 = *(***(this + 7) + 24);
  if (v2 && (v3 = *v2, a2 < ((*(*(***(this + 7) + 24) + 8) - v3) >> 3)))
  {
    return *(v3 + 8 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t MPSKernelDAG::getDAGAndHash(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, unsigned __int8 *a6, uint64_t a7)
{
  md = a6;
  v8 = a1;
  v547 = *MEMORY[0x277D85DE8];
  v534 = 7;
  strcpy(v533, "Primary");
  strcpy(v536, "\tTertiary");
  strcpy(v535, "Secondary");
  v537 = 8;
  strcpy(v539, "\nQuinary");
  strcpy(v538, "Quaternary");
  v540 = 7;
  v542 = 6;
  strcpy(v541, "Senary");
  strcpy(v544, "\tOctonary");
  strcpy(v543, "Septenary");
  v545 = 8;
  if (*(*(a1 + 56) + 8) - **(a1 + 56) != 8 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  *(&v529.__r_.__value_.__s + 23) = 7;
  strcpy(&v529, "DAGS {\n");
  context = objc_autoreleasePoolPush();
  v9 = *(v8 + 56);
  v10 = *v9;
  v11 = 1;
  v506 = v8;
  do
  {
    v14 = v9 + 1;
    v13 = v9[1];
    if (v13 == v10)
    {
LABEL_518:
      sub_22E34059C();
    }

    v15 = **(*v10 + 8);
    v510 = v11;
    if (*(*(*v10 + 8) + 8) != v15)
    {
      for (i = 0; i < (*(*(*v10 + 8) + 8) - v15) >> 3; ++i)
      {
        v17 = *(a7 + i);
        if (v17 == 1)
        {
          v18 = *(v15 + 8 * i) + 32;
        }

        else
        {
          v19 = **(v8 + 64);
          if (i >= (*(*(v8 + 64) + 8) - v19) >> 3)
          {
            sub_22E34059C();
          }

          v18 = v19 + 8 * i;
        }

        v20 = *v18;
        v22 = *(*v18 + 24);
        v21 = *v22;
        if (v22[1] == *v22)
        {
          sub_22E34059C();
        }

        v23 = *(*v21 + 8);
        if (v23 <= 285212703)
        {
          if (v23 <= 15)
          {
            v25 = 536870920;
            if (v23 != -2147483640)
            {
              v25 = v23;
              if (v23 != 8)
              {
                goto LABEL_35;
              }
            }
          }

          else
          {
            if (v23 != 16 && v23 != 32)
            {
              v25 = v23;
              if (v23 == 64)
              {
                goto LABEL_37;
              }

LABEL_35:
              v25 = 268435488;
              goto LABEL_37;
            }

            v25 = v23;
          }
        }

        else if (v23 > 536870927)
        {
          v27 = v23 == 536870928 || v23 == 536870976 || v23 == 536870944;
          v25 = v23;
          if (!v27)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v24 = v23 == 285212704 || v23 == 285212736;
          v25 = 285212736;
          if (!v24)
          {
            v25 = v23;
            if (v23 != 536870920)
            {
              goto LABEL_35;
            }
          }
        }

LABEL_37:
        v28 = sub_22E2F7154(v25, v510);
        v29 = strlen(v28);
        memset(&__p, 0, sizeof(__p));
        if (v17)
        {
          sub_22E2F7838(&v546, v20, a2, a4, v510, v25, 0, i, 0);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v546;
          goto LABEL_103;
        }

        LODWORD(__val.__r_.__value_.__l.__data_) = i;
        if (*v14 == *v9)
        {
          sub_22E34059C();
        }

        v31 = *(**v9 + 8);
        v30 = *v31;
        if (i >= (v31[1] - *v31) >> 3)
        {
          sub_22E34059C();
        }

        LODWORD(v515.__r_.__value_.__l.__data_) = *(*(v30 + 8 * i) + 8);
        LOWORD(v513.__r_.__value_.__l.__data_) = *(v20 + 88);
        LOWORD(v512.__r_.__value_.__l.__data_) = *(v20 + 90);
        v32 = MEMORY[0x277CCACA8];
        v530[23] = 4;
        strcpy(v530, "read");
        v33 = std::string::append(v530, v28);
        v37 = *&v33->__r_.__value_.__l.__data_;
        v546.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
        *&v546.__r_.__value_.__l.__data_ = v37;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        if ((v546.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = objc_msgSend_stringWithUTF8String_(v32, v34, &v546, v35, v36, v495, v499, md, context);
        }

        else
        {
          v38 = objc_msgSend_stringWithUTF8String_(v32, v34, v546.__r_.__value_.__l.__data_, v35, v36, v495, v499, md, context);
        }

        v39 = v38;
        if (SHIBYTE(v546.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v546.__r_.__value_.__l.__data_);
          if ((v530[23] & 0x80000000) == 0)
          {
            goto LABEL_48;
          }
        }

        else if ((v530[23] & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

        operator delete(*v530);
LABEL_48:
        v40 = MEMORY[0x277CCACA8];
        *(&v525.__r_.__value_.__s + 23) = 5;
        strcpy(&v525, "read_");
        std::to_string(&v524, __val.__r_.__value_.__l.__data_);
        if ((v524.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = &v524;
        }

        else
        {
          v41 = v524.__r_.__value_.__r.__words[0];
        }

        if ((v524.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v524.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v524.__r_.__value_.__l.__size_;
        }

        v43 = std::string::append(&v525, v41, size);
        v44 = *&v43->__r_.__value_.__l.__data_;
        v526.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
        *&v526.__r_.__value_.__l.__data_ = v44;
        v43->__r_.__value_.__l.__size_ = 0;
        v43->__r_.__value_.__r.__words[2] = 0;
        v43->__r_.__value_.__r.__words[0] = 0;
        v45 = std::string::append(&v526, "_");
        v46 = *&v45->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v523, v515.__r_.__value_.__l.__data_);
        if ((v523.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = &v523;
        }

        else
        {
          v47 = v523.__r_.__value_.__r.__words[0];
        }

        if ((v523.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v48 = HIBYTE(v523.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v48 = v523.__r_.__value_.__l.__size_;
        }

        v49 = std::string::append(&__dst, v47, v48);
        v50 = *&v49->__r_.__value_.__l.__data_;
        *&v530[16] = *(&v49->__r_.__value_.__l + 2);
        *v530 = v50;
        v49->__r_.__value_.__l.__size_ = 0;
        v49->__r_.__value_.__r.__words[2] = 0;
        v49->__r_.__value_.__r.__words[0] = 0;
        v51 = std::string::append(v530, v28);
        v55 = *&v51->__r_.__value_.__l.__data_;
        v546.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
        *&v546.__r_.__value_.__l.__data_ = v55;
        v51->__r_.__value_.__l.__size_ = 0;
        v51->__r_.__value_.__r.__words[2] = 0;
        v51->__r_.__value_.__r.__words[0] = 0;
        if ((v546.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = objc_msgSend_stringWithUTF8String_(v40, v52, &v546, v53, v54);
        }

        else
        {
          v56 = objc_msgSend_stringWithUTF8String_(v40, v52, v546.__r_.__value_.__l.__data_, v53, v54);
        }

        v61 = v56;
        if (SHIBYTE(v546.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v546.__r_.__value_.__l.__data_);
          if ((v530[23] & 0x80000000) == 0)
          {
LABEL_65:
            if ((SHIBYTE(v523.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_66;
            }

            goto LABEL_88;
          }
        }

        else if ((v530[23] & 0x80000000) == 0)
        {
          goto LABEL_65;
        }

        operator delete(*v530);
        if ((SHIBYTE(v523.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_66:
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_89;
        }

LABEL_88:
        operator delete(v523.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_67:
          if ((SHIBYTE(v526.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_68;
          }

          goto LABEL_90;
        }

LABEL_89:
        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v526.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_68:
          if ((SHIBYTE(v524.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_69;
          }

          goto LABEL_91;
        }

LABEL_90:
        operator delete(v526.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v524.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_69:
          if (SHIBYTE(v525.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_92;
          }

          goto LABEL_70;
        }

LABEL_91:
        operator delete(v524.__r_.__value_.__l.__data_);
        if (SHIBYTE(v525.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_92:
          operator delete(v525.__r_.__value_.__l.__data_);
        }

LABEL_70:
        v62 = objc_msgSend_length(v61, v57, v58, v59, v60);
        std::string::reserve(&__p, 2 * v62 + 53);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = 22;
        }

        else
        {
          v63 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        std::string::append(&__p, "OUTPUT(");
        v68 = objc_msgSend_UTF8String(v61, v64, v65, v66, v67);
        std::string::append(&__p, v68);
        std::string::append(&__p, ") : FUNCTION(");
        v73 = objc_msgSend_UTF8String(v61, v69, v70, v71, v72);
        std::string::append(&__p, v73);
        std::string::append(&__p, "), INPUT(0), INPUT(1), INPUT(2);\n");
        v74 = 22;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v74 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if (v63 != v74 && MTLReportFailureTypeEnabled())
        {
          v152 = 22;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v152 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          v496 = v63;
          v499 = v152;
          MTLReportFailure();
        }

        if (a2)
        {
          __dst.__r_.__value_.__r.__words[0] = 0;
          v75 = objc_opt_new();
          objc_msgSend_setConstantValue_type_atIndex_(v75, v76, &__val, 33, 3);
          objc_msgSend_setConstantValue_type_atIndex_(v75, v77, &v515, 33, 4);
          objc_msgSend_setConstantValue_type_atIndex_(v75, v78, &v513, 41, 14);
          objc_msgSend_setConstantValue_type_atIndex_(v75, v79, &v512, 41, 15);
          v526.__r_.__value_.__s.__data_[0] = 0;
          objc_msgSend_setConstantValue_type_atIndex_(v75, v80, &v526, 53, 7);
          v85 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v81, v82, v83, v84);
          objc_msgSend_setName_(v85, v86, v39, v87, v88);
          objc_msgSend_setSpecializedName_(v85, v89, v61, v90, v91);
          if (v75)
          {
            objc_msgSend_setConstantValues_(v85, v92, v75, v94, v95);
          }

          v96 = objc_msgSend_device(a2, v92, v93, v94, v95, v496);
          MPSDevice = MPSDevice::GetMPSDevice(v96);
          os_unfair_lock_lock((MPSDevice + 1432));
          v98 = *(MPSDevice + 1440);
          v99 = *(MPSDevice + 1424);
          os_unfair_lock_unlock((MPSDevice + 1432));
          if (v99)
          {
            if ((v98 & 2) != 0)
            {
              v531 = 0u;
              v532 = 0u;
              memset(v530, 0, sizeof(v530));
              v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v100, v530, &v546, 16);
              if (v109)
              {
                v110 = **&v530[16];
                do
                {
                  for (j = 0; j != v109; ++j)
                  {
                    if (**&v530[16] != v110)
                    {
                      objc_enumerationMutation(v99);
                    }

                    objc_msgSend_addFunctionWithDescriptor_library_error_(*(*&v530[8] + 8 * j), v100, v85, a2, 0);
                  }

                  v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v100, v530, &v546, 16);
                }

                while (v109);
              }
            }

            else if (v98)
            {
              objc_msgSend_setBinaryArchives_(v85, v100, v99, v101, v102);
              if ((v98 & 4) != 0)
              {
                v105 = objc_msgSend_pipelineOptions(v85, v100, v103, v104, v102);
                objc_msgSend_setPipelineOptions_(v85, v106, v105 | 4, v107, v108);
              }
            }
          }

          v116 = objc_msgSend_newFunctionWithDescriptor_error_(a2, v100, v85, &__dst, v102);
          if (__dst.__r_.__value_.__r.__words[0] && (v117 = objc_msgSend_localizedFailureReason(__dst.__r_.__value_.__l.__data_, v112, v113, v114, v115), v121 = objc_msgSend_cStringUsingEncoding_(v117, v118, 4, v119, v120), v126 = objc_msgSend_localizedDescription(__dst.__r_.__value_.__l.__data_, v122, v123, v124, v125), v497 = v121, v499 = objc_msgSend_cStringUsingEncoding_(v126, v127, 4, v128, v129), NSLog(&cfstr_ErrorGettingVi.isa), __dst.__r_.__value_.__r.__words[0]) && MTLReportFailureTypeEnabled())
          {
            v155 = objc_msgSend_localizedFailureReason(__dst.__r_.__value_.__l.__data_, v112, v153, v154, v115);
            v159 = objc_msgSend_cStringUsingEncoding_(v155, v156, 4, v157, v158);
            v164 = objc_msgSend_localizedDescription(__dst.__r_.__value_.__l.__data_, v160, v161, v162, v163);
            v499 = objc_msgSend_cStringUsingEncoding_(v164, v165, 4, v166, v167);
            MTLReportFailure();
            objc_msgSend_setObject_forKey_(a4, v168, v116, v61, v169, v159);
          }

          else
          {
            objc_msgSend_setObject_forKey_(a4, v112, v116, v61, v115, v497);
          }
        }

LABEL_103:
        memset(&v546, 0, sizeof(v546));
        v130 = &v533[3 * i];
        v131 = *(v130 + 23);
        if ((v131 & 0x8000000000000000) != 0)
        {
          v131 = v130[1];
        }

        v132 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v132 = __p.__r_.__value_.__l.__size_;
        }

        std::string::reserve(&v546, v29 + v132 + v131 + 26);
        if ((v546.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v133 = 22;
        }

        else
        {
          v133 = (v546.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        std::string::append(&v546, "prefix");
        v134 = *(v130 + 23);
        if (v134 >= 0)
        {
          v135 = &v533[3 * i];
        }

        else
        {
          v135 = *v130;
        }

        if (v134 >= 0)
        {
          v136 = *(v130 + 23);
        }

        else
        {
          v136 = v130[1];
        }

        std::string::append(&v546, v135, v136);
        std::string::append(&v546, v28);
        if ((v546.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v140 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, &v546, v138, v139, v496);
        }

        else
        {
          v140 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, v546.__r_.__value_.__l.__data_, v138, v139, v496);
        }

        objc_msgSend_addObject_(a5, v141, v140, v142, v143);
        std::string::append(&v546, " {\n");
        std::string::append(&v546, "ALWAYS_INLINE;\n");
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v145 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v145 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v546, p_p, v145);
        std::string::append(&v546, "}\n");
        v146 = 22;
        if ((v546.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v146 = (v546.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if (v133 == v146)
        {
          v147 = HIBYTE(v546.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v150 = MTLReportFailureTypeEnabled();
          v147 = HIBYTE(v546.__r_.__value_.__r.__words[2]);
          if (v150)
          {
            v151 = 22;
            if ((v546.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v151 = (v546.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            v495 = v133;
            v499 = v151;
            MTLReportFailure();
            v147 = HIBYTE(v546.__r_.__value_.__r.__words[2]);
          }
        }

        if ((v147 & 0x80u) == 0)
        {
          v148 = &v546;
        }

        else
        {
          v148 = v546.__r_.__value_.__r.__words[0];
        }

        if ((v147 & 0x80u) == 0)
        {
          v149 = v147;
        }

        else
        {
          v149 = v546.__r_.__value_.__l.__size_;
        }

        std::string::append(&v529, v148, v149);
        if (SHIBYTE(v546.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v546.__r_.__value_.__l.__data_);
          v8 = v506;
          v11 = v510;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_140:
            operator delete(__p.__r_.__value_.__l.__data_);
            v9 = *(v8 + 56);
            v14 = v9 + 1;
            v13 = v9[1];
            v10 = *v9;
            if (v13 == *v9)
            {
              goto LABEL_518;
            }

            goto LABEL_141;
          }
        }

        else
        {
          v8 = v506;
          v11 = v510;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_140;
          }
        }

        v9 = *(v8 + 56);
        v14 = v9 + 1;
        v13 = v9[1];
        v10 = *v9;
        if (v13 == *v9)
        {
          goto LABEL_518;
        }

LABEL_141:
        v15 = **(*v10 + 8);
      }
    }

    if (v13 != v10)
    {
      for (k = 0; k < (v9[1] - *v9) >> 3; ++k)
      {
        if (*(a7 + 4) == 1)
        {
          v170 = a3;
        }

        else
        {
          v170 = *v10;
        }

        v171 = **(v170 + 24);
        if (*(*(v170 + 24) + 8) == v171)
        {
          sub_22E34059C();
        }

        v172 = *(*v171 + 8);
        v522 = v172;
        if (v172 <= 285212703)
        {
          if (v172 <= 15)
          {
            v174 = 536870920;
            if (v172 != -2147483640)
            {
              v174 = v172;
              if (v172 != 8)
              {
                goto LABEL_184;
              }
            }
          }

          else
          {
            if (v172 != 16 && v172 != 32)
            {
              v174 = v172;
              if (v172 == 64)
              {
                goto LABEL_186;
              }

LABEL_184:
              v174 = 268435488;
              goto LABEL_186;
            }

            v174 = v172;
          }
        }

        else if (v172 > 536870927)
        {
          v176 = v172 == 536870928 || v172 == 536870976 || v172 == 536870944;
          v174 = v172;
          if (!v176)
          {
            goto LABEL_184;
          }
        }

        else
        {
          v173 = v172 == 285212704 || v172 == 285212736;
          v174 = 285212736;
          if (!v173)
          {
            v174 = v172;
            if (v172 != 536870920)
            {
              goto LABEL_184;
            }
          }
        }

LABEL_186:
        v177 = sub_22E2F7154(v174, v11);
        v521 = 0;
        v178 = **(*v10 + 24);
        if (*(*(*v10 + 24) + 8) == v178)
        {
          sub_22E34059C();
        }

        v179 = v177;
        sub_22E2F7838(&__p, v170, a2, a4, v11, *(*v178 + 8), 1, k, &v521);
        if (v521 == 1)
        {
          *(v8 + 84) = 1;
        }

        if (*(v8 + 80))
        {
          v180 = *(v8 + 76);
          v181 = "write";
        }

        else
        {
          v180 = 0;
          v181 = "writeTexture2d";
        }

        v520 = ((*(*(v8 + 64) + 8) - **(v8 + 64)) >> 3) + k - v180;
        v519 = *(v170 + 88);
        v518 = *(v170 + 90);
        v517 = *(v170 + 92);
        v182 = strlen(v181);
        if (v182 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_22E33DEAC();
        }

        v183 = v182;
        if (v182 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v182;
        if (v182)
        {
          memcpy(&__dst, v181, v182);
        }

        __dst.__r_.__value_.__s.__data_[v183] = 0;
        v184 = MEMORY[0x277CCACA8];
        v185 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v186 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v186 = __dst.__r_.__value_.__l.__size_;
        }

        v187 = strlen(v179);
        if (v186 + v187 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_22E33DEAC();
        }

        v191 = v187;
        if (v186 + v187 > 0x16)
        {
          operator new();
        }

        memset(&v546, 0, sizeof(v546));
        *(&v546.__r_.__value_.__s + 23) = v186 + v187;
        if (v186)
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          memmove(&v546, p_dst, v186);
        }

        v193 = &v546 + v186;
        if (v191)
        {
          memmove(v193, v179, v191);
        }

        v193[v191] = 0;
        if ((v546.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v194 = objc_msgSend_stringWithUTF8String_(v184, v188, &v546, v189, v190);
        }

        else
        {
          v194 = objc_msgSend_stringWithUTF8String_(v184, v188, v546.__r_.__value_.__l.__data_, v189, v190);
        }

        v195 = v194;
        if (SHIBYTE(v546.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v546.__r_.__value_.__l.__data_);
        }

        if (v186 + 1 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_22E33DEAC();
        }

        v196 = MEMORY[0x277CCACA8];
        if (v186 + 1 >= 0x17)
        {
          operator new();
        }

        memset(&v523, 0, sizeof(v523));
        *(&v523.__r_.__value_.__s + 23) = v186 + 1;
        if (v186)
        {
          if (v185 >= 0)
          {
            v197 = &__dst;
          }

          else
          {
            v197 = __dst.__r_.__value_.__r.__words[0];
          }

          memmove(&v523, v197, v186);
        }

        *(&v523.__r_.__value_.__l.__data_ + v186) = 95;
        std::to_string(&__val, v520);
        if ((__val.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_val = &__val;
        }

        else
        {
          p_val = __val.__r_.__value_.__r.__words[0];
        }

        if ((__val.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v199 = HIBYTE(__val.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v199 = __val.__r_.__value_.__l.__size_;
        }

        v200 = std::string::append(&v523, p_val, v199);
        v201 = *&v200->__r_.__value_.__l.__data_;
        v524.__r_.__value_.__r.__words[2] = v200->__r_.__value_.__r.__words[2];
        *&v524.__r_.__value_.__l.__data_ = v201;
        v200->__r_.__value_.__l.__size_ = 0;
        v200->__r_.__value_.__r.__words[2] = 0;
        v200->__r_.__value_.__r.__words[0] = 0;
        v202 = std::string::append(&v524, "_");
        v203 = *&v202->__r_.__value_.__l.__data_;
        v525.__r_.__value_.__r.__words[2] = v202->__r_.__value_.__r.__words[2];
        *&v525.__r_.__value_.__l.__data_ = v203;
        v202->__r_.__value_.__l.__size_ = 0;
        v202->__r_.__value_.__r.__words[2] = 0;
        v202->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v515, v522);
        if ((v515.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v204 = &v515;
        }

        else
        {
          v204 = v515.__r_.__value_.__r.__words[0];
        }

        if ((v515.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v205 = HIBYTE(v515.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v205 = v515.__r_.__value_.__l.__size_;
        }

        v206 = std::string::append(&v525, v204, v205);
        v207 = *&v206->__r_.__value_.__l.__data_;
        v526.__r_.__value_.__r.__words[2] = v206->__r_.__value_.__r.__words[2];
        *&v526.__r_.__value_.__l.__data_ = v207;
        v206->__r_.__value_.__l.__size_ = 0;
        v206->__r_.__value_.__r.__words[2] = 0;
        v206->__r_.__value_.__r.__words[0] = 0;
        v208 = std::string::append(&v526, "_");
        v209 = *&v208->__r_.__value_.__l.__data_;
        *&v530[16] = *(&v208->__r_.__value_.__l + 2);
        *v530 = v209;
        v208->__r_.__value_.__l.__size_ = 0;
        v208->__r_.__value_.__r.__words[2] = 0;
        v208->__r_.__value_.__r.__words[0] = 0;
        v210 = std::string::append(v530, v179);
        v214 = *&v210->__r_.__value_.__l.__data_;
        v546.__r_.__value_.__r.__words[2] = v210->__r_.__value_.__r.__words[2];
        *&v546.__r_.__value_.__l.__data_ = v214;
        v210->__r_.__value_.__l.__size_ = 0;
        v210->__r_.__value_.__r.__words[2] = 0;
        v210->__r_.__value_.__r.__words[0] = 0;
        if ((v546.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v215 = objc_msgSend_stringWithUTF8String_(v196, v211, &v546, v212, v213);
        }

        else
        {
          v215 = objc_msgSend_stringWithUTF8String_(v196, v211, v546.__r_.__value_.__l.__data_, v212, v213);
        }

        v216 = v215;
        if (SHIBYTE(v546.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v546.__r_.__value_.__l.__data_);
          if ((v530[23] & 0x80000000) == 0)
          {
LABEL_241:
            if ((SHIBYTE(v526.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_242;
            }

            goto LABEL_251;
          }
        }

        else if ((v530[23] & 0x80000000) == 0)
        {
          goto LABEL_241;
        }

        operator delete(*v530);
        if ((SHIBYTE(v526.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_242:
          if ((SHIBYTE(v515.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_243;
          }

          goto LABEL_252;
        }

LABEL_251:
        operator delete(v526.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v515.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_243:
          if ((SHIBYTE(v525.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_244;
          }

          goto LABEL_253;
        }

LABEL_252:
        operator delete(v515.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v525.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_244:
          if ((SHIBYTE(v524.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_245;
          }

          goto LABEL_254;
        }

LABEL_253:
        operator delete(v525.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v524.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_245:
          if ((SHIBYTE(__val.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_246;
          }

          goto LABEL_255;
        }

LABEL_254:
        operator delete(v524.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__val.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_246:
          if ((SHIBYTE(v523.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_247;
          }

          goto LABEL_256;
        }

LABEL_255:
        operator delete(__val.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v523.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_247:
          if (!a2)
          {
            goto LABEL_274;
          }

          goto LABEL_257;
        }

LABEL_256:
        operator delete(v523.__r_.__value_.__l.__data_);
        if (!a2)
        {
          goto LABEL_274;
        }

LABEL_257:
        v217 = objc_opt_new();
        objc_msgSend_setConstantValue_type_atIndex_(v217, v218, &v520, 33, 3);
        objc_msgSend_setConstantValue_type_atIndex_(v217, v219, &v522, 33, 4);
        objc_msgSend_setConstantValue_type_atIndex_(v217, v220, &v521, 53, 7);
        objc_msgSend_setConstantValue_type_atIndex_(v217, v221, &v519, 41, 14);
        objc_msgSend_setConstantValue_type_atIndex_(v217, v222, &v518, 41, 15);
        objc_msgSend_setConstantValue_type_atIndex_(v217, v223, &v517, 53, 16);
        v526.__r_.__value_.__r.__words[0] = 0;
        v228 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v224, v225, v226, v227);
        objc_msgSend_setName_(v228, v229, v195, v230, v231);
        objc_msgSend_setSpecializedName_(v228, v232, v216, v233, v234);
        if (v217)
        {
          objc_msgSend_setConstantValues_(v228, v235, v217, v237, v238);
        }

        v239 = objc_msgSend_device(a2, v235, v236, v237, v238);
        v240 = MPSDevice::GetMPSDevice(v239);
        os_unfair_lock_lock((v240 + 1432));
        v241 = *(v240 + 1440);
        v242 = *(v240 + 1424);
        os_unfair_lock_unlock((v240 + 1432));
        if (v242)
        {
          if ((v241 & 2) != 0)
          {
            v531 = 0u;
            v532 = 0u;
            memset(v530, 0, sizeof(v530));
            v252 = objc_msgSend_countByEnumeratingWithState_objects_count_(v242, v243, v530, &v546, 16);
            if (v252)
            {
              v253 = **&v530[16];
              do
              {
                for (m = 0; m != v252; ++m)
                {
                  if (**&v530[16] != v253)
                  {
                    objc_enumerationMutation(v242);
                  }

                  objc_msgSend_addFunctionWithDescriptor_library_error_(*(*&v530[8] + 8 * m), v243, v228, a2, 0);
                }

                v252 = objc_msgSend_countByEnumeratingWithState_objects_count_(v242, v243, v530, &v546, 16);
              }

              while (v252);
            }
          }

          else if (v241)
          {
            objc_msgSend_setBinaryArchives_(v228, v243, v242, v244, v245);
            if ((v241 & 4) != 0)
            {
              v248 = objc_msgSend_pipelineOptions(v228, v243, v246, v247, v245);
              objc_msgSend_setPipelineOptions_(v228, v249, v248 | 4, v250, v251);
            }
          }
        }

        v259 = objc_msgSend_newFunctionWithDescriptor_error_(a2, v243, v228, &v526, v245);
        if (v526.__r_.__value_.__r.__words[0] && (v260 = objc_msgSend_localizedFailureReason(v526.__r_.__value_.__l.__data_, v255, v256, v257, v258), v264 = objc_msgSend_cStringUsingEncoding_(v260, v261, 4, v262, v263), v269 = objc_msgSend_localizedDescription(v526.__r_.__value_.__l.__data_, v265, v266, v267, v268), v498 = v264, v499 = objc_msgSend_cStringUsingEncoding_(v269, v270, 4, v271, v272), NSLog(&cfstr_ErrorGettingVi.isa), v526.__r_.__value_.__r.__words[0]) && MTLReportFailureTypeEnabled())
        {
          v455 = objc_msgSend_localizedFailureReason(v526.__r_.__value_.__l.__data_, v255, v453, v454, v258);
          v459 = objc_msgSend_cStringUsingEncoding_(v455, v456, 4, v457, v458);
          v464 = objc_msgSend_localizedDescription(v526.__r_.__value_.__l.__data_, v460, v461, v462, v463);
          v499 = objc_msgSend_cStringUsingEncoding_(v464, v465, 4, v466, v467);
          MTLReportFailure();
          objc_msgSend_setObject_forKey_(a4, v468, v259, v216, v469, v459);
        }

        else
        {
          objc_msgSend_setObject_forKey_(a4, v255, v259, v216, v258, v498);
        }

LABEL_274:
        v273 = **(v506 + 56);
        if (*(*(v506 + 56) + 8) == v273)
        {
          sub_22E34059C();
        }

        v275 = *(*v273 + 24);
        v274 = *v275;
        if (v275[1] == *v275)
        {
          sub_22E34059C();
        }

        v276 = *(*v274 + 8);
        v514 = v276;
        if (v276 <= 285212703)
        {
          if (v276 <= 15)
          {
            v278 = 536870920;
            if (v276 == -2147483640)
            {
              goto LABEL_301;
            }

            v278 = v276;
            if (v276 == 8)
            {
              goto LABEL_301;
            }

LABEL_299:
            v278 = 268435488;
            goto LABEL_301;
          }

          if (v276 != 16 && v276 != 32)
          {
            v278 = v276;
            if (v276 == 64)
            {
              goto LABEL_301;
            }

            goto LABEL_299;
          }

          v278 = v276;
        }

        else if (v276 > 536870927)
        {
          v280 = v276 == 536870928 || v276 == 536870976 || v276 == 536870944;
          v278 = v276;
          if (!v280)
          {
            goto LABEL_299;
          }
        }

        else
        {
          v277 = v276 == 285212704 || v276 == 285212736;
          v278 = 285212736;
          if (!v277)
          {
            v278 = v276;
            if (v276 != 536870920)
            {
              goto LABEL_299;
            }
          }
        }

LABEL_301:
        v281 = sub_22E2F7154(v278, v510);
        v505 = strlen(v281);
        if (*(a7 + 4) == 1)
        {
          *(&v526.__r_.__value_.__s + 23) = 16;
          strcpy(&v526, "NODE(Node_value)");
        }

        else
        {
          (*(*v170 + 64))(&v526, v170, 0, v281, 0);
        }

        memset(&v525, 0, sizeof(v525));
        v286 = &v533[3 * k];
        v287 = *(v286 + 23);
        if (v287 < 0)
        {
          v287 = v286[1];
        }

        v288 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v289 = __p.__r_.__value_.__l.__size_;
        v290 = objc_msgSend_length(v216, v282, v283, v284, v285);
        if ((v288 & 0x80u) == 0)
        {
          v291 = v288;
        }

        else
        {
          v291 = v289;
        }

        v292 = v505 + v287 + v291 + 2 * v290;
        v293 = HIBYTE(v526.__r_.__value_.__r.__words[2]);
        if ((v526.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v293 = v526.__r_.__value_.__l.__size_;
        }

        std::string::reserve(&v525, v292 + v293 + 80);
        if ((v525.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v294 = 22;
        }

        else
        {
          v294 = (v525.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        std::string::append(&v525, "postfix");
        v295 = *(v286 + 23);
        if (v295 >= 0)
        {
          v296 = &v533[3 * k];
        }

        else
        {
          v296 = *v286;
        }

        if (v295 >= 0)
        {
          v297 = *(v286 + 23);
        }

        else
        {
          v297 = v286[1];
        }

        std::string::append(&v525, v296, v297);
        std::string::append(&v525, v281);
        if ((v525.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v301 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v298, &v525, v299, v300);
        }

        else
        {
          v301 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v298, v525.__r_.__value_.__l.__data_, v299, v300);
        }

        objc_msgSend_addObject_(a5, v302, v301, v303, v304);
        std::string::append(&v525, " {\n");
        std::string::append(&v525, "ALWAYS_INLINE;\n");
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v305 = &__p;
        }

        else
        {
          v305 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v306 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v306 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v525, v305, v306);
        std::string::append(&v525, "NODE(");
        v311 = objc_msgSend_UTF8String(v216, v307, v308, v309, v310);
        std::string::append(&v525, v311);
        std::string::append(&v525, ") : FUNCTION(");
        v316 = objc_msgSend_UTF8String(v216, v312, v313, v314, v315);
        std::string::append(&v525, v316);
        std::string::append(&v525, "), INPUT(0), INPUT(1), ");
        if ((v526.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v317 = &v526;
        }

        else
        {
          v317 = v526.__r_.__value_.__r.__words[0];
        }

        if ((v526.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v318 = HIBYTE(v526.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v318 = v526.__r_.__value_.__l.__size_;
        }

        std::string::append(&v525, v317, v318);
        std::string::append(&v525, ";\n}\n");
        v319 = 22;
        if ((v525.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v319 = (v525.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if (v294 != v319 && MTLReportFailureTypeEnabled())
        {
          v450 = 22;
          if ((v525.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v450 = (v525.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          v498 = v294;
          v499 = v450;
          MTLReportFailure();
        }

        v320 = MEMORY[0x277CCACA8];
        v530[23] = 5;
        strcpy(v530, "accum");
        v321 = std::string::append(v530, v179);
        v325 = *&v321->__r_.__value_.__l.__data_;
        v546.__r_.__value_.__r.__words[2] = v321->__r_.__value_.__r.__words[2];
        *&v546.__r_.__value_.__l.__data_ = v325;
        v321->__r_.__value_.__l.__size_ = 0;
        v321->__r_.__value_.__r.__words[2] = 0;
        v321->__r_.__value_.__r.__words[0] = 0;
        if ((v546.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v326 = objc_msgSend_stringWithUTF8String_(v320, v322, &v546, v323, v324, v498);
        }

        else
        {
          v326 = objc_msgSend_stringWithUTF8String_(v320, v322, v546.__r_.__value_.__l.__data_, v323, v324, v498);
        }

        v327 = v326;
        if (SHIBYTE(v546.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v546.__r_.__value_.__l.__data_);
          if ((v530[23] & 0x80000000) == 0)
          {
            goto LABEL_343;
          }
        }

        else if ((v530[23] & 0x80000000) == 0)
        {
          goto LABEL_343;
        }

        operator delete(*v530);
LABEL_343:
        v328 = MEMORY[0x277CCACA8];
        *(&v515.__r_.__value_.__s + 23) = 6;
        strcpy(&v515, "accum_");
        std::to_string(&v513, v520);
        if ((v513.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v329 = &v513;
        }

        else
        {
          v329 = v513.__r_.__value_.__r.__words[0];
        }

        if ((v513.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v330 = HIBYTE(v513.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v330 = v513.__r_.__value_.__l.__size_;
        }

        v331 = std::string::append(&v515, v329, v330);
        v332 = *&v331->__r_.__value_.__l.__data_;
        __val.__r_.__value_.__r.__words[2] = v331->__r_.__value_.__r.__words[2];
        *&__val.__r_.__value_.__l.__data_ = v332;
        v331->__r_.__value_.__l.__size_ = 0;
        v331->__r_.__value_.__r.__words[2] = 0;
        v331->__r_.__value_.__r.__words[0] = 0;
        v333 = std::string::append(&__val, "_");
        v334 = *&v333->__r_.__value_.__l.__data_;
        v523.__r_.__value_.__r.__words[2] = v333->__r_.__value_.__r.__words[2];
        *&v523.__r_.__value_.__l.__data_ = v334;
        v333->__r_.__value_.__l.__size_ = 0;
        v333->__r_.__value_.__r.__words[2] = 0;
        v333->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v512, v522);
        if ((v512.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v335 = &v512;
        }

        else
        {
          v335 = v512.__r_.__value_.__r.__words[0];
        }

        if ((v512.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v336 = HIBYTE(v512.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v336 = v512.__r_.__value_.__l.__size_;
        }

        v337 = std::string::append(&v523, v335, v336);
        v338 = *&v337->__r_.__value_.__l.__data_;
        v524.__r_.__value_.__r.__words[2] = v337->__r_.__value_.__r.__words[2];
        *&v524.__r_.__value_.__l.__data_ = v338;
        v337->__r_.__value_.__l.__size_ = 0;
        v337->__r_.__value_.__r.__words[2] = 0;
        v337->__r_.__value_.__r.__words[0] = 0;
        v339 = std::string::append(&v524, "_");
        v340 = *&v339->__r_.__value_.__l.__data_;
        *&v530[16] = *(&v339->__r_.__value_.__l + 2);
        *v530 = v340;
        v339->__r_.__value_.__l.__size_ = 0;
        v339->__r_.__value_.__r.__words[2] = 0;
        v339->__r_.__value_.__r.__words[0] = 0;
        v341 = std::string::append(v530, v179);
        v345 = *&v341->__r_.__value_.__l.__data_;
        v546.__r_.__value_.__r.__words[2] = v341->__r_.__value_.__r.__words[2];
        *&v546.__r_.__value_.__l.__data_ = v345;
        v341->__r_.__value_.__l.__size_ = 0;
        v341->__r_.__value_.__r.__words[2] = 0;
        v341->__r_.__value_.__r.__words[0] = 0;
        if ((v546.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v346 = objc_msgSend_stringWithUTF8String_(v328, v342, &v546, v343, v344);
        }

        else
        {
          v346 = objc_msgSend_stringWithUTF8String_(v328, v342, v546.__r_.__value_.__l.__data_, v343, v344);
        }

        v347 = v346;
        if (SHIBYTE(v546.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v546.__r_.__value_.__l.__data_);
          if ((v530[23] & 0x80000000) == 0)
          {
LABEL_360:
            if ((SHIBYTE(v524.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_361;
            }

            goto LABEL_373;
          }
        }

        else if ((v530[23] & 0x80000000) == 0)
        {
          goto LABEL_360;
        }

        operator delete(*v530);
        if ((SHIBYTE(v524.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_361:
          if ((SHIBYTE(v512.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_362;
          }

          goto LABEL_374;
        }

LABEL_373:
        operator delete(v524.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v512.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_362:
          if ((SHIBYTE(v523.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_363;
          }

          goto LABEL_375;
        }

LABEL_374:
        operator delete(v512.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v523.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_363:
          if ((SHIBYTE(__val.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_364;
          }

          goto LABEL_376;
        }

LABEL_375:
        operator delete(v523.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__val.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_364:
          if (SHIBYTE(v513.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_377;
          }

          goto LABEL_365;
        }

LABEL_376:
        operator delete(__val.__r_.__value_.__l.__data_);
        if (SHIBYTE(v513.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_377:
          operator delete(v513.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v515.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_366;
          }

          goto LABEL_378;
        }

LABEL_365:
        if ((SHIBYTE(v515.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_366;
        }

LABEL_378:
        operator delete(v515.__r_.__value_.__l.__data_);
LABEL_366:
        *(&v546.__r_.__value_.__s + 23) = 5;
        strcpy(&v546, "accum");
        v348 = std::string::append(&v546, v179);
        v503 = v348->__r_.__value_.__r.__words[0];
        v504 = SHIBYTE(v348->__r_.__value_.__r.__words[2]);
        v348->__r_.__value_.__r.__words[0] = 0;
        v348->__r_.__value_.__l.__size_ = 0;
        v348->__r_.__value_.__r.__words[2] = 0;
        if (SHIBYTE(v546.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v546.__r_.__value_.__l.__data_);
          if (!a2)
          {
            goto LABEL_397;
          }
        }

        else if (!a2)
        {
          goto LABEL_397;
        }

        v353 = objc_opt_new();
        objc_msgSend_setConstantValue_type_atIndex_(v353, v354, &v520, 33, 3);
        objc_msgSend_setConstantValue_type_atIndex_(v353, v355, &v514, 33, 4);
        objc_msgSend_setConstantValue_type_atIndex_(v353, v356, &v521, 53, 7);
        objc_msgSend_setConstantValue_type_atIndex_(v353, v357, &v519, 41, 14);
        objc_msgSend_setConstantValue_type_atIndex_(v353, v358, &v518, 41, 15);
        objc_msgSend_setConstantValue_type_atIndex_(v353, v359, &v517, 53, 16);
        v524.__r_.__value_.__r.__words[0] = 0;
        v364 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v360, v361, v362, v363);
        objc_msgSend_setName_(v364, v365, v327, v366, v367);
        objc_msgSend_setSpecializedName_(v364, v368, v347, v369, v370);
        if (v353)
        {
          objc_msgSend_setConstantValues_(v364, v371, v353, v373, v374);
        }

        v375 = objc_msgSend_device(a2, v371, v372, v373, v374);
        v376 = MPSDevice::GetMPSDevice(v375);
        os_unfair_lock_lock((v376 + 1432));
        v377 = *(v376 + 1440);
        v378 = *(v376 + 1424);
        os_unfair_lock_unlock((v376 + 1432));
        if (v378)
        {
          if ((v377 & 2) != 0)
          {
            v531 = 0u;
            v532 = 0u;
            memset(v530, 0, sizeof(v530));
            v388 = objc_msgSend_countByEnumeratingWithState_objects_count_(v378, v379, v530, &v546, 16);
            if (v388)
            {
              v389 = **&v530[16];
              do
              {
                for (n = 0; n != v388; ++n)
                {
                  if (**&v530[16] != v389)
                  {
                    objc_enumerationMutation(v378);
                  }

                  objc_msgSend_addFunctionWithDescriptor_library_error_(*(*&v530[8] + 8 * n), v379, v364, a2, 0);
                }

                v388 = objc_msgSend_countByEnumeratingWithState_objects_count_(v378, v379, v530, &v546, 16);
              }

              while (v388);
            }
          }

          else if (v377)
          {
            objc_msgSend_setBinaryArchives_(v364, v379, v378, v380, v381);
            if ((v377 & 4) != 0)
            {
              v384 = objc_msgSend_pipelineOptions(v364, v379, v382, v383, v381);
              objc_msgSend_setPipelineOptions_(v364, v385, v384 | 4, v386, v387);
            }
          }
        }

        v395 = objc_msgSend_newFunctionWithDescriptor_error_(a2, v379, v364, &v524, v381);
        if (v524.__r_.__value_.__r.__words[0] && (v396 = objc_msgSend_localizedFailureReason(v524.__r_.__value_.__l.__data_, v391, v392, v393, v394), v400 = objc_msgSend_cStringUsingEncoding_(v396, v397, 4, v398, v399), v405 = objc_msgSend_localizedDescription(v524.__r_.__value_.__l.__data_, v401, v402, v403, v404), v495 = v400, v499 = objc_msgSend_cStringUsingEncoding_(v405, v406, 4, v407, v408), NSLog(&cfstr_ErrorGettingVi.isa), v524.__r_.__value_.__r.__words[0]) && MTLReportFailureTypeEnabled())
        {
          v472 = objc_msgSend_localizedFailureReason(v524.__r_.__value_.__l.__data_, v391, v470, v471, v394);
          v476 = objc_msgSend_cStringUsingEncoding_(v472, v473, 4, v474, v475);
          v481 = objc_msgSend_localizedDescription(v524.__r_.__value_.__l.__data_, v477, v478, v479, v480);
          v499 = objc_msgSend_cStringUsingEncoding_(v481, v482, 4, v483, v484);
          MTLReportFailure();
          objc_msgSend_setObject_forKey_(a4, v485, v395, v347, v486, v476);
        }

        else
        {
          objc_msgSend_setObject_forKey_(a4, v391, v395, v347, v394, v495);
        }

LABEL_397:
        if (*(a7 + 4) == 1)
        {
          *(&v546.__r_.__value_.__s + 23) = 16;
          strcpy(&v546, "NODE(Node_value)");
        }

        else
        {
          (*(*v170 + 64))(&v546, v170, 0, v281, 0);
        }

        memset(v530, 0, 24);
        v409 = *(v286 + 23);
        if (v409 < 0)
        {
          v409 = v286[1];
        }

        v410 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v411 = __p.__r_.__value_.__l.__size_;
        v412 = objc_msgSend_length(v347, v349, v350, v351, v352);
        if ((v410 & 0x80u) == 0)
        {
          v413 = v410;
        }

        else
        {
          v413 = v411;
        }

        v414 = v505 + v409 + v413 + 2 * v412;
        v415 = HIBYTE(v546.__r_.__value_.__r.__words[2]);
        if ((v546.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v415 = v546.__r_.__value_.__l.__size_;
        }

        std::string::reserve(v530, v414 + v415 + 90);
        if (v530[23] >= 0)
        {
          v416 = 22;
        }

        else
        {
          v416 = (*&v530[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        std::string::append(v530, "postfix");
        v417 = *(v286 + 23);
        if (v417 >= 0)
        {
          v418 = &v533[3 * k];
        }

        else
        {
          v418 = *v286;
        }

        if (v417 >= 0)
        {
          v419 = *(v286 + 23);
        }

        else
        {
          v419 = v286[1];
        }

        std::string::append(v530, v418, v419);
        std::string::append(v530, "Accumulate");
        std::string::append(v530, v281);
        if (v530[23] >= 0)
        {
          v423 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v420, v530, v421, v422);
        }

        else
        {
          v423 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v420, *v530, v421, v422);
        }

        objc_msgSend_addObject_(a5, v424, v423, v425, v426);
        std::string::append(v530, " {\n");
        std::string::append(v530, "ALWAYS_INLINE;\n");
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v427 = &__p;
        }

        else
        {
          v427 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v428 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v428 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(v530, v427, v428);
        std::string::append(v530, "NODE(");
        v433 = objc_msgSend_UTF8String(v347, v429, v430, v431, v432);
        std::string::append(v530, v433);
        std::string::append(v530, ") : FUNCTION(");
        v438 = objc_msgSend_UTF8String(v347, v434, v435, v436, v437);
        std::string::append(v530, v438);
        std::string::append(v530, "), INPUT(0), INPUT(1), ");
        if ((v546.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v439 = &v546;
        }

        else
        {
          v439 = v546.__r_.__value_.__r.__words[0];
        }

        if ((v546.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v440 = HIBYTE(v546.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v440 = v546.__r_.__value_.__l.__size_;
        }

        std::string::append(v530, v439, v440);
        std::string::append(v530, ";\n}\n");
        v441 = 22;
        if (v530[23] < 0)
        {
          v441 = (*&v530[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if (v416 == v441)
        {
          v442 = v530[23];
        }

        else
        {
          v451 = MTLReportFailureTypeEnabled();
          v442 = v530[23];
          if (v451)
          {
            v452 = 22;
            if (v530[23] < 0)
            {
              v452 = (*&v530[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            v495 = v416;
            v499 = v452;
            MTLReportFailure();
            v442 = v530[23];
          }
        }

        if ((v525.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v443 = HIBYTE(v525.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v443 = v525.__r_.__value_.__l.__size_;
        }

        if ((v442 & 0x80u) == 0)
        {
          v444 = v442;
        }

        else
        {
          v444 = *&v530[8];
        }

        if (v444 + v443 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_22E33DEAC();
        }

        if (v444 + v443 > 0x16)
        {
          operator new();
        }

        memset(&v524, 0, sizeof(v524));
        *(&v524.__r_.__value_.__s + 23) = v444 + v443;
        if (v443)
        {
          if ((v525.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v445 = &v525;
          }

          else
          {
            v445 = v525.__r_.__value_.__r.__words[0];
          }

          memmove(&v524, v445, v443);
        }

        v446 = &v524 + v443;
        if (v444)
        {
          if (v530[23] >= 0)
          {
            v447 = v530;
          }

          else
          {
            v447 = *v530;
          }

          memmove(v446, v447, v444);
        }

        v446[v444] = 0;
        if ((v524.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v448 = &v524;
        }

        else
        {
          v448 = v524.__r_.__value_.__r.__words[0];
        }

        if ((v524.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v449 = HIBYTE(v524.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v449 = v524.__r_.__value_.__l.__size_;
        }

        std::string::append(&v529, v448, v449);
        v8 = v506;
        v11 = v510;
        if (SHIBYTE(v524.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v524.__r_.__value_.__l.__data_);
          if ((v530[23] & 0x80000000) == 0)
          {
LABEL_462:
            if ((SHIBYTE(v546.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_463;
            }

            goto LABEL_470;
          }
        }

        else if ((v530[23] & 0x80000000) == 0)
        {
          goto LABEL_462;
        }

        operator delete(*v530);
        if ((SHIBYTE(v546.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_463:
          if ((v504 & 0x80000000) == 0)
          {
            goto LABEL_464;
          }

          goto LABEL_471;
        }

LABEL_470:
        operator delete(v546.__r_.__value_.__l.__data_);
        if ((v504 & 0x80000000) == 0)
        {
LABEL_464:
          if ((SHIBYTE(v525.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_465;
          }

          goto LABEL_472;
        }

LABEL_471:
        operator delete(v503);
        if ((SHIBYTE(v525.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_465:
          if ((SHIBYTE(v526.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_466;
          }

          goto LABEL_473;
        }

LABEL_472:
        operator delete(v525.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v526.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_466:
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_155;
          }

          goto LABEL_474;
        }

LABEL_473:
        operator delete(v526.__r_.__value_.__l.__data_);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_155:
          operator delete(__dst.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_475;
          }

          goto LABEL_156;
        }

LABEL_474:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_475:
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_156:
        v9 = *(v506 + 56);
        v10 = *v9;
      }
    }

    v12 = v11 >= 2;
    v11 += 3;
  }

  while (!v12);
  objc_autoreleasePoolPop(context);
  std::string::append(&v529, "}\n");
  if ((v529.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v487 = &v529;
  }

  else
  {
    v487 = v529.__r_.__value_.__r.__words[0];
  }

  if ((v529.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v488 = HIBYTE(v529.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v488 = v529.__r_.__value_.__r.__words[1];
  }

  CC_SHA256(v487, v488, md);
  if ((v529.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v492 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v489, &v529, v490, v491, v495);
  }

  else
  {
    v492 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v489, v529.__r_.__value_.__l.__data_, v490, v491, v495);
  }

  v493 = v492;
  if (SHIBYTE(v529.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v529.__r_.__value_.__l.__data_);
    if (v545 < 0)
    {
      goto LABEL_508;
    }

LABEL_499:
    if ((v544[0] & 0x80000000) == 0)
    {
      goto LABEL_500;
    }

LABEL_509:
    operator delete(v543[0]);
    if (v542 < 0)
    {
      goto LABEL_510;
    }

LABEL_501:
    if ((v540 & 0x80000000) == 0)
    {
      goto LABEL_502;
    }

LABEL_511:
    operator delete(*&v539[1]);
    if (v539[0] < 0)
    {
      goto LABEL_512;
    }

LABEL_503:
    if ((v537 & 0x80000000) == 0)
    {
      goto LABEL_504;
    }

LABEL_513:
    operator delete(*&v536[1]);
    if (v536[0] < 0)
    {
      goto LABEL_514;
    }

LABEL_505:
    if (v534 < 0)
    {
LABEL_515:
      operator delete(v533[0]);
    }
  }

  else
  {
    if ((v545 & 0x80000000) == 0)
    {
      goto LABEL_499;
    }

LABEL_508:
    operator delete(*&v544[1]);
    if (v544[0] < 0)
    {
      goto LABEL_509;
    }

LABEL_500:
    if ((v542 & 0x80000000) == 0)
    {
      goto LABEL_501;
    }

LABEL_510:
    operator delete(v541[0]);
    if (v540 < 0)
    {
      goto LABEL_511;
    }

LABEL_502:
    if ((v539[0] & 0x80000000) == 0)
    {
      goto LABEL_503;
    }

LABEL_512:
    operator delete(v538[0]);
    if (v537 < 0)
    {
      goto LABEL_513;
    }

LABEL_504:
    if ((v536[0] & 0x80000000) == 0)
    {
      goto LABEL_505;
    }

LABEL_514:
    operator delete(v535[0]);
    if (v534 < 0)
    {
      goto LABEL_515;
    }
  }

  return v493;
}

void sub_22E2F4B60(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
    if ((SLOBYTE(STACK[0x2A7]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x2A7]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x28F]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  operator delete(STACK[0x290]);
  if (SLOBYTE(STACK[0x28F]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x278]);
    if ((SLOBYTE(STACK[0x277]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  if ((SLOBYTE(STACK[0x277]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x25F]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(STACK[0x260]);
  if (SLOBYTE(STACK[0x25F]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x248]);
    if ((SLOBYTE(STACK[0x247]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  if ((SLOBYTE(STACK[0x247]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x22F]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(STACK[0x230]);
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x218]);
    if ((SLOBYTE(STACK[0x217]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  if ((SLOBYTE(STACK[0x217]) & 0x80000000) == 0)
  {
LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_17:
  operator delete(STACK[0x200]);
  _Unwind_Resume(a1);
}

void MPSKernelDAG::appendConversionFunctions(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v165 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  *v154 = 0u;
  *v155 = 0u;
  v156 = 1065353216;
  LODWORD(v158) = 268435488;
  *&v162 = &v158;
  v8 = sub_22E3405B4(v154, 0x10000020u);
  v9 = v8[4];
  if (v9)
  {
    v10 = v8;
    bzero(v8[3], 8 * v9);
    v11 = v10[5];
    v10[5] = 0;
    v10[6] = 0;
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
  }

  LODWORD(v158) = 536870976;
  v150 = 64;
  *&v162 = &v150;
  v13 = sub_22E3405B4(v154, 0x40u);
  sub_22E340AF0((v13 + 3), &v158, &v158 + 1);
  v162 = xmmword_22E37B010;
  LODWORD(v163) = 8;
  v150 = 32;
  *&v158 = &v150;
  v14 = sub_22E3405B4(v154, 0x20u);
  sub_22E340AF0((v14 + 3), &v162, &v163 + 1);
  LODWORD(v158) = 536870928;
  v150 = 16;
  *&v162 = &v150;
  v15 = sub_22E3405B4(v154, 0x10u);
  sub_22E340AF0((v15 + 3), &v158, &v158 + 1);
  LODWORD(v158) = 536870920;
  v150 = 8;
  *&v162 = &v150;
  v16 = sub_22E3405B4(v154, 8u);
  sub_22E340AF0((v16 + 3), &v158, &v158 + 1);
  v17 = v155[0];
  if (v155[0])
  {
    v140 = v7;
    while (1)
    {
      v150 = *(v17 + 4);
      v152 = 0u;
      v151 = 0u;
      v153 = *(v17 + 14);
      v141 = v17;
      prime = *(v17 + 4);
      if (prime == 1)
      {
        break;
      }

      if ((prime & (prime - 1)) != 0)
      {
        prime = std::__next_prime(*(v17 + 4));
        v128 = *(&v151 + 8);
        v129 = prime >= *(&v151 + 1);
        if (prime > *(&v151 + 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v128 = 0;
        v129 = 1;
        if (prime)
        {
          goto LABEL_9;
        }
      }

      if (!v129)
      {
        v130 = vcvtps_u32_f32(*(&v152 + 1) / v153);
        if (*&v128 < 3uLL || (v131 = vcnt_s8(v128), v131.i16[0] = vaddlv_u8(v131), v131.u32[0] > 1uLL))
        {
          v130 = std::__next_prime(v130);
        }

        else
        {
          v132 = 1 << -__clz(v130 - 1);
          if (v130 >= 2)
          {
            v130 = v132;
          }
        }

        if (prime <= v130)
        {
          prime = v130;
        }

        if (prime < *&v128)
        {
          goto LABEL_9;
        }
      }

LABEL_10:
      for (i = v141[5]; i; i = *i)
      {
        sub_22E341014(&v151, i[4]);
      }

      v20 = *(a1 + 56);
      v21 = *v20;
      v22 = 1;
      do
      {
        v142 = v22;
        __s = sub_22E2F7154(v150, v22);
        v23 = v20[1];
        if (v23 == v21)
        {
LABEL_243:
          sub_22E34059C();
        }

        v24 = **(*v21 + 8);
        if (*(*(*v21 + 8) + 8) != v24)
        {
          for (j = 0; j < (*(*(*v21 + 8) + 8) - v24) >> 3; ++j)
          {
            if (*(a4 + j) == 1)
            {
              v26 = *(v24 + 8 * j) + 32;
            }

            else
            {
              v27 = **(a1 + 64);
              if (j >= (*(*(a1 + 64) + 8) - v27) >> 3)
              {
                sub_22E34059C();
              }

              v26 = v27 + 8 * j;
            }

            v29 = *(*v26 + 24);
            v28 = *v29;
            if (v29[1] == *v29)
            {
              sub_22E34059C();
            }

            v30 = *(*v28 + 8);
            if (v30 <= 285212703)
            {
              if (v30 <= 15)
              {
                v32 = 536870920;
                if (v30 == -2147483640)
                {
                  goto LABEL_45;
                }

                v32 = v30;
                if (v30 == 8)
                {
                  goto LABEL_45;
                }
              }

              else
              {
                if (v30 == 16)
                {
                  v32 = 16;
                  goto LABEL_46;
                }

                if (v30 == 32)
                {
                  v32 = 32;
                  goto LABEL_46;
                }

                v32 = v30;
                if (v30 == 64)
                {
                  goto LABEL_45;
                }
              }
            }

            else if (v30 > 536870927)
            {
              v34 = v30 == 536870928 || v30 == 536870976 || v30 == 536870944;
              v32 = v30;
              if (v34)
              {
                goto LABEL_45;
              }
            }

            else
            {
              if (v30 == 285212704 || v30 == 285212736)
              {
                goto LABEL_118;
              }

              v32 = v30;
              if (v30 == 536870920)
              {
LABEL_45:
                if (v32 == 285212736)
                {
                  goto LABEL_118;
                }

                goto LABEL_46;
              }
            }

            v32 = 268435488;
LABEL_46:
            if (v32 != v150)
            {
              *__p = 0u;
              *v148 = 0u;
              v149 = v153;
              v35 = *(&v151 + 1);
              if (*(&v151 + 1) == 1)
              {
                goto LABEL_67;
              }

              if ((*(&v151 + 1) & (*(&v151 + 1) - 1)) != 0)
              {
                v35 = std::__next_prime(*(&v151 + 1));
                v36 = __p[1];
                v37 = v35 >= __p[1];
                if (v35 > __p[1])
                {
                  goto LABEL_66;
                }
              }

              else
              {
                v36 = 0;
                v37 = 1;
                if (*(&v151 + 1))
                {
                  goto LABEL_66;
                }
              }

              if (v37)
              {
                goto LABEL_68;
              }

              v38 = vcvtps_u32_f32(v148[1] / v149);
              if (v36 < 3 || (v39 = vcnt_s8(v36), v39.i16[0] = vaddlv_u8(v39), v39.u32[0] > 1uLL))
              {
                v38 = std::__next_prime(v38);
              }

              else
              {
                v40 = 1 << -__clz(v38 - 1);
                if (v38 >= 2)
                {
                  v38 = v40;
                }
              }

              if (v35 <= v38)
              {
                v35 = v38;
              }

              if (v35 >= v36)
              {
LABEL_68:
                v41 = v152;
                if (!v152)
                {
                  goto LABEL_70;
                }
              }

              else
              {
                if (v35)
                {
LABEL_66:
                  if (v35 >> 61)
                  {
                    sub_22E33DD58();
                  }

LABEL_67:
                  operator new();
                }

                v97 = __p[0];
                __p[0] = 0;
                if (v97)
                {
                  operator delete(v97);
                }

                __p[1] = 0;
                v41 = v152;
                if (!v152)
                {
LABEL_70:
                  if (v148[1])
                  {
                    if (__p[1])
                    {
                      v42 = vcnt_s8(__p[1]);
                      v42.i16[0] = vaddlv_u8(v42);
                      if (v42.u32[0] > 1uLL)
                      {
                        v43 = v32;
                        if (__p[1] <= v32)
                        {
                          v43 = v32 % LODWORD(__p[1]);
                        }
                      }

                      else
                      {
                        v43 = (LODWORD(__p[1]) - 1) & v32;
                      }

                      v44 = *(__p[0] + v43);
                      if (v44)
                      {
                        v45 = *v44;
                        if (v45)
                        {
                          if (v42.u32[0] < 2uLL)
                          {
                            while (1)
                            {
                              v47 = v45[1];
                              if (v47 == v32)
                              {
                                if (*(v45 + 4) == v32)
                                {
                                  goto LABEL_92;
                                }
                              }

                              else if ((v47 & (__p[1] - 1)) != v43)
                              {
                                goto LABEL_113;
                              }

                              v45 = *v45;
                              if (!v45)
                              {
                                goto LABEL_113;
                              }
                            }
                          }

                          while (1)
                          {
                            v46 = v45[1];
                            if (v46 == v32)
                            {
                              if (*(v45 + 4) == v32)
                              {
                                goto LABEL_92;
                              }
                            }

                            else
                            {
                              if (v46 >= __p[1])
                              {
                                v46 %= __p[1];
                              }

                              if (v46 != v43)
                              {
                                goto LABEL_113;
                              }
                            }

                            v45 = *v45;
                            if (!v45)
                            {
                              goto LABEL_113;
                            }
                          }
                        }
                      }
                    }

                    goto LABEL_113;
                  }

LABEL_92:
                  v48 = sub_22E2F7154(v32, v142);
                  *(&v146.__r_.__value_.__s + 23) = 6;
                  strcpy(&v146, "prefix");
                  v49 = (&off_2787BE808)[2 * j];
                  std::string::append(&v146, v49);
                  std::string::append(&v146, __s);
                  *(&v145.__r_.__value_.__s + 23) = 6;
                  strcpy(&v145, "prefix");
                  std::string::append(&v145, v49);
                  std::string::append(&v145, v48);
                  std::string::append(&v145, "_to");
                  std::string::append(&v145, __s);
                  v50 = a4;
                  v58 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v51, v52, v53, v54);
                  if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, &v145, v56, v57);
                  }

                  else
                  {
                    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v145.__r_.__value_.__l.__data_, v56, v57);
                  }

                  objc_msgSend_setName_(v58, v60, v59, v61, v62);
                  if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, &v146, v64, v65);
                  }

                  else
                  {
                    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v146.__r_.__value_.__l.__data_, v64, v65);
                  }

                  objc_msgSend_setSpecializedName_(v58, v67, v66, v68, v69);
                  v157 = 0;
                  v74 = objc_msgSend_device(a2, v70, v71, v72, v73);
                  MPSDevice = MPSDevice::GetMPSDevice(v74);
                  os_unfair_lock_lock((MPSDevice + 1432));
                  v76 = *(MPSDevice + 1440);
                  v77 = *(MPSDevice + 1424);
                  os_unfair_lock_unlock((MPSDevice + 1432));
                  if (v77)
                  {
                    if ((v76 & 2) != 0)
                    {
                      v160 = 0u;
                      v161 = 0u;
                      v158 = 0u;
                      v159 = 0u;
                      v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, &v158, &v162, 16);
                      if (v87)
                      {
                        v88 = *v159;
                        do
                        {
                          for (k = 0; k != v87; ++k)
                          {
                            if (*v159 != v88)
                            {
                              objc_enumerationMutation(v77);
                            }

                            objc_msgSend_addFunctionWithDescriptor_library_error_(*(*(&v158 + 1) + 8 * k), v78, v58, a2, 0);
                          }

                          v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, &v158, &v162, 16);
                        }

                        while (v87);
                      }
                    }

                    else if (v76)
                    {
                      objc_msgSend_setBinaryArchives_(v58, v78, v77, v79, v80);
                      if ((v76 & 4) != 0)
                      {
                        v83 = objc_msgSend_pipelineOptions(v58, v78, v81, v82, v80);
                        objc_msgSend_setPipelineOptions_(v58, v84, v83 | 4, v85, v86);
                      }
                    }
                  }

                  v93 = objc_msgSend_newFunctionWithDescriptor_error_(a2, v78, v58, &v157, v80);
                  if (!v93 && MTLReportFailureTypeEnabled())
                  {
                    v98 = &v145;
                    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v98 = v145.__r_.__value_.__r.__words[0];
                    }

                    v139 = v98;
                    MTLReportFailure();
                  }

                  objc_msgSend_addObject_(a3, v90, v93, v91, v92, v139);
                  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v145.__r_.__value_.__l.__data_);
                    a4 = v50;
                    if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_113;
                    }
                  }

                  else
                  {
                    a4 = v50;
                    if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_113:
                      v94 = v148[0];
                      if (v148[0])
                      {
                        do
                        {
                          v95 = *v94;
                          operator delete(v94);
                          v94 = v95;
                        }

                        while (v95);
                      }

                      v96 = __p[0];
                      __p[0] = 0;
                      if (v96)
                      {
                        operator delete(v96);
                      }

                      v20 = *(a1 + 56);
                      v21 = *v20;
                      goto LABEL_118;
                    }
                  }

                  operator delete(v146.__r_.__value_.__l.__data_);
                  goto LABEL_113;
                }
              }

              do
              {
                sub_22E341014(__p, *(v41 + 4));
                v41 = *v41;
              }

              while (v41);
              goto LABEL_70;
            }

LABEL_118:
            v23 = v20[1];
            if (v23 == v21)
            {
              goto LABEL_243;
            }

            v24 = **(*v21 + 8);
          }
        }

        if (v23 != v21)
        {
          v99 = 0;
          while (1)
          {
            v100 = **(*v21 + 24);
            if (*(*(*v21 + 24) + 8) == v100)
            {
              sub_22E34059C();
            }

            v101 = *(*v100 + 8);
            if (v101 > 285212703)
            {
              break;
            }

            if (v101 <= 15)
            {
              v103 = 536870920;
              if (v101 == -2147483640)
              {
                goto LABEL_161;
              }

              v103 = v101;
              if (v101 == 8)
              {
                goto LABEL_161;
              }

LABEL_159:
              v103 = 268435488;
              goto LABEL_162;
            }

            if (v101 != 16)
            {
              if (v101 == 32)
              {
                v103 = 32;
LABEL_161:
                if (v103 == 285212736)
                {
                  goto LABEL_134;
                }

                goto LABEL_162;
              }

              v103 = v101;
              if (v101 == 64)
              {
                goto LABEL_161;
              }

              goto LABEL_159;
            }

            v103 = 16;
LABEL_162:
            if (v103 != v150)
            {
              v162 = 0u;
              v163 = 0u;
              v164 = v153;
              v106 = *(&v151 + 1);
              if (*(&v151 + 1) == 1)
              {
                goto LABEL_181;
              }

              if ((*(&v151 + 1) & (*(&v151 + 1) - 1)) != 0)
              {
                v106 = std::__next_prime(*(&v151 + 1));
                v107 = *(&v162 + 8);
                v108 = v106 >= *(&v162 + 1);
                if (v106 > *(&v162 + 1))
                {
                  goto LABEL_180;
                }
              }

              else
              {
                v107 = 0;
                v108 = 1;
                if (*(&v151 + 1))
                {
                  goto LABEL_180;
                }
              }

              if (v108)
              {
                goto LABEL_182;
              }

              v109 = vcvtps_u32_f32(*(&v163 + 1) / v164);
              if (*&v107 < 3uLL || (v110 = vcnt_s8(v107), v110.i16[0] = vaddlv_u8(v110), v110.u32[0] > 1uLL))
              {
                v109 = std::__next_prime(v109);
              }

              else
              {
                v111 = 1 << -__clz(v109 - 1);
                if (v109 >= 2)
                {
                  v109 = v111;
                }
              }

              if (v106 <= v109)
              {
                v106 = v109;
              }

              if (v106 >= *&v107)
              {
LABEL_182:
                v112 = v152;
                if (v152)
                {
                  goto LABEL_183;
                }
              }

              else
              {
                if (v106)
                {
LABEL_180:
                  if (v106 >> 61)
                  {
                    sub_22E33DD58();
                  }

LABEL_181:
                  operator new();
                }

                v124 = v162;
                *&v162 = 0;
                if (v124)
                {
                  operator delete(v124);
                }

                *(&v162 + 1) = 0;
                v112 = v152;
                if (!v152)
                {
                  goto LABEL_184;
                }

                do
                {
LABEL_183:
                  sub_22E341014(&v162, *(v112 + 4));
                  v112 = *v112;
                }

                while (v112);
              }

LABEL_184:
              if (*(&v163 + 1))
              {
                if (*(&v162 + 1))
                {
                  v113 = vcnt_s8(*(&v162 + 8));
                  v113.i16[0] = vaddlv_u8(v113);
                  if (v113.u32[0] > 1uLL)
                  {
                    v114 = v103;
                    if (*(&v162 + 1) <= v103)
                    {
                      v114 = v103 % DWORD2(v162);
                    }
                  }

                  else
                  {
                    v114 = (DWORD2(v162) - 1) & v103;
                  }

                  v115 = *(v162 + 8 * v114);
                  if (v115)
                  {
                    v116 = *v115;
                    if (v116)
                    {
                      if (v113.u32[0] < 2uLL)
                      {
                        while (1)
                        {
                          v118 = v116[1];
                          if (v118 == v103)
                          {
                            if (*(v116 + 4) == v103)
                            {
                              goto LABEL_206;
                            }
                          }

                          else if ((v118 & (*(&v162 + 1) - 1)) != v114)
                          {
                            goto LABEL_207;
                          }

                          v116 = *v116;
                          if (!v116)
                          {
                            goto LABEL_207;
                          }
                        }
                      }

                      do
                      {
                        v117 = v116[1];
                        if (v117 == v103)
                        {
                          if (*(v116 + 4) == v103)
                          {
                            goto LABEL_206;
                          }
                        }

                        else
                        {
                          if (v117 >= *(&v162 + 1))
                          {
                            v117 %= *(&v162 + 1);
                          }

                          if (v117 != v114)
                          {
                            break;
                          }
                        }

                        v116 = *v116;
                      }

                      while (v116);
                    }
                  }
                }
              }

              else
              {
LABEL_206:
                v119 = sub_22E2F7154(v103, v142);
                v120 = (&off_2787BE808)[2 * v99];
                sub_22E2F75D0(a2, a3, v120, __s, v119, 0);
                sub_22E2F75D0(a2, a3, v120, __s, v119, 1);
              }

LABEL_207:
              v121 = v163;
              if (v163)
              {
                do
                {
                  v122 = *v121;
                  operator delete(v121);
                  v121 = v122;
                }

                while (v122);
              }

              v123 = v162;
              *&v162 = 0;
              if (v123)
              {
                operator delete(v123);
              }

              v20 = *(a1 + 56);
              v21 = *v20;
            }

LABEL_134:
            if (++v99 >= ((v20[1] - v21) >> 3))
            {
              goto LABEL_13;
            }
          }

          if (v101 > 536870927)
          {
            v105 = v101 == 536870928 || v101 == 536870976 || v101 == 536870944;
            v103 = v101;
            if (v105)
            {
              goto LABEL_161;
            }
          }

          else
          {
            if (v101 == 285212704 || v101 == 285212736)
            {
              goto LABEL_134;
            }

            v103 = v101;
            if (v101 == 536870920)
            {
              goto LABEL_161;
            }
          }

          goto LABEL_159;
        }

LABEL_13:
        v22 = v142 + 3;
      }

      while (v142 < 2);
      v125 = v152;
      if (v152)
      {
        do
        {
          v126 = *v125;
          operator delete(v125);
          v125 = v126;
        }

        while (v126);
      }

      v127 = v151;
      *&v151 = 0;
      if (v127)
      {
        operator delete(v127);
      }

      v17 = *v141;
      if (!*v141)
      {
        v133 = v155[0];
        v7 = v140;
        if (v155[0])
        {
          do
          {
            v135 = *v133;
            v136 = v133[5];
            if (v136)
            {
              do
              {
                v137 = *v136;
                operator delete(v136);
                v136 = v137;
              }

              while (v137);
            }

            v138 = v133[3];
            v133[3] = 0;
            if (v138)
            {
              operator delete(v138);
            }

            operator delete(v133);
            v133 = v135;
          }

          while (v135);
        }

        goto LABEL_235;
      }
    }

    prime = 2;
LABEL_9:
    sub_22E340E80(&v151, prime);
    goto LABEL_10;
  }

LABEL_235:
  v134 = v154[0];
  v154[0] = 0;
  if (v134)
  {
    operator delete(v134);
  }

  objc_autoreleasePoolPop(v7);
}

void sub_22E2F65F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, void *__p)
{
  v44 = __p;
  if (__p)
  {
    do
    {
      v45 = *v44;
      v46 = v44[5];
      if (v46)
      {
        do
        {
          v47 = *v46;
          operator delete(v46);
          v46 = v47;
        }

        while (v47);
      }

      v48 = v44[3];
      v44[3] = 0;
      if (v48)
      {
        operator delete(v48);
      }

      operator delete(v44);
      v44 = v45;
    }

    while (v45);
  }

  if (!a41)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a41);
  _Unwind_Resume(exception_object);
}

void MPSKernelDAG::MPSKernelDAG(void *a1)
{
  *a1 = &unk_2842175C0;
  BaseOperation::BaseOperation(a1);
}

{
  *a1 = &unk_2842175C0;
  BaseOperation::BaseOperation(a1);
}

void MPSKernelDAG::~MPSKernelDAG(MPSKernelDAG *this)
{
  *this = &unk_28421A458;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x2318E5730](v2, 0x80C40D6874129);
  }

  v4 = *(this + 7);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      *(v4 + 8) = v5;
      operator delete(v5);
    }

    MEMORY[0x2318E5730](v4, 0x80C40D6874129);
  }

  *this = &unk_2842175C0;
  v6 = *(this + 6);
  v7 = *v6;
  if (*(v6 + 8) != *v6)
  {
    v8 = 0;
    do
    {
      v9 = v7[v8];
      if (v9)
      {
        (*(*v9 + 8))(v7[v8]);
        v6 = *(this + 6);
        v7 = *v6;
      }

      ++v8;
    }

    while (v8 < (*(v6 + 8) - v7) >> 3);
  }

  if (v7)
  {
    *(v6 + 8) = v7;
    operator delete(v7);
  }

  MEMORY[0x2318E5730](v6, 0x80C40D6874129);

  BaseOperation::~BaseOperation(this);
}

{
  *this = &unk_28421A458;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x2318E5730](v2, 0x80C40D6874129);
  }

  v4 = *(this + 7);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      *(v4 + 8) = v5;
      operator delete(v5);
    }

    MEMORY[0x2318E5730](v4, 0x80C40D6874129);
  }

  *this = &unk_2842175C0;
  v6 = *(this + 6);
  v7 = *v6;
  if (*(v6 + 8) != *v6)
  {
    v8 = 0;
    do
    {
      v9 = v7[v8];
      if (v9)
      {
        (*(*v9 + 8))(v7[v8]);
        v6 = *(this + 6);
        v7 = *v6;
      }

      ++v8;
    }

    while (v8 < (*(v6 + 8) - v7) >> 3);
  }

  if (v7)
  {
    *(v6 + 8) = v7;
    operator delete(v7);
  }

  MEMORY[0x2318E5730](v6, 0x80C40D6874129);

  BaseOperation::~BaseOperation(this);
}

{
  *this = &unk_28421A458;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x2318E5730](v2, 0x80C40D6874129);
  }

  v4 = *(this + 7);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      *(v4 + 8) = v5;
      operator delete(v5);
    }

    MEMORY[0x2318E5730](v4, 0x80C40D6874129);
  }

  *this = &unk_2842175C0;
  v6 = *(this + 6);
  v7 = *v6;
  if (*(v6 + 8) != *v6)
  {
    v8 = 0;
    do
    {
      v9 = v7[v8];
      if (v9)
      {
        (*(*v9 + 8))(v7[v8]);
        v6 = *(this + 6);
        v7 = *v6;
      }

      ++v8;
    }

    while (v8 < (*(v6 + 8) - v7) >> 3);
  }

  if (v7)
  {
    *(v6 + 8) = v7;
    operator delete(v7);
  }

  MEMORY[0x2318E5730](v6, 0x80C40D6874129);
  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

const char *sub_22E2F7154(int a1, uint64_t a2)
{
  if (a2 == 3)
  {
    if (a1 > 285212735)
    {
      if (a1 <= 536870927)
      {
        if (a1 == 285212736)
        {
          return "_3xcf";
        }

        if (a1 == 536870920)
        {
          return "_3xi8";
        }
      }

      else
      {
        switch(a1)
        {
          case 536870928:
            return "_3xi16";
          case 536870944:
            return "_3xi";
          case 536870976:
            return "_3xi64";
        }
      }
    }

    else if (a1 <= 31)
    {
      if (a1 == 8)
      {
        return "_3xu8";
      }

      if (a1 == 16)
      {
        return "_3xu16";
      }
    }

    else
    {
      if (a1 == 32)
      {
        return "_3xu";
      }

      if (a1 == 64)
      {
        return "_3xu64";
      }
    }

    return "_3xf";
  }

  if (a2 == 2)
  {
    if (a1 > 285212735)
    {
      if (a1 <= 536870927)
      {
        if (a1 == 285212736)
        {
          return "_2xcf";
        }

        if (a1 == 536870920)
        {
          return "_2xi8";
        }
      }

      else
      {
        switch(a1)
        {
          case 536870928:
            return "_2xi16";
          case 536870944:
            return "_2xi";
          case 536870976:
            return "_2xi64";
        }
      }
    }

    else if (a1 <= 31)
    {
      if (a1 == 8)
      {
        return "_2xu8";
      }

      if (a1 == 16)
      {
        return "_2xu16";
      }
    }

    else
    {
      if (a1 == 32)
      {
        return "_2xu";
      }

      if (a1 == 64)
      {
        return "_2xu64";
      }
    }

    return "_2xf";
  }

  if (a2 != 1)
  {
    if (a1 > 285212735)
    {
      if (a1 <= 536870927)
      {
        if (a1 == 285212736)
        {
          return "_4xcf";
        }

        if (a1 == 536870920)
        {
          return "_4xi8";
        }
      }

      else
      {
        switch(a1)
        {
          case 536870928:
            return "_4xi16";
          case 536870944:
            return "_4xi";
          case 536870976:
            return "_4xi64";
        }
      }
    }

    else
    {
      if (a1 > 31)
      {
        if (a1 == 32)
        {
          return "_4xu";
        }

        if (a1 == 64)
        {
          return "_4xu64";
        }

        return "_4xf";
      }

      if (a1 == 8)
      {
        return "_4xu8";
      }

      if (a1 == 16)
      {
        return "_4xu16";
      }
    }

    return "_4xf";
  }

  if (a1 > 285212735)
  {
    if (a1 <= 536870927)
    {
      if (a1 == 285212736)
      {
        return "_cf";
      }

      else
      {
        if (a1 != 536870920)
        {
          return "_f";
        }

        return "_i8";
      }
    }

    else
    {
      switch(a1)
      {
        case 536870928:
          return "_i16";
        case 536870944:
          return "_i";
        case 536870976:
          return "_i64";
        default:
          return "_f";
      }
    }
  }

  else if (a1 <= 31)
  {
    if (a1 == 8)
    {
      return "_u8";
    }

    else
    {
      if (a1 != 16)
      {
        return "_f";
      }

      return "_u16";
    }
  }

  else if (a1 == 32)
  {
    return "_u";
  }

  else
  {
    if (a1 != 64)
    {
      return "_f";
    }

    return "_u64";
  }
}

void sub_22E2F75D0(void *a1, void *a2, std::string::value_type *__s, const std::string::value_type *a4, const std::string::value_type *a5, int a6)
{
  *(&v45.__r_.__value_.__s + 23) = 7;
  strcpy(&v45, "postfix");
  std::string::append(&v45, __s);
  if (a6)
  {
    std::string::append(&v45, "Accumulate");
  }

  std::string::append(&v45, a4);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_22E3404E0(&v44, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    v44 = v45;
  }

  std::string::append(&v44, "_to");
  std::string::append(&v44, a5);
  v18 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v11, v12, v13, v14);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, &v44, v16, v17);
  }

  else
  {
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v44.__r_.__value_.__l.__data_, v16, v17);
  }

  objc_msgSend_setName_(v18, v20, v19, v21, v22);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, &v45, v24, v25);
  }

  else
  {
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v45.__r_.__value_.__l.__data_, v24, v25);
  }

  objc_msgSend_setSpecializedName_(v18, v27, v26, v28, v29);
  v46 = 0;
  v34 = objc_msgSend_device(a1, v30, v31, v32, v33);
  MPSDevice = MPSDevice::GetMPSDevice(v34);
  MPSDevice::AddBinaryArchives(MPSDevice, v18, a1);
  v41 = objc_msgSend_newFunctionWithDescriptor_error_(a1, v36, v18, &v46, v37);
  if (!v41 && MTLReportFailureTypeEnabled())
  {
    v42 = &v44;
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v42 = v44.__r_.__value_.__r.__words[0];
    }

    v43 = v42;
    MTLReportFailure();
  }

  objc_msgSend_addObject_(a2, v38, v41, v39, v40, v43);
  if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(v45.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v44.__r_.__value_.__l.__data_);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_17;
  }
}

void sub_22E2F77D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a23 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_22E2F7838(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, int a6, int a7, unint64_t a8, _BYTE *a9)
{
  v160 = *MEMORY[0x277D85DE8];
  v13 = 536870920;
  v151[0] = 0;
  v151[1] = 0;
  v149 = 0;
  v150 = v151;
  v147 = 0;
  v148 = 0;
  if (a6 > 285212703)
  {
    if (a6 <= 536870927)
    {
      if (a6 != 285212704 && a6 != 285212736)
      {
        v14 = a6;
        if (a6 == 536870920)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      v14 = 285212736;
      goto LABEL_21;
    }

    if (a6 != 536870928 && a6 != 536870976)
    {
      v14 = a6;
      if (a6 == 536870944)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

LABEL_16:
    v14 = a6;
    goto LABEL_21;
  }

  if (a6 > 15)
  {
    if (a6 != 16 && a6 != 32)
    {
      v14 = a6;
      if (a6 == 64)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v14 = 536870920;
  if (a6 != -2147483640)
  {
    v14 = a6;
    if (a6 != 8)
    {
LABEL_19:
      v14 = 268435488;
    }
  }

LABEL_21:
  v15 = sub_22E2F7154(v14, a5);
  v16 = strlen(v15);
  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  v17 = v16;
  if (v16 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v16;
  if (v16)
  {
    memcpy(&__dst, v15, v16);
  }

  __dst.__r_.__value_.__s.__data_[v17] = 0;
  memset(&v155, 0, sizeof(v155));
  std::string::reserve(&v155, 0x16uLL);
  MEMORY[0x2318E5600](&v155, "");
  if (a7)
  {
    std::to_string(&v159, a8);
    v18 = std::string::insert(&v159, 0, "setupCoordSizeDst");
    v19 = a2;
    v20 = *&v18->__r_.__value_.__l.__data_;
    v156.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v156.__r_.__value_.__l.__data_ = v20;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    v23 = std::string::append(&v156, p_dst, size);
    v24 = v23->__r_.__value_.__r.__words[0];
    v158.__r_.__value_.__r.__words[0] = v23->__r_.__value_.__l.__size_;
    *(v158.__r_.__value_.__r.__words + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
    v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v155.__r_.__value_.__l.__data_);
    }

    v155.__r_.__value_.__r.__words[0] = v24;
    v155.__r_.__value_.__l.__size_ = v158.__r_.__value_.__r.__words[0];
    *(&v155.__r_.__value_.__r.__words[1] + 7) = *(v158.__r_.__value_.__r.__words + 7);
    *(&v155.__r_.__value_.__s + 23) = v25;
    if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v156.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }
    }

    else if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    v29 = v159.__r_.__value_.__r.__words[0];
    goto LABEL_45;
  }

  std::to_string(&v156, a8);
  v19 = a2;
  v26 = std::string::insert(&v156, 0, "setupCoordSizeSrc");
  v27 = v26->__r_.__value_.__r.__words[0];
  v159.__r_.__value_.__r.__words[0] = v26->__r_.__value_.__l.__size_;
  *(v159.__r_.__value_.__r.__words + 7) = *(&v26->__r_.__value_.__r.__words[1] + 7);
  v28 = HIBYTE(v26->__r_.__value_.__r.__words[2]);
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v155.__r_.__value_.__l.__data_);
  }

  v155.__r_.__value_.__r.__words[0] = v27;
  v155.__r_.__value_.__l.__size_ = v159.__r_.__value_.__r.__words[0];
  *(&v155.__r_.__value_.__r.__words[1] + 7) = *(v159.__r_.__value_.__r.__words + 7);
  *(&v155.__r_.__value_.__s + 23) = v28;
  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
  {
    v29 = v156.__r_.__value_.__r.__words[0];
LABEL_45:
    operator delete(v29);
  }

LABEL_46:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (a7)
    {
      goto LABEL_48;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (a7)
    {
LABEL_48:
      std::to_string(&v153, 0);
      v30 = std::string::insert(&v153, 0, "NODE(Node_");
      v31 = *&v30->__r_.__value_.__l.__data_;
      v158.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
      *&v158.__r_.__value_.__l.__data_ = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      v32 = std::string::append(&v158, ") : FUNCTION(");
      v33 = *&v32->__r_.__value_.__l.__data_;
      v159.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
      *&v159.__r_.__value_.__l.__data_ = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v155;
      }

      else
      {
        v34 = v155.__r_.__value_.__r.__words[0];
      }

      if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = HIBYTE(v155.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = v155.__r_.__value_.__l.__size_;
      }

      v36 = std::string::append(&v159, v34, v35);
      v37 = *&v36->__r_.__value_.__l.__data_;
      v156.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&v156.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = std::string::append(&v156, "), INPUT(0), INPUT(1), INPUT(2), INPUT(3), INPUT(4);\n");
      goto LABEL_63;
    }
  }

  std::to_string(&v153, 0);
  v39 = std::string::insert(&v153, 0, "NODE(Node_");
  v40 = *&v39->__r_.__value_.__l.__data_;
  v158.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
  *&v158.__r_.__value_.__l.__data_ = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  v41 = std::string::append(&v158, ") : FUNCTION(");
  v42 = *&v41->__r_.__value_.__l.__data_;
  v159.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
  *&v159.__r_.__value_.__l.__data_ = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &v155;
  }

  else
  {
    v43 = v155.__r_.__value_.__r.__words[0];
  }

  if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = HIBYTE(v155.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v44 = v155.__r_.__value_.__l.__size_;
  }

  v45 = std::string::append(&v159, v43, v44);
  v46 = *&v45->__r_.__value_.__l.__data_;
  v156.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
  *&v156.__r_.__value_.__l.__data_ = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  v38 = std::string::append(&v156, "), INPUT(0), INPUT(1), INPUT(2), INPUT(3);\n");
LABEL_63:
  v47 = v38->__r_.__value_.__r.__words[0];
  v157.__r_.__value_.__r.__words[0] = v38->__r_.__value_.__l.__size_;
  *(v157.__r_.__value_.__r.__words + 7) = *(&v38->__r_.__value_.__r.__words[1] + 7);
  v48 = HIBYTE(v38->__r_.__value_.__r.__words[2]);
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v49 = v157.__r_.__value_.__r.__words[0];
  *a1 = v47;
  *(a1 + 8) = v49;
  *(a1 + 15) = *(v157.__r_.__value_.__r.__words + 7);
  *(a1 + 23) = v48;
  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v156.__r_.__value_.__l.__data_);
    v50 = v19;
    if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_67:
      if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_73;
    }
  }

  else
  {
    v50 = v19;
    if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }
  }

  operator delete(v159.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_68:
    if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v158.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_69:
    if (!a3)
    {
      goto LABEL_79;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(v153.__r_.__value_.__l.__data_);
  if (!a3)
  {
    goto LABEL_79;
  }

LABEL_75:
  v54 = objc_autoreleasePoolPush();
  if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, &v155, v52, v53);
  }

  else
  {
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v155.__r_.__value_.__l.__data_, v52, v53);
  }

  v59 = v55;
  v60 = objc_msgSend_newFunctionWithName_(a3, v56, v55, v57, v58);
  objc_msgSend_setObject_forKey_(a4, v61, v60, v59, v62);
  objc_autoreleasePoolPop(v54);
LABEL_79:
  if (!a7)
  {
    goto LABEL_111;
  }

  *(&v159.__r_.__value_.__s + 23) = 16;
  strcpy(&v159, "extractCoordSize");
  v63 = std::string::append(&v159, v15);
  v64 = *&v63->__r_.__value_.__l.__data_;
  v156.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
  *&v156.__r_.__value_.__l.__data_ = v64;
  v63->__r_.__value_.__l.__size_ = 0;
  v63->__r_.__value_.__r.__words[2] = 0;
  v63->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v159.__r_.__value_.__l.__data_);
  }

  std::to_string(&v152, 1);
  v65 = std::string::insert(&v152, 0, "NODE(Node_");
  v66 = *&v65->__r_.__value_.__l.__data_;
  v157.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
  *&v157.__r_.__value_.__l.__data_ = v66;
  v65->__r_.__value_.__l.__size_ = 0;
  v65->__r_.__value_.__r.__words[2] = 0;
  v65->__r_.__value_.__r.__words[0] = 0;
  v67 = std::string::append(&v157, ") : FUNCTION(");
  v68 = *&v67->__r_.__value_.__l.__data_;
  v153.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
  *&v153.__r_.__value_.__l.__data_ = v68;
  v67->__r_.__value_.__l.__size_ = 0;
  v67->__r_.__value_.__r.__words[2] = 0;
  v67->__r_.__value_.__r.__words[0] = 0;
  if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v69 = &v156;
  }

  else
  {
    v69 = v156.__r_.__value_.__r.__words[0];
  }

  if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v70 = HIBYTE(v156.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v70 = v156.__r_.__value_.__l.__size_;
  }

  v71 = std::string::append(&v153, v69, v70);
  v72 = *&v71->__r_.__value_.__l.__data_;
  v158.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
  *&v158.__r_.__value_.__l.__data_ = v72;
  v71->__r_.__value_.__l.__size_ = 0;
  v71->__r_.__value_.__r.__words[2] = 0;
  v71->__r_.__value_.__r.__words[0] = 0;
  v73 = std::string::append(&v158, "), NODE(Node_0);\n");
  v74 = *&v73->__r_.__value_.__l.__data_;
  v159.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
  *&v159.__r_.__value_.__l.__data_ = v74;
  v73->__r_.__value_.__l.__size_ = 0;
  v73->__r_.__value_.__r.__words[2] = 0;
  v73->__r_.__value_.__r.__words[0] = 0;
  if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v75 = &v159;
  }

  else
  {
    v75 = v159.__r_.__value_.__r.__words[0];
  }

  if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v76 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v76 = v159.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v75, v76);
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v159.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_96:
      if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_103;
    }
  }

  else if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_96;
  }

  operator delete(v158.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_97:
    if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_104;
  }

LABEL_103:
  operator delete(v153.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_98:
    if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_105;
  }

LABEL_104:
  operator delete(v157.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_99:
    if (!a3)
    {
      goto LABEL_110;
    }

    goto LABEL_106;
  }

LABEL_105:
  operator delete(v152.__r_.__value_.__l.__data_);
  if (!a3)
  {
    goto LABEL_110;
  }

LABEL_106:
  v80 = objc_autoreleasePoolPush();
  if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, &v156, v78, v79);
  }

  else
  {
    v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, v156.__r_.__value_.__l.__data_, v78, v79);
  }

  v85 = v81;
  v86 = objc_msgSend_newFunctionWithName_(a3, v82, v81, v83, v84);
  objc_msgSend_setObject_forKey_(a4, v87, v86, v85, v88);
  objc_autoreleasePoolPop(v80);
LABEL_110:
  if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_111:
    if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  operator delete(v156.__r_.__value_.__l.__data_);
  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_112:
    operator delete(v155.__r_.__value_.__l.__data_);
  }

LABEL_113:
  v89 = **(v50 + 24);
  if (*(*(v50 + 24) + 8) == v89)
  {
    sub_22E34059C();
  }

  v90 = *(*v89 + 8);
  if (v90 > 285212703)
  {
    if (v90 <= 536870927)
    {
      if (v90 != 285212704 && v90 != 285212736)
      {
        v13 = v90;
        if (v90 == 536870920)
        {
          goto LABEL_136;
        }

        goto LABEL_132;
      }

      v13 = 285212736;
      goto LABEL_136;
    }

    if (v90 != 536870928 && v90 != 536870976)
    {
      v13 = v90;
      if (v90 == 536870944)
      {
        goto LABEL_136;
      }

      goto LABEL_132;
    }

LABEL_129:
    v13 = v90;
    goto LABEL_136;
  }

  if (v90 > 15)
  {
    if (v90 != 16 && v90 != 32)
    {
      v13 = v90;
      if (v90 == 64)
      {
        goto LABEL_136;
      }

      goto LABEL_132;
    }

    goto LABEL_129;
  }

  if (v90 != -2147483640)
  {
    v13 = v90;
    if (v90 != 8)
    {
LABEL_132:
      v13 = 268435488;
    }
  }

LABEL_136:
  v91 = sub_22E2F7154(v13, a5);
  v92 = v91;
  *(&v158.__r_.__value_.__s + 23) = 12;
  strcpy(&v158, "NODE(Node_0)");
  if (!a7)
  {
    v94 = 0;
    goto LABEL_156;
  }

  v159.__r_.__value_.__s.__data_[0] = 0;
  *(&v156.__r_.__value_.__s + 23) = 0;
  v156.__r_.__value_.__s.__data_[0] = 0;
  v93 = strlen(v91);
  if (v93 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  v94 = v93;
  if (v93 >= 0x17)
  {
    operator new();
  }

  v146 = v93;
  if (v93)
  {
    memmove(__p, v92, v93);
  }

  *(__p + v94) = 0;
  v95 = sub_22E33ED30(a3, a4, v50, &v159, &v156, 0, __p);
  LODWORD(v94) = v95;
  if (v146 < 0)
  {
    operator delete(__p[0]);
    if (v94 >= 2)
    {
LABEL_146:
      if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v96 = &v156;
      }

      else
      {
        v96 = v156.__r_.__value_.__r.__words[0];
      }

      if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = HIBYTE(v156.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v97 = v156.__r_.__value_.__l.__size_;
      }

      std::string::append(a1, v96, v97);
      *a9 = 1;
      v94 = v94;
      if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_153;
      }

      goto LABEL_156;
    }
  }

  else if (v95 >= 2)
  {
    goto LABEL_146;
  }

  v94 = v94;
  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_153:
    operator delete(v156.__r_.__value_.__l.__data_);
  }

LABEL_156:
  sub_22E33F48C(v50, a5, &v147, &v150, a4, a3, v94, v94, a7, a7 ^ 1, &v158);
  v98 = v147;
  v99 = v148;
  if (v147 != v148)
  {
    do
    {
      v100 = *v98;
      v101 = v151[0];
      if (!v151[0])
      {
LABEL_163:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v102 = v101;
          v103 = *(v101 + 8);
          if (v100 >= v103)
          {
            break;
          }

          v101 = *v102;
          if (!*v102)
          {
            goto LABEL_163;
          }
        }

        if (v103 >= v100)
        {
          break;
        }

        v101 = *(v102 + 1);
        if (!v101)
        {
          goto LABEL_163;
        }
      }

      v104 = v102[63];
      if (v104 >= 0)
      {
        v105 = v102 + 40;
      }

      else
      {
        v105 = *(v102 + 5);
      }

      if (v104 >= 0)
      {
        v106 = v102[63];
      }

      else
      {
        v106 = *(v102 + 6);
      }

      std::string::append(a1, v105, v106);
      ++v98;
    }

    while (v98 != v99);
  }

  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_22E3404E0(&v144, v158.__r_.__value_.__l.__data_, v158.__r_.__value_.__l.__size_);
  }

  else
  {
    v144 = v158;
  }

  v107 = strlen(v92);
  if (v107 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_22E33DEAC();
  }

  v108 = v107;
  if (v107 >= 0x17)
  {
    operator new();
  }

  *(&v156.__r_.__value_.__s + 23) = v107;
  if (v107)
  {
    memcpy(&v156, v92, v107);
  }

  v156.__r_.__value_.__s.__data_[v108] = 0;
  std::operator+<char>();
  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v156.__r_.__value_.__l.__data_);
  }

  std::operator+<char>();
  v109 = std::string::append(&__dst, "), ");
  v110 = *&v109->__r_.__value_.__l.__data_;
  v155.__r_.__value_.__r.__words[2] = v109->__r_.__value_.__r.__words[2];
  *&v155.__r_.__value_.__l.__data_ = v110;
  v109->__r_.__value_.__l.__size_ = 0;
  v109->__r_.__value_.__r.__words[2] = 0;
  v109->__r_.__value_.__r.__words[0] = 0;
  if ((v144.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v111 = &v144;
  }

  else
  {
    v111 = v144.__r_.__value_.__r.__words[0];
  }

  if ((v144.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v112 = HIBYTE(v144.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v112 = v144.__r_.__value_.__l.__size_;
  }

  v113 = std::string::append(&v155, v111, v112);
  v114 = *&v113->__r_.__value_.__l.__data_;
  v156.__r_.__value_.__r.__words[2] = v113->__r_.__value_.__r.__words[2];
  *&v156.__r_.__value_.__l.__data_ = v114;
  v113->__r_.__value_.__l.__size_ = 0;
  v113->__r_.__value_.__r.__words[2] = 0;
  v113->__r_.__value_.__r.__words[0] = 0;
  v115 = std::string::append(&v156, ";\n");
  v116 = *&v115->__r_.__value_.__l.__data_;
  v153.__r_.__value_.__r.__words[2] = v115->__r_.__value_.__r.__words[2];
  *&v153.__r_.__value_.__l.__data_ = v116;
  v115->__r_.__value_.__l.__size_ = 0;
  v115->__r_.__value_.__r.__words[2] = 0;
  v115->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v156.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_190:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_191;
      }

LABEL_195:
      operator delete(__dst.__r_.__value_.__l.__data_);
      if (!a7)
      {
        goto LABEL_207;
      }

LABEL_196:
      std::operator+<char>();
      v117 = std::string::append(&__dst, "), ");
      v118 = *&v117->__r_.__value_.__l.__data_;
      v155.__r_.__value_.__r.__words[2] = v117->__r_.__value_.__r.__words[2];
      *&v155.__r_.__value_.__l.__data_ = v118;
      v117->__r_.__value_.__l.__size_ = 0;
      v117->__r_.__value_.__r.__words[2] = 0;
      v117->__r_.__value_.__r.__words[0] = 0;
      if ((v144.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v119 = &v144;
      }

      else
      {
        v119 = v144.__r_.__value_.__r.__words[0];
      }

      if ((v144.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v120 = HIBYTE(v144.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v120 = v144.__r_.__value_.__l.__size_;
      }

      v121 = std::string::append(&v155, v119, v120);
      v122 = *&v121->__r_.__value_.__l.__data_;
      v156.__r_.__value_.__r.__words[2] = v121->__r_.__value_.__r.__words[2];
      *&v156.__r_.__value_.__l.__data_ = v122;
      v121->__r_.__value_.__l.__size_ = 0;
      v121->__r_.__value_.__r.__words[2] = 0;
      v121->__r_.__value_.__r.__words[0] = 0;
      v123 = std::string::append(&v156, ";\n");
      v124 = v123->__r_.__value_.__r.__words[0];
      v157.__r_.__value_.__r.__words[0] = v123->__r_.__value_.__l.__size_;
      *(v157.__r_.__value_.__r.__words + 7) = *(&v123->__r_.__value_.__r.__words[1] + 7);
      v125 = HIBYTE(v123->__r_.__value_.__r.__words[2]);
      v123->__r_.__value_.__l.__size_ = 0;
      v123->__r_.__value_.__r.__words[2] = 0;
      v123->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v153.__r_.__value_.__l.__data_);
      }

      v153.__r_.__value_.__r.__words[0] = v124;
      v153.__r_.__value_.__l.__size_ = v157.__r_.__value_.__r.__words[0];
      *(&v153.__r_.__value_.__r.__words[1] + 7) = *(v157.__r_.__value_.__r.__words + 7);
      *(&v153.__r_.__value_.__s + 23) = v125;
      if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v156.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_206:
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_207;
          }

          goto LABEL_232;
        }
      }

      else if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_206;
      }

      operator delete(v155.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_207;
      }

LABEL_232:
      operator delete(__dst.__r_.__value_.__l.__data_);
      if (!a3)
      {
        goto LABEL_212;
      }

      goto LABEL_208;
    }
  }

  else if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_190;
  }

  operator delete(v155.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_195;
  }

LABEL_191:
  if (a7)
  {
    goto LABEL_196;
  }

LABEL_207:
  if (!a3)
  {
    goto LABEL_212;
  }

LABEL_208:
  v129 = objc_autoreleasePoolPush();
  if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v130 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, &v159, v127, v128);
  }

  else
  {
    v130 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, v159.__r_.__value_.__l.__data_, v127, v128);
  }

  v134 = v130;
  v135 = objc_msgSend_newFunctionWithName_(a3, v131, v130, v132, v133);
  objc_msgSend_setObject_forKey_(a4, v136, v135, v134, v137);
  objc_autoreleasePoolPop(v129);
LABEL_212:
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v159.__r_.__value_.__l.__data_);
  }

  if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v138 = &v153;
  }

  else
  {
    v138 = v153.__r_.__value_.__r.__words[0];
  }

  if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v139 = HIBYTE(v153.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v139 = v153.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v138, v139);
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_222:
      if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_223;
      }

LABEL_228:
      operator delete(v158.__r_.__value_.__l.__data_);
      v140 = v147;
      if (!v147)
      {
        goto LABEL_225;
      }

      goto LABEL_224;
    }
  }

  else if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_222;
  }

  operator delete(v144.__r_.__value_.__l.__data_);
  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_228;
  }

LABEL_223:
  v140 = v147;
  if (v147)
  {
LABEL_224:
    operator delete(v140);
  }

LABEL_225:
  sub_22E3402C4(v151[0]);
}

void sub_22E2F883C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, char *a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (*(v58 - 137) < 0)
  {
    operator delete(*(v58 - 160));
  }

  if (*(v57 + 23) < 0)
  {
    operator delete(*v57);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_22E3402C4(a32);
  _Unwind_Resume(a1);
}

void MPSKernelDAG::addOpToGraph(MPSKernelDAG *this, MPSDAGKernelOp *a2)
{
  v2 = *(this + 6);
  *(a2 + 10) = (v2[1] - *v2) >> 3;
  v3 = a2;
  sub_22E2F8CC8(v2, &v3);
}

void sub_22E2F8CC8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_22E33ECC8();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_22E33DD58();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void MPSDAGKernelOp::MPSDAGKernelOp(void *a1)
{
  BaseOperation::BaseOperation(a1);
}

{
  BaseOperation::BaseOperation(a1);
}

void MPSDAGKernelOp::~MPSDAGKernelOp(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    v2 = this;
    operator delete(this[6]);
    this = v2;
  }

  BaseOperation::~BaseOperation(this);
}

{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    v2 = this;
    operator delete(this[6]);
    this = v2;
  }

  BaseOperation::~BaseOperation(this);
}

{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void MPSDAGKernelOp::DAGNode(MPSDAGKernelOp *this@<X0>, const char *a2@<X2>, int a3@<W1>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  if (a3)
  {
    std::to_string(&v10, *(this + 10) + 1);
    v6 = std::string::insert(&v10, 0, "OUTPUT(Node_");
  }

  else
  {
    v9 = (*(*this + 72))(this, a4, a2);
    std::to_string(&v10, v9);
    v6 = std::string::insert(&v10, 0, "NODE(Node_");
  }

  v7 = *&v6->__r_.__value_.__l.__data_;
  v11.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v11.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v11, ")");
  *a5 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_8:
    operator delete(v10.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_8;
  }
}

void sub_22E2F9114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

char *MPSDAGKernelOp::getVisibleFunctionName@<X0>(char *this@<X0>, const char *__s@<X1>, void *a3@<X8>)
{
  v3 = this;
  v5 = this + 48;
  if (__s)
  {
    if (this[71] >= 0)
    {
      v7 = this[71];
    }

    else
    {
      v7 = *(this + 7);
    }

    this = strlen(__s);
    v8 = &this[v7];
    if (&this[v7] >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_22E33DEAC();
    }

    v9 = this;
    if (v8 > 0x16)
    {
      operator new();
    }

    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    *(a3 + 23) = v8;
    if (v7)
    {
      if (*(v3 + 71) >= 0)
      {
        v10 = v5;
      }

      else
      {
        v10 = v3[6];
      }

      this = memmove(a3, v10, v7);
    }

    v11 = a3 + v7;
    if (v9)
    {
      this = memmove(v11, __s, v9);
    }

    v11[v9] = 0;
  }

  else if (this[71] < 0)
  {
    v12 = *(this + 6);
    v13 = *(this + 7);

    return sub_22E3404E0(a3, v12, v13);
  }

  else
  {
    *a3 = *v5;
    a3[2] = *(this + 8);
  }

  return this;
}

char *MPSDAGKernelOp::getSpecializedName@<X0>(char *this@<X0>, const char *__s@<X1>, void *a3@<X8>)
{
  v3 = this;
  v5 = this + 48;
  if (__s)
  {
    if (this[71] >= 0)
    {
      v7 = this[71];
    }

    else
    {
      v7 = *(this + 7);
    }

    this = strlen(__s);
    v8 = &this[v7];
    if (&this[v7] >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_22E33DEAC();
    }

    v9 = this;
    if (v8 > 0x16)
    {
      operator new();
    }

    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    *(a3 + 23) = v8;
    if (v7)
    {
      if (*(v3 + 71) >= 0)
      {
        v10 = v5;
      }

      else
      {
        v10 = v3[6];
      }

      this = memmove(a3, v10, v7);
    }

    v11 = a3 + v7;
    if (v9)
    {
      this = memmove(v11, __s, v9);
    }

    v11[v9] = 0;
  }

  else if (this[71] < 0)
  {
    v12 = *(this + 6);
    v13 = *(this + 7);

    return sub_22E3404E0(a3, v12, v13);
  }

  else
  {
    *a3 = *v5;
    a3[2] = *(this + 8);
  }

  return this;
}

void sub_22E2F9470(void *a1)
{
  __p = 0;
  v2 = 0;
  v3 = 0;
  BaseOperation::BaseOperation(a1);
}

void sub_22E2F9574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x2318E5730](v12, 0x1020C4039750FA9);
  MPSDAGKernelOp::~MPSDAGKernelOp(v11);
  _Unwind_Resume(a1);
}

void sub_22E2F95C4(uint64_t a1)
{
  *a1 = &unk_284219978;
  if (*(a1 + 71) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 48));
    a1 = v2;
  }

  BaseOperation::~BaseOperation(a1);
}

void sub_22E2F9638(uint64_t a1)
{
  *a1 = &unk_284219978;
  if (*(a1 + 71) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 48));
    a1 = v2;
  }

  BaseOperation::~BaseOperation(a1);
}

void sub_22E2F96AC(void **this)
{
  *this = &unk_284219978;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void MPSKernelDAG::placeholderOp()
{
  operator new();
}

{
  operator new();
}

void sub_22E2F9A68(_Unwind_Exception *a1)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*v2);
  }

  sub_22E2F95C4(v1);
  _Unwind_Resume(a1);
}

void sub_22E2F9A8C(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X6>, std::string *a4@<X8>)
{
  (*(*a1 + 64))(&v24);
  v8 = std::string::append(&v24, " : FUNCTION(");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 48))(__p, a1, a2);
  if ((v23 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v11 = v23;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v25, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v26, "), INPUT(0), INPUT(1), NODE(Node_");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v21, a3);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v21;
  }

  else
  {
    v16 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v27, v16, size);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v28, ");\n");
  *a4 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v27.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v26.__r_.__value_.__l.__data_);
  if ((v23 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(__p[0]);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v24.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v25.__r_.__value_.__l.__data_);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_22E2F9CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v40 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v40 - 112));
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a16);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

id sub_22E2F9DFC(uint64_t a1)
{
  v2 = objc_opt_new();
  v11 = *(a1 + 76);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v3, &v11, 33, 3);
  v5 = **(a1 + 24);
  if (*(*(a1 + 24) + 8) == v5)
  {
    sub_22E34059C();
  }

  v10 = *(*v5 + 8);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v4, &v10, 33, 4);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v6, a1 + 88, 41, 14);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v7, a1 + 90, 41, 15);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v8, a1 + 92, 53, 16);
  return v2;
}

uint64_t sub_22E2F9EC4@<X0>(char *__s@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  if (*(a2 + 71) >= 0)
  {
    v6 = *(a2 + 71);
  }

  else
  {
    v6 = *(a2 + 56);
  }

  result = strlen(__s);
  v8 = v6 + result;
  if (v6 + result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22E33DEAC();
  }

  v9 = result;
  if (v8 > 0x16)
  {
    operator new();
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *(a3 + 23) = v8;
  if (v6)
  {
    if (*(a2 + 71) >= 0)
    {
      v10 = (a2 + 48);
    }

    else
    {
      v10 = *(a2 + 48);
    }

    result = memmove(a3, v10, v6);
  }

  v11 = a3 + v6;
  if (v9)
  {
    result = memmove(v11, __s, v9);
  }

  v11[v9] = 0;
  return result;
}

void sub_22E2F9FCC(uint64_t a1@<X0>, const std::string::value_type *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  if (v5 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22E33DEAC();
  }

  if (v5 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v25, 0, sizeof(v25));
  *(&v25.__r_.__value_.__s + 23) = v5 + 1;
  if (v5)
  {
    if ((v4 & 0x80u) == 0)
    {
      v8 = (a1 + 48);
    }

    else
    {
      v8 = *(a1 + 48);
    }

    memmove(&v25, v8, v5);
  }

  *(&v25.__r_.__value_.__l.__data_ + v5) = 95;
  v9 = *(a1 + 127);
  if (v9 >= 0)
  {
    v10 = (a1 + 104);
  }

  else
  {
    v10 = *(a1 + 104);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 127);
  }

  else
  {
    v11 = *(a1 + 112);
  }

  v12 = std::string::append(&v25, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v26, "_");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = **(a1 + 24);
  if (*(*(a1 + 24) + 8) == v16)
  {
    sub_22E34059C();
  }

  std::to_string(&__p, *(*v16 + 8));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v19 = std::string::append(&v27, p_p, size);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v28, "_");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v29, a2);
  *a3 = *v23;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_27:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_34;
    }
  }

  else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(v28.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_29:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v27.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_30:
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_37:
    operator delete(v25.__r_.__value_.__l.__data_);
    return;
  }

LABEL_36:
  operator delete(v26.__r_.__value_.__l.__data_);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_37;
  }
}

void sub_22E2FA264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
    if ((a40 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a40 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a9);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void MPSKernelDAG::texture2DOp()
{
  operator new();
}

{
  operator new();
}