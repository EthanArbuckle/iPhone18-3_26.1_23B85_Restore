CFTypeRef CGPDFPageLayoutRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void CGPDFPageLayoutRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CGPDFPageLayoutEqualToPageLayout(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }

    result = [*(a1 + 72) isEqualToString:*(a2 + 72)];
    if (result)
    {
      v6 = *(a1 + 80);
      v5 = *(a1 + 88);
      v7 = *(a2 + 80);
      if (v5 - v6 != *(a2 + 88) - v7)
      {
        return 0;
      }

      for (; v6 != v5; v7 += 16)
      {
        v8 = *v6;
        v9 = *v7;
        v10 = **v6 == **v7 && *(*v6 + 8) == *(*v7 + 8);
        if (!v10 || v8[2] != v9[2])
        {
          return 0;
        }

        result = CGRectEqualToRect(*(v8 + 3), *(v9 + 3));
        if (!result)
        {
          return result;
        }

        if (vabdd_f64(*(v8 + 7), *(v9 + 7)) > 0.00000011920929)
        {
          return 0;
        }

        v6 += 16;
      }

      v11 = *(a1 + 104);
      v12 = *(a1 + 112) - v11;
      v13 = *(a2 + 104);
      if (v12 != *(a2 + 112) - v13)
      {
        return 0;
      }

      if (memcmp(v11, v13, v12))
      {
        return 0;
      }

      v14 = *(a1 + 128);
      v15 = *(a1 + 136) - v14;
      v16 = *(a2 + 128);
      if (v15 != *(a2 + 136) - v16 || memcmp(v14, v16, v15))
      {
        return 0;
      }

      result = std::operator==[abi:fe200100]<CGRect,std::allocator<CGRect>>(*(a1 + 152), *(a1 + 160), *(a2 + 152), *(a2 + 160));
      if (result)
      {
        result = std::operator==[abi:fe200100]<CGRect,std::allocator<CGRect>>(*(a1 + 176), *(a1 + 184), *(a2 + 176), *(a2 + 184));
        if (result)
        {
          result = std::operator==[abi:fe200100]<unsigned long,std::allocator<unsigned long>>(*(a1 + 200), *(a1 + 208), *(a2 + 200), *(a2 + 208));
          if (result)
          {
            result = std::operator==[abi:fe200100]<unsigned long,std::allocator<unsigned long>>(*(a1 + 248), *(a1 + 256), *(a2 + 248), *(a2 + 256));
            if (result)
            {
              v18 = *(a1 + 272);
              v17 = *(a1 + 280);
              v19 = *(a2 + 272);
              if (v17 - v18 != *(a2 + 280) - v19)
              {
                return 0;
              }

              while (v18 != v17)
              {
                if (*v18 != *v19)
                {
                  return 0;
                }

                ++v18;
                ++v19;
              }

              result = std::operator==[abi:fe200100]<std::pair<std::string,unsigned int>,std::allocator<std::pair<std::string,unsigned int>>>(*(a1 + 296), *(a1 + 304), *(a2 + 296), *(a2 + 304));
              if (result)
              {
                result = std::operator==[abi:fe200100]<unsigned long,std::allocator<unsigned long>>(*(a1 + 320), *(a1 + 328), *(a2 + 320), *(a2 + 328));
                if (result)
                {
                  v20 = *(a1 + 344);
                  v21 = *(a1 + 352);
                  v22 = *(a2 + 344);
                  v23 = *(a2 + 352);

                  return std::operator==[abi:fe200100]<unsigned long,std::allocator<unsigned long>>(v20, v21, v22, v23);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

CFDataRef CGPDFPageLayoutCreateEncodedData(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v46 = &unk_1EF2413A8;
    v60 = 1;
    __src = 0u;
    *__p = 0u;
    memset(v48, 0, sizeof(v48));
    memset(v49, 0, sizeof(v49));
    memset(v50, 0, sizeof(v50));
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    memset(v56, 0, sizeof(v56));
    v58 = 0;
    v59 = *(a1 + 56);
    v2 = [*(a1 + 72) UTF8String];
    v44 = v1;
    v3 = strlen(v2);
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:fe200100]();
    }

    v4 = v3;
    if (v3 >= 0x17)
    {
      operator new();
    }

    BYTE7(v67) = v3;
    if (v3)
    {
      memmove(&__dst, v2, v3);
    }

    *(&__dst + v4) = 0;
    v5 = *(&v55 + 1);
    if (!*(&v55 + 1))
    {
      operator new();
    }

    if (*(*(&v55 + 1) + 23) < 0)
    {
      operator delete(**(&v55 + 1));
    }

    **(&v55 + 1) = __dst;
    *(v5 + 16) = v67;
    if (v44[10] != v44[11])
    {
      v70 = &unk_1EF239690;
      v75 = 0;
      v71 = 0;
      v72 = 0;
      operator new();
    }

    std::vector<unsigned int>::reserve(&v51, (v44[14] - v44[13]) >> 1);
    v6 = v44[13];
    v7 = v44[14];
    *&__dst = &v51;
    while (v6 != v7)
    {
      LODWORD(v70) = *v6;
      std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:fe200100](&__dst, &v70);
      ++v6;
    }

    std::vector<unsigned int>::reserve(&v50[1], v44[17] - v44[16]);
    v8 = v44[16];
    v9 = v44[17];
    *&__dst = &v50[1];
    while (v8 != v9)
    {
      LODWORD(v70) = *v8;
      std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:fe200100](&__dst, &v70);
      ++v8;
    }

    std::vector<std::unique_ptr<PBPageLayoutPkg::PBRect>>::reserve(&v56[3], (v44[20] - v44[19]) >> 5);
    v10 = v44[19];
    if (v10 != v44[20])
    {
      *&__dst = &unk_1EF2356B8;
      v69 = 0;
      v67 = *v10;
      v68 = v10[2];
      v11 = v10[3];
      LOBYTE(v69) = 15;
      *(&__dst + 1) = v11;
      PB::PtrVector<PBPageLayoutPkg::PBRect>::emplace_back<PBPageLayoutPkg::PBRect>();
    }

    std::vector<std::unique_ptr<PBPageLayoutPkg::PBRect>>::reserve(v56, (v44[23] - v44[22]) >> 5);
    v12 = v44[22];
    if (v12 != v44[23])
    {
      *&__dst = &unk_1EF2356B8;
      v69 = 0;
      v67 = *v12;
      v68 = v12[2];
      v13 = v12[3];
      LOBYTE(v69) = 15;
      *(&__dst + 1) = v13;
      PB::PtrVector<PBPageLayoutPkg::PBRect>::emplace_back<PBPageLayoutPkg::PBRect>();
    }

    std::vector<unsigned int>::reserve(v50, v44[26] - v44[25]);
    v14 = v44[25];
    v15 = v44[26];
    *&__dst = v50;
    while (v14 != v15)
    {
      LODWORD(v70) = *v14;
      std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:fe200100](&__dst, &v70);
      ++v14;
    }

    v17 = v44[28];
    v16 = v44[29];
    v18 = 0xAAAAAAAAAAAAAAABLL * (v16 - v17);
    if (v18 > (v55 - v54) >> 3)
    {
      if (!(v18 >> 61))
      {
        v68 = &v54;
        std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v18);
      }

      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    if (v17 != v16)
    {
      allocator = *MEMORY[0x1E695E480];
      v70 = &unk_1EF2424F0;
      v71 = 0;
      v74 = 0;
      v72 = *v17;
      v19 = *(v17 + 1);
      LOBYTE(v74) = 5;
      *(&v73 + 1) = v19;
      v65 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
      v64 = color_transform_create(v65, 0);
      v63 = CGColorTransformConvertColor(v64, v17[2], 3);
      v62 = CGColorCopyPropertyList(v63);
      Data = CFPropertyListCreateData(allocator, v62, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      v61 = Data;
      if (!v71)
      {
        operator new();
      }

      BytePtr = CFDataGetBytePtr(Data);
      CFDataGetLength(Data);
      PB::Data::Data(&__dst, BytePtr);
      operator new();
    }

    std::vector<unsigned int>::reserve((v48 + 8), v44[32] - v44[31]);
    v22 = v44[31];
    v23 = v44[32];
    *&__dst = v48 + 8;
    while (v22 != v23)
    {
      LODWORD(v70) = *v22;
      std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:fe200100](&__dst, &v70);
      ++v22;
    }

    v24 = v44[35] - v44[34];
    if (v24 > (*&v48[0] - __p[0]) >> 2)
    {
      if (!(v24 >> 62))
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v24);
      }

LABEL_65:
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v25 = v44[34];
    v26 = v44[35];
    if (v25 != v26)
    {
      v27 = __p[1];
      do
      {
        v28 = *v25;
        if (v27 >= *&v48[0])
        {
          v29 = __p[0];
          v30 = v27 - __p[0];
          v31 = (v27 - __p[0]) >> 2;
          v32 = v31 + 1;
          if ((v31 + 1) >> 62)
          {
            goto LABEL_65;
          }

          v33 = *&v48[0] - __p[0];
          if ((*&v48[0] - __p[0]) >> 1 > v32)
          {
            v32 = v33 >> 1;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v34 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v32;
          }

          if (v34)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v34);
          }

          v35 = (v27 - __p[0]) >> 2;
          v36 = (4 * v31);
          v37 = (4 * v31 - 4 * v35);
          *v36 = v28;
          v27 = v36 + 1;
          memcpy(v37, v29, v30);
          v38 = __p[0];
          __p[0] = v37;
          __p[1] = v27;
          *&v48[0] = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v27++ = v28;
        }

        __p[1] = v27;
        ++v25;
      }

      while (v25 != v26);
    }

    v39 = v44[37];
    v40 = v44[38];
    v41 = (v40 - v39) >> 5;
    if (v41 > (*(&v53 + 1) - *(&v52 + 1)) >> 3)
    {
      if (!(v41 >> 61))
      {
        v68 = (&v52 + 8);
        std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v41);
      }

      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    if (v39 != v40)
    {
      v70 = &unk_1EF242C18;
      v71 = 0;
      HIDWORD(v72) = 0;
      operator new();
    }

    v42 = v44;
    std::vector<unsigned long>::reserve(&v49[1] + 1, v44[26] - v44[25]);
    std::__copy_impl::operator()[abi:fe200100]<unsigned long const*,unsigned long const*,std::back_insert_iterator<std::vector<unsigned long long>>>(v42[40], v42[41], &v49[1] + 8);
    std::vector<unsigned long>::reserve(v49, v42[44] - v42[43]);
    std::__copy_impl::operator()[abi:fe200100]<unsigned long const*,unsigned long const*,std::back_insert_iterator<std::vector<unsigned long long>>>(v42[43], v42[44], v49);
    PB::Writer::Writer(&__dst);
    PBPageLayoutPkg::PBPageLayout::writeTo(&v46, &__dst);
    if (*(&__dst + 1))
    {
      v1 = CFDataCreate(*MEMORY[0x1E695E480], *(&__dst + 1), __dst - *(&__dst + 1));
    }

    else
    {
      pdf_error("Failed to serialize PageLayout %p", v44 + 2);
      v1 = 0;
    }

    PB::Writer::~Writer(&__dst);
    PBPageLayoutPkg::PBPageLayout::~PBPageLayout(&v46);
  }

  return v1;
}

void sub_18420C8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (*(v8 - 169) < 0)
  {
    operator delete(*(v8 - 192));
  }

  PBPageLayoutPkg::PBPageLayout::~PBPageLayout(va);
  _Unwind_Resume(a1);
}

uint64_t CGPDFLayoutCreateFromEncodedData(const __CFData *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (CGPDFPageLayoutGetTypeID::onceToken != -1)
  {
    dispatch_once(&CGPDFPageLayoutGetTypeID::onceToken, &__block_literal_global_12431);
  }

  cftype = pdf_create_cftype();
  v3 = cftype;
  if (cftype)
  {
    *(cftype + 64) = 0u;
    v4 = (cftype + 64);
    *(cftype + 16) = 0;
    *(cftype + 128) = 0u;
    v98 = (cftype + 128);
    *(cftype + 176) = 0u;
    v93 = (cftype + 176);
    *(cftype + 56) = 0;
    *(cftype + 224) = 0u;
    v94 = (cftype + 224);
    v96 = (cftype + 248);
    v97 = (cftype + 200);
    v99 = (cftype + 296);
    v95 = (cftype + 320);
    v92 = cftype + 368;
    *(cftype + 80) = 0u;
    *(cftype + 96) = 0u;
    *(cftype + 112) = 0u;
    *(cftype + 144) = 0u;
    *(cftype + 160) = 0u;
    *(cftype + 192) = 0u;
    *(cftype + 208) = 0u;
    *(cftype + 240) = 0u;
    *(cftype + 256) = 0u;
    *(cftype + 272) = 0u;
    *(cftype + 288) = 0u;
    *(cftype + 304) = 0u;
    *(cftype + 320) = 0u;
    *(cftype + 336) = 0u;
    *(cftype + 352) = 0u;
    *(cftype + 368) = 0u;
    *(cftype + 384) = 0u;
    *(cftype + 400) = 0u;
    *(cftype + 416) = 0u;
    *(cftype + 432) = 0;
    *(cftype + 440) = 1065353216;
    *(cftype + 448) = 0;
    v5 = (cftype + 456);
    v6 = (cftype + 512);
    *(cftype + 512) = 0u;
    *(cftype + 456) = 0u;
    *(cftype + 472) = 0u;
    *(cftype + 488) = 0u;
    *(cftype + 504) = cftype + 512;
    v7 = (cftype + 536);
    *(cftype + 536) = 0u;
    *(cftype + 528) = cftype + 536;
    v91 = cftype + 456;
    BytePtr = CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
    PB::Reader::Reader(v122, BytePtr);
    v100 = &unk_1EF2413A8;
    v121 = 0;
    v117 = 0u;
    v118 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v119 = 0;
    PBPageLayoutPkg::PBPageLayout::readFrom(&v100, v122);
    *(v3 + 16) = 0;
    *v4 = 0u;
    *(v3 + 80) = 0u;
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
    *(v3 + 128) = 0u;
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
    *(v3 + 176) = 0u;
    *(v3 + 192) = 0u;
    *(v3 + 208) = 0u;
    *(v3 + 224) = 0u;
    *(v3 + 240) = 0u;
    *(v3 + 256) = 0u;
    *(v3 + 272) = 0u;
    *(v3 + 288) = 0u;
    *(v3 + 304) = 0u;
    *(v3 + 320) = 0u;
    *(v3 + 336) = 0u;
    *(v3 + 352) = 0u;
    *(v3 + 368) = 0u;
    *(v3 + 384) = 0u;
    *(v3 + 400) = 0u;
    *(v3 + 416) = 0u;
    *(v3 + 432) = 0;
    *(v3 + 440) = 1065353216;
    *(v3 + 448) = 0;
    *v6 = 0;
    *(v3 + 520) = 0;
    *v5 = 0u;
    *(v3 + 472) = 0u;
    *(v3 + 488) = 0u;
    *(v3 + 504) = v6;
    *v7 = 0;
    *(v3 + 544) = 0;
    *(v3 + 528) = v7;
    *(v3 + 56) = v120;
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v91, v92}];
    v10 = *(v3 + 72);
    *(v3 + 72) = v9;

    v11 = (*(&v118 + 1) - v118) >> 3;
    if (v11 > (*(v3 + 96) - *(v3 + 80)) >> 4)
    {
      if (!(v11 >> 60))
      {
        v127 = (v3 + 80);
        std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<TextLine>>>(v11);
      }

      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    if (v118 != *(&v118 + 1))
    {
      operator new();
    }

    std::vector<unsigned short>::reserve((v3 + 104), (*(&v110 + 1) - v110) >> 2);
    v13 = *(&v110 + 1);
    v12 = v110;
    if (v110 != *(&v110 + 1))
    {
      v14 = *(v3 + 112);
      do
      {
        v15 = *v12;
        v16 = *(v3 + 120);
        if (v14 >= v16)
        {
          v17 = *(v3 + 104);
          v18 = v14 - v17;
          v19 = (v14 - v17) >> 1;
          if (v19 <= -2)
          {
            std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
          }

          v20 = v16 - v17;
          if (v20 <= v19 + 1)
          {
            v21 = v19 + 1;
          }

          else
          {
            v21 = v20;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v22 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v21;
          }

          if (v22)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned short>>(v22);
          }

          v23 = (v14 - v17) >> 1;
          v24 = (2 * v19);
          v25 = (2 * v19 - 2 * v23);
          *v24 = v15;
          v14 = (v24 + 1);
          memcpy(v25, v17, v18);
          v26 = *(v3 + 104);
          *(v3 + 104) = v25;
          *(v3 + 112) = v14;
          *(v3 + 120) = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v14 = v15;
          v14 += 2;
        }

        *(v3 + 112) = v14;
        ++v12;
      }

      while (v12 != v13);
    }

    std::vector<unsigned long>::reserve(v98, (v109 - *(&v108 + 1)) >> 2);
    v27 = *(&v108 + 1);
    v28 = v109;
    *&v124 = v98;
    while (v27 != v28)
    {
      v128[0] = *v27;
      std::back_insert_iterator<std::vector<unsigned long>>::operator=[abi:fe200100](&v124, v128);
      ++v27;
    }

    std::vector<CGRect>::reserve((v3 + 152), (v117 - *(&v116 + 1)) >> 3);
    v29 = *(&v116 + 1);
    v30 = v117;
    while (v29 != v30)
    {
      v31 = *(*v29 + 32);
      v32 = *(*v29 + 8);
      v124 = *(*v29 + 16);
      v125 = v31;
      v126 = v32;
      std::vector<CGRect>::push_back[abi:fe200100](v3 + 152, &v124);
      v29 += 8;
    }

    std::vector<CGRect>::reserve(v93, (*(&v115 + 1) - v115) >> 3);
    v34 = *(&v115 + 1);
    for (i = v115; i != v34; i += 8)
    {
      v35 = *(*i + 32);
      v36 = *(*i + 8);
      v124 = *(*i + 16);
      v125 = v35;
      v126 = v36;
      std::vector<CGRect>::push_back[abi:fe200100](v93, &v124);
    }

    std::vector<unsigned long>::reserve(v97, (*(&v107 + 1) - v107) >> 2);
    v38 = *(&v107 + 1);
    v37 = v107;
    *&v124 = v97;
    while (v37 != v38)
    {
      v128[0] = *v37;
      std::back_insert_iterator<std::vector<unsigned long>>::operator=[abi:fe200100](&v124, v128);
      ++v37;
    }

    v39 = *(&v113 + 1);
    v40 = v113;
    if (0xAAAAAAAAAAAAAAABLL * ((*(v3 + 240) - *(v3 + 224)) >> 3) < (*(&v113 + 1) - v113) >> 3)
    {
      v41 = (*(&v113 + 1) - v113) >> 3;
      if (v41 < 0xAAAAAAAAAAAAAABLL)
      {
        v127 = v94;
        std::__allocate_at_least[abi:fe200100]<std::allocator<PageLayout::CharacterStyle>>(v41);
      }

      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    if (v113 != *(&v113 + 1))
    {
      v42 = *MEMORY[0x1E695E480];
      v43 = *MEMORY[0x1E695E498];
      do
      {
        v44 = *v40;
        v125 = 0;
        *(&v124 + 1) = *(v44 + 28);
        v46 = v44 + 8;
        v45 = *(v44 + 8);
        *&v124 = *(v46 + 8);
        v47 = CFDataCreateWithBytesNoCopy(v42, **(v45 + 8), *(*(v45 + 8) + 8), v43);
        v128[0] = v47;
        v48 = CFPropertyListCreateWithData(v42, v47, 0, 0, 0);
        v123 = v48;
        v49 = CGColorCreateWithPropertyList(v48);
        v50 = v125;
        v125 = v49;
        if (v50)
        {
          CFRelease(v50);
        }

        std::vector<PageLayout::CharacterStyle>::push_back[abi:fe200100](v94, &v124);
        if (v48)
        {
          CFRelease(v48);
        }

        if (v47)
        {
          CFRelease(v47);
        }

        if (v125)
        {
          CFRelease(v125);
        }

        ++v40;
      }

      while (v40 != v39);
    }

    std::vector<unsigned long>::reserve(v96, (v103 - *(&v102 + 1)) >> 2);
    v51 = *(&v102 + 1);
    v52 = v103;
    *&v124 = v96;
    while (v51 != v52)
    {
      v128[0] = *v51;
      std::back_insert_iterator<std::vector<unsigned long>>::operator=[abi:fe200100](&v124, v128);
      ++v51;
    }

    v53 = (*(&v101 + 1) - v101) >> 2;
    if (v53 > (*(v3 + 288) - *(v3 + 272)) >> 3)
    {
      if (!(v53 >> 61))
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v53);
      }

LABEL_100:
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v55 = *(&v101 + 1);
    v54 = v101;
    if (v101 != *(&v101 + 1))
    {
      v56 = *(v3 + 280);
      do
      {
        v57 = *v54;
        v58 = *(v3 + 288);
        if (v56 >= v58)
        {
          v59 = *(v3 + 272);
          v60 = v56 - v59;
          v61 = (v56 - v59) >> 3;
          v62 = v61 + 1;
          if ((v61 + 1) >> 61)
          {
            goto LABEL_100;
          }

          v63 = v58 - v59;
          if (v63 >> 2 > v62)
          {
            v62 = v63 >> 2;
          }

          if (v63 >= 0x7FFFFFFFFFFFFFF8)
          {
            v64 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v64 = v62;
          }

          if (v64)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v64);
          }

          v65 = (v56 - v59) >> 3;
          v66 = (8 * v61);
          v67 = (8 * v61 - 8 * v65);
          *v66 = v57;
          v56 = v66 + 1;
          memcpy(v67, v59, v60);
          v68 = *(v3 + 272);
          *(v3 + 272) = v67;
          *(v3 + 280) = v56;
          *(v3 + 288) = 0;
          if (v68)
          {
            operator delete(v68);
          }
        }

        else
        {
          *v56++ = v57;
        }

        *(v3 + 280) = v56;
        ++v54;
      }

      while (v54 != v55);
    }

    v69 = *(&v111 + 1);
    v70 = v112;
    v71 = (v112 - *(&v111 + 1)) >> 3;
    if (v71 > (*(v3 + 312) - *(v3 + 296)) >> 5)
    {
      if (!(v71 >> 59))
      {
        v127 = v99;
        std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<std::string,unsigned int>>>(v71);
      }

      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    if (*(&v111 + 1) != v112)
    {
      do
      {
        v72 = *v69;
        LODWORD(v128[0]) = *(*v69 + 16);
        v73 = *(v72 + 8);
        if (v73[23] < 0)
        {
          v73 = *v73;
        }

        v75 = *(v3 + 304);
        v74 = *(v3 + 312);
        if (v75 >= v74)
        {
          v77 = (v75 - *v99) >> 5;
          if ((v77 + 1) >> 59)
          {
            std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
          }

          v78 = v74 - *v99;
          v79 = v78 >> 4;
          if (v78 >> 4 <= (v77 + 1))
          {
            v79 = v77 + 1;
          }

          if (v78 >= 0x7FFFFFFFFFFFFFE0)
          {
            v80 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v80 = v79;
          }

          v127 = v99;
          if (v80)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<std::string,unsigned int>>>(v80);
          }

          *&v124 = 0;
          *(&v124 + 1) = 32 * v77;
          v125 = (32 * v77);
          v126 = 0;
          std::allocator_traits<std::allocator<std::pair<std::string,unsigned int>>>::construct[abi:fe200100]<std::pair<std::string,unsigned int>,char const*&,unsigned int &,void,0>(32 * v77, v73, v128);
          v76 = v125 + 32;
          v81 = *(v3 + 296);
          v82 = *(v3 + 304) - v81;
          v83 = *(&v124 + 1) - v82;
          memcpy((*(&v124 + 1) - v82), v81, v82);
          v84 = *(v3 + 296);
          *(v3 + 296) = v83;
          *(v3 + 304) = v76;
          v85 = *(v3 + 312);
          *(v3 + 312) = v126;
          v125 = v84;
          v126 = v85;
          *&v124 = v84;
          *(&v124 + 1) = v84;
          std::__split_buffer<std::pair<std::string,unsigned int>>::~__split_buffer(&v124);
        }

        else
        {
          std::allocator_traits<std::allocator<std::pair<std::string,unsigned int>>>::construct[abi:fe200100]<std::pair<std::string,unsigned int>,char const*&,unsigned int &,void,0>(*(v3 + 304), v73, v128);
          v76 = (v75 + 32);
          *(v3 + 304) = v75 + 32;
        }

        *(v3 + 304) = v76;
        ++v69;
      }

      while (v69 != v70);
    }

    std::vector<unsigned long>::reserve(v95, (v106 - *(&v105 + 1)) >> 3);
    v86 = *(&v105 + 1);
    v87 = v106;
    *&v124 = v95;
    while (v86 != v87)
    {
      v128[0] = *v86;
      std::back_insert_iterator<std::vector<unsigned long>>::operator=[abi:fe200100](&v124, v128);
      ++v86;
    }

    std::vector<unsigned long>::reserve((v3 + 344), (*(&v104 + 1) - v104) >> 3);
    v89 = *(&v104 + 1);
    v88 = v104;
    *&v124 = v3 + 344;
    while (v88 != v89)
    {
      v128[0] = *v88;
      std::back_insert_iterator<std::vector<unsigned long>>::operator=[abi:fe200100](&v124, v128);
      ++v88;
    }

    PBPageLayoutPkg::PBPageLayout::~PBPageLayout(&v100);
  }

  return v3;
}

void sub_18420D52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, void **a11, uint64_t a12, void **a13, void **a14, void **a15, void **a16, void **a17, void **a18, void **a19)
{
  PBPageLayoutPkg::PBPageLayout::~PBPageLayout(&a19);
  std::__tree<std::__value_type<double,std::list<Span>>,std::__map_value_compare<double,std::__value_type<double,std::list<Span>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::list<Span>>>>::destroy(*(v19 + 536));
  std::__tree<std::__value_type<double,std::list<Span>>,std::__map_value_compare<double,std::__value_type<double,std::list<Span>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::list<Span>>>>::destroy(*(v19 + 512));
  v22 = *(v19 + 480);
  if (v22)
  {
    *(v19 + 488) = v22;
    operator delete(v22);
  }

  v23 = *a9;
  if (*a9)
  {
    *(v19 + 464) = v23;
    operator delete(v23);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>>>::~__hash_table(v20 + 344);

  a19 = a10;
  std::vector<std::shared_ptr<PageLayoutTable>>::__destroy_vector::operator()[abi:fe200100](&a19);
  v24 = *(v19 + 344);
  if (v24)
  {
    *(v19 + 352) = v24;
    operator delete(v24);
  }

  v25 = *a14;
  if (*a14)
  {
    *(v19 + 328) = v25;
    operator delete(v25);
  }

  a19 = a18;
  std::vector<std::pair<std::string,unsigned int>>::__destroy_vector::operator()[abi:fe200100](&a19);
  v26 = *(v19 + 272);
  if (v26)
  {
    *(v19 + 280) = v26;
    operator delete(v26);
  }

  v27 = *a15;
  if (*a15)
  {
    *(v19 + 256) = v27;
    operator delete(v27);
  }

  a19 = a13;
  std::vector<PageLayout::CharacterStyle>::__destroy_vector::operator()[abi:fe200100](&a19);
  v28 = *a16;
  if (*a16)
  {
    *(v19 + 208) = v28;
    operator delete(v28);
  }

  v29 = *a11;
  if (*a11)
  {
    *(v19 + 184) = v29;
    operator delete(v29);
  }

  v30 = *(v20 + 88);
  if (v30)
  {
    *(v19 + 160) = v30;
    operator delete(v30);
  }

  v31 = *a17;
  if (*a17)
  {
    *(v19 + 136) = v31;
    operator delete(v31);
  }

  v32 = *(v20 + 40);
  if (v32)
  {
    *(v19 + 112) = v32;
    operator delete(v32);
  }

  a19 = (v19 + 80);
  std::vector<std::shared_ptr<TextLine>>::__destroy_vector::operator()[abi:fe200100](&a19);

  _Unwind_Resume(a1);
}

unint64_t CGPDFPageLayoutGetCharacterSelectionBoundingBox(unint64_t result, unint64_t a2, _OWORD *a3, uint64_t a4)
{
  if (result)
  {
    if (a2 < (*(result + 160) - *(result + 152)) >> 5)
    {
      if (a3)
      {
        v5 = *(result + 176);
        if (a2 >= (*(result + 184) - v5) >> 5)
        {
LABEL_12:
          __break(1u);
          return result;
        }

        v6 = (v5 + 32 * a2);
        v7 = v6[1];
        *a3 = *v6;
        a3[1] = v7;
      }

      if (!a4)
      {
        return 1;
      }

      v8 = *(result + 80);
      v9 = *(result + 88);
      result = PageLayout::getLineIndex(v8, v9, a2);
      if (result < (v9 - v8) >> 4)
      {
        v10 = __sincos_stret(*(*(v8 + 2 * result) + 56));
        *a4 = v10.__cosval;
        *(a4 + 8) = v10.__sinval;
        *(a4 + 16) = -v10.__sinval;
        *(a4 + 24) = v10.__cosval;
        *(a4 + 32) = 0;
        *(a4 + 40) = 0;
        return 1;
      }

      goto LABEL_12;
    }

    return 0;
  }

  return result;
}

uint64_t CGPDFPageLayoutGetColumnBoundsAtPointWithCompletion(uint64_t a1, void *a2, void *a3, CGFloat a4, CGFloat a5)
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    v11 = v9;
    v12 = v10;
    os_unfair_lock_lock((a1 + 448));
    if (*(a1 + 452) == 1)
    {
      v13 = *(a1 + 456);
      v14 = *(a1 + 464);
      if (v13 == v14)
      {
        v16 = &CGRectNull;
      }

      else
      {
        v15 = 0;
        do
        {
          v28.x = a4;
          v28.y = a5;
          if (CGRectContainsPoint(*v13, v28) && (!v15 || *(v13 + 32) >= *(v15 + 32)))
          {
            v15 = v13;
          }

          v13 += 40;
        }

        while (v13 != v14);
        v16 = &CGRectNull;
        if (v15)
        {
          v16 = v15;
        }
      }

      v12[2](v12, v16->origin.x, v16->origin.y, v16->size.width, v16->size.height);
      os_unfair_lock_unlock((a1 + 448));
      a1 = 1;
    }

    else
    {
      os_unfair_lock_unlock((a1 + 448));
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZN10PageLayout36GetColumnBoundsAtPointWithCompletionE7CGPointPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFv6CGRectE_block_invoke;
      aBlock[3] = &unk_1E6E2D5E0;
      v24 = a1 + 16;
      v23 = v12;
      v25 = a1 + 16;
      v26 = a4;
      v27 = a5;
      v17 = _Block_copy(aBlock);
      v18 = v17;
      a1 = v11 == 0;
      if (v11)
      {
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = ___ZN10PageLayout36GetColumnBoundsAtPointWithCompletionE7CGPointPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFv6CGRectE_block_invoke_2;
        v20[3] = &unk_1E6E2D608;
        v21 = v17;
        dispatch_async(v11, v20);
      }

      else
      {
        v17[2](v17);
      }
    }
  }

  return a1;
}

uint64_t CGPDFPageLayoutGetTextRangeIndexAtPoint(uint64_t a1, double a2, double a3)
{
  if (!a1)
  {
    return -1;
  }

  PageLayout::getTextRangeIndex(a1 + 16, 0, 2, a2, a3);
  return v3;
}

uint64_t CGPDFPageLayoutGetStringRangeIndexNearestPoint(uint64_t a1, double a2, double a3)
{
  if (!a1)
  {
    return -1;
  }

  PageLayout::getTextRangeIndex(a1 + 16, 0, 3, a2, a3);
  if (v4 == -1)
  {
    return -1;
  }

  v12[0] = v4;
  v12[1] = 1;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v8[0] = v12;
  v8[1] = 1;
  v7 = &v9;
  PageLayout::ConvertTextRangesToStringRanges<std::span<CFRange,18446744073709551615ul>,std::back_insert_iterator<std::vector<CFRange>>>(a1 + 16, v8, &v7);
  if (v9 != v10)
  {
    v5 = *v9;
LABEL_7:
    v10 = v9;
    operator delete(v9);
    return v5;
  }

  v5 = -1;
  if (v9)
  {
    goto LABEL_7;
  }

  return v5;
}

void sub_18420DC4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *CGPDFPageLayoutGetAreaOfInterestAtPoint(void *result, double a2, double a3)
{
  if (result)
  {
    v5 = result;
    PageLayout::getTextRangeIndex((result + 2), 0, 2, a2, a3);
    v7 = v6;
    v8 = v5[60];
    v9 = v5[61];
    if (v8 == v9)
    {
      v10 = 0;
    }

    else
    {
      do
      {
        v19.x = a2;
        v19.y = a3;
        v10 = CGRectContainsPoint(*v8, v19);
        if (v10)
        {
          break;
        }

        ++v8;
      }

      while (v8 != v9);
    }

    v12 = v5 + 46;
    v11 = v5[46];
    v13 = v12[1] - v11;
    if (v13)
    {
      v14 = 0;
      v15 = v13 >> 4;
      while (1)
      {
        v20.x = a2;
        v20.y = a3;
        if (CGRectContainsPoint(*(*v11 + 80), v20))
        {
          break;
        }

        ++v14;
        v11 += 16;
        if (v14 >= v15)
        {
          goto LABEL_11;
        }
      }

      v17 = v7 != -1;
      if (v7 == -1)
      {
        v18 = 2;
      }

      else
      {
        v18 = 3;
      }

      if (v10)
      {
        v17 = v18;
      }

      return (v17 | 4u);
    }

    else
    {
LABEL_11:
      if (v7 == -1)
      {
        v16 = 2;
      }

      else
      {
        v16 = 3;
      }

      if (v10)
      {
        return v16;
      }

      else
      {
        return (v7 != -1);
      }
    }
  }

  return result;
}

uint64_t CGPDFPageLayoutGetNumberOfCharacterBoundingBoxes(uint64_t result)
{
  if (result)
  {
    return (*(result + 184) - *(result + 176)) >> 5;
  }

  return result;
}

void CGPDFPageLayoutGetCharacterPreciseBoundingBoxes(void *a1, void *__dst, uint64_t a3)
{
  if (a1)
  {
    v5 = a1[22];
    v6 = a1[23];
    if (v6 != v5)
    {
      memmove(__dst, v5, v6 - v5);
    }

    v8 = a1[10];
    v7 = a1[11];
    if (v8 != v7)
    {
      v9 = 0;
      do
      {
        v10 = *(*v8 + 8);
        v11 = __sincos_stret(*(*v8 + 56));
        if (v10 >= 1)
        {
          v12 = a3 + 48 * v9;
          v13 = v10 + 1;
          do
          {
            *v12 = v11.__cosval;
            *(v12 + 8) = v11.__sinval;
            *(v12 + 16) = -v11.__sinval;
            *(v12 + 24) = v11.__cosval;
            *(v12 + 32) = 0;
            *(v12 + 40) = 0;
            v12 += 48;
            --v13;
          }

          while (v13 > 1);
        }

        v9 += v10;
        v8 += 16;
      }

      while (v8 != v7);
    }
  }
}

void CGPDFPageLayoutGetCharacterSelectionBoundingBoxes(void *a1, void *__dst, uint64_t a3)
{
  if (a1)
  {
    v5 = a1[19];
    v6 = a1[20];
    if (v6 != v5)
    {
      memmove(__dst, v5, v6 - v5);
    }

    v8 = a1[10];
    v7 = a1[11];
    if (v8 != v7)
    {
      v9 = 0;
      do
      {
        v10 = *(*v8 + 8);
        v11 = __sincos_stret(*(*v8 + 56));
        if (v10 >= 1)
        {
          v12 = a3 + 48 * v9;
          v13 = v10 + 1;
          do
          {
            *v12 = v11.__cosval;
            *(v12 + 8) = v11.__sinval;
            *(v12 + 16) = -v11.__sinval;
            *(v12 + 24) = v11.__cosval;
            *(v12 + 32) = 0;
            *(v12 + 40) = 0;
            v12 += 48;
            --v13;
          }

          while (v13 > 1);
        }

        v9 += v10;
        v8 += 16;
      }

      while (v8 != v7);
    }
  }
}

void CGPDFPageLayoutEnumerateLineRects(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v13 = v3;
    v4 = v3;
    v6 = *(a1 + 80);
    for (i = *(a1 + 88); v6 != i; v6 += 2)
    {
      v7 = *v6;
      v8 = __sincos_stret((*v6)[7]);
      v9 = v7[3];
      v10 = v7[4];
      v11 = v7[5];
      v12 = v7[6];
      v14[0] = *&v8.__cosval;
      v14[1] = *&v8.__sinval;
      *&v14[2] = -v8.__sinval;
      v14[3] = *&v8.__cosval;
      v14[4] = 0;
      v14[5] = 0;
      (*(v4 + 2))(v4, v14, *(v7 + 8), v9, v10, v11, v12);
    }

    v3 = v13;
  }
}

void CGPDFPageLayoutInsertTableDescriptions(uint64_t a1, const __CFArray *a2)
{
  if (a1)
  {
    PageLayout::insertTableFromAnalysis((a1 + 16), a2);
  }
}

void *CGPDFPageLayoutCopyTableAtPoint(void *result, CGFloat a2, CGFloat a3)
{
  if (result)
  {
    v3 = result[46];
    v4 = result[47];
    if (v3 == v4)
    {
      return 0;
    }

    else
    {
      v7 = result + 2;
      while (1)
      {
        v8 = *v3;
        v9.x = a2;
        v9.y = a3;
        if (CGRectContainsPoint(*(*v3 + 80), v9))
        {
          break;
        }

        v3 += 2;
        if (v3 == v4)
        {
          return 0;
        }
      }

      if (CGPDFPageLayoutTableGetTypeID::onceToken != -1)
      {
        dispatch_once(&CGPDFPageLayoutTableGetTypeID::onceToken, &__block_literal_global_22318);
      }

      result = pdf_create_cftype();
      if (result)
      {
        result[2] = v8;
        result[3] = v7;
      }
    }
  }

  return result;
}

const void **CGOrderedSetCreate()
{
  v0 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (v0)
  {
    v1 = *MEMORY[0x1E695E480];
    *v0 = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    Mutable = CFArrayCreateMutable(v1, 0, 0);
    v0[1] = Mutable;
    if (*v0)
    {
      v3 = Mutable == 0;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      CGOrderedSetRelease(v0);
      return 0;
    }
  }

  return v0;
}

void CGOrderedSetRelease(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

void CGOrderedSetAddValue(CFSetRef *a1, const void *a2)
{
  Count = CFSetGetCount(*a1);
  CFSetAddValue(*a1, a2);
  if (CFSetGetCount(*a1) > Count)
  {
    v5 = a1[1];

    CFArrayAppendValue(v5, a2);
  }
}

double CGRenderingStateSynchronize(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    v2 = *(a2 + 24);
    v3 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v3;
    *(a1 + 24) = v2;
    result = *(a2 + 72);
    *(a1 + 72) = result;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 86) = *(a2 + 86);
  }

  return result;
}

atomic_uint *CGRenderingStateRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

void CGRenderingStateRelease(void *a1)
{
  if (a1)
  {
    if (atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(a1);
    }
  }
}

__n128 CGRenderingStateSetBaseCTM(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 56) = *(a2 + 32);
  *(a1 + 40) = v3;
  *(a1 + 24) = result;
  return result;
}

uint64_t CGRenderingStateSetRenderingResolution(uint64_t result, double a2, double a3)
{
  v3 = 432.0;
  if (a2 <= 432.0)
  {
    v3 = a2;
  }

  if (a2 >= 72.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 72.0;
  }

  v5 = 72.0;
  if (a3 >= 72.0)
  {
    v5 = a3;
    if (a3 > 432.0)
    {
      v5 = 432.0;
    }
  }

  *(result + 8) = v4;
  *(result + 16) = v5;
  return result;
}

uint64_t CGRenderingStateGetAllowedFontRenderingStyle(_BYTE *a1)
{
  if (a1[81] == 1 && a1[83] == 1)
  {
    if (a1[84])
    {
      v1 = 3;
    }

    else
    {
      v1 = 1;
    }

    if (a1[85] == 1)
    {
      if (a1[86])
      {
        v2 = 12;
      }

      else
      {
        v2 = 4;
      }

      v1 |= v2;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 | 0x3DF0u;
}

uint64_t CGRenderingStateGetFontRenderingStyle(_BYTE *a1)
{
  if (a1[81] == 1 && a1[83] == 1)
  {
    if (a1[84])
    {
      v1 = 3;
    }

    else
    {
      v1 = 1;
    }

    if (a1[85] == 1)
    {
      if (a1[86])
      {
        v2 = 12;
      }

      else
      {
        v2 = 4;
      }

      v1 |= v2;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 | 0x3DF0u;
}

uint64_t CGRenderingStateGetVectorCapabilities(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 4);
  }

  else
  {
    return 3;
  }
}

uint64_t CGRenderingStateSetVectorCapabilities(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = a2 | ~(-1 << -__clz(a2));
    if (a2 < 2)
    {
      LOBYTE(v2) = a2;
    }

    *(result + 4) = v2 & 3;
  }

  return result;
}

uint64_t __get_cache_block_invoke_12548()
{
  v11 = *MEMORY[0x1E69E9840];
  get_cache_transform_cache = malloc_type_calloc(1uLL, 0x48uLL, 0x1020040C6685353uLL);
  if (!get_cache_transform_cache)
  {
    _CGHandleAssert("get_cache_block_invoke", 120, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorSyncTransformCache.c", "transform_cache != NULL", "cache missing", v0, v1, v2, v8);
  }

  v10.__sig = 0;
  *v10.__opaque = 0;
  pthread_mutexattr_init(&v10);
  pthread_mutexattr_settype(&v10, 2);
  pthread_mutex_init(get_cache_transform_cache, &v10);
  pthread_mutexattr_destroy(&v10);
  attrs = *byte_1EF23E110;
  v3 = cache_create("com.apple.CoreGraphics.colorsync_transform_cache", &attrs, (get_cache_transform_cache + 64));
  if (v3)
  {
    _CGHandleAssert("get_cache_block_invoke", 142, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorSyncTransformCache.c", "cacheError == 0", "err %d", v4, v5, v6, v3);
  }

  return cache_set_count_hint();
}

void colorsync_transform_data_key_release(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void md5_creator_12557(int a1, const __CFString *cf, CC_MD5_CTX *a3)
{
  data[129] = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (md5_creator_cglibrarypredicate != -1)
    {
      dispatch_once(&md5_creator_cglibrarypredicate, &__block_literal_global_18);
    }

    if (v5 == md5_creator_f())
    {
      if (md5_creator_cglibrarypredicate_21 != -1)
      {
        dispatch_once(&md5_creator_cglibrarypredicate_21, &__block_literal_global_24_12558);
      }

      data[0] = md5_creator_f_20(cf);
      data[1] = v6;
      if (a3)
      {
        v7 = a3;
        v8 = 16;
LABEL_9:
        CC_MD5_Update(v7, data, v8);
      }
    }

    else
    {
      v9 = CFGetTypeID(cf);
      if (v9 == CFStringGetTypeID())
      {
        CStringPtr = CFStringGetCStringPtr(cf, 0x8000100u);
        if (CStringPtr)
        {
          if (a3)
          {
            v11 = CStringPtr;
            v12 = strlen(CStringPtr);

            md5_update(a3, v11, v12);
          }
        }

        else
        {
          bzero(data, 0x401uLL);
          Length = CFStringGetLength(cf);
          if (!CFStringGetCString(cf, data, 1024, 0x600u))
          {
            v24.location = 0;
            v24.length = Length;
            CFStringGetBytes(cf, v24, 0x600u, 0x3Fu, 0, data, 1024, 0);
          }

          v15 = strlen(data);
          if (v15)
          {
            if (a3)
            {
              md5_update(a3, data, v15);
            }
          }

          else
          {
            CGLog(3, "md5_creator failed for CFString %p", v16, v17, v18, v19, v20, v21, cf);
          }
        }
      }

      else
      {
        v13 = CFGetTypeID(cf);
        if (v13 == CFBooleanGetTypeID())
        {
          LODWORD(data[0]) = *MEMORY[0x1E695E4D0] == cf;
          if (a3)
          {
            v7 = a3;
            v8 = 4;
            goto LABEL_9;
          }
        }
      }
    }
  }
}

void subpath_release(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  free(a1);
}

__n128 process_subpath_split(void **a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if ((*a2 - 1) < 3)
  {
    v6 = path_list_create(v5, *(a2 + 8));
    *v6 = v4[2];
LABEL_6:
    v4[2] = v6;
    return result;
  }

  if (v5 != 4)
  {
    if (v5)
    {
      return result;
    }

    v4 = malloc_type_malloc(0x20uLL, 0x10200404161829EuLL);
    *v4 = 0;
    v4[1] = 0xFFFFFFFEFFFFFFFFLL;
    v4[2] = 0;
    v4[3] = 0;
    *v4 = *a1;
    *a1 = v4;
    v6 = path_list_create(*a2, *(a2 + 8));
    goto LABEL_6;
  }

  v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200405AF6BDC9uLL);
  v9 = 0;
  *(v8 + 4) = 4;
  *v8 = 0;
  *(v8 + 1) = 1;
  *v8 = v4[2];
  v4[2] = v8;
  v10 = v8;
  do
  {
    v11 = v10;
    v10 = *v10;
    *v11 = v9;
    v9 = v11;
  }

  while (v10);
  v4[2] = v11;
  result = *(v11 + 3);
  *(v8 + 24) = result;
  return result;
}

_DWORD *path_list_create(unsigned int a1, __int128 *a2)
{
  if (a1 > 4)
  {
    return 0;
  }

  v4 = qword_1844E0E30[a1];
  result = malloc_type_calloc(1uLL, 16 * v4 + 24, 0x10200405AF6BDC9uLL);
  result[4] = a1;
  *result = 0;
  *(result + 1) = v4;
  if (a2)
  {
    v6 = 6;
    do
    {
      v7 = *a2++;
      *&result[v6] = v7;
      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

id CGPDFPageCopyString(os_unfair_lock_s *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CGPDFPageCopyPageLayoutWithCTLD(a1, 1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = v1[9];
  CFRelease(v2);
  return v3;
}

void CGContextSetImageReplacer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      *(a1 + 64) = a3;
      *(a1 + 72) = a2;
      return;
    }

    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetImageReplacer", v8, a3, a4, a5, a6, a7, a8);
}

void CGContextSetInterpolationQualityRange(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      v8 = *(a1 + 112);
      *(v8 + 72) = a2;
      *(v8 + 76) = a3;
      return;
    }

    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  handle_invalid_context("CGContextSetInterpolationQualityRange", v9, a3, a4, a5, a6, a7, a8);
}

void CGContextGetInterpolationQualityRange(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v8 = 0;
LABEL_9:
    handle_invalid_context("CGContextGetInterpolationQualityRange", v8, a3, a4, a5, a6, a7, a8);
    return;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v8 = a1;
    goto LABEL_9;
  }

  if (a2)
  {
    *a2 = *(*(a1 + 112) + 72);
  }

  if (a3)
  {
    *a3 = *(*(a1 + 112) + 76);
  }
}

BOOL is_2x_scale(CGContext *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v16 = CGContextConvertRectToDeviceSpace(a1, *&a3);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v16.origin.x = fmin(v16.size.width, v16.size.height);
  v11 = v16.origin.x < 0.0;
  if (v16.origin.x < 0.0)
  {
    v12 = x;
    v16 = CGRectStandardize(v16);
  }

  if (a2)
  {
    v13 = *(a2 + 40);
  }

  else
  {
    v13 = 0.0;
  }

  if (fabs(v16.size.width / v13 + -2.0) >= 1.0)
  {
    return 0;
  }

  if (v11)
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v18 = CGRectStandardize(v17);
    height = v18.size.height;
  }

  v14 = a2 ? *(a2 + 48) : 0.0;
  return fabs(height / v14 + -2.0) < 1.0;
}

void CGContextDrawTiledImage(CGContextRef c, CGRect rect, CGImageRef image)
{
  if (!c)
  {
    v19 = 0;
LABEL_9:

    handle_invalid_context("CGContextDrawTiledImage", v19, v3, v4, v5, v6, v7, v8);
    return;
  }

  if (*(c + 4) != 1129601108)
  {
    v19 = c;
    goto LABEL_9;
  }

  height = rect.size.height;
  width = rect.size.width;
  x = rect.origin.x;
  v14 = fmin(rect.size.width, rect.size.height);
  v15 = v14 < 0.0;
  v16 = rect.size.width;
  recta = rect.origin.y;
  if (v14 < 0.0)
  {
    v17 = x;
    v92 = CGRectStandardize(rect);
    rect.origin.y = recta;
    v16 = v92.size.width;
  }

  if (image)
  {
    v18 = *(image + 5);
  }

  else
  {
    v18 = 0.0;
  }

  v20 = height;
  if (v15)
  {
    v21 = x;
    v22 = width;
    v23 = height;
    *(&v20 - 3) = CGRectStandardize(rect);
    rect.origin.y = recta;
  }

  if (image)
  {
    v24 = *(image + 6);
  }

  else
  {
    v24 = 0.0;
  }

  v25 = v16 / v18;
  v26 = v20 / v24;
  if (v15)
  {
    v27 = x;
    v28 = width;
    v29 = height;
    v82 = v26;
    v81 = CGRectStandardize(rect);
    v93.origin.x = x;
    v93.origin.y = recta;
    v93.size.width = width;
    v93.size.height = height;
    rect = CGRectStandardize(v93);
    v30 = *&v81;
    v25 = v16 / v18;
    v26 = v82;
  }

  else
  {
    v30 = x;
  }

  v31 = *(c + 12);
  v32 = *(v31 + 24);
  v33 = *(v31 + 40);
  v34 = vmlaq_n_f64(vmulq_f64(v33, 0), v32, v25);
  v35 = vmlaq_f64(vmulq_n_f64(v33, v26), 0, v32);
  v36 = vaddq_f64(*(v31 + 56), vmlaq_n_f64(vmulq_n_f64(v33, rect.origin.y), v32, v30));
  *v89 = v35;
  *&v89[16] = v36;
  v86 = v35.f64[0];
  v85 = v34;
  v87 = *&v89[8];
  v88 = v36.f64[1];
  v37 = CGPatternCreateWithImage2(image, &v85, kCGPatternTilingConstantSpacing);
  if (v37)
  {
    v45 = v37;
    v85.f64[0] = 1.0;
    if (image && (*(image + 39) & 2) != 0)
    {
      FillColorAsColor = CGContextGetFillColorAsColor(c, v38, v39, v40, v41, v42, v43, v44);
      if (!FillColorAsColor)
      {
        goto LABEL_32;
      }

      v59 = FillColorAsColor;
      Components = CGColorGetComponents(FillColorAsColor);
      if ((v59 & 0x8000000000000000) != 0)
      {
        ColorSpace = CGTaggedColorGetColorSpace(v59, v60, v61, v62, v63, v64, v65, v66);
      }

      else
      {
        ColorSpace = *(v59 + 24);
      }
    }

    else
    {
      ColorSpace = 0;
      Components = &v85;
    }

    Pattern = CGColorSpaceCreatePattern(ColorSpace);
    if (Pattern)
    {
      v49 = Pattern;
      v50 = CGColorCreateWithPattern(Pattern, v45, Components);
      CGColorSpaceRelease(v49);
      CFRelease(v45);
      if (!v50)
      {
        return;
      }

      if (*(c + 4) == 1129601108)
      {
        v57 = *(c + 14);
        *&v84.a = *(v57 + 24);
        *&v84.c = *(v57 + 40);
        *&v84.tx = *(v57 + 56);
      }

      else
      {
        handle_invalid_context("CGContextGetBaseCTM", c, v51, v52, v53, v54, v55, v56);
        v84 = CGAffineTransformIdentity;
        if (*(c + 4) != 1129601108)
        {
          handle_invalid_context("CGContextSetBaseCTM", c, v68, v69, v70, v71, v72, v73);
          goto LABEL_37;
        }
      }

      *(*(c + 14) + 24) = CGAffineTransformIdentity;
LABEL_37:
      CGContextSaveGState(c);
      v91.width = 0.0;
      v91.height = 0.0;
      CGContextSetPatternPhase(c, v91);
      CGContextSetFillColorWithColor(c, v50);
      ClipBoundingBox = CGContextGetClipBoundingBox(c);
      CGContextFillRect(c, ClipBoundingBox);
      CGContextRestoreGState(c);
      if (*(c + 4) == 1129601108)
      {
        v80 = *(c + 14);
        *(v80 + 24) = *&v84.a;
        *(v80 + 40) = *&v84.c;
        *(v80 + 56) = *&v84.tx;
      }

      else
      {
        handle_invalid_context("CGContextSetBaseCTM", c, v74, v75, v76, v77, v78, v79);
      }

      v67 = v50;
      goto LABEL_41;
    }

LABEL_32:
    v67 = v45;
LABEL_41:
    CFRelease(v67);
  }
}

void CGContextDrawImages(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  if (!a1)
  {
    v17 = 0;
LABEL_15:

    handle_invalid_context("CGContextDrawImages", v17, a3, a4, a5, a6, a7, a8);
    return;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v17 = a1;
    goto LABEL_15;
  }

  if (a2 && a3 && a5)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(a3 + 8 * v14);
      if (v16)
      {
        ++v15;
        if (CGImageGetClipPath(v16))
        {
          if (!v15)
          {
            return;
          }

          goto LABEL_19;
        }
      }

      ++v14;
    }

    while (a5 != v14);
    if (!v15 || CGContextDelegateDrawImages(*(a1 + 40), *(a1 + 112), *(a1 + 96), a2, a3, a4, a5, a9) != 1006)
    {
      return;
    }

LABEL_19:
    if (a4)
    {
      v18 = *(*(*(a1 + 96) + 120) + 16) != 0;
      height = 0.0;
      *&v20 = INFINITY;
      width = 0.0;
      *&v22 = INFINITY;
    }

    else
    {
      *&v22 = CGContextGetClipBoundingBox(a1);
      if (v80.size.width == 0.0)
      {
        return;
      }

      height = v80.size.height;
      if (v80.size.height == 0.0)
      {
        return;
      }

      width = v80.size.width;
      v18 = 0;
    }

    v23 = 0;
    v77 = v20;
    v78 = height;
    v75 = v22;
    v76 = width;
    do
    {
      v24 = *(a3 + 8 * v23);
      if (!v24)
      {
        goto LABEL_28;
      }

      v25 = (a2 + 32 * v23);
      v26 = v25[2];
      if (v26 == 0.0)
      {
        goto LABEL_28;
      }

      v27 = v25[3];
      if (v27 == 0.0)
      {
        goto LABEL_28;
      }

      x = *&v22;
      y = *&v20;
      v30 = width;
      v31 = height;
      if (a4)
      {
        v32 = a4 + 32 * v23;
        v33 = *(v32 + 16);
        if (v33 == 0.0)
        {
          goto LABEL_28;
        }

        v34 = *(v32 + 24);
        if (v34 == 0.0)
        {
          goto LABEL_28;
        }

        v35 = *v32;
        v36 = *(v32 + 8);
        v81 = CGRectStandardize(*(&v33 - 2));
        x = v81.origin.x;
        y = v81.origin.y;
        v30 = v81.size.width;
        v31 = v81.size.height;
      }

      v82.origin.x = *v25;
      v82.origin.y = v25[1];
      v82.size.width = v26;
      v82.size.height = v27;
      v83 = CGRectStandardize(v82);
      v37 = v83.origin.x;
      v38 = v83.origin.y;
      v39 = v83.size.width;
      v40 = v83.size.height;
      v101.origin.x = x;
      v101.origin.y = y;
      v101.size.width = v30;
      v101.size.height = v31;
      if (CGRectEqualToRect(v83, v101))
      {
        v84.origin.x = v37;
        v84.origin.y = v38;
        v84.size.width = v39;
        v84.size.height = v40;
        CGContextDrawImage(a1, v84, v24);
      }

      else
      {
        v85.origin.x = v37;
        v85.origin.y = v38;
        v85.size.width = v39;
        v85.size.height = v40;
        v102.origin.x = x;
        v102.origin.y = y;
        v102.size.width = v30;
        v102.size.height = v31;
        if (CGRectContainsRect(v85, v102))
        {
          if (!v18)
          {
            goto LABEL_59;
          }

          goto LABEL_38;
        }

        v20 = v77;
        height = v78;
        v22 = v75;
        width = v76;
        if (v39 == 0.0 || v40 == 0.0)
        {
          goto LABEL_28;
        }

        if (v39 < 0.0 || v40 < 0.0)
        {
          v86.origin.x = v37;
          v86.origin.y = v38;
          v86.size.width = v39;
          v86.size.height = v40;
          *&v73 = CGRectStandardize(v86);
          v87.origin.x = v37;
          v87.origin.y = v38;
          v87.size.width = v39;
          v87.size.height = v40;
          v88 = CGRectStandardize(v87);
          v38 = v88.origin.y;
        }

        else
        {
          v73 = v37;
        }

        v46 = fabs(v40);
        v47 = fabs(v39);
        if (v30 < 0.0 || v31 < 0.0)
        {
          v89.origin.x = x;
          v89.origin.y = y;
          v74 = v46;
          v89.size.width = v30;
          v89.size.height = v31;
          v72 = v47;
          v37 = v73 + v47 * floor((COERCE_DOUBLE(CGRectStandardize(v89)) - v73) / v47);
          v90.origin.x = x;
          v90.origin.y = y;
          v90.size.width = v30;
          v90.size.height = v31;
          v91 = CGRectStandardize(v90);
          v38 = v38 + v74 * floor((v91.origin.y - v38) / v74);
          v91.origin.x = x;
          v91.origin.y = y;
          v91.size.width = v30;
          v91.size.height = v31;
          v92 = CGRectStandardize(v91);
          v49 = vcvtmd_u64_f64((v92.origin.x + v92.size.width - v37) / v72);
          v92.origin.x = x;
          v92.origin.y = y;
          v92.size.width = v30;
          v92.size.height = v31;
          *(&v50 - 1) = CGRectStandardize(v92);
          v46 = v74;
        }

        else
        {
          v48 = v47;
          v37 = v73 + v47 * floor((x - v73) / v47);
          v38 = v38 + v46 * floor((y - v38) / v46);
          v49 = vcvtmd_u64_f64((x + v30 - v37) / v48);
          v50 = y;
          v51 = v31;
        }

        v52 = vcvtmd_u64_f64((v50 + v51 - v38) / v46);
        if (!(v49 | v52))
        {
          v94.origin.x = v37;
          v94.origin.y = v38;
          v94.size.width = v39;
          v94.size.height = v40;
          v103.origin.x = x;
          v103.origin.y = y;
          v103.size.width = v30;
          v103.size.height = v31;
          if (CGRectEqualToRect(v94, v103))
          {
            v95.origin.x = v37;
            v95.origin.y = v38;
            v95.size.width = v39;
            v95.size.height = v40;
            CGContextDrawImage(a1, v95, v24);
LABEL_79:
            v20 = v77;
            height = v78;
            v22 = v75;
            width = v76;
            goto LABEL_28;
          }

          if (!v18)
          {
LABEL_59:
            CGContextSaveGState(a1);
LABEL_60:
            v96.origin.x = x;
            v96.origin.y = y;
            v96.size.width = v30;
            v96.size.height = v31;
            CGContextClipToRect(a1, v96);
            v97.origin.x = v37;
            v97.origin.y = v38;
            v97.size.width = v39;
            v97.size.height = v40;
            CGContextDrawImage(a1, v97, *(a3 + 8 * v23));
            if (v18)
            {
              CGContextEndTransparencyLayer(a1);
            }

            else
            {
              CGContextRestoreGState(a1);
            }

            goto LABEL_68;
          }

LABEL_38:
          if (a4)
          {
            v41 = a1;
            v42 = *&x;
            v43 = *&y;
            v44 = *&v30;
            v45 = *&v31;
          }

          else
          {
            v42 = 0xFFDFFFFFFFFFFFFFLL;
            v44 = 0x7FEFFFFFFFFFFFFFLL;
            v41 = a1;
            v43 = 0xFFDFFFFFFFFFFFFFLL;
            v45 = 0x7FEFFFFFFFFFFFFFLL;
          }

          CGContextBeginTransparencyLayerWithRect(v41, *&v42, 0);
          goto LABEL_60;
        }

        image_pattern = create_image_pattern(a1, v24, v37, v38, v39, v40);
        if (!image_pattern)
        {
          v71 = v18;
          if (v18)
          {
            if (a4)
            {
              v64 = a1;
              v65 = *&x;
              v66 = *&y;
              v67 = *&v30;
              v68 = *&v31;
            }

            else
            {
              v65 = 0xFFDFFFFFFFFFFFFFLL;
              v67 = 0x7FEFFFFFFFFFFFFFLL;
              v64 = a1;
              v66 = 0xFFDFFFFFFFFFFFFFLL;
              v68 = 0x7FEFFFFFFFFFFFFFLL;
            }

            CGContextBeginTransparencyLayerWithRect(v64, *&v65, 0);
          }

          else
          {
            CGContextSaveGState(a1);
          }

          v99.origin.x = x;
          v99.origin.y = y;
          v99.size.width = v30;
          v99.size.height = v31;
          CGContextClipToRect(a1, v99);
          v69 = 0;
          do
          {
            v70 = 0;
            do
            {
              v100.origin.x = v37 + v39 * v70;
              v100.origin.y = v38 + v40 * v69;
              v100.size.width = v39;
              v100.size.height = v40;
              CGContextDrawImage(a1, v100, *(a3 + 8 * v23));
              ++v70;
            }

            while (v70 <= v49);
            ++v69;
          }

          while (v69 <= v52);
          v18 = v71;
          if (v71)
          {
            CGContextEndTransparencyLayer(a1);
          }

          else
          {
            CGContextRestoreGState(a1);
          }

          goto LABEL_79;
        }

        v61 = image_pattern;
        FillColorAsColor = CGContextGetFillColorAsColor(a1, v54, v55, v56, v57, v58, v59, v60);
        v63 = FillColorAsColor;
        if (FillColorAsColor)
        {
          CFRetain(FillColorAsColor);
          CGContextSetFillColorWithColor(a1, v61);
          v93.origin.x = x;
          v93.origin.y = y;
          v93.size.width = v30;
          v93.size.height = v31;
          CGContextFillRect(a1, v93);
          CGContextSetFillColorWithColor(a1, v63);
          CFRelease(v63);
        }

        else
        {
          CGContextSetFillColorWithColor(a1, v61);
          v98.origin.x = x;
          v98.origin.y = y;
          v98.size.width = v30;
          v98.size.height = v31;
          CGContextFillRect(a1, v98);
          CGContextSetFillColorWithColor(a1, 0);
        }

        CFRelease(v61);
      }

LABEL_68:
      v20 = v77;
      height = v78;
      v22 = v75;
      width = v76;
LABEL_28:
      ++v23;
    }

    while (v23 != a5);
  }
}

CGColorRef create_image_pattern(CGContext *a1, uint64_t a2, CGFloat a3, double a4, double a5, double a6)
{
  v11 = fmin(a5, a6);
  v12 = v11 < 0.0;
  width = a5;
  rect = a4;
  if (v11 < 0.0)
  {
    v14 = a3;
    v75 = CGRectStandardize(*(&a4 - 1));
    a4 = rect;
    width = v75.size.width;
  }

  if (a2)
  {
    v15 = *(a2 + 40);
  }

  else
  {
    v15 = 0.0;
  }

  v16 = a6;
  if (v12)
  {
    v76.origin.x = a3;
    v76.origin.y = rect;
    v76.size.width = a5;
    v76.size.height = a6;
    *(&v16 - 3) = CGRectStandardize(v76);
    a4 = rect;
  }

  if (a2)
  {
    v17 = *(a2 + 48);
  }

  else
  {
    v17 = 0.0;
  }

  v65 = v16 / v17;
  if (v12)
  {
    v18 = a3;
    v19 = a5;
    v20 = a6;
    *&v63 = CGRectStandardize(*(&a4 - 1));
    v77.origin.x = a3;
    v77.origin.y = rect;
    v77.size.width = a5;
    v77.size.height = a6;
    v78 = CGRectStandardize(v77);
    rect = v78.origin.y;
  }

  else
  {
    v63 = a3;
  }

  v74 = 0;
  CGContextGetCTM(&v73, a1);
  v67 = vmlaq_n_f64(vmulq_f64(*&v73.c, 0), *&v73.a, width / v15);
  v66 = vmlaq_f64(vmulq_n_f64(*&v73.c, v65), 0, *&v73.a);
  recta = vaddq_f64(*&v73.tx, vmlaq_n_f64(vmulq_n_f64(*&v73.c, rect), *&v73.a, v63));
  CGContextGetBaseCTM(a1, v21, v22, v23, v24, v25, v26, &v73);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v73.a, xmmword_18439C630), vceqq_f64(*&v73.c, xmmword_18439C780))))) & 1) == 0 && v73.tx == 0.0 && v73.ty == 0.0)
  {
    v64 = vextq_s8(v67, v66, 8uLL);
    v34 = vextq_s8(v66, v67, 8uLL);
  }

  else
  {
    v71 = v73;
    CGAffineTransformInvert(&v72, &v71);
    v35 = vmlaq_n_f64(vmulq_laneq_f64(*&v72.c, v67, 1), *&v72.a, v67.f64[0]);
    v36 = vmlaq_n_f64(vmulq_laneq_f64(*&v72.c, v66, 1), *&v72.a, v66.f64[0]);
    recta = vaddq_f64(*&v72.tx, vmlaq_n_f64(vmulq_laneq_f64(*&v72.c, recta, 1), *&v72.a, recta.f64[0]));
    v64 = vextq_s8(v35, v36, 8uLL);
    v34 = vextq_s8(v36, v35, 8uLL);
  }

  v68 = v34;
  PatternPhase = CGContextGetPatternPhase(a1, v27, v28, v29, v30, v31, v32, v33);
  *&v72.a = v68.i64[1];
  *&v72.b = v64;
  *&v72.d = v68.i64[0];
  v72.tx = recta.f64[0] - PatternPhase;
  v72.ty = recta.f64[1] - v38;
  v39 = CGPatternCreateWithImage2(a2, &v72, kCGPatternTilingNoDistortion);
  if (v39)
  {
    v47 = v39;
    if (a2 && (*(a2 + 39) & 2) != 0)
    {
      FillColorAsColor = CGContextGetFillColorAsColor(a1, v40, v41, v42, v43, v44, v45, v46);
      if (!FillColorAsColor)
      {
        goto LABEL_29;
      }

      v54 = FillColorAsColor;
      if (FillColorAsColor >= 1)
      {
        if (*(FillColorAsColor + 32))
        {
          goto LABEL_29;
        }
      }

      Components = CGColorGetComponents(FillColorAsColor);
      if ((v54 & 0x8000000000000000) != 0)
      {
        ColorSpace = CGTaggedColorGetColorSpace(v54, v56, v57, v58, v59, v60, v61, v62);
      }

      else
      {
        ColorSpace = *(v54 + 24);
      }
    }

    else
    {
      ColorSpace = 0;
      v74 = 0x3FF0000000000000;
      Components = &v74;
    }

    Pattern = CGColorSpaceCreatePattern(ColorSpace);
    if (Pattern)
    {
      v51 = Pattern;
      v52 = CGColorCreateWithPattern(Pattern, v47, Components);
      CGColorSpaceRelease(v51);
LABEL_30:
      CFRelease(v47);
      return v52;
    }

LABEL_29:
    v52 = 0;
    goto LABEL_30;
  }

  return 0;
}

void CGContextDrawImageFromRect(CGContext *a1, CGImageRef image, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v11 = *(a1 + 5);
  if (v11)
  {
    v12 = a10.n128_f64[0];
    v13 = a9.n128_f64[0];
    v14 = a8.n128_f64[0];
    v15 = a7.n128_f64[0];
    v17 = a6.n128_f64[0];
    v18 = a5.n128_f64[0];
    v19 = a4.n128_f64[0];
    v20 = a3.n128_f64[0];
    v21 = *(v11 + 144);
    if (!v21 || v21(a3, a4, a5, a6, a7, a8, a9, a10) == 1006)
    {
      v25.origin.x = v15;
      v25.origin.y = v14;
      v25.size.width = v13;
      v25.size.height = v12;
      v22 = CGImageCreateWithImageInRect(image, v25);
      if (v22)
      {
        v23 = v22;
        v26.origin.x = v20;
        v26.origin.y = v19;
        v26.size.width = v18;
        v26.size.height = v17;
        CGContextDrawImage(a1, v26, v22);

        CFRelease(v23);
      }
    }
  }
}

uint64_t CGContextDrawImageApplyingToneMapping(CGContext *c, CGImageRef image, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  if (!c)
  {
    v19 = 0;
LABEL_9:
    handle_invalid_context("CGContextDrawImageApplyingToneMapping", v19, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (*(c + 4) != 1129601108)
  {
    v19 = c;
    goto LABEL_9;
  }

  v13 = image;
  if (!a3 && !a4)
  {
    CGContextDrawImage(c, *&a9, image);
    return 1;
  }

  HeadroomInfo = CGImageGetHeadroomInfo(image, 0);
  v29 = HeadroomInfo < 1.0 && HeadroomInfo > 0.0;
  if (HeadroomInfo >= 0.0 && (HeadroomInfo >= 1.0 || v29))
  {
    if (v13)
    {
      CFRetain(v13);
    }

    CopyWithProtectedDataProvider = CGImageCreateCopyWithProtectedDataProvider(v13);
    if (CopyWithProtectedDataProvider)
    {
      v38 = CopyWithProtectedDataProvider;
      CFRelease(v13);
      v13 = v38;
    }

    v39 = *(c + 5);
    v41 = v39 && (v40 = *(v39 + 272)) != 0 && v40(a9, a10, a11, a12) == 0;
    if (v13)
    {
      CFRelease(v13);
    }

    if (v41)
    {
      return 1;
    }
  }

  else
  {
    CGPostError("%s: image doesn't have a valid headroom value", v20, v21, v22, v23, v24, v25, v26, "CGContextDrawImageApplyingToneMapping");
  }

  CGPostError("%s failed", v31, v32, v33, v34, v35, v36, v37, "CGContextDrawImageApplyingToneMapping");
  return 0;
}

uint64_t CGDataProviderCreateWithSoftMaskAndMatte(void *a1, void *a2, vImagePixelCount a3, CGDataProvider *a4, CGImage *a5, unsigned int a6)
{
  CopyWithColorSpace = a5;
  v325 = *MEMORY[0x1E69E9840];
  if (!CGImageGetMask(a5))
  {
    CGImageGetMask(CopyWithColorSpace);
    _CGHandleAssert("CGDataProviderCreateWithSoftMaskAndMatte", 1214, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "image != NULL && CGImageGetMask(image) != NULL", "image %p  mask %p", v284, v285, v286, CopyWithColorSpace);
  }

  v9 = malloc_type_calloc(1uLL, 0x518uLL, 0x10F00402677CDB9uLL);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v296 = a1;
  Mask = CGImageGetMask(CopyWithColorSpace);
  UpscaledComponentType = CGImageGetUpscaledComponentType(CopyWithColorSpace);
  v13 = CGImageGetUpscaledComponentType(Mask);
  if (UpscaledComponentType > 5 || ((1 << UpscaledComponentType) & 0x36) == 0)
  {
    _CGHandleAssert("choose_component_type", 1120, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "image_component_type == kCGImageComponent8BitInteger || image_component_type == kCGImageComponent16BitInteger || image_component_type == kCGImageComponent16BitFloat || image_component_type == kCGImageComponent32BitFloat", "component type %d", v14, v15, v16, UpscaledComponentType);
  }

  if (v13 > 5 || ((1 << v13) & 0x36) == 0)
  {
    _CGHandleAssert("choose_component_type", 1125, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "smask_component_type == kCGImageComponent8BitInteger || smask_component_type == kCGImageComponent16BitInteger || smask_component_type == kCGImageComponent16BitFloat || smask_component_type == kCGImageComponent32BitFloat", "mask component type %d", v14, v15, v16, v13);
  }

  if (UpscaledComponentType > 3)
  {
    v17 = UpscaledComponentType;
    if (UpscaledComponentType != 4)
    {
      if (v13 == 4)
      {
        v17 = 4;
      }

      else
      {
        v17 = 5;
      }
    }
  }

  else
  {
    v17 = v13;
    if (UpscaledComponentType != 1)
    {
      if (UpscaledComponentType != 2)
      {
        _CGHandleAssert("choose_component_type", 1147, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "", "Unimplemented", v14, v15, v16, v287);
      }

      if (v13 - 3 >= 0xFFFFFFFE)
      {
        v17 = 2;
      }

      else
      {
        v17 = v13;
      }
    }
  }

  __src = a2;
  Matte = CGImageGetMatte(CopyWithColorSpace);
  if (Matte)
  {
    v19 = Matte;
    ColorSpace = CGImageGetColorSpace(CopyWithColorSpace);
    v21 = ColorSpace;
    if (ColorSpace)
    {
      v22 = *(*(ColorSpace + 3) + 48);
    }

    else
    {
      v22 = 0;
    }

    v23 = (v10 + 1072);
    v10[1065] = 1;
    Type = CGColorSpaceGetType(ColorSpace);
    if ((Type - 10) < 2 || Type == 6)
    {
      if (!CGColorSpaceUsesExtendedRange(v21))
      {
        v32 = CGColorSpaceICCGetRange(v21, v28, v29, v30, v31, v25, v26, v27);
        if (v32)
        {
          goto LABEL_32;
        }
      }
    }

    else if (Type == 5)
    {
      memset(v306, 0, 64);
      v304 = 0u;
      v305 = 0u;
      CGColorSpaceGetLabData(v21, v25, v26, v27, &v304);
      *__dst = xmmword_18439CC40;
      *&__dst[16] = v306[1];
      *&__dst[32] = v306[2];
LABEL_31:
      v32 = __dst;
      goto LABEL_32;
    }

    if (!v22)
    {
      goto LABEL_31;
    }

    for (i = 0; i != v22; ++i)
    {
      v32 = __dst;
      *&__dst[16 * i] = xmmword_18439C780;
    }

LABEL_32:
    if (v17 > 3)
    {
      if (v17 == 4)
      {
        if (v22)
        {
          v44 = (v32 + 8);
          do
          {
            v45 = *v19++;
            v46 = (v45 - *(v44 - 1)) / (*v44 - *(v44 - 1));
            *v23++ = v46;
            v44 += 2;
            --v22;
          }

          while (v22);
        }
      }

      else if (v22)
      {
        v36 = (v32 + 8);
        do
        {
          v37 = *v19++;
          _S0 = (v37 - *(v36 - 1)) / (*v36 - *(v36 - 1));
          __asm { FCVT            H0, S0 }

          *v23 = LOWORD(_S0);
          v23 = (v23 + 2);
          v36 += 2;
          --v22;
        }

        while (v22);
      }
    }

    else if (v17 == 1)
    {
      if (v22)
      {
        v42 = (v32 + 8);
        do
        {
          v43 = *v19++;
          *v23 = fmax(fmin(round((v43 - *(v42 - 1)) / (*v42 - *(v42 - 1)) * 255.0), 255.0), 0.0);
          v23 = (v23 + 1);
          v42 += 2;
          --v22;
        }

        while (v22);
      }
    }

    else
    {
      if (v17 != 2)
      {
        _CGHandleAssert("copy_matte", 1109, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "", "Unimplemented", v25, v26, v27, v287);
      }

      if (v22)
      {
        v34 = (v32 + 8);
        do
        {
          v35 = *v19++;
          *v23 = fmax(fmin(round((v35 - *(v34 - 1)) / (*v34 - *(v34 - 1)) * 65535.0), 65535.0), 0.0);
          v23 = (v23 + 2);
          v34 += 2;
          --v22;
        }

        while (v22);
      }
    }
  }

  DataProviderInternal = CGImageGetDataProviderInternal(CopyWithColorSpace, 0);
  v48 = CGImageGetDataProviderInternal(Mask, 0);
  if (!DataProviderInternal)
  {
    goto LABEL_215;
  }

  v52 = v48;
  v53 = *(DataProviderInternal + 5) & 0xFFFFFFFD;
  if (!v48)
  {
    goto LABEL_215;
  }

  if (CopyWithColorSpace)
  {
    v54 = *(CopyWithColorSpace + 9) - ((*(CopyWithColorSpace + 8) * *(CopyWithColorSpace + 5) + 7) >> 3);
    if (Mask)
    {
      goto LABEL_55;
    }

LABEL_58:
    v55 = 0;
    if (CopyWithColorSpace)
    {
      goto LABEL_56;
    }

    goto LABEL_59;
  }

  v54 = 0;
  if (!Mask)
  {
    goto LABEL_58;
  }

LABEL_55:
  v55 = *(Mask + 9) - ((*(Mask + 8) * *(Mask + 5) + 7) >> 3);
  if (CopyWithColorSpace)
  {
LABEL_56:
    v56 = *(CopyWithColorSpace + 6);
    goto LABEL_60;
  }

LABEL_59:
  v56 = 0;
LABEL_60:
  v57 = *(v48 + 5) & 0xFFFFFFFD;
  if (Mask)
  {
    v58 = *(Mask + 6);
  }

  else
  {
    v58 = 0;
  }

  if ((v53 != 0) == (v57 != 0) && v56 == v58 && v54 == v55)
  {
    v290 = (*(DataProviderInternal + 5) & 0xFFFFFFFD) != 0;
    v59 = 0;
    cf = 0;
    v292 = v54;
    v288 = v54;
  }

  else
  {
    if (v54)
    {
      _ZF = v54 == v55;
    }

    else
    {
      _ZF = 1;
    }

    v61 = !_ZF;
    if (v53 || v61)
    {
      v293 = v54;
      if (CopyWithColorSpace)
      {
        v64 = *(CopyWithColorSpace + 5);
        v65 = *(CopyWithColorSpace + 6);
        v66 = *(CopyWithColorSpace + 8);
        v67 = *(CopyWithColorSpace + 9);
      }

      else
      {
        v66 = 0;
        v64 = 0;
        v65 = 0;
        v67 = 0;
      }

      v68 = CGDataProviderCopyPixelData(DataProviderInternal, v64, v65, v66, v67);
      v69 = CGDataProviderCreateWithCFData(v68);
      if (v68)
      {
        CFRelease(v68);
      }

      v70 = v17;
      if (CopyWithColorSpace)
      {
        v71 = (*(CopyWithColorSpace + 8) * *(CopyWithColorSpace + 5) + 7) >> 3;
      }

      else
      {
        v71 = 0;
      }

      v72 = copy_image_with_new_provider(CopyWithColorSpace, v69, v71);
      CGDataProviderRelease(v69);
      v63 = 0;
      CopyWithColorSpace = v72;
      v54 = v293;
      v62 = v72;
      v17 = v70;
    }

    else
    {
      v62 = 0;
      v63 = v54;
    }

    v74 = v54 != v55 && v55 != 0;
    v288 = v63;
    cf = v62;
    if (v57 || v74)
    {
      if (Mask)
      {
        v76 = *(Mask + 5);
        v77 = *(Mask + 6);
        v78 = *(Mask + 8);
        v79 = *(Mask + 9);
      }

      else
      {
        v78 = 0;
        v76 = 0;
        v77 = 0;
        v79 = 0;
      }

      v80 = CGDataProviderCopyPixelData(v52, v76, v77, v78, v79);
      v81 = CGDataProviderCreateWithCFData(v80);
      if (v80)
      {
        CFRelease(v80);
      }

      if (Mask)
      {
        v82 = (*(Mask + 8) * *(Mask + 5) + 7) >> 3;
      }

      else
      {
        v82 = 0;
      }

      v75 = v296;
      v59 = copy_image_with_new_provider(Mask, v81, v82);
      CGDataProviderRelease(v81);
      v292 = 0;
      v290 = 0;
      Mask = v59;
      goto LABEL_104;
    }

    v59 = 0;
    v290 = 0;
    v292 = v55;
  }

  v75 = v296;
LABEL_104:
  if (CGImageGetAlphaInfo(CopyWithColorSpace))
  {
    v10[1064] = 1;
  }

  if (!v75)
  {
    v291 = 0;
    v87 = a3;
    goto LABEL_116;
  }

  v83 = CGImageGetColorSpace(CopyWithColorSpace);
  v84 = CGColorSpaceGetType(v83);
  v85 = v84;
  BaseColorSpace = v83;
  v87 = a3;
  if (v84 == 8)
  {
    goto LABEL_110;
  }

  if (v84 != 7)
  {
LABEL_115:
    v291 = 0;
    goto LABEL_116;
  }

  BaseColorSpace = CGColorSpaceGetBaseColorSpace(v83);
  if (CGColorSpaceGetType(BaseColorSpace) == 8)
  {
LABEL_110:
    BaseColorSpace = CGColorSpaceGetAlternateColorSpace(BaseColorSpace);
  }

  if (!BaseColorSpace)
  {
    goto LABEL_115;
  }

  if (CGColorSpaceSupportsOutput(BaseColorSpace))
  {
    v91 = color_transform_create(BaseColorSpace, 0);
    goto LABEL_137;
  }

  v101 = *(*(BaseColorSpace + 3) + 48);
  switch(v101)
  {
    case 1:
      v102 = @"kCGColorSpaceGenericGrayGamma2_2";
      break;
    case 4:
      v102 = @"kCGColorSpaceGenericCMYK";
      break;
    case 3:
      v102 = @"kCGColorSpaceSRGB";
      break;
    default:
      _CGHandleAssert("create_intermediate_color_transform_if_needed", 959, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "", "Unimplemented", v88, v89, v90, v287);
  }

  v110 = CGColorSpaceCreateWithName(v102);
  if (v85 == 7)
  {
    v111 = CGColorSpaceCopyColorTable(v83);
    v112 = v111;
    if (v83 && (v113 = *(v83 + 3), *(v113 + 28) == 5))
    {
      v114 = *(*(v113 + 96) + 8);
    }

    else
    {
      v114 = -1;
    }

    BytePtr = CFDataGetBytePtr(v111);
    Indexed = CGColorSpaceCreateIndexed(v110, v114, BytePtr);
    CFRelease(v112);
  }

  else
  {
    if (v83)
    {
      v115 = *(*(v83 + 3) + 48);
    }

    else
    {
      v115 = 0;
    }

    Names = CGColorSpaceGetNames(v83, v103, v104, v105, v106, v107, v108, v109);
    TintTransform = CGColorSpaceGetTintTransform(v83, v119, v120, v121, v122, v123, v124, v125);
    Colorants = CGColorSpaceGetColorants(v83, v127, v128, v129, v130, v131, v132, v133);
    Indexed = CGColorSpaceCreateDeviceN(v115, Names, v110, TintTransform, Colorants, v135, v136, v137);
    v87 = a3;
  }

  v91 = color_transform_create(v110, 0);
  if (!Indexed)
  {
LABEL_137:
    v291 = 0;
    if (v91)
    {
      goto LABEL_138;
    }

    goto LABEL_116;
  }

  CopyWithColorSpace = CGImageCreateCopyWithColorSpace(CopyWithColorSpace, Indexed);
  CGColorSpaceRelease(Indexed);
  v291 = CopyWithColorSpace;
  if (v91)
  {
LABEL_138:
    Cache = CGColorTransformGetCache(v91);
    v100 = 0;
    if (!Cache)
    {
      goto LABEL_140;
    }

    v92 = Cache[2];
    if (!v92)
    {
      goto LABEL_140;
    }

LABEL_117:
    v298 = *(*(v92 + 3) + 48);
    goto LABEL_141;
  }

LABEL_116:
  v92 = CGImageGetColorSpace(CopyWithColorSpace);
  v91 = 0;
  v100 = 1;
  if (v92)
  {
    goto LABEL_117;
  }

LABEL_140:
  v298 = 0;
LABEL_141:
  if (v17 - 2 > 3)
  {
    v139 = 0;
  }

  else
  {
    v139 = dword_18439D090[v17 - 2];
  }

  BitsPerComponent = CGPixelComponentGetBitsPerComponent(v17, v93, v94, v95, v96, v97, v98, v99);
  v309 = 0u;
  v310 = 0u;
  v311 = 0u;
  v312 = 0u;
  v313 = 0u;
  v314 = 0u;
  v315 = 0u;
  v316 = 0u;
  v317 = 0u;
  v318 = 0u;
  v319 = 0u;
  v320 = 0u;
  v321 = 0u;
  v322 = 0u;
  v323 = 0u;
  v324 = 0u;
  if (!BitsPerComponent)
  {
LABEL_216:
    _CGHandleAssert("CGBitmapPixelInfoInitialize", 56, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGBitmapPixelInfo.c", "bits_per_component > 0 && bits_per_component <= 32", "bpc: %zu", v141, v142, v143, 0);
  }

  v144 = BitsPerComponent;
  *__dst = v17;
  *&__dst[8] = BitsPerComponent;
  *&__dst[16] = v298;
  *&__dst[24] = 3;
  *&__dst[28] = v139;
  memset(&__dst[32], 0, 272);
  v145 = CGDataProviderCreateForDestinationWithImage(v91, __dst, v87, a4, CopyWithColorSpace, a6, 1);
  *(v10 + 1) = v145;
  if (!v145)
  {
    if (cf)
    {
      CFRelease(cf);
    }

    if (!v59)
    {
      goto LABEL_190;
    }

    v168 = v59;
    goto LABEL_189;
  }

  v289 = v59;
  memcpy(__dst, __src, 0x130uLL);
  *(v10 + 49) = CGImageGetImageBytesPerRowForPixelInfo(CopyWithColorSpace, v87, __dst, v146, v147, v148, v149, v150);
  v151 = v87;
  memcpy(__dst, __src, 0x130uLL);
  *(v10 + 50) = (CGBitmapPixelInfoGetBitsPerPixel(__dst, v152, v153, v154, v155, v156, v157, v158) * v87 + 7) >> 3;
  if (v100)
  {
    v159 = CGImageGetColorSpace(CopyWithColorSpace);
    v167 = v296;
    goto LABEL_154;
  }

  v169 = CGColorTransformGetCache(v91);
  v167 = v296;
  if (v169)
  {
    v159 = v169[2];
LABEL_154:
    *(v10 + 6) = v159;
    if (v159)
    {
      CFRetain(v159);
    }

    if (v91)
    {
      goto LABEL_157;
    }

    goto LABEL_158;
  }

  *(v10 + 6) = 0;
  if (v91)
  {
LABEL_157:
    CFRelease(v91);
  }

LABEL_158:
  v170 = CGPixelComponentGetBitsPerComponent(v17, v160, v161, v162, v163, v164, v165, v166);
  memset(v308, 0, 268);
  if (!v170)
  {
    goto LABEL_216;
  }

  v171 = v170;
  *__dst = v17;
  *&__dst[8] = v170;
  *&__dst[16] = 1;
  *&__dst[24] = 0;
  *&__dst[28] = v139;
  memset(&__dst[32], 0, 272);
  v172 = CGDataProviderCreateForDestinationWithImage(0, __dst, v151, a4, Mask, a6, 1);
  *(v10 + 2) = v172;
  if (!v172)
  {
    v222 = *(v10 + 1);
LABEL_183:
    CGDataProviderRelease(v222);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v289)
    {
      CFRelease(v289);
    }

    if (!v291)
    {
      goto LABEL_190;
    }

    v168 = v291;
LABEL_189:
    CFRelease(v168);
LABEL_190:
    free(v10);
    return 0;
  }

  v178 = v321;
  v179 = v322;
  v180 = v322;
  *(v10 + 648) = v321;
  *(v10 + 664) = v179;
  v181 = v323;
  v182 = v324;
  v183 = v324;
  *(v10 + 680) = v323;
  *(v10 + 696) = v182;
  v184 = v317;
  v185 = v318;
  v186 = v318;
  *(v10 + 584) = v317;
  *(v10 + 600) = v185;
  v187 = v319;
  v188 = v320;
  v189 = v320;
  *(v10 + 616) = v319;
  *(v10 + 632) = v188;
  v190 = v313;
  v191 = v314;
  v192 = v314;
  *(v10 + 520) = v313;
  *(v10 + 536) = v191;
  v193 = v315;
  v194 = v316;
  v195 = v316;
  *(v10 + 552) = v315;
  *(v10 + 568) = v194;
  v196 = v309;
  v197 = v310;
  v198 = v310;
  *(v10 + 456) = v309;
  *(v10 + 472) = v197;
  v199 = v311;
  v200 = v312;
  v201 = v312;
  *(v10 + 488) = v311;
  *(v10 + 504) = v200;
  *(v10 + 48) = 0u;
  *(v10 + 49) = 0u;
  *(v10 + 50) = 0u;
  *(v10 + 51) = 0u;
  *(v10 + 52) = 0u;
  *(v10 + 53) = 0u;
  *(v10 + 54) = 0u;
  *(v10 + 55) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 57) = 0u;
  *(v10 + 58) = 0u;
  *(v10 + 59) = 0u;
  *(v10 + 60) = 0u;
  *(v10 + 61) = 0u;
  *(v10 + 62) = 0u;
  *(v10 + 63) = 0u;
  *(v10 + 64) = 0u;
  *&__dst[240] = v178;
  *&__dst[256] = v180;
  *&__dst[272] = v181;
  *&__dst[288] = v183;
  *&__dst[176] = v184;
  *&__dst[192] = v186;
  *&__dst[208] = v187;
  *&__dst[224] = v189;
  *&__dst[112] = v190;
  *&__dst[128] = v192;
  *&__dst[144] = v193;
  *&__dst[160] = v195;
  *&__dst[48] = v196;
  *&__dst[64] = v198;
  *(v10 + 102) = v17;
  *(v10 + 103) = 0;
  *(v10 + 52) = v144;
  *(v10 + 53) = v298;
  *(v10 + 108) = 3;
  *(v10 + 109) = v139;
  *(v10 + 55) = 0;
  *(v10 + 56) = 0;
  *(v10 + 184) = v17;
  *(v10 + 185) = 0;
  *(v10 + 93) = v171;
  *(v10 + 94) = 1;
  *(v10 + 190) = 0;
  *(v10 + 191) = v139;
  *__dst = v17;
  *&__dst[8] = v144;
  *&__dst[16] = v298;
  *&__dst[24] = 3;
  *&__dst[28] = v139;
  *&__dst[32] = 0uLL;
  *&__dst[80] = v199;
  *&__dst[96] = v201;
  *(v10 + 89) = CGImageGetImageBytesPerRowForPixelInfo(CopyWithColorSpace, v151, __dst, v173, v174, v175, v176, v177);
  *__dst = v17;
  *&__dst[8] = v144;
  *&__dst[16] = v298;
  *&__dst[24] = 3;
  *&__dst[28] = v139;
  *&__dst[32] = 0uLL;
  *&__dst[240] = v321;
  *&__dst[256] = v322;
  *&__dst[272] = v323;
  *&__dst[288] = v324;
  *&__dst[176] = v317;
  *&__dst[192] = v318;
  *&__dst[208] = v319;
  *&__dst[224] = v320;
  *&__dst[112] = v313;
  *&__dst[128] = v314;
  *&__dst[144] = v315;
  *&__dst[160] = v316;
  *&__dst[48] = v309;
  *&__dst[64] = v310;
  *&__dst[80] = v311;
  *&__dst[96] = v312;
  *(v10 + 90) = (CGBitmapPixelInfoGetBitsPerPixel(__dst, v202, v203, v204, v205, v206, v207, v208) * v151 + 7) >> 3;
  v209 = v17;
  v217 = (CGPixelComponentGetBitsPerComponent(v17, v210, v211, v212, v213, v214, v215, v216) * v151 + 7) >> 3;
  v218 = CGImageGetMask(CopyWithColorSpace);
  if (!v218)
  {
    v221 = v298;
    goto LABEL_166;
  }

  v219 = v218;
  v220 = CGImageGetDataProviderInternal(v218, 0);
  if (!v220)
  {
LABEL_215:
    _CGHandleAssert("CGDataProviderGetType", 212, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider != NULL", "provider is NULL", v49, v50, v51, v287);
  }

  v221 = v298;
  if (*(v220 + 5))
  {
    v217 = *(v219 + 9) + v217 - ((*(v219 + 5) * *(v219 + 8) + 7) >> 3);
  }

LABEL_166:
  if (!v217)
  {
    _CGHandleAssert("CGImageGetMaskBytesPerRowForPixelInfo", 4255, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "bytes_per_row != 0", "zero rowBytes", v49, v50, v51, v287);
  }

  *(v10 + 130) = v217;
  *__dst = v209;
  *&__dst[8] = v171;
  *&__dst[16] = 1;
  *&__dst[24] = 0;
  *&__dst[28] = v139;
  *&__dst[32] = 0;
  memcpy(&__dst[36], v308, 0x10CuLL);
  *(v10 + 131) = (CGBitmapPixelInfoGetBitsPerPixel(__dst, v223, v224, v225, v226, v227, v228, v229) * v151 + 7) >> 3;
  if (v290)
  {
    SequentialWithInternalCallbacks = CGDataProviderCreateSequentialWithInternalCallbacks(v10, &sequential_provider_with_softmask_callbacks, v230, v231, v232, v233, v234, v235);
    if (SequentialWithInternalCallbacks)
    {
      v237 = SequentialWithInternalCallbacks;
      CGDataProviderLock(*(v10 + 1));
      CGDataProviderLock(*(v10 + 2));
      goto LABEL_171;
    }

    goto LABEL_182;
  }

  *v10 = 1;
  CGDataProviderCreateDirectWithInternalCallbacks(v10, *(v10 + 49) * a4, &direct_provider_with_softmask_callbacks, v231, v232, v233, v234, v235);
  v237 = v238;
  if (!v238)
  {
LABEL_182:
    CGDataProviderRelease(*(v10 + 1));
    v222 = *(v10 + 2);
    goto LABEL_183;
  }

LABEL_171:
  if (v167)
  {
    CFRetain(v167);
    *(v10 + 3) = v167;
    *(v10 + 4) = CGColorTransformCreateCGCMSConverter(v167, *(v10 + 6), a6);
    v246 = *(v10 + 89);
    v247 = v246;
    if (v246 || (*__dst = v209, *&__dst[8] = v144, *&__dst[16] = v221, *&__dst[24] = 3, *&__dst[28] = v139, *&__dst[32] = 0uLL, *&__dst[240] = v321, *&__dst[256] = v322, *&__dst[272] = v323, *&__dst[288] = v324, *&__dst[176] = v317, *&__dst[192] = v318, *&__dst[208] = v319, *&__dst[224] = v320, *&__dst[112] = v313, *&__dst[128] = v314, *&__dst[144] = v315, *&__dst[160] = v316, *&__dst[48] = v309, *&__dst[64] = v310, *&__dst[80] = v311, *&__dst[96] = v312, v246 = (CGBitmapPixelInfoGetBitsPerPixel(__dst, v239, v240, v241, v242, v243, v244, v245) * v151 + 7) >> 3, v247 = *(v10 + 89), v248 = v151, v247))
    {
      *__dst = v209;
      *&__dst[8] = v144;
      *&__dst[16] = v221;
      *&__dst[24] = 3;
      *&__dst[28] = v139;
      *&__dst[32] = 0uLL;
      *&__dst[240] = v321;
      *&__dst[256] = v322;
      *&__dst[272] = v323;
      *&__dst[288] = v324;
      *&__dst[176] = v317;
      *&__dst[192] = v318;
      *&__dst[208] = v319;
      *&__dst[224] = v320;
      *&__dst[112] = v313;
      *&__dst[128] = v314;
      *&__dst[144] = v315;
      *&__dst[160] = v316;
      *&__dst[48] = v309;
      *&__dst[64] = v310;
      *&__dst[80] = v311;
      *&__dst[96] = v312;
      v248 = (8 * v247 / CGBitmapPixelInfoGetBitsPerPixel(__dst, v239, v240, v241, v242, v243, v244, v245) + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    *__dst = 0;
    *&__dst[8] = v248;
    *&__dst[16] = 1;
    *&__dst[24] = v246;
    *&__dst[32] = a6;
    *&__dst[40] = v209;
    *&__dst[48] = v144;
    *&__dst[56] = v221;
    *&__dst[64] = 3;
    *&__dst[68] = v139;
    *&__dst[80] = 0;
    *&__dst[72] = 0;
    *&__dst[312] = v323;
    *&__dst[328] = v324;
    *&__dst[280] = v321;
    *&__dst[296] = v322;
    *&__dst[264] = v320;
    *&__dst[136] = v312;
    *&__dst[120] = v311;
    *&__dst[104] = v310;
    *&__dst[88] = v309;
    *&__dst[200] = v316;
    *&__dst[184] = v315;
    *&__dst[168] = v314;
    *&__dst[152] = v313;
    *&__dst[248] = v319;
    *&__dst[232] = v318;
    *&__dst[216] = v317;
    *&v304 = 0;
    *(&v304 + 1) = v248;
    v305 = 1uLL;
    *(&v305 + 1) = *(v10 + 49);
    *&v306[0] = a6;
    v249 = __src;
    memcpy(v306 + 8, __src, 0x130uLL);
    if (__src[5])
    {
      *&v306[3] = &v306[3] + 8;
    }

    *size = 0u;
    memset(v303, 0, 56);
    v301 = 0u;
    CGCMSConverterConvertGetConverterInfo(&v301, *(v10 + 4), __dst, &v304);
    v250 = size[0];
    *(v10 + 5) = v301;
    if (v250 >= 0x401)
    {
      *(v10 + 155) = v250;
      *(v10 + 154) = malloc_type_calloc(1uLL, v250, 0xCA9D20D5uLL);
    }

    v251 = v291;
    if (size[1])
    {
      *(v10 + 156) = size[1];
    }

    v252 = *(&v303[1] + 8);
    *(v10 + 1256) = *(v303 + 8);
    *(v10 + 1272) = v252;
    *(v10 + 1288) = *(&v303[2] + 8);
  }

  else
  {
    *(v10 + 3) = 0;
    v249 = __src;
    v251 = v291;
  }

  *(v10 + 14) = a6;
  memcpy(v10 + 88, v249, 0x130uLL);
  if (v249[5])
  {
    *(v10 + 16) = v10 + 136;
  }

  *(v10 + 8) = v151;
  *(v10 + 9) = a4;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v289)
  {
    CFRelease(v289);
  }

  if (v251)
  {
    CFRelease(v251);
  }

  v254 = *(v10 + 49);
  v255 = *(v10 + 89);
  if (!v255)
  {
    v256 = *(v10 + 8);
    memcpy(__dst, v10 + 408, 0x130uLL);
    v255 = (CGBitmapPixelInfoGetBitsPerPixel(__dst, v257, v258, v259, v260, v261, v262, v263) * v256 + 7) >> 3;
  }

  if (v254 > v255)
  {
    v255 = v254;
  }

  v264 = (v288 + v255 + 15) & 0xFFFFFFFFFFFFFFF0;
  *(v10 + 151) = v264;
  *(v10 + 150) = malloc_type_calloc(1uLL, v264, 0xF0C1F8C1uLL);
  v265 = *(v10 + 49);
  v266 = *(v10 + 130);
  if (!v266)
  {
    v267 = *(v10 + 8);
    memcpy(__dst, v10 + 736, 0x130uLL);
    v266 = (CGBitmapPixelInfoGetBitsPerPixel(__dst, v268, v269, v270, v271, v272, v273, v274) * v267 + 7) >> 3;
  }

  if (v265 > v266)
  {
    v266 = v265;
  }

  v275 = (v292 + v266 + 15) & 0xFFFFFFFFFFFFFFF0;
  *(v10 + 153) = v275;
  v276 = malloc_type_calloc(1uLL, v275, 0x38D06FF0uLL);
  *(v10 + 152) = v276;
  if (!*(v10 + 150) || !v276)
  {
    provider_with_softmask_release_info(v10);
    CGPostError("%s failed", v277, v278, v279, v280, v281, v282, v283, "CGDataProviderCreateWithSoftMaskAndMatte");
    return 0;
  }

  return v237;
}

uint64_t *copy_image_with_new_provider(CGImage *image, CGDataProvider *a2, size_t a3)
{
  if (image)
  {
    v5 = *(image + 5);
    v6 = *(image + 6);
    v7 = *(image + 7);
    v8 = *(image + 8);
  }

  else
  {
    v7 = 0;
    v5 = 0;
    v6 = 0;
    v8 = 0;
  }

  ColorSpace = CGImageGetColorSpace(image);
  BitmapInfo = CGImageGetBitmapInfo(image);
  decode = CGImageGetDecode(image);
  shouldInterpolate = CGImageGetShouldInterpolate(image);
  intent = CGImageGetRenderingIntent(image);
  v14 = CGImageCreate(v5, v6, v7, v8, a3, ColorSpace, BitmapInfo, a2, decode, shouldInterpolate, intent);
  CGImageCopyHeadroomFromOriginal(v14, image, v15, v16, v17, v18, v19, v20);
  return v14;
}

void provider_with_softmask_release_info(void *a1)
{
  if ((*a1 & 1) == 0)
  {
    CGDataProviderUnlock(*(a1 + 1));
    CGDataProviderUnlock(*(a1 + 2));
  }

  CGDataProviderRelease(*(a1 + 1));
  CGDataProviderRelease(*(a1 + 2));
  v2 = *(a1 + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  CGColorSpaceRelease(*(a1 + 6));
  v4 = *(a1 + 5);
  if (v4)
  {
    CGvImageConverterCacheRelease(v4);
  }

  v5 = *(a1 + 150);
  if (v5)
  {
    free(v5);
  }

  v6 = *(a1 + 152);
  if (v6)
  {
    free(v6);
  }

  v7 = *(a1 + 154);
  if (v7)
  {
    free(v7);
  }

  v8 = *(a1 + 156);
  if (v8)
  {
    free(v8);
  }

  v9 = *(a1 + 157);
  if (v9)
  {
    vImageConverter_Release(v9);
  }

  v10 = *(a1 + 158);
  if (v10)
  {
    vImageConverter_Release(v10);
  }

  v11 = *(a1 + 159);
  if (v11)
  {
    free(v11);
  }

  v12 = *(a1 + 160);
  if (v12)
  {
    free(v12);
  }

  v13 = *(a1 + 161);
  if (v13)
  {
    free(v13);
  }

  v14 = *(a1 + 162);
  if (v14)
  {
    free(v14);
  }

  free(a1);
}

uint64_t provider_with_softmask_release_data(uint64_t a1)
{
  CGDataProviderReleaseBytePtr(*(a1 + 8));
  CGDataProviderReleaseBytePtr(*(a1 + 16));
  CGDataProviderReleaseData(*(a1 + 8));
  v2 = *(a1 + 16);

  return CGDataProviderReleaseData(v2);
}

uint64_t provider_with_softmask_retain_data(uint64_t a1)
{
  CGDataProviderRetainBytePtr(*(a1 + 8));
  CGDataProviderRetainBytePtr(*(a1 + 16));
  CGDataProviderRetainData(*(a1 + 8));
  v2 = *(a1 + 16);

  return CGDataProviderRetainData(v2);
}

unint64_t provider_with_softmask_get_bytes_at_position(unsigned __int8 *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a1 & 1) == 0)
  {
    _CGHandleAssert("provider_with_softmask_get_bytes_at_position", 684, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "info->src_provider_uses_random_access == true", "", a6, a7, a8, v8);
  }

  return provider_with_softmask_get_bytes_at_position_inner(a1, a2, a3, a4, 0, a6, a7, a8);
}

unint64_t provider_with_softmask_get_bytes_at_position_inner(unsigned __int8 *a1, void *a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("provider_with_softmask_get_bytes_at_position_inner", 511, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "pos >= 0", "pos = %lld", a6, a7, a8, a3);
  }

  memcpy(__dst, a1 + 88, 0x130uLL);
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst, v13, v14, v15, v16, v17, v18, v19);
  if ((BitsPerPixel & 7) != 0)
  {
    _CGHandleAssert("provider_with_softmask_get_bytes_at_position_inner", 515, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "((dst_bits_per_pixel >> 3) << 3) == dst_bits_per_pixel", "bpp = %zu", v20, v21, v22, BitsPerPixel);
  }

  memcpy(__dst, a1 + 408, 0x130uLL);
  v31 = CGBitmapPixelInfoGetBitsPerPixel(__dst, v24, v25, v26, v27, v28, v29, v30);
  memcpy(__dst, a1 + 736, 0x130uLL);
  v39 = CGBitmapPixelInfoGetBitsPerPixel(__dst, v32, v33, v34, v35, v36, v37, v38);
  v42 = destination_position_to_source_position(BitsPerPixel, *(a1 + 49), *(a1 + 50), v31, *(a1 + 89), a3, v40, v41);
  v45 = destination_position_to_source_position(BitsPerPixel, *(a1 + 49), *(a1 + 50), v39, *(a1 + 130), a3, v43, v44);
  if ((v42 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("provider_with_softmask_get_bytes_at_position_inner", 574, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "image_src_pos >= 0", "position %lld", v46, v47, v48, v42);
  }

  v49 = v45;
  v53 = byte_count_to_byte_count(BitsPerPixel, *(a1 + 49), *(a1 + 50), *(a1 + 10), v31, *(a1 + 89), a4, v48);
  if (v53 > *(a1 + 151))
  {
    _CGHandleAssert("provider_with_softmask_get_bytes_at_position_inner", 586, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "image_bytes_to_read <= info->image_work_buffer_size", "%s: image_bytes_to_read %zd > image_work_buffer_size %zd", v50, v51, v52, "provider_with_softmask_get_bytes_at_position_inner");
  }

  BytesAtPositionInternal = CGDataProviderGetBytesAtPositionInternal(*(a1 + 1), *a1, *(a1 + 150), v42, v53, v50, v51, v52);
  if (BytesAtPositionInternal > v53)
  {
    _CGHandleAssert("provider_with_softmask_get_bytes_at_position_inner", 594, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "image_bytes_read <= image_bytes_to_read", "%zu %zu", v55, v56, v57, BytesAtPositionInternal);
  }

  v190 = a2;
  v195 = BitsPerPixel;
  v58 = 8 * a4 / BitsPerPixel;
  v59 = v58;
  if (v53 != BytesAtPositionInternal)
  {
    v59 = 8 * BytesAtPositionInternal / v31;
  }

  __n = BytesAtPositionInternal;
  v63 = byte_count_to_byte_count(v195, *(a1 + 49), *(a1 + 50), *(a1 + 10), v39, *(a1 + 130), a4, v57);
  if (v63 > *(a1 + 153))
  {
    _CGHandleAssert("provider_with_softmask_get_bytes_at_position_inner", 608, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "smask_bytes_to_read <= info->smask_work_buffer_size", "%s: smask_bytes_to_read %zd > smask_work_buffer_size %zd", v60, v61, v62, "provider_with_softmask_get_bytes_at_position_inner");
  }

  v64 = CGDataProviderGetBytesAtPositionInternal(*(a1 + 2), *a1, *(a1 + 152), v49, v63, v60, v61, v62);
  v68 = v64;
  if (v64 > v63)
  {
    _CGHandleAssert("provider_with_softmask_get_bytes_at_position_inner", 615, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "smask_bytes_read <= smask_bytes_to_read", "bytes read %zu to read %zu", v65, v66, v67, v64);
  }

  if (v63 != v64)
  {
    v58 = 8 * v64 / v39;
  }

  result = 0;
  if (v59 && v58 && v59 == v58)
  {
    v70 = *(a1 + 150);
    v71 = *(a1 + 152);
    v72 = *(a1 + 102);
    v73 = *(a1 + 53);
    v194 = v73;
    v187 = a5;
    v185 = v53;
    v186 = a4;
    v184 = v68;
    if (v72 > 3)
    {
      if (v72 == 4)
      {
        v133 = v73 + 1;
        v134 = 4 * v73;
        __lena = 4 * v73;
        v135 = 0;
        if (a1[1064])
        {
          v136 = 0;
          v137 = v134 + 4;
          v138 = *(a1 + 150);
          v139 = *(a1 + 53);
          do
          {
            v140 = *(v71 + 4 * v136);
            if (v140 == 0.0)
            {
              if (v73)
              {
                memset_pattern16((v70 + 4 * v135), &unk_18439D080, __lena);
                v73 = v194;
              }
            }

            else if (v73)
            {
              v141 = v138;
              v142 = (a1 + 1072);
              v143 = v73;
              do
              {
                v144 = *v142++;
                *v141 = v144 + ((1.0 / v140) * (*v141 - v144));
                ++v141;
                --v143;
              }

              while (v143);
            }

            v135 += v133;
            *(v70 + 4 * v139) = v140 * *(v70 + 4 * v139);
            v139 += v133;
            ++v136;
            v138 = (v138 + v137);
          }

          while (v136 != v59);
        }

        else
        {
          v154 = 0;
          v155 = v134 + 4;
          v156 = *(a1 + 150);
          v157 = *(a1 + 53);
          do
          {
            v158 = *(v71 + 4 * v154);
            if (v158 == 0.0)
            {
              if (v73)
              {
                memset_pattern16((v70 + 4 * v135), &unk_18439D080, __lena);
                v73 = v194;
              }
            }

            else if (v73)
            {
              v159 = v156;
              v160 = (a1 + 1072);
              v161 = v73;
              do
              {
                v162 = *v160++;
                *v159 = v162 + ((1.0 / v158) * (*v159 - v162));
                ++v159;
                --v161;
              }

              while (v161);
            }

            v135 += v133;
            *(v70 + 4 * v157) = v158;
            v157 += v133;
            ++v154;
            v156 = (v156 + v155);
          }

          while (v154 != v59);
        }
      }

      else
      {
        if (v72 != 5)
        {
          goto LABEL_135;
        }

        v87 = a1[1065];
        if (a1[1065])
        {
          v88 = a1 + 1072;
        }

        else
        {
          v88 = 0;
        }

        v89 = v73 + 1;
        v193 = 2 * v73;
        v90 = 0;
        v91 = 0;
        v92 = *(a1 + 53);
        if (a1[1064])
        {
          do
          {
            _H9 = *(v71 + 2 * v91);
            if (v87)
            {
              v94 = (v70 + 2 * v90);
              __asm { FCMP            H9, #0 }

              if (_ZF)
              {
                if (v73)
                {
                  memset_pattern16(v94, &unk_18439D070, v193);
                  v73 = v194;
                }
              }

              else if (v73)
              {
                __asm { FCVT            S0, H9 }

                v100 = v88;
                v101 = v73;
                v102 = 1.0 / _S0;
                do
                {
                  _H1 = *v94;
                  __asm { FCVT            S1, H1 }

                  v105 = *v100;
                  v100 += 2;
                  _H2 = v105;
                  __asm { FCVT            S2, H2 }

                  _S1 = (v102 * (_S1 - _S2)) + _S2;
                  __asm { FCVT            H1, S1 }

                  *v94++ = LOWORD(_S1);
                  --v101;
                }

                while (v101);
              }

              v90 += v89;
            }

            *(v70 + 2 * v92) = _H9 * *(v70 + 2 * v92);
            v92 += v89;
            ++v91;
          }

          while (v91 != v59);
        }

        else
        {
          do
          {
            _H9 = *(v71 + 2 * v91);
            if (v87)
            {
              v110 = (v70 + 2 * v90);
              __asm { FCMP            H9, #0 }

              if (_ZF)
              {
                if (v73)
                {
                  memset_pattern16(v110, &unk_18439D070, v193);
                  v73 = v194;
                }
              }

              else if (v73)
              {
                __asm { FCVT            S0, H9 }

                v112 = v88;
                v113 = v73;
                v114 = 1.0 / _S0;
                do
                {
                  _H1 = *v110;
                  __asm { FCVT            S1, H1 }

                  v117 = *v112;
                  v112 += 2;
                  _H2 = v117;
                  __asm { FCVT            S2, H2 }

                  _S1 = (v114 * (_S1 - _S2)) + _S2;
                  __asm { FCVT            H1, S1 }

                  *v110++ = LOWORD(_S1);
                  --v113;
                }

                while (v113);
              }

              v90 += v89;
            }

            *(v70 + 2 * v92) = _H9;
            v92 += v89;
            ++v91;
          }

          while (v91 != v59);
        }
      }
    }

    else
    {
      if (v72 != 1)
      {
        if (v72 == 2)
        {
          v74 = a1[1065];
          v75 = a1 + 1072;
          if (!a1[1065])
          {
            v75 = 0;
          }

          v192 = v75;
          v76 = v73 + 1;
          __len = 2 * v73;
          if (a1[1064])
          {
            v77 = 0;
            v78 = 0;
            v79 = *(a1 + 53);
            do
            {
              v80 = *(v71 + 2 * v78);
              if (v74)
              {
                v81 = (v70 + 2 * v77);
                if (*(v71 + 2 * v78))
                {
                  if (v73)
                  {
                    v82 = v192;
                    v83 = v73;
                    do
                    {
                      v84 = *v82++;
                      *v81 = v84 + (((*v81 - v84) * (0xFFFFFFFF / v80)) >> 16);
                      ++v81;
                      --v83;
                    }

                    while (v83);
                  }
                }

                else if (v73)
                {
                  memset(v81, 255, __len);
                  v73 = v194;
                }

                v77 += v76;
              }

              if (v80)
              {
                v85 = *(v70 + 2 * v79) * v80;
                v86 = (v85 + HIWORD(v85) + 1) >> 16;
              }

              else
              {
                LOWORD(v86) = 0;
              }

              *(v70 + 2 * v79) = v86;
              v79 += v76;
              ++v78;
            }

            while (v78 != v59);
          }

          else
          {
            v163 = 0;
            v164 = 0;
            v165 = *(a1 + 53);
            do
            {
              v166 = *(v71 + 2 * v164);
              if (v74)
              {
                v167 = (v70 + 2 * v163);
                if (*(v71 + 2 * v164))
                {
                  if (v73)
                  {
                    v168 = v192;
                    v169 = v73;
                    do
                    {
                      v170 = *v168++;
                      *v167 = v170 + (((*v167 - v170) * (0xFFFFFFFF / v166)) >> 16);
                      ++v167;
                      --v169;
                    }

                    while (v169);
                  }
                }

                else if (v73)
                {
                  memset(v167, 255, __len);
                  v73 = v194;
                }

                v163 += v76;
              }

              *(v70 + 2 * v165) = v166;
              v165 += v76;
              ++v164;
            }

            while (v164 != v59);
          }

          goto LABEL_117;
        }

LABEL_135:
        _CGHandleAssert("merge_mask_to_image", 500, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "", "Unimplemented", v65, v66, v67, v183);
      }

      v121 = a1[1065];
      v122 = a1 + 1072;
      if (!a1[1065])
      {
        v122 = 0;
      }

      v123 = v73 + 1;
      if (a1[1064])
      {
        v124 = 0;
        v125 = 0;
        v126 = *(a1 + 53);
        do
        {
          v127 = *(v71 + v125);
          if (v121)
          {
            if (v73)
            {
              v128 = (v70 + v124);
              v129 = inverted_8bit_alpha[*(v71 + v125)];
              v130 = v122;
              v131 = v73;
              do
              {
                v132 = *v130++;
                *v128 = v132 + (((*v128 - v132) * v129) >> 8);
                ++v128;
                --v131;
              }

              while (v131);
            }

            v124 += v123;
          }

          if (v127)
          {
            v127 = (*(v70 + v126) * v127 + ((*(v70 + v126) * v127) >> 8) + 1) >> 8;
          }

          *(v70 + v126) = v127;
          v126 += v123;
          ++v125;
        }

        while (v125 != v59);
      }

      else
      {
        v145 = 0;
        v146 = 0;
        v147 = *(a1 + 53);
        do
        {
          v148 = *(v71 + v146);
          if (v121)
          {
            if (v73)
            {
              v149 = (v70 + v145);
              v150 = inverted_8bit_alpha[v148];
              v151 = v122;
              v152 = v73;
              do
              {
                v153 = *v151++;
                *v149 = v153 + (((*v149 - v153) * v150) >> 8);
                ++v149;
                --v152;
              }

              while (v152);
            }

            v145 += v123;
          }

          *(v70 + v147) = v148;
          v147 += v123;
          ++v146;
        }

        while (v146 != v59);
      }
    }

LABEL_117:
    v171 = *(a1 + 3);
    if (v171)
    {
      v172 = *(a1 + 1272);
      v206 = *(a1 + 1256);
      v173 = *(a1 + 14);
      v174 = *(a1 + 150);
      v176 = *(a1 + 4);
      v175 = *(a1 + 5);
      v177 = *(a1 + 156);
      v207 = v172;
      v208 = *(a1 + 1288);
      v178 = *(a1 + 6);
      v202 = v175;
      v203 = 0;
      v204 = v177;
      v205 = 0;
      *__dst = v174;
      *&__dst[8] = v59;
      *&__dst[16] = xmmword_18439CC50;
      *&__dst[32] = v173;
      *&__dst[36] = 0;
      memcpy(&__dst[40], a1 + 408, 0x130uLL);
      v196[0] = v190;
      v196[1] = v59;
      v197 = xmmword_18439CC50;
      v198 = v173;
      v199 = 0;
      memcpy(v200, a1 + 88, sizeof(v200));
      CGColorTransformConvertUsingCMSConverter(v171, v178, v173, v176, &v202, __dst, v196);
      v179 = v187;
      v181 = v185;
      v180 = v186;
    }

    else
    {
      v179 = v187;
      v181 = v185;
      v180 = v186;
      v182 = __n;
      if (!__n)
      {
LABEL_122:
        if (v181 == v182)
        {
          result = v180;
        }

        else
        {
          result = (v59 * v195) >> 3;
        }

        if (v179)
        {
          *(a1 + 91) += v182;
          *(a1 + 132) += v184;
          *(a1 + 10) += result;
        }

        return result;
      }

      memcpy(v190, *(a1 + 150), __n);
    }

    v182 = __n;
    goto LABEL_122;
  }

  return result;
}

void provider_with_softmask_rewind(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[1];
  if (!v9 || (v10 = a1[2]) == 0)
  {
    _CGHandleAssert("CGDataProviderGetType", 212, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider != NULL", "provider is NULL", a6, a7, a8, v23);
  }

  v11 = *(v9 + 20);
  if (v11 != *(v10 + 20))
  {
    Type = CGDataProviderGetType(v9, a2, a3, a4, a5, a6, a7, a8);
    CGDataProviderGetType(v10, v13, v14, v15, v16, v17, v18, v19);
    _CGHandleAssert("provider_with_softmask_rewind", 783, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "CGDataProviderGetType(image_provider) == CGDataProviderGetType(smask_provider)", "image type %d  mask type %d", v20, v21, v22, Type);
  }

  if ((v11 | 2) != 3)
  {
    _CGHandleAssert("provider_with_softmask_rewind", 793, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "", "Unimplemented", a6, a7, a8, v23);
  }

  CGDataProviderRewind(v9);
  CGDataProviderRewind(v10);
  a1[10] = 0;
  a1[132] = 0;
  a1[91] = 0;
}

unint64_t provider_with_softmask_skip_forward(void *a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  memcpy(__dst, a1 + 11, sizeof(__dst));
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst, v6, v7, v8, v9, v10, v11, v12);
  memcpy(__dst, a1 + 51, sizeof(__dst));
  v21 = CGBitmapPixelInfoGetBitsPerPixel(__dst, v14, v15, v16, v17, v18, v19, v20);
  memcpy(__dst, a1 + 92, sizeof(__dst));
  v29 = CGBitmapPixelInfoGetBitsPerPixel(__dst, v22, v23, v24, v25, v26, v27, v28);
  if ((a2 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("provider_with_softmask_skip_forward", 709, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "count >= 0", "count: %lld", v30, v31, v32, a2);
  }

  v33 = v29;
  v34 = byte_count_to_byte_count(BitsPerPixel, a1[49], a1[50], a1[10], v21, a1[89], a2, v32);
  v38 = CGDataProviderSkipForwardInternal(v5, v34);
  if ((v38 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("provider_with_softmask_skip_forward", 723, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "image_skipped >= 0", "skipped %lld", v35, v36, v37, v38);
  }

  v39 = byte_count_to_byte_count(BitsPerPixel, a1[49], a1[50], a1[10], v33, a1[130], a2, v37);
  v43 = CGDataProviderSkipForwardInternal(v4, v39);
  if ((v43 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("provider_with_softmask_skip_forward", 738, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "smask_skipped >= 0", "smask_skipped %lld", v40, v41, v42, v43);
  }

  if (v38 != v34)
  {
    a2 = byte_count_to_byte_count(v21, a1[89], a1[90], a1[91], BitsPerPixel, a1[49], v38, v42);
  }

  a1[91] += v38;
  a1[132] += v43;
  a1[10] += a2;
  return a2;
}

unint64_t provider_with_softmask_get_bytes(unsigned __int8 *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1)
  {
    _CGHandleAssert("provider_with_softmask_get_bytes", 692, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithSoftmaskAndMatte.c", "info->src_provider_uses_random_access == false", "", a6, a7, a8, v8);
  }

  return provider_with_softmask_get_bytes_at_position_inner(a1, a2, 0, a3, 1, a6, a7, a8);
}

void *PDFFormSetCreate(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004055CCDE27uLL);
  __CFSetLastAllocationEventName();
  if (v2)
  {
    *v2 = a1;
  }

  return v2;
}

uint64_t formHash(uint64_t a1)
{
  if (*(a1 + 24) > 1u)
  {
    return 0;
  }

  else
  {
    return *(a1 + 32);
  }
}

BOOL formEqual(uint64_t a1, uint64_t a2)
{
  result = 1;
  if (a1 != a2)
  {
    v2 = *(a1 + 24);
    if (v2 != *(a2 + 24) || v2 > 1 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  return result;
}

_DWORD *formRetain(uint64_t a1, _DWORD *a2)
{
  result = a2;
  if (a2)
  {
    ++*a2;
  }

  return result;
}

_BYTE *emitFormDefinition(_BYTE *result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((result[56] & 1) == 0)
  {
    v9 = result;
    v10 = *(result + 6);
    if (v10 == 1)
    {
      v43 = *(result + 4);
      if (v43)
      {
        v44 = *(result + 1);
        v12 = *(result + 2);
        PDFContentStreamBegin(v12, a2, a3, a4, a5, a6, a7, a8, v229);
        PDFDocumentPrintf(v44, "/Type /XObject", v45, v46, v47, v48, v49, v50, v233);
        PDFDocumentPrintf(v44, "/Subtype /Form", v51, v52, v53, v54, v55, v56, v234);
        PDFDocumentPrintf(v44, "/FormType 1", v57, v58, v59, v60, v61, v62, v235);
        if (v12)
        {
          v68 = *(v12 + 112);
        }

        else
        {
          v68 = 0;
        }

        PDFDocumentPrintReference(v44, "/Resources %R", *(v68 + 16), v63, v64, v65, v66, v67);
        v87 = *(v43 + 88);
        v252.origin = *(v43 + 72);
        v252.size = v87;
        PDFDocumentPrintf(v44, "/BBox %r", v88, v89, v90, v91, v92, v93, &v252);
        v100 = *(v43 + 24);
        v101 = *(v43 + 56);
        v254 = *(v43 + 40);
        v255 = v101;
        v253 = v100;
        if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v100, xmmword_18439C630), vceqq_f64(v254, xmmword_18439C780))))) & 1) != 0 || *&v255 != 0.0 || *(&v255 + 1) != 0.0)
        {
          PDFDocumentPrintf(v44, "/Matrix %m", v94, v95, v96, v97, v98, v99, &v253);
        }

        PDFDocumentPrintf(v44, "/Group <<", v94, v95, v96, v97, v98, v99, v237);
        PDFDocumentPrintf(v44, "/S /Transparency ", v102, v103, v104, v105, v106, v107, v238);
        v115 = *(v43 + 104);
        if (v115)
        {
          if ((v115 & 0x8000000000000000) != 0)
          {
            ColorSpace = CGTaggedColorGetColorSpace(v115, v108, v109, v110, v111, v112, v113, v114);
          }

          else
          {
            ColorSpace = *(v115 + 24);
          }

          v123 = PDFDocumentResolveColorSpace(v44, ColorSpace);
          v124 = PDFDocumentAddColorSpace(v44, v123);
          PDFDocumentPrintf(v44, "/CS", v125, v126, v127, v128, v129, v130, v239);
          PDFColorSpaceEmitReference(v124, v131, v132, v133, v134, v135, v136, v137);
        }

        else
        {
          PDFDocumentPrintf(v44, "/CS /DeviceGray", v109, v110, v111, v112, v113, v114, v239);
        }

        PDFDocumentPrintf(v44, "/I true", v117, v118, v119, v120, v121, v122, v240);
        PDFDocumentPrintf(v44, "/K false", v138, v139, v140, v141, v142, v143, v241);
        PDFDocumentPrintf(v44, ">>", v144, v145, v146, v147, v148, v149, v242);
        PDFContentStreamBeginData(v12, v150, v151, v152, v153, v154, v155, v156, v243);
        PDFDocumentPushContentStream(v44, v12);
        CGSoftMaskDelegateDrawSoftMask(*(v44 + 16), 0, 0, v43, v157, v158, v159, v160);
        v161 = v44;
        goto LABEL_49;
      }
    }

    else if (!v10)
    {
      v11 = *(result + 4);
      if (v11)
      {
        v13 = *(result + 1);
        v12 = *(result + 2);
        PDFContentStreamBegin(v12, a2, a3, a4, a5, a6, a7, a8, v229);
        PDFDocumentPrintf(v13, "/Type /XObject", v14, v15, v16, v17, v18, v19, v230);
        PDFDocumentPrintf(v13, "/Subtype /Form", v20, v21, v22, v23, v24, v25, v231);
        PDFDocumentPrintf(v13, "/FormType 1", v26, v27, v28, v29, v30, v31, v232);
        if (*(v9 + 10) != -1)
        {
          PDFDocumentPrintf(v13, "/StructParent %d", v32, v33, v34, v35, v36, v37, *(v9 + 10));
        }

        memset(&v252, 0, sizeof(v252));
        space = 0;
        v38 = v11[4];
        if (v11[86] == v11[87])
        {
          v39 = &CGRectNull;
          p_height = &CGRectNull.size.height;
          p_y = &CGRectNull.origin.y;
          p_size = &CGRectNull.size;
        }

        else
        {
          v39 = (v11 + 11);
          p_y = (v11 + 12);
          p_size = (v11 + 13);
          p_height = (v11 + 14);
        }

        v69 = *p_height;
        x = v39->origin.x;
        v71 = *p_y;
        width = p_size->width;
        v251.origin.x = v39->origin.x;
        v251.origin.y = v71;
        v251.size.width = width;
        v251.size.height = v69;
        if (v38 && CGCFDictionaryGetRect(v38, @"kCGContextBoundingBox", &v252))
        {
          v256.origin.x = x;
          v256.origin.y = v71;
          v256.size.width = width;
          v256.size.height = v69;
          v251 = CGRectIntersection(v256, v252);
        }

        PDFDocumentPrintf(v13, "/BBox %r", v32, v33, v34, v35, v36, v37, &v251);
        if (v12)
        {
          v68 = *(v12 + 112);
        }

        else
        {
          v68 = 0;
        }

        PDFDocumentPrintReference(v13, "/Resources %R", *(v68 + 16), v73, v74, v75, v76, v77);
        if (!v38 || !CFDictionaryGetValue(v38, @"kCGContextGroup") && !CFDictionaryGetValue(v38, @"kCGContextColorSpace"))
        {
          goto LABEL_46;
        }

        v85 = *(v13 + 4);
        if (v85 <= 0)
        {
          *(v13 + 4) = 1;
          v86 = (v13 + 8);
        }

        else
        {
          if (v85 != 1)
          {
            goto LABEL_40;
          }

          v86 = (v13 + 8);
          if (*(v13 + 8) > 3)
          {
            goto LABEL_40;
          }
        }

        *v86 = 4;
LABEL_40:
        PDFDocumentPrintf(v13, "/Group <<", v79, v80, v81, v82, v83, v84, v236);
        PDFDocumentPrintf(v13, "/S /Transparency", v162, v163, v164, v165, v166, v167, v244);
        if (kCGColorSpace_block_invoke_once != -1)
        {
          dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
        }

        if (CGCFDictionaryGetCFTypeRef(v38, @"kCGContextColorSpace", CGColorSpaceGetTypeID_type_id, &space))
        {
          space = PDFDocumentResolveColorSpace(v13, space);
          v174 = PDFDocumentAddColorSpace(v13, space);
        }

        else
        {
          space = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericRGB");
          v174 = PDFDocumentAddColorSpace(v13, space);
          CGColorSpaceRelease(space);
        }

        PDFDocumentPrintf(v13, "/CS", v168, v169, v170, v171, v172, v173, v245);
        PDFColorSpaceEmitReference(v174, v175, v176, v177, v178, v179, v180, v181);
        PDFDocumentPrintf(v13, "/I true", v182, v183, v184, v185, v186, v187, v246);
        PDFDocumentPrintf(v13, "/K false", v188, v189, v190, v191, v192, v193, v247);
        PDFDocumentPrintf(v13, ">>", v194, v195, v196, v197, v198, v199, v248);
LABEL_46:
        PDFContentStreamBeginData(v12, v78, v79, v80, v81, v82, v83, v84, v236);
        v206 = *(v9 + 8);
        v207 = *(v9 + 9);
        if (v206 > 0.0 || v207 > 0.0)
        {
          v253 = 0x3FF0000000000000uLL;
          v254.f64[0] = 0.0;
          v254.f64[1] = 1.0;
          *&v255 = v206;
          *(&v255 + 1) = v207;
          if (v12)
          {
            PDFWriterPrintf(*(v12 + 64), "%*m cm q", v200, v201, v202, v203, v204, v205, &v253);
            PDFDocumentPushContentStream(v13, v12);
            CGDisplayListDrawInContextDelegate(v11, *(v13 + 16), 0, 0, 0);
            PDFDocumentPopContentStream(v13);
            v221 = *(v12 + 64);
          }

          else
          {
            PDFWriterPrintf(0, "%*m cm q", v200, v201, v202, v203, v204, v205, &v253);
            PDFDocumentPushContentStream(v13, 0);
            CGDisplayListDrawInContextDelegate(v11, *(v13 + 16), 0, 0, 0);
            PDFDocumentPopContentStream(v13);
            v221 = 0;
          }

          PDFWriterPrintf(v221, "Q", v215, v216, v217, v218, v219, v220, v249);
          goto LABEL_54;
        }

        PDFDocumentPushContentStream(v13, v12);
        CGDisplayListDrawInContextDelegate(v11, *(v13 + 16), 0, 0, 0);
        v161 = v13;
LABEL_49:
        PDFDocumentPopContentStream(v161);
LABEL_54:
        PDFContentStreamEndData(v12, v208, v209, v210, v211, v212, v213, v214);
        PDFContentStreamEnd(v12);
        result = PDFResourceSetEmit(v68, v222, v223, v224, v225, v226, v227, v228);
        v9[56] = 1;
      }
    }
  }

  *a2 = 1;
  return result;
}

void CGPropertiesRemoveProperty(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 4));
  CFDictionaryRemoveValue(*(a1 + 8), a2);

  os_unfair_lock_unlock((a1 + 4));
}

double CGSBoundingShapeCreate()
{
  v0 = malloc_type_malloc(0x200uLL, 0x4C113E60uLL);
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 33) = 0;
  *&result = 8;
  *v0 = 8;
  *(v0 + 2) = v0 + 32;
  *(v0 + 3) = v0 + 160;
  return result;
}

uint64_t CGSBoundingShapeRelease(void *a1)
{
  if (a1)
  {
    free(a1);
  }

  return 0;
}

uint64_t CGSBoundingShapeReset(int *a1)
{
  if (a1)
  {
    v1 = *a1;
    a1[1] = 0;
    a1[2] = 0;
    bzero(a1 + 8, ((2 * v1 * (v1 - 1)) & 0xFFFFFFFFFFFFFFFCLL) + 16 * v1);
  }

  return 0;
}

unsigned int *CGSBoundingShapeAdd(unsigned int *result, unsigned int a2, unsigned int a3, int a4, int a5)
{
  if (result && a4 && a5)
  {
    v5 = a4 + a2;
    if (a4 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = v5;
    }

    if (a4 >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = a2;
    }

    v8 = a5 + a3;
    if (a5 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = v8;
    }

    if (a5 >= 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = a3;
    }

    return shape_accum_add(result, v6, v9, v7, v10);
  }

  return result;
}

uint64_t CGSBoundingShapeAddRect(unsigned int *a1, double *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *a2;
      v4 = a2[1];
      v5 = a2[2];
      v6 = a2[3];
      v8 = 0;
      v9 = 0;
      if ((rect_to_bounds_19063(&v9 + 1, &v9, &v8 + 1, &v8, v3, v4, v5, v6) & 0x80000000) == 0)
      {
        shape_accum_add(a1, HIDWORD(v9), v9, HIDWORD(v8), v8);
      }
    }
  }

  return 0;
}

uint64_t CGSBoundingShapeAddRegion(unsigned int *a1, void *cf)
{
  if (a1)
  {
    if (region_check(cf))
    {
      v4 = cf[2];
      if (v4 != &the_empty_shape)
      {
        v5 = v4[1];
        if (v4[v5] != 0x7FFFFFFF && v4 && *a1 >= 3 && *v4 == 0x80000000 && v5 >= 1)
        {
          v8 = 0x80000000;
          while (1)
          {
            v9 = v4;
            v10 = v4[1];
            v4 += v10;
            v11 = *v4;
            if (v10 >= 3)
            {
              break;
            }

LABEL_18:
            v8 = v11;
            if (v11 == 0x7FFFFFFF)
            {
              return 0;
            }
          }

          v12 = v9 + 2;
          while ((shape_accum_add(a1, *v12, v8, v12[1], v11) & 0x80000000) == 0)
          {
            v12 += 2;
            if (v12 >= v4)
            {
              v11 = *v4;
              goto LABEL_18;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t CGSBoundingShapeAddRegionWithScale(uint64_t result, void *cf, double a3)
{
  if (result)
  {
    v5 = result;
    result = region_check(cf);
    if (result)
    {
      v6 = cf[2];
      if (v6 != &the_empty_shape)
      {
        if (v6)
        {
          if (*v5 >= 3 && *v6 == 0x80000000)
          {
            v7 = v6[1];
            if (v7 >= 1 && v6[v7] != 0x7FFFFFFF)
            {
              v8 = vcvtd_n_s64_f64(a3, 8uLL);
              v9 = 0x80000000;
              do
              {
                v10 = v6 + 2;
                v6 += v6[1];
                v11 = ((v9 * v8 + 1) >> 8);
                v12 = ((*v6 * v8 + 255) >> 8);
                while (v10 < v6)
                {
                  v13 = *v10;
                  v14 = v10[1];
                  v10 += 2;
                  result = shape_accum_add(v5, ((v13 * v8 + 1) >> 8), v11, ((v14 * v8 + 255) >> 8), v12);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }

                v9 = *v6;
              }

              while (*v6 != 0x7FFFFFFF);
            }
          }
        }
      }
    }
  }

  return result;
}

int *CGSRegionCreateWithBoundingShape(int *result)
{
  if (result)
  {
    v1 = shape_accum_shape(result);

    return region_create_with_shape(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t CGSBoundingShapeGetRegion(int *a1, int **a2)
{
  if (a2)
  {
    if (a1)
    {
      v3 = shape_accum_shape(a1);
      a1 = region_create_with_shape(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    *a2 = a1;
  }

  return 0;
}

uint64_t CGSBoundingShapeGetBounds(uint64_t a1, double *a2)
{
  if (a2)
  {
    if (a1 && *a1 >= 3)
    {
      v2 = 0;
      v3 = *(a1 + 16);
      v4 = &v3[4 * *a1];
      v5 = 0x7FFFFFFF;
      v6 = -2147483647;
      v7 = -2147483647;
      v8 = 0x7FFFFFFF;
      v9 = 0x7FFFFFFF;
      do
      {
        while (1)
        {
          v10 = v3[1];
          if (*v3 >= v10)
          {
            break;
          }

          v11 = v3[2];
          if (v11 <= -2147483647)
          {
            v11 = -2147483647;
          }

          v12 = v3[3] - (v3[3] >= v9);
          if (v11 >= v12)
          {
            break;
          }

          v9 = 0;
          if (*v3 < v8)
          {
            v8 = *v3;
          }

          if (v10 > v7)
          {
            v7 = v3[1];
          }

          if (v11 < v5)
          {
            v5 = v11;
          }

          if (v12 > v6)
          {
            v6 = v12;
          }

          v3 += 4;
          v2 = 1;
          if (v3 >= v4)
          {
            goto LABEL_22;
          }
        }

        v3 += 4;
      }

      while (v3 < v4);
      if ((v2 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_22:
      *a2 = v8;
      a2[1] = v5;
      a2[2] = (v7 - v8);
      a2[3] = (v6 - v5);
    }

    else
    {
LABEL_23:
      *a2 = CGRectNull;
    }
  }

  return 0;
}

void PageLayoutTable::computeTableRanges(PageLayoutTable *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0x8000000000000000;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = &unk_1EF23E2D8;
  v11 = &v9;
  v12 = &v8;
  v13 = &v10;
  PageLayoutTable::enumerateLines(*(this + 15), *(this + 16), &v10);
  std::__function::__value_func<void ()(std::shared_ptr<TextLine> const&,BOOL &)>::~__value_func[abi:fe200100](&v10);
  v2 = v8 - v9;
  *(this + 7) = v9;
  *(this + 8) = v2;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v3 = *this;
  v7[0] = this + 56;
  v7[1] = 1;
  v6 = &v10;
  PageLayout::ConvertTextRangesToStringRanges<std::span<CFRange,18446744073709551615ul>,std::back_insert_iterator<std::vector<CFRange>>>(v3, v7, &v6);
  v4 = v10;
  v5 = v11;
  if (v11 == v10)
  {
    *(this + 5) = 0;
    *(this + 6) = 0;
    *(this + 72) = 1;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    *(this + 40) = *v10;
    *(this + 72) = 1;
  }

  v11 = v4;
  operator delete(v4);
}

void sub_184212D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PageLayoutTable::enumerateLines(uint64_t **a1, uint64_t **a2, uint64_t a3)
{
  v15 = 0;
  if (a1 != a2)
  {
    v5 = a1;
    while (1)
    {
      v6 = *v5;
      v7 = v5[1];
LABEL_4:
      if (v6 != v7)
      {
        break;
      }

      v5 += 3;
      if (v5 == a2)
      {
        return;
      }
    }

    v8 = *v6;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    std::vector<std::shared_ptr<TextLine>>::__init_with_size[abi:fe200100]<std::shared_ptr<TextLine>*,std::shared_ptr<TextLine>*>(&v12, *(v8 + 72), *(v8 + 80), (*(v8 + 80) - *(v8 + 72)) >> 4);
    v9 = v12;
    v10 = v13;
    while (1)
    {
      if (v9 == v10)
      {
        v16 = &v12;
        std::vector<std::shared_ptr<TextLine>>::__destroy_vector::operator()[abi:fe200100](&v16);
        v6 += 2;
        goto LABEL_4;
      }

      v11 = *(a3 + 24);
      if (!v11)
      {
        std::__throw_bad_function_call[abi:fe200100]();
      }

      (*(*v11 + 48))(v11, v9, &v15);
      if (v15)
      {
        break;
      }

      v9 += 16;
    }

    v16 = &v12;
    std::vector<std::shared_ptr<TextLine>>::__destroy_vector::operator()[abi:fe200100](&v16);
  }
}

void sub_184212E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  std::vector<std::shared_ptr<TextLine>>::__destroy_vector::operator()[abi:fe200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<TextLine> const&,BOOL &)>::~__value_func[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__throw_bad_function_call[abi:fe200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

uint64_t std::__function::__func<PageLayoutTable::computeTableRanges(void)::$_0,std::allocator<PageLayoutTable::computeTableRanges(void)::$_0>,void ()(std::shared_ptr<TextLine> const&,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN15PageLayoutTable18computeTableRangesEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<PageLayoutTable::computeTableRanges(void)::$_0,std::allocator<PageLayoutTable::computeTableRanges(void)::$_0>,void ()(std::shared_ptr<TextLine> const&,BOOL &)>::operator()(uint64_t result, uint64_t **a2)
{
  v2 = *a2;
  v3 = **a2;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v3 >= *v4)
  {
    v3 = *v4;
  }

  *v4 = v3;
  v6 = v2[1] + *v2;
  if (*v5 > v6)
  {
    v6 = *v5;
  }

  *v5 = v6;
  return result;
}

__n128 std::__function::__func<PageLayoutTable::computeTableRanges(void)::$_0,std::allocator<PageLayoutTable::computeTableRanges(void)::$_0>,void ()(std::shared_ptr<TextLine> const&,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF23E2D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<PageLayoutTable::containsLine(std::shared_ptr<TextLine> const&)::$_0,std::allocator<PageLayoutTable::containsLine(std::shared_ptr<TextLine> const&)::$_0>,void ()(std::shared_ptr<TextLine> const&,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN15PageLayoutTable12containsLineERKNSt3__110shared_ptrI8TextLineEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<PageLayoutTable::containsLine(std::shared_ptr<TextLine> const&)::$_0,std::allocator<PageLayoutTable::containsLine(std::shared_ptr<TextLine> const&)::$_0>,void ()(std::shared_ptr<TextLine> const&,BOOL &)>::operator()(uint64_t result, void *a2, _BYTE *a3)
{
  if (*a2 == **(result + 8))
  {
    **(result + 16) = 1;
    *a3 = 1;
  }

  return result;
}

__n128 std::__function::__func<PageLayoutTable::containsLine(std::shared_ptr<TextLine> const&)::$_0,std::allocator<PageLayoutTable::containsLine(std::shared_ptr<TextLine> const&)::$_0>,void ()(std::shared_ptr<TextLine> const&,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF23E368;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::shared_ptr<PageLayoutTable::TableCell>::shared_ptr[abi:fe200100]<PageLayoutTable::TableCell,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_184213238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<PageLayoutTable::TableCell>::~unique_ptr[abi:fe200100](va);
  _Unwind_Resume(a1);
}

uint64_t PageLayoutTable::forEachCell(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      v7 = *(v5 + 8);
      while (v6 != v7)
      {
        v8 = *v6;
        v6 += 2;
        result = std::function<void ()(PageLayoutTable::TableCell *)>::operator()(*(a3 + 24), v8);
      }

      v5 += 24;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t std::function<void ()(PageLayoutTable::TableCell *)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:fe200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t std::__function::__func<PageLayoutTable::PageLayoutTable(PageLayout *,long,NSDictionary *)::$_0,std::allocator<PageLayoutTable::PageLayoutTable(PageLayout *,long,NSDictionary *)::$_0>,void ()(PageLayoutTable::TableCell *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN15PageLayoutTableC1EP10PageLayoutlP12NSDictionaryE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<PageLayoutTable::PageLayoutTable(PageLayout *,long,NSDictionary *)::$_0,std::allocator<PageLayoutTable::PageLayoutTable(PageLayout *,long,NSDictionary *)::$_0>,void ()(PageLayoutTable::TableCell *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF23E3E8;
  a2[1] = v2;
  return result;
}

void std::vector<std::shared_ptr<PageLayoutTable::TableCell>>::__init_with_size[abi:fe200100]<std::shared_ptr<PageLayoutTable::TableCell>*,std::shared_ptr<PageLayoutTable::TableCell>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<TextLine>>>(a4);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }
}

uint64_t std::__split_buffer<std::vector<std::shared_ptr<PageLayoutTable::TableCell>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<std::shared_ptr<PageLayoutTable>>::__destroy_vector::operator()[abi:fe200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::unique_ptr<PageLayoutTable::TableCell>::~unique_ptr[abi:fe200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 72);
    std::vector<std::shared_ptr<TextLine>>::__destroy_vector::operator()[abi:fe200100](&v4);
    MEMORY[0x1865EE610](v2, 0x1020C4074D241E5);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<PageLayoutTable::TableCell *,std::shared_ptr<PageLayoutTable::TableCell>::__shared_ptr_default_delete<PageLayoutTable::TableCell,PageLayoutTable::TableCell>,std::allocator<PageLayoutTable::TableCell>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIN15PageLayoutTable9TableCellEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<PageLayoutTable::TableCell *,std::shared_ptr<PageLayoutTable::TableCell>::__shared_ptr_default_delete<PageLayoutTable::TableCell,PageLayoutTable::TableCell>,std::allocator<PageLayoutTable::TableCell>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = (v1 + 72);
    std::vector<std::shared_ptr<TextLine>>::__destroy_vector::operator()[abi:fe200100](&v2);

    JUMPOUT(0x1865EE610);
  }

  return result;
}

void std::__shared_ptr_pointer<PageLayoutTable::TableCell *,std::shared_ptr<PageLayoutTable::TableCell>::__shared_ptr_default_delete<PageLayoutTable::TableCell,PageLayoutTable::TableCell>,std::allocator<PageLayoutTable::TableCell>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

CGRect *PageLayoutTable::getCellAtPoint(PageLayoutTable *this, CGPoint a2, PageLayoutTable *a3)
{
  if (this != a3)
  {
    y = a2.y;
    x = a2.x;
    v6 = this;
    do
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      std::vector<std::shared_ptr<PageLayoutTable::TableCell>>::__init_with_size[abi:fe200100]<std::shared_ptr<PageLayoutTable::TableCell>*,std::shared_ptr<PageLayoutTable::TableCell>*>(&v23, *v6, v6[1], (v6[1] - *v6) >> 4);
      v7 = v23;
      v8 = v24;
      if (v23 == v24)
      {
        v10 = 1.79769313e308;
        v9 = 2.22507386e-308;
      }

      else
      {
        v9 = 2.22507386e-308;
        v10 = 1.79769313e308;
        do
        {
          v12 = *v7;
          v11 = *(v7 + 8);
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v13 = v12->origin.y;
          width = v12->size.width;
          height = v12->size.height;
          if (width < 0.0 || height < 0.0)
          {
            v28 = CGRectStandardize(*v12);
            if (v9 < v28.origin.y + v28.size.height)
            {
              v9 = v28.origin.y + v28.size.height;
            }

            v29.origin.x = v12->origin.x;
            v29.origin.y = v13;
            v29.size.width = width;
            v29.size.height = height;
            v30 = CGRectStandardize(v29);
            v13 = v30.origin.y;
          }

          else if (v9 < v13 + height)
          {
            v9 = v13 + height;
          }

          if (v13 < v10)
          {
            v10 = v13;
          }

          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v11);
          }

          v7 += 16;
        }

        while (v7 != v8);
      }

      if (y >= v10 && y < v9)
      {
        v17 = v23;
        v18 = v24;
        while (v17 != v18)
        {
          v19 = *v17;
          v20 = *(v17 + 8);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v27.x = x;
          v27.y = y;
          v21 = CGRectContainsPoint(*v19, v27);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v20);
          }

          if (v21)
          {
            v26 = &v23;
            std::vector<std::shared_ptr<PageLayoutTable>>::__destroy_vector::operator()[abi:fe200100](&v26);
            return v19;
          }

          v17 += 16;
        }
      }

      v26 = &v23;
      std::vector<std::shared_ptr<PageLayoutTable>>::__destroy_vector::operator()[abi:fe200100](&v26);
      v6 += 3;
    }

    while (v6 != a3);
  }

  return 0;
}

void PageLayoutTable::getCellAtCoordinates(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (*a3 < v4)
  {
    if (v4 <= v3 || (v7 = 0, v8 = 0, v9 = 0, std::vector<std::shared_ptr<PageLayoutTable::TableCell>>::__init_with_size[abi:fe200100]<std::shared_ptr<PageLayoutTable::TableCell>*,std::shared_ptr<PageLayoutTable::TableCell>*>(&v7, *(a1 + 24 * v3), *(a1 + 24 * v3 + 8), (*(a1 + 24 * v3 + 8) - *(a1 + 24 * v3)) >> 4), v6 = a3[1], v6 < (v8 - v7) >> 4) && (v8 - v7) >> 4 <= v6)
    {
      __break(1u);
    }

    else
    {
      v10 = &v7;
      std::vector<std::shared_ptr<PageLayoutTable>>::__destroy_vector::operator()[abi:fe200100](&v10);
    }
  }
}

uint64_t PageLayoutTable::forEachCellInRange(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 120);
  v5 = *(result + 128);
  if (v4 != v5)
  {
    if (a3 == a2)
    {
      v23 = *(a4 + 24);

      return std::function<void ()(PageLayoutTable::TableCell *)>::operator()(v23, a2);
    }

    else
    {
      v8 = *(a2 + 32);
      v9 = *(a3 + 32);
      if (v8 > v9)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        _CGExceptionDescription(2, "start->row() > end->row()", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/PageLayout/PageLayoutTable.mm", 359, 0, &v29, v28);
        std::logic_error::logic_error(exception, &v29);
        exception->__vftable = (MEMORY[0x1E69E55A8] + 16);
        __cxa_throw(exception, off_1E6E04878, MEMORY[0x1E69E5270]);
      }

      v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3);
      if (v8 >= v10)
      {
        v26 = __cxa_allocate_exception(0x10uLL);
        _CGExceptionDescription(2, "start->row() >= tableCells.size()", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/PageLayout/PageLayoutTable.mm", 360, 0, &v29, v28);
        std::logic_error::logic_error(v26, &v29);
        v26->__vftable = (MEMORY[0x1E69E55A8] + 16);
        __cxa_throw(v26, off_1E6E04878, MEMORY[0x1E69E5270]);
      }

      if (v9 >= v10)
      {
        v27 = __cxa_allocate_exception(0x10uLL);
        _CGExceptionDescription(2, "end->row() >= tableCells.size()", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/PageLayout/PageLayoutTable.mm", 361, 0, &v29, v28);
        std::logic_error::logic_error(v27, &v29);
        v27->__vftable = (MEMORY[0x1E69E55A8] + 16);
        __cxa_throw(v27, off_1E6E04878, MEMORY[0x1E69E5270]);
      }

      v11 = *(a2 + 40);
      v12 = *(a3 + 40);
      if (v12 >= v11)
      {
        v13 = *(a2 + 40);
      }

      else
      {
        v13 = *(a3 + 40);
      }

      if (v11 <= v12)
      {
        v14 = *(a3 + 40);
      }

      else
      {
        v14 = *(a2 + 40);
      }

      v15 = (v4 + 24 * v8);
      if (v15 <= v4 + 24 * v9)
      {
        v16 = result;
        do
        {
          v17 = *v15;
          v18 = v15[1];
          if (*v15 == v18)
          {
            v24 = __cxa_allocate_exception(0x10uLL);
            _CGExceptionDescription(2, "rowIter->empty()", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/PageLayout/PageLayoutTable.mm", 365, 0, &v29, v28);
            std::logic_error::logic_error(v24, &v29);
            v24->__vftable = (MEMORY[0x1E69E55A8] + 16);
            __cxa_throw(v24, off_1E6E04878, MEMORY[0x1E69E5270]);
          }

          v19 = ((v18 - v17) >> 4) - 1;
          if (v19 >= v13)
          {
            v20 = v13;
          }

          else
          {
            v20 = v19;
          }

          if (v19 >= v14)
          {
            v19 = v14;
          }

          v21 = (v17 + 16 * v20);
          if (v21 <= v17 + 16 * v19)
          {
            v22 = 16 * v19;
            do
            {
              result = std::function<void ()(PageLayoutTable::TableCell *)>::operator()(*(a4 + 24), *v21);
              v21 += 2;
            }

            while (v21 <= v22 + *v15);
            v4 = *(v16 + 120);
            v9 = *(a3 + 32);
          }

          v15 += 3;
        }

        while (v15 <= v4 + 24 * v9);
      }
    }
  }

  return result;
}

uint64_t CGPDFGetBaseEncodingForName(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!strcmp(result, "MacRomanEncoding"))
    {
      return 2;
    }

    else if (!strcmp(v1, "WinAnsiEncoding"))
    {
      return 3;
    }

    else if (!strcmp(v1, "MacExpertEncoding"))
    {
      return 4;
    }

    else if (!strcmp(v1, "StandardEncoding"))
    {
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *CGPDFGetNameForBaseEncoding(int a1)
{
  if ((a1 + 1) >= 8)
  {
    abort();
  }

  return off_1E6E310D8[a1 + 1];
}

uint64_t CGPDFGetNameVectorForBaseEncoding(int a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_1E6E31118 + (a1 - 1));
  }
}

uint64_t CGPDFGetUnicharVectorForBaseEncoding(int a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_1E6E31150 + (a1 - 1));
  }
}

double *CGFontAutohintTransformCreate(uint64_t a1, double *a2, int a3, double a4)
{
  if (CGFontAutohintTransformCreate_once[0] != -1)
  {
    dispatch_once_f(CGFontAutohintTransformCreate_once, 0, defaults_setup);
  }

  v8 = 0;
  if (a1 && (autohinting_enabled & 1) != 0)
  {
    v9 = *(a1 + 104);
    if (v9 < 0)
    {
      v10 = (*(*(a1 + 16) + 144))(*(a1 + 112));
      *(a1 + 104) = v10;
      if (!v10)
      {
        return 0;
      }
    }

    else if (!v9)
    {
      return 0;
    }

    v11 = *a2;
    if (*a2 > 0.0 && v11 == a2[3] && a2[1] == 0.0 && a2[2] == 0.0)
    {
      v12 = v11 == v11 ? v11 : 0;
      if (v12 - 19 >= 0xFFFFFFF4)
      {
        v8 = malloc_type_malloc(0x78uLL, 0x1000040BC1FB88EuLL);
        *v8 = 1;
        *(v8 + 5) = a3;
        v8[2] = a4;
        FontBBox = CGFontGetFontBBox(a1);
        y = FontBBox.origin.y;
        if (FontBBox.origin.x != INFINITY && FontBBox.origin.y != INFINITY)
        {
          height = FontBBox.size.height;
          if (FontBBox.size.width < 0.0 || FontBBox.size.height < 0.0)
          {
            v74 = CGRectStandardize(FontBBox);
            y = v74.origin.y;
            height = v74.size.height;
          }

          *glyphs = 0;
          memset(&bboxes, 0, sizeof(bboxes));
          (*(*(a1 + 16) + 280))(*(a1 + 112), &glyphs[1], glyphs);
          if (glyphs[1] != -1 && glyphs[0] != 0xFFFF && CGFontGetGlyphBBoxes(a1, glyphs, 1uLL, &bboxes))
          {
            x = bboxes.origin.x;
            v16 = 0.0;
            if (bboxes.origin.x != INFINITY)
            {
              v17 = bboxes.origin.y;
              if (bboxes.origin.y != INFINITY)
              {
                width = bboxes.size.width;
                if (bboxes.size.width != 0.0)
                {
                  v19 = bboxes.size.height;
                  if (bboxes.size.height != 0.0)
                  {
                    if (bboxes.size.width < 0.0 || bboxes.size.height < 0.0)
                    {
                      *(&v17 - 1) = CGRectStandardize(*&x);
                    }

                    v16 = v17 + v19;
                  }
                }
              }
            }

            if (CGFontGetGlyphBBoxes(a1, &glyphs[1], 1uLL, &bboxes))
            {
              v20 = bboxes.origin.x;
              v21 = 0.0;
              if (bboxes.origin.x != INFINITY)
              {
                v22 = bboxes.origin.y;
                if (bboxes.origin.y != INFINITY)
                {
                  v23 = bboxes.size.width;
                  if (bboxes.size.width != 0.0)
                  {
                    v24 = bboxes.size.height;
                    if (bboxes.size.height != 0.0)
                    {
                      if (bboxes.size.width < 0.0 || bboxes.size.height < 0.0)
                      {
                        *(&v22 - 1) = CGRectStandardize(*&v20);
                      }

                      v21 = v22 + v24;
                    }
                  }
                }
              }

              if (v16 != v21)
              {
                font_info = get_font_info(a1);
                if (font_info)
                {
                  v27 = font_info[2];
                  if (v27)
                  {
                    v52 = v12;
                    v28 = v12 * 0.015125;
                    if (v28 > 0.3)
                    {
                      v28 = 0.3;
                    }

                    v29 = v12 / v27;
                    if (a3)
                    {
                      v30 = v28;
                    }

                    else
                    {
                      v30 = 0.0;
                    }

                    v31 = (v30 + v30 + v16 * v29 + 0.5);
                    v32 = (v30 + v30 + v21 * v29 + 0.5);
                    v59 = 0;
                    v57 = 0u;
                    v58 = 0u;
                    v55 = 0u;
                    v56 = 0u;
                    v54 = 0u;
                    memset(&bboxes, 0, sizeof(bboxes));
                    if (!CGFontGetDescriptor(a1, &bboxes))
                    {
                      v59 = 0;
                      v57 = 0u;
                      v58 = 0u;
                      v55 = 0u;
                      v56 = 0u;
                      v54 = 0u;
                      memset(&bboxes, 0, sizeof(bboxes));
                    }

                    v33 = y + height;
                    if ((v16 * v29 + 0.5) != v31)
                    {
                      v34 = *(v8 + 5);
                      v69[4] = *(v8 + 4);
                      *v70 = v34;
                      *&v70[16] = *(v8 + 6);
                      v71 = *(v8 + 14);
                      v35 = *(v8 + 1);
                      v69[0] = *v8;
                      v69[1] = v35;
                      v36 = *(v8 + 3);
                      v69[2] = *(v8 + 2);
                      v69[3] = v36;
                      evaluate_autohint_transform(v69, v31, (v30 + v30 + v21 * v29 + 0.5), *(&v56 + 1), v30, v16, v21, v29, v33);
                      v37 = *(v8 + 5);
                      v66[4] = *(v8 + 4);
                      *v67 = v37;
                      *&v67[16] = *(v8 + 6);
                      v68 = *(v8 + 14);
                      v38 = *(v8 + 1);
                      v66[0] = *v8;
                      v66[1] = v38;
                      v39 = *(v8 + 3);
                      v66[2] = *(v8 + 2);
                      v66[3] = v39;
                      evaluate_autohint_transform(v66, v31, (v30 + v30 + v21 * v29 + 0.5), *(&v56 + 1), 0.0, v16, v21, v29, v33);
                      v40 = *(v8 + 5);
                      v63[4] = *(v8 + 4);
                      *v64 = v40;
                      *&v64[16] = *(v8 + 6);
                      v65 = *(v8 + 14);
                      v41 = *(v8 + 1);
                      v63[0] = *v8;
                      v63[1] = v41;
                      v42 = *(v8 + 3);
                      v63[2] = *(v8 + 2);
                      v63[3] = v42;
                      evaluate_autohint_transform(v63, (v16 * v29 + 0.5), (v21 * v29 + 0.5), *(&v56 + 1), v30, v16, v21, v29, v33);
                      v43 = *(v8 + 5);
                      v60[4] = *(v8 + 4);
                      *v61 = v43;
                      *&v61[16] = *(v8 + 6);
                      v62 = *(v8 + 14);
                      v44 = *(v8 + 1);
                      v60[0] = *v8;
                      v60[1] = v44;
                      v45 = *(v8 + 3);
                      v60[2] = *(v8 + 2);
                      v60[3] = v45;
                      evaluate_autohint_transform(v60, (v16 * v29 + 0.5), (v21 * v29 + 0.5), *(&v56 + 1), 0.0, v16, v21, v29, v33);
                      __asm { FMOV            V1.2D, #-1.0 }

                      v51 = vaddq_f64(vpaddq_f64(vabsq_f64(vaddq_f64(*&v70[8], _Q1)), vabsq_f64(vaddq_f64(*&v64[8], _Q1))), vpaddq_f64(vabsq_f64(vaddq_f64(*&v67[8], _Q1)), vabsq_f64(vaddq_f64(*&v61[8], _Q1))));
                      if (vmovn_s64(vcgtq_f64(v51, vdupq_laneq_s64(v51, 1))).u8[0])
                      {
                        v31 = (v16 * v29 + 0.5);
                        v32 = (v21 * v29 + 0.5);
                      }
                    }

                    evaluate_autohint_transform(v8, v31, v32, *(&v56 + 1), a4, v16, v21, v29, v33);
                    if (v16 / v21 <= 0.85 || v8[12] >= 0.33)
                    {
                      *(v8 + 4) = 1;
                      *(v8 + 2) = v52;
                      return v8;
                    }
                  }
                }
              }
            }
          }
        }

        *(v8 + 4) = 0;
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFF, memory_order_relaxed) == 1)
        {
          free(v8);
        }
      }
    }

    return 0;
  }

  return v8;
}

uint64_t evaluate_autohint_transform(uint64_t result, int a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (preserve_text_stems != 1)
  {
    *(result + 24) = -a5;
    v23 = a5 + a6 * a8;
    v24 = a5 + a7 * a8;
    v25 = a2 - a5;
    *(result + 40) = v23;
    *(result + 48) = v25;
    v26 = a3 - a5;
    *(result + 72) = v24;
    *(result + 80) = v26;
    v27 = 0.0;
    v28 = 0.0;
    if (v23 != -a5)
    {
      v28 = (v25 + a5) / (v23 + a5);
    }

    v29 = a5 + a9 * a8;
    *(result + 88) = v28;
    if (v24 != v23)
    {
      v27 = (v26 - v25) / (v24 - v23);
    }

    *(result + 96) = v27;
    v30 = 0.0;
    if (v29 != v24)
    {
      v30 = (v29 - v26) / (v29 - v24);
    }

    *(result + 104) = v30;
    v21 = (result + 104);
    if (v27 >= 0.75 && v27 - v28 <= 0.3)
    {
      v22 = 0;
      goto LABEL_37;
    }

    *(result + 80) = v24;
    v34 = 0.0;
    v35 = 0.0;
    if (v23 != -a5)
    {
      v35 = (v25 + a5) / (v23 + a5);
    }

    *(result + 88) = v35;
    if (v24 != v23)
    {
      v34 = (v24 - v25) / (v24 - v23);
    }

    v22 = 0;
    *(result + 96) = v34;
LABEL_36:
    *v21 = 0x3FF0000000000000;
    goto LABEL_37;
  }

  if (a4 == 0.0)
  {
    a4 = a7;
  }

  if (a4 > a6 * 0.333)
  {
    a4 = a6 * 0.333;
  }

  if (a4 > (a7 - a6) * 0.5)
  {
    a4 = (a7 - a6) * 0.5;
  }

  v9 = a4 * a8;
  v10 = a4 * a8 + a5;
  *(result + 24) = -a5;
  *(result + 32) = v10;
  v11 = a5 + a6 * a8;
  v12 = -(v9 - a7 * a8) - a5;
  v13 = a5 + a7 * a8;
  v14 = a2 - a5;
  *(result + 40) = v11;
  *(result + 48) = v14;
  v15 = a3 - a5;
  *(result + 72) = v13;
  *(result + 80) = v15;
  v16 = v15 - v9 + a5 * -2.0;
  *(result + 56) = v12;
  *(result + 64) = v16;
  v17 = 0.0;
  v18 = 0.0;
  if (v11 != v9 + a5)
  {
    v18 = (v14 - v10) / (v11 - v10);
  }

  v19 = a5 + a9 * a8;
  *(result + 88) = v18;
  if (v12 != v11)
  {
    v17 = (v16 - v14) / (v12 - v11);
  }

  *(result + 96) = v17;
  v20 = 0.0;
  if (v19 != v13)
  {
    v20 = (v19 - v15) / (v19 - v13);
  }

  *(result + 104) = v20;
  v21 = (result + 104);
  if (v17 < 0.75 || v17 - v18 > 0.3)
  {
    *(result + 80) = v13;
    v31 = v13 - v9 + a5 * -2.0;
    *(result + 64) = v31;
    v32 = 0.0;
    v33 = 0.0;
    if (v11 != v10)
    {
      v33 = (v14 - v10) / (v11 - v10);
    }

    *(result + 88) = v33;
    if (v12 != v11)
    {
      v32 = (v31 - v14) / (v12 - v11);
    }

    *(result + 96) = v32;
    v22 = 1;
    goto LABEL_36;
  }

  v22 = 1;
LABEL_37:
  *(result + 112) = v22;
  return result;
}

const void *defaults_setup()
{
  get_BOOLean_property("CGFontAutohintingEnabled", copy_local_domain_value, &autohinting_enabled);
  get_BOOLean_property("CGFontAutohintingAdjustDilation", copy_local_domain_value, adjust_dilation);

  return get_BOOLean_property("CGFontAutohintingPreserveTextStems", copy_local_domain_value, &preserve_text_stems);
}

double *CGFontAutohinterIteratorCreate(atomic_ullong *a1, double *a2, double a3)
{
  Autohinter = CGFontGetAutohinter(a1);
  result = CGFontAutohinterCreateAutohintTransform(Autohinter, a2, 1, a3);
  if (result)
  {
    operator new();
  }

  return result;
}

void autohinter_iterator_release_data(void *a1)
{
  if (a1)
  {
    if (atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(a1);
    }
  }
}

uint64_t autohinter_iterator_end(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2[4];
    if (v2)
    {
      return v2(a2[1], a2[6]);
    }
  }

  return result;
}

void autohinter_iterate(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2 <= 0)
  {
    if (a2 == -1)
    {
      if (a4)
      {
        v23 = *(a4 + 16);
        if (v23)
        {
          v24 = *(a4 + 8);
          v25 = *(a4 + 48);

          v23(v24, a3, v25);
        }
      }
    }

    else
    {
      if (a2)
      {
        goto LABEL_23;
      }

      CGFontAutohintTransformApply();
      v26 = v9;
      v27 = v10;
      if (a4)
      {
        (*(a4 + 24))(*(a4 + 8), 0, &v26, *(a4 + 48));
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        CGFontAutohintTransformApply();
        v26 = v11;
        v27 = v12;
        if (a4)
        {
          (*(a4 + 24))(*(a4 + 8), 1, &v26, *(a4 + 48));
        }

        break;
      case 3:
        if (a4)
        {
          CGFontAutohintTransformApply();
          v14 = v13;
          v16 = v15;
          CGFontAutohintTransformApply();
          v18 = v17;
          v20 = v19;
          CGFontAutohintTransformApply();
          v26 = v21;
          v27 = v22;
          v28 = v18;
          v29 = v20;
          v30 = v14;
          v31 = v16;
          (*(a4 + 24))(*(a4 + 8), 3, &v26, *(a4 + 48));
        }

        break;
      case 4:
        if (a4)
        {
          v6 = *(a4 + 24);
          v7 = *(a4 + 8);
          v8 = *(a4 + 48);

          v6(v7, 4, 0, v8);
        }

        return;
      default:
LABEL_23:
        abort();
    }
  }
}

uint64_t autohinter_iterator_begin(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = a3[2];
    if (v3)
    {
      return v3(a3[1], a2, a3[6]);
    }
  }

  return result;
}

void *PDFColorSpaceCreate(uint64_t a1, const void *a2, int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x10700403608CD5FuLL);
  __CFSetLastAllocationEventName();
  *v6 = 1;
  *(v6 + 1) = a1;
  if (a2)
  {
    CFRetain(a2);
  }

  *(v6 + 3) = a2;
  *(v6 + 4) = 0;
  *(v6 + 2) = 0;
  snprintf_l(v6 + 40, 0x10uLL, 0, "Cs%d", a3);
  Type = CGColorSpaceGetType(*(v6 + 3));
  if (Type > 1)
  {
    if (Type == 2)
    {
      v8 = "DeviceCMYK";
      goto LABEL_14;
    }

    if (Type == 9 && !CGColorSpaceGetBaseColorSpace(*(v6 + 3)))
    {
      v8 = "Pattern";
      goto LABEL_14;
    }
  }

  else
  {
    if (!Type)
    {
      v8 = "DeviceGray";
      goto LABEL_14;
    }

    if (Type == 1)
    {
      v8 = "DeviceRGB";
LABEL_14:
      *(v6 + 4) = v8;
      return v6;
    }
  }

  *(v6 + 2) = PDFXRefTableAddObject(*(*(v6 + 1) + 504));
  return v6;
}

void PDFColorSpaceRelease(CGColorSpaceRef *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    CGColorSpaceRelease(a1[3]);

    free(a1);
  }
}

void PDFColorSpaceEmitReference(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = a1[4];
    v11 = a1[1];
    if (v10)
    {
      PDFDocumentPrintf(v11, "/%N", a3, a4, a5, a6, a7, a8, v10);
    }

    else
    {
      v12 = a1[2];

      PDFDocumentPrintReference(v11, "%R", v12, a4, a5, a6, a7, a8);
    }
  }
}

void emit_array(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a4;
  v10 = a3;
  PDFDocumentPrintf(a1, "%s [", a3, a4, a5, a6, a7, a8, a2);
  for (; v9; --v9)
  {
    v18 = *v10++;
    PDFDocumentPrintf(a1, "%f", v12, v13, v14, v15, v16, v17, v18);
  }

  PDFDocumentPrintf(a1, "]", v12, v13, v14, v15, v16, v17, a9);
}

CGPDFObjectType CGPDFObjectGetType(CGPDFObjectRef object)
{
  if (!object)
  {
    return 1;
  }

  if (*(object + 2) == 12)
  {
    return 3;
  }

  return *(object + 2);
}

BOOL CGPDFObjectGetValue(CGPDFObjectRef object, CGPDFObjectType type, void *value)
{
  if (object)
  {
    v3 = *(object + 2);
    if (type == kCGPDFObjectTypeInteger || type == (kCGPDFObjectTypeDictionary|kCGPDFObjectTypeReal))
    {
      if (v3 != 12 && v3 != 3)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (type == kCGPDFObjectTypeReal)
      {
        switch(v3)
        {
          case 12:
            goto LABEL_8;
          case 4:
            v4 = *(object + 4);
            if (!value)
            {
LABEL_28:
              LOBYTE(object) = 1;
              return object;
            }

LABEL_27:
            *value = v4;
            goto LABEL_28;
          case 3:
LABEL_8:
            v4 = *(object + 4);
            if (!value)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
        }

LABEL_24:
        LOBYTE(object) = 0;
        return object;
      }

      if (v3 != type)
      {
        goto LABEL_24;
      }

      if (type <= kCGPDFObjectTypeString)
      {
        if (type <= kCGPDFObjectTypeReal)
        {
          if (type == kCGPDFObjectTypeNull)
          {
            goto LABEL_28;
          }

          if (type == kCGPDFObjectTypeBoolean)
          {
            if (value)
            {
              *value = *(object + 32);
            }

            goto LABEL_28;
          }

LABEL_36:
          pdf_error("invalid object type: %d.", type);
          abort();
        }
      }

      else if (type >= (kCGPDFObjectTypeDictionary|kCGPDFObjectTypeBoolean))
      {
        if (type == (kCGPDFObjectTypeDictionary|kCGPDFObjectTypeBoolean))
        {
          if (value)
          {
            *value = *(object + 1);
          }

          goto LABEL_28;
        }

        if (type == (kCGPDFObjectTypeStream|kCGPDFObjectTypeBoolean))
        {
          if (value)
          {
            *value = *(object + 8);
          }

          goto LABEL_28;
        }

        goto LABEL_36;
      }
    }

    if (value)
    {
      *value = *(object + 4);
    }

    goto LABEL_28;
  }

  return object;
}

CFStringRef CGPDFObjectCreateDebugDescription(const __CFString *a1)
{
  v1 = a1;
  if (a1)
  {
    v6 = 0;
    __bufp = 0;
    v2 = open_memstream(&__bufp, &v6);
    if (v2 && (v3 = v2, CGPDFObjectPrintWithIndent(v1, v2, 0), fclose(v3), (v4 = __bufp) != 0))
    {
      if (v6)
      {
        v1 = CFStringCreateWithCString(*MEMORY[0x1E695E480], __bufp, 0x600u);
        v4 = __bufp;
      }

      else
      {
        v1 = 0;
      }

      free(v4);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

size_t CGPDFObjectPrintWithIndent(size_t result, FILE *a2, int a3)
{
  if (result)
  {
    v3 = result;
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = *MEMORY[0x1E69E9848];
    }

    v5 = *(result + 8);
    if (v5 > 6)
    {
      if (v5 > 9)
      {
        switch(v5)
        {
          case 10:
            return fprintf(v4, "Object Reference: R(%lu,%hu)");
          case 11:
            return fprintf(v4, "Operator: %d");
          case 12:
            return fprintf(v4, "Offset: %lld");
        }

        return fprintf(v4, "UNKNOWN OBJECT TYPE: %d");
      }

      if (v5 == 7)
      {
        fwrite("Array: ", 7uLL, 1uLL, v4);
        v9 = *(v3 + 32);

        return CGPDFArrayPrintWithIndent(v9, v4, a3);
      }

      else if (v5 == 8)
      {
        fwrite("Dictionary: ", 0xCuLL, 1uLL, v4);
        v10 = *(v3 + 32);

        return CGPDFDictionaryPrintWithIndent(v10, v4, a3);
      }

      else
      {
        fwrite("Stream: ", 8uLL, 1uLL, v4);
        v7 = *(v3 + 32);

        return stream_print(v7, v4, a3, 0);
      }
    }

    else if (v5 > 3)
    {
      if (v5 == 4)
      {
        return fprintf(v4, "Real: %g");
      }

      else if (v5 == 5)
      {
        fwrite("Name: ", 6uLL, 1uLL, v4);
        v11 = *(v3 + 32);
        v12 = strlen(v11);
        for (result = fputc(47, v4); v12; --v12)
        {
          v14 = *v11++;
          v13 = v14;
          if ((v14 - 127) <= 0xFFFFFFA1 || ((v13 - 35) <= 0x3A ? (v15 = ((1 << (v13 - 35)) & 0x50000000A001065) == 0) : (v15 = 1), !v15 || v13 == 125 || v13 == 123))
          {
            result = fprintf(v4, "#%02x", v13);
          }

          else
          {
            result = fputc(v13, v4);
          }
        }
      }

      else
      {
        fwrite("String: ", 8uLL, 1uLL, v4);
        v8 = *(v3 + 32);

        return CGPDFStringPrint(v8, v4);
      }
    }

    else
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
          return fprintf(v4, "Boolean: %s");
        }

        if (v5 == 3)
        {
          return fprintf(v4, "Integer: %ld");
        }

        return fprintf(v4, "UNKNOWN OBJECT TYPE: %d");
      }

      return fwrite("null object", 0xBuLL, 1uLL, v4);
    }
  }

  return result;
}

void *pdf_object_create_copy(__int128 *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x28uLL, 0x103204077D336DFuLL);
  v3 = v2;
  if (v2)
  {
    v4 = *a1;
    v5 = a1[1];
    v2[4] = *(a1 + 4);
    *v2 = v4;
    *(v2 + 1) = v5;
    v6 = *(a1 + 2);
    if (v6 > 6)
    {
      if (v6 != 7 && v6 != 8 && v6 != 9)
      {
        return v3;
      }

      goto LABEL_11;
    }

    if (v6 == 5)
    {
      v2[4] = strdup(*(a1 + 4));
      return v3;
    }

    if (v6 == 6)
    {
LABEL_11:
      v7 = v2[4];
      if (v7)
      {
        CFRetain(v7);
      }
    }
  }

  return v3;
}

_BYTE *CGPDFObjectCreateWithBoolean(char a1)
{
  result = malloc_type_calloc(1uLL, 0x28uLL, 0x103204077D336DFuLL);
  result[12] |= 1u;
  *(result + 2) = 2;
  result[32] = a1;
  return result;
}

_BYTE *CGPDFObjectCreateWithInteger(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 0x28uLL, 0x103204077D336DFuLL);
  result[12] |= 1u;
  *(result + 2) = 3;
  *(result + 4) = a1;
  return result;
}

_BYTE *CGPDFObjectCreateWithReal(double a1)
{
  result = malloc_type_calloc(1uLL, 0x28uLL, 0x103204077D336DFuLL);
  result[12] |= 1u;
  *(result + 2) = 4;
  *(result + 4) = a1;
  return result;
}

_BYTE *CGPDFObjectCreateWithName(const char *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x103204077D336DFuLL);
  v2[12] |= 1u;
  *(v2 + 2) = 5;
  *(v2 + 4) = strdup(a1);
  return v2;
}

_BYTE *CGPDFObjectCreateWithString(const void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x103204077D336DFuLL);
  v2[12] |= 1u;
  *(v2 + 2) = 6;
  if (a1)
  {
    CFRetain(a1);
  }

  *(v2 + 4) = a1;
  return v2;
}

_BYTE *CGPDFObjectCreateWithArray(const void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x103204077D336DFuLL);
  v2[12] |= 1u;
  *(v2 + 2) = 7;
  if (a1)
  {
    CFRetain(a1);
  }

  *(v2 + 4) = a1;
  return v2;
}

_BYTE *CGPDFObjectCreateWithDictionary(const void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x103204077D336DFuLL);
  v2[12] |= 1u;
  *(v2 + 2) = 8;
  if (a1)
  {
    CFRetain(a1);
  }

  *(v2 + 4) = a1;
  return v2;
}

_BYTE *CGPDFObjectCreateWithStream(const void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x103204077D336DFuLL);
  v2[12] |= 1u;
  *(v2 + 2) = 9;
  if (a1)
  {
    CFRetain(a1);
  }

  *(v2 + 4) = a1;
  return v2;
}

void CGPDFObjectRelease(_DWORD *a1)
{
  if ((a1[2] - 5) <= 4)
  {
    pdf_object_release_compound_value(a1);
  }

  free(a1);
}

void pdf_softmask_release_info(CFTypeRef *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

void pdf_softmask_draw_softmask(CGPDFStream **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 + 4);
    if (v4)
    {
      v3 = *v4;
      v5 = v4[11];
      goto LABEL_6;
    }

    v3 = 0;
  }

  v5 = 0;
LABEL_6:
  v6 = CGPDFContentStreamCreateWithStream(v3, v5, a1[2]);
  v13 = CGPDFDrawingContextCreateWithContentStream(v6, 0);
  if (v6)
  {
    CFRelease(v6);
  }

  CGPDFDrawingContextDraw(v13, a2, v7, v8, v9, v10, v11, v12);

  CGPDFDrawingContextRelease(v13);
}

void RIPCacheEntryRemove(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(v2 + 8) = v1;
  v3 = a1[3];
  --*(a1[4] + 40);
  *v1 = v2;
  v4 = a1[5];
  a1[5] = 0;
  *a1 = a1;
  a1[1] = a1;
  --*(v4 + 16);
  v5 = a1[2];
  *(v5 + 8) = v3;
  *v3 = v5;
  a1[2] = (a1 + 2);
  a1[3] = (a1 + 2);
  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
  }

  --*(RIPGetCacheState_cache_state + 16);
}

void RIPPrint()
{
  v0 = *MEMORY[0x1E69E9848];
  fputc(10, *MEMORY[0x1E69E9848]);
  fwrite("RIP\n", 4uLL, 1uLL, v0);
  fwrite("===\n\n", 5uLL, 1uLL, v0);
  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
  }

  v1 = RIPGetCacheState_cache_state;
  RIPLockCacheState();
  pthread_mutex_lock(&contexts_mutex);
  v2 = contexts;
  if (contexts)
  {
    v3 = 0;
    v4 = contexts;
    do
    {
      ++v3;
      v4 = *(v4 + 8);
    }

    while (v4);
  }

  else
  {
    v3 = 0;
  }

  v13 = malloc_type_calloc(v3 + 1, 0x68uLL, 0x10200409CB08D46uLL);
  fprintf(v0, "%-18s %-10s %.10s %-18s %-18s %-6s %-6s %-8s\n", "Context", "Usage", "Generation", "Reference", "Address", "Width", "Height", "Type");
  fprintf(v0, "%.18s %.10s %.10s %.18s %.18s %.6s %.6s %.8s\n", "====================", "====================", "====================", "====================", "====================", "====================", "====================", "====================");
  if (v2)
  {
    v5 = v13;
    do
    {
      RIPPrintCache(v0, v1, *v2, v5);
      fprintf(v0, "%.18s %.10s %.10s %.18s %.18s %.6s %.6s %.8s\n", "--------------------", "--------------------", "--------------------", "--------------------", "--------------------", "--------------------", "--------------------", "--------------------");
      v2 = v2[1];
      v5 += 13;
    }

    while (v2);
  }

  pthread_mutex_unlock(&contexts_mutex);
  v11 = v1;
  RIPPrintCache(v0, v1, 0, &v13[13 * v3]);
  RIPUnlockCacheState();
  fprintf(v0, "%.18s %.10s %.10s %.18s %.18s %.6s %.6s %.8s\n", "====================", "====================", "====================", "====================", "====================", "====================", "====================", "====================");
  fputc(10, v0);
  fprintf(v0, "%-18s %-10s %-10s %-10s\n", "Context", "Count", "Size", "Type");
  fprintf(v0, "%.18s %.10s %.10s %.10s\n", "====================", "====================", "====================", "====================");
  v6 = 0;
  v7 = v13 + 3;
  v12 = v3;
  do
  {
    v8 = 0;
    v9 = v7;
    do
    {
      if (*v9)
      {
        if (v13[13 * v6])
        {
          fprintf(v0, "%18p");
        }

        else
        {
          fprintf(v0, "%18s");
        }

        v10 = "Unknown";
        if (v8 <= 2)
        {
          v10 = off_1E6E31268[v8];
        }

        fprintf(v0, " %10lu %10lu %s\n", *v9, v9[1], v10);
      }

      ++v8;
      v9 += 2;
    }

    while (v8 != 5);
    if (v6 < v12)
    {
      fprintf(v0, "%.18s %.10s %.10s %.10s\n", "--------------------", "--------------------", "--------------------", "--------------------");
    }

    ++v6;
    v7 += 13;
  }

  while (v6 <= v12);
  fprintf(v0, "%.18s %.10s %.10s %.10s\n", "====================", "====================", "====================", "====================");
  fprintf(v0, "%-18s %10zu Total\n", "", *(v11 + 16));

  free(v13);
}

FILE *RIPPrintCache(FILE *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a3 + 208);
  v7 = *(a2 + 8);
  v5 = (a2 + 8);
  v6 = v7;
  if (!a3)
  {
    v4 = v5;
  }

  v8 = *v4;
  *a4 = a3;
  v9 = *(v6 + 8);
  if (v9 != v6)
  {
    v12 = result;
    v13 = a4 + 3;
    do
    {
      if (*(v9 + 24) == v8)
      {
        ++a4[1];
        v14 = *(v9 + 32);
        ++v13[2 * v14];
        switch(v14)
        {
          case 2:
            if (a3)
            {
              fprintf(v12, "%18p");
            }

            else
            {
              fprintf(v12, "%18s");
            }

            result = fprintf(v12, " %10u %10u %18p %18p %6u %6u PatternImage\n");
            break;
          case 1:
            if (a3)
            {
              fprintf(v12, "%18p");
            }

            else
            {
              fprintf(v12, "%18s");
            }

            result = fprintf(v12, " %10u %10u %18p %18p %6u %6u Pattern\n");
            break;
          case 0:
            if (a3)
            {
              fprintf(v12, "%18p");
            }

            else
            {
              fprintf(v12, "%18s");
            }

            result = fprintf(v12, " %10u %10u %18p %18p %6zu %6zu Function\n");
            break;
        }
      }

      v9 = *(v9 + 8);
    }

    while (v9 != v6);
  }

  return result;
}

void *CGColorTransformCreateParametricCodeFragment(void *a1, void *a2, uint64_t a3)
{
  v3 = 0;
  v61 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    Cache = CGColorTransformGetCache(a1);
    if (Cache)
    {
      v8 = Cache[2];
      if (v8)
      {
        if (*(*(v8 + 24) + 48) == 3)
        {
          *&v57 = MEMORY[0x1E69E9820];
          *(&v57 + 1) = 0x40000000;
          *&v58 = __create_resolved_source_space_block_invoke;
          *(&v58 + 1) = &__block_descriptor_tmp_36_17670;
          v59 = a1;
          ResolvedColorSpace = CGColorSpaceCreateResolvedColorSpace(a2, &v57);
          v10 = CGColorTransformGetCache(a1);
          Converter = CGColorTransformCacheCreateConverter(v10, ResolvedColorSpace, a3);
          v12 = CGColorTransformUsesCalibratedColor(a1);
          if (!Converter)
          {
            v3 = 0;
LABEL_75:
            CGColorSpaceRelease(ResolvedColorSpace);
            return v3;
          }

          v13 = v12;
          v17 = CFGetTypeID(Converter);
          v18 = kCGCMSConverterID;
          if (!kCGCMSConverterID)
          {
            pthread_once(&CGCMSConverterGetTypeID_once, converter_initialize);
            v18 = kCGCMSConverterID;
          }

          if (v17 == v18)
          {
            if (!v13)
            {
              if (*(Converter + 6) != 3 || *(Converter + 5) != 3)
              {
                _CGHandleAssert("create_linear_parametric_data", 5778, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "converter != NULL && converter->nSrcComp == 3 && converter->nDstComp == 3", "converter: %p  src components: %lu  destComponents %lu", v14, v15, v16, Converter);
              }

              v24 = malloc_type_malloc(0x16CuLL, 0x10000403884A0CCuLL);
              *v24 = 0;
              *(v24 + 2) = 1065353216;
              *(v24 + 12) = 0;
              *(v24 + 20) = 0u;
              *(v24 + 52) = 0x100000000;
              *(v24 + 15) = 1065353216;
              *(v24 + 8) = 0;
              *(v24 + 72) = 0u;
              *(v24 + 13) = 0x200000000;
              *(v24 + 28) = 1065353216;
              *(v24 + 116) = 0;
              *(v24 + 132) = 0;
              *(v24 + 124) = 0;
              *(v24 + 40) = 1065353216;
              *(v24 + 172) = 0;
              *(v24 + 164) = 0;
              *(v24 + 45) = 1065353216;
              *(v24 + 23) = 0;
              *(v24 + 24) = 0;
              *(v24 + 25) = 1065353216;
              *(v24 + 26) = 0x100000000;
              *(v24 + 54) = 1065353216;
              *(v24 + 236) = 0;
              *(v24 + 220) = 0;
              *(v24 + 228) = 0;
              *(v24 + 260) = 0x200000000;
              *(v24 + 67) = 1065353216;
              *(v24 + 34) = 0;
              *(v24 + 35) = 0;
              *(v24 + 36) = 0;
              *(v24 + 39) = 0x300000000;
              *(v24 + 80) = 1065353216;
              *(v24 + 340) = 0;
              *(v24 + 324) = 0;
              v25 = 7;
              *(v24 + 332) = 0;
LABEL_72:
              v3 = malloc_type_calloc(1uLL, 0x38uLL, 0x10E20400F34DD07uLL);
              *v3 = 1;
              *(v3 + 12) = 0;
              *(v3 + 4) = 0;
              v3[3] = v25;
              v3[4] = v24;
LABEL_74:
              CFRelease(Converter);
              goto LABEL_75;
            }

            Retained = *(Converter + 11);
            if (!Retained)
            {
              v20 = *(Converter + 9);
              colorsync_profile_sequence = create_colorsync_profile_sequence(*(Converter + 3), *(Converter + 4), *(Converter + 21), Converter[80]);
              if (colorsync_profile_sequence)
              {
                v22 = colorsync_profile_sequence;
                Retained = CGColorSyncTransformCacheGetRetained(colorsync_profile_sequence, v20);
                CFRelease(v22);
              }

              else
              {
                Retained = 0;
              }
            }

            if (create_calibrated_parametric_data_cglibrarypredicate != -1)
            {
              dispatch_once(&create_calibrated_parametric_data_cglibrarypredicate, &__block_literal_global_145);
            }

            calibrated_parametric_data_f = create_calibrated_parametric_data_f(Retained, @"com.apple.cmm.ParametricConversion", 0);
            if (!*(Converter + 11))
            {
              CGColorSyncTransformCacheRelease(Retained);
            }

            if (calibrated_parametric_data_f)
            {
              v27 = CFGetTypeID(calibrated_parametric_data_f);
              if (v27 == CFArrayGetTypeID())
              {
                v55 = ResolvedColorSpace;
                Count = CFArrayGetCount(calibrated_parametric_data_f);
                v24 = malloc_type_malloc(52 * Count, 0x10000403884A0CCuLL);
                if (Count)
                {
                  v28 = 0;
                  v56 = calibrated_parametric_data_f;
                  do
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(calibrated_parametric_data_f, v28);
                    if (!ValueAtIndex)
                    {
                      goto LABEL_67;
                    }

                    v30 = ValueAtIndex;
                    v31 = CFGetTypeID(ValueAtIndex);
                    if (v31 != CFDictionaryGetTypeID())
                    {
                      goto LABEL_67;
                    }

                    v32 = &v24[52 * v28];
                    if (CFDictionaryContainsKey(v30, @"com.apple.cmm.Matrix"))
                    {
                      *v32 = 1836348024;
                      Value = CFDictionaryGetValue(v30, @"com.apple.cmm.Matrix");
                      v34 = 0;
                      v35 = &v57;
                      do
                      {
                        v36 = 0;
                        v37 = v35;
                        do
                        {
                          v38 = CFArrayGetValueAtIndex(Value, v34);
                          v39 = CFArrayGetValueAtIndex(v38, v36);
                          CFNumberGetValue(v39, kCFNumberFloat32Type, v37);
                          ++v36;
                          v37 += 4;
                        }

                        while (v36 != 3);
                        v40 = CFArrayGetValueAtIndex(Value, v34);
                        v41 = CFArrayGetValueAtIndex(v40, 3);
                        CFNumberGetValue(v41, kCFNumberFloat32Type, &valuePtr[v34++]);
                        v35 = (v35 + 12);
                      }

                      while (v34 != 3);
                      *(v32 + 4) = v57;
                      *(v32 + 3) = DWORD2(v57);
                      *(v32 + 4) = valuePtr[0];
                      *(v32 + 5) = HIDWORD(v57);
                      *(v32 + 3) = v58;
                      *(v32 + 8) = valuePtr[1];
                      *(v32 + 36) = *(&v58 + 1);
                      *(v32 + 11) = v59;
                      *(v32 + 12) = valuePtr[2];
                    }

                    else
                    {
                      v42 = @"com.apple.cmm.ParamCurve0";
                      if (!CFDictionaryContainsKey(v30, @"com.apple.cmm.ParamCurve0") && !CFDictionaryContainsKey(v30, @"com.apple.cmm.ParamCurve1") && !CFDictionaryContainsKey(v30, @"com.apple.cmm.ParamCurve2") && !CFDictionaryContainsKey(v30, @"com.apple.cmm.ParamCurve3") && !CFDictionaryContainsKey(v30, @"com.apple.cmm.ParamCurve4"))
                      {
                        *v32 = -1;
                        goto LABEL_67;
                      }

                      if (CFDictionaryContainsKey(v30, @"com.apple.cmm.ParamCurve0"))
                      {
                        v43 = 0;
                      }

                      else if (CFDictionaryContainsKey(v30, @"com.apple.cmm.ParamCurve1"))
                      {
                        v43 = 1;
                      }

                      else if (CFDictionaryContainsKey(v30, @"com.apple.cmm.ParamCurve2"))
                      {
                        v43 = 2;
                      }

                      else if (CFDictionaryContainsKey(v30, @"com.apple.cmm.ParamCurve3"))
                      {
                        v43 = 3;
                      }

                      else if (CFDictionaryContainsKey(v30, @"com.apple.cmm.ParamCurve4"))
                      {
                        v43 = 4;
                      }

                      else
                      {
                        v43 = -1;
                      }

                      *v32 = v43;
                      if (CFDictionaryContainsKey(v30, @"com.apple.cmm.ParamCurve0") || (v42 = @"com.apple.cmm.ParamCurve1", CFDictionaryContainsKey(v30, @"com.apple.cmm.ParamCurve1")) || (v42 = @"com.apple.cmm.ParamCurve2", CFDictionaryContainsKey(v30, @"com.apple.cmm.ParamCurve2")) || (v42 = @"com.apple.cmm.ParamCurve3", CFDictionaryContainsKey(v30, @"com.apple.cmm.ParamCurve3")) || (v42 = @"com.apple.cmm.ParamCurve4", CFDictionaryContainsKey(v30, @"com.apple.cmm.ParamCurve4")))
                      {
                        v44 = CFDictionaryGetValue(v30, v42);
                      }

                      else
                      {
                        v44 = 0;
                      }

                      v45 = CFDictionaryGetValue(v30, @"com.apple.cmm.ChannelID");
                      v46 = CFArrayGetCount(v44);
                      if (!v44)
                      {
                        goto LABEL_67;
                      }

                      if (!v45)
                      {
                        goto LABEL_67;
                      }

                      v47 = v46;
                      if ((v46 - 7) > 1)
                      {
                        goto LABEL_67;
                      }

                      valuePtr[0] = 0;
                      CFNumberGetValue(v45, kCFNumberSInt32Type, valuePtr);
                      v48 = 0;
                      v57 = 0u;
                      v58 = 0u;
                      v49 = v47 & 0x7FFFFFFF;
                      v50 = &v57;
                      do
                      {
                        v51 = CFArrayGetValueAtIndex(v44, v48);
                        CFNumberGetValue(v51, kCFNumberFloat32Type, v50);
                        ++v48;
                        v50 = (v50 + 4);
                      }

                      while (v49 != v48);
                      v52 = v57;
                      v53 = v58;
                      *(v32 + 1) = valuePtr[0];
                      *(v32 + 8) = v52;
                      *(v32 + 24) = v53;
                    }

                    calibrated_parametric_data_f = v56;
LABEL_67:
                    ++v28;
                  }

                  while (v28 != Count);
                }

                CFRelease(calibrated_parametric_data_f);
                v25 = Count;
                ResolvedColorSpace = v55;
                if (v24)
                {
                  goto LABEL_72;
                }
              }
            }
          }

          v3 = 0;
          goto LABEL_74;
        }
      }
    }

    return 0;
  }

  return v3;
}

void *CGColorTransformCreateLookupTextureCodeFragment(void *a1, void *a2, uint64_t a3, int a4, unint64_t a5)
{
  v5 = 0;
  if (a1 && a2)
  {
    Cache = CGColorTransformGetCache(a1);
    if (Cache)
    {
      v12 = Cache[2];
      if (v12)
      {
        if (*(*(v12 + 24) + 48) == 3)
        {
          v78[0] = MEMORY[0x1E69E9820];
          v78[1] = 0x40000000;
          v78[2] = __create_resolved_source_space_block_invoke;
          v78[3] = &__block_descriptor_tmp_36_17670;
          v78[4] = a1;
          ResolvedColorSpace = CGColorSpaceCreateResolvedColorSpace(a2, v78);
          v14 = ResolvedColorSpace;
          if (ResolvedColorSpace)
          {
            v15 = *(*(ResolvedColorSpace + 24) + 48);
            if (a4 == 3)
            {
              if (v15 != 1)
              {
                goto LABEL_34;
              }
            }

            else if (v15 != 3)
            {
              goto LABEL_34;
            }

            v17 = CGColorTransformGetCache(a1);
            Converter = CGColorTransformCacheCreateConverter(v17, v14, a3);
            v19 = CGColorTransformUsesCalibratedColor(a1);
            if (Converter)
            {
              v20 = v19;
              v28 = CFGetTypeID(Converter);
              v29 = kCGCMSConverterID;
              if (!kCGCMSConverterID)
              {
                pthread_once(&CGCMSConverterGetTypeID_once, converter_initialize);
                v29 = kCGCMSConverterID;
              }

              if (v28 != v29)
              {
                goto LABEL_71;
              }

              if (v20)
              {
                Retained = *(Converter + 11);
                if (!Retained)
                {
                  v46 = *(Converter + 9);
                  colorsync_profile_sequence = create_colorsync_profile_sequence(*(Converter + 3), *(Converter + 4), *(Converter + 21), Converter[80]);
                  if (!colorsync_profile_sequence)
                  {
                    Retained = 0;
                    goto LABEL_56;
                  }

                  v48 = colorsync_profile_sequence;
                  Retained = CGColorSyncTransformCacheGetRetained(colorsync_profile_sequence, v46);
                  CFRelease(v48);
                  if (!Retained)
                  {
                    goto LABEL_56;
                  }
                }

                if ((a4 != 3 || a5 <= 0x100) && (a4 == 3 || a5 <= 0x80))
                {
                  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  CGCFDictionarySetInteger(Mutable, @"com.apple.cmm.GridPointCount", a5);
                  if (create_calibrated_lookup_texture_cglibrarypredicate != -1)
                  {
                    dispatch_once(&create_calibrated_lookup_texture_cglibrarypredicate, &__block_literal_global_134_2250);
                  }

                  calibrated_lookup_texture_f = create_calibrated_lookup_texture_f(Retained, @"com.apple.cmm.SimplifiedConversion", Mutable);
                  if (Mutable)
                  {
                    CFRelease(Mutable);
                  }

                  if (calibrated_lookup_texture_f)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(calibrated_lookup_texture_f, 0);
                    if (ValueAtIndex && (Value = CFDictionaryGetValue(ValueAtIndex, @"com.apple.cmm.3D-LUT")) != 0)
                    {
                      v35 = 0;
                      if (a4 > 1)
                      {
                        if (a4 == 2)
                        {
                          RGB_to_RGBXF_texture = create_RGB_to_RGBXF_texture(Value, a5);
                          goto LABEL_109;
                        }

                        if (a4 == 3)
                        {
                          RGB_to_RGBXF_texture = create_gray_to_RGBX8_texture(Value, a5);
                          goto LABEL_109;
                        }
                      }

                      else
                      {
                        if (!a4)
                        {
                          RGB_to_RGBXF_texture = create_RGB_to_RGBX8_texture(Value, a5);
                          goto LABEL_109;
                        }

                        if (a4 == 1)
                        {
                          RGB_to_RGBXF_texture = create_RGB_to_RGBX16_texture(Value, a5);
LABEL_109:
                          v35 = RGB_to_RGBXF_texture;
                        }
                      }
                    }

                    else
                    {
                      v35 = 0;
                    }

                    CFRelease(calibrated_lookup_texture_f);
LABEL_57:
                    if (!*(Converter + 11))
                    {
                      CGColorSyncTransformCacheRelease(Retained);
                    }

                    goto LABEL_59;
                  }
                }

LABEL_56:
                v35 = 0;
                goto LABEL_57;
              }

              if ((a4 != 3 || a5 <= 0x100) && (a4 == 3 || a5 <= 0x80))
              {
                if (a4 > 1)
                {
                  if (a4 == 2)
                  {
                    v66 = malloc_type_calloc(16 * a5 * a5 * a5, 1uLL, 0x2A1193B1uLL);
                    v35 = v66;
                    if (a5 && v66)
                    {
                      v67 = 0;
                      v68 = (a5 - 1);
                      v69 = v66 + 1;
                      do
                      {
                        v70 = 0;
                        v71 = v67 / v68;
                        if (v71 > 1.0)
                        {
                          v71 = 1.0;
                        }

                        v72 = v69;
                        do
                        {
                          v73 = 0;
                          v74 = v70 / v68;
                          if (v74 > 1.0)
                          {
                            v74 = 1.0;
                          }

                          v75 = v72;
                          do
                          {
                            v76 = v73 / v68;
                            if (v76 > 1.0)
                            {
                              v76 = 1.0;
                            }

                            *(v75 - 2) = v71;
                            *(v75 - 1) = v74;
                            *v75 = v76;
                            v75[1] = 1.0;
                            ++v73;
                            v75 += 4;
                          }

                          while (a5 != v73);
                          ++v70;
                          v72 += 2 * a5;
                        }

                        while (v70 != a5);
                        ++v67;
                        v69 += 2 * a5 * a5;
                      }

                      while (v67 != a5);
                      goto LABEL_60;
                    }
                  }

                  else
                  {
                    if (a4 != 3)
                    {
                      goto LABEL_70;
                    }

                    v49 = malloc_type_calloc(4 * a5, 1uLL, 0xC1AE7582uLL);
                    v35 = v49;
                    if (a5 && v49)
                    {
                      v50 = 0;
                      v51 = v49 + 3;
                      v52 = a5;
                      do
                      {
                        v53 = (((v50 / (a5 - 1)) + 0.5) + 128) >> 8;
                        if (v53 >= 0xFF)
                        {
                          LOBYTE(v53) = -1;
                        }

                        *(v51 - 3) = v53;
                        *(v51 - 2) = v53;
                        *(v51 - 1) = v53;
                        *v51 = -1;
                        v51 += 4;
                        v50 += 255;
                        --v52;
                      }

                      while (v52);
                      goto LABEL_60;
                    }
                  }
                }

                else
                {
                  if (a4)
                  {
                    if (a4 == 1)
                    {
                      v37 = malloc_type_calloc(8 * a5 * a5 * a5, 1uLL, 0xC49908CBuLL);
                      v35 = v37;
                      if (a5 && v37)
                      {
                        v38 = 0;
                        v39 = (a5 - 1);
                        v40 = v37 + 4;
                        do
                        {
                          v41 = 0;
                          v42 = v40;
                          do
                          {
                            v43 = 0;
                            v44 = v42;
                            v45 = a5;
                            do
                            {
                              *(v44 - 2) = (((0xFFFF * v38) / v39) + 0.5);
                              *(v44 - 1) = (((0xFFFF * v41) / v39) + 0.5);
                              *v44 = ((v43 / v39) + 0.5);
                              v44[1] = -1;
                              v43 += 0xFFFFLL;
                              v44 += 4;
                              --v45;
                            }

                            while (v45);
                            ++v41;
                            v42 += 4 * a5;
                          }

                          while (v41 != a5);
                          ++v38;
                          v40 += 8 * a5 * a5;
                        }

                        while (v38 != a5);
                        goto LABEL_60;
                      }

                      goto LABEL_59;
                    }

                    goto LABEL_70;
                  }

                  v54 = malloc_type_calloc(4 * a5 * a5 * a5, 1uLL, 0x66157C6DuLL);
                  v35 = v54;
                  if (a5 && v54)
                  {
                    v55 = 0;
                    v56 = (a5 - 1);
                    v57 = v54 + 3;
                    do
                    {
                      v58 = 0;
                      v59 = ((((255 * v55) / v56) + 0.5) + 128) >> 8;
                      if (v59 >= 0xFF)
                      {
                        LOBYTE(v59) = -1;
                      }

                      v60 = v57;
                      do
                      {
                        v61 = 0;
                        v62 = ((((255 * v58) / v56) + 0.5) + 128) >> 8;
                        if (v62 >= 0xFF)
                        {
                          LOBYTE(v62) = -1;
                        }

                        v63 = v60;
                        v64 = a5;
                        do
                        {
                          v65 = (((v61 / v56) + 0.5) + 128) >> 8;
                          *(v63 - 3) = v59;
                          *(v63 - 2) = v62;
                          if (v65 >= 0xFF)
                          {
                            LOBYTE(v65) = -1;
                          }

                          *(v63 - 1) = v65;
                          *v63 = -1;
                          v63 += 4;
                          v61 += 255;
                          --v64;
                        }

                        while (v64);
                        ++v58;
                        v60 += 4 * a5;
                      }

                      while (v58 != a5);
                      ++v55;
                      v57 += 4 * a5 * a5;
                    }

                    while (v55 != a5);
                    goto LABEL_60;
                  }
                }

LABEL_59:
                if (v35)
                {
LABEL_60:
                  v5 = malloc_type_calloc(1uLL, 0x38uLL, 0x10E20400F34DD07uLL);
                  *v5 = 0;
                  v5[1] = 0;
                  *(v5 + 4) = 0;
                  *(v5 + 8) = a4;
                  v5[5] = a5;
                  v5[6] = v35;
LABEL_72:
                  CFRelease(Converter);
                  goto LABEL_35;
                }
              }

LABEL_70:
              CGPostError("Failed to create a 3D texture", v21, v22, v23, v24, v25, v26, v27, v77);
LABEL_71:
              v5 = 0;
              goto LABEL_72;
            }
          }

LABEL_34:
          v5 = 0;
LABEL_35:
          CGColorSpaceRelease(v14);
          return v5;
        }
      }
    }

    return 0;
  }

  return v5;
}

void *CGColorTransformCreateCodeFragment(void *a1, void *a2, uint64_t a3, int a4, int a5, unint64_t a6)
{
  if (a4)
  {
    if (a4 != 1)
    {
      abort();
    }

    return CGColorTransformCreateParametricCodeFragment(a1, a2, a3);
  }

  else
  {

    return CGColorTransformCreateLookupTextureCodeFragment(a1, a2, a3, a5, a6);
  }
}

uint64_t CGColorCodeFragmentGetTextureFormat(_DWORD *a1)
{
  if (a1 && !*a1)
  {
    return a1[8];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t CGColorCodeFragmentGetTextureGridPoints(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      return 0;
    }

    else
    {
      return *(result + 40);
    }
  }

  return result;
}

uint64_t CGColorCodeFragmentGetTextureData(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      return 0;
    }

    else
    {
      return *(result + 48);
    }
  }

  return result;
}

uint64_t CGColorCodeFragmentGetParametricCount(uint64_t result)
{
  if (result)
  {
    if (*result == 1)
    {
      return *(result + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGColorCodeFragmentGetParametricConversion(uint64_t result)
{
  if (result)
  {
    if (*result == 1)
    {
      return *(result + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CGColorCodeFragmentRelease(void *a1)
{
  if (!a1)
  {
    return;
  }

  if (*a1)
  {
    v2 = a1[4];
LABEL_6:
    free(v2);
    goto LABEL_7;
  }

  v2 = a1[6];
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_7:

  free(a1);
}

uint64_t CGPreferencesGetCGFloat(const char *a1, double *a2)
{
  v3 = copy_preference_value(a1);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      valuePtr = 0.0;
      if (CFNumberGetValue(v4, kCFNumberCGFloatType, &valuePtr))
      {
        if (a2)
        {
          DoubleValue = valuePtr;
LABEL_10:
          *a2 = DoubleValue;
          goto LABEL_11;
        }

        goto LABEL_11;
      }
    }

    else if (v5 == CFStringGetTypeID())
    {
      if (a2)
      {
        DoubleValue = CFStringGetDoubleValue(v4);
        goto LABEL_10;
      }

LABEL_11:
      v7 = 1;
LABEL_13:
      CFRelease(v4);
      return v7;
    }

    v7 = 0;
    goto LABEL_13;
  }

  return 0;
}

CFTypeRef copy_application_property_value(const char *a1)
{
  MainBundle = CFBundleGetMainBundle();
  if (!MainBundle)
  {
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  v3 = MainBundle;
  v4 = CFStringCreateWithCString(0, a1, 0x600u);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v3, v4);
  CFRelease(v5);
  if (!ValueForInfoDictionaryKey)
  {
    return 0;
  }

  return CFRetain(ValueForInfoDictionaryKey);
}

uint64_t CGDefaultsCheck<CGResamplingAllowTemplateMethod>()
{
  if (CGDefaultsCheck<CGResamplingAllowTemplateMethod>(void)::onceToken != -1)
  {
    dispatch_once(&CGDefaultsCheck<CGResamplingAllowTemplateMethod>(void)::onceToken, &__block_literal_global_13895);
  }

  return CGDefaultsCheck<CGResamplingAllowTemplateMethod>(void)::result;
}

const void *___Z15CGDefaultsCheckI31CGResamplingAllowTemplateMethodENT_10ResultTypeEv_block_invoke()
{
  result = get_BOOLean_property("CGResamplingAllowTemplateMethod", copy_local_domain_value, &CGDefaultsCheck<CGResamplingAllowTemplateMethod>(void)::result);
  if ((result & 1) == 0)
  {
    CGDefaultsCheck<CGResamplingAllowTemplateMethod>(void)::result = 1;
  }

  return result;
}

uint64_t CGPreferencesCheck<CGResamplingAllowTemplateMethod>()
{
  if (CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::onceToken != -1)
  {
    dispatch_once(&CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::onceToken, &__block_literal_global_3_13902);
  }

  return CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::result;
}

uint64_t CGDefaultsCheck<CGImageMarkAllowTemplateMethodFP>()
{
  if (CGDefaultsCheck<CGImageMarkAllowTemplateMethodFP>(void)::onceToken != -1)
  {
    dispatch_once(&CGDefaultsCheck<CGImageMarkAllowTemplateMethodFP>(void)::onceToken, &__block_literal_global_6_13905);
  }

  return CGDefaultsCheck<CGImageMarkAllowTemplateMethodFP>(void)::result;
}

const void *___Z15CGDefaultsCheckI32CGImageMarkAllowTemplateMethodFPENT_10ResultTypeEv_block_invoke()
{
  result = get_BOOLean_property("CGImageMarkAllowTemplateMethodFP", copy_local_domain_value, &CGDefaultsCheck<CGImageMarkAllowTemplateMethodFP>(void)::result);
  if ((result & 1) == 0)
  {
    CGDefaultsCheck<CGImageMarkAllowTemplateMethodFP>(void)::result = 1;
  }

  return result;
}

uint64_t CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>()
{
  if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::onceToken != -1)
  {
    dispatch_once(&CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::onceToken, &__block_literal_global_9_13911);
  }

  return CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result;
}

const void *___Z18CGPreferencesCheckI32CGImageMarkAllowTemplateMethodFPENT_10ResultTypeEv_block_invoke()
{
  result = get_BOOLean_property("CGImageMarkAllowTemplateMethodFP", copy_preference_value, &CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result);
  if ((result & 1) == 0)
  {
    CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result = 1;
  }

  return result;
}

uint64_t CGDefaultsCheck<CGImageMarkAllowTemplateMethodInteger>()
{
  if (CGDefaultsCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken != -1)
  {
    dispatch_once(&CGDefaultsCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken, &__block_literal_global_12_13914);
  }

  return CGDefaultsCheck<CGImageMarkAllowTemplateMethodInteger>(void)::result;
}

const void *___Z15CGDefaultsCheckI37CGImageMarkAllowTemplateMethodIntegerENT_10ResultTypeEv_block_invoke()
{
  result = get_BOOLean_property("CGImageMarkAllowTemplateMethodInteger", copy_local_domain_value, &CGDefaultsCheck<CGImageMarkAllowTemplateMethodInteger>(void)::result);
  if ((result & 1) == 0)
  {
    CGDefaultsCheck<CGImageMarkAllowTemplateMethodInteger>(void)::result = 1;
  }

  return result;
}

uint64_t CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>()
{
  if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken != -1)
  {
    dispatch_once(&CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken, &__block_literal_global_15_13920);
  }

  return CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::result;
}

uint64_t CGDefaultsCheck<CGPDFDocumentPageResourcesCacheSize>()
{
  if (CGDefaultsCheck<CGPDFDocumentPageResourcesCacheSize>(void)::onceToken != -1)
  {
    dispatch_once(&CGDefaultsCheck<CGPDFDocumentPageResourcesCacheSize>(void)::onceToken, &__block_literal_global_18_13925);
  }

  return CGDefaultsCheck<CGPDFDocumentPageResourcesCacheSize>(void)::result;
}

uint64_t CGPreferencesCheck<CGPDFDocumentPageResourcesCacheSize>()
{
  if (CGPreferencesCheck<CGPDFDocumentPageResourcesCacheSize>(void)::onceToken != -1)
  {
    dispatch_once(&CGPreferencesCheck<CGPDFDocumentPageResourcesCacheSize>(void)::onceToken, &__block_literal_global_21_13929);
  }

  return CGPreferencesCheck<CGPDFDocumentPageResourcesCacheSize>(void)::result;
}

uint64_t ___Z18CGPreferencesCheckI35CGPDFDocumentPageResourcesCacheSizeENT_10ResultTypeEv_block_invoke()
{
  result = get_integer_property("CGPDFDocumentPageResourcesCacheSize", copy_preference_value, &CGPreferencesCheck<CGPDFDocumentPageResourcesCacheSize>(void)::result);
  if ((result & 1) == 0)
  {
    CGPreferencesCheck<CGPDFDocumentPageResourcesCacheSize>(void)::result = 16;
  }

  return result;
}

uint64_t CGDefaultsCheck<CGPDFDocumentPageResourcesCacheLogging>()
{
  if (CGDefaultsCheck<CGPDFDocumentPageResourcesCacheLogging>(void)::onceToken != -1)
  {
    dispatch_once(&CGDefaultsCheck<CGPDFDocumentPageResourcesCacheLogging>(void)::onceToken, &__block_literal_global_24_13934);
  }

  return CGDefaultsCheck<CGPDFDocumentPageResourcesCacheLogging>(void)::result;
}

uint64_t CGPreferencesCheck<CGPDFDocumentPageResourcesCacheLogging>()
{
  if (CGPreferencesCheck<CGPDFDocumentPageResourcesCacheLogging>(void)::onceToken != -1)
  {
    dispatch_once(&CGPreferencesCheck<CGPDFDocumentPageResourcesCacheLogging>(void)::onceToken, &__block_literal_global_27_13938);
  }

  return CGPreferencesCheck<CGPDFDocumentPageResourcesCacheLogging>(void)::result;
}

const void *___Z18CGPreferencesCheckI38CGPDFDocumentPageResourcesCacheLoggingENT_10ResultTypeEv_block_invoke()
{
  result = get_BOOLean_property("CGPDFDocumentPageResourcesCacheLogging", copy_preference_value, &CGPreferencesCheck<CGPDFDocumentPageResourcesCacheLogging>(void)::result);
  if ((result & 1) == 0)
  {
    CGPreferencesCheck<CGPDFDocumentPageResourcesCacheLogging>(void)::result = 0;
  }

  return result;
}

uint64_t CGDefaultsCheck<CGPDFPageLayoutSimpleSelectionEnabled>()
{
  if (CGDefaultsCheck<CGPDFPageLayoutSimpleSelectionEnabled>(void)::onceToken != -1)
  {
    dispatch_once(&CGDefaultsCheck<CGPDFPageLayoutSimpleSelectionEnabled>(void)::onceToken, &__block_literal_global_30);
  }

  return CGDefaultsCheck<CGPDFPageLayoutSimpleSelectionEnabled>(void)::result;
}

const void *___Z15CGDefaultsCheckI37CGPDFPageLayoutSimpleSelectionEnabledENT_10ResultTypeEv_block_invoke()
{
  result = get_BOOLean_property("CGPDFPageLayoutSimpleSelectionEnabled", copy_local_domain_value, &CGDefaultsCheck<CGPDFPageLayoutSimpleSelectionEnabled>(void)::result);
  if ((result & 1) == 0)
  {
    CGDefaultsCheck<CGPDFPageLayoutSimpleSelectionEnabled>(void)::result = 1;
  }

  return result;
}

uint64_t CGPreferencesCheck<CGPDFPageLayoutSimpleSelectionEnabled>()
{
  if (CGPreferencesCheck<CGPDFPageLayoutSimpleSelectionEnabled>(void)::onceToken != -1)
  {
    dispatch_once(&CGPreferencesCheck<CGPDFPageLayoutSimpleSelectionEnabled>(void)::onceToken, &__block_literal_global_33_13943);
  }

  return CGPreferencesCheck<CGPDFPageLayoutSimpleSelectionEnabled>(void)::result;
}

const void *___Z18CGPreferencesCheckI37CGPDFPageLayoutSimpleSelectionEnabledENT_10ResultTypeEv_block_invoke()
{
  result = get_BOOLean_property("CGPDFPageLayoutSimpleSelectionEnabled", copy_preference_value, &CGPreferencesCheck<CGPDFPageLayoutSimpleSelectionEnabled>(void)::result);
  if ((result & 1) == 0)
  {
    CGPreferencesCheck<CGPDFPageLayoutSimpleSelectionEnabled>(void)::result = 1;
  }

  return result;
}

CGFloat *CGPDFShadingCreateShadingFunction(uint64_t a1, size_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  value = a1;
  if (!a1 || *(a1 + 8) != 7)
  {

    return CGPDFFunctionCreateFunction(a1);
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v3 - v4;
  if (v3 == v4)
  {
    return 0;
  }

  v7 = malloc_type_calloc(1uLL, v5 + 8, 0x100004000313F17uLL);
  __CFSetLastAllocationEventName();
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = v5 >> 3;
  *v7 = v9;
  do
  {
    if (!CGPDFArrayGetObject(v2, v8, &value))
    {
      goto LABEL_33;
    }

    Function = CGPDFFunctionCreateFunction(value);
    v7[v8 + 1] = Function;
    if (!Function)
    {
      goto LABEL_33;
    }

    if (*(Function + 4) != a2)
    {
      pdf_error("invalid shading function domain dimension.");
LABEL_33:
      shading_function_array_release(v7);
      return 0;
    }

    if (*(Function + 6) != 1)
    {
      pdf_error("invalid shading function range dimension.");
      goto LABEL_33;
    }

    ++v8;
  }

  while (v9 != v8);
  *domain = xmmword_18439CC70;
  if (a2 == 2)
  {
    v24 = xmmword_18439CC70;
  }

  v11 = 0;
  v12 = 1.79769313e308;
  v13 = -1.79769313e308;
  v14 = -1.79769313e308;
  v15 = 1.79769313e308;
  do
  {
    v16 = *(v7[v11 + 1] + 40);
    v17 = *v16;
    if (*v16 < v15)
    {
      domain[0] = *v16;
      v15 = v17;
    }

    v18 = v16[1];
    if (v18 > v14)
    {
      domain[1] = v16[1];
      v14 = v18;
    }

    if (a2 != 2)
    {
      goto LABEL_24;
    }

    v19 = v16[2];
    if (v19 < v12)
    {
      *&v24 = v16[2];
      v12 = v19;
    }

    v20 = v16[3];
    if (v20 > v13)
    {
      *(&v24 + 1) = v16[3];
    }

    else
    {
LABEL_24:
      v20 = v13;
    }

    ++v11;
    v13 = v20;
  }

  while (v9 != v11);
  result = CGFunctionCreate(v7, a2, domain, v9, 0, &CGPDFShadingCreateShadingFunction_callbacks);
  if (!result)
  {
    goto LABEL_33;
  }

  return result;
}

void shading_function_array_release(unint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = 0;
    do
    {
      v4 = a1[v3 + 1];
      if (v4)
      {
        CFRelease(v4);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  free(a1);
}

unint64_t *shading_function_array_evaluate(unint64_t *result, char *a2, double *a3, __n128 a4)
{
  if (*result)
  {
    v6 = result;
    v7 = 0;
    do
    {
      result = CGFunctionEvaluate(v6[++v7], a2, a3++, a4);
    }

    while (v7 < *v6);
  }

  return result;
}

void *CPMultiUnicodesCreate()
{
  v0 = malloc_type_malloc(0x20uLL, 0x1020040A5B76CDFuLL);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 1;
  v0[3] = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  return v0;
}

void CPMultiUnicodesRelease(void *a1)
{
  if (a1)
  {
    if ((*a1)-- == 1)
    {
      v3 = *(a1 + 3);
      if (v3)
      {
        Count = CFArrayGetCount(v3);
        if (Count >= 1)
        {
          v5 = Count;
          for (i = 0; i != v5; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3), i);
            if (ValueAtIndex)
            {
              v8 = ValueAtIndex;
              free(ValueAtIndex[3]);
              free(v8);
            }
          }
        }

        CFRelease(*(a1 + 3));
      }

      free(a1);
    }
  }
}

void CPMultiUnicodesAppend(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (a1)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      Count = CFArrayGetCount(v5);
      v10 = Count - 1;
      if (Count >= 1)
      {
        v12 = (a1 + 8);
        v11 = *(a1 + 8);
        if (v11 > a2)
        {
          if (a2 + 1 != v11)
          {
            return;
          }

          v13 = Count;
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v10);
          CFArrayRemoveValueAtIndex(*(a1 + 24), v10);
          if (ValueAtIndex)
          {
            free(ValueAtIndex[3]);
            free(ValueAtIndex);
          }

          if (v13 == 1)
          {
            v12->i64[0] = 0;
            *(a1 + 16) = 0;
          }

          else
          {
            v15 = CFArrayGetValueAtIndex(*(a1 + 24), v13 - 2);
            if (v15)
            {
              v16.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v16.i64[1] = v15[1].i64[0];
              *v12 = vaddq_s64(*v15, v16);
            }
          }
        }
      }

      v17 = malloc_type_malloc(0x20uLL, 0x1010040313BCFEBuLL);
      if (v17)
      {
        v18 = v17;
        *v17 = a2;
        v19 = malloc_type_malloc(2 * a3, 0x1000040BDFB0063uLL);
        v18[3] = v19;
        if (v19)
        {
          v18[2] = a3;
          memcpy(v19, a4, 2 * a3);
        }

        else
        {
          v18[2] = 0;
        }

        v18[1] = *(a1 + 16) + a2 - *(a1 + 8);
        CFArrayAppendValue(*(a1 + 24), v18);
        v20 = v18[2] + v18[1];
        *(a1 + 8) = a2 + 1;
        *(a1 + 16) = v20;
      }
    }
  }
}

uint64_t CPMultiUnicodesGetCharacterIndexAtUnicodeIndex(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v6 = Count;
        v7 = 0;
        v8 = -1;
        do
        {
          v9 = (v6 + v8) >> 1;
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v9);
          if (!ValueAtIndex)
          {
            break;
          }

          v11 = ValueAtIndex[1];
          if (v11 <= a2)
          {
            if (ValueAtIndex[2] + v11 > a2)
            {
              return *ValueAtIndex;
            }

            v8 = (v6 + v8) >> 1;
            v9 = v6;
            v7 = ValueAtIndex;
          }

          else
          {
            v6 = (v6 + v8) >> 1;
          }
        }

        while (v8 + 1 < v9);
        if (v7)
        {
          return a2 + *v7 - (v7[1] + v7[2]) + 1;
        }
      }
    }
  }

  return a2;
}

uint64_t CPMultiUnicodesGetUnicodeRangeAtCharacterIndex(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v6 = Count;
        v7 = 0;
        v8 = -1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), (v6 + v8) >> 1);
          if (!ValueAtIndex)
          {
            break;
          }

          if (*ValueAtIndex == a2)
          {
            return ValueAtIndex[1];
          }

          if (*ValueAtIndex >= a2)
          {
            v6 = (v6 + v8) >> 1;
          }

          else
          {
            v8 = (v6 + v8) >> 1;
          }

          if (*ValueAtIndex < a2)
          {
            v7 = ValueAtIndex;
          }
        }

        while (v8 + 1 < v6);
        if (v7)
        {
          a2 += ~*v7 + v7[1] + v7[2];
        }
      }
    }
  }

  return a2;
}

uint64_t CPMultiUnicodesGetRangeInCharacterRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = a3 < 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  Count = CFArrayGetCount(v5);
  v10 = Count;
  v11 = Count - 1;
  if (Count >= 1)
  {
    v12 = a3 + a2 - 1;
    v13 = -1;
    v14 = Count;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), (v14 + v13) >> 1);
      if (!ValueAtIndex)
      {
        break;
      }

      if (*ValueAtIndex == a2)
      {
        v14 = (v14 + v13) >> 1;
        break;
      }

      if (*ValueAtIndex >= a2)
      {
        v14 = (v14 + v13) >> 1;
      }

      else
      {
        v13 = (v14 + v13) >> 1;
      }
    }

    while (v13 + 1 < v14);
    v11 = v14 - 1;
    if (v14 < v10)
    {
      do
      {
        v16 = (v10 + v11) >> 1;
        v17 = CFArrayGetValueAtIndex(*(a1 + 24), v16);
        if (!v17)
        {
          break;
        }

        if (*v17 == v12)
        {
          v10 = v14;
          v11 = v16;
          goto LABEL_27;
        }

        if (*v17 >= v12)
        {
          v10 = (v10 + v11) >> 1;
        }

        else
        {
          v11 = (v10 + v11) >> 1;
        }
      }

      while (v11 + 1 < v10);
    }

    v10 = v14;
  }

LABEL_27:
  if ((v11 - v10) <= 0x7FFFFFFFFFFFFFFELL)
  {
    return v10;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

void CG::Path::append_uneven_rounded_rect(CG::Path *this, const CGRect *a2, const CGSize *a3, float64x2_t *a4)
{
  if (*this)
  {
    CG::Path::reserve_space(this, 18, 10);
    x = a2->origin.x;
    v43 = a2->origin.x + a2->size.width;
    y = a2->origin.y;
    v41 = y + a2->size.height;
    v8.n128_f64[0] = v43;
    v8.n128_f64[1] = (v41 + y + a3[2].height - a3[1].height) * 0.5;
    CG::Path::move_to_point(this, a4, v9, v8);
    v10.f64[0] = v43;
    v10.f64[1] = v41 - a3[1].height;
    CG::Path::add_line_to_point(this, a4, v11, v10);
    width = a3[1].width;
    v13.f64[0] = v43;
    v13.f64[1] = v41 - a3[1].height * 0.44771525;
    v46.x = v43 - width * 0.44771525;
    v46.y = v41;
    v45.x = v43 - width;
    v45.y = v41;
    CG::Path::add_curve_to_point(this, &v46, &v45, a4, v14, v13);
    v15.f64[0] = x + a3->width;
    v15.f64[1] = v41;
    CG::Path::add_line_to_point(this, a4, v16, v15);
    height = a3->height;
    v18.f64[0] = x + a3->width * 0.44771525;
    v18.f64[1] = v41;
    v46.x = x;
    v46.y = v41 - height * 0.44771525;
    v45.x = x;
    v45.y = v41 - height;
    CG::Path::add_curve_to_point(this, &v46, &v45, a4, v19, v18);
    v20.f64[0] = x;
    v20.f64[1] = y + a3[3].height;
    CG::Path::add_line_to_point(this, a4, v21, v20);
    v22 = a3[3].width;
    v23.f64[0] = x;
    v23.f64[1] = y + a3[3].height * 0.44771525;
    v46.x = x + v22 * 0.44771525;
    v46.y = y;
    v45.x = x + v22;
    v45.y = y;
    CG::Path::add_curve_to_point(this, &v46, &v45, a4, v24, v23);
    v25.f64[0] = v43 - a3[2].width;
    v25.f64[1] = y;
    CG::Path::add_line_to_point(this, a4, v26, v25);
    v27 = a3[2].height;
    v28.f64[0] = v43 - a3[2].width * 0.44771525;
    v28.f64[1] = y;
    v46.x = v43;
    v46.y = y + v27 * 0.44771525;
    v45.x = v43;
    v45.y = y + v27;
    CG::Path::add_curve_to_point(this, &v46, &v45, a4, v29, v28);

    CG::Path::close_subpath(this);
  }

  else
  {
    *this = 3;
    origin = a2->origin;
    if (a4)
    {
      v31 = a4[1];
      v32 = vmlaq_n_f64(vmulq_f64(v31, 0), *a4, a2->size.width);
      v33 = vmlaq_f64(vmulq_n_f64(v31, a2->size.height), 0, *a4);
      origin = vaddq_f64(a4[2], vmlaq_n_f64(vmulq_laneq_f64(v31, origin, 1), *a4, origin.x));
    }

    else
    {
      v33.f64[0] = 0.0;
      v32 = *&a2->size.width;
      v33.f64[1] = a2->size.height;
    }

    v34 = 0;
    *(this + 8) = v32;
    *(this + 24) = v33;
    *(this + 40) = origin;
    __asm { FMOV            V1.2D, #1.0 }

    v40 = vdivq_f64(_Q1, a2->size);
    do
    {
      *(this + v34 * 16 + 56) = vmulq_f64(v40, a3[v34]);
      ++v34;
    }

    while (v34 != 4);
  }
}

float64_t CG::Path::append_line_segment(CG::Path *this, float64x2_t *a2, float64x2_t *a3, const CGAffineTransform *a4)
{
  v5 = *a2;
  if (a4)
  {
    v6 = *&a4->c;
    v7 = *&a4->tx;
    v5 = vaddq_f64(v7, vmlaq_n_f64(vmulq_n_f64(v6, a2->f64[1]), *&a4->a, v5.f64[0]));
    v8 = vaddq_f64(v7, vmlaq_n_f64(vmulq_n_f64(v6, a3->f64[1]), *&a4->a, a3->f64[0]));
  }

  else
  {
    v8 = *a3;
  }

  if (*this == 8)
  {
    v9 = *(this + 4);
    if (v9 <= 5)
    {
      *(this + v9 + 1) = v5;
      *(this + 4) = v9 + 2;
      *(this + v9 + 2) = v8;
      v10 = *(this + 5);
      *(this + 3) |= 8 << (3 * v10);
      *(this + 5) = v10 + 2;
      return v8.f64[0];
    }
  }

  else if (!*this)
  {
    *this = 5;
    *(this + 8) = v5;
    *(this + 24) = v8;
    return v8.f64[0];
  }

  v14 = v5;
  v15 = v8;
  CG::Path::reserve_space(this, 2, 2);
  CG::Path::move_to_point(this, 0, v11, v14);

  *&v8.f64[0] = *&CG::Path::add_line_to_point(this, 0, v12, v15);
  return v8.f64[0];
}

void *CG::Path::append_region(CG::Path *this, uint64_t *cf, float64x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*this != 9)
  {
    if (!*this)
    {
      if (a3)
      {
        if (fabs(a3->f64[0]) != 1.0 || fabs(a3[1].f64[1]) != 1.0 || a3->f64[1] != 0.0 || a3[1].f64[0] != 0.0)
        {
          goto LABEL_12;
        }

        v11 = a3[2].f64[1];
        v12 = floor(v11);
        if (floor(a3[2].f64[0]) != a3[2].f64[0] || v12 != v11)
        {
          goto LABEL_12;
        }

        *this = 7;
        v19 = a3[1];
        v20[0] = *a3;
        v20[1] = v19;
        v20[2] = a3[2];
        result = CGRegionCreateByTransformingRegion(cf, v20, 1, a4, a5, a6, a7, a8);
      }

      else
      {
        *this = 7;
        if (cf)
        {
          result = CFRetain(cf);
        }

        else
        {
          result = 0;
        }
      }

      *(this + 1) = result;
      return result;
    }

LABEL_12:
    CG::Path::convert_to_huge_(this);
  }

  v14 = CGSRegionPathEnumerator(cf);
  v15 = 0;
  while (1)
  {
    v16 = CGSNextPoint(v14, v20[0].n128_f64);
    if (!v16)
    {
      break;
    }

    if (a3)
    {
      v20[0] = vaddq_f64(a3[2], vmlaq_n_f64(vmulq_n_f64(a3[1], v20[0].n128_f64[1]), *a3, v20[0].n128_f64[0]));
    }

    if (v16 < 0)
    {
      if (v15)
      {
        CG::Path::close_subpath(this);
      }

      CG::Path::move_to_point(this, 0, v17, v20[0]);
      v15 = 1;
    }

    else
    {
      CG::Path::add_line_to_point(this, 0, v17, v20[0]);
    }
  }

  if (v15)
  {
    CG::Path::close_subpath(this);
  }

  return CGSReleaseRegionEnumerator(v14);
}

int8x16_t CG::Path::recalculate_bounding_box(CG::Path *this)
{
  result = vdupq_n_s64(0x7FF0000000000000uLL);
  *(this + 40) = result;
  v2 = vdupq_n_s64(0xFFF0000000000000);
  *(this + 56) = v2;
  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(this + 4);
    do
    {
      v5 = *v4++;
      result = vbslq_s8(vcgtq_f64(result, v5), v5, result);
      *(this + 40) = result;
      v2 = vbslq_s8(vcgtq_f64(v5, v2), v5, v2);
      *(this + 56) = v2;
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL CG::Path::contains_point(CG::Path *this, const CGPoint *a2, _BOOL4 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = *this;
  if (*this <= 7)
  {
    if (!v11)
    {
      return 0;
    }

    if (v11 == 1 && *(this + 2) == 0.0 && *(this + 3) == 0.0)
    {
      v12 = *(this + 24);
      *&v40.a = *(this + 8);
      *&v40.c = v12;
      *&v40.tx = *(this + 40);
      v13 = transform_unit_rect(&v40);
      v17 = v13 + v16;
      if (a2->x >= v13 && a2->x <= v17)
      {
        y = a2->y;
        return y >= v14 && y <= v14 + v15;
      }

      return 0;
    }

LABEL_36:
    CG::Path::Path(&v40, this);
    if (LODWORD(v40.a) != 9)
    {
      CG::Path::convert_to_huge_(&v40);
    }

    v20 = CG::Path::contains_point(&v40, a2, a3);
    CG::Path::~Path(&v40);
    return v20;
  }

  if (v11 == 8)
  {
    if (!*(this + 5))
    {
      return 0;
    }

    goto LABEL_36;
  }

  if (v11 != 9)
  {
    goto LABEL_36;
  }

  if (!*(this + 2))
  {
    return 0;
  }

  v21 = 0;
  v22 = 0;
  v37[0] = 0;
  v38 = 0;
  v39 = *a2;
  v36 = 0uLL;
  v23 = -1;
  do
  {
    v24 = *(this + 4);
    v25 = *(v24 + *(this + 3) + v23);
    if (v25 <= 1)
    {
      if (*(v24 + *(this + 3) + v23))
      {
        if (v25 != 1)
        {
LABEL_42:
          abort();
        }

        goto LABEL_24;
      }

      v28 = 0;
      v31 = *(v24 + 16 * v21++);
      *&v40.a = vsubq_f64(v31, v39);
      p_tx = &v40;
    }

    else
    {
      switch(v25)
      {
        case 2u:
          *&v40.a = v36;
          v29 = (v24 + 16 * v21);
          *&v40.c = vsubq_f64(*v29, v39);
          v21 += 2;
          *&v40.tx = vsubq_f64(v29[1], v39);
          p_tx = &v40.tx;
          v28 = 2;
          break;
        case 3u:
          *&v40.a = v36;
          v30 = (v24 + 16 * v21);
          *&v40.c = vsubq_f64(*v30, v39);
          *&v40.tx = vsubq_f64(v30[1], v39);
          v21 += 3;
          v41 = vsubq_f64(v30[2], v39);
          p_tx = &v41;
          v28 = 3;
          break;
        case 4u:
LABEL_24:
          *&v40.a = v36;
          v26 = *(v24 + 16 * v21++);
          *&v40.c = vsubq_f64(v26, v39);
          p_tx = &v40.c;
          v28 = 1;
          break;
        default:
          goto LABEL_42;
      }
    }

    v36 = *&p_tx->a;
    if (v37[0])
    {
      return 1;
    }

    ++v22;
    v32 = *(this + 2);
    --v23;
  }

  while (v22 < v32);
  v33 = *(this + 4);
  {
    v34 = v38;
    if (a3)
    {
      v34 = v38 & 1;
    }

    return v34 != 0;
  }

  return v20;
}

uint64_t anonymous namespace::Crossings::evaluate_crossings(uint64_t this, uint64_t a2, float64x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*this & 1) == 0)
  {
    v8 = this;
    v9 = &a3->f64[1];
    v10 = a2 + 1;
    while ((*(v9 - 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v9 += 2;
      if (!--v10)
      {
        if (a2)
        {
          this = crossing_count(a3, a2, this, a4, a5, a6, a7, a8);
          *(v8 + 4) += this;
        }

        return this;
      }
    }
  }

  return this;
}

void create_initialized_encoding_buffer(uint64_t a1, CFIndex a2, int a3)
{
  *v6 = a3;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], a2);
  *a1 = Mutable;
  if (*(a1 + 8))
  {
    v5 = 65537;
  }

  else
  {
    v5 = 1;
  }

  *bytes = v5;
  CFDataAppendBytes(Mutable, bytes, 4);
  CFDataAppendBytes(*a1, v6, 1);
}

void encode_CGAffineTransform(uint64_t a1, double *a2)
{
  encode_CGFloat(a1, *a2);
  encode_CGFloat(a1, a2[1]);
  encode_CGFloat(a1, a2[2]);
  encode_CGFloat(a1, a2[3]);
  encode_CGFloat(a1, a2[4]);
  v4 = a2[5];

  encode_CGFloat(a1, v4);
}

void encode_CGFloat(uint64_t a1, double a2)
{
  *bytes = a2;
  if (*(a1 + 8) == 1)
  {
    v5 = a2;
    v6 = v5;
    v2 = *a1;
    v3 = &v6;
    v4 = 4;
  }

  else
  {
    v2 = *a1;
    v3 = bytes;
    v4 = 8;
  }

  CFDataAppendBytes(v2, v3, v4);
}

uint64_t decode_CGAffineTransform(uint64_t a1, double *a2)
{
  v4 = decode_CGFloat(a1, a2);
  v5 = v4 & decode_CGFloat(a1, a2 + 1);
  v6 = decode_CGFloat(a1, a2 + 2);
  v7 = v5 & v6 & decode_CGFloat(a1, a2 + 3);
  v8 = decode_CGFloat(a1, a2 + 4);
  return v7 & v8 & decode_CGFloat(a1, a2 + 5);
}

uint64_t decode_CGFloat(uint64_t a1, double *a2)
{
  v2 = *(a1 + 24);
  if (*(a1 + 8) == 1)
  {
    v5 = 0.0;
    if ((v2 & 0x8000000000000000) != 0 || (v6 = *(a1 + 16), v6 + 4 > v2))
    {
      result = 0;
    }

    else
    {
      v7 = *(*a1 + v6);
      *(a1 + 16) = v6 + 4;
      v5 = v7;
      result = 1;
    }

    *a2 = v5;
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    v3 = *(a1 + 16);
    if (v3 + 8 > v2)
    {
      return 0;
    }

    else
    {
      *a2 = *(*a1 + v3);
      *(a1 + 16) += 8;
      return 1;
    }
  }

  return result;
}