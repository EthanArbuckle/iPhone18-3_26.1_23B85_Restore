uint64_t BCReadPlugin::copyImageTextureData(uint64_t a1)
{
  v2 = *(a1 + 512);
  if (!v2)
  {
    v14 = xmmword_1EF4D4B98;
    v15 = *off_1EF4D4BA8;
    v3 = IIOImageRead::imageCount(*(a1 + 32));
    memset(v13, 0, sizeof(v13));
    IIODictionary::IIODictionary(v13);
    IIONumber::IIONumber(v12, *(a1 + 244));
    IIODictionary::setObjectForKey(v13, v12, @"width");
    IIONumber::~IIONumber(v12);
    IIONumber::IIONumber(v12, *(a1 + 248));
    IIODictionary::setObjectForKey(v13, v12, @"height");
    IIONumber::~IIONumber(v12);
    v4 = *(a1 + 476);
    if (v4 <= 36282)
    {
      v5 = 8;
      if (v4 > 35915)
      {
        if ((v4 - 35916) < 2)
        {
          goto LABEL_21;
        }

        v6 = -35918;
      }

      else
      {
        if ((v4 - 33776) < 2)
        {
          goto LABEL_21;
        }

        v6 = -33778;
      }

      if ((v4 + v6) >= 2)
      {
        goto LABEL_47;
      }

LABEL_20:
      v5 = 16;
      goto LABEL_21;
    }

    if (v4 > 36491)
    {
      if (v4 > 36493)
      {
        if (v4 == 36494)
        {
          goto LABEL_20;
        }

        v7 = 36495;
      }

      else
      {
        if (v4 == 36492)
        {
          goto LABEL_20;
        }

        v7 = 36493;
      }

      if (v4 == v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ((v4 - 36283) < 2)
      {
        v5 = 2;
        goto LABEL_21;
      }

      if ((v4 - 36285) < 2)
      {
        v5 = 4;
        goto LABEL_21;
      }
    }

LABEL_47:
    v5 = 0;
LABEL_21:
    IIONumber::IIONumber(v12, v5 * *(a1 + 480));
    IIODictionary::setObjectForKey(v13, v12, @"rowBytes");
    IIONumber::~IIONumber(v12);
    IIONumber::IIONumber(v12, *(a1 + 476));
    IIODictionary::setObjectForKey(v13, v12, @"glInternalFormat");
    IIONumber::~IIONumber(v12);
    IIONumber::IIONumber(v12, v3);
    IIODictionary::setObjectForKey(v13, v12, @"mipmapLevelCount");
    IIONumber::~IIONumber(v12);
    IIONumber::IIONumber(v12, 1);
    IIODictionary::setObjectForKey(v13, v12, @"faceCount");
    IIONumber::~IIONumber(v12);
    ColorSpace = CGImageProviderGetColorSpace();
    IIODictionary::setObjectForKey(v13, ColorSpace, @"colorSpace");
    IIODictionary::setObjectForKey(v13, *MEMORY[0x1E695E4C0], @"supportsTiledLayout");
    IIONumber::IIONumber(v12, *(a1 + 476));
    IIODictionary::setObjectForKey(v13, v12, @"pixelFormatGL");
    IIONumber::~IIONumber(v12);
    v9 = *(a1 + 476);
    if (v9 <= 36282)
    {
      if (v9 > 35915)
      {
        if ((v9 - 35916) < 2)
        {
          v10 = 131;
          goto LABEL_55;
        }

        if (v9 == 35918)
        {
          v10 = 133;
          goto LABEL_55;
        }

        if (v9 == 35919)
        {
          v10 = 135;
          goto LABEL_55;
        }
      }

      else
      {
        if ((v9 - 33776) < 2)
        {
          v10 = 130;
          goto LABEL_55;
        }

        if (v9 == 33778)
        {
          v10 = 132;
          goto LABEL_55;
        }

        if (v9 == 33779)
        {
          v10 = 134;
          goto LABEL_55;
        }
      }

      goto LABEL_50;
    }

    if (v9 > 36491)
    {
      if (v9 <= 36493)
      {
        if (v9 == 36492)
        {
          v10 = 152;
        }

        else
        {
          v10 = 153;
        }

LABEL_55:
        IIONumber::IIONumber(v12, v10);
        IIODictionary::setObjectForKey(v13, v12, @"pixelFormatMetal");
        IIONumber::~IIONumber(v12);
        IIOImageSource::cf(*(a1 + 32));
        operator new();
      }

      if (v9 == 36494)
      {
        v10 = 150;
        goto LABEL_55;
      }

      if (v9 == 36495)
      {
        v10 = 151;
        goto LABEL_55;
      }
    }

    else
    {
      if (v9 <= 36284)
      {
        if (v9 == 36283)
        {
          v10 = 140;
        }

        else
        {
          v10 = 141;
        }

        goto LABEL_55;
      }

      if (v9 == 36285)
      {
        v10 = 142;
        goto LABEL_55;
      }

      if (v9 == 36286)
      {
        v10 = 143;
        goto LABEL_55;
      }
    }

LABEL_50:
    v10 = 0;
    goto LABEL_55;
  }

  CFRetain(v2);
  return *(a1 + 512);
}

void sub_185FE00E8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a3);
  }

  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void std::__shared_weak_count::__release_shared[abi:fe200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__shared_ptr_emplace<BCTextureImp>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF4D4BF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

void IIO_Reader_KTX2::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

uint64_t IIO_Reader_KTX2::validateHeader(double a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v68 = 0;
  v69 = 0;
  v70 = 0;
  if (*a3 != 0xBB30322058544BABLL || *(a3 + 8) != 169478669)
  {
    LogError("validateHeader", 92, "*** ERROR: invalid KTX2 identifier\n", a1);
    return 4294967246;
  }

  v6 = *(a3 + 20);
  if (!v6)
  {
    LogError("validateHeader", 93, "*** ERROR: KTX2 pixelWidth must be greater than 0\n", a1);
    return 4294967246;
  }

  v7 = *(a3 + 24);
  if (!v7)
  {
    LogError("validateHeader", 94, "*** ERROR: KTX2 pixelHeight must be greater than 0\n", a1);
    return 4294967246;
  }

  v9 = *(a3 + 28);
  if (v9 && *(a3 + 32))
  {
    LogError("validateHeader", 98, "*** ERROR: KTX2 3D textures cannot have layers (%d)\n");
    return 4294967246;
  }

  v10 = *(a3 + 36);
  if (v10 != 1 && v10 != 6)
  {
    if (v10)
    {
      LogError("validateHeader", 104, "*** ERROR: KTX2 numberOfFaces (%d) must be 1 or 6 (cubemap)\n");
    }

    else
    {
      LogError("validateHeader", 103, "*** ERROR: KTX2 numberOfFaces must be greater than 0\n", a1);
    }

    return 4294967246;
  }

  v11 = *(a3 + 40);
  if (!v11)
  {
    LogError("validateHeader", 105, "*** ERROR: KTX2 numberOfMipmapLevels must be greater than 0\n", a1);
    return 4294967246;
  }

  if (v6 <= v7)
  {
    v6 = *(a3 + 24);
  }

  if (v6 >= v9)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(a3 + 28);
  }

  v13 = 1;
  if (v12 >= 2)
  {
    do
    {
      ++v13;
      v14 = v12 > 3;
      v12 >>= 1;
    }

    while (v14);
  }

  if (v11 > v13)
  {
    LogError("validateHeader", 114, "*** ERROR: numberOfMipmapLevels (%d) exceeds maximum possible mipmap levels (%d)\n", *(a3 + 40), v13);
    return 4294967246;
  }

  if (*(a3 + 44) >= 4u)
  {
    *&a1 = _cg_jpeg_mem_term("validateHeader", 117, "*** ERROR: unknown supercompressionScheme (%d)\n", *(a3 + 44)).n128_u64[0];
  }

  v15 = *(a3 + 52);
  if (!(*(a3 + 12) | v15))
  {
    LogError("validateHeader", 120, "*** ERROR: format is 0 but no DFD present\n", a1);
    return 4294967246;
  }

  v16 = *(a3 + 48);
  if (*(a3 + 48))
  {
    v17 = "*** ERROR: DFD offset and length must both be 0 or both be non-zero\n";
    v18 = 125;
    if (!v16 || !v15)
    {
      goto LABEL_39;
    }

    if (v16 < 0x50)
    {
      LogError("validateHeader", 126, "*** ERROR: DFD offset overlaps with header\n", a1);
      return 4294967246;
    }

    if (v16 + v15 > a4)
    {
      LogError("validateHeader", 127, "*** ERROR: DFD extends beyond file size\n", a1);
      return 4294967246;
    }
  }

  v19 = *(a3 + 56);
  v20 = *(a3 + 60);
  if (*(a3 + 56))
  {
    if (!v19 && v20)
    {
      LogError("validateHeader", 133, "*** ERROR: KVD length is non-zero but offset is 0", a1);
      return 4294967246;
    }

    if (v19 < 0x50)
    {
      LogError("validateHeader", 134, "*** ERROR: KVD offset overlaps with header\n", a1);
      return 4294967246;
    }

    if (v20 + v19 > a4)
    {
      LogError("validateHeader", 135, "*** ERROR: KVD extends beyond file size\n", a1);
      return 4294967246;
    }
  }

  v21 = *(a3 + 64);
  v22 = *(a3 + 72);
  v23 = *(a3 + 44);
  if (*(a3 + 64) == 0)
  {
    if (v23 == 1)
    {
      v17 = "*** ERROR: BASIS_LZ supercompression requires SGD (Supercompression Global Data)";
      v18 = 149;
LABEL_39:
      LogError("validateHeader", v18, v17, a1);
      return 4294967246;
    }
  }

  else
  {
    if (!v23)
    {
      LogError("validateHeader", 141, "*** ERROR: SGD present but supercompression scheme is NONE", a1);
      return 4294967246;
    }

    if (!v21 && v22)
    {
      LogError("validateHeader", 143, "*** ERROR: SGD length is non-zero but offset is 0", a1);
      return 4294967246;
    }

    if (v21 < 0x50)
    {
      LogError("validateHeader", 144, "*** ERROR: SGD offset overlaps with header\n", a1);
      return 4294967246;
    }

    if (v22 + v21 > a4)
    {
      LogError("validateHeader", 145, "*** ERROR: SGD extends beyond file size\n", a1);
      return 4294967246;
    }
  }

  if (v16)
  {
    LODWORD(v66) = 1145455648;
    *(&v66 + 1) = v16;
    v67 = v15;
    std::vector<IIO_Reader_KTX2::validateHeader(_KTX2Header const&,unsigned int)::Section,std::allocator<IIO_Reader_KTX2::validateHeader(_KTX2Header const&,unsigned int)::Section>>::push_back[abi:fe200100](&v68, &v66);
    v19 = *(a3 + 56);
  }

  if (v19)
  {
    LODWORD(v66) = 1263944736;
    v25 = *(a3 + 60);
    *(&v66 + 1) = v19;
    v67 = v25;
    std::vector<IIO_Reader_KTX2::validateHeader(_KTX2Header const&,unsigned int)::Section,std::allocator<IIO_Reader_KTX2::validateHeader(_KTX2Header const&,unsigned int)::Section>>::push_back[abi:fe200100](&v68, &v66);
  }

  v26 = *(a3 + 64);
  if (v26)
  {
    LODWORD(v66) = 1397179424;
    v27 = *(a3 + 72);
    *(&v66 + 1) = v26;
    v67 = v27;
    std::vector<IIO_Reader_KTX2::validateHeader(_KTX2Header const&,unsigned int)::Section,std::allocator<IIO_Reader_KTX2::validateHeader(_KTX2Header const&,unsigned int)::Section>>::push_back[abi:fe200100](&v68, &v66);
  }

  v28 = v68;
  if (v69 == v68)
  {
LABEL_66:
    v41 = 0;
    result = 0;
    if (!v68)
    {
      return result;
    }
  }

  else
  {
    v29 = 0;
    v30 = 0xAAAAAAAAAAAAAAABLL * (v69 - v68);
    v31 = v30 - 1;
    if (v30 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = 0xAAAAAAAAAAAAAAABLL * (v69 - v68);
    }

    v33 = v68 + 5;
    while (1)
    {
      v34 = v29 + 1;
      if (v29 + 1 < v30)
      {
        break;
      }

LABEL_65:
      --v31;
      v33 += 3;
      ++v29;
      if (v34 == v32)
      {
        goto LABEL_66;
      }
    }

    v35 = &v68[3 * v29];
    v36 = *(v35 + 1);
    v37 = v33;
    v38 = v31;
    while (1)
    {
      v39 = *(v37 - 1);
      if (v36 < *v37 + v39 && v39 < *(v35 + 2) + v36)
      {
        break;
      }

      v37 += 3;
      if (!--v38)
      {
        goto LABEL_65;
      }
    }

    v42 = *v35;
    v43 = *v35 >> 24;
    if (v43 <= 0x7F)
    {
      v44 = *(MEMORY[0x1E69E9830] + 4 * v43 + 60) & 0x40000;
    }

    else
    {
      v44 = __maskrune(v42 >> 24, 0x40000uLL);
    }

    if (v44)
    {
      v45 = v43;
    }

    else
    {
      v45 = 46;
    }

    v65 = v45;
    LODWORD(v46) = (v42 << 8) >> 24;
    if (v46 <= 0x7F)
    {
      v47 = *(MEMORY[0x1E69E9830] + 4 * v46 + 60) & 0x40000;
    }

    else
    {
      v47 = __maskrune((v42 << 8) >> 24, 0x40000uLL);
    }

    if (v47)
    {
      v48 = v46;
    }

    else
    {
      v48 = 46;
    }

    v64 = v48;
    v49 = v42 >> 8;
    if (v49 <= 0x7F)
    {
      v50 = *(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x40000;
    }

    else
    {
      v50 = __maskrune(v42 >> 8, 0x40000uLL);
    }

    if (v50)
    {
      v51 = v49;
    }

    else
    {
      v51 = 46;
    }

    v63 = v51;
    v42 = v42;
    if (v42 <= 0x7F)
    {
      v52 = *(MEMORY[0x1E69E9830] + 4 * v42 + 60) & 0x40000;
    }

    else
    {
      v52 = __maskrune(v42, 0x40000uLL);
    }

    if (v52)
    {
      v53 = v42;
    }

    else
    {
      v53 = 46;
    }

    v62 = v53;
    v54 = *(v35 + 2);
    if (v43 <= 0x7F)
    {
      v55 = *(MEMORY[0x1E69E9830] + 4 * v43 + 60) & 0x40000;
    }

    else
    {
      v55 = __maskrune(v43, 0x40000uLL);
    }

    if (v55)
    {
      v56 = v43;
    }

    else
    {
      v56 = 46;
    }

    if (v46 <= 0x7F)
    {
      v57 = *(MEMORY[0x1E69E9830] + 4 * v46 + 60) & 0x40000;
    }

    else
    {
      v57 = __maskrune(v46, 0x40000uLL);
    }

    if (v57)
    {
      v46 = v46;
    }

    else
    {
      v46 = 46;
    }

    if (v49 <= 0x7F)
    {
      v58 = *(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x40000;
    }

    else
    {
      v58 = __maskrune(v49, 0x40000uLL);
    }

    if (v42 <= 0x7F)
    {
      v59 = *(MEMORY[0x1E69E9830] + 4 * v42 + 60) & 0x40000;
    }

    else
    {
      v59 = __maskrune(v42, 0x40000uLL);
    }

    if (v58)
    {
      v60 = v49;
    }

    else
    {
      v60 = 46;
    }

    if (v59)
    {
      v61 = v42;
    }

    else
    {
      v61 = 46;
    }

    LogError("validateHeader", 176, "*** ERROR: sections overlap ['%c%c%c%c' [%llu,%llu) - '%c%c%c%c' [%llu,%llu)\n", v65, v64, v63, v62, v36, v54, v56, v46, v60, v61, v39, *v37);
    v41 = 4294967246;
  }

  operator delete(v28);
  return v41;
}

void sub_185FE0A08(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IIO_Reader_KTX2::validateHeader(_KTX2Header const&,unsigned int)::Section,std::allocator<IIO_Reader_KTX2::validateHeader(_KTX2Header const&,unsigned int)::Section>>::push_back[abi:fe200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    v12 = 8 * ((v3 - *a1) >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = 24 * v8 + 24;
    v13 = (v12 - (v3 - v7));
    memcpy(v13, v7, v3 - v7);
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
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

uint64_t IIO_Reader_KTX2::getImageCount(IIO_Reader_KTX2 *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  IIOScanner::IIOScanner(&v14, a2);
  v6 = v15;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  __dst = 0u;
  if (IIOScanner::getBytesAtOffset(&v14, &__dst, 0, 0x50uLL) != 80)
  {
    v9 = 1;
    goto LABEL_21;
  }

  v8 = IIO_Reader_KTX2::validateHeader(v7, 80, &__dst, v6);
  if (v8)
  {
    v9 = 0;
    if (!a5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (DWORD2(v21))
  {
    v10 = DWORD1(v20);
    if (DWORD1(v20) >= DWORD2(v20))
    {
      v10 = DWORD2(v20);
    }

    v11 = 32 - __clz(v10);
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (DWORD2(v21) >= v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = DWORD2(v21);
    }
  }

  else
  {
    v9 = 1;
  }

  if (v9 > v6)
  {
    _cg_jpeg_mem_term("getImageCount", 220, "*** invalid KTX2 file: numberOfMipmapLevels: %d (fileSize: %d)\n", 0, v6);
    v9 = 0;
LABEL_21:
    v8 = 4294967246;
    if (!a5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v8 = 0;
  if (a5)
  {
LABEL_17:
    *a5 = v9;
  }

LABEL_18:
  IIOScanner::~IIOScanner(&v14);
  return v8;
}

uint64_t IIO_Reader::createReadPlugin()
{
  return 0;
}

{
  return 0;
}

size_t IIO_Reader::addExtensionsToArray(size_t this, __CFArray *a2)
{
  v2 = *(this + 16);
  if (v2)
  {
    this = strlen(*(this + 16));
    if (this >= 3)
    {
      v4 = (v2 + 1);
      this = strcspn(v4, ".");
      if (this)
      {
        v5 = this;
        v6 = *MEMORY[0x1E695E480];
        do
        {
          v7 = CFStringCreateWithBytes(v6, v4, v5, 0x600u, 0);
          if (v7)
          {
            v8 = v7;
            v9.length = CFArrayGetCount(a2);
            v9.location = 0;
            if (!CFArrayContainsValue(a2, v9, v8))
            {
              CFArrayAppendValue(a2, v8);
            }

            CFRelease(v8);
          }

          v4 += v5 + 1;
          this = strcspn(v4, ".");
          v5 = this;
        }

        while (this);
      }
    }
  }

  return this;
}

uint64_t IIO_Reader::xpcGetImageCount(IIO_Reader *this, _xpc_connection_s *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!IIO_XPCServer())
  {
    return 4294967246;
  }

  IIOIncrementImageCountCallCount();
  source_dict = iio_xpc_get_source_dict(a3);
  plugin_dict = iio_xpc_get_plugin_dict(a3);
  v9 = iio_xpc_add_message_dict(a4);
  v10 = iio_xpc_add_source_dict(a4);
  v11 = iio_xpc_add_plugin_dict(a4);
  memset(v20, 0, sizeof(v20));
  IIOImageRead::IIOImageRead(v20, a3);
  memset(v19, 0, sizeof(v19));
  IIOImageReadSession::IIOImageReadSession(v19, v20);
  v17 = 0;
  value = 0;
  GlobalInfo = iio_xpc_dictionary_get_GlobalInfo(plugin_dict, &v17);
  if (v17)
  {
    (*(*this + 96))(this, v19, GlobalInfo);
  }

  if (source_dict)
  {
    source_dict = iio_xpc_dictionary_copy_CFDictionary(source_dict, "iio_xpc_src_options");
  }

  memset(v16, 0, sizeof(v16));
  IIODictionary::IIODictionary(v16, source_dict);
  v13 = (*(*this + 32))(this, v19, v16, &value + 4, &value);
  IIOXPCLog("🔹 xpcGetImageCount - sending %d\n", value);
  xpc_dictionary_set_int64(v10, "iio_xpc_src_status", SHIDWORD(value));
  xpc_dictionary_set_uint64(v10, "iio_xpc_src_image_count", value);
  iio_xpc_dictionary_set_error_code(v9, v13);
  v14 = (*(*this + 104))(this, v19);
  if (v14)
  {
    iio_xpc_dictionary_add_GlobalInfo(v11, v14, *(this + 6));
    CFRelease(v14);
  }

  if (source_dict)
  {
    CFRelease(source_dict);
  }

  IIODictionary::~IIODictionary(v16);
  IIOImageReadSession::~IIOImageReadSession(v19);
  IIOImageRead::~IIOImageRead(v20);
  return v13;
}

void sub_185FE1130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  IIOImageReadSession::~IIOImageReadSession(va);
  IIOImageRead::~IIOImageRead(va1);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader::getImageCount(IIO_Reader *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  _cg_jpeg_mem_term("getImageCount", 522, "===========================================================\n", a4);
  v7 = *(this + 6);
  v8 = v7 >> 24;
  v9 = MEMORY[0x1E69E9830];
  if ((v7 >> 24) <= 0x7F)
  {
    v10 = *(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000;
  }

  else
  {
    v10 = __maskrune(v8, 0x40000uLL);
    v7 = *(this + 6);
  }

  if (v10)
  {
    v11 = (v7 >> 24);
  }

  else
  {
    v11 = 46;
  }

  v12 = v7 << 8 >> 24;
  if (v12 <= 0x7F)
  {
    v13 = *(v9 + 4 * v12 + 60) & 0x40000;
  }

  else
  {
    v13 = __maskrune(v12, 0x40000uLL);
    v7 = *(this + 6);
  }

  if (v13)
  {
    v14 = (v7 << 8 >> 24);
  }

  else
  {
    v14 = 46;
  }

  v15 = v7 >> 8;
  if (v15 <= 0x7F)
  {
    v16 = *(v9 + 4 * v15 + 60) & 0x40000;
  }

  else
  {
    v16 = __maskrune(v15, 0x40000uLL);
    v7 = *(this + 6);
  }

  if (v16)
  {
    v17 = (v7 >> 8);
  }

  else
  {
    v17 = 46;
  }

  if (v7 <= 0x7F)
  {
    if ((*(v9 + 4 * v7 + 60) & 0x40000) != 0)
    {
      goto LABEL_21;
    }
  }

  else if (__maskrune(v7, 0x40000uLL))
  {
LABEL_21:
    v18 = *(this + 24);
    goto LABEL_24;
  }

  v18 = 46;
LABEL_24:
  *&v19 = _cg_jpeg_mem_term("getImageCount", 523, "IIO_Reader [%c%c%c%c] did not implement 'getImageCount'\n", v11, v14, v17, v18).n128_u64[0];
  _cg_jpeg_mem_term("getImageCount", 524, "===========================================================\n", v19);
  if (a5)
  {
    *a5 = 1;
  }

  return 0;
}

uint64_t IIO_Reader::callUpdateSourceProperties(uint64_t a1, uint64_t a2, uint64_t a3, IIODictionary *a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  if ((IIO_XPCServer() & 1) != 0 || ((v14 = CGImageSourceGetRead(a3), (v15 = v14) == 0) ? (v16 = -1) : (v14 = IIOImageRead::forceUseServer(v14), v16 = v14), IIOXPCClient = IIOXPCClient::GetIIOXPCClient(v14), !IIOXPCClient::useServerForSourceProperties(IIOXPCClient, v15, a1, v16)))
  {
    Source = CGImageSourceGetSource(a2);
    v37 = *(*a1 + 56);

    return v37(a1, Source, a4, a5, a6, a7);
  }

  else
  {
    kdebug_trace();
    v18 = xpc_dictionary_create(0, 0, 0);
    if (v18)
    {
      v19 = v18;
      v20 = CGImageSourceGetSource(a2);
      v77 = 0;
      v21 = iio_xpc_add_message_dict(v19);
      v22 = iio_xpc_add_source_dict(v19);
      xpc_dictionary_set_uint64(v19, "iio_xpc_message_id", 3uLL);
      memset(v76, 0, sizeof(v76));
      IIOString::IIOString(v76, **(a1 + 8));
      v23 = IIOString::utf8String(v76);
      xpc_dictionary_set_string(v22, "iio_xpc_src_utitype", v23);
      xpc_dictionary_set_uint64(v22, "iio_xpc_src_ostype", *(a1 + 24));
      IIOImageReadSession::addDataToXPCDictionary(v20, v19, &v77);
      iio_xpc_dictionary_add_CFDictionary(v22, "iio_xpc_src_options");
      if (a6)
      {
        iio_xpc_dictionary_add_CFDictionary(v21, "iio_xpc_msg_call_options");
      }

      iio_xpc_dictionary_add_CFDictionary(v22, "iio_xpc_src_properties");
      v24 = IIOXPCClient::xpc_connection(IIOXPCClient);
      v25 = IIOXPCClient::xpc_queue(IIOXPCClient);
      v26 = IIOXPCClient::send_message_with_reply(IIOXPCClient, v24, v25, v19);
      v27 = v26;
      if (v26)
      {
        message_dict = iio_xpc_get_message_dict(v26);
        source_dict = iio_xpc_get_source_dict(v27);
        error_code = iio_xpc_dictionary_get_error_code(message_dict);
        v32 = error_code;
        if (error_code)
        {
          if (error_code == -1400)
          {
            v33 = *(a1 + 24);
            v34 = v33 >> 24;
            if ((v33 >> 24) <= 0x7F)
            {
              v35 = *(MEMORY[0x1E69E9830] + 4 * v34 + 60) & 0x40000;
            }

            else
            {
              v35 = __maskrune(v34, 0x40000uLL);
              v33 = *(a1 + 24);
            }

            if (v35)
            {
              v45 = (v33 >> 24);
            }

            else
            {
              v45 = 46;
            }

            v46 = v33 << 8 >> 24;
            if (v46 <= 0x7F)
            {
              v47 = *(MEMORY[0x1E69E9830] + 4 * v46 + 60) & 0x40000;
            }

            else
            {
              v47 = __maskrune(v46, 0x40000uLL);
              v33 = *(a1 + 24);
            }

            if (v47)
            {
              v51 = (v33 << 8 >> 24);
            }

            else
            {
              v51 = 46;
            }

            v52 = v33 >> 8;
            if (v52 <= 0x7F)
            {
              v53 = *(MEMORY[0x1E69E9830] + 4 * v52 + 60) & 0x40000;
            }

            else
            {
              v53 = __maskrune(v52, 0x40000uLL);
              v33 = *(a1 + 24);
            }

            if (v53)
            {
              v57 = (v33 >> 8);
            }

            else
            {
              v57 = 46;
            }

            if (v33 <= 0x7F)
            {
              v58 = *(MEMORY[0x1E69E9830] + 4 * v33 + 60) & 0x40000;
            }

            else
            {
              v58 = __maskrune(v33, 0x40000uLL);
            }

            if (v58)
            {
              v61 = *(a1 + 24);
            }

            else
            {
              v61 = 46;
            }

            IIOXPCLog("❌ ImageIOXPC [%c%c%c%c]: XPC_READPLUGIN_SOURCEPROPERTIES XPC connection interrupted\n", v45, v51, v57, v61);
          }

          else
          {
            v42 = *(a1 + 24);
            v43 = v42 >> 24;
            if ((v42 >> 24) <= 0x7F)
            {
              v44 = *(MEMORY[0x1E69E9830] + 4 * v43 + 60) & 0x40000;
            }

            else
            {
              v44 = __maskrune(v43, 0x40000uLL);
              v42 = *(a1 + 24);
            }

            if (v44)
            {
              v48 = (v42 >> 24);
            }

            else
            {
              v48 = 46;
            }

            v49 = v42 << 8 >> 24;
            if (v49 <= 0x7F)
            {
              v50 = *(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x40000;
            }

            else
            {
              v50 = __maskrune(v49, 0x40000uLL);
              v42 = *(a1 + 24);
            }

            if (v50)
            {
              v54 = (v42 << 8 >> 24);
            }

            else
            {
              v54 = 46;
            }

            v55 = v42 >> 8;
            if (v55 <= 0x7F)
            {
              v56 = *(MEMORY[0x1E69E9830] + 4 * v55 + 60) & 0x40000;
            }

            else
            {
              v56 = __maskrune(v55, 0x40000uLL);
              v42 = *(a1 + 24);
            }

            if (v56)
            {
              v59 = (v42 >> 8);
            }

            else
            {
              v59 = 46;
            }

            if (v42 <= 0x7F)
            {
              v60 = *(MEMORY[0x1E69E9830] + 4 * v42 + 60) & 0x40000;
            }

            else
            {
              v60 = __maskrune(v42, 0x40000uLL);
            }

            if (v60)
            {
              v62 = *(a1 + 24);
            }

            else
            {
              v62 = 46;
            }

            IIOXPCLog("❌ ImageIOXPC [%c%c%c%c]: XPC_READPLUGIN_SOURCEPROPERTIES error: %lld\n", v48, v54, v59, v62, v32);
          }
        }

        else if (source_dict)
        {
          v39 = *(a1 + 24);
          v40 = v39 >> 24;
          if ((v39 >> 24) <= 0x7F)
          {
            v41 = *(MEMORY[0x1E69E9830] + 4 * v40 + 60) & 0x40000;
          }

          else
          {
            v41 = __maskrune(v40, 0x40000uLL);
            v39 = *(a1 + 24);
          }

          LODWORD(v63) = v39 >> 24;
          if (v41)
          {
            v63 = v63;
          }

          else
          {
            v63 = 46;
          }

          v74 = v63;
          v64 = v39 << 8 >> 24;
          if (v64 <= 0x7F)
          {
            v65 = *(MEMORY[0x1E69E9830] + 4 * v64 + 60) & 0x40000;
          }

          else
          {
            v65 = __maskrune(v64, 0x40000uLL);
            v39 = *(a1 + 24);
          }

          LODWORD(v66) = v39 << 8 >> 24;
          if (v65)
          {
            v66 = v66;
          }

          else
          {
            v66 = 46;
          }

          v73 = v66;
          v67 = v39 >> 8;
          if (v67 <= 0x7F)
          {
            v68 = *(MEMORY[0x1E69E9830] + 4 * v67 + 60) & 0x40000;
          }

          else
          {
            v68 = __maskrune(v67, 0x40000uLL);
            v39 = *(a1 + 24);
          }

          if (v68)
          {
            v69 = (v39 >> 8);
          }

          else
          {
            v69 = 46;
          }

          if (v39 <= 0x7F)
          {
            v70 = *(MEMORY[0x1E69E9830] + 4 * v39 + 60) & 0x40000;
          }

          else
          {
            v70 = __maskrune(v39, 0x40000uLL);
          }

          if (v70)
          {
            v71 = *(a1 + 24);
          }

          else
          {
            v71 = 46;
          }

          IIOXPCLog("✅ ImageIOXPC [%c%c%c%c]: XPC_READPLUGIN_SOURCEPROPERTIES: OK\n", v74, v73, v69, v71);
          v72 = iio_xpc_dictionary_copy_CFDictionary(source_dict, "iio_xpc_src_properties");
          if (v72)
          {
            memset(v75, 0, sizeof(v75));
            IIODictionary::IIODictionary(v75, v72, 1);
            IIODictionary::removeAllObjects(a4);
            IIODictionary::appendDictionary(a4, v75);
            CFRelease(v72);
            IIODictionary::~IIODictionary(v75);
          }

          *a7 = xpc_dictionary_get_int64(source_dict, "iio_xpc_src_status");
        }

        _cg_jpeg_mem_term(IIOXPCClient, v27, v31);
        xpc_release(v27);
      }

      else
      {
        IIOXPCLog("❌ ImageIOXPC: XPC_READPLUGIN_SOURCEPROPERTIES error null-reply\n");
        v32 = 4294967246;
      }

      if (v77)
      {
        if (v20)
        {
          IIOImageReadSession::releaseBytePointer(v20, v77);
        }
      }

      xpc_release(v19);
      IIOString::~IIOString(v76);
    }

    else
    {
      v32 = 4294967246;
    }

    kdebug_trace();
    return v32;
  }
}

void sub_185FE19B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader::xpcUpdateSourceProperties(IIO_Reader *this, _xpc_connection_s *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!IIO_XPCServer())
  {
    return 4294967292;
  }

  IIOIncrementSourcePropertiesCallCount();
  source_dict = iio_xpc_get_source_dict(a3);
  v8 = iio_xpc_add_message_dict(a4);
  v9 = iio_xpc_add_source_dict(a4);
  v10 = iio_xpc_dictionary_copy_CFDictionary(v8, "iio_xpc_msg_call_options");
  memset(v18, 0, sizeof(v18));
  IIODictionary::IIODictionary(v18, v10);
  v11 = iio_xpc_dictionary_copy_CFDictionary(source_dict, "iio_xpc_src_options");
  memset(v17, 0, sizeof(v17));
  IIODictionary::IIODictionary(v17, v11);
  v12 = iio_xpc_dictionary_copy_CFDictionary(source_dict, "iio_xpc_src_properties");
  memset(v16, 0, sizeof(v16));
  IIODictionary::IIODictionary(v16, v12, 1);
  memset(v19, 0, 480);
  IIOImageRead::IIOImageRead(v19, a3);
  memset(&value[4], 0, 64);
  IIOImageReadSession::IIOImageReadSession(&value[4], v19);
  *value = 0;
  v13 = (*(*this + 56))(this, &value[4], v16, v17, v18, value);
  if (!v13)
  {
    IIOXPCLog("🔹 xpcUpdateSourceProperties...\n");
    iio_xpc_dictionary_add_CFDictionary(v9, "iio_xpc_src_properties");
    xpc_dictionary_set_int64(v9, "iio_xpc_src_status", *value);
  }

  iio_xpc_dictionary_set_error_code(v8, v13);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  IIOImageReadSession::~IIOImageReadSession(&value[4]);
  IIOImageRead::~IIOImageRead(v19);
  IIODictionary::~IIODictionary(v16);
  IIODictionary::~IIODictionary(v17);
  IIODictionary::~IIODictionary(v18);
  return v13;
}

void sub_185FE1C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29)
{
  IIOImageRead::~IIOImageRead(&a29);
  IIODictionary::~IIODictionary(&a20);
  IIODictionary::~IIODictionary(&a23);
  IIODictionary::~IIODictionary(&a26);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader::updateSourceProperties(IIO_Reader *this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  ImageIOLog("=======================================================================\n", a2, a3, a4, a5, a6);
  v7 = *(this + 6);
  v8 = v7 >> 24;
  v9 = MEMORY[0x1E69E9830];
  if ((v7 >> 24) <= 0x7F)
  {
    v10 = *(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000;
  }

  else
  {
    v10 = __maskrune(v8, 0x40000uLL);
    v7 = *(this + 6);
  }

  v11 = v7 << 8 >> 24;
  if (v11 <= 0x7F)
  {
    v12 = *(v9 + 4 * v11 + 60) & 0x40000;
    v13 = v7;
  }

  else
  {
    v12 = __maskrune(v11, 0x40000uLL);
    v13 = *(this + 6);
  }

  v14 = v13 >> 8;
  if (v14 <= 0x7F)
  {
    v15 = *(v9 + 4 * v14 + 60) & 0x40000;
    LOWORD(v16) = v13;
  }

  else
  {
    v15 = __maskrune(v14, 0x40000uLL);
    v16 = *(this + 6);
  }

  if (v16 <= 0x7F)
  {
    v17 = *(v9 + 4 * v16 + 60) & 0x40000;
  }

  else
  {
    v17 = __maskrune(v16, 0x40000uLL);
  }

  if (v17)
  {
    v18 = *(this + 24);
  }

  else
  {
    v18 = 46;
  }

  LODWORD(v19) = v16 >> 8;
  if (v15)
  {
    v19 = v19;
  }

  else
  {
    v19 = 46;
  }

  LODWORD(v20) = v13 << 8 >> 24;
  if (v12)
  {
    v20 = v20;
  }

  else
  {
    v20 = 46;
  }

  if (v10)
  {
    v21 = (v7 >> 24);
  }

  else
  {
    v21 = 46;
  }

  ImageIOLog("IIO_Reader [%c%c%c%c] did not implement 'updateSourceProperties'\n", v21, v20, v19, v18);
  ImageIOLog("=======================================================================\n");
  return 4294967240;
}

uint64_t IIO_Reader::xpcInitImage(IIO_Reader *this, _xpc_connection_s *a2, void *a3, void *a4)
{
  if (IIO_XPCServer())
  {
    length[0] = 0;
    IIOIncrementInitImageCallCount();
    source_dict = iio_xpc_get_source_dict(a3);
    plugin_dict = iio_xpc_get_plugin_dict(a3);
    v9 = iio_xpc_add_message_dict(a4);
    v10 = iio_xpc_add_plugin_dict(a4);
    DataFromXPCDict = IIOImageRead::CreateDataFromXPCDict(a3, v11);
    if (DataFromXPCDict)
    {
      v13 = DataFromXPCDict;
      if (!plugin_dict || (data = xpc_dictionary_get_data(plugin_dict, "iio_xpc_plugin_init_data", length)) == 0)
      {
        v28 = 4294967246;
LABEL_91:
        CFRelease(v13);
        return v28;
      }

      v15 = data;
      v16 = iio_xpc_dictionary_copy_CFDictionary(source_dict, "iio_xpc_src_options");
      if (length[0] != 56)
      {
        IIO_Reader::xpcInitImage(length);
        v60 = 0;
        v28 = 4294967246;
LABEL_87:
        if (v16)
        {
          CFRelease(v16);
        }

        if (v60)
        {
          CFRelease(v60);
        }

        goto LABEL_91;
      }

      memset(v76, 0, sizeof(v76));
      IIODictionary::IIODictionary(v76, v16);
      memset(v75, 0, sizeof(v75));
      IIODictionary::IIODictionary(v75);
      v74 = 0;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      v17 = v15[2];
      v74 = *(v15 + 6);
      v73 = v17;
      Mutable = CGImageMetadataCreateMutable();
      v68 = v16;
      *&v71 = v76;
      *(&v71 + 1) = v75;
      *&v72 = Mutable;
      *(&v72 + 1) = v13;
      memset(v70, 0, sizeof(v70));
      IIODictionary::IIODictionary(v70);
      v18 = (*(*this + 240))(this, &v71);
      v19 = v18;
      if (!v18)
      {
        v28 = 4294967246;
        goto LABEL_83;
      }

      IIOReadPlugin::setUTIWithReader(v18, this);
      v69[0] = 0;
      GlobalInfo = iio_xpc_dictionary_get_GlobalInfo(plugin_dict, v69);
      if (v69[0])
      {
        v21 = GlobalInfo;
        v22 = IIOImageSource::count(v19);
        (*(*this + 96))(this, v22, v21, v69[0]);
      }

      v23 = (*(*v19 + 96))(v19, v70);
      v66 = v10;
      v65 = v23;
      if (v23 == -49)
      {
        v24 = *(v19 + 55);
        (*(*v19 + 8))(v19);
        Uint32ForKey = IIODictionary::getUint32ForKey(v70, @"NEW_PLUGIN_ostype");
        v26 = v24 >> 24;
        if ((v24 >> 24) <= 0x7F)
        {
          v27 = *(MEMORY[0x1E69E9830] + 4 * v26 + 60) & 0x40000;
        }

        else
        {
          v27 = __maskrune(v24 >> 24, 0x40000uLL);
        }

        if (v27)
        {
          v30 = v26;
        }

        else
        {
          v30 = 46;
        }

        v64 = v30;
        v31 = v24 << 8 >> 24;
        if (v31 <= 0x7F)
        {
          v32 = *(MEMORY[0x1E69E9830] + 4 * v31 + 60) & 0x40000;
        }

        else
        {
          v32 = __maskrune(v24 << 8 >> 24, 0x40000uLL);
        }

        if (v32)
        {
          v33 = v31;
        }

        else
        {
          v33 = 46;
        }

        v63 = v33;
        v34 = v24 >> 8;
        if (v34 <= 0x7F)
        {
          v35 = *(MEMORY[0x1E69E9830] + 4 * v34 + 60) & 0x40000;
        }

        else
        {
          v35 = __maskrune(v24 >> 8, 0x40000uLL);
        }

        if (v35)
        {
          v36 = v34;
        }

        else
        {
          v36 = 46;
        }

        v62 = v36;
        if (v24 <= 0x7F)
        {
          v37 = *(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x40000;
        }

        else
        {
          v37 = __maskrune(v24, 0x40000uLL);
        }

        if (v37)
        {
          v38 = v24;
        }

        else
        {
          v38 = 46;
        }

        v39 = Uint32ForKey >> 24;
        if ((Uint32ForKey >> 24) <= 0x7F)
        {
          v40 = *(MEMORY[0x1E69E9830] + 4 * v39 + 60) & 0x40000;
        }

        else
        {
          v40 = __maskrune(Uint32ForKey >> 24, 0x40000uLL);
        }

        if (v40)
        {
          v41 = v39;
        }

        else
        {
          v41 = 46;
        }

        v42 = Uint32ForKey << 8 >> 24;
        if (v42 <= 0x7F)
        {
          v43 = *(MEMORY[0x1E69E9830] + 4 * v42 + 60) & 0x40000;
        }

        else
        {
          v43 = __maskrune(Uint32ForKey << 8 >> 24, 0x40000uLL);
        }

        if (v43)
        {
          v44 = v42;
        }

        else
        {
          v44 = 46;
        }

        v45 = Uint32ForKey >> 8;
        if (v45 <= 0x7F)
        {
          v46 = *(MEMORY[0x1E69E9830] + 4 * v45 + 60) & 0x40000;
        }

        else
        {
          v46 = __maskrune(Uint32ForKey >> 8, 0x40000uLL);
        }

        if (Uint32ForKey <= 0x7F)
        {
          v47 = *(MEMORY[0x1E69E9830] + 4 * Uint32ForKey + 60) & 0x40000;
        }

        else
        {
          v47 = __maskrune(Uint32ForKey, 0x40000uLL);
        }

        if (v46)
        {
          v48 = v45;
        }

        else
        {
          v48 = 46;
        }

        if (v47)
        {
          v49 = Uint32ForKey;
        }

        else
        {
          v49 = 46;
        }

        _cg_jpeg_mem_term("xpcInitImage", 1104, "*** 🔄 ImageIO: plugin changed from '%c%c%c%c' to '%c%c%c%c'\n", v64, v63, v62, v38, v41, v44, v48, v49);
        kdebug_trace();
        Uint64ForKey = IIODictionary::getUint64ForKey(v70, @"NEW_PLUGIN_dataOffset");
        ReaderHandler = IIO_ReaderHandler::GetReaderHandler(Uint64ForKey);
        v52 = IIO_ReaderHandler::readerForType(ReaderHandler, Uint32ForKey);
        v29 = v52;
        if (!v52)
        {
          v19 = 0;
          v28 = 4294967247;
          goto LABEL_83;
        }

        *(&v73 + 1) = Uint64ForKey;
        v19 = (*(*v52 + 240))(v52, &v71);
        IIOReadPlugin::setUTIWithReader(v19, v29);
        if (v24 == 1297108768)
        {
          IIODictionary::setObjectForKey(v70, *MEMORY[0x1E695E4D0], @"OriginalPluginWasMPO");
        }

        v53 = IIOImageSource::count(v19);
        (*(*v29 + 32))(v29, v53, 0, 0, 0);
        v23 = (*(*v19 + 96))(v19, v70);
      }

      else
      {
        v29 = 0;
      }

      v28 = v23;
      if (!v23)
      {
        memset(v69, 0, sizeof(v69));
        IIODictionary::IIODictionary(v69);
        IIOXPCLog("🔹 xpcInitImage...\n");
        (*(*v19 + 112))(v19, v66);
        ColorSpace = IIOReadPlugin::getColorSpace(v19);
        if (ColorSpace)
        {
          v55 = CGColorSpaceCopyPropertyList(ColorSpace);
          if (v55)
          {
            IIODictionary::setObjectForKey(v69, v55, @"TEMP_COLORSPACE");
            CFRelease(v55);
          }
        }

        if (IIODictionary::getCount(v69))
        {
          iio_xpc_dictionary_add_CFDictionary(v66, "iio_xpc_plugin_header_infoptr");
        }

        if (v65 == -49)
        {
          iio_xpc_dictionary_add_CFDictionary(v66, "iio_xpc_plugin_type_changed");
          if (!v29)
          {
LABEL_78:
            iio_xpc_dictionary_add_CFDictionary(v66, "iio_xpc_plugin_init_properties");
            Position = IIOImageWriteSession::getPosition(v19);
            XPCObj = CGImageMetadataCreateXPCObj(Position);
            if (XPCObj)
            {
              xpc_dictionary_set_value(v66, "iio_xpc_plugin_init_metadata", XPCObj);
              xpc_release(XPCObj);
            }

            IIODictionary::~IIODictionary(v69);
            v28 = 0;
            goto LABEL_84;
          }

          v56 = IIOImageSource::count(v19);
        }

        else
        {
          v56 = IIOImageSource::count(v19);
          v29 = this;
        }

        v57 = (*(*v29 + 104))(v29, v56);
        if (v57)
        {
          iio_xpc_dictionary_add_GlobalInfo(v66, v57, *(this + 6));
          CFRelease(v57);
        }

        goto LABEL_78;
      }

LABEL_83:
      IIOXPCLog("serverPlugin->initialize returned: %d\n", v28);
LABEL_84:
      iio_xpc_dictionary_set_error_code(v9, v28);
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }

      IIODictionary::~IIODictionary(v70);
      IIODictionary::~IIODictionary(v75);
      IIODictionary::~IIODictionary(v76);
      v60 = Mutable;
      v16 = v68;
      goto LABEL_87;
    }
  }

  return 4294967246;
}

void sub_185FE265C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185FE25A4);
}

void sub_185FE2690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  IIODictionary::~IIODictionary(&a28);
  IIODictionary::~IIODictionary((v28 - 144));
  IIODictionary::~IIODictionary((v28 - 120));
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader::initializeThumbnail(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  IIODebugCallbackPriv(a1[6], "initThumbnail");
  v8 = *(*a1 + 88);

  return v8(a1, a2, a3, a4);
}

uint64_t IIO_Reader::xpcDecodeImage(IIO_Reader *this, _xpc_connection_s *a2, void *a3, void *a4)
{
  if (!IIO_XPCServer())
  {
    return 4294967246;
  }

  memset(v86, 0, 24);
  IIODictionary::IIODictionary(v86);
  v84 = 0;
  v85 = 0;
  IIOIncrementCopyIOSurfaceCallCount();
  source_dict = iio_xpc_get_source_dict(a3);
  plugin_dict = iio_xpc_get_plugin_dict(a3);
  callback_dict = iio_xpc_get_callback_dict(a3);
  v10 = iio_xpc_add_message_dict(a4);
  v11 = iio_xpc_add_callback_dict(a4);
  DataFromXPCDict = IIOImageRead::CreateDataFromXPCDict(a3, v12);
  if (source_dict)
  {
    v14 = iio_xpc_dictionary_copy_CFDictionary(source_dict, "iio_xpc_src_options");
  }

  else
  {
    v14 = 0;
  }

  memset(v83, 0, sizeof(v83));
  IIODictionary::IIODictionary(v83, v14);
  if (source_dict)
  {
    v16 = iio_xpc_dictionary_copy_CFDictionary(source_dict, "iio_xpc_src_properties");
  }

  else
  {
    v16 = 0;
  }

  memset(v82, 0, sizeof(v82));
  IIODictionary::IIODictionary(v82, v16);
  if (v16)
  {
    CFRelease(v16);
  }

  Mutable = CGImageMetadataCreateMutable();
  xdict = v11;
  v78 = v10;
  v81[5] = 0;
  v81[6] = 0x10000;
  v81[3] = DataFromXPCDict;
  v81[4] = 0;
  v81[0] = v83;
  v81[1] = v82;
  v81[2] = Mutable;
  v18 = (*(*this + 240))(this, v81);
  v19 = v18;
  v15 = 4294967246;
  if (!v18 || !plugin_dict || !callback_dict)
  {
    goto LABEL_83;
  }

  (*(*v18 + 104))(v18, plugin_dict);
  *&v79[0] = 0;
  GlobalInfo = iio_xpc_dictionary_get_GlobalInfo(plugin_dict, v79);
  if (*&v79[0])
  {
    v21 = GlobalInfo;
    v22 = IIOImageSource::count(v19);
    (*(*this + 96))(this, v22, v21, *&v79[0]);
  }

  v23 = iio_xpc_dictionary_copy_CFDictionary(callback_dict, "iio_xpc_cb_blockset_options");
  CGRect = iio_xpc_dictionary_get_CGRect(callback_dict, "iio_xpc_cb_blockset_cgrect");
  v26 = v25;
  v28 = v27;
  v30 = v29;
  iio_xpc_dictionary_get_CGSize(callback_dict, "iio_xpc_cb_blockset_dest_cgsize");
  v32 = v31;
  v34 = v33;
  if (source_dict)
  {
    LODWORD(v36) = xpc_dictionary_get_uint64(source_dict, "iio_xpc_src_image_index");
    uint64 = xpc_dictionary_get_uint64(source_dict, "iio_xpc_src_image_type");
    v36 = v36;
    if (uint64 == 1)
    {
      value = xpc_dictionary_get_value(callback_dict, "iio_xpc_cb_decode_iosurface");
      v85 = IOSurfaceLookupFromXPCObject(value);
      v38 = v85 != 0;
      uint64 = 1;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v36 = 0;
    v38 = 0;
    uint64 = 3;
  }

  (*(*v19 + 80))(v19, v23);
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  IIODecodeParameter::IIODecodeParameter(v79, 0, 0, v36, v23, CGRect, v26, v28, v30, v32, v34);
  v15 = (*(*v19 + 216))(v19, v79, uint64, &v85, &v84, 0);
  if (v23)
  {
    CFRelease(v23);
  }

  if (uint64 == 3)
  {
    v15 = IIOReadPlugin::addImageBlocksToXPCObject(v19, a4);
  }

  else if (uint64 == 1 && v85)
  {
    if (!v38)
    {
      XPCObject = IOSurfaceCreateXPCObject(v85);
      if (XPCObject)
      {
        xpc_dictionary_set_value(xdict, "iio_xpc_cb_decode_iosurface", XPCObject);
        xpc_release(XPCObject);
      }
    }

    CFRelease(v85);
  }

  IIODecodeParameter::~IIODecodeParameter(v79);
  if (v15 != -181)
  {
    if (!v15)
    {
      v40 = *(this + 6);
      v41 = v40 >> 24;
      if ((v40 >> 24) <= 0x7F)
      {
        v42 = *(MEMORY[0x1E69E9830] + 4 * v41 + 60) & 0x40000;
      }

      else
      {
        v42 = __maskrune(v41, 0x40000uLL);
        v40 = *(this + 6);
      }

      if (v42)
      {
        v46 = (v40 >> 24);
      }

      else
      {
        v46 = 46;
      }

      v47 = v40 << 8 >> 24;
      if (v47 <= 0x7F)
      {
        v48 = *(MEMORY[0x1E69E9830] + 4 * v47 + 60) & 0x40000;
      }

      else
      {
        v48 = __maskrune(v47, 0x40000uLL);
        v40 = *(this + 6);
      }

      if (v48)
      {
        v52 = (v40 << 8 >> 24);
      }

      else
      {
        v52 = 46;
      }

      v53 = v40 >> 8;
      if (v53 <= 0x7F)
      {
        v54 = *(MEMORY[0x1E69E9830] + 4 * v53 + 60) & 0x40000;
      }

      else
      {
        v54 = __maskrune(v53, 0x40000uLL);
        v40 = *(this + 6);
      }

      if (v54)
      {
        v58 = (v40 >> 8);
      }

      else
      {
        v58 = 46;
      }

      if (v40 <= 0x7F)
      {
        if ((*(MEMORY[0x1E69E9830] + 4 * v40 + 60) & 0x40000) != 0)
        {
          goto LABEL_67;
        }
      }

      else if (__maskrune(v40, 0x40000uLL))
      {
LABEL_67:
        v59 = *(this + 24);
LABEL_77:
        IIOXPCLog("🔹 xpcDecodeImage [%c%c%c%c]...\n", v46, v52, v58, v59);
        v62 = iio_xpc_add_plugin_dict(a4);
        (*(*v19 + 112))(v19, v62);
        v63 = IIOImageSource::count(v19);
        v64 = (*(*this + 104))(this, v63);
        if (v64)
        {
          iio_xpc_dictionary_add_GlobalInfo(v62, v64, *(this + 6));
          CFRelease(v64);
        }

        v15 = 0;
        goto LABEL_107;
      }

      v59 = 46;
      goto LABEL_77;
    }

LABEL_83:
    v65 = *(this + 6);
    v66 = v65 >> 24;
    if ((v65 >> 24) <= 0x7F)
    {
      v67 = *(MEMORY[0x1E69E9830] + 4 * v66 + 60) & 0x40000;
    }

    else
    {
      v67 = __maskrune(v66, 0x40000uLL);
      v65 = *(this + 6);
    }

    if (v67)
    {
      v68 = (v65 >> 24);
    }

    else
    {
      v68 = 46;
    }

    v69 = v65 << 8 >> 24;
    if (v69 <= 0x7F)
    {
      v70 = *(MEMORY[0x1E69E9830] + 4 * v69 + 60) & 0x40000;
    }

    else
    {
      v70 = __maskrune(v69, 0x40000uLL);
      v65 = *(this + 6);
    }

    if (v70)
    {
      v71 = (v65 << 8 >> 24);
    }

    else
    {
      v71 = 46;
    }

    v72 = v65 >> 8;
    if (v72 <= 0x7F)
    {
      v73 = *(MEMORY[0x1E69E9830] + 4 * v72 + 60) & 0x40000;
    }

    else
    {
      v73 = __maskrune(v72, 0x40000uLL);
      v65 = *(this + 6);
    }

    if (v73)
    {
      v74 = (v65 >> 8);
    }

    else
    {
      v74 = 46;
    }

    if (v65 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v65 + 60) & 0x40000) != 0)
      {
        goto LABEL_103;
      }
    }

    else if (__maskrune(v65, 0x40000uLL))
    {
LABEL_103:
      v75 = *(this + 24);
LABEL_106:
      IIOXPCLog("♦️ xpcDecodeImage [%c%c%c%c] err=%d)\n", v68, v71, v74, v75, v15);
      goto LABEL_107;
    }

    v75 = 46;
    goto LABEL_106;
  }

  v43 = *(this + 6);
  v44 = v43 >> 24;
  if ((v43 >> 24) <= 0x7F)
  {
    v45 = *(MEMORY[0x1E69E9830] + 4 * v44 + 60) & 0x40000;
  }

  else
  {
    v45 = __maskrune(v44, 0x40000uLL);
    v43 = *(this + 6);
  }

  if (v45)
  {
    v49 = (v43 >> 24);
  }

  else
  {
    v49 = 46;
  }

  v50 = v43 << 8 >> 24;
  if (v50 <= 0x7F)
  {
    v51 = *(MEMORY[0x1E69E9830] + 4 * v50 + 60) & 0x40000;
  }

  else
  {
    v51 = __maskrune(v50, 0x40000uLL);
    v43 = *(this + 6);
  }

  if (v51)
  {
    v55 = (v43 << 8 >> 24);
  }

  else
  {
    v55 = 46;
  }

  v56 = v43 >> 8;
  if (v56 <= 0x7F)
  {
    v57 = *(MEMORY[0x1E69E9830] + 4 * v56 + 60) & 0x40000;
  }

  else
  {
    v57 = __maskrune(v56, 0x40000uLL);
    v43 = *(this + 6);
  }

  if (v57)
  {
    v60 = (v43 >> 8);
  }

  else
  {
    v60 = 46;
  }

  if (v43 <= 0x7F)
  {
    if ((*(MEMORY[0x1E69E9830] + 4 * v43 + 60) & 0x40000) != 0)
    {
      goto LABEL_74;
    }

LABEL_81:
    v61 = 46;
    goto LABEL_82;
  }

  if (!__maskrune(v43, 0x40000uLL))
  {
    goto LABEL_81;
  }

LABEL_74:
  v61 = *(this + 24);
LABEL_82:
  v15 = 4294967115;
  IIOXPCLog("❗️ request not handled [%c%c%c%c] err=%d)\n", v49, v55, v60, v61, -181);
LABEL_107:
  iio_xpc_dictionary_set_error_code(v78, v15);
  if (v14)
  {
    CFRelease(v14);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (DataFromXPCDict)
  {
    CFRelease(DataFromXPCDict);
  }

  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  IIODictionary::~IIODictionary(v82);
  IIODictionary::~IIODictionary(v83);
  IIODictionary::~IIODictionary(v86);
  return v15;
}

void sub_185FE3054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  IIODictionary::~IIODictionary(&a35);
  IIODictionary::~IIODictionary((v35 - 200));
  JUMPOUT(0x185FE3068);
}

uint64_t IIO_Reader::CopyIOSurfaceProc420f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if ((*(*v6 + 80))(v6, a3))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v7 = (*(*v6 + 248))(v6, a1, a2, a3);
  (*(*v6 + 88))(v6);
  return v7;
}

void sub_185FE3164(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185FE312CLL);
}

uint64_t IIO_Reader::CopyIOSurfaceSetProc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if ((*(*v6 + 80))(v6, a3))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v7 = (*(*v6 + 256))(v6, a1, a2, a3);
  (*(*v6 + 88))(v6);
  if ((gIIODebugFlags & 0x800000000000) != 0 && !v7)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CopyIOSurfaceSetProc", 1700, "could not create CGImageIOSurfaceSetRef");
  }

  return v7;
}

void sub_185FE32AC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185FE3234);
}

void IIO_Reader_BMP::~IIO_Reader_BMP(IIO_Reader_BMP *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_BMP::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

BOOL IIO_Reader_BMP::testHeader(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a2 == 66 && *(a2 + 1) == 77)
  {
    v2 = *(a2 + 14);
    v3 = (v2 - 12) > 0x34 || ((1 << (v2 - 12)) & 0x10110010000011) == 0;
    if ((!v3 || v2 == 124 || v2 == 108) && *(a2 + 10) >= (v2 + 14))
    {
      return 1;
    }
  }

  return result;
}

void *TIFFHashSetNew(uint64_t (*a1)(), BOOL (*a2)(uint64_t a1, uint64_t a2), uint64_t a3)
{
  v6 = malloc_type_malloc(0x40uLL, 0x10A0040F3714300uLL);
  v7 = v6;
  if (v6)
  {
    if (a1)
    {
      v8 = a1;
    }

    else
    {
      v8 = TIFFHashSetHashPointer;
    }

    if (a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = TIFFHashSetEqualPointer;
    }

    *v6 = v8;
    v6[1] = v9;
    v6[2] = a3;
    *(v6 + 8) = 0;
    v10 = malloc_type_calloc(0x35uLL, 8uLL, 0x2004093837F09uLL);
    v7[3] = v10;
    if (v10)
    {
      *(v7 + 36) = 0x3500000000;
      v7[6] = 0;
      *(v7 + 14) = 0;
      *(v7 + 60) = 0;
    }

    else
    {
      free(v7);
      return 0;
    }
  }

  return v7;
}

uint64_t TIFFHashSetSize(uint64_t a1)
{
  if (!a1)
  {
    TIFFHashSetSize_cold_1();
  }

  return *(a1 + 32);
}

void TIFFHashSetDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2 >= 1)
    {
      for (i = 0; i < v2; *(v4 + 8 * i++) = 0)
      {
        v4 = *(a1 + 24);
        v5 = *(v4 + 8 * i);
        if (v5)
        {
          do
          {
            v6 = *(a1 + 16);
            if (v6)
            {
              v6(*v5);
            }

            v7 = v5[1];
            free(v5);
            v5 = v7;
          }

          while (v7);
          v4 = *(a1 + 24);
          v2 = *(a1 + 40);
        }
      }
    }

    *(a1 + 60) = 0;
    free(*(a1 + 24));
    v8 = *(a1 + 48);
    if (v8)
    {
      do
      {
        v9 = v8[1];
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(a1);
  }
}

uint64_t TIFFHashSetInsert(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    TIFFHashSetInsert_cold_1();
  }

  Ptr = TIFFHashSetFindPtr(a1, a2);
  if (Ptr)
  {
    v5 = Ptr;
    v6 = *(a1 + 16);
    if (v6)
    {
      v6(*Ptr);
    }

    *v5 = a2;
    return 1;
  }

  v7 = *(a1 + 32);
  if (v7 >= 2 * *(a1 + 40) / 3)
  {
    v8 = *(a1 + 36);
  }

  else
  {
    if (*(a1 + 60) != 1)
    {
      goto LABEL_16;
    }

    v8 = *(a1 + 36);
    if (v7 > *(a1 + 40) / 2 || v8 < 1)
    {
      goto LABEL_16;
    }
  }

  *(a1 + 36) = v8 + 1;
  if (!TIFFHashSetRehash(a1))
  {
    --*(a1 + 36);
    goto LABEL_22;
  }

LABEL_16:
  v10 = (*a1)(a2);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  if (v12)
  {
    *v12 = 0;
    --*(a1 + 56);
    *(a1 + 48) = v12[1];
LABEL_20:
    *v12 = a2;
    v13 = *(a1 + 24);
    v12[1] = *(v13 + 8 * (v10 % v11));
    *(v13 + 8 * (v10 % v11)) = v12;
    ++*(a1 + 32);
    return 1;
  }

  v12 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_22:
  v15 = *(a1 + 16);
  if (v15)
  {
    v15(a2);
  }

  return 0;
}

void *TIFFHashSetFindPtr(uint64_t a1, uint64_t a2)
{
  for (i = *(*(a1 + 24) + 8 * ((*a1)(a2) % *(a1 + 40))); i; i = i[1])
  {
    if ((*(a1 + 8))(*i, a2))
    {
      break;
    }
  }

  return i;
}

BOOL TIFFHashSetRehash(uint64_t a1)
{
  v2 = anPrimes[*(a1 + 36)];
  v3 = malloc_type_calloc(v2, 8uLL, 0x2004093837F09uLL);
  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4 >= 1)
    {
      for (i = 0; i < v4; ++i)
      {
        v6 = *(*(a1 + 24) + 8 * i);
        if (v6)
        {
          do
          {
            v7 = (*a1)(*v6);
            v8 = v6[1];
            v6[1] = v3[v7 % v2];
            v3[v7 % v2] = v6;
            v6 = v8;
          }

          while (v8);
          v4 = *(a1 + 40);
        }
      }
    }

    free(*(a1 + 24));
    *(a1 + 24) = v3;
    *(a1 + 40) = v2;
    *(a1 + 60) = 0;
  }

  return v3 != 0;
}

void *TIFFHashSetLookup(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    TIFFHashSetLookup_cold_1();
  }

  result = TIFFHashSetFindPtr(a1, a2);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t TIFFHashSetRemove(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    TIFFHashSetRemove_cold_1();
  }

  v4 = *(a1 + 36);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v6 < 0 == v5 && *(a1 + 32) <= *(a1 + 40) / 2)
  {
    *(a1 + 36) = v6;
    if (!TIFFHashSetRehash(a1))
    {
      result = 0;
      ++*(a1 + 36);
      return result;
    }
  }

  v7 = (*a1)(a2) % *(a1 + 40);
  v8 = *(*(a1 + 24) + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  if (((*(a1 + 8))(*v8, a2) & 1) == 0)
  {
    while (1)
    {
      v10 = v8;
      v8 = v8[1];
      if (!v8)
      {
        return 0;
      }

      if ((*(a1 + 8))(*v8, a2))
      {
        v9 = v10 + 1;
        goto LABEL_11;
      }
    }
  }

  v9 = (*(a1 + 24) + 8 * v7);
LABEL_11:
  *v9 = v8[1];
  v11 = *(a1 + 16);
  if (v11)
  {
    v11(*v8);
  }

  v12 = *(a1 + 56);
  if (v12 > 127)
  {
    free(v8);
  }

  else
  {
    v8[1] = *(a1 + 48);
    *(a1 + 48) = v8;
    *(a1 + 56) = v12 + 1;
  }

  --*(a1 + 32);
  return 1;
}

uint64_t CGImagePluginGetMatchToProfileOption(uint64_t a1)
{
  MatchToProfileOption = IIOImagePlus::getMatchToProfileOption(*(a1 + 24));
  v2 = MEMORY[0x1E695E4D0];
  if (!MatchToProfileOption)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  return *v2;
}

__n128 CGImagePluginSetImageBlockProc(uint64_t a1, uint64_t a2, CFTypeRef *a3, int *a4)
{
  if (a4)
  {
    v5 = *(a2 + 56);
    v6 = *(a2 + 60);
    v7 = *(a2 + 48);
    v8 = *(a2 + 40);
    v9 = *(a2 + 32);
    v10 = *(a1 + 24);
    v11 = *(a2 + 16);
    v15[0] = *a2;
    v15[1] = v11;
    v16 = v9;
    v17 = v8;
    v18 = 0;
    v19 = v7;
    v20 = v5;
    v21 = 0;
    v22 = v6;
    v23 = v6 & 0xF0000;
    v24 = *(a2 + 64);
    v25 = 0;
    IIOImagePlus::setGeometry(v10, a3, v15);
    v12 = *a4;
    if (*a4 > 1)
    {
      if (v12 == 2)
      {
        v13 = v10;
      }

      else
      {
        if (v12 != 3)
        {
          return _cg_jpeg_mem_term("CGImagePluginSetImageBlockProcImp", 191, "*** unknown imageProvider callback version [%d]\n");
        }

        v13 = v10;
      }

LABEL_13:
      IIOImagePlus::setImageBlockProc(v13);
    }

    if (v12)
    {
      if (v12 == 1)
      {
        v13 = v10;
        goto LABEL_13;
      }

      return _cg_jpeg_mem_term("CGImagePluginSetImageBlockProcImp", 191, "*** unknown imageProvider callback version [%d]\n");
    }

    return _cg_jpeg_mem_term("CGImagePluginSetImageBlockProcImp", 172, "*** imageProvider callback version '0' no longer supported\n");
  }

  return result;
}

__CFData *OFDCreatePDFDataFromURL(const __CFURL *a1)
{
  pthread_mutex_lock(&OFDCreatePDFDataFromURL::ofdLock);
  v2 = _OFDCreatePDFDataFromURL(a1);
  pthread_mutex_unlock(&OFDCreatePDFDataFromURL::ofdLock);
  return v2;
}

void ASTCWritePlugin::ASTCWritePlugin(ASTCWritePlugin *this, IIOImageWriteSession *a2, IIOImageDestination *a3, char a4)
{
  CommonASTCWritePlugin::CommonASTCWritePlugin(this, a2, a3, 67);
  *v5 = &unk_1EF4D4FE8;
  *(v5 + 62) = a4;
  *(v5 + 60) = a4 ^ 1;
  *(v5 + 63) = 1;
  *(v5 + 64) = 0;
}

void ASTCWritePlugin::ASTCWritePlugin(CommonASTCWritePlugin *a1, IIOImageWriteSession *a2, IIOImageDestination *a3, uint64_t a4)
{
  CommonASTCWritePlugin::CommonASTCWritePlugin(a1, a2, a3, 67);
  *v5 = &unk_1EF4D4FE8;
  *(v5 + 62) = 256;
  *(v5 + 60) = 0;
  *(v5 + 64) = a4;
}

void ASTCWritePlugin::~ASTCWritePlugin(ASTCWritePlugin *this, uint64_t a2, const char *a3)
{
  *this = &unk_1EF4D4FE8;
  CommonASTCWritePlugin::~CommonASTCWritePlugin(this, a2, a3);

  JUMPOUT(0x186602850);
}

const __CFDictionary *ASTCWritePlugin::handleProperties(ASTCWritePlugin *this, IIODictionary *a2)
{
  result = CommonASTCWritePlugin::handleProperties(this, a2);
  *(this + 58) = 0;
  if (a2)
  {
    *(this + 63) = 1;
  }

  return result;
}

uint64_t ASTCWritePlugin::writeASTCHeader(IIOImageWriteSession **this, int a2, int a3, int a4, char a5, char a6)
{
  v7 = 1554098963;
  v8 = a5;
  v9 = a6;
  v10 = 1;
  v11 = a2;
  v12 = BYTE2(a2);
  v13 = a3;
  v14 = BYTE2(a3);
  v15 = a4;
  v16 = BYTE2(a4);
  if (IIOImageWriteSession::putBytes(this[2], &v7, 0x10uLL) == 64)
  {
    return 0;
  }

  else
  {
    return 4294967246;
  }
}

uint64_t ASTCWritePlugin::writeOne(ASTCWritePlugin *this, IIOImagePixelDataProvider *a2, IIODictionary *a3, IIODictionary *a4)
{
  (*(*this + 56))(this, a3);
  AlphaInfo = IIOImagePixelDataProvider::getAlphaInfo(a2);
  BitmapInfo = IIOImagePixelDataProvider::getBitmapInfo(a2);
  IIOImageSource::imageReadRef(a2);
  CGImageGetImageProvider();
  v8 = *MEMORY[0x1E695E4D0];
  Property = CGImageProviderGetProperty();
  v10 = *(this + 13);
  if (v8 == Property)
  {
    v11 = CGImageProviderGetProperty();
    if (v11)
    {
      IIONumber::IIONumber(&imageSize, v11);
      v10 = IIONumber::uint32Num(&imageSize);
      IIONumber::~IIONumber(&imageSize);
    }
  }

  if (AlphaInfo > 6)
  {
    goto LABEL_8;
  }

  if (((1 << AlphaInfo) & 6) != 0)
  {
    v62 = 0;
    v12 = at_alpha_premultiplied;
  }

  else
  {
    if (((1 << AlphaInfo) & 0x18) == 0)
    {
      if (((1 << AlphaInfo) & 0x60) != 0)
      {
LABEL_10:
        v62 = 0;
        v12 = at_alpha_opaque;
        goto LABEL_13;
      }

LABEL_8:
      if (AlphaInfo)
      {
        _cg_jpeg_mem_term("writeOne", 179, "### alpha not handled: %X\n", AlphaInfo);
      }

      goto LABEL_10;
    }

    v12 = at_alpha_not_premultiplied;
    v62 = 1;
  }

LABEL_13:
  v13 = *(this + 11);
  v63 = v10;
  if (v13 == 68)
  {
    v61 = 4;
  }

  else
  {
    if (v13 == 136)
    {
      v61 = 8;
      v14 = at_block_format_astc_8x8_ldr;
      goto LABEL_19;
    }

    LogError("writeOne", 202, "blockSize: '%02X' not yet supported - falling back to '44'\n", v13);
    *(this + 44) = 0x400000044;
    v61 = 4;
    *(this + 13) = 4;
  }

  v14 = at_block_format_astc_4x4_ldr;
LABEL_19:
  SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(a2);
  Model = CGColorSpaceGetModel(SourceGeomColorSpace);
  Error = _cg_GifLastError(a2);
  v65 = Property;
  v67 = v8;
  if (Model == kCGColorSpaceModelRGB)
  {
    v20 = Error != 16;
    v21 = 10;
    if ((BitmapInfo & 0x100) == 0)
    {
      v21 = 7;
      v20 = 1;
    }

    v69 = v20;
    if (Error == 16)
    {
      v19 = v21;
    }

    else
    {
      v19 = at_texel_format_rgba8_unorm;
    }

    v18 = 1;
  }

  else
  {
    if (Model)
    {
      v19 = at_texel_format_invalid;
      v18 = 1;
    }

    else if (Error == 16)
    {
      v18 = 0;
      if (AlphaInfo)
      {
        v19 = at_texel_format_la16_unorm;
      }

      else
      {
        v19 = at_texel_format_l16_unorm;
      }
    }

    else
    {
      v18 = 0;
      if (AlphaInfo)
      {
        v19 = at_texel_format_la8_unorm;
      }

      else
      {
        v19 = at_texel_format_l8_unorm;
      }
    }

    v69 = 1;
  }

  v22 = IIOImageSource::count(a2);
  v23 = IIO_Reader::testHeaderSize(a2);
  if (*(this + 62) == 1)
  {
    if (v18)
    {
      if (IIO_CGColorSpaceNameMatchesName(SourceGeomColorSpace, *MEMORY[0x1E695F0B8]))
      {
        v24 = 3;
      }

      else if (IIO_CGColorSpaceNameMatchesName(SourceGeomColorSpace, *MEMORY[0x1E695F0A0]))
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
      v24 = 0;
    }

    v25 = 0;
    v26 = *(this + 11);
    if (v26 <= 135)
    {
      if (v26 <= 100)
      {
        switch(v26)
        {
          case 'D':
            v25 = 37808;
            break;
          case 'T':
            v25 = 37809;
            break;
          case 'U':
            v25 = 37810;
            break;
        }
      }

      else if (v26 > 132)
      {
        if (v26 == 133)
        {
          v25 = 37813;
        }

        else if (v26 == 134)
        {
          v25 = 37814;
        }
      }

      else if (v26 == 101)
      {
        v25 = 37811;
      }

      else if (v26 == 102)
      {
        v25 = 37812;
      }

      goto LABEL_76;
    }

    if (v26 <= 167)
    {
      if (v26 == 136)
      {
        v25 = 37815;
        goto LABEL_76;
      }

      if (v26 == 165)
      {
        v25 = 37816;
        goto LABEL_76;
      }

      if (v26 != 166)
      {
LABEL_76:
        KTXWritePlugin::writeKTXHeader(*(this + 2), v22, v23, 0, v24, AlphaInfo, 0, 1, 0, v25, *(this + 57), *(this + 63));
        goto LABEL_77;
      }
    }

    else
    {
      if (v26 > 201)
      {
        if (v26 == 202)
        {
          v25 = 37820;
        }

        else if (v26 == 204)
        {
          v25 = 37821;
        }

        goto LABEL_76;
      }

      if (v26 != 168)
      {
        if (v26 == 170)
        {
          v25 = 37818;
        }

        goto LABEL_76;
      }
    }

    v25 = 37817;
    goto LABEL_76;
  }

LABEL_77:
  v27 = at_encoder_create(v19, v12, v14, v12, 0);
  v85 = 0;
  if (*(this + 56) != 1 || ((v69 | *(this + 60)) & 1) != 0)
  {
    goto LABEL_79;
  }

  v47 = ((*(this + 10) / -0.0032) + 1.0) * 100.0;
  v83 = 0u;
  memset(v84, 0, sizeof(v84));
  v81 = 0u;
  v82 = 0u;
  imageSize = 0u;
  v80 = 0u;
  if (astcenc_config_init(3u, *(this + 12), *(this + 13), 1u, 0, &imageSize, v47))
  {
    LogError("writeOne", 323, "*** could not initialize astcenc codec\n");
    goto LABEL_121;
  }

  BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(a2);
  v53 = 8 * (v22 & 0x1FFFFFFF);
  if (BytesPerRow != v53)
  {
    ASTCTextureImp::setLock_dataSize(a2, v53);
  }

  if ((*(this + 61) & 1) == 0)
  {
    v54 = DWORD1(imageSize);
    DWORD1(imageSize) |= 8u;
    if (v62)
    {
      DWORD1(imageSize) = v54 | 0xC;
    }
  }

  if (astcenc_context_alloc(&imageSize, 1))
  {
    LogError("writeOne", 339, "*** could not allocate astcenc context\n");
LABEL_121:
    v43 = 0;
    v46 = 0;
    v45 = 0;
    if (v27)
    {
      goto LABEL_136;
    }

    goto LABEL_137;
  }

LABEL_79:
  if (!v27)
  {
    v45 = 0;
    v46 = 0;
    v43 = 0;
    goto LABEL_137;
  }

  is_compression_monolithic = at_encoder_is_compression_monolithic(v27, at_flags_default);
  v29 = IIOImagePixelDataProvider::getBytesPerRow(a2);
  v30 = v29;
  *&v81 = 0;
  imageSize = 0u;
  v80 = 0u;
  memset(&dest, 0, sizeof(dest));
  v75 = 0;
  v76 = 0;
  v31 = v23;
  p_imageSize = 0;
  if (v67 == v65)
  {
    v31 = v23;
    if (!is_compression_monolithic)
    {
      v31 = v23;
      if ((*(this + 60) & 1) == 0)
      {
        v32 = v63;
        do
        {
          v31 = v32;
          v33 = v32 * v22;
          v32 *= 2;
        }

        while ((v33 & 0xF) != 0);
      }
    }
  }

  v34 = v31 * v29;
  v70 = malloc_type_malloc(v31 * v29, 0x100004077774924uLL);
  *&imageSize = 0;
  *(&imageSize + 1) = __PAIR64__(v23, v22);
  LODWORD(v80) = 1;
  *(&v80 + 1) = v30;
  *&v81 = 0;
  v75 = __PAIR64__(v23, v22);
  v76 = 0x100000001;
  *&v86.x = __PAIR64__(v23, v22);
  v86.z = 1;
  block_counts = at_encoder_get_block_counts(v27, v86);
  v36 = v27;
  v37 = block_counts;
  v38 = HIDWORD(block_counts);
  v66 = v36;
  block_size = at_encoder_get_block_size(v36);
  v40 = v37 * block_size;
  v41 = v38 * v37 * block_size;
  dest.rowBytes = v40;
  dest.sliceBytes = v41;
  v42 = malloc_type_calloc(v41, 1uLL, 0x100004077774924uLL);
  v43 = v42;
  if (v41)
  {
    v44 = v42 == 0;
  }

  else
  {
    v44 = 1;
  }

  if (v44)
  {
    LogError("writeOne", 395, "*** could not allocate dest buffer [%d bytes]\n", v41);
    goto LABEL_91;
  }

  v68 = v42;
  dest.blocks = v42;
  v48 = 16;
  if (!*(this + 60))
  {
    v48 = 0;
  }

  if (*(this + 61))
  {
    v48 |= 0x40uLL;
  }

  v64 = v48;
  if (!v23)
  {
LABEL_109:
    v51 = *(this + 8);
    if (v51)
    {
      v45 = 4294967246;
      v43 = v68;
      v46 = v70;
      if ((*(*(v51 + 8) + 24))() == v41)
      {
        if ((*(*(*(this + 8) + 8) + 64))())
        {
          v45 = 4294967246;
        }

        else
        {
          v45 = 0;
        }
      }

      goto LABEL_135;
    }

    v43 = v68;
    if (*(this + 62) == 1)
    {
      v73 = 0;
      v74[0] = 0;
      v46 = v70;
      if (*(this + 57) == 1)
      {
        LZFSECompressedData = IIOWritePlugin::createLZFSECompressedData(this, v68, v41, v74, &v73);
        v56 = LZFSECompressedData;
        v57 = v73;
        if (v73 < 9 || *v74[0] == 846755426 && *&v74[0][v73 - 4] == 611874402)
        {
          if (LZFSECompressedData)
          {
            v45 = 0;
            goto LABEL_146;
          }
        }

        else
        {
          _cg_jpeg_mem_term("writeOne", 490, "    ERROR: bad LZFSE data (does not start/end with 'bvx2'/'bvx$')\n");
          if (v56)
          {
            v45 = 4294967246;
            v57 = v73;
LABEL_146:
            __ptr = v57 + 8;
            IIOImageWriteSession::putBytes(*(this + 2), &__ptr, 4uLL);
            if ((gIIODebugFlags & 0x30000) != 0)
            {
              ImageIOLog("    KTX with LZFSE compressed ASTC data\n");
              if ((gIIODebugFlags & 0x30000) != 0)
              {
                ImageIOLog("            compressedLZFSEData: %p\n", v74[0]);
                if ((gIIODebugFlags & 0x30000) != 0)
                {
                  ImageIOLog("            compressedLZFSESize: %d\n", v73);
                  if ((gIIODebugFlags & 0x30000) != 0)
                  {
                    ImageIOLog("                           type: 'LZFS'\n");
                  }
                }
              }
            }

            v71 = 1397119564;
            IIOImageWriteSession::putBytes(*(this + 2), &v71, 4uLL);
            IIOImageWriteSession::putBytes(*(this + 2), &v73, 4uLL);
            IIOImageWriteSession::putBytes(*(this + 2), v74[0], v73);
            v43 = v68;
LABEL_157:
            if (v74[0])
            {
              free(v74[0]);
            }

            goto LABEL_135;
          }
        }
      }

      __ptr = v41;
      v60 = IIOImageWriteSession::putBytes(*(this + 2), &__ptr, 4uLL);
      if (v60 == 4)
      {
        v45 = 0;
      }

      else
      {
        v45 = 4294967246;
      }

      if (v60 == 4)
      {
        IIOImageWriteSession::putBytes(*(this + 2), v68, v41);
      }

      goto LABEL_157;
    }

    *(this + 57) = 0;
    ASTCWritePlugin::writeASTCHeader(this, v22, v23, 1, v61, v61);
    IIOImageWriteSession::putBytes(*(this + 2), v68, v41);
LABEL_91:
    v45 = 0;
    v46 = v70;
    goto LABEL_135;
  }

  v49 = 0;
  while (1)
  {
    if (v31 + v49 > v23)
    {
      v31 = v23 - v49;
      v34 = v30 * v31;
    }

    HIDWORD(imageSize) = v31;
    *&imageSize = v70;
    if (IIOImagePixelDataProvider::getBytes(a2, v70) != v34)
    {
      LogError("writeOne", 425, "failed to read %ld bytes\n");
      goto LABEL_133;
    }

    dest.blocks = &v68[dest.rowBytes * (v49 / *(this + 13))];
    if (!v85)
    {
      break;
    }

    HIDWORD(v75) = v31;
    p_imageSize = &imageSize;
    *v74 = xmmword_186205980;
    v50 = astcenc_compress_image(v85, &v75);
    if (v50)
    {
      error_string = astcenc_get_error_string(v50);
      LogError("writeOne", 441, "*** ERROR: astcenc codec compress failed: %s\n", error_string);
      v45 = 0;
      goto LABEL_134;
    }

LABEL_108:
    v49 += v31;
    if (v49 >= v23)
    {
      goto LABEL_109;
    }
  }

  if (at_encoder_compress_texels(v66, &imageSize, &dest, *(this + 10), v64) >= 0.0)
  {
    goto LABEL_108;
  }

  LogError("writeOne", 448, "*** ERROR: at_encoder_compress_texels: %g (%ld)\n");
LABEL_133:
  v45 = 4294967246;
LABEL_134:
  v43 = v68;
  v46 = v70;
LABEL_135:
  v27 = v66;
LABEL_136:
  CFRelease(v27);
LABEL_137:
  if (v85)
  {
    astcenc_context_free(v85);
  }

  if (v43)
  {
    free(v43);
  }

  if (v46)
  {
    free(v46);
  }

  return v45;
}

uint64_t ASTCWritePlugin::GetVkFormat(ASTCWritePlugin *this, IIODictionary *a2)
{
  ASTCBlockSize = GetASTCBlockSize(this);
  BoolForKey = IIODictionary::getBoolForKey(this, @"kCGImagePropertyASTCUseHDR");
  if (BoolForKey)
  {
    v5 = 1000066007;
  }

  else
  {
    v5 = 172;
  }

  if (BoolForKey)
  {
    v6 = 1000066000;
  }

  else
  {
    v6 = 158;
  }

  if (ASTCBlockSize == 136)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

void IIO_Writer_ASTC::~IIO_Writer_ASTC(IIO_Writer_ASTC *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Writer_ASTC::write(IIO_Writer_ASTC *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIO_Writer_ASTC::write", 0, 0, -1, 0);
  }

  v11 = 0;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  CommonASTCWritePlugin::CommonASTCWritePlugin(v9, a2, a3, 67);
  *&v9[0] = &unk_1EF4D4FE8;
  HIWORD(v10) = 256;
  BYTE12(v10) = 1;
  v11 = 0;
  v5 = IIOWritePlugin::writeAll(v9);
  *&v9[0] = &unk_1EF4D4FE8;
  CommonASTCWritePlugin::~CommonASTCWritePlugin(v9, v6, v7);
  return v5;
}

void sub_185FE4AD4(void *a1, uint64_t a2, const char *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CommonASTCWritePlugin::~CommonASTCWritePlugin(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185FE4ABCLL);
}

uint64_t IIOFrameBufferQueue::IIOFrameBufferQueue(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4)
{
  *a1 = &unk_1EF4D50C0;
  *(a1 + 8) = 0;
  v7 = (a1 + 8);
  *(a1 + 16) = 0;
  v8 = a1 + 16;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 224) = 0;
  *(a1 + 344) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  IIO_LoadCoreMediaSymbols();
  if (a4)
  {
    *v7 = _Block_copy(a4);
  }

  *(a1 + 24) = 0;
  pthread_mutex_init((a1 + 48), 0);
  pthread_cond_init((a1 + 112), 0);
  pthread_mutex_init((a1 + 160), 0);
  pthread_cond_init((a1 + 232), 0);
  pthread_mutex_init((a1 + 280), 0);
  pthread_cond_init((a1 + 352), 0);
  v12 = 1;
  v13 = a1;
  v14 = 0;
  v15 = 0;
  v16 = getBufferDurationCallback;
  v17 = 0;
  v18 = compareBuffersCallback;
  v19 = 0;
  v20 = getBufferSizeCallback;
  v9 = gFunc_CMBufferQueueCreate(*MEMORY[0x1E695E480], 0, &v12, v8);
  if (v9)
  {
    if ((gIIODebugFlags & 0x1000000000000) != 0)
    {
      ImageIOLog("*** CMBufferQueueCreate failed (status = %d)\n", v9);
    }
  }

  else
  {
    if (a3 <= 1)
    {
      a3 = 1;
    }

    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    *(a1 + 400) = dispatch_queue_create("IIOFrameBufferQueue::producerQueue", v10);
    gFunc_CMBufferQueueInstallTriggerWithIntegerThreshold(*(a1 + 16), triggerFiredCallback, a1, 10, a3, a1 + 408);
    gFunc_CMBufferQueueInstallTriggerWithIntegerThreshold(*(a1 + 16), triggerFiredCallback, a1, 11, a3 - 1, a1 + 416);
  }

  return a1;
}

uint64_t compareBuffersCallback(uint64_t a1, uint64_t a2)
{
  FrameIndex = IIOFrameBufferGetFrameIndex(a1);
  v4 = IIOFrameBufferGetFrameIndex(a2);
  if (FrameIndex < v4)
  {
    return -1;
  }

  else
  {
    return FrameIndex > v4;
  }
}

void IIOFrameBufferQueue::~IIOFrameBufferQueue(NSObject **this)
{
  *this = &unk_1EF4D50C0;
  IIOFrameBufferQueue::stop(this);
  v2 = this[50];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = this[2];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = this[1];
  if (v4)
  {
    _Block_release(v4);
  }
}

{
  IIOFrameBufferQueue::~IIOFrameBufferQueue(this);

  JUMPOUT(0x186602850);
}

uint64_t IIOFrameBufferQueue::stop(IIOFrameBufferQueue *this)
{
  if ((gIIODebugFlags & 0x1000000000000) != 0)
  {
    ImageIOLog("    IIOFrameBufferQueue::stop()\n");
  }

  atomic_store(1u, this + 40);
  gFunc_CMBufferQueueReset(*(this + 2));
  pthread_mutex_lock((this + 160));
  pthread_mutex_lock((this + 48));
  *(this + 224) = 1;
  pthread_cond_broadcast((this + 232));
  pthread_cond_broadcast((this + 112));
  pthread_mutex_unlock((this + 160));
  pthread_mutex_unlock((this + 48));
  pthread_mutex_lock((this + 280));
  if (*(this + 344) == 1)
  {
    do
    {
      pthread_cond_wait((this + 352), (this + 280));
    }

    while ((*(this + 344) & 1) != 0);
  }

  return pthread_mutex_unlock((this + 280));
}

void IIOFrameBufferQueue::startEnqueueingBuffers(IIOFrameBufferQueue *this, uint64_t a2)
{
  if (*(this + 1))
  {
    if (*(this + 344) != 1)
    {
      v6 = *(this + 4);
      if (v6 <= a2)
      {
        LogError("startEnqueueingBuffers", 93, "Starting index: (%ld) out of range: (%d, %ld)\n", a2, 0, v6);
      }

      else
      {
        v7 = dispatch_group_create();
        v8 = *(this + 50);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___ZN19IIOFrameBufferQueue22startEnqueueingBuffersEl_block_invoke;
        block[3] = &__block_descriptor_tmp_5;
        block[4] = this;
        block[5] = a2;
        dispatch_group_async(v7, v8, block);
        v9 = *(this + 50);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 0x40000000;
        v10[2] = ___ZN19IIOFrameBufferQueue22startEnqueueingBuffersEl_block_invoke_2;
        v10[3] = &__block_descriptor_tmp_6;
        v10[4] = this;
        v10[5] = v7;
        dispatch_group_notify(v7, v9, v10);
      }

      return;
    }

    v3 = "Error: startEnqueueingBuffers called on already running queue\n";
    v4 = 89;
  }

  else
  {
    v3 = "CreateBuffers block is NULL\n";
    v4 = 85;
  }

  LogError("startEnqueueingBuffers", v4, v3);
}

void ___ZN19IIOFrameBufferQueue22startEnqueueingBuffersEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  atomic_store(0, (v1 + 40));
  *(v1 + 344) = 1;
  v3 = atomic_load((v1 + 40));
  if ((v3 & 1) == 0)
  {
    while (1)
    {
      pthread_mutex_lock((v1 + 160));
      if ((*(v1 + 224) & 1) == 0)
      {
        do
        {
          pthread_cond_wait((v1 + 232), (v1 + 160));
        }

        while (*(v1 + 224) != 1);
      }

      pthread_mutex_unlock((v1 + 160));
      v4 = atomic_load((v1 + 40));
      if ((v4 & 1) == 0)
      {
        v5 = (*(*(v1 + 8) + 16))();
        Count = CFArrayGetCount(v5);
        IIOFrameBufferQueue::_enqueueBuffers(v1, v5);
        CFRelease(v5);
        v2 += Count;
        if (v2 >= *(v1 + 32))
        {
          break;
        }
      }

      v7 = atomic_load((v1 + 40));
      if (v7)
      {
        return;
      }
    }

    v8 = gFunc_CMBufferQueueMarkEndOfData;
    v9 = *(v1 + 16);

    v8(v9);
  }
}

uint64_t IIOFrameBufferQueue::_enqueueBuffers(IIOFrameBufferQueue *this, const __CFArray *a2)
{
  pthread_mutex_lock((this + 48));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN19IIOFrameBufferQueue15_enqueueBuffersEPK9__CFArray_block_invoke;
  v5[3] = &__block_descriptor_tmp_12_0;
  v5[4] = this;
  IIOArrayEnumerateUsingBlock(a2, v5);
  pthread_cond_broadcast((this + 112));
  return pthread_mutex_unlock((this + 48));
}

void ___ZN19IIOFrameBufferQueue22startEnqueueingBuffersEl_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  pthread_mutex_lock((v2 + 280));
  *(v2 + 344) = 0;
  pthread_cond_broadcast((v2 + 352));
  pthread_mutex_unlock((v2 + 280));
  v3 = *(a1 + 40);

  dispatch_release(v3);
}

const void *IIOFrameBufferQueue::getAndRetainBufferAtIndex(os_unfair_lock_s *this, uint64_t a2)
{
  if (*&this[8]._os_unfair_lock_opaque > a2)
  {
    os_unfair_lock_lock(this + 6);
    HeadBuffer = IIOFrameBufferQueue::_getHeadBuffer(this);
    FrameIndex = IIOFrameBufferGetFrameIndex(HeadBuffer);
    if (FrameIndex <= a2)
    {
      if (FrameIndex != -1 && FrameIndex >= a2)
      {
LABEL_12:
        IIOFrameBufferRetain(HeadBuffer);
        os_unfair_lock_unlock(this + 6);
        return HeadBuffer;
      }
    }

    else
    {
      if (a2)
      {
        LogWarning("getAndRetainBufferAtIndex", 155, "ImageIO IIOFrameBufferQueue: requesting an out-of-sequence frame\n");
      }

      IIOFrameBufferQueue::stop(this);
      IIOFrameBufferQueue::startEnqueueingBuffers(this, a2);
    }

    do
    {
      do
      {
        v6 = gFunc_CMBufferQueueDequeueAndRetain(*&this[4]._os_unfair_lock_opaque);
        IIOFrameBufferRelease(v6);
        HeadBuffer = IIOFrameBufferQueue::_getHeadBuffer(this);
        v7 = IIOFrameBufferGetFrameIndex(HeadBuffer);
      }

      while (v7 == -1);
    }

    while (v7 < a2);
    goto LABEL_12;
  }

  return 0;
}

uint64_t IIOFrameBufferQueue::_getHeadBuffer(IIOFrameBufferQueue *this)
{
  pthread_mutex_lock((this + 48));
  while (gFunc_CMBufferQueueIsEmpty(*(this + 2)))
  {
    if (gFunc_CMBufferQueueIsAtEndOfData(*(this + 2)))
    {
      break;
    }

    if ((gIIODebugFlags & 0x1000000000000) != 0)
    {
      ImageIOLog("    Starting to wait on _isEmptyCond\n");
    }

    pthread_cond_wait((this + 112), (this + 48));
  }

  pthread_mutex_unlock((this + 48));
  v2 = gFunc_CMBufferQueueGetHead;
  v3 = *(this + 2);

  return v2(v3);
}

const char *___ZN19IIOFrameBufferQueue15_enqueueBuffersEPK9__CFArray_block_invoke(const char *result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(result + 4);
  v5 = atomic_load((v4 + 40));
  if ((v5 & 1) == 0)
  {
    result = gFunc_CMBufferQueueEnqueue(*(v4 + 16));
    if (result)
    {
      if ((gIIODebugFlags & 0x1000000000000) != 0)
      {
        result = ImageIOLog("*** CMBufferQueueEnqueue() failed (status == %d)\n", result);
      }

      *a4 = 1;
    }
  }

  return result;
}

const char *IIOFrameBufferQueue::_getBufferDuration@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  IIOFrameBufferGetDelayTime(a1);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  result = gFunc_CMTimeMakeWithSeconds(1000);
  if ((gIIODebugFlags & 0x1000000000000) != 0)
  {
    if (*(a2 + 12))
    {
      return ImageIOLog("    DelayTime: %g\n");
    }

    else
    {
      return ImageIOLog("*** Failed to create CMTime (%g) for buffer\n");
    }
  }

  return result;
}

uint64_t IIOFrameBufferQueue::_triggerFired(uint64_t this, opaqueCMBufferQueueTriggerToken *a2)
{
  v2 = this;
  if (*(this + 408) == a2)
  {
    v3 = 1;
    if ((gIIODebugFlags & 0x1000000000000) != 0)
    {
      v4 = "    Trigger fired: _bufferQueueHitLowWaterMarkToken. Count = %ld\n";
LABEL_8:
      BufferCount = gFunc_CMBufferQueueGetBufferCount(*(this + 16));
      ImageIOLog(v4, BufferCount);
    }
  }

  else
  {
    if (*(this + 416) != a2)
    {
      return this;
    }

    v3 = 0;
    if ((gIIODebugFlags & 0x1000000000000) != 0)
    {
      v4 = "    Trigger fired: _bufferQueueClearedLowWaterMarkToken. Count = %ld\n";
      goto LABEL_8;
    }
  }

  pthread_mutex_lock((v2 + 160));
  *(v2 + 224) = v3;
  pthread_cond_broadcast((v2 + 232));

  return pthread_mutex_unlock((v2 + 160));
}

uint64_t PNGReadPlugin::loadDataFromXPCObject(PNGReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {

    return PNGReadPlugin::LoadDataFromXPCObject(a2, this + 29);
  }

  return result;
}

uint64_t PNGReadPlugin::LoadDataFromXPCObject(void *a1, _OWORD *a2)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, "iio_xpc_plugin_data_png", &length);
  if (length != 80)
  {
    return 4294967246;
  }

  v5 = data[1];
  v6 = data[2];
  v7 = data[4];
  a2[3] = data[3];
  a2[4] = v7;
  v8 = *data;
  a2[1] = v5;
  a2[2] = v6;
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  size = 0;
  v9 = xpc_dictionary_get_data(a1, "iio_xpc_plugin_data_png_idot", &size);
  if (v9)
  {
    v10 = v9;
    if (size >= 4 && size == 12 * *v9 + 4)
    {
      v11 = malloc_type_malloc(size, 0x100004052888210uLL);
      *(a2 + 6) = v11;
      memcpy(v11, v10, size);
    }
  }

  return 0;
}

uint64_t PNGReadPlugin::saveDataToXPCObject(PNGReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    PNGReadPlugin::SaveDataToXPCObject(a2, this + 464);
  }

  return v4;
}

uint64_t PNGReadPlugin::SaveDataToXPCObject(void *a1, void *buffer)
{
  iio_xpc_dictionary_add_databuffer(a1, "iio_xpc_plugin_data_png", buffer, 0x50uLL);
  v4 = *(buffer + 6);
  if (v4)
  {
    iio_xpc_dictionary_add_databuffer(a1, "iio_xpc_plugin_data_png_idot", v4, (12 * *v4 + 4));
  }

  return 0;
}

uint64_t PNGReadPlugin::Read_user_chunkapPD(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 >= 0xD)
  {
    v4 = *(a3 + 8);
    if (*(v4 + 4) == 1953057648)
    {
      v5 = bswap32(*(v4 + 8));
      if (v5 + 12 <= v3)
      {
        *(a1 + 64) = CFDataCreate(*MEMORY[0x1E695E480], (v4 + 12), v5);
      }

      else
      {
        _cg_jpeg_mem_term("Read_user_chunkapPD", 770, "bad chunk-size in pKit data\n");
      }
    }
  }

  return 1;
}

void *PNGReadPlugin::HexString2bin(PNGReadPlugin *this, size_t size)
{
  v4 = malloc_type_malloc(size, 0x100004077774924uLL);
  v5 = v4;
  if (v4)
  {
    v6 = 0;
    if (size)
    {
      v7 = v4;
      do
      {
        if (!*this)
        {
          break;
        }

        __endptr = 0;
        v12 = 0;
        *__str = 0;
        v8 = *this;
        if (v8 != 10)
        {
          v9 = *(this + 1);
          this = (this + 1);
          __str[0] = v8;
          __str[1] = v9;
          v12 = 0;
          *v7++ = strtol(__str, &__endptr, 16);
          if (__endptr != &v12)
          {
            break;
          }

          ++v6;
        }

        this = (this + 1);
      }

      while (v6 < size);
    }

    if (v6 != size)
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

uint64_t ___ZN13PNGReadPlugin24AddOrientationToMetadataEP13IIODictionaryS1_P15CGImageMetadataP14png_struct_defP12png_info_def_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(a2 + 8) == 274)
  {
    v4 = *(*(result + 32) + 8);
    if (!*(v4 + 24))
    {
      *(v4 + 24) = *(a2 + 16);
      *a4 = 1;
    }
  }

  return result;
}

void handle_error(uint64_t a1, const char *a2)
{
  if (a2)
  {
    if (*a2)
    {
      LogError("handle_error", 268, "%s\n", a2);
    }
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = -1;
  __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
}

uint64_t imagePNG_error_break(uint64_t a1)
{
  LogError("imagePNG_error_break", 384, "*** ERROR: imagePNG_error_break\n");
  *gCrashMessage = 0;
  if (a1)
  {
    result = snprintf(gCrashMessage, 0x200uLL, "*** ERROR: PNG decode  %dx%d  bpc: %d  cs: %d\n", *(a1 + 280), *(a1 + 284), *(a1 + 392), *(a1 + 391));
  }

  else
  {
    result = snprintf(gCrashMessage, 0x200uLL, "*** ERROR: PNG decode failed ('png' is NULL)\n");
  }

  qword_1ED5688A0 = gCrashMessage;
  return result;
}

unsigned __int8 *PNGReadPlugin::Compose(unsigned __int8 *__src, char *__dst, unsigned int a3, uint64_t a4, int a5)
{
  v6 = __src;
  if (*(a4 + 126))
  {
    v7 = *(a4 + 238);
    if (a5)
    {
      if (a3)
      {
        v8 = __dst + 1;
        do
        {
          v9 = v6[1];
          if (v6[1])
          {
            if (v9 == 255)
            {
              *(v8 - 1) = *v6;
            }

            else if (v7 == 1)
            {
              *v8 = v9 + ((v9 ^ 0xFF) * *v8 + 127) / 0xFFu;
              *(v8 - 1) = *v6 + ((v9 ^ 0xFF) * *(v8 - 1) + 127) / 0xFFu;
            }

            else
            {
              v10 = 255 * v9;
              v11 = (v9 ^ 0xFF) * *v8;
              *(v8 - 1) = (v10 * *v6 + v11 * *(v8 - 1)) / (v11 + v10);
              *v8 = (16843010 * (v11 + v10)) >> 32;
            }
          }

          v6 += 2;
          v8 += 2;
          --a3;
        }

        while (a3);
      }
    }

    else if (v7 == 1)
    {
      dest.data = __src;
      dest.height = 1;
      dest.width = a3;
      dest.rowBytes = 4 * a3;
      v20.data = __dst;
      v20.height = 1;
      v20.width = a3;
      v20.rowBytes = dest.rowBytes;
      vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
      return vImagePremultipliedAlphaBlend_BGRA8888(&dest, &v20, &v20, 0x10u);
    }

    else if (a3)
    {
      v15 = __src + 1;
      v16 = __dst + 1;
      do
      {
        v17 = v15[2];
        if (v15[2])
        {
          if (v17 == 255)
          {
            *(v16 - 1) = *(v15 - 1);
          }

          else
          {
            v18 = 255 * v17;
            v19 = (v17 ^ 0xFF) * v16[2];
            *(v16 - 1) = (v18 * *(v15 - 1) + v19 * *(v16 - 1)) / (v19 + v18);
            *v16 = (v18 * *v15 + v19 * *v16) / (v19 + v18);
            v16[1] = (v18 * v15[1] + v19 * v16[1]) / (v19 + v18);
            v16[2] = (16843010 * (v19 + v18)) >> 32;
          }
        }

        v15 += 4;
        v16 += 4;
        --a3;
      }

      while (a3);
    }
  }

  else
  {
    v12 = 3 * a3;
    if (a5)
    {
      v12 = a3;
    }

    v13 = (*(a4 + 122) >> 3) * a3;
    if (v12 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    return memcpy(__dst, __src, v14);
  }

  return __src;
}

const void *PNGReadPlugin::copyImageBlockSetAPNG(uint64_t a1, const void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v76[0] = 0;
  memset(__n, 0, sizeof(__n));
  CGImageProviderSetProperty();
  IIOReadPlugin::debugCopyBlockSet(a1, a3, a4, a5, a6, a7, a8, a9);
  if (*(a1 + 104) != 1)
  {
    goto LABEL_81;
  }

  v18 = *(a1 + 112);
  IIOReadPlugin::allocateBlockArray(a1, 1uLL);
  *(a1 + 112) = 0x100000000;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("     numberOfBlocksLeftToDecode: %d\n", 1);
  }

  v19 = IIOImageSource::count(a1);
  v20 = IIOImageReadSession::globalInfoForType(v19, 1095781959);
  if (!v20)
  {
LABEL_81:
    v23 = 0;
    goto LABEL_82;
  }

  v21 = v20;
  v22 = *(a1 + 24);
  if (v22)
  {
    v23 = IIOImageReadSession::mapData(v22);
  }

  else
  {
    v23 = 0;
  }

  if (*(a1 + 490) == 1)
  {
    v24 = *(a1 + 308);
    if (*(a1 + 316) < (4 * v24))
    {
      *(a1 + 316) = ImageIOAlignRowBytes((4 * v24), *(a1 + 424));
    }
  }

  if (!GlobalPNGInfo::currentBuffer(v21, 0))
  {
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("                  currentBuffer: creating new %d x %d [%d]\n", *(a1 + 312), *(a1 + 308), *(a1 + 316));
    }

    v26 = *(a1 + 312);
    v27 = *(a1 + 316);
    v28 = v26 * v27;
    __n[0] = v26 * v27;
    if ((v28 & 0xFFFFFFFF00000000) == 0)
    {
      v29 = malloc_type_calloc(v26, v27, 0x100004077774924uLL);
      if (v29)
      {
        GlobalPNGInfo::setCurrentBuffer(v21, v29, v28, 1);
        GlobalPNGInfo::setCurrentBufferRowBytes(v21, *(a1 + 316));
        GlobalPNGInfo::setCurrentBufferIndex(v21, -1);
        goto LABEL_17;
      }
    }

LABEL_82:
    v66 = 0;
    if (!a3)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_17:
  v69 = a2;
  v70 = v23;
  v71 = a3;
  a3 = *(a1 + 112);
  if (a3 < *(a1 + 116))
  {
    v72 = v18;
    while (1)
    {
      v30 = (a3 - v18);
      if (*(*(a1 + 96) + 8 * (a3 - v18)))
      {
        _cg_jpeg_mem_term("copyImageBlockSetAPNG", 2682, "*** _blockArray[%d] was cached - and already allocated\n", a3 - v18);
      }

      v31 = *(a1 + 312);
      v32 = (a3 * v31);
      *&__n[1] = 0;
      LODWORD(v25) = *(a1 + 308);
      v33 = v25;
      *&__n[3] = v32;
      *&__n[5] = v33;
      *&__n[7] = v31;
      LODWORD(v33) = *(a1 + 248);
      v34 = *&v33;
      if (v31 + v32 > v34)
      {
        *&__n[7] = v34 - v32;
      }

      v35 = *(a1 + 316) * v31;
      v36 = _ImageIO_Malloc(v35, *(a1 + 416), v76, kImageMalloc_PNG_Data[0], 0, 0);
      if (!v36)
      {
        v66 = 0;
        v65 = v71;
        goto LABEL_71;
      }

      v37 = v36;
      v38 = *(a1 + 416);
      if (v38 && v36 % v38)
      {
        goto LABEL_68;
      }

      bzero(v36, v35);
      v39 = PNGReadPlugin::DecodeComposedImage(*(a1 + 24), v21, a1 + 200, (a1 + 464), &__n[1], v37, *(a1 + 316));
      v40 = *&__n[7];
      if (v39)
      {
        v41 = v39;
        if (*&__n[7] == v39)
        {
          if (*(a1 + 224) >= *(v21 + 10))
          {
            goto LABEL_68;
          }

          __dst = GlobalPNGInfo::currentBuffer(v21, __n);
          GlobalPNGInfo::setCurrentBufferIndex(v21, *(a1 + 224));
          if ((gIIODebugFlags & 0x30000) != 0)
          {
            ImageIOLog("                  currentBuffer: setting index to %d\n", *(a1 + 224));
          }

          v42 = *(a1 + 224);
          v43 = *(v21 + 1);
          if (0xF0F0F0F0F0F0F0F1 * ((*(v21 + 2) - v43) >> 1) <= v42)
          {
            __break(1u);
            goto LABEL_81;
          }

          v44 = v43 + 34 * v42;
          v45 = *(v44 + 12);
          if (v45 < 0 || (v46 = *(v44 + 16), v46 < 0) || (v74 = (a3 - v18), v47 = *(v44 + 4), v48 = *(v44 + 8), v49 = *(v44 + 24), v47 < 0) && v48 < 0 || v45 + v47 > *(a1 + 308) || v46 + v48 > *(a1 + 312) || (v50 = __n[0], v35 > __n[0]))
          {
LABEL_68:
            v66 = 0;
            v65 = v71;
            goto LABEL_70;
          }

          v51 = gIIODebugFlags & 0x30000;
          if (v49 == 2)
          {
            if (v51)
            {
              ImageIOLog("                  currentBuffer: *** currentBuffer not changed [PNG_DISPOSE_OP_PREVIOUS]\n");
            }
          }

          else
          {
            if (v51)
            {
              ImageIOLog("                  currentBuffer: *** imageData to currentBuffer -> memcpy\n");
              v50 = __n[0];
            }

            memcpy(__dst, v37, v50);
            if (v49 == 1)
            {
              if ((gIIODebugFlags & 0x30000) != 0)
              {
                ImageIOLog("                  currentBuffer: dispose background - clearing rect\n");
              }

              if (v48)
              {
                v52 = *(a1 + 322) >> 3;
                v53 = (v47 * v52);
                v54 = &__dst[*(a1 + 316) * v46 + v45 * v52];
                do
                {
                  bzero(v54, v53);
                  v54 += *(a1 + 316);
                  --v48;
                }

                while (v48);
              }
            }
          }

          v18 = v72;
          v30 = v74;
        }

        else if (*&__n[7] > v39)
        {
          *&__n[7] = v39;
          if ((gIIODebugFlags & 0x30000) != 0)
          {
            ImageIOLog(": error while decoding PNG image rect: (%5g, %5g, %5g, %5g)\n", *&__n[1], *&__n[3], *&__n[5], v39);
            ImageIOLog("          blockLoop = %ld\n", a3);
            ImageIOLog("        _blockEnd-1 = %ld\n", *(a1 + 116) - 1);
          }

          v40 = v41;
        }
      }

      if (v40 != 0.0)
      {
        *(a1 + 371) = 0;
        PNGReadPlugin::postProcess(a1, v37);
        *(*(a1 + 96) + 8 * v30) = IIOReadPlugin::createImageBlock(a1, v37, v76[0], *&__n[1], *(a1 + 316), *(a1 + 371));
        v56 = *&__n[3];
        v55 = *&__n[1];
        v58 = *&__n[7];
        v57 = *&__n[5];
        if (!CGRectEqualToRect(*(a1 + 120), *MEMORY[0x1E695F050]))
        {
          v77.origin.x = v55;
          v77.origin.y = v56;
          v77.size.width = v57;
          v77.size.height = v58;
          *(&v25 - 1) = CGRectUnion(*(a1 + 120), v77);
          v55 = v59;
          v56 = *&v25;
          v57 = v60;
          v58 = v61;
        }

        v37 = 0;
        *(a1 + 120) = v55;
        *(a1 + 128) = v56;
        *(a1 + 136) = v57;
        *(a1 + 144) = v58;
      }

      if (++a3 >= *(a1 + 116))
      {
        goto LABEL_62;
      }
    }
  }

  v37 = 0;
LABEL_62:
  v62 = *(a1 + 120);
  v63 = *(a1 + 128);
  v64 = *(a1 + 144);
  if (v64 != 0.0)
  {
    v65 = v71;
    if (v71)
    {
      v66 = IIOReadPlugin::imageBlockSetCreate(a1, v71, *(a1 + 104), *(a1 + 136), v64, v62, v63, *(a1 + 136), *(a1 + 144), *(a1 + 96), v69);
      if (!v37)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v66 = 0;
      if (!v37)
      {
        goto LABEL_71;
      }
    }

LABEL_70:
    _ImageIO_Free(v37, v76[0]);
    goto LABEL_71;
  }

  _cg_jpeg_mem_term("copyImageBlockSetAPNG", 2800, ": pngCreateBlockSet - error while decoding PNG image rect: (%5g, %5g, %5g, %5g)\n", v62, v63, *(a1 + 136), v64);
  v66 = 0;
  v65 = v71;
  if (v37)
  {
    goto LABEL_70;
  }

LABEL_71:
  v23 = v70;
  if (v65)
  {
LABEL_72:
    IIOReadPlugin::freeBlockArray(a1);
  }

LABEL_73:
  if (v23)
  {
    v67 = *(a1 + 24);
    if (v67)
    {
      IIOImageReadSession::unmapData(v67);
    }
  }

  if (*(a1 + 194) == 1)
  {
    ImageIOLog("<<< copyImageBlockSetAPNG - PNG  [%p]\n", v66);
    ImageIOLog("===================================================================================================\n");
  }

  return v66;
}

void *PNGReadPlugin::DecodeComposedImage(IIO_Reader *a1, GlobalPNGInfo *this, uint64_t a3, _BYTE *a4, uint64_t a5, char *a6, unint64_t a7)
{
  v7 = 0;
  v120 = 0;
  if (!a1)
  {
    return v7;
  }

  v8 = this;
  if (!this || !a6)
  {
    return v7;
  }

  v12 = *(a5 + 24);
  v105 = *(a3 + 140);
  v13 = *(a3 + 62);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("                   reading rows: %d ... %d\n", *(a5 + 8), (v12 + *(a5 + 8)));
  }

  v93 = v13 - 5;
  v98 = v8;
  v99 = (*(a3 + 122) + 7) >> 3;
  v97 = a5;
  if (a4[20] == 7)
  {
    if (a4[37] == 1)
    {
      v14 = PNGReadPlugin::EnsureFrameBufferQueueExists(a1, v8, a3);
    }

    else
    {
      v14 = 0;
    }

    v7 = 0;
    v18 = 0;
    v95 = v14;
    while (1)
    {
      v19 = *(v8 + 1) + 34 * v18;
      v20 = *(v19 + 4);
      v21 = *(v19 + 8);
      v23 = *(v19 + 12);
      v22 = *(v19 + 16);
      v24 = *(v19 + 24);
      v25 = *(v19 + 25);
      v106 = v20;
      v26 = v99 * v20;
      if (v26 >= *(a3 + 116))
      {
        v27 = *(a3 + 116);
      }

      else
      {
        v27 = v99 * v20;
      }

      if (v14)
      {
        v28 = IIOFrameBufferQueue::getAndRetainBufferAtIndex(v14, v18);
        if (!v28)
        {
          _cg_jpeg_mem_term("DecodeComposedImage", 3784, "*** IIOFrameBufferQueue returned NULL for buffer at index: %ld\n");
          return v7;
        }

        cf = v28;
        Buffer = IIOFrameBufferGetBuffer(v28);
        __n = 0;
        if (v21)
        {
          break;
        }

        goto LABEL_50;
      }

      if (!is_mul_ok(v21, v26))
      {
        return v7;
      }

      v91 = *(v19 + 25);
      v30 = _ImageIO_Malloc(v21 * v26, *(a3 + 216), &v120, kImageMalloc_PNG_Data[0], 0, 0);
      if (!v30)
      {
        _cg_jpeg_mem_term("DecodeComposedImage", 3796, "*** ImageIO_Malloc failed to alloc %ld bytes\n");
        return v7;
      }

      v31 = v30;
      bzero(v30, v21 * v26);
      v109 = 0;
      *v110 = v18;
      v111 = v23;
      v112 = v22;
      v113 = v106;
      v114 = v21;
      __n = v31;
      v115 = v31;
      v116 = v26;
      v117 = v26 * v21;
      v118 = 0u;
      v119 = 0;
      v108 = 0u;
      std::vector<IIODecodeFrameParams>::vector[abi:fe200100](&v108, 1uLL);
      v32 = IIO_Reader::testHeaderSize(a1);
      v25 = v91;
      PNGReadPlugin::DecodeUncomposedFrames(v32, v98, a3, a4, &v108);
      Buffer = v115;
      v121[0] = &v108;
      std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](v121);
      IIODecodeFrameParams::~IIODecodeFrameParams(v110);
      cf = 0;
      if (v21)
      {
        break;
      }

LABEL_50:
      if (cf)
      {
        CFRelease(cf);
      }

      v8 = v98;
      if (__n)
      {
        _ImageIO_Free(__n, v120);
      }

      v7 = *(v97 + 24);
      v35 = v18++ >= *(a3 + 24);
      v14 = v95;
      if (v35)
      {
        return v7;
      }
    }

    v33 = &a6[v99 * v23];
    if (v25)
    {
      v34 = v18 == 0;
    }

    else
    {
      v34 = 1;
    }

    v35 = !v34 && v93 >= 0xFFFFFFFC;
    v36 = !v35;
    while (v18 != *(a3 + 24))
    {
      if (v24 == 1)
      {
        bzero(&v33[v22 * *(a3 + 116)], v27);
        goto LABEL_49;
      }

      if (!v24)
      {
        if (!v36)
        {
LABEL_47:
          PNGReadPlugin::Compose(Buffer, &v33[v22 * *(a3 + 116)], v106, a3, v105 == 1196573017);
          goto LABEL_49;
        }

        goto LABEL_43;
      }

LABEL_49:
      ++v22;
      Buffer += v26;
      if (!--v21)
      {
        goto LABEL_50;
      }
    }

    if (!v36)
    {
      goto LABEL_47;
    }

LABEL_43:
    memcpy(&v33[v22 * *(a3 + 116)], Buffer, v27);
    goto LABEL_49;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    === decoding frame %d ===\n", *(a3 + 24));
  }

  v15 = *(a3 + 24);
  if (!v15 && a4[31] == 1 && 0xF0F0F0F0F0F0F0F1 * ((*(v8 + 2) - *(v8 + 1)) >> 1) > 1)
  {
    v16 = a4 + 59;
    v15 = 1;
    if ((a4[59] & 1) == 0)
    {
LABEL_58:
      v17 = v15;
      v37 = *(v8 + 1) + 34 * v15;
      do
      {
        if (*(v37 + 4) == *(v8 + 8))
        {
          v38 = *(v37 + 8) == *(v8 + 9) && *(v37 + 25) == 0;
          if (v38 && *(v37 + 24) < 2u)
          {
            break;
          }
        }

        v37 -= 34;
        --v17;
      }

      while (v17);
      goto LABEL_71;
    }

LABEL_17:
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("                  currentBuffer: prpd._skipComposing=%d -> skipping currentbufffer\n", 1);
    }

    v17 = v15;
    goto LABEL_95;
  }

  v16 = a4 + 59;
  if (a4[59])
  {
    goto LABEL_17;
  }

  if (v15)
  {
    goto LABEL_58;
  }

  v17 = 0;
LABEL_71:
  v110[0] = 0;
  v40 = GlobalPNGInfo::currentBuffer(v8, v110);
  v41 = v40;
  if (!v15 || !v40)
  {
    v54 = gIIODebugFlags & 0x30000;
    if (v40)
    {
      if (v54)
      {
        ImageIOLog("                  currentBuffer: index is 0 - not using currentbufffer\n", v84, v85);
      }
    }

    else if (v54)
    {
      ImageIOLog("                  currentBuffer: buffer is nil / no framebuffer in place\n");
    }

    goto LABEL_95;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("                      currentBuffer: %p ", v40);
  }

  v42 = GlobalPNGInfo::currentBufferIndex(v8);
  v43 = gIIODebugFlags & 0x30000;
  if (v42 != v15 - 1)
  {
    if (v43)
    {
      GlobalPNGInfo::currentBufferIndex(v8);
      ImageIOLog("                  currentBuffer: bufferIndex=%d  currentIndex-1=%d -- can't use index\n");
    }

    goto LABEL_95;
  }

  v44 = v42;
  v45 = (v12 * a7);
  if (v43)
  {
    v46 = GlobalPNGInfo::currentBufferIndex(v8);
    ImageIOLog("                      currentBuffer: bufferIndex=%d  currentIndex-1=%d\n", v46, v44);
  }

  if (v110[0] != v45)
  {
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("                  currentBuffer: sizes don't match: buffer=%d  expected = %d\n", v110[0], *(a3 + 116) * *(a3 + 112));
    }

    goto LABEL_95;
  }

  result = memcpy(a6, v41, v45);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    result = ImageIOLog("                      currentBuffer: sizes match: %ld\n", v45);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      result = ImageIOLog("                      currentBuffer: *** using currentBuffer -> memcpy\n");
    }
  }

  v48 = *(v8 + 1);
  if (0xF0F0F0F0F0F0F0F1 * ((*(v8 + 2) - v48) >> 1) > v44)
  {
    v49 = v48 + 34 * v44;
    v17 = v15;
    if (*(v49 + 24) == 1)
    {
      v50 = *(v49 + 8);
      v17 = v15;
      if (v50)
      {
        v51 = *(a3 + 122) >> 3;
        v52 = (*(v49 + 4) * v51);
        v53 = &a6[*(a3 + 116) * *(v49 + 16) + *(v49 + 12) * v51];
        do
        {
          bzero(v53, v52);
          v53 += *(a3 + 116);
          --v50;
        }

        while (v50);
        v17 = v15;
      }
    }

LABEL_95:
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      v55 = *v16 ? "YES" : "NO";
      ImageIOLog("            prpd._skipComposing: %s\n", v55);
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("                     firstIndex: %d\n", v17);
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("                   image frames: %d ... %d\n", v17, v15);
        }
      }
    }

    if (a4[37] == 1)
    {
      v56 = PNGReadPlugin::EnsureFrameBufferQueueExists(a1, v8, a3);
    }

    else
    {
      v56 = 0;
    }

    if (v17 > v15)
    {
      return 0;
    }

    v86 = v56;
    v7 = 0;
    v57 = v15;
    v58 = v17;
    v92 = v57;
    while (1)
    {
      v59 = v7;
      v60 = *(v8 + 1) + 34 * v58;
      v61 = *(v60 + 8);
      v107 = *(v60 + 4);
      v7 = *(v60 + 16);
      cfa = *(v60 + 12);
      v62 = *(v60 + 24);
      v96 = *(v60 + 25);
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        v63 = *(v60 + 20);
        v64 = *(v60 + 22);
        ImageIOLog("    #%d\n", v58);
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("                           rect: {%d, %d, %d, %d}\n", cfa, v7, v107, v61);
          if ((gIIODebugFlags & 0x30000) != 0)
          {
            ImageIOLog("                          delay: %d / %d\n", v63, v64);
            if ((gIIODebugFlags & 0x30000) != 0)
            {
              ImageIOLog("                   f_dispose_op: %d %s\n", v62, off_1E6EFC750[v62]);
              if ((gIIODebugFlags & 0x30000) != 0)
              {
                ImageIOLog("                     f_blend_op: %d %s\n", v96, off_1E6EFC768[v96]);
              }
            }
          }
        }
      }

      v65 = v92;
      if (v58 < v92 && v62 == 2)
      {
        goto LABEL_122;
      }

      if (v58 < v92 && v62 == 1)
      {
        if (v61)
        {
          v66 = *(a3 + 122) >> 3;
          v67 = v107 * v66;
          v68 = &a6[(*(a3 + 116) * v7) + cfa * v66];
          do
          {
            bzero(v68, v67);
            v68 += *(a3 + 116);
            --v61;
          }

          while (v61);
        }

LABEL_122:
        v7 = v59;
        goto LABEL_123;
      }

      if (v107)
      {
        v69 = v61 == 0;
      }

      else
      {
        v69 = 1;
      }

      if (v69)
      {
        goto LABEL_123;
      }

      v70 = v99 * v107;
      v71 = *(a3 + 116);
      if (v70 < v71)
      {
        v71 = v99 * v107;
      }

      __na = v71;
      if (v86)
      {
        v72 = IIOFrameBufferQueue::getAndRetainBufferAtIndex(v86, v58);
        if (!v72)
        {
          _cg_jpeg_mem_term("DecodeComposedImage", 4070, "*** IIOFrameBufferQueue returned NULL for buffer at index: %ld\n");
          return v7;
        }

        v87 = v72;
        v73 = IIOFrameBufferGetBuffer(v72);
        v88 = 0;
      }

      else
      {
        if (!is_mul_ok(v61, v70))
        {
          return v7;
        }

        v74 = _ImageIO_Malloc(v61 * v70, *(a3 + 216), &v120, kImageMalloc_PNG_Data[0], 0, 0);
        if (!v74)
        {
          _cg_jpeg_mem_term("DecodeComposedImage", 4082, "*** ImageIO_Malloc failed to alloc %ld bytes\n");
          return v7;
        }

        v75 = v74;
        bzero(v74, v61 * v70);
        v109 = 0;
        *v110 = v58;
        v111 = cfa;
        v112 = v7;
        v113 = v107;
        v114 = v61;
        v115 = v75;
        v116 = v99 * v107;
        v117 = v70 * v61;
        v118 = 0u;
        v119 = 0;
        v108 = 0u;
        std::vector<IIODecodeFrameParams>::vector[abi:fe200100](&v108, 1uLL);
        v76 = IIO_Reader::testHeaderSize(a1);
        PNGReadPlugin::DecodeUncomposedFrames(v76, v8, a3, a4, &v108);
        v88 = v75;
        v73 = v115;
        v121[0] = &v108;
        std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](v121);
        IIODecodeFrameParams::~IIODecodeFrameParams(v110);
        v87 = 0;
      }

      v77 = &a6[v99 * cfa];
      if (v96)
      {
        v78 = v93 >= 0xFFFFFFFC;
      }

      else
      {
        v78 = 0;
      }

      v79 = !v78;
      if (v58)
      {
        v80 = v58 == v92;
      }

      else
      {
        v80 = 1;
      }

      cfb = v79;
      if (v58)
      {
        v81 = v79;
      }

      else
      {
        v81 = 1;
      }

      do
      {
        v82 = *(a3 + 116);
        v83 = &v77[v7 * v82];
        if (v80)
        {
          if (v81)
          {
            goto LABEL_152;
          }

LABEL_156:
          PNGReadPlugin::Compose(v73, v83, v107, a3, v105 == 1196573017);
          goto LABEL_158;
        }

        if (v62 != 1)
        {
          if (v62)
          {
            goto LABEL_158;
          }

          if (cfb)
          {
LABEL_152:
            memcpy(v83, v73, __na);
            goto LABEL_158;
          }

          goto LABEL_156;
        }

        bzero(&v77[v7 * v82], __na);
LABEL_158:
        ++v7;
        v73 += v70;
        --v61;
      }

      while (v61);
      if (v87)
      {
        CFRelease(v87);
      }

      v8 = v98;
      v65 = v92;
      if (v88)
      {
        _ImageIO_Free(v88, v120);
      }

      v7 = *(v97 + 24);
LABEL_123:
      v34 = v58++ == v65;
      if (v34)
      {
        return v7;
      }
    }
  }

  __break(1u);
  return result;
}

void AddSubRect(CGRect *a1, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  if (!CGRectEqualToRect(*a1, *MEMORY[0x1E695F050]))
  {
    v8.origin.x = x;
    v8.origin.y = y;
    v8.size.width = width;
    v8.size.height = height;
    v7 = CGRectUnion(*a1, v8);
    x = v7.origin.x;
    y = v7.origin.y;
    width = v7.size.width;
    height = v7.size.height;
  }

  a1->origin.x = x;
  a1->origin.y = y;
  a1->size.width = width;
  a1->size.height = height;
}

uint64_t PNGReadPlugin::EnsureFrameBufferQueueExists(IIO_Reader *a1, uint64_t a2, const void *a3)
{
  v8 = 0;
  v9 = 0;
  v4 = IIO_Reader::testHeaderSize(a1);
  std::string::basic_string[abi:fe200100]<0>(__p, "PNGFrameBufferQueue");
  IIOImageRead::getClientValueForKey(v4, __p, &v8);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = v8;
  if (!v8)
  {
    memcpy(__p, a3, sizeof(__p));
    operator new();
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v5;
}

void sub_185FE7228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  v18 = *(v16 - 72);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v18);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:fe200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void ___ZN13PNGReadPlugin28EnsureFrameBufferQueueExistsEP19IIOImageReadSessionP13GlobalPNGInfoRK14ReadPluginDataRK13PNGPluginDatal_block_invoke(uint64_t a1, int64_t a2)
{
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v8 = *(a1 + 32);
  v64 = a2;
  v9 = 0;
  if (*(v8 + 40) <= a2)
  {
LABEL_33:
    if ((gIIODebugFlags & 0x1000000000000) != 0)
    {
      ImageIOLog("    Asking for frames at indexes: (%ld, %ld), %ld bytes\n", v64, 0x2E8BA2E8BA2E8BA3 * ((v73 - v72) >> 3), v9);
    }

    v51 = IIO_Reader::testHeaderSize(*(a1 + 304));
    PNGReadPlugin::DecodeUncomposedFrames(v51, *(a1 + 32), a1 + 40, (a1 + 312), &v72);
    v54 = v72;
    v55 = v73;
    if (v72 == v73)
    {
LABEL_45:
      length[0] = &v72;
      std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](length);
      return;
    }

    while (1)
    {
      v56 = *v54;
      v57 = *(*(a1 + 32) + 8);
      if (0xF0F0F0F0F0F0F0F1 * ((*(*(a1 + 32) + 16) - v57) >> 1) <= *v54)
      {
        break;
      }

      v58 = v57 + 34 * v56;
      LOWORD(v52) = *(v58 + 20);
      LOWORD(v53) = *(v58 + 22);
      v59 = v52 / v53;
      if (v59 == 0.0)
      {
        v59 = 0.0333333333;
      }

      v60 = IIOFrameBufferCreateForBuffer(v54[5], v54[7], v54[6] * *(v58 + 8), v56, v59);
      IIOGIFFrameSetNumRowsDecoded(v60, v54[8]);
      v61 = v54[10];
      if (v61)
      {
        length[0] = 0;
        SerializedData = IIOColorMap::createSerializedData(v61, length);
        if (SerializedData)
        {
          v63 = CFDataCreate(v4, SerializedData, length[0]);
          if (v63)
          {
            IIOFrameBufferSetColorTable(v60, v63);
            CFRelease(v63);
          }

          free(SerializedData);
        }
      }

      CFArrayAppendValue(Mutable, v60);
      IIOFrameBufferRelease(v60);
      v54 += 11;
      if (v54 == v55)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    while (1)
    {
      v10 = *(a1 + 162);
      v71 = 0;
      v12 = v8 + 8;
      v11 = *(v8 + 8);
      if (0xF0F0F0F0F0F0F0F1 * ((*(v12 + 8) - v11) >> 1) <= a2)
      {
        break;
      }

      v13 = (v11 + 34 * a2);
      v14 = v13[2];
      LODWORD(v6) = v13[3];
      LODWORD(v7) = v13[4];
      v15 = v6;
      v16 = v7;
      LODWORD(v6) = v13[1];
      v17 = v6;
      v18 = v14;
      v80.origin.x = v15;
      v80.origin.y = v7;
      v80.size.width = v17;
      v80.size.height = v14;
      if (CGRectIsEmpty(v80))
      {
        v19 = 0;
        v20 = 0;
      }

      else
      {
        v19 = (((v10 + 7) >> 3) * v17);
        if (!is_mul_ok(v19, v14))
        {
          goto LABEL_45;
        }

        v21 = v19 * v14;
        v22 = _ImageIO_Malloc(v19 * v14, *(a1 + 256), &v71, kImageMalloc_PNG_Data[0], 0, 0);
        v20 = v22;
        if (!v22)
        {
          goto LABEL_45;
        }

        bzero(v22, v21);
        v9 += v21;
      }

      length[0] = a2;
      *&length[1] = v15;
      *&v66 = v16;
      *(&v66 + 1) = v17;
      *&v67 = v18;
      *(&v67 + 1) = v20;
      *&v68 = v19;
      *(&v68 + 1) = v71;
      *&v69 = 0;
      DWORD2(v69) = 0;
      v70 = 0;
      v23 = v73;
      if (v73 >= v74)
      {
        v29 = v72;
        v30 = v73 - v72;
        v31 = 0x2E8BA2E8BA2E8BA3 * ((v73 - v72) >> 3);
        v32 = v31 + 1;
        if ((v31 + 1) > 0x2E8BA2E8BA2E8BALL)
        {
          std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
        }

        if (0x5D1745D1745D1746 * ((v74 - v72) >> 3) > v32)
        {
          v32 = 0x5D1745D1745D1746 * ((v74 - v72) >> 3);
        }

        if ((0x2E8BA2E8BA2E8BA3 * ((v74 - v72) >> 3)) >= 0x1745D1745D1745DLL)
        {
          v33 = 0x2E8BA2E8BA2E8BALL;
        }

        else
        {
          v33 = v32;
        }

        v79 = &v72;
        if (v33)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<IIODecodeFrameParams>>(&v72, v33);
        }

        v34 = 8 * ((v73 - v72) >> 3);
        v75 = 0;
        v76 = v34;
        v35 = 0;
        v78 = 0;
        v36 = v66;
        *v34 = *length;
        *(v34 + 16) = v36;
        v37 = v69;
        v38 = v68;
        v39 = v67;
        *(v34 + 80) = v70;
        *(v34 + 48) = v38;
        *(v34 + 64) = v37;
        *(v34 + 32) = v39;
        v28 = 88 * v31 + 88;
        v77 = v28;
        v40 = (88 * v31 - v30);
        if (v29 != v23)
        {
          v41 = v29;
          v42 = v34 - v30;
          do
          {
            v43 = *(v41 + 1);
            *v42 = *v41;
            *(v42 + 16) = v43;
            v44 = *(v41 + 2);
            v45 = *(v41 + 3);
            v46 = *(v41 + 4);
            *(v42 + 80) = *(v41 + 10);
            *(v42 + 48) = v45;
            *(v42 + 64) = v46;
            *(v42 + 32) = v44;
            v41 = (v41 + 88);
            v42 += 88;
          }

          while (v41 != v23);
          do
          {
            IIODecodeFrameParams::~IIODecodeFrameParams(v29);
            v29 = (v47 + 88);
          }

          while (v29 != v23);
          v29 = v72;
          v28 = v77;
          v35 = v78;
        }

        v72 = v40;
        v73 = v28;
        v48 = v74;
        v74 = v35;
        v75 = v29;
        v77 = v29;
        v78 = v48;
        v76 = v29;
        std::__split_buffer<IIODecodeFrameParams>::~__split_buffer(&v75);
      }

      else
      {
        v24 = v66;
        *v73 = *length;
        *(v23 + 1) = v24;
        v25 = v67;
        v26 = v68;
        v27 = v69;
        *(v23 + 10) = v70;
        *(v23 + 3) = v26;
        *(v23 + 4) = v27;
        *(v23 + 2) = v25;
        v28 = v23 + 88;
      }

      v73 = v28;
      IIODecodeFrameParams::~IIODecodeFrameParams(length);
      if (((v9 & 0xFFFFFFFFFFFF0000) == 0 || (0x2E8BA2E8BA2E8BA3 * ((v73 - v72) >> 3)) <= 2) && v9 >> 20 == 0)
      {
        ++a2;
        v8 = *(a1 + 32);
        if (a2 < *(v8 + 40))
        {
          continue;
        }
      }

      goto LABEL_33;
    }
  }

  __break(1u);
}

void sub_185FE7830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  a14 = &a26;
  std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](&a14);
  _Unwind_Resume(a1);
}

void handle_error_idot(uint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    if (*a2)
    {
      _cg_jpeg_mem_term("handle_error_idot", 278, "PNG-iDOT", "%s\n", a2);
    }
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = -1;
  __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
}

void PNGReadPlugin::DecodeFrameAPNG(IIOImageReadSession *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v10 = _cg_png_create_read_struct("1.6.43", 0, handle_error, handle_warning);
  v32 = v10;
  info_struct = _cg_png_create_info_struct(v10);
  v12 = info_struct;
  v31 = info_struct;
  if (!v10 || !info_struct)
  {
    goto LABEL_21;
  }

  _cg_png_set_option(v10, 2u, 3);
  _cg_png_set_benign_errors(v10, 1);
  _cg_png_set_read_fn(v10, a1, read_fn);
  _cg_png_set_keep_unknown_chunks_sized(v10, 3u, "CgBI", 4);
  a4[56] = 0;
  _cg_png_set_read_user_chunk_fn(v10, a4, PNGReadPlugin::Read_user_chunk_callback);
  _cg_png_read_info(v10, v12);
  if (*(a3 + 63) == 1)
  {
    _cg_png_set_swap(v10);
  }

  v13 = _cg_png_set_interlace_handling(v10);
  PNGReadPlugin::Update_png_struct(a3, a4, v10, v12);
  v14 = *a5;
  v15 = *(a2 + 8);
  if (0xF0F0F0F0F0F0F0F1 * ((*(a2 + 16) - v15) >> 1) <= *a5)
  {
    __break(1u);
LABEL_23:
    LogError("DecodeFrameAPNG", 4811, "fcTL_CHUNK size mismatch\n");
    goto LABEL_21;
  }

  v16 = v15 + 34 * v14;
  v18 = *(v16 + 4);
  v17 = *(v16 + 8);
  if (v14 < 1)
  {
    if (a4[31] == 1 && *(a3 + 48))
    {
      v21 = 0;
      do
      {
        _cg_png_read_row_sized(v10, 0, 0, 0, 0);
        ++v21;
      }

      while (v21 < *(a3 + 48));
    }
  }

  else
  {
    v19 = *v16;
    IIOImageReadSession::seek(a1, *(v16 + 26), 0);
    _cg_png_set_num_frames_read(v10, v12, *a5);
    _cg_png_set_next_seq_num(v10, v12, v19);
    _cg_png_set_zstream_owner(v10, 0);
    zstream = _cg_png_get_zstream(v10);
    *zstream = 0;
    *(zstream + 8) = 0;
  }

  _cg_png_read_frame_head(v10, v12);
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0;
  _cg_png_get_next_frame_fcTL(v10, v12, &v30 + 1, &v30, &v29 + 1, &v29, &v28 + 1, &v28, &v27 + 1, &v27);
  if (v30 != __PAIR64__(v18, v17))
  {
    goto LABEL_23;
  }

  if (v13)
  {
    v22 = 0;
    v23 = *(a5 + 48);
    v24 = v17;
    do
    {
      if (v24)
      {
        v25 = 0;
        v26 = *(a5 + 40);
        do
        {
          _cg_png_read_row_sized(v10, v26, v23, 0, 0);
          v26 += v23;
          ++v25;
          v17 = v30;
        }

        while (v25 < v30);
        v24 = v30;
      }

      ++v22;
    }

    while (v22 != v13);
  }

  *(a5 + 64) = v17;
LABEL_21:
  _cg_png_destroy_read_struct(&v32, &v31, 0);
}

void sub_185FE7BEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  __cxa_begin_catch(a1);
  imagePNG_error_break(a16);
  __cxa_end_catch();
  JUMPOUT(0x185FE7B9CLL);
}

void ___ZN13PNGReadPlugin22DecodeUncomposedFramesEP12IIOImageReadP13GlobalPNGInfoRK14ReadPluginDataRK13PNGPluginDataRNSt3__16vectorI20IIODecodeFrameParamsNSA_9allocatorISC_EEEE_block_invoke(uint64_t a1, unint64_t a2)
{
  memset(v5, 0, sizeof(v5));
  IIOImageReadSession::IIOImageReadSession(v5, *(a1 + 32));
  v4 = **(a1 + 64);
  if (0x2E8BA2E8BA2E8BA3 * ((*(*(a1 + 64) + 8) - v4) >> 3) <= a2)
  {
    __break(1u);
  }

  else
  {
    PNGReadPlugin::DecodeFrameAPNG(v5, *(a1 + 40), *(a1 + 48), *(a1 + 56), v4 + 88 * a2);
    IIOImageReadSession::~IIOImageReadSession(v5);
  }
}

void *std::vector<IIODecodeFrameParams>::vector[abi:fe200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<IIODecodeFrameParams>::__vallocate[abi:fe200100](result, a2);
  }

  return result;
}

void std::vector<IIODecodeFrameParams>::__vallocate[abi:fe200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<IIODecodeFrameParams>>(a1, a2);
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<IIODecodeFrameParams>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        IIODecodeFrameParams::~IIODecodeFrameParams((v4 - 88));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<IIODecodeFrameParams>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    IIODecodeFrameParams::~IIODecodeFrameParams((i - 88));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_185FE7F84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<IIOBaseObject>::shared_ptr[abi:fe200100]<IIOFrameBufferQueue,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<IIOFrameBufferQueue *,std::shared_ptr<IIOBaseObject>::__shared_ptr_default_delete<IIOBaseObject,IIOFrameBufferQueue>,std::allocator<IIOFrameBufferQueue>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<IIOFrameBufferQueue *,std::shared_ptr<IIOBaseObject>::__shared_ptr_default_delete<IIOBaseObject,IIOFrameBufferQueue>,std::allocator<IIOFrameBufferQueue>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<IIOFrameBufferQueue *,std::shared_ptr<IIOBaseObject>::__shared_ptr_default_delete<IIOBaseObject,IIOFrameBufferQueue>,std::allocator<IIOFrameBufferQueue>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:fe200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t png_read_filter_row_sub4_a64(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3 < a2)
  {
    goto LABEL_23;
  }

  v7 = *(result + 8) + 15;
  if ((v7 & 0xFFFFFFFFFFFFFFC0) > a3 - a2)
  {
    goto LABEL_23;
  }

  if ((v7 & 0xFFFFFFFFFFFFFFC0) != 0)
  {
    v8 = a2;
    v9 = v7 & 0xFFFFFFFFFFFFFFC0;
    v10 = 0uLL;
    do
    {
      v20 = vld4q_f32(v8);
      v20.val[0] = vaddq_s8(v10, v20.val[0]);
      v20.val[1] = vaddq_s8(v20.val[0], v20.val[1]);
      v20.val[2] = vaddq_s8(v20.val[1], v20.val[2]);
      v20.val[3] = vaddq_s8(v20.val[2], v20.val[3]);
      v11 = vaddq_s8(vaddq_s8(vextq_s8(0, v20.val[3], 0xCuLL), vextq_s8(0, v20.val[3], 8uLL)), vextq_s8(0, v20.val[3], 4uLL));
      v20.val[0] = vaddq_s8(v11, v20.val[0]);
      v20.val[1] = vaddq_s8(v11, v20.val[1]);
      v20.val[2] = vaddq_s8(v11, v20.val[2]);
      v20.val[3] = vaddq_s8(v11, v20.val[3]);
      v10 = v20.val[3].u32[3];
      vst4q_f32(v8, v20);
      v8 += 64;
      v9 -= 64;
    }

    while (v9);
    v12 = (v8 - 4);
    v13 = a3 >= v8 - 4 && v12 >= a2;
    if (!v13 || a3 - (v8 - 4) < 4)
    {
      goto LABEL_23;
    }

    v7 &= 0x3Fu;
    v15 = *v12;
  }

  else
  {
    v15 = 0;
    v8 = a2;
  }

  if (v7 >= 0x10)
  {
    if (a3 < v8 || v8 < a2 || v7 > a3 - v8)
    {
LABEL_23:
      __break(0x5519u);
      return result;
    }

    v16 = v15;
    do
    {
      v3.i32[0] = *v8;
      v4.i32[0] = *(v8 + 4);
      v5.i32[0] = *(v8 + 8);
      v6.i32[0] = *(v8 + 12);
      v17 = vadd_s8(v16, v3);
      v18 = vadd_s8(v17, v4);
      v19 = vadd_s8(v18, v5);
      v16 = vadd_s8(v19, v6);
      *v8 = v17.i32[0];
      *(v8 + 4) = v18.i32[0];
      *(v8 + 8) = v19.i32[0];
      *(v8 + 12) = v16.i32[0];
      v8 += 16;
      v13 = v7 >= 0x10;
      v7 -= 16;
    }

    while (v13);
  }

  return result;
}

uint64_t png_read_filter_row_avg4_a64(uint64_t result, unsigned __int32 *a2, unint64_t a3, __int32 *a4, unint64_t a5, double a6, double a7, double a8, double a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13)
{
  if (a3 < a2 || (v17 = *(result + 8) + 15, v17 > a3 - a2) || a5 < a4 || v17 > a5 - a4)
  {
    __break(0x5519u);
  }

  else
  {
    v18 = 0uLL;
    do
    {
      a10.i32[0] = *a2;
      a11.i32[0] = a2[1];
      a12.i32[0] = a2[2];
      a13.i32[0] = a2[3];
      v13.i32[0] = *a4;
      v14.i32[0] = a4[1];
      v15.i32[0] = a4[2];
      v16.i32[0] = a4[3];
      a4 += 4;
      v19 = vaddq_s8(vhaddq_u8(v18, v13), a10);
      v20 = vaddq_s8(vhaddq_u8(v19, v14), a11);
      v21 = vaddq_s8(vhaddq_u8(v20, v15), a12);
      v18 = vaddq_s8(vhaddq_u8(v21, v16), a13);
      *a2 = v19.i32[0];
      a2[1] = v20.i32[0];
      a2[2] = v21.i32[0];
      a2[3] = v18.i32[0];
      a2 += 4;
      v22 = v17 >= 0x10;
      v17 -= 16;
    }

    while (v22);
  }

  return result;
}

void IIOImagePlus::setClipPath(IIOImagePlus *this, const CGPath *a2)
{
  v4 = *(this + 24);
  if (v4)
  {
    CGPathRelease(v4);
  }

  *(this + 24) = a2;
}

uint64_t IIOImagePlus::setJpegProvider(uint64_t this, int a2)
{
  *(this + 200) |= 1u;
  *(this + 204) = a2;
  return this;
}

CGImageRef IIOImagePlus::setImage(CGImageRef *this, CGImageRef image)
{
  CGImageGetWidth(image);
  CGImageGetHeight(image);
  CGImageGetBitsPerComponent(image);
  CGImageGetBitsPerPixel(image);
  CGImageGetBytesPerRow(image);
  CGImageGetColorSpace(image);
  CGImageGetAlphaInfo(image);
  _ImageIsFloat(image);
  _ImageGetEndianInfo(image);
  CGImageRelease(this[17]);
  result = CGImageRetain(image);
  this[17] = result;
  if (*(this + 36) != -6)
  {
    *(this + 36) = 0;
  }

  return result;
}

uint64_t IIOImagePlus::setRemoveCacheKey(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(this + 200) = *(this + 200) & 0xDF | v2;
  return this;
}

CFTypeRef IIOImagePlus::setMetadata(IIOImagePlus *this, CFTypeRef cf)
{
  v4 = *(this + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  result = CFRetain(cf);
  *(this + 16) = result;
  return result;
}

void IIOImagePlus::clearProperties(IIODictionary **this)
{
  IIODictionary::removeAllObjects(this[15]);
  if (*(this + 188) == 1)
  {
    v2 = this[15];
    v3 = *MEMORY[0x1E695BBF8];

    IIODictionary::setObjectForKey(v2, v3, @"kCGImageSourceColorTransformOption");
  }
}

CGMutableImageMetadataRef IIOImagePlus::clearMetadata(IIOImagePlus *this)
{
  result = *(this + 16);
  if (result)
  {
    CFRelease(result);
    result = CGImageMetadataCreateMutable();
    *(this + 16) = result;
  }

  return result;
}

uint64_t IIOImageProviderInfo::CopyIOSurfaceSet(uint64_t *a1, const void *a2, const __CFDictionary *a3)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CopyIOSurfaceSet", a2, 0, -1, a3);
  }

  if (a1)
  {
    v7 = IIOImageProviderInfo::copyIOSurfaceSet(*a1, v6, a3);
  }

  else
  {
    v7 = 0;
  }

  kdebug_trace();
  return v7;
}

CGImage *IIOImagePlus::createImage(IIOImagePlus *this, CGImageSource *a2, int *a3, unsigned int *a4)
{
  Source = CGImageSourceGetSource(a2);
  if (!*(this + 5) || !*(this + 6) || !*(this + 9))
  {
    IIOImagePlus::createImage(this, this + 5);
    v11 = 0;
    v13 = -67;
    v12 = 1493;
    goto LABEL_58;
  }

  v8 = Source;
  v9 = *(this + 17);
  if (v9)
  {
    if (*(this + 36))
    {
      v10 = IIOImageSource::imageSourceType(v8);
      v9 = *(this + 17);
      if (v10 == 6)
      {
        if (CFGetRetainCount(v9) <= 1 && (IIOImageSource::imageSourceType(v8) != 6 || IIOImageSource::incrementalDataUpdated(v8)))
        {
          IIOImageSource::removeImageFromSet(v8, *(this + 1), *(this + 17));
          *(this + 17) = 0;
          *(this + 200) &= ~0x40u;
          goto LABEL_14;
        }

        v9 = *(this + 17);
      }
    }

    v11 = CGImageRetain(v9);
    if (!v11)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_58;
    }

LABEL_57:
    v12 = 0;
    v13 = 0;
    *(this + 17) = v11;
    goto LABEL_58;
  }

LABEL_14:
  v14 = *(this + 7);
  v15 = *(this + 11);
  v16 = *(this + 24);
  v17 = *(this + 25);
  v18 = *(this + 26);
  v19 = *(this + 112);
  v20 = v18 | 0x100;
  if ((v19 & 1) == 0)
  {
    v20 = *(this + 26);
  }

  if ((*(this + 113) & (v14 == 16)) != 0)
  {
    v20 |= 0x1000u;
  }

  if ((*(this + 113) & (v14 == 32)) != 0)
  {
    v21 = v20 | 0x2000;
  }

  else
  {
    v21 = v20;
  }

  v33 = v21;
  CGColorSpaceGetRenderingIntent();
  v22 = 0;
  if (v14 > 15)
  {
    if (v14 == 16)
    {
      if (v19)
      {
        v22 = 5;
      }

      else
      {
        v22 = 2;
      }
    }

    else if (v14 == 32)
    {
      if (v19)
      {
        v22 = 4;
      }

      else
      {
        v22 = 3;
      }
    }
  }

  else if (v14 == 8)
  {
    v22 = 1;
  }

  else if (v14 == 10)
  {
    v22 = 6;
  }

  v23 = v22;
  if (v18)
  {
    CGColorSpaceGetModel(v15);
  }

  v24 = CGImageSourceGetSource(*(this + 3));
  if (IIOImageReadSession::isFinal(v24))
  {
    *(this + 36) = 0;
  }

  ImageProvider = IIOImagePlus::getImageProvider(this);
  if (ImageProvider)
  {
    v26 = ImageProvider;
    CGImageProviderGetSize();
    if (v27 < 1.0 || v28 < 1.0 || v27 != v27 || v28 != v28)
    {
      LogError("createImage", 1598, "*** ERROR: CGImageProvider %p   size: %g x %g\n", v26, v27, v28);
    }

    v11 = CGImageCreateWithImageProvider();
    if (!v11)
    {
      IIOImagePlus::releaseImageProvider(this);
      v12 = 1632;
      LogError("createImage", 1632, "*** ERROR: CGImageCreateWithImageProvider failed\n");
      v13 = -61;
      goto LABEL_58;
    }

    if (v16 <= 0.0)
    {
      v29 = IIOImageSource::reader(v8);
      if (v29)
      {
        (*(*v29 + 128))(v29, v11, v24, v15, v23, v33);
      }
    }

    else
    {
      CGImageSetHeadroom();
    }

    if (v17 > 0.0)
    {
      CGImageSetContentAverageLightLevelNits();
    }

    IIOImagePlus::releaseImageProvider(this);
    *(this + 200) |= 0x40u;
    *(**(this + 31) + 8) = v11;
    if (*(this + 24))
    {
      CopyWithClipPath = CGImageCreateCopyWithClipPath();
      if (CopyWithClipPath)
      {
        v31 = CopyWithClipPath;
        CGImageRelease(v11);
        v11 = v31;
      }
    }

    CGImageSetProperty();
    if (CGImageReadSessionGetFilePath(*(this + 3)))
    {
      CGImageSetProperty();
    }

    goto LABEL_57;
  }

  IIOImagePlus::createImage();
  v11 = 0;
  v13 = -60;
  v12 = 1589;
LABEL_58:
  if (a3)
  {
    *a3 = v13;
  }

  if (a4)
  {
    *a4 = v12;
  }

  return v11;
}

void IIOImageProviderInfo::debugCallbackOptionsResult(int a1, CFDictionaryRef theDict, uint64_t a3)
{
  if (theDict && a3)
  {
    valuePtr = 0;
    Count = CFDictionaryGetCount(theDict);
    v5 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    v12 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    v13 = v5;
    CFDictionaryGetKeysAndValues(theDict, v5, v12);
    if (Count >= 1)
    {
      v6 = *MEMORY[0x1E695F288];
      v7 = *MEMORY[0x1E695F298];
      theString2 = *MEMORY[0x1E695F268];
      v14 = *MEMORY[0x1E695F270];
      v8 = *MEMORY[0x1E695F280];
      v9 = v12;
      v10 = v5;
      while (1)
      {
        v11 = *v10;
        if (CFStringCompare(*v10, v6, 0) == kCFCompareEqualTo)
        {
          break;
        }

        if (CFStringCompare(v11, v7, 0) == kCFCompareEqualTo)
        {
          CFNumberGetValue(*v9, kCFNumberLongType, &valuePtr);
          if (valuePtr != 1 || CGImageBlockSetGetCount() == 1)
          {
            goto LABEL_20;
          }

          ImageIOLog("%s", "***************************************************************");
          ImageIOLog("*** bad blockCount: got %ld - expected: 1\n");
          goto LABEL_19;
        }

        if (CFStringCompare(v11, theString2, 0))
        {
          if (CFStringCompare(v11, v14, 0))
          {
            goto LABEL_20;
          }

          CFNumberGetValue(*v9, kCFNumberLongType, &valuePtr);
          CGImageBlockSetGetImageBlock();
          if (!(CGImageBlockGetBytesPerRow() % valuePtr))
          {
            goto LABEL_20;
          }

          ImageIOLog("%s", "***************************************************************");
          ImageIOLog("*** bad rowbytes alignment: %p (%d) is not %ld-byte aligned\n");
          goto LABEL_19;
        }

        CFNumberGetValue(*v9, kCFNumberLongType, &valuePtr);
        CGImageBlockSetGetImageBlock();
        if (CGImageBlockGetData() % valuePtr)
        {
          ImageIOLog("%s", "***************************************************************");
          ImageIOLog("*** bad baseAddressAlignment: %p is not %ld aligned\n");
LABEL_19:
          ImageIOLog("%s", "***************************************************************");
        }

LABEL_20:
        ++v9;
        ++v10;
        if (!--Count)
        {
          goto LABEL_21;
        }
      }

      if (CFStringCompare(*v9, v8, 0) || CGImageBlockSetGetPixelSize() == 4)
      {
        goto LABEL_20;
      }

      ImageIOLog("%s", "***************************************************************");
      ImageIOLog("*** bad pixelSize: got %ld - expected: 4\n");
      goto LABEL_19;
    }

LABEL_21:
    free(v13);
    free(v12);
  }
}

void IIOImageProviderInfo::logBlockSetDecodingTime(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a2)
  {
    if ((gIIODebugFlags & 8) != 0)
    {
      IIODebug_ShowBacktrace(1);
    }

    CGImageBlockSetGetRect();
    v41 = v16;
    v42 = v15;
    v18 = v17;
    v20 = v19;
    Count = CGImageBlockSetGetCount();
    if (Count)
    {
      CGImageBlockSetGetImageBlock();
      BytesPerRow = CGImageBlockGetBytesPerRow();
    }

    else
    {
      BytesPerRow = 0;
    }

    v23 = **(a1 + 120);
    if (v23 && (Value = CFDictionaryGetValue(v23, @"kImageIOInfoHeader_session")) != 0)
    {
      v25 = CGImageReadSessionGetRead(Value);
      v26 = IIOImageRead::copySourceInfo(v25);
    }

    else
    {
      v26 = 0;
    }

    v27 = *(a1 + 136);
    v28 = v27 >> 24;
    v29 = MEMORY[0x1E69E9830];
    if ((v27 >> 24) <= 0x7F)
    {
      v30 = *(MEMORY[0x1E69E9830] + 4 * v28 + 60) & 0x40000;
    }

    else
    {
      v30 = __maskrune(v27 >> 24, 0x40000uLL);
    }

    if (v30)
    {
      v31 = v28;
    }

    else
    {
      v31 = 46;
    }

    v32 = v27 << 8 >> 24;
    if (v32 <= 0x7F)
    {
      v33 = *(v29 + 4 * v32 + 60) & 0x40000;
    }

    else
    {
      v33 = __maskrune(v27 << 8 >> 24, 0x40000uLL);
    }

    if (v33)
    {
      v34 = v32;
    }

    else
    {
      v34 = 46;
    }

    v35 = v27 >> 8;
    if (v35 <= 0x7F)
    {
      v36 = *(v29 + 4 * v35 + 60) & 0x40000;
    }

    else
    {
      v36 = __maskrune(v27 >> 8, 0x40000uLL);
    }

    if (v36)
    {
      v37 = v35;
    }

    else
    {
      v37 = 46;
    }

    if (v27 <= 0x7F)
    {
      v38 = *(v29 + 4 * v27 + 60) & 0x40000;
    }

    else
    {
      v38 = __maskrune(v27, 0x40000uLL);
    }

    if (v38)
    {
      v39 = v27;
    }

    else
    {
      v39 = 46;
    }

    v40 = "";
    if (v26)
    {
      v40 = v26;
    }

    ImageIOLog("⭕️   '%c%c%c%c' CopyImageBlockSet\tsRect={%g, %g, %g, %g}\tdSize={%g,%g}\tblkSet={%g, %g, %g, %g}\t#=%2d\trb=%ld\ttime: %g ms\t%s\n", v31, v34, v37, v39, a3, a4, a5, a6, a7, a8, v42, v41, v18, v20, Count, BytesPerRow, *(a1 + 144) * 1000.0, v40);
    if (v26)
    {

      free(v26);
    }
  }

  else
  {

    ImageIOLog("*** CopyImageBlockSet returned NULL\n");
  }
}

void IIOImageProviderInfo::logSurfaceDecodingTime(IIOImageProviderInfo *this, __IOSurface *a2)
{
  if ((gIIODebugFlags & 8) != 0)
  {
    IIODebug_ShowBacktrace(1);
  }

  v4 = **(this + 15);
  if (v4 && (Value = CFDictionaryGetValue(v4, @"kImageIOInfoHeader_session")) != 0)
  {
    Source = CGImageSourceGetSource(Value);
    v38 = IIOImageReadSession::copySourceInfo(Source);
  }

  else
  {
    v38 = 0;
  }

  PixelFormat = IOSurfaceGetPixelFormat(a2);
  Width = IOSurfaceGetWidth(a2);
  Height = IOSurfaceGetHeight(a2);
  v8 = *(this + 34);
  v9 = v8 >> 24;
  v10 = MEMORY[0x1E69E9830];
  if ((v8 >> 24) <= 0x7F)
  {
    v35 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
  }

  else
  {
    v35 = __maskrune(v9, 0x40000uLL);
    v8 = *(this + 34);
  }

  v11 = v8 << 8 >> 24;
  if (v11 <= 0x7F)
  {
    v34 = *(v10 + 4 * v11 + 60) & 0x40000;
    v12 = v8;
  }

  else
  {
    v34 = __maskrune(v11, 0x40000uLL);
    v12 = *(this + 34);
  }

  v13 = v12 >> 8;
  v33 = v12;
  if (v13 <= 0x7F)
  {
    v32 = *(v10 + 4 * v13 + 60) & 0x40000;
  }

  else
  {
    v32 = __maskrune(v13, 0x40000uLL);
    v12 = *(this + 34);
  }

  if (v12 <= 0x7F)
  {
    if ((*(v10 + 4 * v12 + 60) & 0x40000) != 0)
    {
      goto LABEL_18;
    }
  }

  else if (__maskrune(v12, 0x40000uLL))
  {
LABEL_18:
    v14 = *(this + 136);
    goto LABEL_21;
  }

  v14 = 46;
LABEL_21:
  v31 = v14;
  v15 = PixelFormat >> 24;
  if ((PixelFormat >> 24) <= 0x7F)
  {
    v30 = *(v10 + 4 * v15 + 60) & 0x40000;
  }

  else
  {
    v30 = __maskrune(PixelFormat >> 24, 0x40000uLL);
  }

  v16 = PixelFormat << 8 >> 24;
  if (v16 <= 0x7F)
  {
    v17 = *(v10 + 4 * v16 + 60) & 0x40000;
  }

  else
  {
    v17 = __maskrune(PixelFormat << 8 >> 24, 0x40000uLL);
  }

  v18 = PixelFormat >> 8;
  v19 = v10;
  if (v18 <= 0x7F)
  {
    v20 = *(v10 + 4 * v18 + 60) & 0x40000;
  }

  else
  {
    v20 = __maskrune(PixelFormat >> 8, 0x40000uLL);
  }

  PixelFormat = PixelFormat;
  if (PixelFormat <= 0x7F)
  {
    v21 = *(v19 + 4 * PixelFormat + 60) & 0x40000;
  }

  else
  {
    v21 = __maskrune(PixelFormat, 0x40000uLL);
  }

  LODWORD(v22) = v12 >> 8;
  if (v32)
  {
    v22 = v22;
  }

  else
  {
    v22 = 46;
  }

  LODWORD(v23) = v33 << 8 >> 24;
  if (v34)
  {
    v23 = v23;
  }

  else
  {
    v23 = 46;
  }

  LODWORD(v24) = v8 >> 24;
  if (v35)
  {
    v24 = v24;
  }

  else
  {
    v24 = 46;
  }

  if (v20)
  {
    v25 = v18;
  }

  else
  {
    v25 = 46;
  }

  if (v17)
  {
    v26 = v16;
  }

  else
  {
    v26 = 46;
  }

  if (v30)
  {
    v27 = v15;
  }

  else
  {
    v27 = 46;
  }

  if (v21)
  {
    v28 = PixelFormat;
  }

  else
  {
    v28 = 46;
  }

  v29 = "";
  if (v38)
  {
    v29 = v38;
  }

  ImageIOLog("⭕️   '%c%c%c%c' CopyIOSurface\tformat=(%c%c%c%c)\tsize=(%zu,%zu)\ttime: %g ms\t%s\n", v24, v23, v22, v31, v27, v26, v25, v28, Width, Height, *(this + 18) * 1000.0, v29);

  free(v38);
}

void IIOImageProviderInfo::logSurfaceSetDecodingTime(uint64_t a1)
{
  if ((gIIODebugFlags & 8) != 0)
  {
    IIODebug_ShowBacktrace(1);
  }

  v2 = **(a1 + 120);
  if (v2 && (Value = CFDictionaryGetValue(v2, @"kImageIOInfoHeader_session")) != 0)
  {
    SessionCopySourceInfo = CGImageReadSessionCopySourceInfo(Value);
  }

  else
  {
    SessionCopySourceInfo = 0;
  }

  IOSurface = CGImageSurfaceSetGetIOSurface();
  PixelFormat = IOSurfaceGetPixelFormat(IOSurface);
  Width = IOSurfaceGetWidth(IOSurface);
  Height = IOSurfaceGetHeight(IOSurface);
  v6 = *(a1 + 136);
  v7 = v6 >> 24;
  v8 = MEMORY[0x1E69E9830];
  if ((v6 >> 24) <= 0x7F)
  {
    v33 = *(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x40000;
  }

  else
  {
    v33 = __maskrune(v7, 0x40000uLL);
    v6 = *(a1 + 136);
  }

  v9 = v6 << 8 >> 24;
  if (v9 <= 0x7F)
  {
    v32 = *(v8 + 4 * v9 + 60) & 0x40000;
    v10 = v6;
  }

  else
  {
    v32 = __maskrune(v9, 0x40000uLL);
    v10 = *(a1 + 136);
  }

  v11 = v10 >> 8;
  v31 = v10;
  if (v11 <= 0x7F)
  {
    v30 = *(v8 + 4 * v11 + 60) & 0x40000;
  }

  else
  {
    v30 = __maskrune(v11, 0x40000uLL);
    v10 = *(a1 + 136);
  }

  if (v10 <= 0x7F)
  {
    if ((*(v8 + 4 * v10 + 60) & 0x40000) != 0)
    {
      goto LABEL_18;
    }
  }

  else if (__maskrune(v10, 0x40000uLL))
  {
LABEL_18:
    v12 = *(a1 + 136);
    goto LABEL_21;
  }

  v12 = 46;
LABEL_21:
  v29 = v12;
  v13 = PixelFormat >> 24;
  if ((PixelFormat >> 24) <= 0x7F)
  {
    v28 = *(v8 + 4 * v13 + 60) & 0x40000;
  }

  else
  {
    v28 = __maskrune(PixelFormat >> 24, 0x40000uLL);
  }

  v14 = PixelFormat << 8 >> 24;
  if (v14 <= 0x7F)
  {
    v15 = *(v8 + 4 * v14 + 60) & 0x40000;
  }

  else
  {
    v15 = __maskrune(PixelFormat << 8 >> 24, 0x40000uLL);
  }

  v16 = PixelFormat >> 8;
  v17 = v8;
  if (v16 <= 0x7F)
  {
    v18 = *(v8 + 4 * v16 + 60) & 0x40000;
  }

  else
  {
    v18 = __maskrune(PixelFormat >> 8, 0x40000uLL);
  }

  PixelFormat = PixelFormat;
  if (PixelFormat <= 0x7F)
  {
    v19 = *(v17 + 4 * PixelFormat + 60) & 0x40000;
  }

  else
  {
    v19 = __maskrune(PixelFormat, 0x40000uLL);
  }

  LODWORD(v20) = v10 >> 8;
  if (v30)
  {
    v20 = v20;
  }

  else
  {
    v20 = 46;
  }

  LODWORD(v21) = v31 << 8 >> 24;
  if (v32)
  {
    v21 = v21;
  }

  else
  {
    v21 = 46;
  }

  LODWORD(v22) = v6 >> 24;
  if (v33)
  {
    v22 = v22;
  }

  else
  {
    v22 = 46;
  }

  if (v18)
  {
    v23 = v16;
  }

  else
  {
    v23 = 46;
  }

  if (v15)
  {
    v24 = v14;
  }

  else
  {
    v24 = 46;
  }

  if (v28)
  {
    v25 = v13;
  }

  else
  {
    v25 = 46;
  }

  if (v19)
  {
    v26 = PixelFormat;
  }

  else
  {
    v26 = 46;
  }

  v27 = "";
  if (SessionCopySourceInfo)
  {
    v27 = SessionCopySourceInfo;
  }

  ImageIOLog("⭕️   '%c%c%c%c' CopyIOSurfaceSet\tformat=(%c%c%c%c)\tsize=(%zu,%zu)\ttime: %g ms\t%s\n", v22, v21, v20, v29, v25, v24, v23, v26, Width, Height, *(a1 + 144) * 1000.0, v27);

  free(SessionCopySourceInfo);
}

uint64_t IIOImageProviderInfo::copyIOSurfaceSet(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "copyIOSurfaceSet", 0, 0, -1, a3);
  }

  IIOInitDebugFlags();
  if ((gIIODebugFlags & 0xC) != 0)
  {
    *(a1 + 144) = CFAbsoluteTimeGetCurrent();
  }

  if (*(a1 + 240))
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      v6 = *v5;
      if (*v5)
      {
        v7 = CFGetTypeID(*v5);
        if (v7 == CFDictionaryGetTypeID())
        {
          pthread_mutex_lock((a1 + 152));
          v8 = *MEMORY[0x1E695E4D0];
          if (v8 == CFDictionaryGetValue(v6, @"kImageIOInfoHeader_pluginHandlesReMapping"))
          {
            v12 = 0;
            v11 = 0;
          }

          else
          {
            Value = CFDictionaryGetValue(v6, @"kImageIOInfoHeader_session");
            v10 = CGImageReadSessionGetRead(Value);
            v11 = v10;
            if (v10)
            {
              v12 = IIOImageRead::mapData(v10);
            }

            else
            {
              v12 = 0;
            }
          }

          v13 = (*(a1 + 240))(*(a1 + 120), *(a1 + 16), a3);
          if (v13 && (gIIODebugFlags & 0xC) != 0)
          {
            *(a1 + 144) = CFAbsoluteTimeGetCurrent() - *(a1 + 144);
            IIOImageProviderInfo::logSurfaceSetDecodingTime(a1);
          }

          v14 = !v12;
          if (!v11)
          {
            v14 = 1;
          }

          if ((v14 & 1) == 0)
          {
            IIOImageRead::unmapData(v11);
          }

          pthread_mutex_unlock((a1 + 152));
          if (v13)
          {
            return v13;
          }

          goto LABEL_25;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    LogFault("copyIOSurfaceSet", 2503, "header '%p' is not a CFDictionary...\n", v6);
    return 0;
  }

  v13 = 0;
LABEL_25:
  if ((gIIODebugFlags & 0x800000000000) != 0)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "copyIOSurfaceSet", 2534, "returned ioSurfaceSet is NULL\n");
    return 0;
  }

  return v13;
}

uint64_t CGImageMetadataValueGetTypeID()
{
  IIOInitDebugFlags();
  v0 = gIIODebugFlags >> 14;
  if (v0 >= 2)
  {
    ImageIODebugOptions(v0, "S", "CGImageMetadataValueGetTypeID", 0, 0, -1, 0);
  }

  if (CGImageMetadataValueGetTypeID::once != -1)
  {
    CGImageMetadataValueGetTypeID_cold_1();
  }

  return CGImageMetadataValueGetTypeID::id;
}

double _CGImageMetadataValueFinalize(void *a1)
{
  v2 = (gIIODebugFlags >> 12) & 3;
  if (v2)
  {
    ImageIODebugOptions(v2, "A", "_CGImageMetadataValueFinalize", 0, 0, -1, 0);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[2] = 0;
  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
  }

  a1[3] = 0;
  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
  }

  a1[4] = 0;
  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
  }

  a1[6] = 0;
  result = 0.0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  return result;
}

CFStringRef _CGImageMetadataCopyDebugDesc(CFTypeRef cf)
{
  v2 = *(cf + 2);
  if (v2)
  {
    v3 = *(cf + 6);
    v4 = CFGetTypeID(v2);
    TypeID = CFStringGetTypeID();
    v6 = TypeID;
    if (v3)
    {
      v7 = CFGetAllocator(cf);
      if (v4 == v6)
      {
        v16 = *(cf + 2);
        ValueAtIndex = CFArrayGetValueAtIndex(*(cf + 6), 0);
        v15 = cf;
        v8 = @"<CGImageMetadataValue %p> (value = %@, qualifier = %@)";
      }

      else
      {
        v15 = cf;
        v8 = @"<CGImageMetadataValue %p> (unimplemented description)";
      }

      return CFStringCreateWithFormat(v7, 0, v8, v15, v16, ValueAtIndex);
    }

    else if (v4 == TypeID)
    {
      v11 = CFGetAllocator(cf);
      return CFStringCreateWithFormat(v11, 0, @"<CGImageMetadataValue %p> (value = %@)", cf, *(cf + 2));
    }

    else
    {
      v12 = CFCopyDescription(*(cf + 2));
      v13 = CFGetAllocator(cf);
      v14 = CFStringCreateWithFormat(v13, 0, @"<CGImageMetadataValue %p> (value = %@)", cf, v12);
      CFRelease(v12);
      return v14;
    }
  }

  else
  {
    v9 = CFGetAllocator(cf);
    return CFStringCreateWithFormat(v9, 0, @"<CGImageMetadataValue %p>  (invalid)", cf);
  }
}

uint64_t __CGImageMetadataValueGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CGImageMetadataValueGetTypeID::id = result;
  return result;
}

uint64_t CGImageMetadataValueGetValue(uint64_t a1)
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageMetadataValueGetValue", 0, 0, -1, 0);
  }

  if (a1)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t CGImageMetadataValueGetQualifiers(uint64_t a1)
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageMetadataValueGetQualifiers", 0, 0, -1, 0);
  }

  if (a1)
  {
    return *(a1 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t WBMPReader::decodeBuffer(WBMPReader *this, vImage_Buffer *a2)
{
  memset(v13, 0, sizeof(v13));
  IIOPixelConverterGray::IIOPixelConverterGray(v13, 6, 1, 1u, 0, 6, 8u, 0, 0);
  height = a2->height;
  width = a2->width;
  v6 = (width + 7) >> 3;
  v8 = *(this + 4);
  v7 = *(this + 5);
  if (v7 + v6 * height <= v8)
  {
    v10 = height;
LABEL_6:
    srcs.data = (*(this + 1) + v7);
    srcs.height = v10;
    srcs.width = width;
    srcs.rowBytes = ((width + 7) >> 3);
    v9 = IIOPixelConverterGray::convert(v13, &srcs, a2);
    goto LABEL_7;
  }

  if (v8 - v7 >= v6)
  {
    v10 = (v8 - v7) / v6;
    a2->height = v10;
    goto LABEL_6;
  }

  v9 = 4294967246;
LABEL_7:
  IIOPixelConverterGray::~IIOPixelConverterGray(v13);
  return v9;
}

void sub_185FE9B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIOPixelConverterGray::~IIOPixelConverterGray(va);
  _Unwind_Resume(a1);
}

CGImageRef CGImageCreateWithWBMPData(const __CFData *a1)
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageCreateWithWBMPData", 0, 0, -1, 0);
  }

  callbacks = *byte_1EF4D5478;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v4 = 0;
  v5 = 0;
  v41 = Length;
  v40[0] = &unk_1EF4D5468;
  v40[1] = BytePtr;
  v6 = Length;
  while (Length != v4)
  {
    v7 = v4 + 1;
    v42 = v4 + 1;
    v8 = BytePtr[v4];
    v9 = v8 & 0x7F | (v5 << 7);
    ++v4;
    v5 = v9;
    if ((v8 & 0x80) == 0)
    {
      if (v9)
      {
        if (v9 != -1)
        {
          _cg_jpeg_mem_term("CGImageCreateWithWBMPData", 163, "*** unsupported WBMP type [%d]\n", v9);
        }
      }

      else
      {
        v10 = 0;
        v11 = v7;
        if (v7 <= Length)
        {
          v12 = Length;
        }

        else
        {
          v12 = v7;
        }

        while (v11 != v12)
        {
          v13 = v11 + 1;
          v14 = BytePtr[v11];
          v15 = v14 & 0x7F | (v10 << 7);
          ++v11;
          v10 = v15;
          if ((v14 & 0x80) == 0)
          {
            if (v15 != -1)
            {
              v16 = 0;
              v17 = v13 + 1;
              if (Length >= v13)
              {
                v18 = Length - v13;
              }

              else
              {
                v18 = 0;
              }

              v19 = &BytePtr[v13];
              while (v18)
              {
                v20 = *v19++;
                v21 = v20 & 0x7F | (v16 << 7);
                ++v17;
                --v18;
                v16 = v21;
                if ((v20 & 0x80) == 0)
                {
                  if (v21 != -1)
                  {
                    v22 = 0;
                    v23 = v17 - 1;
                    if (v23 > Length)
                    {
                      v6 = v17 - 1;
                    }

                    v24 = v23 - v6;
                    v25 = &BytePtr[v23];
                    while (v24)
                    {
                      v42 = v17;
                      v26 = *v25++;
                      v27 = v26 & 0x7F | (v22 << 7);
                      ++v24;
                      ++v17;
                      v22 = v27;
                      if ((v26 & 0x80) == 0)
                      {
                        if (v27 == -1)
                        {
                          return 0;
                        }

                        v28 = v21;
                        v29 = (v21 + 7) & 0x1FFF8;
                        v30 = v27;
                        v31 = malloc_type_malloc(v27 * v29, 0x100004077774924uLL);
                        if (!v31)
                        {
                          return 0;
                        }

                        v32 = v31;
                        memset(v31, 192, (v30 * v29));
                        v39.data = v32;
                        v39.height = v30;
                        v39.width = v28;
                        v39.rowBytes = (v28 + 7) & 0x1FFF8;
                        if (WBMPReader::decodeBuffer(v40, &v39) || (v35 = CGDataProviderCreateDirect(v32, (v30 * v29), &callbacks)) == 0)
                        {
                          free(v32);
                          return 0;
                        }

                        v36 = v35;
                        v37 = 0;
                        space = 0;
                        IIOColorSpace::IIOColorSpace(&v37, *MEMORY[0x1E695F128]);
                        v33 = CGImageCreate(v28, v30, 8uLL, 8uLL, v29, space, 0, v36, 0, 0, kCGRenderingIntentDefault);
                        if (v33)
                        {
                          CGImageSetProperty();
                          CGImageSetProperty();
                          CGImageSetProperty();
                        }

                        CGDataProviderRelease(v36);
                        IIOColorSpace::~IIOColorSpace(&v37);
                        return v33;
                      }
                    }
                  }

                  return 0;
                }
              }
            }

            return 0;
          }
        }
      }

      return 0;
    }
  }

  return 0;
}

void sub_185FE9E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIOColorSpace::~IIOColorSpace(va);
  _Unwind_Resume(a1);
}

size_t (*_cg_TIFFSetErrorHandler(size_t (*a1)(const char *a1, char *a2, va_list a3)))(const char *a1, char *a2, va_list a3)
{
  v1 = _TIFFerrorHandler;
  _TIFFerrorHandler = a1;
  return v1;
}

void *_cg_TIFFSetErrorHandlerExt(void *a1)
{
  v1 = _TIFFerrorHandlerExt;
  _TIFFerrorHandlerExt = a1;
  return v1;
}

uint64_t TIFFErrorExt(uint64_t result, const char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = result;
  if (_TIFFerrorHandler)
  {
    result = _TIFFerrorHandler(a2, a3, &a9);
  }

  if (_TIFFerrorHandlerExt)
  {
    return _TIFFerrorHandlerExt(v11, a2, a3, &a9);
  }

  return result;
}

void *_TIFFErrorEarly(void *result, uint64_t a2, const char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!result || !*result || (result = (*result)(0, result[1], a3, a4, &a9), !result))
  {
    if (_TIFFerrorHandler)
    {
      result = _TIFFerrorHandler(a3, a4, &a9);
    }

    if (_TIFFerrorHandlerExt)
    {
      return _TIFFerrorHandlerExt(a2, a3, a4, &a9);
    }
  }

  return result;
}

uint64_t TIFFErrorExtR(uint64_t result, const char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = result;
  if (!result || !*(result + 1328) || (result = (*(result + 1328))(result, *(result + 1336), a2, a3, &a9), !result))
  {
    if (_TIFFerrorHandler)
    {
      result = _TIFFerrorHandler(a2, a3, &a9);
    }

    if (_TIFFerrorHandlerExt)
    {
      if (v11)
      {
        v12 = *(v11 + 1200);
      }

      else
      {
        v12 = 0;
      }

      return (_TIFFerrorHandlerExt)(v12, a2, a3, &a9);
    }
  }

  return result;
}

uint64_t NotConfigured(uint64_t a1)
{
  *(a1 + 952) = _notConfigured;
  *(a1 + 944) = 0;
  *(a1 + 960) = _notConfigured;
  *(a1 + 984) = 0;
  *(a1 + 976) = _notConfigured;
  return 1;
}

char **_cg_TIFFIsCODECConfigured(int a1)
{
  result = _cg_TIFFFindCODEC(a1);
  if (result)
  {
    v2 = result[2];
    if (v2)
    {
      return (v2 != NotConfigured);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _notConfigured(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = _cg_TIFFFindCODEC(*(a1 + 120));
  *__str = 0;
  v11 = 0;
  v12 = 0;
  v3 = __str;
  snprintf(__str, 0x14uLL, "%hu", *(a1 + 120));
  if (v2)
  {
    v3 = *v2;
  }

  TIFFErrorExtR(a1, *a1, "%s compression support is not configured", v4, v5, v6, v7, v8, v3);
  return 0;
}

const void *CGImageCreateByConvertingExtendedSRGBToColorspace(CGImage *a1, CGColorSpace *a2, IIODictionary *this)
{
  Uint32ForKey = IIODictionary::getUint32ForKey(this, @"kCGImagePreferredColorConversionMode");
  v7 = Uint32ForKey;
  v8 = gIIODebugFlags;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  CGImageCreateByConvertingExtendedSRGBToColorspace (mode: %d)\n", Uint32ForKey);
    v8 = gIIODebugFlags;
  }

  if ((v8 & 0x400000000) != 0)
  {
    ImageIOLog("    %s\n", "CGImageCreateByConvertingExtendedSRGBToColorspace");
  }

  Current = CFAbsoluteTimeGetCurrent();
  if ((CGImageCreateByConvertingExtendedSRGBToColorspace(CGImage *,CGColorSpace *,IIODictionary *)::gUseColorConversionCA & 1) == 0 && IIOIsAppSuspended())
  {
    CGImageCreateByConvertingExtendedSRGBToColorspace(CGImage *,CGColorSpace *,IIODictionary *)::gUseColorConversionCA = 1;
  }

  if (v7 == 3)
  {
    CGImageCreateByConvertingExtendedSRGBToColorspace_vImage(a1, a2, this);
  }

  if (CGImageCreateByConvertingExtendedSRGBToColorspace(CGImage *,CGColorSpace *,IIODictionary *)::gUseColorConversionCA)
  {
    goto LABEL_50;
  }

  v10 = 1111970369;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if (this)
  {
    if (IIODictionary::containsKey(this, @"Depth"))
    {
      v16 = IIODictionary::getUint32ForKey(this, @"Depth");
      v10 = v16 == 16 ? 1380411457 : 1111970369;
      v17 = 4 * (v16 / 8);
    }

    else
    {
      v17 = 4;
    }

    ObjectForKey = IIODictionary::getObjectForKey(this, @"backgroundColor");
  }

  else
  {
    ObjectForKey = 0;
    v17 = 4;
  }

  IOSurfaceWithFormat = IIO_CreateIOSurfaceWithFormat(Width, Height, (v17 * Width + 15) & 0xFFFFFFFFFFFFFFF0, v10, 1, v12, v13, v14);
  if (IOSurfaceWithFormat)
  {
    v20 = IOSurfaceWithFormat;
    v52 = 0;
    v53 = 0;
    IIOColorSpace::IIOColorSpace(&v52, *MEMORY[0x1E695F0B8]);
    IIO_IOSurfaceAddColorSpace(v20, v53);
    IOSurfaceContext = IIO_CreateIOSurfaceContext(v20, v53);
    v22 = IOSurfaceContext;
    if (!IOSurfaceContext)
    {
      goto LABEL_82;
    }

    if (ObjectForKey)
    {
      CGContextSetFillColorWithColor(IOSurfaceContext, ObjectForKey);
      v23 = Width;
      v24 = Height;
      v54.origin.x = 0.0;
      v54.origin.y = 0.0;
      v54.size.width = Width;
      v54.size.height = Height;
      CGContextFillRect(v22, v54);
    }

    else
    {
      CGContextClear();
      v23 = Width;
      v24 = Height;
    }

    v55.origin.x = 0.0;
    v55.origin.y = 0.0;
    v55.size.width = v23;
    v55.size.height = v24;
    CGContextDrawImage(v22, v55, a1);
    CGContextFlush(v22);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    IIODictionary::IIODictionary(&v49);
    AlphaInfo = CGImageGetAlphaInfo(a1);
    IIONumber::IIONumber(v48, AlphaInfo);
    IIODictionary::setObjectForKey(&v49, v48, @"CGImageAlphaInfo");
    IIONumber::~IIONumber(v48);
    v25 = CGImageCreateFromIOSurface(v20, v50);
    CGContextRelease(v22);
    IIODictionary::~IIODictionary(&v49);
    if (v25)
    {
      CFRelease(v20);
    }

    else
    {
LABEL_82:
      if ((*(MEMORY[0x1E69E9830] + 4 * HIBYTE(v10) + 60) & 0x40000) != 0)
      {
        v27 = HIBYTE(v10);
      }

      else
      {
        v27 = 46;
      }

      LODWORD(v28) = (v10 << 8) >> 24;
      if (v28 <= 0x7F)
      {
        v29 = *(MEMORY[0x1E69E9830] + 4 * v28 + 60) & 0x40000;
      }

      else
      {
        v29 = __maskrune((v10 << 8) >> 24, 0x40000uLL);
      }

      if (v29)
      {
        v28 = v28;
      }

      else
      {
        v28 = 46;
      }

      v30 = v10 >> 8;
      if (v30 <= 0x7F)
      {
        v32 = MEMORY[0x1E69E9830];
        v31 = *(MEMORY[0x1E69E9830] + 4 * v30 + 60) & 0x40000;
      }

      else
      {
        v31 = __maskrune(v30, 0x40000uLL);
        v32 = MEMORY[0x1E69E9830];
      }

      if (v31)
      {
        v33 = v30;
      }

      else
      {
        v33 = 46;
      }

      v34 = 65;
      if ((*(v32 + 320) & 0x40000) == 0)
      {
        v34 = 46;
      }

      _cg_jpeg_mem_term("CGImageCreateByConvertingExtendedSRGBToColorspace_CA", 170, "CGImageCreateFromIOSurface failed to create a CGImage from a '%c%c%c%c' surface\n", v27, v28, v33, v34);
      IIO_IOSurfaceRelease(v20);
      v25 = 0;
    }

    IIOColorSpace::~IIOColorSpace(&v52);
  }

  else
  {
    v25 = 0;
  }

  v35 = MEMORY[0x1E69E9830];
  if ((gIIODebugFlags & 0x8000300000) != 0)
  {
    ImageIOLog("COL %s:%d - CoreAnimation  [%p]\n", "CGImageCreateByConvertingExtendedSRGBToColorspace", 468, v25);
  }

  if (!v25)
  {
LABEL_50:
    CGImageCreateByConvertingExtendedSRGBToColorspace_vImage(a1, a2, this);
  }

  v36 = gIIODebugFlags;
  if ((gIIODebugFlags & 0x20000000000) != 0)
  {
    v37 = (CFAbsoluteTimeGetCurrent() - Current) * 1000.0;
    if ((v35[82] & 0x40000) != 0)
    {
      v38 = 67;
    }

    else
    {
      v38 = 46;
    }

    if ((v35[80] & 0x40000) != 0)
    {
      v39 = 65;
    }

    else
    {
      v39 = 46;
    }

    if ((v35[47] & 0x40000) != 0)
    {
      v40 = 32;
    }

    else
    {
      v40 = 46;
    }

    if ((v35[47] & 0x40000) != 0)
    {
      v41 = 32;
    }

    else
    {
      v41 = 46;
    }

    ImageIOLog("    CGImageCreateByConvertingExtendedSRGBToColorspace - %g ms [%c%c%c%c]\n", v37, v38, v39, v40, v41);
    v36 = gIIODebugFlags;
  }

  if ((v36 & 0x8000300000) != 0)
  {
    v42 = (CFAbsoluteTimeGetCurrent() - Current) * 1000.0;
    if ((v35[82] & 0x40000) != 0)
    {
      v43 = 67;
    }

    else
    {
      v43 = 46;
    }

    if ((v35[80] & 0x40000) != 0)
    {
      v44 = 65;
    }

    else
    {
      v44 = 46;
    }

    if ((v35[47] & 0x40000) != 0)
    {
      v45 = 32;
    }

    else
    {
      v45 = 46;
    }

    if ((v35[47] & 0x40000) != 0)
    {
      v46 = 32;
    }

    else
    {
      v46 = 46;
    }

    ImageIOLog("COL %s - time: %gms [%c%c%c%c]\n", "CGImageCreateByConvertingExtendedSRGBToColorspace", v42, v43, v44, v45, v46);
  }

  return v25;
}

void sub_185FEA9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  IIOColorSpace::~IIOColorSpace(va2);
  _Unwind_Resume(a1);
}

void CGImageCreateByConvertingExtendedSRGBToColorspace_vImage(CGImage *a1, CGColorSpace *a2, IIODictionary *a3)
{
  ColorSpace = CGImageGetColorSpace(a1);
  BitmapInfo = CGImageGetBitmapInfo(a1);
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  if ((BitmapInfo & 0x1F) != 0)
  {
    v9 = BitsPerPixel;
  }

  else
  {
    v9 = 48;
  }

  if ((BitmapInfo & 0x1F) != 0)
  {
    v10 = BitmapInfo & 0x1F;
  }

  else
  {
    v10 = 5;
  }

  v14.bitsPerComponent = BitsPerComponent;
  v14.bitsPerPixel = v9;
  v14.colorSpace = ColorSpace;
  v14.bitmapInfo = BitmapInfo & 0x701F | 0x100;
  memset(&v14.version, 0, 20);
  *&v13.bitsPerComponent = 0x4000000010;
  v13.colorSpace = a2;
  v13.bitmapInfo = v10 | 0x1100;
  memset(&v13.version, 0, 20);
  v12[0] = 0;
  v12[1] = 0;
  IIOColorSpace::IIOColorSpace(v12, *MEMORY[0x1E695F1C0]);
  v11[0] = 0;
  v11[1] = 0;
  IIOColorSpace::IIOColorSpace(v11, *MEMORY[0x1E695F0B8]);
  operator new();
}

void sub_185FEB19C(_Unwind_Exception *a1)
{
  IIOColorSpace::~IIOColorSpace((v1 - 200));
  IIOColorSpace::~IIOColorSpace((v1 - 184));
  _Unwind_Resume(a1);
}

CGImage *CGImageCreateCopyWithParametersNew(CGImageRef image, CGColor *a2, CGAffineTransform *a3, unint64_t a4, unint64_t a5, unint64_t a6, size_t a7, unint64_t a8, CGColorSpace *a9, CGBitmapInfo a10, BOOL a11, CGColorRenderingIntent a12, CGInterpolationQuality a13, BOOL a14)
{
  if ((gIIODebugFlags & 0x400000000) != 0)
  {
    ImageIOLog("    %s\n", "CGImageCreateCopyWithParametersNew");
  }

  CGImageGetColorSpace(image);
  v19 = CGColorSpaceRetain(a9);
  v20 = ((a7 >> 3) * a4 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a8)
  {
    v20 = a8;
  }

  v61 = v20;
  if (!a4 || !a5)
  {
    _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 548, "*** ERROR: bad dimension: %dx%d\n");
LABEL_30:
    if (!v19)
    {
      return 0;
    }

    goto LABEL_156;
  }

  if (!image)
  {
    CGImageCreateCopyWithParametersNew();
    if (!v19)
    {
      return 0;
    }

    goto LABEL_156;
  }

  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  if (a6 > 0x20 || ((1 << a6) & 0x100010100) == 0)
  {
    _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 551, "*** ERROR: bad bitsPerComponent '%d'\n");
    goto LABEL_30;
  }

  if (!v19)
  {
    CGImageCreateCopyWithParametersNew();
    return 0;
  }

  v57 = Height;
  v23 = a10 & 0x1F;
  if (_GetMinimalPixelSize(v19, a6, v23) > a7)
  {
    _GetMinimalPixelSize(v19, a6, a10 & 0x1F);
    _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 553, "*** ERROR: bpp: %d   minPixelSize: %d");
    goto LABEL_156;
  }

  if (v61 < (a7 * a4 + 7) >> 3)
  {
    _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 554, "*** ERROR: bad bytesPerRow %d for width: %d bpc: %d\n");
    goto LABEL_156;
  }

  if (CGColorSpaceGetType() == 7)
  {
    CGImageCreateCopyWithParametersNew();
    goto LABEL_156;
  }

  if (!_ValidAlphaInfo(a6, a7, v19, a10 & 0x1F))
  {
    _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 556, "*** ERROR: bad bpc:%d bpp:%d alpha:%d\n");
    goto LABEL_156;
  }

  v56 = Width;
  v24 = CGColorSpaceUsesExtendedRange(v19);
  if (a6 <= 0xF && v24)
  {
    _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 560, "*** ERROR: dstColorSpace is extended, but requested bitsPerComponent is '%d'\n", a6);
  }

  v25 = a10 & 0xFFFFFFE0;
  Model = CGColorSpaceGetModel(v19);
  v27 = Model;
  if (Model == kCGColorSpaceModelRGB)
  {
    if ((a10 & 0x100) == 0)
    {
      v54 = a8;
      if (a6 == 8 && a7 == 24 && (a10 & 0x1F) == 0)
      {
        goto LABEL_23;
      }

      if (a7 == 32 && a6 == 8 && v23 == 4)
      {
        v28 = v25 | 2;
        goto LABEL_70;
      }

      if (a7 == 32 && a6 == 8 && v23 == 3)
      {
        goto LABEL_61;
      }

      if (a7 == 32 && a6 == 8 && v23 == 6 || a7 == 32 && a6 == 8 && v23 == 5)
      {
        v55 = 32;
        v60 = 0;
        LODWORD(a7) = 32;
LABEL_80:
        v28 = a10;
        goto LABEL_81;
      }

      if (a6 == 16 && a7 == 48 && (a10 & 0x1F) == 0)
      {
LABEL_23:
        v28 = a10 | 5;
LABEL_72:
        v55 = a7;
        v60 = 0;
        LODWORD(a7) = 4 * a6;
        v61 = (((4 * a6 * a4) >> 3) + 15) & 0x3FFFFFFFFFFFFFF0;
        goto LABEL_81;
      }

      if (a7 != 64 || a6 != 16 || v23 != 6)
      {
        if (v23 == 3 && a6 == 16 && a7 == 64)
        {
          v28 = v25 + 1;
        }

        else
        {
          v28 = a10;
        }

LABEL_70:
        if (v28 != a10)
        {
          goto LABEL_72;
        }

        goto LABEL_71;
      }

LABEL_69:
      v28 = v25 | 5;
      goto LABEL_70;
    }

    if (a6 == 16 || a6 == 32)
    {
      if (v23 - 1 < 4)
      {
        if (a7 == 64 || a7 == 128)
        {
          v54 = a8;
LABEL_61:
          v28 = v25 | 1;
          goto LABEL_70;
        }

        _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 589, "*** ERROR: bitsPerPixel: %d alphaInfo:%d\n");
        goto LABEL_156;
      }

      if (v23 - 5 >= 2)
      {
        if ((a10 & 0x1F) != 0)
        {
          v54 = a8;
LABEL_71:
          v60 = 0;
          v28 = a10;
          v55 = a7;
          goto LABEL_81;
        }

        if (a7 != 48 && a7 != 96)
        {
          _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 581, "*** ERROR: bitsPerPixel: %d alphaInfo:%d\n");
          goto LABEL_156;
        }
      }

      else if (a7 != 64 && a7 != 128)
      {
        _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 594, "*** ERROR: bitsPerPixel: %d alphaInfo:%d\n");
LABEL_156:
        CGColorSpaceRelease(v19);
        return 0;
      }

      v54 = a8;
      goto LABEL_69;
    }

    _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 576, "*** ERROR: bitsPerPixel: %d alphaInfo:%d\n");
    goto LABEL_156;
  }

  v54 = a8;
  v55 = a7;
  if (Model == kCGColorSpaceModelCMYK)
  {
    v60 = 0;
    if (a6 != 8 || a7 != 40)
    {
      goto LABEL_80;
    }

    v28 = a10;
    if (v23 - 1 <= 3)
    {
      v61 = (4 * (a4 & 0x7FFFFFFFFFFFFFFLL) + 15) & 0x3FFFFFFFFFFFFFF0;
      v60 = 1;
      LODWORD(a7) = 40;
LABEL_52:
      v28 = a10 & 0xFFFFFFE0;
    }
  }

  else if (a6 == 8 && a7 == 16 && Model == kCGColorSpaceModelMonochrome)
  {
    if (v23 - 1 >= 4)
    {
      v28 = a10;
      if (v23 - 5 < 2)
      {
        v28 = v25 | 5;
      }
    }

    else
    {
      v28 = v25 | 1;
    }

    v60 = 0;
    v61 = (2 * a4 + 15) & 0xFFFFFFFFFFFFFFF0;
    LODWORD(a7) = 16;
  }

  else
  {
    v60 = 0;
    if (a6 != 16 || a7 != 32 || (a10 & 0x1F) == 0)
    {
      goto LABEL_80;
    }

    v28 = a10;
    if (Model == kCGColorSpaceModelMonochrome)
    {
      v61 = (4 * a4 + 15) & 0xFFFFFFFFFFFFFFF0;
      v60 = 1;
      LODWORD(a7) = 32;
      goto LABEL_52;
    }
  }

LABEL_81:
  if (!CGColorSpaceEqualToColorSpace() || CGColorSpaceSupportsOutput(v19))
  {
    goto LABEL_83;
  }

  if (v27)
  {
    if (v27 == kCGColorSpaceModelRGB)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
    }

    else
    {
      if (v27 != kCGColorSpaceModelCMYK)
      {
LABEL_83:
        CopyWithColorSpace = 0;
        v30 = 0;
        goto LABEL_84;
      }

      DeviceRGB = CGColorSpaceCreateDeviceCMYK();
    }
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceGray();
  }

  v30 = DeviceRGB;
  if (DeviceRGB)
  {
    CopyWithColorSpace = CGImageCreateCopyWithColorSpace(image, DeviceRGB);
  }

  else
  {
    CopyWithColorSpace = 0;
  }

LABEL_84:
  if (v60)
  {
    v31 = CGBitmapContextCreateWithAlpha();
    if (!v31)
    {
      _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 716, "*** ERROR: CGBitmapContextCreateWithAlpha returned NULL\n", 0);
    }

    v32 = a2;
    if ((gIIODebugFlags & 0x400000000) != 0)
    {
      fwrite("\nCGImageCreateCopyWithParametersNew - CGBitmapContextCreateWithAlpha\n", 0x45uLL, 1uLL, *MEMORY[0x1E69E9848]);
    }
  }

  else
  {
    v33 = 64;
    if (a6 == 8)
    {
      v33 = 32;
    }

    if (v27 == kCGColorSpaceModelCMYK)
    {
      v34 = 0;
    }

    else
    {
      v34 = v28;
    }

    v35 = v61;
    if (v27 == kCGColorSpaceModelCMYK && v28 != 0)
    {
      v35 = (v33 >> 3) * a4;
      v36 = v33;
    }

    else
    {
      v36 = a7;
    }

    if (a14)
    {
      v37 = v34;
    }

    else
    {
      v37 = v34 | 0x1000;
    }

    if (a6 != 16)
    {
      v37 = v34;
    }

    if (a6 == 32)
    {
      v38 = v37 | 0x100;
    }

    else
    {
      v38 = v37;
    }

    v61 = v35;
    v31 = CGBitmapContextCreateWithDictionary();
    if (!v31)
    {
      _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 776, "*** ERROR: CGBitmapContextCreateWithDictionary returned NULL\n", 0);
      v39 = IIO_BitmapInfoString(v38);
      _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 777, "           size: %d x %d  rb: %d   bpc: %d   bpp: %d   bmi: %04X (%s)\n", a4, a5, v61, a6, v36, v38, v39);
    }

    v32 = a2;
    if ((gIIODebugFlags & 0x400000000) != 0)
    {
      fwrite("\nCGImageCreateCopyWithParametersNew - CGBitmapContextCreateWithDictionary\n", 0x4AuLL, 1uLL, *MEMORY[0x1E69E9848]);
    }

    if (!v30 && CGColorSpaceUsesITUR_2100TF(v19))
    {
      CGImageGetContentHeadroom();
      CGContextSetEDRTargetHeadroom();
    }
  }

  if (v31)
  {
    v40 = a4;
    v41 = a5;
    if (v32)
    {
      Data = CGBitmapContextGetData(v31);
      if (CGColorGetAlpha(v32) != 1.0)
      {
        memset(Data, 255, v61 * a5);
      }

      CGContextSetFillColorWithColor(v31, v32);
      v64.origin.x = 0.0;
      v64.origin.y = 0.0;
      v64.size.width = v40;
      v64.size.height = a5;
      CGContextFillRect(v31, v64);
    }

    else
    {
      v65.origin.x = 0.0;
      v65.origin.y = 0.0;
      v65.size.width = a4;
      v65.size.height = a5;
      CGContextClearRect(v31, v65);
    }

    CGContextSetInterpolationQuality(v31, a13);
    if (a3->a != 0.0 || a3->b != 0.0 || a3->c != 0.0 || a3->d != 0.0)
    {
      v40 = v56;
      v41 = v57;
      v43 = *&a3->c;
      *&transform.a = *&a3->a;
      *&transform.c = v43;
      *&transform.tx = *&a3->tx;
      CGContextConcatCTM(v31, &transform);
    }

    if (CopyWithColorSpace)
    {
      v44 = CopyWithColorSpace;
    }

    else
    {
      v44 = image;
    }

    v66.origin.x = 0.0;
    v66.origin.y = 0.0;
    v66.size.width = v40;
    v66.size.height = v41;
    CGContextDrawImage(v31, v66, v44);
    if (CGImageGetImageProvider() && (v45 = *MEMORY[0x1E695E4D0], v45 == CGImageProviderGetProperty()))
    {
      LogError("CGImageCreateCopyWithParametersNew", 836, "*** ERROR: image decode failed due to 'kCMPhotoError_XPCError'\n");
    }

    else
    {
      v46 = CGBitmapContextCreateImage(v31);
      if (v46)
      {
        v47 = v46;
        if ((gIIODebugFlags & 0x400000000) != 0)
        {
          fwrite("\nCGBitmapContextCreateImage:\n", 0x1DuLL, 1uLL, *MEMORY[0x1E69E9848]);
        }

        CGImageSetProperty();
        CGImageSetProperty();
        v48 = CGImageCreateCopyWithColorSpace(v47, v19);
        if ((gIIODebugFlags & 0x400000000) != 0)
        {
          fwrite("\nCGImageCreateCopyWithColorSpace:\n", 0x22uLL, 1uLL, *MEMORY[0x1E69E9848]);
        }

        CGImageRelease(v47);
        if (v48)
        {
          if (!v60 || (CopyWithBitmapInfo = CGImageCreateCopyWithBitmapInfo(v48, 0, v55, v54, a10, a11, a12), CFRelease(v48), (v48 = CopyWithBitmapInfo) != 0))
          {
            CGImageSetProperty();
          }
        }

        else
        {
          CGImageCreateCopyWithParametersNew();
        }

        goto LABEL_141;
      }

      CGImageCreateCopyWithParametersNew();
    }
  }

  else
  {
    CGImageCreateCopyWithParametersNew();
  }

  v48 = 0;
LABEL_141:
  CGColorSpaceRelease(v19);
  if (v30)
  {
    CGColorSpaceRelease(v30);
  }

  if (CopyWithColorSpace)
  {
    CGImageRelease(CopyWithColorSpace);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v48;
}

CGImage *CGImageCreateCopyWithParameters(CGImage *a1, CGColor *a2, _OWORD *a3, unint64_t a4, unint64_t a5, unint64_t a6, size_t a7, unint64_t a8, CGColorSpace *a9, CGBitmapInfo a10, BOOL a11, CGColorRenderingIntent a12)
{
  kdebug_trace();
  IIOInitDebugFlags();
  v18 = gIIODebugFlags;
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageCreateCopyWithParameters", 0, 0, -1, 0);
    v18 = gIIODebugFlags;
  }

  if ((v18 & 0x400000000) != 0)
  {
    ImageIOLog("    %s\n", "CGImageCreateCopyWithParameters");
  }

  v19 = a3[1];
  *&v24.a = *a3;
  *&v24.c = v19;
  *&v24.tx = a3[2];
  v20 = CGImageCreateCopyWithParametersNew(a1, a2, &v24, a4, a5, a6, a7, a8, a9, a10, a11, a12, kCGInterpolationDefault, 0);
  kdebug_trace();
  return v20;
}

CGImage *CGImageCreateThumb(CGImage *a1, unint64_t a2)
{
  if ((gIIODebugFlags & 0x400000000) != 0)
  {
    ImageIOLog("    %s\n", "CGImageCreateThumb");
  }

  kdebug_trace();
  ThumbNew = CGImageCreateThumbNew(a1, a2, 0, -1, 1);
  kdebug_trace();
  return ThumbNew;
}

CGImage *CGImageCreateThumbNew(CGImage *a1, unint64_t a2, unsigned int a3, int a4, int a5)
{
  v107 = *MEMORY[0x1E69E9840];
  IIOInitDebugFlags();
  v9 = gIIODebugFlags;
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageCreateThumbNew", 0, 0, -1, 0);
    v9 = gIIODebugFlags;
  }

  if ((v9 & 0x400000000) != 0)
  {
    ImageIOLog("    %s\n", "CGImageCreateThumbNew");
  }

  v65 = 0;
  v64 = *(MEMORY[0x1E695EFD0] + 8);
  v56 = a5 == 2;
  v62 = 0;
  space = 0;
  v10 = *MEMORY[0x1E695F1C0];
  IIOColorSpace::IIOColorSpace(&v62, *MEMORY[0x1E695F1C0]);
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  if (!a1)
  {
    _cg_jpeg_mem_term("CGImageCreateThumbNew", 989, "*** ERROR: CGImageCreateThumbNew - input image is NULL\n");
LABEL_92:
    v51 = 0;
    goto LABEL_87;
  }

  if (!a2)
  {
    _cg_jpeg_mem_term("CGImageCreateThumbNew", 990, "*** ERROR: CGImageCreateThumbNew - maxSize is 0\n");
    goto LABEL_92;
  }

  v12 = BitsPerComponent;
  ColorSpace = CGImageGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  Type = CGColorSpaceGetType();
  RenderingIntent = CGImageGetRenderingIntent(a1);
  IsOpaque = _ImageIsOpaque(a1);
  v57 = _ImageAlphaPosition(a1);
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  *v19.i32 = a2;
  if (Width <= Height)
  {
    v20 = Height;
  }

  else
  {
    v20 = Width;
  }

  v18.f32[0] = *v19.i32 / v20;
  v21.i64[0] = Height;
  v21.i64[1] = Width;
  v22 = vextq_s8(v21, v21, 8uLL);
  v23 = vrev64_s32(vmovn_s64(vcgtq_u64(v22, v21)));
  v24 = vcvt_f32_f64(vcvtq_f64_u64(v22));
  v25 = vdupq_n_s64(a2);
  v26 = vcvtq_u64_f64(vcvtq_f64_f32(vbsl_s8(v23, vrndm_f32(vmul_n_f32(v24, v18.f32[0])), vdup_lane_s32(v19, 0))));
  v27 = vbslq_s8(vcgtq_u64(v25, v26), v26, v25);
  v28 = vcgtq_u64(v27, vdupq_n_s64(1uLL));
  v29 = vsubq_s64(vandq_s8(v27, v28), vmvnq_s8(v28));
  if (a3 - 9 > 0xFFFFFFF7)
  {
    v66.a = v18.f32[0];
    if (a3 <= 4)
    {
      v37 = v29.i64[0];
    }

    else
    {
      v37 = v29.u64[1];
    }

    if (a3 <= 4)
    {
      v38 = v29.u64[1];
    }

    else
    {
      v38 = v29.i64[0];
    }

    v66.b = 0.0;
    v66.c = 0.0;
    v66.d = v18.f32[0];
    v66.tx = 0.0;
    v66.ty = 0.0;
    v67 = -v18.f32[0];
    v68 = 0;
    v69 = 0;
    v70 = v18.f32[0];
    v71 = v37;
    v72 = 0;
    v73 = v67;
    v74 = 0;
    v75 = 0;
    v76 = v67;
    v77 = v37;
    v78 = v38;
    v79 = v18.f32[0];
    v80 = 0;
    v81 = 0;
    v82 = v67;
    v83 = 0;
    v84 = v38;
    v85 = 0;
    v86 = v67;
    v87 = v67;
    v88 = 0;
    v89 = v37;
    v90 = v38;
    v91 = 0;
    v92 = v67;
    v93 = v18.f32[0];
    v94 = 0;
    v95 = 0;
    v96 = v38;
    v97 = 0;
    v98 = v18.f32[0];
    v99 = v18.f32[0];
    v100 = 0u;
    v101 = 0u;
    v102 = v18.f32[0];
    v103 = v67;
    v104 = 0;
    v105 = v37;
    v106 = 0;
    v40 = &v66 + a3 - 1;
    a = v40->a;
    v64 = *&v40->b;
    d = v40->d;
    v60 = *&v40->tx;
  }

  else
  {
    a = v18.f32[0];
    v31 = vcvtq_f64_f32(vmls_lane_f32(vcvt_f32_f64(vcvtq_f64_u64(v29)), v24, v18, 0));
    __asm { FMOV            V1.2D, #0.5 }

    v60 = vmulq_f64(v31, _Q1);
    v38 = v29.u64[1];
    v37 = v29.i64[0];
    d = a;
  }

  if (a5 == 1)
  {
    v65 = CGColorSpaceRetain(space);
    AlphaInfo = CGImageGetAlphaInfo(a1);
    v42 = 0;
    v43 = 0;
    if (AlphaInfo)
    {
      v44 = AlphaInfo;
    }

    else
    {
      v44 = 5;
    }

    goto LABEL_23;
  }

  if (Model != kCGColorSpaceModelCMYK)
  {
    if (Model == kCGColorSpaceModelMonochrome)
    {
      if (IsOpaque)
      {
        v45 = 1;
      }

      else
      {
        v45 = 2;
      }

      v44 = !IsOpaque;
      if (a5 != 2)
      {
        v46 = CGColorSpaceRetain(ColorSpace);
        v42 = 0;
        v43 = 0;
        v65 = v46;
        goto LABEL_73;
      }

      v65 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
      if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
      {
        ImageIOLog("COL converting to GenericGrayGamma2.2\n");
      }

      v43 = 0;
      goto LABEL_62;
    }

    if (Model != kCGColorSpaceModelRGB || Type == 7)
    {
      v43 = 0;
      v65 = CGColorSpaceRetain(ColorSpace);
      v48 = v56;
      goto LABEL_57;
    }

    if (a5 != 2)
    {
      v49 = CGColorSpaceRetain(ColorSpace);
      v43 = 0;
      v48 = 0;
      v65 = v49;
      goto LABEL_57;
    }

    if (IIO_CGColorSpaceNameMatchesName(ColorSpace, v10))
    {
      v65 = CGColorSpaceRetain(space);
      if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
      {
        ImageIOLog("COL original image is sRGB - not converting\n");
      }
    }

    else
    {
      if (!CGImageIsOptimizedForSharing())
      {
        if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
        {
          ImageIOLog("COL image is outside sRGB - trying to use poppy profile\n");
        }

        v43 = IIO_CreateOutputPoppyProfileForImage(0, a1, &v65);
        if (!v65)
        {
          v65 = CGColorSpaceRetain(space);
          if ((gIIODebugFlags & 0x8000300000) != 0)
          {
            ImageIOLog("COL failed to create poppy profile - falling back to sRGB\n");
          }
        }

        v48 = 1;
LABEL_57:
        if (v57 == -1)
        {
          if (IsOpaque)
          {
            v44 = 6;
          }

          else
          {
            v44 = 2;
          }

          v45 = 4;
          if (v48)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (IsOpaque)
          {
            v44 = 5;
          }

          else
          {
            v44 = 1;
          }

          v45 = 4;
          if (v48)
          {
            goto LABEL_62;
          }
        }

        v42 = 0;
        goto LABEL_73;
      }

      v50 = CGImageGetColorSpace(a1);
      v65 = CFRetain(v50);
      if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
      {
        ImageIOLog("COL original image is already poppy - not converting\n");
      }
    }

    v43 = 0;
    v48 = 0;
    goto LABEL_57;
  }

  if (a5 != 2)
  {
    v47 = CGColorSpaceRetain(ColorSpace);
    v44 = 0;
    v42 = 0;
    v43 = 0;
    v65 = v47;
LABEL_23:
    v45 = 4;
    goto LABEL_73;
  }

  v65 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F118]);
  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    ImageIOLog("COL converting to GenericCMYK\n");
  }

  v44 = 0;
  v43 = 0;
  v45 = 4;
LABEL_62:
  if (a4 == -1)
  {
    if (CGImageGetBitsPerComponent(a1) > 0xF)
    {
      v42 = 1;
      v12 = 16;
      goto LABEL_73;
    }

    v12 = CGImageGetBitsPerComponent(a1);
  }

  else
  {
    v12 = a4;
  }

  v42 = 1;
LABEL_73:
  v66.a = a;
  *&v66.b = v64;
  v66.d = d;
  *&v66.tx = v60;
  v51 = CGImageCreateCopyWithParametersNew(a1, 0, &v66, v37, v38, v12, v12 * v45, v45 * v37 * (v12 >> 3), v65, v44, 1, RenderingIntent, kCGInterpolationDefault, v42);
  v52 = !v42;
  if (!v51)
  {
    v52 = 1;
  }

  if ((v52 & 1) == 0 && v43)
  {
    InputColorSpaceForOutputPoppyProfile = IIO_CreateInputColorSpaceForOutputPoppyProfile();
    if (InputColorSpaceForOutputPoppyProfile)
    {
      if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
      {
        ImageIOLog("COL created  profile 'Apple Wide Color Sharing Profile'\n");
      }

      CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v51, InputColorSpaceForOutputPoppyProfile);
      if (CopyWithColorSpace)
      {
        CGImageRelease(v51);
      }

      else
      {
        CopyWithColorSpace = v51;
      }

      CGColorSpaceRelease(InputColorSpaceForOutputPoppyProfile);
      v51 = CopyWithColorSpace;
    }

    goto LABEL_86;
  }

  if (v43)
  {
LABEL_86:
    CFRelease(v43);
  }

LABEL_87:
  if (v65)
  {
    CGColorSpaceRelease(v65);
  }

  IIOColorSpace::~IIOColorSpace(&v62);
  return v51;
}

void sub_185FEC650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  IIOColorSpace::~IIOColorSpace(va);
  _Unwind_Resume(a1);
}

CGImage *CGImageCreateByScaling(CGImage *a1, unint64_t a2, size_t a3, CGInterpolationQuality a4)
{
  IIOPackImageDesc(a1);
  if (a1)
  {
    CGImageGetWidth(a1);
    CGImageGetHeight(a1);
  }

  kdebug_trace();
  IIOInitDebugFlags();
  v7 = gIIODebugFlags;
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageCreateByScaling", 0, 0, -1, 0);
    v7 = gIIODebugFlags;
  }

  if ((v7 & 0x400000000) != 0)
  {
    ImageIOLog("    %s\n", "CGImageCreateByScaling");
  }

  if (!a1)
  {
    CGImageCreateByScaling_cold_2();
LABEL_64:
    v39 = 0;
    goto LABEL_59;
  }

  v8 = CFGetTypeID(a1);
  if (v8 != CGImageGetTypeID())
  {
    CGImageCreateByScaling_cold_1();
    goto LABEL_64;
  }

  if (!a2 || !a3)
  {
    _cg_jpeg_mem_term("CGImageCreateByScaling", 1271, "*** ERROR: bad image size: %ld x %ld\n", a2, a3);
    goto LABEL_64;
  }

  ColorSpace = CGImageGetColorSpace(a1);
  if (!ColorSpace)
  {
    LogError("CGImageCreateByScaling", 1275, "*** ERROR: cannot get the colorSpace of the input image (%p)\n", a1);
    goto LABEL_64;
  }

  BaseColorSpace = ColorSpace;
  count = a3;
  Model = CGColorSpaceGetModel(ColorSpace);
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  BytesPerRow = CGImageGetBytesPerRow(a1);
  bitmapInfo = CGImageGetBitmapInfo(a1);
  CGImageGetAlphaInfo(a1);
  ImageProvider = CGImageGetImageProvider();
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  CGColorSpaceGetNumberOfComponents(BaseColorSpace);
  v15 = 0;
  if (a4 != kCGInterpolationNone && Model <= kCGColorSpaceModelRGB)
  {
    v16 = gCrashMessage;
    v17 = CGImageGetImageProvider();
    v18 = "IP";
    if (!v17)
    {
      v18 = "DP";
    }

    snprintf(v16, 0x200uLL, "ImageIO: CGImageCreateByScaling: srcImage-(%s): w=%d  h=%d  rb=%d  bmi=0x%08x  bpc=%d  bpp=%d  csm=%d    dstW=%d  dstH=%d\n", v18, Width, Height, BytesPerRow, bitmapInfo, BitsPerComponent, BitsPerPixel, Model, a2, count);
    qword_1ED5688A0 = gCrashMessage;
    if (ImageProvider)
    {
      memset(&v47, 0, 24);
      IIODictionary::IIODictionary(&v47);
      IIODictionary::setObjectForKey(&v47, *MEMORY[0x1E695E4D0], *MEMORY[0x1E695F298]);
      v15 = CGImageProviderCopyImageBlockSetWithOptions();
      if (v15 && CGImageBlockSetGetCount() == 1 && CGImageBlockSetGetImageBlock())
      {
        CGImageBlockSetGetPixelSize();
        CGImageBlockGetBytesPerRow();
        operator new();
      }

      IIODictionary::~IIODictionary(&v47);
    }

    else
    {
      if (CGImageGetDataProvider(a1))
      {
        CGImageGetBitsPerPixel(a1);
        CGImageGetBitsPerComponent(a1);
        CGImageGetBytesPerRow(a1);
        operator new();
      }

      v15 = 0;
    }

    qword_1ED5688A0 = 0;
  }

  v48 = *(MEMORY[0x1E695EFD0] + 8);
  if (CGColorSpaceGetType() == 7)
  {
    BaseColorSpace = CGColorSpaceGetBaseColorSpace(BaseColorSpace);
    CFRetain(BaseColorSpace);
    v19 = BaseColorSpace;
  }

  else
  {
    v19 = 0;
  }

  v20 = Width;
  v21 = a2 / Width;
  v22 = Height;
  v23 = count / Height;
  if (v21 >= v23)
  {
    v24 = a2 / Width;
  }

  else
  {
    v24 = count / Height;
  }

  if ((v24 * v22) > (count + 1) || (v24 * v20) > (a2 + 1))
  {
    if (v21 <= v23)
    {
      v24 = a2 / Width;
    }

    else
    {
      v24 = count / Height;
    }
  }

  v26 = v24;
  v27 = (a2 - (v24 * v20)) * 0.5;
  v28 = (count - (v24 * v22)) * 0.5;
  AlphaInfo = _ImageGetAlphaInfo(a1);
  if (!AlphaInfo)
  {
    if (CGColorSpaceGetModel(BaseColorSpace) == kCGColorSpaceModelRGB)
    {
      AlphaInfo = 5;
    }

    else
    {
      AlphaInfo = 0;
    }
  }

  if (AlphaInfo == 4)
  {
    v30 = 2;
  }

  else
  {
    v30 = AlphaInfo;
  }

  if (AlphaInfo == 3)
  {
    v31 = 1;
  }

  else
  {
    v31 = v30;
  }

  v32 = CGImageGetBitsPerComponent(a1);
  if (v32 <= 0x10)
  {
    v33 = 16;
  }

  else
  {
    v33 = v32;
  }

  if (v32 <= 8)
  {
    v34 = 8;
  }

  else
  {
    v34 = v33;
  }

  MinimalPixelSize = _GetMinimalPixelSize(BaseColorSpace, v34, v31);
  v47.a = v26;
  v36 = (MinimalPixelSize * a2 + 7) >> 3;
  *&v47.b = v48;
  v47.d = v26;
  v47.tx = v27;
  v47.ty = v28;
  v37 = MinimalPixelSize;
  RenderingIntent = CGImageGetRenderingIntent(a1);
  v39 = CGImageCreateCopyWithParametersNew(a1, 0, &v47, a2, count, v34, v37, v36, BaseColorSpace, v31, 1, RenderingIntent, a4, 0);
  if (v15)
  {
    CGImageBlockSetRelease();
  }

  if (v19)
  {
    CGColorSpaceRelease(v19);
  }

LABEL_59:
  IIOPackImageDesc(v39);
  kdebug_trace();
  return v39;
}

void sub_185FECE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  MEMORY[0x186602850](v31, 0x1081C4078C9819ALL);
  IIODictionary::~IIODictionary(&a31);
  _Unwind_Resume(a1);
}

unint64_t alphaProviderGetBytes(_DWORD *a1, _WORD *a2, unint64_t a3)
{
  v3 = 0;
  if (a1 && a2 && a3)
  {
    v5 = a1[34];
    v7 = v5 == 2 || v5 == 4 || v5 == 6;
    v8 = a1[42];
    v9 = 1;
    if (v8 != 2 && v8 != 4)
    {
      v9 = v8 == 6;
    }

    v10 = 0;
    v11 = *(a1 + 14);
    if (v5 != 2 && v5 != 4)
    {
      if (v5 == 6)
      {
        v10 = 0;
      }

      else
      {
        v10 = v11;
      }
    }

    v12 = 0;
    if (v8 != 2 && v8 != 4)
    {
      LODWORD(v12) = v11;
      if (v8 == 6)
      {
        LODWORD(v12) = 0;
      }

      v12 = v12;
    }

    v13 = *(a1 + 13);
    v14 = *(a1 + 7);
    v186 = v14 != 0;
    v15 = v5 - 1;
    v179 = *(a1 + 14);
    v190 = v12;
    count = *(a1 + 16);
    v187 = v14;
    if (v15 <= 6)
    {
      v186 = (0x4Fu >> v15) | (v14 != 0);
    }

    v191 = *(a1 + 24);
    v16 = *(a1 + 15);
    v17 = *(a1 + 19);
    v183 = *(a1 + 20);
    v18 = v8 < 8;
    v19 = *(a1 + 18);
    v20 = 2 * (v19 == 4096);
    if (v19 == 0x2000)
    {
      v20 = 4;
    }

    if (v13 == 16)
    {
      v20 ^= 2u;
    }

    if (v13 == 32)
    {
      v20 ^= 4u;
    }

    v180 = v20;
    if (v13 == 32)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2 * (v13 == 16);
    }

    v22 = *(a1 + 22);
    v23 = *(a1 + 23);
    if (v22 == 4096)
    {
      v21 ^= 2u;
    }

    if (v22 == 0x2000)
    {
      v21 ^= 4u;
    }

    v178 = v21;
    if (!*(a1 + 2))
    {
      v24 = v7;
      v25 = *(a1 + 15);
      v26 = v10;
      v27 = malloc_type_calloc(count, 1uLL, 0x557A913AuLL);
      v10 = v26;
      v16 = v25;
      v18 = v8 < 8;
      v7 = v24;
      *(a1 + 2) = v27;
    }

    v28 = v17 >> 3;
    v181 = v17 >> 3;
    if (v187 && !*(a1 + 3))
    {
      v29 = v7;
      v30 = v10;
      v31 = malloc_type_calloc(v191, 1uLL, 0x5942A3F5uLL);
      v10 = v30;
      v7 = v29;
      v28 = v181;
      *(a1 + 3) = v31;
    }

    v32 = a3;
    v33 = a3 / v28 * v28;
    if (a3 == a3 - v33)
    {
      return 0;
    }

    else
    {
      v174 = v33;
      v3 = 0;
      v34 = v23 >> 3;
      v35 = v13 >> 3;
      v176 = v16 >> 3;
      v177 = v34;
      v175 = v7 * (v13 >> 3);
      v172 = v10 * (v13 >> 3);
      v171 = v18 & (0x9Eu >> v8);
      v173 = v186 & v171;
      v36 = *a1;
      v37 = a2;
      v38 = v183;
      while (1)
      {
        v189 = v37;
        v39 = v35;
        v40 = v3;
        v41 = v36 / v38;
        if (v36 / v38 > *(a1 + 12))
        {
          return v40;
        }

        if (!*(a1 + 4))
        {
          *(a1 + 4) = CGAccessSessionCreate();
        }

        if (v187 && !*(a1 + 5))
        {
          *(a1 + 5) = CGAccessSessionCreate();
        }

        v42 = *(a1 + 1);
        if (v41 + 1 < v42)
        {
          CGAccessSessionRewind();
          if (*(a1 + 5))
          {
            CGAccessSessionRewind();
          }

          *(a1 + 1) = 0;
LABEL_57:
          while (count == CGAccessSessionGetBytes() && (!v187 || v191 == CGAccessSessionGetBytes()))
          {
            v43 = *(a1 + 1) + 1;
            *(a1 + 1) = v43;
            if (v43 > v41)
            {
              if ((v180 & 2) != 0 && count >= 2)
              {
                v44 = *(a1 + 2);
                if (v44)
                {
                  v45 = count >> 1;
                  do
                  {
                    *v44 = bswap32(*v44) >> 16;
                    ++v44;
                    --v45;
                  }

                  while (v45);
                }
              }

              if (v180 >= 4 && count >= 4)
              {
                v46 = *(a1 + 2);
                if (v46)
                {
                  v47 = count >> 2;
                  do
                  {
                    *v46 = bswap32(*v46);
                    ++v46;
                    --v47;
                  }

                  while (v47);
                }
              }

              goto LABEL_71;
            }
          }

          return v40;
        }

        if (v42 <= v41)
        {
          goto LABEL_57;
        }

LABEL_71:
        v48 = *a1;
        v38 = v183;
        v49 = *a1 % v183;
        v50 = v183 - v49;
        if (v32 < v183 - v49)
        {
          v50 = v32;
        }

        v51 = v49 % v181;
        if (v49 % v181)
        {
          v50 -= v51;
          *a1 = v51 + v48;
          v189 = (v189 + v51);
          v3 = v51 + v40;
          v32 -= v51;
          v49 = (v51 + v48) % v183;
          v52 = v178;
        }

        else
        {
          v52 = v178;
          v3 = v40;
        }

        v53 = v49 / v181;
        v54 = v50 / v181 + v53;
        v55 = v54 >= *(a1 + 11) ? *(a1 + 11) : v54;
        v56 = *(a1 + 2) + v53 * v176;
        v35 = v39;
        if (v187)
        {
          v57 = v177;
          v58 = (*(a1 + 3) + v53 * v177);
        }

        else
        {
          v58 = (v56 + v172);
          v57 = v177;
        }

        v59 = v55 - v53;
        v60 = v56 + v175;
        v185 = v55;
        switch(v35)
        {
          case 4uLL:
            v88 = a1[20];
            if (v173)
            {
              if (v55 != v53)
              {
                v89 = 0;
                v90 = v189;
                do
                {
                  v91 = *v58;
                  if (v88 == 1)
                  {
                    if (v179)
                    {
                      v92 = 0;
                      v93 = v179;
                      do
                      {
                        *&v90[2 * v92 + 2 * v9] = v91 * *(v60 + 4 * v92);
                        ++v92;
                        --v93;
                      }

                      while (v93);
                    }
                  }

                  else if (v88 == 2)
                  {
                    if (v179)
                    {
                      v94 = 0;
                      v95 = v179;
                      do
                      {
                        v96 = *(v60 + 4 * v94);
                        if (v91 <= v96)
                        {
                          v97 = 1.0;
                        }

                        else
                        {
                          v97 = v96 / v91;
                        }

                        *&v90[2 * v94++ + 2 * v9] = v97;
                        --v95;
                      }

                      while (v95);
                    }
                  }

                  else if (v179)
                  {
                    v98 = 0;
                    v99 = v179;
                    do
                    {
                      *&v90[2 * v98 + 2 * v9] = *(v60 + 4 * v98);
                      ++v98;
                      --v99;
                    }

                    while (v99);
                  }

                  *&v90[2 * v190] = v91;
                  v60 += v176;
                  v58 = (v58 + v57);
                  v90 = (v90 + v181);
                  ++v89;
                }

                while (v89 != v59);
              }
            }

            else if (v186)
            {
              if (v55 != v53)
              {
                v116 = 0;
                if (v179)
                {
                  v117 = (v88 & 0xFFFFFFFE) == 2;
                }

                else
                {
                  v117 = 1;
                }

                v118 = v117;
                v119 = v189;
                do
                {
                  if (v88 == 1)
                  {
                    if (v179)
                    {
                      v120 = 0;
                      v121 = v179;
                      do
                      {
                        *&v119[2 * v120 + 2 * v9] = *(v60 + 4 * v120) * *v58;
                        ++v120;
                        --v121;
                      }

                      while (v121);
                    }
                  }

                  else if ((v118 & 1) == 0)
                  {
                    v122 = 0;
                    v123 = v179;
                    do
                    {
                      *&v119[2 * v122 + 2 * v9] = *(v60 + 4 * v122);
                      ++v122;
                      --v123;
                    }

                    while (v123);
                  }

                  v60 += v176;
                  v58 = (v58 + v57);
                  v119 = (v119 + v181);
                  ++v116;
                }

                while (v116 != v59);
              }
            }

            else if (v171)
            {
              if (v55 != v53)
              {
                v145 = 0;
                v146 = v189;
                do
                {
                  if (v179)
                  {
                    v147 = 0;
                    v148 = v179;
                    do
                    {
                      *&v146[2 * v147 + 2 * v9] = *(v60 + 4 * v147);
                      ++v147;
                      --v148;
                    }

                    while (v148);
                  }

                  *&v146[2 * v190] = 1065353216;
                  v60 += v176;
                  v146 = (v146 + v181);
                  ++v145;
                }

                while (v145 != v59);
              }
            }

            else if (v55 != v53)
            {
              v157 = 0;
              v158 = v189;
              do
              {
                if (v179)
                {
                  v159 = 0;
                  v160 = v179;
                  do
                  {
                    *&v158[2 * v159 + 2 * v9] = *(v60 + 4 * v159);
                    ++v159;
                    --v160;
                  }

                  while (v160);
                }

                v60 += v176;
                v158 = (v158 + v181);
                ++v157;
              }

              while (v157 != v59);
            }

            break;
          case 2uLL:
            v76 = a1[20];
            if (v173)
            {
              if (v55 != v53)
              {
                v77 = 0;
                v78 = v189;
                do
                {
                  v79 = *v58;
                  if (v76 == 1)
                  {
                    if (v179)
                    {
                      v80 = 0;
                      v81 = v179;
                      do
                      {
                        v78[v80 + v9] = (0xFFFF * (v79 ^ 0xFFFF) + *(v60 + 2 * v80) * v79) / 0xFFFF;
                        ++v80;
                        --v81;
                      }

                      while (v81);
                    }
                  }

                  else if (v76 == 2)
                  {
                    if (v179)
                    {
                      v82 = 0;
                      v83 = v179;
                      do
                      {
                        v84 = *(v60 + 2 * v82);
                        if (v79 <= v84)
                        {
                          LOWORD(v85) = -1;
                        }

                        else
                        {
                          v85 = 0xFFFF * v84 / v79;
                        }

                        v78[v82 + v9] = v85;
                        ++v82;
                        --v83;
                      }

                      while (v83);
                    }
                  }

                  else if (v179)
                  {
                    v86 = 0;
                    v87 = v179;
                    do
                    {
                      v78[v86 + v9] = *(v60 + 2 * v86);
                      ++v86;
                      --v87;
                    }

                    while (v87);
                  }

                  v78[v190] = v79;
                  v60 += v176;
                  v58 = (v58 + v57);
                  v78 = (v78 + v181);
                  ++v77;
                }

                while (v77 != v59);
              }
            }

            else if (v186)
            {
              if (v55 != v53)
              {
                v100 = 0;
                v101 = v189;
                do
                {
                  switch(v76)
                  {
                    case 1:
                      if (v179)
                      {
                        v102 = 0;
                        v103 = v179;
                        do
                        {
                          v101[v102 + v9] = (*v58 * *(v60 + 2 * v102) - (*v58 ^ 0xFFFF) + ((*v58 ^ 0xFFFFu) << 16)) / 0xFFFF;
                          ++v102;
                          --v103;
                        }

                        while (v103);
                      }

                      break;
                    case 2:
                      if (v179)
                      {
                        v104 = 0;
                        v105 = v179;
                        do
                        {
                          v106 = *(v60 + 2 * v104);
                          v107 = *v58;
                          if (v107 <= v106)
                          {
                            LOWORD(v108) = -1;
                          }

                          else
                          {
                            v108 = 0xFFFF * v106 / v107;
                          }

                          v101[v104 + v9] = v108;
                          ++v104;
                          --v105;
                        }

                        while (v105);
                      }

                      break;
                    case 3:
                      if (v179)
                      {
                        v109 = 0;
                        v110 = v179;
                        do
                        {
                          v111 = *(v60 + 2 * v109);
                          v112 = *v58;
                          if (v112 <= v111)
                          {
                            v113 = 0xFFFF;
                          }

                          else
                          {
                            v113 = (0xFFFF * v111 / v112);
                          }

                          v101[v109 + v9] = v113;
                          v101[v109 + v9] = (*v58 * v113 - (*v58 ^ 0xFFFF) + ((*v58 ^ 0xFFFFu) << 16)) / 0xFFFF;
                          ++v109;
                          --v110;
                        }

                        while (v110);
                      }

                      break;
                    default:
                      if (v179)
                      {
                        v114 = 0;
                        v115 = v179;
                        do
                        {
                          v101[v114 + v9] = *(v60 + 2 * v114);
                          ++v114;
                          --v115;
                        }

                        while (v115);
                      }

                      break;
                  }

                  v60 += v176;
                  v58 = (v58 + v57);
                  v101 = (v101 + v181);
                  ++v100;
                }

                while (v100 != v59);
              }
            }

            else if (v171)
            {
              if (v55 != v53)
              {
                v141 = 0;
                v142 = v189;
                do
                {
                  if (v179)
                  {
                    v143 = 0;
                    v144 = v179;
                    do
                    {
                      v142[v143 + v9] = *(v60 + 2 * v143);
                      ++v143;
                      --v144;
                    }

                    while (v144);
                  }

                  v142[v190] = -1;
                  v60 += v176;
                  v142 = (v142 + v181);
                  ++v141;
                }

                while (v141 != v59);
              }
            }

            else if (v55 != v53)
            {
              v153 = 0;
              v154 = v189;
              do
              {
                if (v179)
                {
                  v155 = 0;
                  v156 = v179;
                  do
                  {
                    v154[v155 + v9] = *(v60 + 2 * v155);
                    ++v155;
                    --v156;
                  }

                  while (v156);
                }

                v60 += v176;
                v154 = (v154 + v181);
                ++v153;
              }

              while (v153 != v59);
            }

            break;
          case 1uLL:
            v61 = a1[20];
            v62 = *(a1 + 9) * 255.0;
            v63 = v62;
            if (v173)
            {
              if (v55 != v53)
              {
                v64 = 0;
                v65 = v189;
                do
                {
                  v66 = *v58;
                  if (v61 == 1)
                  {
                    if (v179)
                    {
                      v67 = 0;
                      v68 = v179;
                      do
                      {
                        *(v65 + v67 + v9) = (257 * ((v66 ^ 0xFF) * v63 + *(v60 + v67) * v66) + 32896) >> 16;
                        ++v67;
                        --v68;
                      }

                      while (v68);
                    }
                  }

                  else if (v61 == 2)
                  {
                    if (v179)
                    {
                      v69 = 0;
                      v70 = v179;
                      do
                      {
                        v71 = *(v60 + v69);
                        v72 = v62;
                        if (v66 > v71)
                        {
                          v73 = (_inv_alpha[v66] * v71 + 0x8000) >> 16;
                          LOBYTE(v72) = ((255 - v73) >> 31) | v73;
                        }

                        *(v65 + v69 + v9) = v72;
                        ++v69;
                        --v70;
                      }

                      while (v70);
                    }
                  }

                  else if (v179)
                  {
                    v74 = 0;
                    v75 = v179;
                    do
                    {
                      *(v65 + v74 + v9) = *(v60 + v74);
                      ++v74;
                      --v75;
                    }

                    while (v75);
                  }

                  *(v65 + v190) = v66;
                  ++v64;
                  v60 += v176;
                  v58 = (v58 + v57);
                  v65 = (v65 + v181);
                }

                while (v64 != v59);
              }
            }

            else if (v186)
            {
              if (v55 != v53)
              {
                v124 = 0;
                v125 = v189;
                do
                {
                  v126 = *v58;
                  switch(v61)
                  {
                    case 1:
                      if (v179)
                      {
                        v127 = 0;
                        v128 = v179;
                        do
                        {
                          *(v125 + v127 + v9) = (257 * ((v126 ^ 0xFF) * v63 + *(v60 + v127) * v126) + 32896) >> 16;
                          ++v127;
                          --v128;
                        }

                        while (v128);
                      }

                      break;
                    case 2:
                      if (v179)
                      {
                        v129 = 0;
                        v130 = v179;
                        do
                        {
                          v131 = *(v60 + v129);
                          v132 = v62;
                          if (v126 > v131)
                          {
                            v133 = (_inv_alpha[v126] * v131 + 0x8000) >> 16;
                            LOBYTE(v132) = ((255 - v133) >> 31) | v133;
                          }

                          *(v125 + v129 + v9) = v132;
                          ++v129;
                          --v130;
                        }

                        while (v130);
                      }

                      break;
                    case 3:
                      if (v179)
                      {
                        v134 = 0;
                        v135 = v179;
                        do
                        {
                          v136 = *(v60 + v134);
                          v137 = v62;
                          if (v126 > v136)
                          {
                            v138 = _inv_alpha[v126] * v136 + 0x8000;
                            v137 = (((255 - (v138 >> 16)) >> 31) | BYTE2(v138));
                          }

                          *(v125 + v134 + v9) = (257 * ((v126 ^ 0xFF) * v63 + v137 * v126) + 32896) >> 16;
                          ++v134;
                          --v135;
                        }

                        while (v135);
                      }

                      break;
                    default:
                      if (v179)
                      {
                        v139 = 0;
                        v140 = v179;
                        do
                        {
                          *(v125 + v139 + v9) = *(v60 + v139);
                          ++v139;
                          --v140;
                        }

                        while (v140);
                      }

                      break;
                  }

                  ++v124;
                  v60 += v176;
                  v58 = (v58 + v57);
                  v125 = (v125 + v181);
                }

                while (v124 != v59);
              }
            }

            else if (v171)
            {
              if (v55 != v53)
              {
                v149 = 0;
                v150 = v189;
                do
                {
                  if (v179)
                  {
                    v151 = 0;
                    v152 = v179;
                    do
                    {
                      *(v150 + v151 + v9) = *(v60 + v151);
                      ++v151;
                      --v152;
                    }

                    while (v152);
                  }

                  *(v150 + v190) = -1;
                  ++v149;
                  v60 += v176;
                  v150 = (v150 + v181);
                }

                while (v149 != v59);
              }
            }

            else if (v55 != v53)
            {
              v161 = 0;
              v162 = v189;
              do
              {
                if (v179)
                {
                  v163 = 0;
                  v164 = v179;
                  do
                  {
                    *(v162 + v163 + v9) = *(v60 + v163);
                    ++v163;
                    --v164;
                  }

                  while (v164);
                }

                ++v161;
                v60 += v176;
                v162 = (v162 + v181);
              }

              while (v161 != v59);
            }

            break;
        }

        v165 = v59 * v181;
        if ((v52 & 2) != 0 && v189 && v165 >= 2)
        {
          v166 = v165 >> 1;
          v167 = v189;
          do
          {
            *v167 = bswap32(*v167) >> 16;
            ++v167;
            --v166;
          }

          while (v166);
        }

        if (v52 >= 4 && v189 && v165 >= 4)
        {
          v168 = v165 >> 2;
          v169 = v189;
          do
          {
            *v169 = bswap32(*v169);
            ++v169;
            --v168;
          }

          while (v168);
        }

        if (!v165)
        {
          break;
        }

        v36 = *a1 + v165;
        *a1 = v36;
        v37 = (v189 + v165);
        v3 += v165;
        v32 -= v165;
        if (v3 >= v174)
        {
          return v3;
        }
      }

      _cg_jpeg_mem_term("alphaProviderGetBytes", 2337, "bytesRead == 0   (startPixel = %ld    stopPixel = %ld)\n", v53, v185);
    }
  }

  return v3;
}