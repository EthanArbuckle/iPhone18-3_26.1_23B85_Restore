OpaqueAudioComponent *AUProcessingBlock_AU::GetAvailableAUs(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  inDesc.componentFlagsMask = 0;
  *&inDesc.componentType = *"xfua";
  while (1)
  {
    result = AudioComponentFindNext(v3, &inDesc);
    if (!result)
    {
      break;
    }

    v3 = result;
    Impl_AudioGetComponentInfo(result, &v7, 0);
    v5 = *&v7.componentType;
    componentManufacturer = v7.componentManufacturer;
    std::vector<AudioClassDescription>::push_back[abi:ne200100](a2, &v5);
  }

  return result;
}

void AUProcessingBlock_AU_Instantiating::~AUProcessingBlock_AU_Instantiating(AUProcessingBlock_AU_Instantiating *this)
{
  AUProcessingBlock_AU_Instantiating::~AUProcessingBlock_AU_Instantiating(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032E770;
  v3 = *(this + 3);
  for (i = *(this + 4); v3 != i; i = *(this + 4))
  {
    AudioComponentInstanceDispose(*(v3 + 16));
    v3 += 24;
  }

  AUProcessingBlockBase::~AUProcessingBlockBase(this);
}

void AUProcessingBlock_AU::~AUProcessingBlock_AU(AUProcessingBlock_AU *this)
{
  AUProcessingBlockBase::~AUProcessingBlockBase(this);

  JUMPOUT(0x193ADF220);
}

uint64_t AUProcessingBlockBase_NonAUItem::SetProperty(AUProcessingBlockBase_NonAUItem *this, int a2, unsigned int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  if (a2 != 21)
  {
    return 0xFFFFFFFFLL;
  }

  if (a6 < 4)
  {
    return 4294956445;
  }

  (*(*this + 88))(this, *a5 != 0);
  return 0;
}

uint64_t AUProcessingBlockBase_NonAUItem::GetProperty(AUProcessingBlockBase_NonAUItem *this, int a2, uint64_t a3, uint64_t a4, _DWORD *a5, unsigned int *a6)
{
  v10 = 0xFFFFFFFFLL;
  if (a2 <= 15)
  {
    if (a2 != 3)
    {
      if (a2 == 4 && a5 && a6 && *a6 >= 0x68)
      {
        result = (*(*this + 64))(this, a3, a4, a5);
        v12 = 104;
LABEL_22:
        *a6 = v12;
        return result;
      }

      return v10;
    }

    v19 = 0;
    v13 = (*(*this + 56))(this, a3, 0, &v19);
    v10 = v13;
    if (!a6 || v13)
    {
      return v10;
    }

    if (*a6 >= 4 * v19)
    {
      std::vector<unsigned int>::vector[abi:ne200100](&__src, v19);
      v10 = (*(*this + 56))(this, a3, __src, &v19);
      v14 = __src;
      if (!v10)
      {
        v15 = (v18 - __src) >> 2;
        if (v19 < v15)
        {
          LODWORD(v15) = v19;
        }

        v16 = 4 * v15;
        if (a5)
        {
          memcpy(a5, __src, (4 * v15));
        }

        *a6 = v16;
      }

      if (v14)
      {
        v18 = v14;
        operator delete(v14);
      }

      return v10;
    }

    return 0;
  }

  if (a2 != 16)
  {
    if (a2 != 21)
    {
      return v10;
    }

    if (a6)
    {
      *a6 = 4;
    }

    if (a5)
    {
      v10 = 0;
      *a5 = (*(*this + 80))(this);
      return v10;
    }

    return 0;
  }

  if (a5 && a6 && *a6 >= 8)
  {
    result = (*(*this + 72))(this, a3, a4, a5);
    v12 = 8;
    goto LABEL_22;
  }

  return v10;
}

void sub_18F7C0DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUProcessingBlockBase_NonAUItem::GetPropertyInfo(AUProcessingBlockBase_NonAUItem *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned __int8 *a6)
{
  result = 0xFFFFFFFFLL;
  if (a2 > 15)
  {
    if (a2 != 16)
    {
      if (a2 != 21)
      {
        return result;
      }

      if (a6)
      {
        *a6 = 1;
      }

      if (a5)
      {
        result = 0;
        *a5 = 4;
        return result;
      }

      return 0;
    }

    result = (*(*this + 72))(this, a3, a4, 0);
    if (result)
    {
      return result;
    }

    if (a5)
    {
      v10 = 8;
      goto LABEL_20;
    }

LABEL_21:
    if (a6)
    {
      result = 0;
LABEL_23:
      *a6 = 0;
      return result;
    }

    return 0;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      return result;
    }

    if (a5)
    {
      v10 = 104;
LABEL_20:
      *a5 = v10;
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v11 = 0;
  result = (*(*this + 56))(this, a3, 0, &v11);
  if (!result)
  {
    if (a5)
    {
      *a5 = 4 * v11;
    }

    if (a6)
    {
      goto LABEL_23;
    }
  }

  return result;
}

void AUProcessingBlockBase::UnitsChanged(AUProcessingBlockBase *this, int a2, OpaqueRemoteAudioUnit **a3)
{
  if (a2 && a3)
  {
    v5 = (8 * a2);
    std::vector<unsigned char>::vector[abi:ne200100](__p, (v5 + 8));
    v6 = __p[0];
    *__p[0] = 1685417580;
    v6[1] = v5;
    memcpy(v6 + 2, a3, v5);
    v7 = 1685417580;
    AUPBPropertiesChanged(*(this + 2), 1, &v7, v6, (v5 + 8));
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_18F7C10C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUProcessingBlockBase_NonAU::AddItemToBlock(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v6 = a3[1];
  v21[0] = *a3;
  v21[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AUProcessingBlockBase_NonAU::RemoveItemFromBlock(a1, v21);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v17 = *a2;
  v18 = *(a2 + 2);
  v19 = 0;
  v20 = *a3;
  v7 = v20;
  std::vector<AUPBUnit>::insert(a1 + 24, *(a1 + 24), &v17);
  v8 = AUPBRegisterAU(*(a1 + 16), v7);
  if (v8)
  {
    v10 = *(a1 + 24);
    v9 = *(a1 + 32);
    if (v9 != v10)
    {
      v11 = v9 - (v10 + 24);
      if (v9 != v10 + 24)
      {
        memmove(*(a1 + 24), (v10 + 24), v9 - (v10 + 24));
      }

      *(a1 + 32) = v10 + v11;
    }
  }

  else
  {
    v12 = *(a1 + 56);
    if (!v12)
    {
LABEL_17:
      operator new();
    }

    v13 = *a3;
    while (1)
    {
      while (1)
      {
        v14 = v12;
        v15 = v12[4];
        if (v13 >= v15)
        {
          break;
        }

        v12 = *v14;
        if (!*v14)
        {
          goto LABEL_17;
        }
      }

      if (v15 >= v13)
      {
        break;
      }

      v12 = v14[1];
      if (!v12)
      {
        goto LABEL_17;
      }
    }
  }

  v22 = 1635087726;
  AUPBPropertiesChanged(*(a1 + 16), 1, &v22, 0, 0);
  return v8;
}

void sub_18F7C12A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CABitStreamReader::ReadBits(CABitStreamReader *this, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(this + 7);
  v3 = v2 - a2;
  if (v2 >= a2)
  {
    v6 = *(this + 6);
    v5 = v6 >> -a2;
    *(this + 6) = v6 << a2;
    *(this + 7) = v3;
    return v5;
  }

  if (v2)
  {
    v4 = *(this + 6) >> -a2;
    a2 -= v2;
    *(this + 7) = 0;
  }

  else
  {
    v4 = 0;
  }

  v7 = *(this + 3);
  v8 = *(this + 2) - v7;
  if (v8)
  {
    if (v8 >= 0x20)
    {
      v8 = 32;
    }

    v9 = (v8 + 7) >> 3;
    v10 = *(this + 2);
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v11 = (*v10 << 24) | (v10[1] << 16) | (v10[2] << 8);
        goto LABEL_21;
      }

      if (v9 == 4)
      {
        v11 = bswap32(*v10);
        goto LABEL_21;
      }
    }

    else
    {
      if (v9 == 1)
      {
        v11 = *v10 << 24;
        goto LABEL_21;
      }

      if (v9 == 2)
      {
        v11 = (*v10 << 24) | (v10[1] << 16);
LABEL_21:
        *(this + 6) = v11;
      }
    }

    *(this + 2) = &v10[v9];
    *(this + 3) = v8 + v7;
    goto LABEL_23;
  }

  *(this + 6) = 0;
LABEL_23:
  v12 = *(this + 6);
  v13 = v8 - a2;
  if (v8 < a2)
  {
    v13 = 0;
  }

  v14 = a2 >= v8;
  v16 = a2 - v8;
  v15 = v16 != 0 && v14;
  v17 = -1 << v16;
  if (!v15)
  {
    v17 = -1;
  }

  v18 = v17 & (v12 >> -a2);
  v19 = v12 << a2;
  if (a2 >= 0x20)
  {
    v19 = 0;
  }

  *(this + 6) = v19;
  *(this + 7) = v13;
  return (v18 + v4);
}

void sub_18F7C4888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CA::ADMLoudnessMetadata::~ADMLoudnessMetadata(&STACK[0x590]);
  if (STACK[0x498])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x498]);
  }

  if (STACK[0x4A0])
  {
    operator delete(STACK[0x4A0]);
  }

  if (STACK[0x4B8])
  {
    operator delete(STACK[0x4B8]);
  }

  if (STACK[0x4D0])
  {
    operator delete(STACK[0x4D0]);
  }

  if (STACK[0x4E8])
  {
    operator delete(STACK[0x4E8]);
  }

  if (STACK[0x500])
  {
    operator delete(STACK[0x500]);
  }

  if (STACK[0x518])
  {
    operator delete(STACK[0x518]);
  }

  if (STACK[0x530])
  {
    operator delete(STACK[0x530]);
  }

  if (STACK[0x548])
  {
    operator delete(STACK[0x548]);
  }

  v10 = *(a9 + 8);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::stringsEqual(unsigned __int8 *a1, char *a2)
{
  v2 = a1[23];
  if (v2 >= 0)
  {
    v3 = a1[23];
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = a2[23];
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 == v4)
  {
    if (v2 >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    if (!v3)
    {
      return 1;
    }

    if (v5 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    while (1)
    {
      v8 = *v6;
      if (v8 != *v7)
      {
        v9 = __tolower(v8);
        if (v9 != __tolower(*v7))
        {
          break;
        }
      }

      ++v6;
      ++v7;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

void CA::ADMLoudnessMetadata::~ADMLoudnessMetadata(void **this)
{
  if (*(this + 88) == 1 && *(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 56) == 1 && *(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t anonymous namespace::getTypeDefinition(unsigned __int8 *a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DirectSpeakers");
  v3 = v2;
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return 1;
    }
  }

  else if (v2)
  {
    return 1;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Matrix");
  v6 = v5;
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      return 2;
    }
  }

  else if (v5)
  {
    return 2;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Objects");
  v8 = v7;
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      return 3;
    }
  }

  else if (v7)
  {
    return 3;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "HOA");
  v10 = v9;
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (v10)
    {
      return 4;
    }
  }

  else if (v9)
  {
    return 4;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Binaural");
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

void sub_18F7C5464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float anonymous namespace::populatePosition(uint64_t a1, uint64_t a2)
{
  *(a1 + 12) = *(a2 + 329) & *(a2 + 328);
  if (*(a2 + 140) != 1)
  {
    if (*(a2 + 148) != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = *(a2 + 136);
  *a1 = result;
  if (*(a2 + 148))
  {
LABEL_5:
    result = *(a2 + 144);
    *(a1 + 4) = result;
  }

LABEL_6:
  if (*(a2 + 156) == 1)
  {
    result = *(a2 + 152);
    *(a1 + 8) = result;
  }

  return result;
}

char **anonymous namespace::findById<AudioMetadataChannelFormat,char *AudioMetadataChannelFormat::*>(char *a1, char ****a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    goto LABEL_25;
  }

  do
  {
    std::string::basic_string[abi:ne200100]<0>(v16, **v2);
    std::string::basic_string[abi:ne200100]<0>(__p, a1);
    v6 = v17;
    if ((v17 & 0x80u) == 0)
    {
      v7 = v17;
    }

    else
    {
      v7 = v16[1];
    }

    v8 = v15;
    v9 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v8 = __p[1];
    }

    if (v7 != v8)
    {
      v12 = 0;
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_17:
      operator delete(__p[0]);
      v6 = v17;
      goto LABEL_18;
    }

    if ((v17 & 0x80u) == 0)
    {
      v10 = v16;
    }

    else
    {
      v10 = v16[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = memcmp(v10, v11, v7) == 0;
    if (v9 < 0)
    {
      goto LABEL_17;
    }

LABEL_18:
    if ((v6 & 0x80) != 0)
    {
      operator delete(v16[0]);
      if (v12)
      {
        goto LABEL_24;
      }
    }

    else if (v12)
    {
      goto LABEL_24;
    }

    ++v2;
  }

  while (v2 != v3);
  v2 = v3;
LABEL_24:
  v3 = a2[1];
LABEL_25:
  if (v2 == v3)
  {
    __assert_rtn("findById", "AudioMetadataExtractor.cpp", 76, "false");
  }

  return *v2;
}

void sub_18F7C5630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F7C5708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::ADMBuilder::Impl::parse_programme(CA::ADMBuilder::Impl *this, char *__s1, const unsigned __int8 **a3)
{
  v5 = this;
  v6 = *(*this + 8);
  if (!strcmp(__s1, "audioProgrammeLabel"))
  {
    CA::ADMBuilder::Impl::label_from_attributes(v18, a3);
    std::vector<CA::ADMLabel>::push_back[abi:ne200100]((v6 - 200), v18);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (BYTE8(v19) == 1 && SBYTE7(v19) < 0)
    {
      operator delete(v18[0]);
    }

    operator new();
  }

  if (!strcmp(__s1, "audioContentIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "loudnessMetadata"))
  {
    CA::ADMBuilder::Impl::loudness_metadata_from_attributes(v18, a3);
  }

  if (!strcmp(__s1, "audioProgrammeReferenceScreen"))
  {
    *(v6 - 128) = 0u;
    v8 = v6 - 128;
    v9 = *(v6 - 84);
    *(v8 + 16) = 0u;
    *(v8 + 28) = 0u;
    if ((v9 & 1) == 0)
    {
      *(v6 - 84) = 1;
    }

    if (a3)
    {
      v10 = *a3;
      if (*a3)
      {
        v11 = a3 + 2;
        do
        {
          if (!strcmp(v10, "aspectRatio"))
          {
            std::string::basic_string[abi:ne200100]<0>(v18, *(v11 - 1));
            v12 = CA::ADMBuilder::Impl::parse_float(v5, v18);
            *v8 = v12;
            *(v8 + 4) = BYTE4(v12);
            if (SBYTE7(v19) < 0)
            {
              operator delete(v18[0]);
            }
          }

          v13 = *v11;
          v11 += 2;
          v10 = v13;
        }

        while (v13);
      }
    }

    return 6;
  }

  else if (!strcmp(__s1, "authoringInformation"))
  {
    v14 = (v6 - 80);
    v19 = 0u;
    *__p = 0u;
    *v18 = 0u;
    v15 = (v6 - 56);
    if (*(v6 - 32) == 1)
    {
      if (*v14)
      {
        std::vector<std::shared_ptr<CA::ADMPackFormat>>::clear[abi:ne200100]((v6 - 80));
        operator delete(*v14);
        *v14 = 0;
        *(v6 - 72) = 0;
        *(v6 - 64) = 0;
      }

      *v14 = 0;
      *(v6 - 72) = 0;
      *(v6 - 64) = 0;
      v18[0] = 0;
      v18[1] = 0;
      *&v19 = 0;
      v16 = *v15;
      if (*v15)
      {
        for (i = *(v6 - 48); i != v16; std::allocator_traits<std::allocator<CA::ADMRenderer>>::destroy[abi:ne200100]<CA::ADMRenderer,void,0>(i))
        {
          i -= 120;
        }

        *(v6 - 48) = v16;
        operator delete(*(v6 - 56));
        *v15 = 0;
        *(v6 - 48) = 0;
        *(v6 - 40) = 0;
      }

      *v15 = 0;
      *(v6 - 48) = 0;
      *(v6 - 40) = 0;
      *(&v19 + 1) = 0;
      __p[0] = 0;
      __p[1] = 0;
    }

    else
    {
      *v14 = 0;
      *(v6 - 72) = 0;
      *(v6 - 64) = 0;
      v18[0] = 0;
      v18[1] = 0;
      *&v19 = 0;
      *v15 = 0;
      *(v6 - 48) = 0;
      *(v6 - 40) = 0;
      *(&v19 + 1) = 0;
      __p[0] = 0;
      __p[1] = 0;
      *(v6 - 32) = 1;
    }

    v22 = &v19 + 1;
    std::vector<CA::ADMRenderer>::__destroy_vector::operator()[abi:ne200100](&v22);
    v22 = v18;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v22);
    return 8;
  }

  else
  {
    if (!strcmp(__s1, "alternativeValueSetIDRef"))
    {
      operator new();
    }

    return 1;
  }
}

void std::allocator_traits<std::allocator<CA::ADMRenderer>>::destroy[abi:ne200100]<CA::ADMRenderer,void,0>(uint64_t a1)
{
  v3 = (a1 + 96);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t CA::ADMBuilder::Impl::parse_programme_reference_screen(CA::ADMBuilder::Impl *this, char *__s1, const unsigned __int8 **a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = *(*this + 8);
  if (strcmp(__s1, "screenCentrePosition"))
  {
    if (strcmp(__s1, "screenWidth"))
    {
      if (!strcmp(__s1, "aspectRatio"))
      {
        operator new();
      }

      goto LABEL_76;
    }

    if (!a3)
    {
      goto LABEL_76;
    }

    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_76;
    }

    v8 = 0;
    v17 = a3 + 2;
    while (1)
    {
      v18 = *(v17 - 1);
      v11 = strcmp(v16, "azimuth");
      if (v11)
      {
        if (*v16 != 88 || v16[1])
        {
          goto LABEL_67;
        }

        if (*(v6 - 119) != 1 || *(v6 - 120))
        {
          *(v6 - 120) = 257;
          std::string::basic_string[abi:ne200100]<0>(__p, v18);
          v11 = CA::ADMBuilder::Impl::parse_float(this, __p);
          goto LABEL_64;
        }
      }

      else if (*(v6 - 119) != 1 || *(v6 - 120) == 0)
      {
        *(v6 - 120) = 256;
        std::string::basic_string[abi:ne200100]<0>(__p, v18);
        v11 = CA::ADMBuilder::Impl::parse_float(this, __p);
LABEL_64:
        *(v6 - 92) = v11;
        *(v6 - 88) = BYTE4(v11);
        if (SBYTE3(v30) < 0)
        {
          operator delete(*__p);
        }

        goto LABEL_67;
      }

      v8 = 1;
LABEL_67:
      v20 = *v17;
      v17 += 2;
      v16 = v20;
      if (!v20)
      {
        goto LABEL_68;
      }
    }
  }

  if (!a3)
  {
    goto LABEL_76;
  }

  v7 = *a3;
  if (!*a3)
  {
    goto LABEL_76;
  }

  v8 = 0;
  v9 = a3 + 2;
  do
  {
    v10 = *(v9 - 1);
    v11 = strcmp(v7, "azimuth");
    if (!v11)
    {
      if (*(v6 - 119) == 1 && *(v6 - 120) != 0)
      {
LABEL_34:
        v8 = 1;
        goto LABEL_39;
      }

      *(v6 - 120) = 256;
      std::string::basic_string[abi:ne200100]<0>(__p, v10);
      v11 = CA::ADMBuilder::Impl::parse_float(this, __p);
LABEL_24:
      *(v6 - 116) = v11;
      *(v6 - 112) = BYTE4(v11);
      goto LABEL_37;
    }

    v11 = strcmp(v7, "elevation");
    if (!v11)
    {
      if (*(v6 - 119) == 1 && *(v6 - 120) != 0)
      {
        goto LABEL_34;
      }

      *(v6 - 120) = 256;
      std::string::basic_string[abi:ne200100]<0>(__p, v10);
      v11 = CA::ADMBuilder::Impl::parse_float(this, __p);
LABEL_31:
      *(v6 - 108) = v11;
      *(v6 - 104) = BYTE4(v11);
      goto LABEL_37;
    }

    v11 = strcmp(v7, "distance");
    if (v11)
    {
      v12 = *v7;
      if (v12 != 90)
      {
        if (v12 != 89)
        {
          if (v12 != 88 || v7[1])
          {
            goto LABEL_39;
          }

          if (*(v6 - 119) == 1 && !*(v6 - 120))
          {
            goto LABEL_34;
          }

          *(v6 - 120) = 257;
          std::string::basic_string[abi:ne200100]<0>(__p, v10);
          v11 = CA::ADMBuilder::Impl::parse_float(this, __p);
          goto LABEL_24;
        }

        if (v7[1])
        {
          goto LABEL_39;
        }

        if (*(v6 - 119) == 1 && !*(v6 - 120))
        {
          goto LABEL_34;
        }

        *(v6 - 120) = 257;
        std::string::basic_string[abi:ne200100]<0>(__p, v10);
        v11 = CA::ADMBuilder::Impl::parse_float(this, __p);
        goto LABEL_31;
      }

      if (v7[1])
      {
        goto LABEL_39;
      }

      if (*(v6 - 119) == 1 && !*(v6 - 120))
      {
        goto LABEL_34;
      }

      *(v6 - 120) = 257;
      std::string::basic_string[abi:ne200100]<0>(__p, v10);
      v11 = CA::ADMBuilder::Impl::parse_float(this, __p);
    }

    else
    {
      if (*(v6 - 119) == 1 && *(v6 - 120))
      {
        goto LABEL_34;
      }

      *(v6 - 120) = 256;
      std::string::basic_string[abi:ne200100]<0>(__p, v10);
      v11 = CA::ADMBuilder::Impl::parse_float(this, __p);
    }

    *(v6 - 100) = v11;
    *(v6 - 96) = BYTE4(v11);
LABEL_37:
    if (SBYTE3(v30) < 0)
    {
      operator delete(*__p);
    }

LABEL_39:
    v15 = *v9;
    v9 += 2;
    v7 = v15;
  }

  while (v15);
LABEL_68:
  if (v8)
  {
    v21 = CA::ADMBuilder::Impl::log(v11);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v25, v6 - 368, "");
      v22 = (v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v25 : v25.__r_.__value_.__r.__words[0];
      *__p = 136315650;
      *&__p[4] = "ADMBuilderParseProgramme.cpp";
      v27 = 1024;
      v28 = 141;
      v29 = 2080;
      v30 = v22;
      _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Conflicting coordinate systems used in programme '%s' reference screen", __p, 0x1Cu);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }
    }

    *(this + 158) = -66603;
  }

LABEL_76:
  result = 1;
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F7C6010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::ADMBuilder::Impl::parse_programme_authoring_information(CA::ADMBuilder::Impl *this, char *__s1, const char **a3)
{
  v6 = *(*this + 8);
  if (!strcmp(__s1, "referenceLayout"))
  {
    return 9;
  }

  if (strcmp(__s1, "renderer"))
  {
    return 1;
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  *__p = 0u;
  v35 = 0u;
  *v36 = 0u;
  *v34 = 0u;
  v9 = *(v6 - 48);
  v8 = *(v6 - 40);
  if (v9 >= v8)
  {
    v11 = *(v6 - 56);
    v12 = v9 - v11;
    v13 = 0xEEEEEEEEEEEEEEEFLL * ((v9 - v11) >> 3) + 1;
    if (v13 > 0x222222222222222)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0xEEEEEEEEEEEEEEEFLL * ((v8 - v11) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x111111111111111)
    {
      v15 = 0x222222222222222;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 <= 0x222222222222222)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v16 = 8 * ((v9 - v11) >> 3);
    std::allocator_traits<std::allocator<CA::ADMRenderer>>::construct[abi:ne200100]<CA::ADMRenderer,CA::ADMRenderer,void,0>(v16, v34);
    v10 = v16 + 120;
    v32 = (v16 + 120);
    v17 = v16 - v12;
    if (v11 != v9)
    {
      v18 = v16 - v12;
      v19 = v11;
      do
      {
        std::allocator_traits<std::allocator<CA::ADMRenderer>>::construct[abi:ne200100]<CA::ADMRenderer,CA::ADMRenderer,void,0>(v18, v19);
        v19 = (v19 + 120);
        v18 += 120;
      }

      while (v19 != v9);
      do
      {
        std::allocator_traits<std::allocator<CA::ADMRenderer>>::destroy[abi:ne200100]<CA::ADMRenderer,void,0>(v11);
        v11 += 120;
      }

      while (v11 != v9);
    }

    v20 = *(v6 - 56);
    *(v6 - 56) = v17;
    *&v21 = v20;
    *(&v21 + 1) = *(v6 - 40);
    *(v6 - 48) = v32;
    while (v21 != v20)
    {
      *&v21 = v21 - 120;
      v33 = v21;
      std::allocator_traits<std::allocator<CA::ADMRenderer>>::destroy[abi:ne200100]<CA::ADMRenderer,void,0>(v21);
      v21 = v33;
    }

    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    std::allocator_traits<std::allocator<CA::ADMRenderer>>::construct[abi:ne200100]<CA::ADMRenderer,CA::ADMRenderer,void,0>(*(v6 - 48), v34);
    v10 = v9 + 120;
    *(v6 - 48) = v9 + 120;
  }

  *(v6 - 48) = v10;
  v42 = &v40;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v42);
  if (BYTE8(v39) == 1 && SBYTE7(v39) < 0)
  {
    operator delete(__p[0]);
  }

  if (BYTE8(v37) == 1 && SBYTE7(v37) < 0)
  {
    operator delete(v36[0]);
  }

  if (BYTE8(v35) == 1 && SBYTE7(v35) < 0)
  {
    operator delete(v34[0]);
  }

  v22 = *(v6 - 48);
  v23 = (*(this + 47) - 24);
  v34[0] = 0;
  v34[1] = 0;
  *&v35 = 0;
  std::vector<std::vector<std::string>>::push_back[abi:ne200100](v23, v34);
  v42 = v34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v42);
  if (a3)
  {
    v24 = *a3;
    if (*a3)
    {
      v25 = (a3 + 2);
      do
      {
        v26 = *(v25 - 1);
        v27 = strcmp(v24, "uri");
        v28 = (v22 - 120);
        if (!v27 || (v29 = strcmp(v24, "name"), v28 = (v22 - 88), !v29) || (v30 = strcmp(v24, "version"), v28 = (v22 - 56), !v30))
        {
          std::optional<std::string>::operator=[abi:ne200100]<char const* const&,void>(v28, v26);
        }

        v31 = *v25;
        v25 += 2;
        v24 = v31;
      }

      while (v31);
    }
  }

  return 11;
}

void sub_18F7C639C(_Unwind_Exception *a1)
{
  *(v2 - 88) = v1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v2 - 88));
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<CA::ADMRenderer>>::construct[abi:ne200100]<CA::ADMRenderer,CA::ADMRenderer,void,0>(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v2 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v2;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(a1 + 24) = 1;
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v3 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 32) = v3;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
    *(a1 + 56) = 1;
  }

  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v4 = a2[4];
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v4;
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 8) = 0;
    *(a1 + 88) = 1;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  result = a2[6];
  *(a1 + 96) = result;
  *(a1 + 112) = *(a2 + 14);
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  return result;
}

void CA::ADMRenderer::~ADMRenderer(void **this)
{
  v2 = this + 12;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 88) == 1 && *(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 56) == 1 && *(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t CA::ADMBuilder::Impl::parse_programme_authoring_information_reference_layout(CA::ADMBuilder::Impl *this, char *__s1, const unsigned __int8 **a3)
{
  if (!strcmp(__s1, "audioPackFormatIDRef"))
  {
    operator new();
  }

  return 1;
}

uint64_t CA::ADMBuilder::Impl::parse_programme_authoring_information_renderer(CA::ADMBuilder::Impl *this, char *__s1, const unsigned __int8 **a3)
{
  if (!strcmp(__s1, "audioPackFormatIDRef"))
  {
    operator new();
  }

  return 1;
}

uint64_t MP4LDSpatialConfigWriter::size(MP4LDSpatialConfigWriter *this)
{
  if (*(this + 136) != 1)
  {
    return 0;
  }

  v2 = MP4SampleRate::Index(**(this + 1));
  v3 = 0;
  if (v2 == 15)
  {
    v4 = 42;
  }

  else
  {
    v4 = 18;
  }

  v5 = *(this + 6);
  if (v5 == 7)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = v4 + 8;
  }

  if (v5 == 7)
  {
    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

  if (v5 == 7)
  {
    v8 = 4;
  }

  else
  {
    v8 = 5;
  }

  v9 = v6 + v7 + v8;
  v10 = &kBsTreeConfigurationTable[7 * v5];
  while (*(v10 + 1) != v3)
  {
    if ((*(v10 + 5) >> v3))
    {
      v9 += 5;
    }

    ++v3;
  }

  v12 = (this + 96);
  for (i = kBsTreeConfigurationTable[7 * v5 + 3]; i; --i)
  {
    if (*v12++)
    {
      v15 = 12;
    }

    else
    {
      v15 = 4;
    }

    v9 += v15;
  }

  if (*(this + 14) == 2)
  {
    ++v9;
  }

  if (!*(this + 16))
  {
    return (v9 + 7) >> 3;
  }

  if (*(this + 18))
  {
    v9 += 2;
    return (v9 + 7) >> 3;
  }

  return 0;
}

uint64_t MP4LDSpatialConfigWriter::Serialize(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 136) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = MP4SampleRate::Index(**(a1 + 8));
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, v4, 4u);
  v5 = **(a1 + 8);
  if (MP4SampleRate::Index(v5) == 15)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, v5, 0x18u);
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 16), 5u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 20), 3u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 24), 4u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 28), 2u);
  if (*(a1 + 24) != 7)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 32), 1u);
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 36), 1u);
  if (*(a1 + 24) != 7)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 40), 3u);
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 44), 3u);
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 48), 3u);
  if (*(a1 + 24) != 7)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 52), 1u);
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 56), 2u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 60), 2u);
  if (*(a1 + 24) != 7)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 64), 1u);
  }

  for (i = 0; ; ++i)
  {
    v7 = *(a1 + 24);
    if (i >= kBsTreeConfigurationTable[7 * v7 + 1])
    {
      break;
    }

    if ((HIWORD(kBsTreeConfigurationTable[7 * v7 + 2]) >> i))
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 76 + 4 * i), 5u);
    }
  }

  v8 = 0;
  v9 = (a1 + 96);
  while (v8 < kBsTreeConfigurationTable[7 * v7 + 3])
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *v9, 1u);
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, v9[1], 3u);
    if (*v9)
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, v9[2], 3u);
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, v9[3], 5u);
    }

    ++v8;
    v7 = *(a1 + 24);
    ++v9;
  }

  if (*(a1 + 56) == 2)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 68), 1u);
  }

  if (*(a1 + 64))
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 72), 2u);
    if (*(a1 + 72))
    {
      return 0xFFFFFFFFLL;
    }
  }

  v11 = *(a2 + 28) & 7;
  if (v11)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, 0, v11);
  }

  return 0;
}

void MP4LDSpatialConfigWriter::~MP4LDSpatialConfigWriter(MP4LDSpatialConfigWriter *this)
{
  MP4SpatialAudioSpecificConfig::~MP4SpatialAudioSpecificConfig(this);

  JUMPOUT(0x193ADF220);
}

void *___Z16NewAudioCapturer20AudioCapturerOptionsPKcS1_jPK27AudioStreamBasicDescriptionRS3__block_invoke_6598()
{
  result = dlopen("/usr/local/lib/libAudioDiagnostics.dylib", 5);
  if (result)
  {
    result = dlsym(result, "NewAudioCapturerImpl");
    if (result)
    {
      NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction = result;
    }
  }

  return result;
}

void DSPGraph::GraphInput::decompileBox(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "in ", 3);
  if (a3)
  {
    v4 = MEMORY[0x193ADEEB0](v4, *(a1 + 56));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
    v9 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v9 = *v9;
    }

    std::string::basic_string[abi:ne200100]<0>(v10, v9);
    DSPGraph::asDecompileString(v10, &__p);
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
  }

  else
  {
    v6 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v6 = *v6;
    }

    std::string::basic_string[abi:ne200100]<0>(v10, v6);
    DSPGraph::asDecompileString(v10, &__p);
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
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "\n", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_18F7C6DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::GraphInput::desc@<D0>(uint64_t a1@<X8>)
{
  result = 7.28117482e199;
  *a1 = xmmword_18F901900;
  *(a1 + 16) = 0;
  return result;
}

uint64_t DSPGraph::GraphInput::stopRecording(DSPGraph::GraphInput *this, uint64_t a2)
{
  v4 = *(this + 110);
  *(this + 110) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 913) = 0;

  return DSPGraph::Box::stopRecording(this, a2);
}

void DSPGraph::GraphInput::record(std::string *a1, char *a2, uint64_t a3, std::string::value_type a4, std::string::value_type a5, std::string::size_type a6)
{
  v12 = &v18;
  std::string::basic_string[abi:ne200100]<0>(&v18, a2);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  if (size >= 1)
  {
    v14 = v12 + size;
    v15 = v12;
    do
    {
      v16 = memchr(v15, 46, size);
      if (!v16)
      {
        break;
      }

      if (*v16 == 46)
      {
        if (v16 != v14 && v16 - v12 != -1)
        {
          v17 = std::string::replace(&v18, v16 - v12, 1uLL, "_raw.", 5uLL);
          std::string::operator=(a1 + 37, v17);
        }

        break;
      }

      v15 = (v16 + 1);
      size = v14 - v15;
    }

    while (v14 - v15 >= 1);
  }

  a1[38].__r_.__value_.__s.__data_[0] = a5;
  a1[38].__r_.__value_.__s.__data_[1] = a4;
  a1[38].__r_.__value_.__l.__size_ = a6;
  DSPGraph::Box::record(a1, a2, a3);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_18F7C6FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::GraphOutput::decompileBox(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "out ", 4);
  if (a3)
  {
    v4 = MEMORY[0x193ADEEB0](v4, *(a1 + 56));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
    v9 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v9 = *v9;
    }

    std::string::basic_string[abi:ne200100]<0>(v10, v9);
    DSPGraph::asDecompileString(v10, &__p);
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
  }

  else
  {
    v6 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v6 = *v6;
    }

    std::string::basic_string[abi:ne200100]<0>(v10, v6);
    DSPGraph::asDecompileString(v10, &__p);
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
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "\n", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_18F7C7208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::GraphOutput::desc@<D0>(uint64_t a1@<X8>)
{
  result = 8.1261874e228;
  *a1 = xmmword_18F901910;
  *(a1 + 16) = 0;
  return result;
}

void sub_18F7C73E0(_Unwind_Exception *a1)
{
  AUEventSchedule::~AUEventSchedule(v2);
  RenderObserverList::~RenderObserverList(v1);
  _Unwind_Resume(a1);
}

void RenderObserverList::~RenderObserverList(RenderObserverList *this)
{
  TThreadSafeList<RenderObserver>::NodeStack::free_all(this);
  TThreadSafeList<RenderObserver>::NodeStack::free_all(&this->mObservers.mPendingList);
  TThreadSafeList<RenderObserver>::NodeStack::free_all(&this->mObservers.mFreeList);
}

uint64_t *TThreadSafeList<RenderObserver>::NodeStack::free_all(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    do
    {
      *v2 = *v1;
      v3 = *(v1 + 24);
      *(v1 + 24) = 0;

      result = MEMORY[0x193ADF220](v1, 0x10A0C40CEAA8FA1);
      v1 = *v2;
    }

    while (*v2);
  }

  return result;
}

uint64_t AUEventSchedule::uninitialize(AUEventSchedule *this)
{
  _X20 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X20, X21, [X22]; unint64_t }

  AUEventSchedule::parameterWatchdogFired(&v13, this, _X2, 0);
  v9 = AUEventSchedule::preRender(this, 0x7FFFFFFFFFFFFFFEuLL, 1u, 0);
  AUEventSchedule::postRender(this, v9);
  result = *this[1].mAddedEventQueue.mDequeueHead.padding;
  do
  {
    _X3 = *&this[1].mAddedEventQueue.mDequeueHead.padding[8];
    __asm { CASPAL          X2, X3, X20, X21, [X22] }

    _ZF = _X2 == result;
    result = _X2;
  }

  while (!_ZF);
  return result;
}

AUEventSchedule *AUEventSchedule::parameterWatchdogFired(AUEventSchedule *this, uint64_t a2, AUEventSchedule *a3, unint64_t a4)
{
  v4 = this;
  v5 = atomic_load((a2 + 96));
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  this = PreviousRenderTime::parameterWatchdogFireTime((a2 + 128));
  if (this == a3 || v9 <= a4)
  {
    v18 = 0x8000;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    v13 = 0xC200000000000000;
    v17 = 1;
    memset(v12, 0, sizeof(v12));
    this = (*(*(a2 + 120) + 16))(*(a2 + 120), &v18, &v13, 0x1000000, 0, v12, 0, v10);
LABEL_6:
    v11 = 0;
    LOBYTE(v4->mAUv2GetParameterSynchronizer) = 0;
    goto LABEL_7;
  }

  v4->mAUv2GetParameterSynchronizer = this;
  v4->mAllocator = v9;
  v11 = 1;
LABEL_7:
  LOBYTE(v4->mScheduledParameterRefresher) = v11;
  return this;
}

uint64_t AUEventSchedule::preRender(AUEventSchedule *this, unint64_t a2, unsigned int a3, int a4)
{
  atomic_store(0, &this->mHavePendingSetParameter);
  if (a2 >> 28 != 0xFFFFFFFE0)
  {
    _X0 = mach_absolute_time();
    v42[0] = _X0;
    v42[1] = a3;
    v9 = *this[1].mAddedEventQueue.mDequeueHead.padding;
    do
    {
      _X5 = *&this[1].mAddedEventQueue.mDequeueHead.padding[8];
      __asm { CASP            X4, X5, X0, X1, [X8] }

      _ZF = _X4 == v9;
      v9 = _X4;
    }

    while (!_ZF);
  }

  v38 = a4;
  v16 = 0;
  p_mScheduleHead = &this->mScheduleHead;
  v18 = a2 + a3;
  while (1)
  {
    value = this->mAddedEventQueue.mDequeueHead.value;
    if (!value)
    {
      v20 = atomic_exchange_explicit(&this->mAddedEventQueue, 0, memory_order_acquire);
      if (!v20)
      {
        goto LABEL_41;
      }

      value = 0;
      do
      {
        v21 = value;
        value = v20;
        v20 = atomic_load(v20);
        atomic_store(v21, value);
      }

      while (v20);
      this->mAddedEventQueue.mDequeueHead.value = value;
    }

    v22 = atomic_load(value);
    this->mAddedEventQueue.mDequeueHead.value = v22;
    v23 = *(value + 1);
    if (v23 >> 28 == 0xFFFFFFFF0)
    {
      v24 = *(value + 1) & 0xFFFFFFFLL;
      _VF = __OFADD__(a2, v24);
      v23 = a2 + v24;
      if (_VF)
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *(value + 1) = v23;
    }

    if (v23 == 1589718640 && *(value + 3) == 1589718640 && *(value + 8) >> 8 == 6209838)
    {
      break;
    }

    if (*(value + 16) == 1 && *(value + 9) && !*(value + 19))
    {
      if (pthread_self() == *(value + 5))
      {
        v25 = 3;
      }

      else
      {
        v25 = 1;
      }

      *(value + 19) |= v25;
    }

    v26 = &this->mScheduleHead;
    if (v16 && (v26 = &this->mScheduleHead, *(value + 1) >= *(v16 + 1)))
    {
      v26 = *v16;
      v27 = v16;
    }

    else
    {
      do
      {
        v27 = v26;
        v26 = *v26;
      }

      while (v26 && *(value + 1) >= v26[1]);
    }

    *value = v26;
    if (!v26)
    {
      v16 = value;
    }

    *v27 = value;
  }

  *value = 0;
  this->mScheduleHead = 0;
  v28 = this->mAddedEventQueue.mDequeueHead.value;
  if (v28)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v29 = atomic_exchange_explicit(&this->mAddedEventQueue, 0, memory_order_acquire);
    if (!v29)
    {
      break;
    }

    v28 = 0;
    do
    {
      v30 = v28;
      v28 = v29;
      v29 = atomic_load(v29);
      atomic_store(v30, v28);
    }

    while (v29);
    this->mAddedEventQueue.mDequeueHead.value = v28;
    do
    {
LABEL_39:
      v28 = atomic_load(v28);
      this->mAddedEventQueue.mDequeueHead.value = v28;
    }

    while (v28);
  }

LABEL_41:
  v41 = 0;
  v42[0] = 0;
  v39 = 0;
  v40 = 0;
  v31 = *p_mScheduleHead;
  if (*p_mScheduleHead)
  {
    v32 = (v31 + 8);
    v33 = *(v31 + 1);
    if (v33 >= v18)
    {
      return v42[0];
    }

    while (1)
    {
      v34 = v31;
      if (*(v31 + 16) != 1 || !v38 || !*(v31 + 9))
      {
        goto LABEL_50;
      }

      if (v33 >> 28 == 0xFFFFFFFE0)
      {
        *v32 = v33 | 0x100000000;
      }

      if ((*(v31 + 19) & 2) == 0)
      {
        v35 = &v40;
        v36 = &v39;
      }

      else
      {
LABEL_50:
        v35 = v42;
        v36 = &v41;
      }

      if (*v35)
      {
        v35 = *v36;
      }

      *v35 = v31;
      *v36 = v31;
      v31 = *v31;
      if (!*v34)
      {
        break;
      }

      v32 = (v31 + 8);
      v33 = *(v31 + 1);
      if (v33 >= v18)
      {
        *p_mScheduleHead = v31;
        if (v34 != p_mScheduleHead)
        {
          goto LABEL_58;
        }

        return v42[0];
      }
    }
  }

  v34 = &this->mScheduleHead;
LABEL_58:
  *v34 = 0;
  return v42[0];
}

void AUEventSchedule::postRender(AUEventSchedule *this, AURenderEvent *a2)
{
  if (a2)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      next = v5->head.next;
      if (v5->head.eventType - 1 <= 1)
      {
        parameterAddress = v5->parameter.parameterAddress;
        if (v5 == a2 || parameterAddress != v4)
        {
          mScheduledParameterRefresher = this->mScheduledParameterRefresher;
          if (mScheduledParameterRefresher)
          {
            AUScheduledParameterRefresher::deferInvalidateParameter(mScheduledParameterRefresher, this[1].mAUv2GetParameterSynchronizer, v5->parameter.parameterAddress);
          }

          v4 = parameterAddress;
        }

        wordCount = v5->MIDIEventsList.eventList.packet[0].wordCount;
        if (wordCount)
        {
          AUv2GetParameterSynchronizer::setLatestV2SetParameterSequenceNumber(this->mAUv2GetParameterSynchronizer, wordCount);
        }
      }

      if (!v5->head.reserved)
      {
        AURenderEventAllocator::dealloc(this->mAllocator, v5);
      }

      v5 = next;
    }

    while (next);
  }
}

unint64_t *AUScheduledParameterRefresher::deferInvalidateParameter(AUScheduledParameterRefresher *this, unint64_t a2, unint64_t a3)
{
  result = XAtomicPoolAllocator::alloc(this + 4);
  result[1] = a2;
  result[2] = a3;
  v7 = *(this + 27);
  atomic_store(v7, result);
  v8 = v7;
  atomic_compare_exchange_strong(this + 27, &v8, result);
  if (v8 != v7)
  {
    v9 = v8;
    do
    {
      atomic_store(v8, result);
      atomic_compare_exchange_strong(this + 27, &v9, result);
      v10 = v9 == v8;
      v8 = v9;
    }

    while (!v10);
  }

  if ((atomic_exchange(this + 176, 1u) & 1) == 0)
  {
    v11 = *(this + 21);

    return caulk::concurrent::messenger::enqueue(v11, (this + 144));
  }

  return result;
}

AUv2GetParameterSynchronizer *AUv2GetParameterSynchronizer::setLatestV2SetParameterSequenceNumber(AUv2GetParameterSynchronizer *this, unsigned int a2)
{
  v2 = *this;
  v3 = HIDWORD(*this);
  v4 = a2 - v3;
  v5 = *this & 0xFFFFFFFF00000000;
  if ((a2 - v3) >= 0)
  {
    v5 = 0;
  }

  *this;
  v6 = v3 == 0;
  if (v6)
  {
    v5 = 0;
  }

  v7 = v5 | a2;
  v8 = *this;
  atomic_compare_exchange_strong(this, &v8, v7);
  if (v8 == v2)
  {
    v9 = v4 >> 31;
    if (v6)
    {
      return this;
    }

    goto LABEL_16;
  }

  v10 = v8;
  do
  {
    v11 = a2 - *&v8.mSyncGetParamSema.mOwned;
    v12 = *&v8 & 0xFFFFFFFF00000000;
    if ((a2 - *&v8.mSyncGetParamSema.mOwned) >= 0)
    {
      v12 = 0;
    }

    v13 = HIDWORD(*&v8) == 0;
    if (!HIDWORD(*&v8))
    {
      v12 = 0;
    }

    atomic_compare_exchange_strong(this, &v10, v12 | a2);
    v14 = v10 == v8;
    v8 = v10;
  }

  while (!v14);
  v9 = v11 >> 31;
  if (!v13)
  {
LABEL_16:
    if ((v9 & 1) == 0)
    {
      return caulk::semaphore::signal(&this[1]);
    }
  }

  return this;
}

void AURenderEventAllocator::dealloc(AURenderEventAllocator *this, AURenderEvent *a2)
{
  eventType = a2->head.eventType;
  if (eventType <= 8)
  {
    if (eventType - 1 >= 2)
    {
      if (eventType != 8)
      {
        return;
      }

      CADeprecated::TAtomicStack2<XAtomicPoolAllocator::FreeNode>::push_atomic(this + 144, a2);
      v4 = (this + 208);
      goto LABEL_9;
    }

    goto LABEL_3;
  }

  if (eventType != 9)
  {
    if (eventType != 10)
    {
      return;
    }

    CADeprecated::TAtomicStack2<XAtomicPoolAllocator::FreeNode>::push_atomic(this + 256, a2);
    v4 = (this + 320);
    goto LABEL_9;
  }

  if (a2->MIDI.length < 0x1CuLL)
  {
LABEL_3:
    CADeprecated::TAtomicStack2<XAtomicPoolAllocator::FreeNode>::push_atomic(this + 32, a2);
    v4 = (this + 96);
LABEL_9:
    atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
    return;
  }

  v5 = *(this + 42);

  caulk::rt_safe_memory_resource::rt_deallocate(v5, a2);
}

void *XAtomicPoolAllocator::alloc(atomic_uint *this)
{
  atomic_fetch_add_explicit(this + 24, 0xFFFFFFFF, memory_order_relaxed);
  result = CADeprecated::TAtomicStack2<XAtomicPoolAllocator::FreeNode>::pop_atomic((this + 8));
  if (!result)
  {
    XAtomicPoolAllocator::allocChunk(this);

    return CADeprecated::TAtomicStack2<XAtomicPoolAllocator::FreeNode>::pop_atomic((this + 8));
  }

  return result;
}

uint64_t PreviousRenderTime::parameterWatchdogFireTime(PreviousRenderTime *this)
{
  _X20 = 0;
  _X21 = 0;
  __asm { CASP            X20, X21, X20, X21, [X8] }

  if (_X20)
  {
    v8 = fmax(0 / *this * 1.5 + 0.01, 0.03) * 24000000.0;
  }

  else
  {
    mach_absolute_time();
  }

  return _X20;
}

uint64_t CADeprecated::TSingleton<AURenderEventAllocator>::instance()
{
  if (atomic_load_explicit(&CADeprecated::TSingleton<AURenderEventAllocator>::sOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&CADeprecated::TSingleton<AURenderEventAllocator>::sOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<AURenderEventAllocator>::instance(void)::{lambda(void)#1} &&>>);
  }

  return CADeprecated::TSingleton<AURenderEventAllocator>::sInstance;
}

void sub_18F7C7E4C(_Unwind_Exception *a1)
{
  XAtomicPoolAllocator::~XAtomicPoolAllocator(v3);
  XAtomicPoolAllocator::~XAtomicPoolAllocator(v2);
  XAtomicPoolAllocator::~XAtomicPoolAllocator(v1);
  MEMORY[0x193ADF220]();
  _Unwind_Resume(a1);
}

void sub_18F7C8214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class ___ZL42getAVSpeechSynthesisProviderAudioUnitClassv_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = ___ZL19AVFAudioLibraryCorePPc_block_invoke_6812;
    v8[4] = &__block_descriptor_40_e5_v8__0l;
    v8[5] = v8;
    v9 = xmmword_1E72C12A8;
    v10 = 0;
    AVFAudioLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AVFAudioLibrary()"];
    [v4 handleFailureInFunction:v5 file:@"AVFASoftLink.h" lineNumber:63 description:{@"%s", v8[0]}];

    goto LABEL_10;
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("AVSpeechSynthesisProviderAudioUnit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVSpeechSynthesisProviderAudioUnitClass()_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"AVFASoftLink.h" lineNumber:66 description:{@"Unable to find class %s", "AVSpeechSynthesisProviderAudioUnit"}];

LABEL_10:
    __break(1u);
  }

  getAVSpeechSynthesisProviderAudioUnitClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZL19AVFAudioLibraryCorePPc_block_invoke_6812(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVFAudioLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F7C87A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18F7C9490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F7C95A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F7C9714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_40c55_ZTSNSt3__110shared_ptrIN4MIDI20DynamicMIDIConverterEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_40c55_ZTSNSt3__110shared_ptrIN4MIDI20DynamicMIDIConverterEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t MIDI::EventList::PacketReader::read(void *a1, void *a2, _DWORD *a3)
{
  v3 = a1[1];
  v4 = a1[3];
  if (v4 >= v3)
  {
    return 0;
  }

  v5 = (*a1 + 4 * v4);
  v6 = *v5;
  v7 = MIDI::UniversalPacket::word_sizes[v6 >> 28];
  v8 = v4 + v7;
  if (v8 > v3)
  {
    return 0;
  }

  *a2 = a1[2];
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        if (v7 != 4)
        {
          std::terminate();
        }

        *a3++ = v6;
        v10 = v5[1];
        ++v5;
        LODWORD(v6) = v10;
      }

      *a3++ = v6;
      v11 = v5[1];
      ++v5;
      LODWORD(v6) = v11;
    }

    *a3++ = v6;
    LODWORD(v6) = v5[1];
    goto LABEL_12;
  }

  if (v7)
  {
LABEL_12:
    *a3 = v6;
  }

  a1[3] = v8;
  return 1;
}

void std::__shared_ptr_emplace<MIDI::DynamicMIDIConverter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F033C040;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void *MIDI::MIDIPacketList_Deliverer::MIDIPacketList_Deliverer(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = &caulk::inplace_function_detail::rt_vtable<void,MIDI::LegacyPacketList const*>::empty;
  *a1 = &unk_1F033BC30;
  a1[1] = v3;
  (*(v3 + 16))(a1 + 2, a2 + 1);
  bzero(a1 + 8, 0x300uLL);
  return a1;
}

uint64_t MIDI::MIDIPacketList_Deliverer::operator()(uint64_t a1, _DWORD *a2)
{
  __dst[1] = *MEMORY[0x1E69E9840];
  v61 = *(a1 + 8);
  (*(v61 + 8))(&v62, a1 + 16);
  v64 = 0;
  v63 = &v65;
  v52 = a2;
  if (*a2 == 2)
  {
    if (!a2[1])
    {
      goto LABEL_128;
    }

    v27 = 0;
    v28 = a2 + 2;
    v50 = a1 + 64;
LABEL_93:
    v51 = v27;
    v29 = v28[2];
    v57 = v28 + 3;
    v58 = v29;
    v59 = *v28;
    v60 = 0;
    while (1)
    {
      do
      {
        while (1)
        {
          do
          {
            v55 = 0;
            v56 = 0;
            v54 = 0;
            if (!MIDI::EventList::PacketReader::read(&v57, &v56, &v54))
            {
              v28 += v28[2] + 3;
              v27 = v51 + 1;
              if ((v51 + 1) >= v52[1])
              {
                goto LABEL_128;
              }

              goto LABEL_93;
            }

            __dst[0] = v56;
            v30 = v54;
            if (((1 << (v54 >> 28)) & 0xA02F) != 0)
            {
              v31 = HIDWORD(v54);
              goto LABEL_97;
            }
          }

          while (v54 >> 28 != 4);
          v32 = BYTE3(v54) & 0xF | 0x20;
          v33 = HIDWORD(v54);
          v34 = BYTE2(v54) >> 4;
          if (v34 <= 0xB)
          {
            break;
          }

          switch(v34)
          {
            case 0xCu:
              v45 = v32 << 24;
              v46 = BYTE2(v54) << 16;
              if (v54)
              {
                v47 = (v46 - 0x100000) | (v32 << 24);
                MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>((v46 - 0x100000) & 0xFFFFFF80 | (v32 << 24) | (HIDWORD(v54) >> 8) & 0x7F, 0, &v61, __dst);
                MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>(v47 | v33 & 0x7F | 0x2000, 0, &v61, __dst);
              }

              v31 = 0;
              v30 = HIWORD(v33) & 0x7F00 | v45 | v46;
LABEL_97:
              MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>(v30, v31, &v61, __dst);
              break;
            case 0xDu:
              v31 = 0;
              v30 = (BYTE2(v54) << 16) | (v32 << 24) | (HIDWORD(v54) >> 25 << 8);
              goto LABEL_97;
            case 0xEu:
              v31 = 0;
              v30 = (HIDWORD(v54) >> 10) & 0x7F00 | (BYTE2(v54) << 16) | (v32 << 24) | (HIDWORD(v54) >> 25);
              goto LABEL_97;
          }
        }

        if (v34 - 8 < 4)
        {
          v31 = 0;
          v35 = v34 == 9;
          if (HIDWORD(v54) >> 25)
          {
            v35 = HIDWORD(v54) >> 25;
          }

          v30 = v35 | (BYTE2(v54) << 16) | (v32 << 24) | v54 & 0x7F00;
          goto LABEL_97;
        }
      }

      while (v34 - 2 >= 2);
      v36 = (v54 >> 16) & 0xF;
      v37 = (v50 + 48 * (BYTE3(v54) & 0xF) + 3 * v36);
      v38 = (v54 >> 8) & 0x7F;
      v39 = v54 & 0x7F;
      v40 = (v54 & 0x100000) != 0 ? 2 : 1;
      if (v40 != *v37 || v38 != v37[1])
      {
        break;
      }

      v41 = v36 | 0xB0;
      if (v39 != v37[2])
      {
        goto LABEL_117;
      }

      v42 = (v32 << 24) | (v41 << 16);
LABEL_121:
      MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>(v42 | (v33 >> 25) | 0x600, 0, &v61, __dst);
      v44 = (v33 >> 18) & 0x7F;
      if (v44)
      {
        v31 = 0;
        v30 = v44 | v42 | 0x2600u;
        goto LABEL_97;
      }
    }

    v41 = v36 | 0xB0;
LABEL_117:
    if ((v54 & 0x100000) != 0)
    {
      v43 = 25344;
    }

    else
    {
      v43 = 25856;
    }

    v42 = (v32 << 24) | (v41 << 16);
    MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>(v42 | v43 | v38, 0, &v61, __dst);
    MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>((v43 + v42 + v39 - 256), 0, &v61, __dst);
    *v37 = v40;
    v37[1] = v38;
    v37[2] = v39;
    goto LABEL_121;
  }

  if (*a2 != 1)
  {
    std::terminate();
  }

  if (a2[1])
  {
    v4 = 0;
    v5 = a2 + 2;
    do
    {
      v6 = v5[2];
      v57 = v5 + 3;
      v58 = v6;
      v59 = *v5;
      v60 = 0;
      while (1)
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        if (!MIDI::EventList::PacketReader::read(&v57, &v53, &v54))
        {
          break;
        }

        v7 = v53;
        v8 = v54;
        v9 = v54 >> 28;
        if (v54 >> 28 == 3)
        {
          v17 = (v54 >> 16) & 0xF;
          if (v17 <= 6 && BYTE2(v54) <= 0x3Fu)
          {
            v56 = _byteswap_uint64(__PAIR64__(v54, HIDWORD(v54)));
            if (BYTE2(v54) > 0x1Fu)
            {
              v10 = 0;
              v18 = __dst;
              if (!v17)
              {
                goto LABEL_49;
              }

LABEL_48:
              memcpy(v18, &v56 + 2, (v54 >> 16) & 0xF);
              v10 += (v17 - 1) + 1;
              goto LABEL_49;
            }

            LOBYTE(__dst[0]) = -16;
            v18 = (__dst + 1);
            v10 = 1;
            if (v17)
            {
              goto LABEL_48;
            }

LABEL_49:
            if ((((v8 >> 20) + 3) & 2) != 0)
            {
              *(__dst + v10++) = -9;
            }

            v11 = v63;
            if (v64)
            {
              if (*v63 == v7)
              {
                v21 = *(v63 + 4);
                if (*(v63 + v21 + 9) != 247 && LOBYTE(__dst[0]) != 240)
                {
                  if (v63 + v10 + v21 + 10 > __dst)
                  {
                    goto LABEL_60;
                  }

                  goto LABEL_62;
                }
              }

              else
              {
                v21 = *(v63 + 4);
              }

              v11 = (v63 + v21 + 13) & 0xFFFFFFFFFFFFFFFCLL;
            }

            if (v11 + v10 + 10 > __dst)
            {
LABEL_60:
              v22 = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(&v61, v7, __dst, v10);
LABEL_74:
              v11 = v22;
              goto LABEL_85;
            }

            v21 = 0;
            ++v64;
            *v11 = v7;
            *(v11 + 8) = 0;
LABEL_62:
            v23 = (v11 + v21 + 10);
            v24 = __dst;
            if (v10 > 1)
            {
              if (v10 != 2)
              {
                if (v10 != 3)
                {
                  if (v10 != 4)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_80;
                }

LABEL_81:
                v25 = *v24;
                v24 = (v24 + 1);
                *v23++ = v25;
              }

LABEL_82:
              v26 = *v24;
              v24 = (v24 + 1);
              *v23++ = v26;
              goto LABEL_83;
            }

            if (v10)
            {
              if (v10 != 1)
              {
                goto LABEL_88;
              }

              goto LABEL_83;
            }

LABEL_84:
            *(v11 + 8) += v10;
LABEL_85:
            v63 = v11;
          }
        }

        else if (v9 == 2)
        {
          v13 = v54 & 0xE00000;
          LOBYTE(__dst[0]) = BYTE2(v54);
          BYTE1(__dst[0]) = BYTE1(v54) & 0x7F;
          if ((v54 & 0xE00000) == 0xC00000)
          {
            v14 = 2;
          }

          else
          {
            v14 = 3;
          }

          if (v13 != 12582912)
          {
            BYTE2(__dst[0]) = v54 & 0x7F;
          }

          v15 = v63;
          if (v64)
          {
            if (*v63 == v53)
            {
              v16 = *(v63 + 4);
              if (BYTE2(v54) != 240 && *(v63 + v16 + 9) != 247)
              {
                if (v63 + v14 + v16 + 10 > __dst)
                {
                  goto LABEL_40;
                }

                goto LABEL_42;
              }
            }

            else
            {
              v16 = *(v63 + 4);
            }

            v15 = (v63 + v16 + 13) & 0xFFFFFFFFFFFFFFFCLL;
          }

          if (v15 + v14 + 10 > __dst)
          {
LABEL_40:
            v15 = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(&v61, v53, __dst, v14);
            goto LABEL_46;
          }

          v16 = 0;
          ++v64;
          *v15 = v53;
          *(v15 + 8) = 0;
LABEL_42:
          v19 = (v15 + v16 + 10);
          if (v13 == 12582912)
          {
            v20 = __dst;
          }

          else
          {
            *v19 = __dst[0];
            v19 = (v15 + v16 + 11);
            v20 = (__dst + 1);
          }

          *v19 = *v20;
          v19[1] = *(v20 + 1);
          *(v15 + 8) += v14;
LABEL_46:
          v63 = v15;
        }

        else if (v9 == 1 && BYTE2(v54) >= 0xF0u && ((0x22B1uLL >> (BYTE2(v54) + 16)) & 1) == 0)
        {
          v10 = MIDI::_gMessageSize[BYTE2(v54) - 240];
          LOBYTE(__dst[0]) = BYTE2(v54);
          if (((0xDD40uLL >> (BYTE2(v54) + 16)) & 1) == 0)
          {
            BYTE1(__dst[0]) = BYTE1(v54) & 0x7F;
            if (BYTE2(v54) == 242)
            {
              BYTE2(__dst[0]) = v54 & 0x7F;
            }
          }

          v11 = v63;
          if (v64)
          {
            if (*v63 == v53)
            {
              v12 = *(v63 + 4);
              if (BYTE2(v54) != 240 && *(v63 + v12 + 9) != 247)
              {
                if (v63 + v12 + v10 + 10 > __dst)
                {
                  goto LABEL_73;
                }

                goto LABEL_76;
              }
            }

            else
            {
              v12 = *(v63 + 4);
            }

            v11 = (v63 + v12 + 13) & 0xFFFFFFFFFFFFFFFCLL;
          }

          if (v11 + v10 + 10 > __dst)
          {
LABEL_73:
            v22 = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(&v61, v53, __dst, v10);
            goto LABEL_74;
          }

          v12 = 0;
          ++v64;
          *v11 = v53;
          *(v11 + 8) = 0;
LABEL_76:
          v23 = (v11 + v12 + 10);
          v24 = __dst;
          if (v10 > 1)
          {
            if (v10 != 2)
            {
              if (v10 != 3)
              {
                if (v10 != 4)
                {
LABEL_88:
                  memmove(v23, __dst, v10);
                  goto LABEL_84;
                }

LABEL_80:
                *v23++ = __dst[0];
                v24 = (__dst + 1);
              }

              goto LABEL_81;
            }

            goto LABEL_82;
          }

          if (!v10)
          {
            goto LABEL_84;
          }

LABEL_83:
          *v23 = *v24;
          goto LABEL_84;
        }
      }

      v5 += v5[2] + 3;
      ++v4;
    }

    while (v4 < v52[1]);
  }

LABEL_128:
  result = MIDI::PacketizerBase<MIDI::LegacyPacketList>::~PacketizerBase(&v61);
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

void MIDI::MIDIPacketList_Deliverer::~MIDIPacketList_Deliverer(MIDI::MIDIPacketList_Deliverer *this)
{
  *this = &unk_1F033BC30;
  (*(*(this + 1) + 24))(this + 16);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033BC30;
  (*(*(this + 1) + 24))(this + 16);
}

uint64_t MIDI::PacketizerBase<MIDI::LegacyPacketList>::~PacketizerBase(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v3 = a1 + 64;
    (**a1)(a1 + 8, &v3);
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 68;
  (*(*a1 + 24))(a1 + 8);
  return a1;
}

uint64_t MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>(uint64_t result, unsigned int a2, uint64_t a3, uint64_t *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = BYTE2(result);
  v7 = result >> 28;
  v8 = &v35;
  if (result >> 28 == 3)
  {
    v21 = WORD1(result) & 0xF;
    if (v21 > 6 || BYTE2(result) > 0x3Fu)
    {
      goto LABEL_82;
    }

    v22 = (result >> 20) + 3;
    v33[0] = bswap32(result);
    v33[1] = bswap32(a2);
    if (BYTE2(result) > 0x1Fu)
    {
      v9 = 0;
      p_dst = &__dst;
      if (!v21)
      {
        goto LABEL_43;
      }
    }

    else
    {
      __dst = -16;
      v9 = 1;
      p_dst = &v35;
      if (!v21)
      {
LABEL_43:
        if ((v22 & 2) != 0)
        {
          *(&__dst + v9++) = -9;
        }

        v25 = *a4;
        v11 = *(a3 + 56);
        v26 = a3 + 1088;
        v27 = *(a3 + 64);
        if (v27)
        {
          if (*v11 == v25)
          {
            v28 = *(v11 + 8);
            if (*(v28 + v11 + 10 - 1) != 247 && __dst != 240)
            {
              if (v11 + 10 + v9 + v28 <= v26)
              {
LABEL_56:
                result = v11 + v28 + 10;
                v29 = &__dst;
                if (v9 <= 1)
                {
                  if (!v9)
                  {
LABEL_80:
                    *(v11 + 8) += v9;
                    goto LABEL_81;
                  }

                  if (v9 == 1)
                  {
LABEL_79:
                    *result = *v29;
                    goto LABEL_80;
                  }

                  goto LABEL_85;
                }

                if (v9 != 2)
                {
                  if (v9 != 3)
                  {
                    if (v9 == 4)
                    {
LABEL_74:
                      *result++ = __dst;
LABEL_77:
                      v31 = *v8;
                      v30 = v8 + 1;
                      *result++ = v31;
                      goto LABEL_78;
                    }

LABEL_85:
                    result = memmove(result, &__dst, v9);
                    goto LABEL_80;
                  }

LABEL_76:
                  v8 = &__dst;
                  goto LABEL_77;
                }

LABEL_75:
                v30 = &__dst;
LABEL_78:
                *result++ = *v30;
                v29 = v30 + 1;
                goto LABEL_79;
              }

              goto LABEL_54;
            }
          }

          else
          {
            v28 = *(v11 + 8);
          }

          v11 = (v11 + v28 + 13) & 0xFFFFFFFFFFFFFFFCLL;
        }

        if (v11 + v9 + 10 <= v26)
        {
          LODWORD(v28) = 0;
          *(a3 + 64) = v27 + 1;
          *v11 = v25;
          *(v11 + 8) = 0;
          goto LABEL_56;
        }

LABEL_54:
        result = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(a3, v25, &__dst, v9);
LABEL_68:
        v11 = result;
LABEL_81:
        *(a3 + 56) = v11;
        goto LABEL_82;
      }
    }

    memcpy(p_dst, v33 + 2, v21);
    v9 += (v21 - 1) + 1;
    goto LABEL_43;
  }

  if (v7 == 2)
  {
    v15 = result & 0xE00000;
    __dst = BYTE2(result);
    v35 = BYTE1(result) & 0x7F;
    if ((result & 0xE00000) == 0xC00000)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }

    if (v15 != 12582912)
    {
      v36 = result & 0x7F;
    }

    v17 = *a4;
    result = *(a3 + 56);
    v18 = a3 + 1088;
    v19 = *(a3 + 64);
    if (v19)
    {
      if (*result == v17)
      {
        v20 = *(result + 8);
        if (v6 != 240 && *(v20 + result + 10 - 1) != 247)
        {
          if (result + 10 + v16 + v20 <= v18)
          {
            goto LABEL_36;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v20 = *(result + 8);
      }

      result = (result + v20 + 13) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (result + v16 + 10 <= v18)
    {
      LODWORD(v20) = 0;
      *(a3 + 64) = v19 + 1;
      *result = v17;
      *(result + 8) = 0;
LABEL_36:
      v24 = (result + v20 + 10);
      if (v15 == 12582912)
      {
        v8 = &__dst;
      }

      else
      {
        *v24 = __dst;
        v24 = (result + v20 + 11);
      }

      *v24 = *v8;
      v24[1] = v8[1];
      *(result + 8) += v16;
      goto LABEL_40;
    }

LABEL_34:
    result = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(a3, v17, &__dst, v16);
LABEL_40:
    *(a3 + 56) = result;
    goto LABEL_82;
  }

  if (v7 == 1 && BYTE2(result) >= 0xF0u && ((0x22B1uLL >> (BYTE2(result) + 16)) & 1) == 0)
  {
    v9 = MIDI::_gMessageSize[BYTE2(result) - 240];
    __dst = BYTE2(result);
    if (((0xDD40uLL >> (BYTE2(result) + 16)) & 1) == 0)
    {
      v35 = BYTE1(result) & 0x7F;
      if (BYTE2(result) == 242)
      {
        v36 = result & 0x7F;
      }
    }

    v10 = *a4;
    v11 = *(a3 + 56);
    v12 = a3 + 1088;
    v13 = *(a3 + 64);
    if (v13)
    {
      if (*v11 == v10)
      {
        v14 = *(v11 + 8);
        if (BYTE2(result) != 240 && *(v14 + v11 + 10 - 1) != 247)
        {
          if (v11 + 10 + v14 + v9 <= v12)
          {
LABEL_70:
            result = v11 + v14 + 10;
            v29 = &__dst;
            if (v9 <= 1)
            {
              if (!v9)
              {
                goto LABEL_80;
              }

              goto LABEL_79;
            }

            if (v9 != 2)
            {
              if (v9 != 3)
              {
                if (v9 == 4)
                {
                  goto LABEL_74;
                }

                goto LABEL_85;
              }

              goto LABEL_76;
            }

            goto LABEL_75;
          }

LABEL_67:
          result = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(a3, v10, &__dst, v9);
          goto LABEL_68;
        }
      }

      else
      {
        v14 = *(v11 + 8);
      }

      v11 = (v11 + v14 + 13) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (v11 + v9 + 10 <= v12)
    {
      LODWORD(v14) = 0;
      *(a3 + 64) = v13 + 1;
      *v11 = v10;
      *(v11 + 8) = 0;
      goto LABEL_70;
    }

    goto LABEL_67;
  }

LABEL_82:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(uint64_t a1, uint64_t a2, char *a3, int64_t a4)
{
  if (*(a1 + 64))
  {
    v16 = a1 + 64;
    (**a1)(a1 + 8, &v16);
    *(a1 + 64) = 0;
    if (a4 <= 1010)
    {
      *(a1 + 64) = 1;
      v8 = a1 + 68;
      *(a1 + 68) = a2;
      *(a1 + 76) = 0;
      v9 = (a1 + 78);
      if (a4 <= 1)
      {
        if (!a4)
        {
LABEL_15:
          v13 = 0;
          goto LABEL_16;
        }

        if (a4 == 1)
        {
          goto LABEL_13;
        }
      }

      else
      {
        switch(a4)
        {
          case 2:
LABEL_10:
            v12 = *a3++;
            *v9++ = v12;
LABEL_13:
            *v9 = *a3;
            v13 = *(a1 + 76);
LABEL_16:
            *(a1 + 76) = v13 + a4;
            return v8;
          case 3:
LABEL_9:
            v11 = *a3++;
            *v9++ = v11;
            goto LABEL_10;
          case 4:
            v10 = *a3++;
            v9 = (a1 + 79);
            *(a1 + 78) = v10;
            goto LABEL_9;
        }
      }

      memmove(v9, a3, a4);
      goto LABEL_15;
    }
  }

  MIDI::LegacyPacketList::create();
  v16 = v15;
  (**a1)(a1 + 8, &v16);
  std::unique_ptr<MIDI::LegacyPacketList,MIDI::LegacyPacketListDeleter>::reset[abi:ne200100](&v15);
  v8 = a1 + 68;
  *(a1 + 56) = a1 + 68;
  *(a1 + 64) = 0;
  std::unique_ptr<MIDI::LegacyPacketList,MIDI::LegacyPacketListDeleter>::reset[abi:ne200100](&v15);
  return v8;
}

uint64_t *std::unique_ptr<MIDI::LegacyPacketList,MIDI::LegacyPacketListDeleter>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return MIDI::LegacyPacketListDeleter::operator()();
  }

  return result;
}

void _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI16LegacyPacketListEEEC1IZZ34__AUAudioUnit_setupMIDIConversion_EUb5_E3__7EENS0_7wrapperIT_EEENUlPvSC_E0_8__invokeESC_SC_(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a1 + 24) = _Block_copy(*(a2 + 3));
  v4 = *(a2 + 3);
}

void *_ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI16LegacyPacketListEEEC1IZZ34__AUAudioUnit_setupMIDIConversion_EUb5_E3__7EENS0_7wrapperIT_EEENUlPvSC_E_8__invokeESC_SC_(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  result = _Block_copy(*(a2 + 3));
  *(a1 + 24) = result;
  return result;
}

uint64_t _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI16LegacyPacketListEEEC1IZZ34__AUAudioUnit_setupMIDIConversion_EUb5_E3__7EENS0_7wrapperIT_EEENUlPvOS5_E_8__invokeESC_SD_(uint64_t result, int **a2)
{
  v2 = **a2;
  if (v2)
  {
    v3 = result;
    v4 = (*a2 + 1);
    do
    {
      v5 = *(v3 + 16);
      v6 = *(v3 + 8);
      v7 = *(v4 + 8);
      result = (*(*(v3 + 24) + 16))();
      **v3 = result;
      if (result)
      {
        break;
      }

      v4 = (v4 + 10 + *(v4 + 8) + 3) & 0xFFFFFFFFFFFFFFFCLL;
      --v2;
    }

    while (v2);
  }

  return result;
}

void __destroy_helper_block_ea8_40c85_ZTSNSt3__110shared_ptrIN4MIDI19LegacyMIDIConverterINS1_22MIDI_1_to_2_TranslatorEEEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_40c85_ZTSNSt3__110shared_ptrIN4MIDI19LegacyMIDIConverterINS1_22MIDI_1_to_2_TranslatorEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t MIDI::LegacyMIDIConverter<MIDI::MIDI_1_to_2_Translator>::convertLegacyDataToEventList(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v68[6] = *MEMORY[0x1E69E9840];
  v58[0] = a2;
  v58[1] = a3;
  v58[2] = a4;
  v58[3] = 0;
  v67 = *a5;
  (*(v67 + 8))(v68, a5 + 1);
  v6 = MIDIEventListInit(&evtlist, kMIDIProtocol_2_0);
  time = 0;
  v57 = a1 + 33;
  memset(words, 0, sizeof(words));
  while ((MIDI::LegacyPacketList::PacketReader::read(v58, &time, words) & 1) != 0)
  {
    v7 = words[0];
    if (words[0] >> 28 == 2)
    {
      *v62 = 0;
      v63 = 0;
      v8 = HIBYTE(words[0]) & 0xF;
      v9 = HIBYTE(words[0]) & 0xF | 0x40;
      v10 = BYTE2(words[0]);
      v11 = *(a1 + 32);
      v12 = BYTE2(words[0]) >> 4;
      if ((v11 & 1) == 0)
      {
        v13 = *a1;
        if ((*a1 & 0xFF0000) != 0)
        {
          if (((v13 ^ words[0]) & 0xF0000) != 0)
          {
            v11 = 1;
            *(a1 + 32) = 1;
          }

          else if (v12 == 11)
          {
            v16 = BYTE1(v13);
            v11 = 1;
            if (v16 > 98)
            {
              switch(v16)
              {
                case 'c':
                  v17 = words[0] & 0xFF00;
                  v15 = a1 + 4;
                  v18 = 25088;
                  goto LABEL_39;
                case 'd':
                  v17 = words[0] & 0xFF00;
                  v15 = a1 + 4;
                  v18 = 25856;
LABEL_39:
                  if (v17 == v18)
                  {
                    goto LABEL_13;
                  }

                  v15 = a1 + 4;
                  if ((words[0] & 0xF0DF00) == 0xB00600)
                  {
                    goto LABEL_13;
                  }

LABEL_41:
                  v11 = 1;
                  break;
                case 'e':
                  v17 = words[0] & 0xFF00;
                  v15 = a1 + 4;
                  v18 = 25600;
                  goto LABEL_39;
              }
            }

            else
            {
              switch(v16)
              {
                case 0:
                  v15 = a1 + 4;
                  if ((words[0] & 0xFF00) == 0x2000)
                  {
                    goto LABEL_13;
                  }

                  goto LABEL_41;
                case 32:
                  v15 = a1 + 4;
                  if ((words[0] & 0xFF00) == 0)
                  {
                    goto LABEL_13;
                  }

                  goto LABEL_41;
                case 98:
                  v17 = words[0] & 0xFF00;
                  v15 = a1 + 4;
                  v18 = 25344;
                  goto LABEL_39;
              }
            }
          }

          else
          {
            v11 = (v13 & 0xDF00) != 0 || v12 != 12;
          }
        }

        else
        {
          v11 = 1;
          if (v12 == 11 && (words[0] & 0xF00000) == 0xB00000)
          {
            v15 = a1;
            if (BYTE1(words[0]) - 98 < 4 || (v15 = a1, !BYTE1(words[0])) || (v15 = a1, BYTE1(words[0]) == 32))
            {
LABEL_13:
              *v15 = *words;
              goto LABEL_57;
            }

            goto LABEL_41;
          }
        }
      }

      v20 = *a1;
      v21 = BYTE2(*a1);
      if (BYTE2(*a1) && v11)
      {
        *(a1 + 32) = 1;
        v65 = 0;
        v64[0] = v20 & 0xFF00 | (v21 << 16) & 0x80FFFFFF | ((BYTE3(v7) & 0xF | 0x40) << 24);
        v22 = v20 << 25;
        if (v20 >= 0x41u)
        {
          v23 = (v20 & 0x3F) << 19;
          if (v23)
          {
            do
            {
              v22 |= v23;
              v24 = v23 > 0x3F;
              v23 >>= 6;
            }

            while (v24);
          }
        }

        v64[1] = v22;
        v6 = MIDIEventListAdd(&evtlist, 0x114uLL, v6, time, 2uLL, v64);
        if (!v6)
        {
          p_evtlist = &evtlist;
          (*v67)(v68, &p_evtlist);
          memset(&evtlist, 0, sizeof(evtlist));
          v25 = MIDIEventListInit(&evtlist, kMIDIProtocol_2_0);
          v6 = MIDIEventListAdd(&evtlist, 0x114uLL, v25, time, MIDI::UniversalPacket::word_sizes[v64[0] >> 28], v64);
        }

        *a1 = 0;
        v65 = 0;
        v26 = a1[4];
        if (BYTE2(v26))
        {
          LOWORD(v64[0]) = v26 & 0xFF00;
          BYTE2(v64[0]) = BYTE2(v26);
          HIBYTE(v64[0]) = v9;
          v27 = v26;
          v28 = v26 << 25;
          if (v27 >= 0x41)
          {
            v29 = (v27 & 0x3F) << 19;
            if (v29)
            {
              do
              {
                v28 |= v29;
                v24 = v29 > 0x3F;
                v29 >>= 6;
              }

              while (v24);
            }
          }

          v64[1] = v28;
          v30 = time;
          v6 = MIDIEventListAdd(&evtlist, 0x114uLL, v6, time, 2uLL, v64);
          if (!v6)
          {
            p_evtlist = &evtlist;
            (*v67)(v68, &p_evtlist);
            memset(&evtlist, 0, sizeof(evtlist));
            v31 = MIDIEventListInit(&evtlist, kMIDIProtocol_2_0);
            v6 = MIDIEventListAdd(&evtlist, 0x114uLL, v31, v30, MIDI::UniversalPacket::word_sizes[v64[0] >> 28], v64);
          }

          a1[4] = 0;
        }

        *(v57 + (v8 << 7) + 8 * ((v7 >> 16) & 0xF)) = 0;
      }

LABEL_57:
      v32 = (v7 >> 8) & 0x7F;
      v33 = v7 & 0x7F;
      if (BYTE2(v7) >> 4 <= 0xAu)
      {
        switch(v12)
        {
          case 8:
            goto LABEL_87;
          case 9:
            if ((v7 & 0x7F) == 0)
            {
              v10 = BYTE2(v7) - 16;
              v33 = 64;
            }

LABEL_87:
            v36 = (v9 << 24) | (v10 << 16) | (v32 << 8);
            v62[0] = v36;
            v46 = v33 << 9;
            if (v33 >= 0x41)
            {
              v47 = 8 * (v33 & 0x3F);
              if (v47)
              {
                do
                {
                  v46 |= v47;
                  v24 = v47 > 0x3F;
                  v47 >>= 6;
                }

                while (v24);
              }
            }

            v37 = v46 << 16;
LABEL_91:
            v62[1] = v37;
            goto LABEL_92;
          case 10:
            v36 = (BYTE2(v7) << 16) | (v9 << 24) | (v32 << 8);
            v62[0] = v36;
            v37 = v7 << 25;
            if (v33 >= 0x41)
            {
              v38 = (v7 & 0x3F) << 19;
              if (v38)
              {
                do
                {
                  v37 |= v38;
                  v24 = v38 > 0x3F;
                  v38 >>= 6;
                }

                while (v24);
              }
            }

            goto LABEL_91;
        }

        goto LABEL_75;
      }

      if (BYTE2(v7) >> 4 > 0xCu)
      {
        if (v12 != 13)
        {
          if (v12 == 14)
          {
            v36 = (v9 << 24) | (BYTE2(v7) << 16);
            v62[0] = v36;
            v39 = v32 | (v33 << 7);
            v37 = v39 << 18;
            if (v39 > 0x2000)
            {
              for (i = 32 * (v39 & 0x1FFF); i; i >>= 13)
              {
                v37 |= i;
              }
            }

            goto LABEL_91;
          }

LABEL_75:
          v36 = v62[0];
          goto LABEL_92;
        }

        v36 = (v9 << 24) | (BYTE2(v7) << 16);
        v62[0] = v36;
        v44 = v7 >> 8 << 25;
        if (v32 >= 0x41)
        {
          v45 = ((v7 >> 8) & 0x3F) << 19;
          if (v45)
          {
            do
            {
              v44 |= v45;
              v24 = v45 > 0x3F;
              v45 >>= 6;
            }

            while (v24);
          }
        }

        v62[1] = v44;
LABEL_92:
        v6 = MIDIEventListAdd(&evtlist, 0x114uLL, v6, time, MIDI::UniversalPacket::word_sizes[v36 >> 28], v62);
        if (!v6)
        {
          *v64 = &evtlist;
          (*v67)(v68, v64);
          memset(&evtlist, 0, sizeof(evtlist));
          v48 = MIDIEventListInit(&evtlist, kMIDIProtocol_2_0);
          v6 = MIDIEventListAdd(&evtlist, 0x114uLL, v48, time, MIDI::UniversalPacket::word_sizes[v62[0] >> 28], v62);
        }
      }

      else
      {
        if (v12 != 11)
        {
          v34 = (v57 + (v8 << 7) + 8 * (WORD1(v7) & 0xF));
          if (*v34 == 1)
          {
            v35 = *(a1 + 32) ^ 1;
          }

          else
          {
            v35 = 0;
          }

          v36 = (v9 << 24) | (BYTE2(v7) << 16) | v35;
          v49 = (v32 << 24) | (v34[2] << 8) | v34[3];
          v62[0] = v36;
          v62[1] = v49;
          *v34 = 0;
LABEL_99:
          *a1 = 0u;
          *(a1 + 1) = 0u;
          goto LABEL_92;
        }

        v41 = (v7 >> 16) & 0xF;
        v42 = (v57 + (v8 << 7) + 8 * v41);
        if (((v7 >> 8) & 0x7F) > 0x61)
        {
          if (((v7 >> 8) & 0x7F) > 0x63)
          {
            if (v32 == 100)
            {
              v42[1] = 1;
              goto LABEL_121;
            }

            if (v32 != 101)
            {
              goto LABEL_123;
            }

            v42[1] = 1;
          }

          else
          {
            if (v32 == 98)
            {
              v42[1] = 2;
LABEL_121:
              v42[5] = v33;
              goto LABEL_122;
            }

            v42[1] = 2;
          }

          v42[4] = v33;
        }

        else
        {
          if (((v7 >> 8) & 0x7F) > 0x1F)
          {
            if (v32 != 32)
            {
              if (v32 == 38)
              {
                v43 = v7 & 0x7F;
LABEL_103:
                v42[7] = v43;
                if ((a1[8] & 1) == 0 && v42[1])
                {
                  if (v42[1] == 1)
                  {
                    v50 = 32;
                  }

                  else
                  {
                    v50 = 48;
                  }

                  v36 = (v9 << 24) | ((v50 | v41) << 16) | (v42[4] << 8) | v42[5];
                  v62[0] = v36;
                  v51 = v42[7] | (v42[6] << 7);
                  v52 = v51 << 18;
                  if (v51 > 0x2000)
                  {
                    for (j = 32 * (v51 & 0x1FFF); j; j >>= 13)
                    {
                      v52 |= j;
                    }
                  }

                  v62[1] = v52;
                  goto LABEL_99;
                }
              }

LABEL_123:
              v36 = (BYTE2(v7) << 16) | (v9 << 24) | (v32 << 8);
              v62[0] = v36;
              v37 = v7 << 25;
              if (v33 >= 0x41)
              {
                v54 = (v7 & 0x3F) << 19;
                if (v54)
                {
                  do
                  {
                    v37 |= v54;
                    v24 = v54 > 0x3F;
                    v54 >>= 6;
                  }

                  while (v24);
                }
              }

              goto LABEL_91;
            }

            v42[3] = v33;
          }

          else
          {
            if (v32)
            {
              if (v32 == 6)
              {
                v43 = 0;
                v42[6] = v33;
                goto LABEL_103;
              }

              goto LABEL_123;
            }

            v42[2] = v33;
          }

          *v42 = 1;
        }

LABEL_122:
        if (a1[8])
        {
          goto LABEL_123;
        }
      }
    }

    else
    {
      v6 = MIDIEventListAdd(&evtlist, 0x114uLL, v6, time, MIDI::UniversalPacket::word_sizes[words[0] >> 28], words);
      if (!v6)
      {
        *v64 = &evtlist;
        (*v67)(v68, v64);
        memset(&evtlist, 0, sizeof(evtlist));
        v14 = MIDIEventListInit(&evtlist, kMIDIProtocol_2_0);
        v6 = MIDIEventListAdd(&evtlist, 0x114uLL, v14, time, MIDI::UniversalPacket::word_sizes[words[0] >> 28], words);
      }
    }
  }

  if (evtlist.numPackets)
  {
    *v64 = &evtlist;
    (*v67)(v68, v64);
  }

  result = (*(v67 + 24))(v68);
  v56 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F7CCA40(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t MIDI::LegacyPacketList::PacketReader::read(uint64_t *a1, void *a2, _DWORD *a3)
{
  v3 = a1[1];
  v4 = a1[3];
  if (v4 >= v3)
  {
    return 0;
  }

  v5 = *a1;
  v6 = (*a1 + v4);
  v7 = *v6;
  if (*v6 < -16)
  {
LABEL_3:
    v8 = 2;
    if ((v7 & 0xE0) != 0xC0)
    {
      v8 = 3;
    }

    v9 = v8 + v4;
    v10 = v9 <= v3;
    if (v9 <= v3)
    {
      v11 = v6[1] & 0x7F;
      if ((v7 & 0xE0) == 0xC0)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6[2] & 0x7F;
      }

      *a3 = v12 | (v7 << 16) | (v11 << 8) | 0x20000000;
      *a2 = a1[2];
      v3 = v9;
    }

    goto LABEL_20;
  }

  while (2)
  {
    if (v7 < 0xF1)
    {
      v16 = v7 == 240;
      if (v7 == 240)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16)
      {
        a1[3] = ++v4;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v21 = (v4 < v3) | v19;
        if (v4 < v3 && (v19 & 1) == 0)
        {
          v22 = *(v5 + v4);
          if ((v22 & 0x80000000) == 0)
          {
            if (v18 == 6)
            {
              goto LABEL_43;
            }

            v21 = 0;
            a1[3] = ++v4;
            ++v20;
            goto LABEL_42;
          }

          if (v22 == -9)
          {
            a1[3] = ++v4;
          }

          if (v17 == 1)
          {
            v17 = 0;
          }

          else
          {
            v17 = 3;
          }

          v21 = 1;
        }

        if (v18 == 6)
        {
LABEL_43:
          v23 = bswap32(v28);
          *a3 = (v17 << 20) | (v20 << 16) | (v27[0] << 8) | v27[1] | 0x30000000;
          a3[1] = v23;
          *a2 = a1[2];
          return 1;
        }

        LOBYTE(v22) = 0;
LABEL_42:
        v27[v18++] = v22;
        v19 = v21;
      }
    }

    if (v7 == 247)
    {
      *a3 = 808452096;
      *a2 = a1[2];
      v24 = v4 + 1;
      goto LABEL_53;
    }

    if ((0x22B1uLL >> (v7 + 16)))
    {
      v13 = v4;
      do
      {
        v4 = v13 + 1;
        a1[3] = v13 + 1;
        if (v13 + 1 >= v3)
        {
          return 0;
        }

        v14 = *(v5 + 1 + v13++);
      }

      while ((v14 & 0x80000000) == 0);
      v7 = v14;
      v6 = (v5 + v4);
      if (v7 > -17)
      {
        continue;
      }

      goto LABEL_3;
    }

    break;
  }

  v24 = v4 + MIDI::_gMessageSize[v7 - 240];
  if (v24 > v3)
  {
    v10 = 0;
LABEL_20:
    a1[3] = v3;
    return v10;
  }

  if ((0xDD40uLL >> (v7 + 16)))
  {
    v25 = 0;
    goto LABEL_51;
  }

  v25 = v6[1] & 0x7F;
  if (v7 != 242)
  {
LABEL_51:
    v26 = 0;
    goto LABEL_52;
  }

  v26 = v6[2] & 0x7F;
LABEL_52:
  *a3 = (v7 << 16) | (v25 << 8) | v26 | 0x10000000;
  *a2 = a1[2];
LABEL_53:
  a1[3] = v24;
  return 1;
}

void _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI9EventListEEEC1IZZ34__AUAudioUnit_setupMIDIConversion_EUb4_E3__6EENS0_7wrapperIT_EEENUlPvSC_E0_8__invokeESC_SC_(uint64_t a1, uint64_t a2)
{
  *a1 = _Block_copy(*a2);
  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;
  v5 = *a2;
}

__n128 _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI9EventListEEEC1IZZ34__AUAudioUnit_setupMIDIConversion_EUb4_E3__6EENS0_7wrapperIT_EEENUlPvSC_E_8__invokeESC_SC_(uint64_t a1, uint64_t a2)
{
  *a1 = _Block_copy(*a2);
  v4 = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = v4;
  return result;
}

uint64_t _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI9EventListEEEC1IZZ34__AUAudioUnit_setupMIDIConversion_EUb4_E3__6EENS0_7wrapperIT_EEENUlPvOS5_E_8__invokeESC_SD_(uint64_t result, uint64_t *a2)
{
  if (!**(result + 24))
  {
    v2 = result;
    v3 = *a2;
    v4 = *(result + 8);
    v5 = *(result + 16);
    result = (*(*result + 16))();
    **(v2 + 24) = result;
  }

  return result;
}

void std::__shared_ptr_emplace<MIDI::LegacyMIDIConverter<MIDI::MIDI_1_to_2_Translator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F033BEC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void __destroy_helper_block_ea8_40c81_ZTSNSt3__110shared_ptrIN4MIDI19LegacyMIDIConverterINS1_18IdentityTranslatorEEEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_40c81_ZTSNSt3__110shared_ptrIN4MIDI19LegacyMIDIConverterINS1_18IdentityTranslatorEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t MIDI::LegacyMIDIConverter<MIDI::IdentityTranslator>::convertLegacyDataToEventList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v15[6] = *MEMORY[0x1E69E9840];
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = 0;
  v14 = *a4;
  (*(v14 + 8))(v15, a4 + 1);
  v4 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
  v10 = 0;
  time = 0;
  *words = 0;
  while ((MIDI::LegacyPacketList::PacketReader::read(v8, &time, words) & 1) != 0)
  {
    v4 = MIDIEventListAdd(&evtlist, 0x114uLL, v4, time, MIDI::UniversalPacket::word_sizes[words[0] >> 28], words);
    if (!v4)
    {
      p_evtlist = &evtlist;
      (*v14)(v15, &p_evtlist);
      memset(&evtlist, 0, sizeof(evtlist));
      v5 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
      v4 = MIDIEventListAdd(&evtlist, 0x114uLL, v5, time, MIDI::UniversalPacket::word_sizes[words[0] >> 28], words);
    }
  }

  if (evtlist.numPackets)
  {
    p_evtlist = &evtlist;
    (*v14)(v15, &p_evtlist);
  }

  result = (*(v14 + 24))(v15);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F7CD024(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI9EventListEEEC1IZZ34__AUAudioUnit_setupMIDIConversion_EUb3_E3__5EENS0_7wrapperIT_EEENUlPvSC_E0_8__invokeESC_SC_(uint64_t a1, uint64_t a2)
{
  *a1 = _Block_copy(*a2);
  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;
  v5 = *a2;
}

__n128 _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI9EventListEEEC1IZZ34__AUAudioUnit_setupMIDIConversion_EUb3_E3__5EENS0_7wrapperIT_EEENUlPvSC_E_8__invokeESC_SC_(uint64_t a1, uint64_t a2)
{
  *a1 = _Block_copy(*a2);
  v4 = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = v4;
  return result;
}

uint64_t _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI9EventListEEEC1IZZ34__AUAudioUnit_setupMIDIConversion_EUb3_E3__5EENS0_7wrapperIT_EEENUlPvOS5_E_8__invokeESC_SD_(uint64_t result, uint64_t *a2)
{
  if (!**(result + 24))
  {
    v2 = result;
    v3 = *a2;
    v4 = *(result + 8);
    v5 = *(result + 16);
    result = (*(*result + 16))();
    **(v2 + 24) = result;
  }

  return result;
}

void std::__shared_ptr_emplace<MIDI::LegacyMIDIConverter<MIDI::IdentityTranslator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F033BDF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F7CD6D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  MEMORY[0x193ADE2A0](va);
  _Unwind_Resume(a1);
}

void sub_18F7CDAAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl::findSlotForKey(uint64_t result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = -348639895 * ((v3 >> 47) ^ v3) % *(result + 8);
  if (v4 >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(result + 8);
  }

  v6 = (v4 + v5 - 3);
  v7 = 0xFFFFFFFFLL;
  v8 = 1;
  v9 = v4;
  do
  {
    v10 = v6;
    v11 = atomic_load((result + 16 + 8 * v9));
    if (v11 == -1)
    {
      if (v7 >= 0)
      {
        v7 = v7;
      }

      else
      {
        v7 = v9;
      }
    }

    else
    {
      if (!v11)
      {
        v8 = 0;
        if (v7 >= 0)
        {
          v9 = v7;
        }

        else
        {
          v9 = v9;
        }

        return v8 | (v9 << 32);
      }

      if (*(v11 + 8) == a2)
      {
        return v8 | (v9 << 32);
      }
    }

    if (v10 >= 3)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(result + 8);
    }

    v6 = (v10 + v12 - 3);
    v9 = v10;
  }

  while (v10 != v4);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = 0;
    v9 = v7;
    return v8 | (v9 << 32);
  }

  __break(1u);
  return result;
}

void std::unique_lock<std::mutex>::lock[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::element_t::release();
}

unsigned int *caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::element_t::release(unsigned int *result)
{
  if ((atomic_fetch_add(result, 0xFFFF0000) & 0xFFFF0000) == 0x10000)
  {
    if (atomic_load(result))
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

unint64_t caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::rehash(unint64_t *a1, unsigned int a2)
{
  v4 = atomic_load(a1 + 1);
  v5 = operator new(8 * (a2 - 1) + 24);
  v6 = v5;
  *v5 = a1;
  *(v5 + 2) = a2;
  *(v5 + 2) = 0;
  v7 = v5 + 16;
  if (a2)
  {
    v8 = a2 + 1;
    v9 = (v5 + 16);
    do
    {
      atomic_store(0, v9++);
      --v8;
    }

    while (v8 > 1);
  }

  if (v4)
  {
    v10 = *(v4 + 8);
    if (v10)
    {
      v11 = (v4 + 16);
      do
      {
        v12 = *v11;
        if (*v11 + 1 >= 2)
        {
          SlotForKey = caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl::findSlotForKey(v6, *(v12 + 8));
          if ((SlotForKey & 1) == 0)
          {
            atomic_fetch_add(v12, 0x10000u);
            atomic_store(v12, &v7[8 * HIDWORD(SlotForKey)]);
          }
        }

        ++v11;
        --v10;
      }

      while (v10);
    }

    atomic_store(v6, a1 + 1);
    v15 = a1[4];
    v14 = a1[5];
    if (v15 >= v14)
    {
      v17 = a1[3];
      v18 = v15 - v17;
      v19 = (v15 - v17) >> 3;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v21 = v14 - v17;
      if (v21 >> 2 > v20)
      {
        v20 = v21 >> 2;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (!(v22 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v23 = (v15 - v17) >> 3;
      v24 = (8 * v19);
      v25 = (8 * v19 - 8 * v23);
      *v24 = v4;
      v16 = v24 + 1;
      memcpy(v25, v17, v18);
      a1[3] = v25;
      a1[4] = v16;
      a1[5] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v15 = v4;
      v16 = v15 + 1;
    }

    a1[4] = v16;
  }

  else
  {
    atomic_store(v5, a1 + 1);
  }

  return v6;
}

uint64_t std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl>>,void,0>(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl::~table_impl(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl::~table_impl(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (a1 + 16);
    do
    {
      if (*v3 + 1 >= 2)
      {
        caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::element_t::release(*v3);
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  return a1;
}

void *RenderObserver::RenderObserver(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  a1[1] = 0;
  a1[2] = a4;
  a1[3] = a5;
  v6 = a3;
  v7 = [v6 copy];
  v8 = a1[1];
  a1[1] = v7;

  return a1;
}

uint64_t TThreadSafeList<RenderObserver>::deferred_remove(uint64_t a1, uint64_t a2)
{
  v4 = TThreadSafeList<RenderObserver>::AllocNode(a1);
  *(v4 + 2) = 1;
  result = RenderObserver::operator=((v4 + 2), a2);
  do
  {
    v6 = *(a1 + 8);
    *v4 = v6;
    v7 = v6;
    atomic_compare_exchange_strong((a1 + 8), &v7, v4);
  }

  while (v7 != v6);
  return result;
}

unint64_t *TThreadSafeList<RenderObserver>::AllocNode(uint64_t a1)
{
  do
  {
    v1 = *(a1 + 16);
    if (!v1)
    {
      operator new();
    }

    v2 = *(a1 + 16);
    atomic_compare_exchange_strong((a1 + 16), &v2, 0);
  }

  while (v2 != v1);
  v3 = *v1;
  if (*v1)
  {
    v4 = *v1;
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
    do
    {
      v6 = *(a1 + 16);
      *v5 = v6;
      v7 = v6;
      atomic_compare_exchange_strong((a1 + 16), &v7, v3);
    }

    while (v7 != v6);
  }

  return v1;
}

uint64_t RenderObserver::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;

  v5 = *(a2 + 8);
  *a1 = *a2;
  v6 = [v5 copy];
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t TThreadSafeList<RenderObserver>::deferred_add(uint64_t a1, uint64_t a2)
{
  v4 = TThreadSafeList<RenderObserver>::AllocNode(a1);
  *(v4 + 2) = 0;
  result = RenderObserver::operator=((v4 + 2), a2);
  do
  {
    v6 = *(a1 + 8);
    *v4 = v6;
    v7 = v6;
    atomic_compare_exchange_strong((a1 + 8), &v7, v4);
  }

  while (v7 != v6);
  return result;
}

void sub_18F7CE928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __destroy_helper_block_ea8_32c55_ZTSNSt3__110shared_ptrIN4MIDI20DynamicMIDIConverterEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_32c55_ZTSNSt3__110shared_ptrIN4MIDI20DynamicMIDIConverterEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *AUEventSchedule::midiEventList(AUEventSchedule *this, uint64_t a2, char a3, MIDIEventList *a4)
{
  if (!a4)
  {
    CAAssertRtn();
LABEL_9:
    v15 = CAAssertRtn();
    __clang_call_terminate(v15);
  }

  if (MIDI::EventList::size(a4) >= 0x115)
  {
    goto LABEL_9;
  }

  v8 = XAtomicPoolAllocator::alloc(this->mAllocator + 56);
  *v8 = 0;
  v8[1] = a2;
  *(v8 + 8) = 10;
  *(v8 + 18) = a3;
  v9 = MIDI::EventList::size(a4);
  result = memcpy(v8 + 20, a4, v9);
  a_value = this->mAddedEventQueue.mEnqueueHead.__a_.__a_value;
  atomic_store(a_value, v8);
  v12 = a_value;
  atomic_compare_exchange_strong(&this->mAddedEventQueue, &v12, v8);
  if (v12 != a_value)
  {
    v13 = v12;
    do
    {
      atomic_store(v12, v8);
      atomic_compare_exchange_strong(&this->mAddedEventQueue, &v13, v8);
      v14 = v13 == v12;
      v12 = v13;
    }

    while (!v14);
  }

  return result;
}

MIDIEventPacket *_ZZN4MIDI27readUMPToSegmentedEventListINS_22MIDI_1_to_2_TranslatorENS_9EventList12PacketReaderEZZ41__AUAudioUnit_scheduleMIDIEventListBlock_EUb2_E3__4EEv14MIDIProtocolIDRT_RT0_T1_ENKUlRKNS_15UniversalPacketEE_clESD_(uint64_t a1, UInt32 *words)
{
  result = MIDIEventListAdd(*(a1 + 8), 0x114uLL, **a1, **(a1 + 16), MIDI::UniversalPacket::word_sizes[*words >> 28], words);
  **a1 = result;
  if (!**a1)
  {
    v5 = *(a1 + 8);
    v6 = *(v5 + 4);
    if (v6)
    {
      v7 = *(a1 + 24);
      v8 = (v5 + 8);
      do
      {
        v9.protocol = *v5;
        v9.numPackets = 1;
        memcpy(v9.packet, v8, sizeof(v9.packet));
        AUEventSchedule::midiEventList((*v7 + 48), *(v7 + 8), *(v7 + 16), &v9);
        v8 += v8[2] + 3;
        --v6;
      }

      while (v6);
      v5 = *(a1 + 8);
    }

    *(v5 + 272) = 0;
    *(v5 + 240) = 0u;
    *(v5 + 256) = 0u;
    *(v5 + 208) = 0u;
    *(v5 + 224) = 0u;
    *(v5 + 176) = 0u;
    *(v5 + 192) = 0u;
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
    *(v5 + 112) = 0u;
    *(v5 + 128) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 96) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *v5 = 0u;
    **a1 = MIDIEventListInit(*(a1 + 8), **(a1 + 32));
    result = MIDIEventListAdd(*(a1 + 8), 0x114uLL, **a1, **(a1 + 16), MIDI::UniversalPacket::word_sizes[*words >> 28], words);
    **a1 = result;
  }

  return result;
}

__n128 _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI16LegacyPacketListEEEC1IZZ41__AUAudioUnit_scheduleMIDIEventListBlock_EUb1_E3__3EENS0_7wrapperIT_EEENUlPvSC_E0_8__invokeESC_SC_(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI16LegacyPacketListEEEC1IZZ41__AUAudioUnit_scheduleMIDIEventListBlock_EUb1_E3__3EENS0_7wrapperIT_EEENUlPvSC_E_8__invokeESC_SC_(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

AUEventSchedule *_ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI16LegacyPacketListEEEC1IZZ41__AUAudioUnit_scheduleMIDIEventListBlock_EUb1_E3__3EENS0_7wrapperIT_EEENUlPvOS5_E_8__invokeESC_SD_(AUEventSchedule *result, int **a2)
{
  v2 = **a2;
  if (v2)
  {
    v3 = result;
    v4 = (*a2 + 1);
    do
    {
      result = AUEventSchedule::midiEvents(&v3->mAUv2GetParameterSynchronizer[6], v3->mAllocator, v3->mScheduledParameterRefresher, *(v4 + 8), (v4 + 10));
      v4 = (v4 + 10 + *(v4 + 8) + 3) & 0xFFFFFFFFFFFFFFFCLL;
      --v2;
    }

    while (v2);
  }

  return result;
}

AUEventSchedule *AUEventSchedule::midiEvents(AUEventSchedule *this, uint64_t a2, char a3, int64_t a4, AUEventSchedule *a5)
{
  if (a4 >= 1)
  {
    v5 = a5;
    v9 = this;
    v10 = a5 + a4;
    while (1)
    {
      mAllocator = v9->mAllocator;
      if (LOBYTE(v5->mAUv2GetParameterSynchronizer) == 240)
      {
        break;
      }

      v12 = XAtomicPoolAllocator::alloc(mAllocator + 28);
      *v12 = 0;
      v12[1] = a2;
      *(v12 + 8) = 8;
      this = NextMIDIEvent(v5, v10);
      *(v12 + 9) = this - v5;
      *(v12 + 20) = a3;
      *(v12 + 21) = v5->mAUv2GetParameterSynchronizer;
      *(v12 + 22) = BYTE1(v5->mAUv2GetParameterSynchronizer);
      if ((this - v5) < 3)
      {
        v13 = -1;
      }

      else
      {
        v13 = BYTE2(v5->mAUv2GetParameterSynchronizer);
      }

      *(v12 + 23) = v13;
      a_value = v9->mAddedEventQueue.mEnqueueHead.__a_.__a_value;
      atomic_store(a_value, v12);
      v15 = a_value;
      atomic_compare_exchange_strong(&v9->mAddedEventQueue, &v15, v12);
      if (v15 != a_value)
      {
        v16 = v15;
        do
        {
          atomic_store(v15, v12);
          atomic_compare_exchange_strong(&v9->mAddedEventQueue, &v16, v12);
          v17 = v16 == v15;
          v15 = v16;
        }

        while (!v17);
      }

      v5 = this;
      if (this >= v10)
      {
        return this;
      }
    }

    v18 = AURenderEventAllocator::allocMIDISysEx(mAllocator, a4);
    *v18 = 0;
    *(v18 + 8) = a2;
    *(v18 + 16) = 9;
    *(v18 + 18) = a4;
    *(v18 + 20) = a3;
    this = memcpy((v18 + 21), v5, a4);
    v19 = v9->mAddedEventQueue.mEnqueueHead.__a_.__a_value;
    atomic_store(v19, v18);
    v20 = v19;
    atomic_compare_exchange_strong(&v9->mAddedEventQueue, &v20, v18);
    if (v20 != v19)
    {
      v21 = v20;
      do
      {
        atomic_store(v20, v18);
        atomic_compare_exchange_strong(&v9->mAddedEventQueue, &v21, v18);
        v17 = v21 == v20;
        v20 = v21;
      }

      while (!v17);
    }
  }

  return this;
}

uint64_t AURenderEventAllocator::allocMIDISysEx(AURenderEventAllocator *this, unint64_t a2)
{
  if (a2 < 0x1C)
  {
    result = XAtomicPoolAllocator::alloc(this);
  }

  else
  {
    result = caulk::rt_safe_memory_resource::rt_allocate(*(this + 42));
  }

  *(result + 17) = 0;
  return result;
}

void sub_18F7CFFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_18F7D0088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __destroy_helper_block_ea8_32c85_ZTSNSt3__110shared_ptrIN4MIDI19LegacyMIDIConverterINS1_22MIDI_1_to_2_TranslatorEEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_32c85_ZTSNSt3__110shared_ptrIN4MIDI19LegacyMIDIConverterINS1_22MIDI_1_to_2_TranslatorEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

__n128 _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI9EventListEEEC1IZZ37__AUAudioUnit_scheduleMIDIEventBlock_EUb0_E3__2EENS0_7wrapperIT_EEENUlPvSC_E0_8__invokeESC_SC_(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI9EventListEEEC1IZZ37__AUAudioUnit_scheduleMIDIEventBlock_EUb0_E3__2EENS0_7wrapperIT_EEENUlPvSC_E_8__invokeESC_SC_(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void __destroy_helper_block_ea8_32c81_ZTSNSt3__110shared_ptrIN4MIDI19LegacyMIDIConverterINS1_18IdentityTranslatorEEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_32c81_ZTSNSt3__110shared_ptrIN4MIDI19LegacyMIDIConverterINS1_18IdentityTranslatorEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

__n128 _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI9EventListEEEC1IZZ37__AUAudioUnit_scheduleMIDIEventBlock_EUb_E3__1EENS0_7wrapperIT_EEENUlPvSC_E0_8__invokeESC_SC_(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI9EventListEEEC1IZZ37__AUAudioUnit_scheduleMIDIEventBlock_EUb_E3__1EENS0_7wrapperIT_EEENUlPvSC_E_8__invokeESC_SC_(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUScheduledParameterRefresher2::armParameterWatchdog(ParameterWatchdogQueueElem const&)::{lambda(void)#1}>::perform(uint64_t a1)
{
  v2 = a1;
  ParameterWatchdog::schedule(*(a1 + 24) + 400, (a1 + 32));
  return caulk::concurrent::details::rt_message_call<AUScheduledParameterRefresher2::armParameterWatchdog(ParameterWatchdogQueueElem const&)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v2);
}

void sub_18F7D04DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::concurrent::details::rt_message_call<AUScheduledParameterRefresher2::armParameterWatchdog(ParameterWatchdogQueueElem const&)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(va);
  _Unwind_Resume(a1);
}

void ParameterWatchdog::schedule(uint64_t a1, _OWORD *a2)
{
  os_unfair_lock_lock((a1 + 8));
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v4 >= v5)
  {
    v8 = *(a1 + 16);
    v9 = (v4 - v8) >> 5;
    v10 = v9 + 1;
    if ((v9 + 1) >> 59)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::allocator<ParameterWatchdogQueueElem>::allocate_at_least[abi:ne200100](v12);
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v7 = 32 * v9 + 32;
    v15 = *(a1 + 16);
    v16 = *(a1 + 24) - v15;
    v17 = 32 * v9 - v16;
    memcpy(v13 - v16, v15, v16);
    v18 = *(a1 + 16);
    *(a1 + 16) = v17;
    *(a1 + 24) = v7;
    *(a1 + 32) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 24) = v7;
  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<ParameterWatchdogQueueElem> &,std::__wrap_iter<ParameterWatchdogQueueElem*>>(*(a1 + 16), v7, (v7 - *(a1 + 16)) >> 5);
  ParameterWatchdog::evaluate(a1);

  os_unfair_lock_unlock((a1 + 8));
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUScheduledParameterRefresher2::armParameterWatchdog(ParameterWatchdogQueueElem const&)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  caulk::concurrent::message::~message(*a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void std::allocator<ParameterWatchdogQueueElem>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<ParameterWatchdogQueueElem> &,std::__wrap_iter<ParameterWatchdogQueueElem*>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v4 = v3 >> 1;
    v5 = result + 32 * (v3 >> 1);
    v6 = *(a2 - 8);
    if (*(v5 + 24) > v6)
    {
      v7 = a2 - 32;
      v11 = *(a2 - 32);
      v12 = *(a2 - 16);
      do
      {
        v8 = v7;
        v7 = v5;
        v9 = *(v5 + 16);
        *v8 = *v5;
        v8[1] = v9;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 32 * v4;
      }

      while (*(v5 + 24) > v6);
      *v7 = v11;
      *(v7 + 16) = v12;
      *(v7 + 24) = v6;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void *ParameterWatchdog::evaluate(void *this)
{
  v1 = this[2];
  if (v1 == this[3])
  {
    return this;
  }

  v2 = this;
  while (1)
  {
    v3 = *(v1 + 24);
    v4 = mach_absolute_time();
    v5 = v2[6] + v4;
    if (v3 > v5)
    {
      break;
    }

    v6 = *v2;
    v7 = *v1;
    v8 = (*v2 + 304);
    atomic_fetch_add(v8, 1u);
    v9 = atomic_load((v6 + 296));
    if (!v9 || (caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl::findSlotForKey(v9, v7), !v10))
    {
      atomic_fetch_add(v8, 0xFFFFFFFF);
LABEL_16:
      this = v2[2];
      v29 = v2[3];
      v30 = (v29 - this) >> 5;
      if (v30 >= 2)
      {
        v31 = 0;
        v32 = *(this + 1);
        *&v59.mAddedEventQueue.mEnqueueHead.__a_.__a_value = *this;
        *&v59.mAddedEventQueue.mDequeueHead.padding[8] = v32;
        v33 = this;
        do
        {
          v34 = &v33[2 * v31 + 2];
          v35 = (2 * v31) | 1;
          v36 = 2 * v31 + 2;
          if (v36 < v30)
          {
            v37 = *(v34 + 24);
            v38 = *(v34 + 56);
            v34 += 32 * (v37 > v38);
            if (v37 > v38)
            {
              v35 = v36;
            }
          }

          v39 = *(v34 + 16);
          *v33 = *v34;
          v33[1] = v39;
          v33 = v34;
          v31 = v35;
        }

        while (v35 <= ((v30 - 2) >> 1));
        v40 = (v29 - 32);
        if (v34 == v40)
        {
          v43 = *&v59.mAddedEventQueue.mDequeueHead.padding[8];
          *v34 = *&v59.mAddedEventQueue.mEnqueueHead.__a_.__a_value;
          *(v34 + 16) = v43;
        }

        else
        {
          v41 = v40[1];
          *v34 = *v40;
          *(v34 + 16) = v41;
          v42 = *&v59.mAddedEventQueue.mDequeueHead.padding[8];
          *v40 = *&v59.mAddedEventQueue.mEnqueueHead.__a_.__a_value;
          v40[1] = v42;
          this = std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<ParameterWatchdogQueueElem> &,std::__wrap_iter<ParameterWatchdogQueueElem*>>(this, v34 + 32, (v34 + 32 - this) >> 5);
        }

        v29 = v2[3];
      }

      v44 = v29 - 32;
      v2[3] = v44;
      goto LABEL_27;
    }

    v11 = v10;
    atomic_fetch_add(v10, 1u);
    atomic_fetch_add((v6 + 304), 0xFFFFFFFF);
    AUEventSchedule::parameterWatchdogFired(&v59, *(v1 + 8), *(v1 + 16), v5);
    atomic_fetch_add(v11, 0xFFFFFFFF);
    if ((v59.mScheduledParameterRefresher & 1) == 0)
    {
      goto LABEL_16;
    }

    v13 = *v1;
    v12 = *(v1 + 8);
    v14 = v2[2];
    v15 = v2[3];
    v16 = (v15 - v14) >> 5;
    if (v16 >= 2)
    {
      v17 = 0;
      v18 = v14[1];
      *&v59.mAddedEventQueue.mEnqueueHead.__a_.__a_value = *v14;
      *&v59.mAddedEventQueue.mDequeueHead.padding[8] = v18;
      v19 = v14;
      do
      {
        v20 = &v19[2 * v17 + 2];
        v21 = (2 * v17) | 1;
        v22 = 2 * v17 + 2;
        if (v22 < v16)
        {
          v23 = *(v20 + 24);
          v24 = *(v20 + 56);
          v20 += 32 * (v23 > v24);
          if (v23 > v24)
          {
            v21 = v22;
          }
        }

        v25 = *(v20 + 16);
        *v19 = *v20;
        v19[1] = v25;
        v19 = v20;
        v17 = v21;
      }

      while (v21 <= ((v16 - 2) >> 1));
      v26 = (v15 - 32);
      if (v20 == v15 - 32)
      {
        v45 = *&v59.mAddedEventQueue.mDequeueHead.padding[8];
        *v20 = *&v59.mAddedEventQueue.mEnqueueHead.__a_.__a_value;
        *(v20 + 16) = v45;
      }

      else
      {
        v27 = *(v15 - 16);
        *v20 = *v26;
        *(v20 + 16) = v27;
        v28 = *&v59.mAddedEventQueue.mDequeueHead.padding[8];
        *v26 = *&v59.mAddedEventQueue.mEnqueueHead.__a_.__a_value;
        *(v15 - 16) = v28;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<ParameterWatchdogQueueElem> &,std::__wrap_iter<ParameterWatchdogQueueElem*>>(v14, v20 + 32, (v20 + 32 - v14) >> 5);
      }

      v15 = v2[3];
    }

    v2[3] = v15 - 32;
    v46 = v2[4];
    if (v15 - 32 >= v46)
    {
      v47 = v2[2];
      v48 = (v15 - 32 - v47) >> 5;
      v49 = v48 + 1;
      if ((v48 + 1) >> 59)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v50 = v46 - v47;
      if (v50 >> 4 > v49)
      {
        v49 = v50 >> 4;
      }

      if (v50 >= 0x7FFFFFFFFFFFFFE0)
      {
        v51 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v51 = v49;
      }

      if (v51)
      {
        std::allocator<ParameterWatchdogQueueElem>::allocate_at_least[abi:ne200100](v51);
      }

      v52 = 32 * v48;
      *v52 = v13;
      *(v52 + 8) = v12;
      *(v52 + 16) = *&v59.mAUv2GetParameterSynchronizer;
      v15 = 32 * v48 + 32;
      v53 = v2[2];
      v54 = v2[3] - v53;
      v55 = v52 - v54;
      memcpy((v52 - v54), v53, v54);
      v56 = v2[2];
      v2[2] = v55;
      v2[3] = v15;
      v2[4] = 0;
      if (v56)
      {
        operator delete(v56);
      }
    }

    else
    {
      *(v15 - 32) = v13;
      *(v15 - 24) = v12;
      *(v15 - 16) = *&v59.mAUv2GetParameterSynchronizer;
    }

    v2[3] = v15;
    this = std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<ParameterWatchdogQueueElem> &,std::__wrap_iter<ParameterWatchdogQueueElem*>>(v2[2], v15, (v15 - v2[2]) >> 5);
    v44 = v2[3];
LABEL_27:
    v1 = v2[2];
    if (v1 == v44)
    {
      return this;
    }
  }

  v57 = (v3 - v4) * 0.0000000416666667;
  v58 = v2[8];

  return CAEventReceiver::Impl::timerShouldFireWithin(v58, v57);
}

void caulk::concurrent::details::rt_message_call<AUScheduledParameterRefresher2::armParameterWatchdog(ParameterWatchdogQueueElem const&)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F7D1058(_Unwind_Exception *a1)
{
  caulk::pooled_semaphore_mutex::_unlock((v1 + 4));
  caulk::pooled_semaphore_mutex::_unlock(v2);
  _Unwind_Resume(a1);
}

RenderObserverList *RenderObserverList::callAll(RenderObserverList *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4, uint64_t a5, AudioBufferList *a6)
{
  if (!this->mTouched)
  {
    return this;
  }

  if ((*a2 & 4) == 0)
  {
    goto LABEL_42;
  }

  do
  {
    mHead = this->mObservers.mPendingList.mHead;
    if (!mHead)
    {
      goto LABEL_42;
    }

    v12 = this->mObservers.mPendingList.mHead;
    atomic_compare_exchange_strong(&this->mObservers.mPendingList, &v12, 0);
  }

  while (v12 != mHead);
  v13 = 0;
  do
  {
    v14 = v13;
    v13 = mHead;
    mHead = *mHead;
    *v13 = v14;
  }

  while (mHead);
  while (1)
  {
    v15 = v14;
    v16 = *(v13 + 8);
    if (!v16)
    {
      v28 = this->mObservers.mActiveList.mHead;
      v29 = this;
      if (!this->mObservers.mActiveList.mHead)
      {
LABEL_38:
        v29->mObservers.mActiveList.mHead = v13;
        *v13 = 0;
        goto LABEL_41;
      }

      while (1)
      {
        v29 = v28;
        v30 = *(v28 + 2);
        if (v30)
        {
          break;
        }

        if (v29[1].mObservers.mActiveList.mHead == *(v13 + 32))
        {
          v30 = v29[1].mObservers.mPendingList.mHead;
          v31 = *(v13 + 40);
LABEL_30:
          if (v30 == v31)
          {
            do
            {
              v32 = this->mObservers.mFreeList.mHead;
              *v13 = v32;
              v33 = v32;
              atomic_compare_exchange_strong(&this->mObservers.mFreeList, &v33, v13);
            }

            while (v33 != v32);
            goto LABEL_41;
          }
        }

        v28 = v29->mObservers.mActiveList.mHead;
        if (!v29->mObservers.mActiveList.mHead)
        {
          goto LABEL_38;
        }
      }

      v31 = *(v13 + 16);
      goto LABEL_30;
    }

    if (v16 == 2)
    {
      v22 = this->mObservers.mActiveList.mHead;
      if (this->mObservers.mActiveList.mHead)
      {
        do
        {
          v23 = *v22;
          do
          {
            v24 = this->mObservers.mFreeList.mHead;
            *v22 = v24;
            v25 = v24;
            atomic_compare_exchange_strong(&this->mObservers.mFreeList, &v25, v22);
          }

          while (v25 != v24);
          v22 = v23;
        }

        while (v23);
      }

      do
      {
        v26 = this->mObservers.mFreeList.mHead;
        *v13 = v26;
        v27 = v26;
        atomic_compare_exchange_strong(&this->mObservers.mFreeList, &v27, v13);
      }

      while (v27 != v26);
      goto LABEL_41;
    }

    if (v16 != 1)
    {
      goto LABEL_41;
    }

    v17 = this->mObservers.mActiveList.mHead;
    v18 = this;
    if (!this->mObservers.mActiveList.mHead)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v19 = v18;
      v18 = v17;
      v20 = *(v17 + 2);
      if (v20)
      {
        v21 = *(v13 + 16);
      }

      else
      {
        if (v18[1].mObservers.mActiveList.mHead != *(v13 + 32))
        {
          goto LABEL_18;
        }

        v20 = v18[1].mObservers.mPendingList.mHead;
        v21 = *(v13 + 40);
      }

      if (v20 == v21)
      {
        break;
      }

LABEL_18:
      v17 = v18->mObservers.mActiveList.mHead;
      if (!v18->mObservers.mActiveList.mHead)
      {
        goto LABEL_40;
      }
    }

    v19->mObservers.mActiveList.mHead = v18->mObservers.mActiveList.mHead;
    do
    {
      v34 = this->mObservers.mFreeList.mHead;
      v18->mObservers.mActiveList.mHead = v34;
      v35 = v34;
      atomic_compare_exchange_strong(&this->mObservers.mFreeList, &v35, v18);
    }

    while (v35 != v34);
    do
    {
LABEL_40:
      v36 = this->mObservers.mFreeList.mHead;
      *v13 = v36;
      v37 = v36;
      atomic_compare_exchange_strong(&this->mObservers.mFreeList, &v37, v13);
    }

    while (v37 != v36);
LABEL_41:
    if (!v15)
    {
      break;
    }

    v14 = *v15;
    v13 = v15;
  }

LABEL_42:
  for (i = this->mObservers.mActiveList.mHead; i; i = *i)
  {
    v39 = *(i + 4);
    if (v39)
    {
      this = v39(*(i + 5), a2, a3, 0, a4, a6);
    }

    else
    {
      this = *(i + 3);
      if (this)
      {
        this = (this->mObservers.mFreeList.mHead)(this, *a2, a3, a4, a5);
      }
    }
  }

  return this;
}

void AUEventSchedule::dispatchV2SetParamEvents(AUEventSchedule *this, AURenderEvent *a2, int a3)
{
  v3 = a2;
  v4 = this;
  if (a3)
  {
    AUEventSchedule::deliverDeferredV2ParameterUpdates(this, a2);
    if (v3)
    {
      do
      {
        next = v3->head.next;
        if (!v3->head.reserved)
        {
          AURenderEventAllocator::dealloc(v4->mAllocator, v3);
        }

        v3 = next;
      }

      while (next);
    }
  }

  else
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = v3->head.next;
        if (v8 >= v7)
        {
          v12 = v8 - v6;
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v6) >> 4) + 1;
          if (v13 > 0x555555555555555)
          {
            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
          }

          v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4);
          if (0x5555555555555556 * ((v7 - v6) >> 4) > v13)
          {
            v13 = 0x5555555555555556 * ((v7 - v6) >> 4);
          }

          if (v14 >= 0x2AAAAAAAAAAAAAALL)
          {
            v15 = 0x555555555555555;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            if (v15 > 0x555555555555555 || !*MEMORY[0x1E69E3C08])
            {
              goto LABEL_36;
            }

            v16 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
          }

          else
          {
            v16 = 0;
          }

          v8 = v16 + 16 * ((v8 - v6) >> 4);
          v7 = v16 + 48 * v15;
          v17 = *&v3->head.next;
          v18 = *(&v3->MIDIEventsList.eventList.packet[0].timeStamp + 4);
          *(v8 + 16) = *&v3->MIDIEventsList.eventType;
          *(v8 + 32) = v18;
          *v8 = v17;
          memcpy((v8 + 48 * (v12 / -48)), v6, v12);
          if (v6)
          {
            if (v14 > 0x555555555555555 || !*MEMORY[0x1E69E3C08])
            {
              goto LABEL_36;
            }

            caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v6);
            v6 = (v8 + 48 * (v12 / -48));
          }

          else
          {
            v6 = (v8 + 48 * (v12 / -48));
          }
        }

        else
        {
          v10 = *&v3->head.next;
          v11 = *(&v3->MIDIEventsList.eventList.packet[0].timeStamp + 4);
          *(v8 + 16) = *&v3->MIDIEventsList.eventType;
          *(v8 + 32) = v11;
          *v8 = v10;
        }

        *(v8 + 8) = 0;
        if (!v3->head.reserved)
        {
          AURenderEventAllocator::dealloc(this->mAllocator, v3);
        }

        v8 += 48;
        v3 = v9;
      }

      while (v9);
      *(&v25 + 1) = v8;
      v26 = v7;
      *&v25 = v6;
      v19 = v25;
      v4 = this;
    }

    else
    {
      v7 = 0;
      v19 = 0uLL;
    }

    mScheduledParameterRefresher = v4->mScheduledParameterRefresher;
    mAUv2GetParameterSynchronizer = v4[1].mAUv2GetParameterSynchronizer;
    *&v27 = mScheduledParameterRefresher;
    *(&v27 + 1) = mAUv2GetParameterSynchronizer;
    v28 = v4;
    v26 = 0;
    v25 = 0uLL;
    if (*MEMORY[0x1E69E3C08])
    {
      v24 = v19;
      v22 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v22 + 16) = 0;
      *(v22 + 24) = v27;
      *(v22 + 40) = v28;
      *(v22 + 48) = v24;
      *(v22 + 64) = v7;
      memset(v29, 0, sizeof(v29));
      *v22 = &unk_1F0336458;
      *(v22 + 8) = 0;
      caulk::concurrent::messenger::enqueue((mScheduledParameterRefresher + 128), v22);
      std::vector<AUExtendedParameterEvent,caulk::rt_allocator<AUExtendedParameterEvent>>::__destroy_vector::operator()[abi:ne200100](v29);
      std::vector<AUExtendedParameterEvent,caulk::rt_allocator<AUExtendedParameterEvent>>::__destroy_vector::operator()[abi:ne200100](&v25);
    }

    else
    {
LABEL_36:
      __break(1u);
    }
  }
}

void *AUEventSchedule::deliverDeferredV2ParameterUpdates(AUEventSchedule *this, AURenderEvent *a2)
{
  result = [this[1].mAUv2GetParameterSynchronizer deliverV2Parameters:a2];
  if (a2)
  {
    v5 = 0;
    next = a2;
    do
    {
      parameterAddress = next->parameter.parameterAddress;
      if (next == a2 || parameterAddress != v5)
      {
        result = AUScheduledParameterRefresher::deferInvalidateParameter(this->mScheduledParameterRefresher, this[1].mAUv2GetParameterSynchronizer, next->parameter.parameterAddress);
        v5 = parameterAddress;
      }

      wordCount = next->MIDIEventsList.eventList.packet[0].wordCount;
      if (wordCount)
      {
        result = AUv2GetParameterSynchronizer::setLatestV2SetParameterSequenceNumber(this->mAUv2GetParameterSynchronizer, wordCount);
      }

      next = next->head.next;
    }

    while (next);
  }

  return result;
}

caulk::rt_safe_memory_resource *std::vector<AUExtendedParameterEvent,caulk::rt_allocator<AUExtendedParameterEvent>>::__destroy_vector::operator()[abi:ne200100](caulk::rt_safe_memory_resource *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    if (0xAAAAAAAAAAAAAAABLL * ((*(result + 2) - v1) >> 4) < 0x555555555555556 && (result = *MEMORY[0x1E69E3C08]) != 0)
    {
      return caulk::rt_safe_memory_resource::rt_deallocate(result, v1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUScheduledParameterRefresher2::deferV2ParameterUpdates(void *,AUEventSchedule *,caulk::rt::vector<AUExtendedParameterEvent> &&)::{lambda(void)#1}>::perform(void *a1)
{
  v10 = a1;
  v1 = (a1 + 6);
  if (a1[6] == a1[7])
  {
    std::terminate();
  }

  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[3];
  v5 = (v4 + 304);
  atomic_fetch_add((v4 + 304), 1u);
  v6 = atomic_load((v4 + 296));
  if (v6)
  {
    caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl::findSlotForKey(v6, v2);
    if (v7)
    {
      v8 = v7;
      atomic_fetch_add(v7, 1u);
      atomic_fetch_add(v5, 0xFFFFFFFF);
      AUEventSchedule::deliverDeferredV2ParameterUpdates(v3, v1);
      v5 = v8;
    }
  }

  atomic_fetch_add(v5, 0xFFFFFFFF);
  return caulk::concurrent::details::rt_message_call<AUScheduledParameterRefresher2::deferV2ParameterUpdates(void *,AUEventSchedule *,caulk::rt::vector<AUExtendedParameterEvent> &&)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v10);
}

void sub_18F7D1738(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  atomic_fetch_add(v2, v3);
  caulk::concurrent::details::rt_message_call<AUScheduledParameterRefresher2::deferV2ParameterUpdates(void *,AUEventSchedule *,caulk::rt::vector<AUExtendedParameterEvent> &&)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(va);
  _Unwind_Resume(a1);
}

AUEventSchedule *AUEventSchedule::deliverDeferredV2ParameterUpdates(AUEventSchedule *result, __int128 *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  v4 = *a2;
  if (*a2 != v3)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        *v5 = v4;
      }

      v6 = v4 + 6;
      v5 = v4;
      v4 = v6;
    }

    while (v6 != v3);
    *(v6 - 6) = 0;
    return AUEventSchedule::deliverDeferredV2ParameterUpdates(result, *a2);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUScheduledParameterRefresher2::deferV2ParameterUpdates(void *,AUEventSchedule *,caulk::rt::vector<AUExtendedParameterEvent> &&)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(uint64_t *a1)
{
  v2 = *a1;
  *v2 = &unk_1F0336480;
  std::vector<AUExtendedParameterEvent,caulk::rt_allocator<AUExtendedParameterEvent>>::__destroy_vector::operator()[abi:ne200100]((v2 + 48));
  caulk::concurrent::message::~message(v2);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::rt_message_call<AUScheduledParameterRefresher2::deferV2ParameterUpdates(void *,AUEventSchedule *,caulk::rt::vector<AUExtendedParameterEvent> &&)::{lambda(void)#1}>::~rt_message_call(uint64_t a1)
{
  *a1 = &unk_1F0336480;
  std::vector<AUExtendedParameterEvent,caulk::rt_allocator<AUExtendedParameterEvent>>::__destroy_vector::operator()[abi:ne200100]((a1 + 48));
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x193ADF220);
}

{
  *a1 = &unk_1F0336480;
  std::vector<AUExtendedParameterEvent,caulk::rt_allocator<AUExtendedParameterEvent>>::__destroy_vector::operator()[abi:ne200100]((a1 + 48));

  caulk::concurrent::message::~message(a1);
}

unint64_t caulk::concurrent::details::message_call<AUScheduledParameterRefresher2::deferV2ParameterUpdates(void *,AUEventSchedule *,caulk::rt::vector<AUExtendedParameterEvent> &&)::{lambda(void)#1}>::perform(void *a1)
{
  v1 = (a1 + 6);
  if (a1[6] == a1[7])
  {
    std::terminate();
  }

  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[3];
  v5 = (v4 + 304);
  atomic_fetch_add((v4 + 304), 1u);
  result = atomic_load((v4 + 296));
  if (result)
  {
    result = caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl::findSlotForKey(result, v2);
    if (v7)
    {
      v8 = v7;
      atomic_fetch_add(v7, 1u);
      atomic_fetch_add(v5, 0xFFFFFFFF);
      result = AUEventSchedule::deliverDeferredV2ParameterUpdates(v3, v1);
      v5 = v8;
    }
  }

  atomic_fetch_add(v5, 0xFFFFFFFF);
  return result;
}

void caulk::concurrent::details::message_call<AUScheduledParameterRefresher2::deferV2ParameterUpdates(void *,AUEventSchedule *,caulk::rt::vector<AUExtendedParameterEvent> &&)::{lambda(void)#1}>::~message_call(uint64_t a1)
{
  *a1 = &unk_1F0336480;
  std::vector<AUExtendedParameterEvent,caulk::rt_allocator<AUExtendedParameterEvent>>::__destroy_vector::operator()[abi:ne200100]((a1 + 48));
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x193ADF220);
}

{
  *a1 = &unk_1F0336480;
  std::vector<AUExtendedParameterEvent,caulk::rt_allocator<AUExtendedParameterEvent>>::__destroy_vector::operator()[abi:ne200100]((a1 + 48));

  caulk::concurrent::message::~message(a1);
}

void AUScheduledParameterRefresher2::AUScheduledParameterRefresher2(AUScheduledParameterRefresher2 *this)
{
  v1 = *MEMORY[0x1E69E9840];
  *this = &unk_1F032EF70;
  *(this + 2) = 0;
  *(this + 1) = xmmword_18F901930;
  *(this + 4) = 4080;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 28) = 0;
  operator new();
}

void sub_18F7D1DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  applesauce::xpc::dict::~dict((v16 + 456));
  v19 = *(v16 + 416);
  if (v19)
  {
    *(v16 + 424) = v19;
    operator delete(v19);
  }

  caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::~guarded_lookup_hash_table(v16 + 288);
  AUScheduledParameterRefresher::~AUScheduledParameterRefresher(v16);
  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::~guarded_lookup_hash_table(uint64_t a1)
{
  if (atomic_load((a1 + 16)))
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v3 = atomic_load((a1 + 8));
    if (v3)
    {
      v4 = caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl::~table_impl(v3);
      MEMORY[0x193ADF220](v4, 0x1060C402CF69088);
    }

    std::mutex::~mutex((a1 + 48));
    v5 = *(a1 + 24);
    if (v5)
    {
      for (i = *(a1 + 32); i != v5; std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl>>,void,0>(i))
      {
        --i;
      }

      *(a1 + 32) = v5;
      operator delete(*(a1 + 24));
    }

    return a1;
  }

  return result;
}

void AUScheduledParameterRefresher::~AUScheduledParameterRefresher(AUScheduledParameterRefresher *this)
{
  *this = &unk_1F032EF70;
  v2 = (this + 144);
  *(this + 18) = &unk_1F032EF88;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 184);
  caulk::concurrent::message::~message(v2);
  MEMORY[0x193ADE740](this + 128);
  while (1)
  {
    v3 = CADeprecated::TAtomicStack2<XAtomicPoolAllocator::FreeNode>::pop_atomic(this + 80);
    if (!v3)
    {
      break;
    }

    free(v3);
  }
}

void std::__function::__func<ParameterWatchdog::ParameterWatchdog(AUScheduledParameterRefresher2 &)::{lambda(void)#1},std::allocator<ParameterWatchdog::ParameterWatchdog(AUScheduledParameterRefresher2 &)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  os_unfair_lock_lock((v1 + 8));
  ParameterWatchdog::evaluate(v1);

  os_unfair_lock_unlock((v1 + 8));
}

uint64_t std::__function::__func<ParameterWatchdog::ParameterWatchdog(AUScheduledParameterRefresher2 &)::{lambda(void)#1},std::allocator<ParameterWatchdog::ParameterWatchdog(AUScheduledParameterRefresher2 &)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032EF28;
  a2[1] = v2;
  return result;
}

void std::shared_ptr<CAEventReceiver::Impl>::__enable_weak_this[abi:ne200100]<CAEventReceiver::Impl,CAEventReceiver::Impl,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void std::__shared_ptr_emplace<CAEventReceiver::Impl>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;

  v3 = *(a1 + 120);
  *(a1 + 120) = 0;

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 72);
  v4 = *(a1 + 64);
  *(a1 + 64) = 0;

  v5 = *(a1 + 56);
  *(a1 + 56) = 0;

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {

    std::__shared_weak_count::__release_weak(v8);
  }
}

void std::__shared_ptr_emplace<CAEventReceiver::Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F03309A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void AUScheduledParameterRefresher2::invalidateParameter(AUScheduledParameterRefresher2 *this, void *a2, uint64_t a3)
{
  v3 = (this + 304);
  atomic_fetch_add(this + 76, 1u);
  v4 = atomic_load(this + 37);
  if (v4)
  {
    caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl::findSlotForKey(v4, a2);
    if (v7)
    {
      v8 = v7;
      atomic_fetch_add(v7, 1u);
      atomic_fetch_add(v3, 0xFFFFFFFF);
      v9 = a2;
      v10 = [v9 parameterTree];
      v11 = [v10 parameterWithAddress:a3];

      if (v11)
      {
        [v11 setValue:2 originator:0 atHostTime:0.0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 _notifyParameterChange:a3];
        }
      }

      v3 = v8;
    }
  }

  atomic_fetch_add(v3, 0xFFFFFFFF);
}

void sub_18F7D2844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = AUAudioUnit;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18F7D2C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a20, 8);

  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6886(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getAUOutputUnitClass(const AudioComponentDescription *a1)
{
  v1 = off_1E72B99B0;
  if (a1 != 1635017072)
  {
    v1 = off_1E72B99D8;
  }

  v2 = *v1;
  v3 = objc_opt_self();

  return v3;
}

void sub_18F7D3104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<NSXPCConnection * ()(NSUUID *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_18F7D35E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, AUHostingServiceClient *);
  va_copy(va2, va1);
  v8 = va_arg(va2, AUHostingServiceClient *);
  std::unique_ptr<AUHostingServiceClient>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<AUHostingServiceClient>::~unique_ptr[abi:ne200100](va1);
  applesauce::CF::ArrayRef::~ArrayRef(va2);

  _Unwind_Resume(a1);
}

AUHostingServiceClient **std::unique_ptr<AUHostingServiceClient>::~unique_ptr[abi:ne200100](AUHostingServiceClient **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    AUHostingServiceClient::~AUHostingServiceClient(v2);
    MEMORY[0x193ADF220]();
  }

  return a1;
}

void std::vector<BusPropertyObserver>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<BusPropertyObserver>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<BusPropertyObserver>::__base_destruct_at_end[abi:ne200100](uint64_t a1, id *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 4;
    do
    {

      objc_destroyWeak(v5);
      v6 = v5 == a2;
      v5 -= 4;
    }

    while (!v6);
  }

  *(a1 + 8) = a2;
}

void std::vector<BusPropertyObserver>::__assign_with_size[abi:ne200100]<BusPropertyObserver*,BusPropertyObserver*>(uint64_t a1, id *location, id *a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 5)
  {
    if (v8)
    {
      std::vector<BusPropertyObserver>::__base_destruct_at_end[abi:ne200100](a1, *a1);
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<BusPropertyObserver>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (a4 <= v11 >> 5)
  {
    std::__copy_impl::operator()[abi:ne200100]<BusPropertyObserver *,BusPropertyObserver *,BusPropertyObserver *>(location, a3, v8);

    std::vector<BusPropertyObserver>::__base_destruct_at_end[abi:ne200100](a1, v13);
  }

  else
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<BusPropertyObserver *,BusPropertyObserver *,BusPropertyObserver *>(location, (location + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<BusPropertyObserver>,BusPropertyObserver*,BusPropertyObserver*,BusPropertyObserver*>(a1, v12, a3, *(a1 + 8));
  }
}

id *std::__copy_impl::operator()[abi:ne200100]<BusPropertyObserver *,BusPropertyObserver *,BusPropertyObserver *>(id *location, id *a2, uint64_t a3)
{
  v4 = location;
  if (location == a2)
  {
    return location;
  }

  v5 = a2;
  do
  {
    WeakRetained = objc_loadWeakRetained(v4);
    objc_storeWeak(a3, WeakRetained);

    objc_storeStrong((a3 + 8), v4[1]);
    *(a3 + 16) = *(v4 + 1);
    v4 += 4;
    a3 += 32;
  }

  while (v4 != v5);
  return v5;
}

id *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<BusPropertyObserver>,BusPropertyObserver*,BusPropertyObserver*,BusPropertyObserver*>(uint64_t a1, id *from, id *a3, id *to)
{
  v4 = to;
  v10 = to;
  v11 = to;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (from != a3)
  {
    v6 = from;
    do
    {
      objc_copyWeak(v4, v6);
      v4[1] = v6[1];
      *(v4 + 1) = *(v6 + 1);
      v6 += 4;
      v4 = v11 + 4;
      v11 += 4;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<BusPropertyObserver>,BusPropertyObserver*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<BusPropertyObserver>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::allocator<BusPropertyObserver>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
}

void std::allocator<BusPropertyObserver>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<BusPropertyObserver>,BusPropertyObserver*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 4;
      do
      {

        objc_destroyWeak(v4);
        v5 = v4 == v3;
        v4 -= 4;
      }

      while (!v5);
    }
  }

  return a1;
}

uint64_t std::vector<BusPropertyObserver>::__init_with_size[abi:ne200100]<BusPropertyObserver*,BusPropertyObserver*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<BusPropertyObserver>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void BusPropertyObserver::remove(BusPropertyObserver *this, AUAudioUnitBus *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained(this);
  if (WeakRetained)
  {
    [(AUAudioUnitBus *)v4 removeObserver:WeakRetained forKeyPath:*(this + 1) context:*(this + 3)];
  }
}

void BusPropertyObserver::add(BusPropertyObserver *this, AUAudioUnitBus *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(this);
  v5 = *(this + 1);
  v6 = *(this + 2);
  v7 = *(this + 3);
  v8 = WeakRetained;
  [AUAudioUnitBus addObserver:v3 forKeyPath:"addObserver:forKeyPath:options:context:" options:? context:?];
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<BusPropertyObserver *,BusPropertyObserver *,BusPropertyObserver *>(id *location, id *a2, uint64_t a3)
{
  if (location != a2)
  {
    v5 = location;
    do
    {
      WeakRetained = objc_loadWeakRetained(v5);
      objc_storeWeak(a3, WeakRetained);

      v7 = v5[1];
      v5[1] = 0;
      v8 = *(a3 + 8);
      *(a3 + 8) = v7;

      *(a3 + 16) = *(v5 + 1);
      v5 += 4;
      a3 += 32;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_18F7D4494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, void *a19)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void std::vector<BusPropertyObserver>::push_back[abi:ne200100](uint64_t a1, id *from)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 5;
    if ((v7 + 1) >> 59)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 4;
    if (v8 >> 4 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::allocator<BusPropertyObserver>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = 32 * v7;
    objc_copyWeak(v11, from);
    *(v11 + 8) = from[1];
    v6 = v11 + 32;
    v19 = (v11 + 32);
    *(v11 + 16) = *(from + 1);
    v12 = *a1;
    v13 = *(a1 + 8);
    v20[0] = a1;
    v20[1] = &v22;
    v20[2] = &v23;
    v14 = (v11 + v12 - v13);
    v22 = v14;
    v23 = v14;
    if (v12 == v13)
    {
      v21 = 1;
    }

    else
    {
      v15 = (v11 + v12 - v13);
      v16 = v12;
      do
      {
        objc_moveWeak(v15, v16);
        v17 = v16[1];
        v16[1] = 0;
        v15[1] = v17;
        *(v15 + 1) = *(v16 + 1);
        v16 += 4;
        v15 = (v23 + 32);
        v23 += 32;
      }

      while (v16 != v13);
      v21 = 1;
      while (v12 != v13)
      {

        objc_destroyWeak(v12);
        v12 += 4;
      }
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<BusPropertyObserver>,BusPropertyObserver*>>::~__exception_guard_exceptions[abi:ne200100](v20);
    v18 = *a1;
    *a1 = v14;
    *(a1 + 8) = v19;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    objc_copyWeak(*(a1 + 8), from);
    *(v5 + 8) = from[1];
    *(v5 + 16) = *(from + 1);
    v6 = v5 + 32;
  }

  *(a1 + 8) = v6;
}

void sub_18F7D4C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location, void *a12)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_18F7D52C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = AUAudioUnitBus;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18F7D5C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::recursive_mutex *a10, uint64_t a11, char a12, uint64_t a13)
{
  __cxa_free_exception(v15);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);

  if (a10)
  {
    std::recursive_mutex::unlock(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<APComponent_AUAudioUnitSubclass *,std::shared_ptr<APComponent_AUAudioUnitSubclass>::__shared_ptr_default_delete<APComponent_AUAudioUnitSubclass,APComponent_AUAudioUnitSubclass>,std::allocator<APComponent_AUAudioUnitSubclass>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void std::__shared_ptr_pointer<APComponent_AUAudioUnitSubclass *,std::shared_ptr<APComponent_AUAudioUnitSubclass>::__shared_ptr_default_delete<APComponent_AUAudioUnitSubclass,APComponent_AUAudioUnitSubclass>,std::allocator<APComponent_AUAudioUnitSubclass>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::__function::__func<APComponent_AUAudioUnitSubclass::APComponent_AUAudioUnitSubclass(AudioComponentDescription const&,applesauce::CF::StringRef const&,unsigned int,objc_class *)::{lambda(AudioComponentDescription const*)#1},std::allocator<APComponent_AUAudioUnitSubclass::APComponent_AUAudioUnitSubclass(AudioComponentDescription const&,applesauce::CF::StringRef const&,unsigned int,objc_class *)::{lambda(AudioComponentDescription const*)#1}>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  operator new();
}

uint64_t std::__function::__func<APComponent_AUAudioUnitSubclass::APComponent_AUAudioUnitSubclass(AudioComponentDescription const&,applesauce::CF::StringRef const&,unsigned int,objc_class *)::{lambda(AudioComponentDescription const*)#1},std::allocator<APComponent_AUAudioUnitSubclass::APComponent_AUAudioUnitSubclass(AudioComponentDescription const&,applesauce::CF::StringRef const&,unsigned int,objc_class *)::{lambda(AudioComponentDescription const*)#1}>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032F058;
  a2[1] = v2;
  return result;
}

void APComponent_AUAudioUnitSubclass::~APComponent_AUAudioUnitSubclass(APComponent *this)
{
  APComponent::~APComponent(this);

  JUMPOUT(0x193ADF220);
}

void *___Z21instantiateV2BridgeAURK25AudioComponentDescriptionjPU15__autoreleasingP7NSError_block_invoke(void *result, uint64_t a2, int a3)
{
  *(*(result[4] + 8) + 24) = a2;
  *(*(result[5] + 8) + 24) = a3;
  *(*(result[6] + 8) + 24) = 1;
  return result;
}

void sub_18F7D64BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void RecordingObserver::~RecordingObserver(RecordingObserver *this)
{
  RecordingObserver::~RecordingObserver(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032F208;
  v2 = *(this + 2);
  if (v2)
  {
  }

  v3 = *(this + 3);
  if (v3)
  {

    v4 = *(this + 3);
  }

  else
  {
    v4 = 0;
  }
}

void sub_18F7D6834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void UIObserver::~UIObserver(id *this)
{

  JUMPOUT(0x193ADF220);
}

{
}

void std::vector<AddressToParameter>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 2;
        objc_destroyWeak(v4 - 1);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::__copy_impl::operator()[abi:ne200100]<AddressToParameter *,AddressToParameter *,AddressToParameter *>(void *a1, void *a2, id *a3)
{
  v3 = a3;
  if (a1 == a2)
  {
    return a1;
  }

  v4 = a2;
  v5 = a1;
  v6 = a3;
  do
  {
    v7 = *v5;
    v5 += 2;
    *v6 = v7;
    v6 += 2;
    WeakRetained = objc_loadWeakRetained(a1 + 1);
    objc_storeWeak(v3 + 1, WeakRetained);

    v3 = v6;
    a1 = v5;
  }

  while (v5 != v4);
  return v4;
}

void std::vector<AddressToParameter>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<AddressToParameter>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
}

void std::allocator<AddressToParameter>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_18F7D74F0(void *a1)
{
  __cxa_begin_catch(a1);
  AUObserverController::create(AUParameterTree *)::{lambda(AUObserverController*)#1}::operator()(v1);
  __cxa_rethrow();
}

void sub_18F7D7504(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void AUObserverController::create(AUParameterTree *)::{lambda(AUObserverController*)#1}::operator()(uint64_t a1)
{
  explicit = atomic_load_explicit((*(a1 + 32) + 88), memory_order_acquire);
  if (explicit != pthread_self())
  {
    AUObserverController::~AUObserverController(a1);

    JUMPOUT(0x193ADF220);
  }

  v3 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZZN20AUObserverController6createEP15AUParameterTreeENKUlPS_E_clES2__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v3, block);
}

void AUObserverController::~AUObserverController(AUObserverController *this)
{
  if ((CAEventReceiver::invalidate((this + 32)) & 1) == 0)
  {
    std::terminate();
  }

  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  CAEventReceiver::~CAEventReceiver(this + 4);

  objc_destroyWeak(this + 2);
  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

AUObserverController *___ZZN20AUObserverController6createEP15AUParameterTreeENKUlPS_E_clES2__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    AUObserverController::~AUObserverController(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void std::__shared_ptr_pointer<AUObserverController *,AUObserverController::create(AUParameterTree *)::{lambda(AUObserverController *)#1},std::allocator<AUObserverController>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  explicit = atomic_load_explicit((*(v1 + 32) + 88), memory_order_acquire);
  if (explicit != pthread_self())
  {
    AUObserverController::~AUObserverController(v1);

    JUMPOUT(0x193ADF220);
  }

  v3 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZZN20AUObserverController6createEP15AUParameterTreeENKUlPS_E_clES2__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v1;
  dispatch_async(v3, block);
}

void std::__shared_ptr_pointer<AUObserverController *,AUObserverController::create(AUParameterTree *)::{lambda(AUObserverController *)#1},std::allocator<AUObserverController>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F7D7D64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 8));

  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AddressToParameter *,false>(id *a1, id *a2, uint64_t a3, char a4)
{
LABEL_1:
  v124 = a1;
LABEL_2:
  v8 = v124;
  while (1)
  {
    v9 = (a2 - v8) >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return;
    }

    if (v9 == 2)
    {
      v60 = *(a2 - 2);
      v59 = a2 - 2;
      if (v60 >= *v8)
      {
        return;
      }

      v61 = v124;
LABEL_188:
      v64 = v59;
      goto LABEL_189;
    }

LABEL_10:
    if (v9 <= 23)
    {
      if (a4)
      {
        if (v8 != a2)
        {
          v68 = v8 + 2;
          if (v8 + 2 != a2)
          {
            v69 = 0;
            v70 = v8;
            do
            {
              v71 = v68;
              if (v70[2] < *v70)
              {
                v127 = v70[2];
                objc_moveWeak(&v128, v70 + 3);
                v72 = *v70;
                v73 = v69;
                while (1)
                {
                  v74 = v73;
                  v75 = (v8 + v73);
                  *(v8 + v73 + 16) = v72;
                  v76 = (v8 + v73 + 8);
                  WeakRetained = objc_loadWeakRetained(v76);
                  objc_storeWeak(v75 + 3, WeakRetained);

                  if (!v74)
                  {
                    break;
                  }

                  v72 = *(v75 - 2);
                  v73 = v74 - 16;
                  if (v127 >= v72)
                  {
                    v78 = (v8 + v74);
                    v76 = (v8 + v74 + 8);
                    goto LABEL_125;
                  }
                }

                v78 = v8;
LABEL_125:
                *v78 = v127;
                v79 = objc_loadWeakRetained(&v128);
                objc_storeWeak(v76, v79);

                objc_destroyWeak(&v128);
              }

              v68 = v71 + 2;
              v69 += 16;
              v70 = v71;
            }

            while (v71 + 2 != a2);
          }
        }
      }

      else if (v8 != a2)
      {
        v116 = v8 + 2;
        if (v8 + 2 != a2)
        {
          v117 = v8 + 1;
          do
          {
            v118 = v116;
            if (v8[2] < *v8)
            {
              v127 = v8[2];
              objc_moveWeak(&v128, v8 + 3);
              v119 = *v8;
              v120 = v117;
              do
              {
                v121 = v120;
                v120[1] = v119;
                v122 = objc_loadWeakRetained(v120);
                objc_storeWeak(v121 + 2, v122);

                v119 = *(v121 - 3);
                v120 = v121 - 2;
              }

              while (v127 < v119);
              *(v121 - 1) = v127;
              v123 = objc_loadWeakRetained(&v128);
              objc_storeWeak(v121, v123);

              objc_destroyWeak(&v128);
            }

            v116 = v118 + 2;
            v117 += 2;
            v8 = v118;
          }

          while (v118 + 2 != a2);
        }
      }

      return;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v80 = v10 >> 1;
        v81 = v10 >> 1;
        do
        {
          v82 = v81;
          if (v80 >= v81)
          {
            v83 = (2 * v81) | 1;
            v84 = &v8[2 * v83];
            if (2 * v81 + 2 >= v9)
            {
              v85 = *v84;
            }

            else
            {
              v85 = *v84;
              v86 = v84[2];
              if (*v84 <= v86)
              {
                v85 = v84[2];
              }

              if (*v84 < v86)
              {
                v84 += 2;
                v83 = 2 * v82 + 2;
              }
            }

            v87 = &v8[2 * v82];
            if (v85 >= *v87)
            {
              v127 = *v87;
              objc_moveWeak(&v128, v87 + 1);
              v88 = *v84;
              while (1)
              {
                v89 = v84;
                *v87 = v88;
                v90 = objc_loadWeakRetained(v84 + 1);
                objc_storeWeak(v87 + 1, v90);

                if (v80 < v83)
                {
                  break;
                }

                v84 = &v8[2 * ((2 * v83) | 1)];
                if (2 * v83 + 2 >= v9)
                {
                  v88 = *v84;
                  v83 = (2 * v83) | 1;
                }

                else
                {
                  v88 = *v84;
                  v91 = v84[2];
                  if (*v84 <= v91)
                  {
                    v88 = v84[2];
                  }

                  if (*v84 >= v91)
                  {
                    v83 = (2 * v83) | 1;
                  }

                  else
                  {
                    v84 += 2;
                    v83 = 2 * v83 + 2;
                  }
                }

                v92 = v127;
                v87 = v89;
                if (v88 < v127)
                {
                  goto LABEL_151;
                }
              }

              v92 = v127;
LABEL_151:
              *v89 = v92;
              v93 = objc_loadWeakRetained(&v128);
              objc_storeWeak(v89 + 1, v93);

              objc_destroyWeak(&v128);
            }
          }

          v81 = v82 - 1;
        }

        while (v82);
        do
        {
          if (v9 >= 2)
          {
            v125 = *v8;
            objc_moveWeak(&v126, v8 + 1);
            v94 = 0;
            v95 = v8;
            do
            {
              v96 = &v95[2 * v94];
              v97 = v96 + 2;
              if (2 * v94 + 2 >= v9)
              {
                v98 = *v97;
                v94 = (2 * v94) | 1;
              }

              else
              {
                v100 = v96[4];
                v99 = v96 + 4;
                v98 = v100;
                v101 = *(v99 - 2);
                v102 = v101 >= v100;
                if (v101 > v100)
                {
                  v98 = *(v99 - 2);
                }

                if (v102)
                {
                  v94 = (2 * v94) | 1;
                }

                else
                {
                  v97 = v99;
                  v94 = 2 * v94 + 2;
                }
              }

              *v95 = v98;
              v103 = objc_loadWeakRetained(v97 + 1);
              objc_storeWeak(v95 + 1, v103);

              v95 = v97;
            }

            while (v94 <= ((v9 - 2) >> 1));
            if (v97 == a2 - 2)
            {
              *v97 = v125;
              v115 = objc_loadWeakRetained(&v126);
              objc_storeWeak(v97 + 1, v115);
            }

            else
            {
              *v97 = *(a2 - 2);
              v104 = objc_loadWeakRetained(a2 - 1);
              objc_storeWeak(v97 + 1, v104);

              *(a2 - 2) = v125;
              v105 = objc_loadWeakRetained(&v126);
              objc_storeWeak(a2 - 1, v105);

              v106 = (v97 - v8 + 16) >> 4;
              v107 = v106 < 2;
              v108 = v106 - 2;
              if (!v107)
              {
                v109 = v108 >> 1;
                v110 = &v8[2 * (v108 >> 1)];
                if (*v110 < *v97)
                {
                  v127 = *v97;
                  objc_moveWeak(&v128, v97 + 1);
                  v111 = *v110;
                  do
                  {
                    v112 = v110;
                    *v97 = v111;
                    v113 = objc_loadWeakRetained(v110 + 1);
                    objc_storeWeak(v97 + 1, v113);

                    if (!v109)
                    {
                      break;
                    }

                    v109 = (v109 - 1) >> 1;
                    v110 = &v8[2 * v109];
                    v111 = *v110;
                    v97 = v112;
                  }

                  while (*v110 < v127);
                  *v112 = v127;
                  v114 = objc_loadWeakRetained(&v128);
                  objc_storeWeak(v112 + 1, v114);

                  objc_destroyWeak(&v128);
                }
              }
            }

            objc_destroyWeak(&v126);
          }

          a2 -= 2;
          v107 = v9-- > 2;
        }

        while (v107);
      }

      return;
    }

    v11 = &v8[2 * (v9 >> 1)];
    v13 = a2 - 2;
    v12 = *(a2 - 2);
    if (v9 >= 0x81)
    {
      v14 = *v11;
      if (*v11 >= *v8)
      {
        if (v12 < v14)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(&v8[2 * (v9 >> 1)], a2 - 2);
          if (*v11 < *v8)
          {
            v15 = v8;
            v16 = &v8[2 * (v9 >> 1)];
            goto LABEL_26;
          }
        }
      }

      else
      {
        v15 = v8;
        if (v12 < v14)
        {
          goto LABEL_17;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v8, &v8[2 * (v9 >> 1)]);
        if (*v13 < *v11)
        {
          v15 = &v8[2 * (v9 >> 1)];
LABEL_17:
          v16 = a2 - 2;
LABEL_26:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v15, v16);
        }
      }

      v21 = v11 - 2;
      v20 = *(v11 - 2);
      v22 = *(a2 - 4);
      if (v20 >= v8[2])
      {
        if (v22 < v20)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v11 - 2, a2 - 4);
          if (*v21 < v8[2])
          {
            v23 = v8 + 2;
            v24 = v11 - 2;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v23 = v8 + 2;
        if (v22 < v20)
        {
          goto LABEL_31;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v23, v11 - 2);
        if (*(a2 - 4) < *v21)
        {
          v23 = v11 - 2;
LABEL_31:
          v24 = a2 - 4;
LABEL_39:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v23, v24);
        }
      }

      v26 = (v11 + 2);
      v25 = v11[2];
      v27 = *(a2 - 6);
      if (v25 >= v8[4])
      {
        if (v27 < v25)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v11 + 2, a2 - 6);
          if (*v26 < v8[4])
          {
            v28 = v8 + 4;
            v29 = v11 + 2;
            goto LABEL_48;
          }
        }
      }

      else
      {
        v28 = v8 + 4;
        if (v27 < v25)
        {
          goto LABEL_44;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v28, v11 + 2);
        if (*(a2 - 6) < *v26)
        {
          v28 = v11 + 2;
LABEL_44:
          v29 = a2 - 6;
LABEL_48:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v28, v29);
        }
      }

      v30 = *v11;
      v31 = *v26;
      if (*v11 >= *v21)
      {
        if (v31 < v30)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v11, v11 + 2);
          if (*v11 < *v21)
          {
            v32 = v11 - 2;
            v33 = v11;
            goto LABEL_57;
          }
        }
      }

      else
      {
        v32 = v11 - 2;
        if (v31 < v30)
        {
          goto LABEL_53;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v32, v11);
        if (*v26 < *v11)
        {
          v32 = v11;
LABEL_53:
          v33 = v11 + 2;
LABEL_57:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v32, v33);
        }
      }

      v127 = *v8;
      objc_moveWeak(&v128, v8 + 1);
      *v8 = *v11;
      v34 = objc_loadWeakRetained(v11 + 1);
      objc_storeWeak(v8 + 1, v34);

      *v11 = v127;
      v35 = objc_loadWeakRetained(&v128);
      objc_storeWeak(v11 + 1, v35);

      objc_destroyWeak(&v128);
      v8 = v124;
      goto LABEL_59;
    }

    v17 = *v8;
    if (*v8 < *v11)
    {
      v18 = &v8[2 * (v9 >> 1)];
      if (v12 >= v17)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v18, v8);
        if (*v13 >= *v8)
        {
          goto LABEL_59;
        }

        v18 = v8;
      }

      v19 = a2 - 2;
      goto LABEL_35;
    }

    if (v12 < v17)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v8, a2 - 2);
      if (*v8 < *v11)
      {
        v18 = &v8[2 * (v9 >> 1)];
        v19 = v8;
LABEL_35:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v18, v19);
      }
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v36 = *v8;
    }

    else
    {
      v36 = *v8;
      if (*(v8 - 2) >= *v8)
      {
        v127 = *v8;
        objc_moveWeak(&v128, v8 + 1);
        v50 = v127;
        if (v127 >= *v13)
        {
          v52 = v8 + 2;
          do
          {
            a1 = v52;
            if (v52 >= a2)
            {
              break;
            }

            v52 += 2;
          }

          while (v127 >= *a1);
        }

        else
        {
          a1 = v8;
          do
          {
            v51 = a1[2];
            a1 += 2;
          }

          while (v127 >= v51);
        }

        v53 = a2;
        if (a1 < a2)
        {
          v53 = a2;
          do
          {
            v54 = *(v53 - 2);
            v53 -= 2;
          }

          while (v127 < v54);
        }

        while (a1 < v53)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(a1, v53);
          v50 = v127;
          do
          {
            v55 = a1[2];
            a1 += 2;
          }

          while (v127 >= v55);
          do
          {
            v56 = *(v53 - 2);
            v53 -= 2;
          }

          while (v127 < v56);
        }

        if (a1 - 2 != v8)
        {
          *v8 = *(a1 - 2);
          v57 = objc_loadWeakRetained(a1 - 1);
          objc_storeWeak(v8 + 1, v57);

          v50 = v127;
        }

        *(a1 - 2) = v50;
        v58 = objc_loadWeakRetained(&v128);
        objc_storeWeak(a1 - 1, v58);

        objc_destroyWeak(&v128);
        a4 = 0;
        goto LABEL_1;
      }
    }

    v127 = v36;
    objc_moveWeak(&v128, v8 + 1);
    v37 = v127;
    v38 = v8;
    do
    {
      v39 = v38;
      v40 = v38[2];
      v38 += 2;
    }

    while (v40 < v127);
    v41 = a2;
    if (v39 == v8)
    {
      v41 = a2;
      do
      {
        if (v38 >= v41)
        {
          break;
        }

        v43 = *(v41 - 2);
        v41 -= 2;
      }

      while (v43 >= v127);
    }

    else
    {
      do
      {
        v42 = *(v41 - 2);
        v41 -= 2;
      }

      while (v42 >= v127);
    }

    if (v38 >= v41)
    {
      a1 = v38;
    }

    else
    {
      v44 = v41;
      a1 = v38;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(a1, v44);
        v37 = v127;
        do
        {
          v45 = a1[2];
          a1 += 2;
        }

        while (v45 < v127);
        do
        {
          v46 = *(v44 - 2);
          v44 -= 2;
        }

        while (v46 >= v127);
      }

      while (a1 < v44);
    }

    if (a1 - 2 != v8)
    {
      *v8 = *(a1 - 2);
      v47 = objc_loadWeakRetained(a1 - 1);
      objc_storeWeak(v8 + 1, v47);

      v37 = v127;
    }

    *(a1 - 2) = v37;
    v48 = objc_loadWeakRetained(&v128);
    objc_storeWeak(a1 - 1, v48);

    objc_destroyWeak(&v128);
    if (v38 < v41)
    {
      goto LABEL_85;
    }

    v49 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AddressToParameter *>(v8, a1 - 2);
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AddressToParameter *>(a1, a2))
    {
      v124 = a1;
      if (v49)
      {
        goto LABEL_2;
      }

LABEL_85:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AddressToParameter *,false>(v8, a1 - 2, a3, a4 & 1);
      a4 = 0;
      goto LABEL_1;
    }

    a2 = a1 - 2;
    if (v49)
    {
      return;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AddressToParameter *,0>(v8, v8 + 2, v8 + 4, a2 - 2);
      return;
    }

    if (v9 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AddressToParameter *,0>(v8, v8 + 2, v8 + 4, v8 + 6);
      v63 = *(a2 - 2);
      v62 = a2 - 2;
      if (v63 < v8[6])
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v8 + 6, v62);
        if (v8[6] < v8[4])
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v8 + 4, v8 + 6);
          if (v8[4] < v8[2])
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v8 + 2, v8 + 4);
            if (v8[2] < *v8)
            {
              v64 = v8 + 2;
              v61 = v8;
LABEL_189:
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v61, v64);
              return;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v65 = v8[2];
  v67 = *(a2 - 2);
  v59 = a2 - 2;
  v66 = v67;
  if (v65 < *v8)
  {
    if (v66 >= v65)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v8, v8 + 2);
      if (*v59 >= v8[2])
      {
        return;
      }

      v61 = v8 + 2;
    }

    else
    {
      v61 = v8;
    }

    goto LABEL_188;
  }

  if (v66 < v65)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v8 + 2, v59);
    if (v8[2] < *v8)
    {
      v61 = v8;
      v64 = v8 + 2;
      goto LABEL_189;
    }
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(id *a1, id *a2)
{
  v6 = *a1;
  objc_moveWeak(&v7, a1 + 1);
  *a1 = *a2;
  WeakRetained = objc_loadWeakRetained(a2 + 1);
  objc_storeWeak(a1 + 1, WeakRetained);

  *a2 = v6;
  v5 = objc_loadWeakRetained(&v7);
  objc_storeWeak(a2 + 1, v5);

  objc_destroyWeak(&v7);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AddressToParameter *,0>(id *a1, id *a2, id *a3, id *a4)
{
  v7 = a1;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *a1)
  {
    if (v9 < v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(a2, a3);
      if (*a2 < *v7)
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(a1, v10);
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(a1, a2);
    if (*a3 < *a2)
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(a3, a4);
    if (*a3 < *a2)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(a2, a3);
      if (*a2 < *v7)
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v7, a2);
      }
    }
  }
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AddressToParameter *>(id *a1, id *a2)
{
  v3 = a1;
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = a1[2];
        v5 = a2 - 2;
        v10 = *(a2 - 2);
        if (v9 >= *a1)
        {
          if (v10 >= v9)
          {
            return 1;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(a1 + 2, v5);
          if (v3[2] >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v8 = v3 + 2;
          goto LABEL_17;
        }

        if (v10 >= v9)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(a1, a1 + 2);
          if (*v5 >= v3[2])
          {
            return 1;
          }

          a1 = v3 + 2;
        }

LABEL_16:
        v8 = v5;
LABEL_17:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(a1, v8);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AddressToParameter *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AddressToParameter *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
        v7 = *(a2 - 2);
        v6 = a2 - 2;
        if (v7 >= v3[6])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v3 + 6, v6);
        if (v3[6] >= v3[4])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v3 + 4, v3 + 6);
        if (v3[4] >= v3[2])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(v3 + 2, v3 + 4);
        if (v3[2] >= *v3)
        {
          return 1;
        }

        v8 = v3 + 2;
        a1 = v3;
        goto LABEL_17;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 2;
      if (*(a2 - 2) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v12 = a1 + 4;
  v11 = a1[4];
  v13 = a1[2];
  if (v13 < *a1)
  {
    if (v11 >= v13)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(a1, a1 + 2);
      if (v3[4] >= v3[2])
      {
        goto LABEL_31;
      }

      a1 = v3 + 2;
    }

    v14 = v3 + 4;
    goto LABEL_30;
  }

  if (v11 < v13)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(a1 + 2, a1 + 4);
    if (v3[2] < *v3)
    {
      a1 = v3;
      v14 = v3 + 2;
LABEL_30:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AddressToParameter *&,AddressToParameter *&>(a1, v14);
    }
  }

LABEL_31:
  v15 = v3 + 6;
  if (v3 + 6 != a2)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      if (*v15 < *v12)
      {
        v28 = *v15;
        objc_moveWeak(&v29, v15 + 1);
        v18 = *v12;
        v19 = v16;
        while (1)
        {
          v20 = v19;
          v21 = (v3 + v19);
          *(v3 + v19 + 48) = v18;
          v22 = (v3 + v19 + 40);
          WeakRetained = objc_loadWeakRetained(v22);
          objc_storeWeak(v21 + 7, WeakRetained);

          if (v20 == -32)
          {
            break;
          }

          v18 = v21[2];
          v19 = v20 - 16;
          if (v28 >= v18)
          {
            v24 = (v3 + v19 + 48);
            v22 = (v3 + v20 + 40);
            goto LABEL_39;
          }
        }

        v24 = v3;
LABEL_39:
        *v24 = v28;
        v25 = objc_loadWeakRetained(&v29);
        objc_storeWeak(v22, v25);

        if (++v17 == 8)
        {
          v26 = v15 + 2 == a2;
          objc_destroyWeak(&v29);
          return v26;
        }

        objc_destroyWeak(&v29);
      }

      v12 = v15;
      v16 += 16;
      v15 += 2;
    }

    while (v15 != a2);
  }

  return 1;
}

void sub_18F7D9578(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void sub_18F7D9960(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void sub_18F7D9DE0(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void sub_18F7DA628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<AUObserverController::AddressOriginator>::__emplace_unique_key_args<AUObserverController::AddressOriginator,AUObserverController::AddressOriginator>(uint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

LABEL_3:
      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_9;
      }
    }

    if (v5 >= a2)
    {
      v6 = v4[5];
      if (v6 > a3)
      {
        goto LABEL_3;
      }

      if (v6 >= a3)
      {
        return result;
      }
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_9;
    }
  }
}

void std::__function::__func<AUObserverController::parameterChanged(EParamChangeFlags,unsigned long long,float,AUParameterObserverExtendedToken const&,unsigned long long,AUParameterAutomationEventType)::{lambda(void)#1},std::allocator<AUObserverController::parameterChanged(EParamChangeFlags,unsigned long long,float,AUParameterObserverExtendedToken const&,unsigned long long,AUParameterAutomationEventType)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v86 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (!v2 || (v3 = std::__shared_weak_count::lock(v2)) == 0)
  {
    v60 = *MEMORY[0x1E69E9840];
    return;
  }

  v62 = v3;
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_116;
  }

  *__p = 0u;
  v83 = 0u;
  v84 = 1065353216;
  v80 = 0;
  v81 = 0;
  v79 = &v80;
  v66 = v4;
  if (!*(v4 + 72))
  {
    goto LABEL_90;
  }

  v68 = (v4 + 56);
  v70 = (v4 + 64);
  do
  {
    v5 = *v68;
    while (v5 != v70)
    {
      v6 = v5[1];
      v7 = v5;
      if (v6)
      {
        do
        {
          v8 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v8 = v7[2];
          v9 = *v8 == v7;
          v7 = v8;
        }

        while (!v9);
      }

      v11 = v5[4];
      v10 = v5[5];
      if (v8 != v70)
      {
        while (v8[4] == v11)
        {
          v12 = v8[1];
          if (v12)
          {
            do
            {
              v5 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v5 = v8[2];
              v9 = *v5 == v8;
              v8 = v5;
            }

            while (!v9);
          }

          LODWORD(v10) = 0;
          v13 = 0;
          v8 = v5;
          if (v5 == v70)
          {
            goto LABEL_23;
          }
        }
      }

      v13 = v10;
      v5 = v8;
LABEL_23:
      WeakRetained = objc_loadWeakRetained((v66 + 16));
      v14 = [WeakRetained parameterWithAddress:v11];
      v15 = v14;
      if (!v14)
      {
        goto LABEL_63;
      }

      v16 = v14;
      v71 = v11;
      v73 = v16;
      do
      {
        v17 = [v16 observerList];
        if (v17)
        {
          v18 = v15;
          v19 = v73;
          v20 = *v17;
          v21 = v17[1];
          while (v20 != v21)
          {
            v22 = *v20;
            if ((*(*v20 + 8) & 1) == 0)
            {
              if ((v13 ^ v22) & 0xFFFFFFFE | (v13 & 1))
              {
                v23 = *(v22 + 16);
                v24 = [v19 address];
                [v19 value];
                (*(v23 + 16))(v23, v24);
              }
            }

            ++v20;
          }

          v11 = v71;
          v15 = v18;
        }

        v25 = [v16 parentNode];

        v16 = v25;
      }

      while (v25);
      if (!__p[1])
      {
        goto LABEL_50;
      }

      v26 = vcnt_s8(__p[1]);
      v26.i16[0] = vaddlv_u8(v26);
      if (v26.u32[0] > 1uLL)
      {
        v27 = v11;
        if (v11 >= __p[1])
        {
          v27 = v11 % __p[1];
        }
      }

      else
      {
        v27 = (__p[1] - 1) & v11;
      }

      v28 = *(__p[0] + v27);
      if (!v28 || (v29 = *v28) == 0)
      {
LABEL_50:
        operator new();
      }

      while (1)
      {
        v30 = v29[1];
        if (v30 == v11)
        {
          break;
        }

        if (v26.u32[0] > 1uLL)
        {
          if (v30 >= __p[1])
          {
            v30 %= __p[1];
          }
        }

        else
        {
          v30 &= __p[1] - 1;
        }

        if (v30 != v27)
        {
          goto LABEL_50;
        }

LABEL_49:
        v29 = *v29;
        if (!v29)
        {
          goto LABEL_50;
        }
      }

      if (v29[2] != v11)
      {
        goto LABEL_49;
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v31 = [v73 dependentParameters];
      v32 = [v31 countByEnumeratingWithState:&v75 objects:v85 count:16];
      v33 = v32;
      if (v32)
      {
        v34 = *v76;
        do
        {
          v35 = 0;
          do
          {
            if (*v76 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = [*(*(&v75 + 1) + 8 * v35) longLongValue];
            v37 = v83;
            if (v83)
            {
              while (v37[2] != v36)
              {
                v37 = *v37;
                if (!v37)
                {
                  goto LABEL_59;
                }
              }
            }

            else
            {
LABEL_59:
              v74[0] = v36;
              v74[1] = 0;
              std::__tree<AUObserverController::AddressOriginator>::__emplace_unique_key_args<AUObserverController::AddressOriginator,AUObserverController::AddressOriginator>(&v79, v36, 0);
            }

            ++v35;
          }

          while (v35 != v33);
          v33 = [v31 countByEnumeratingWithState:&v75 objects:v85 count:16];
        }

        while (v33);
      }

LABEL_63:
    }

    v4 = v66;
    if (v68 != &v79)
    {
      v38 = v79;
      if (*(v66 + 72))
      {
        v39 = *v68;
        *v68 = v70;
        *(*v70 + 16) = 0;
        *v70 = 0;
        v70[1] = 0;
        if (v39[1])
        {
          v40 = v39[1];
        }

        else
        {
          v40 = v39;
        }

        if (!v40)
        {
          v47 = 0;
          goto LABEL_86;
        }

        v41 = std::__tree<AUObserverController::AddressOriginator>::_DetachedTreeCache::__detach_next(v40);
        if (v38 != &v80)
        {
          v42 = v38;
          do
          {
            v43 = v40;
            v40 = v41;
            *(v43 + 2) = *(v42 + 2);
            leaf_high = std::__tree<AUObserverController::AddressOriginator>::__find_leaf_high(v68, v74, v43[4], v43[5]);
            if (v41)
            {
              v41 = std::__tree<AUObserverController::AddressOriginator>::_DetachedTreeCache::__detach_next(v41);
            }

            v45 = v42[1];
            if (v45)
            {
              do
              {
                v38 = v45;
                v45 = *v45;
              }

              while (v45);
            }

            else
            {
              do
              {
                v38 = v42[2];
                v9 = *v38 == v42;
                v42 = v38;
              }

              while (!v9);
            }

            if (!v40)
            {
              break;
            }

            v42 = v38;
          }

          while (v38 != &v80);
        }

        if (v41)
        {
          for (i = v41[2]; i; i = i[2])
          {
            v41 = i;
          }

          v47 = v41;
LABEL_86:
        }
      }

      if (v38 != &v80)
      {
        operator new();
      }
    }

    v80 = 0;
    v81 = 0;
    v79 = &v80;
  }

  while (*(v66 + 72));
LABEL_90:
  v48 = *(v4 + 88);
  v49 = *(v4 + 80);
  if (v49 == v48)
  {
    v59 = 0;
  }

  else
  {
    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterAutomationEvent *,false>(v49, v48, 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v48 - v49) >> 3)), 1, *(v4 + 80));
    v50 = *(v4 + 80);
    v65 = *(v4 + 88);
    if (v50 != v65)
    {
      v51 = *(v4 + 80);
      do
      {
        v52 = *(v50 + 8);
        do
        {
          if (*(v51 + 8) != v52)
          {
            break;
          }

          v51 += 40;
        }

        while (v51 != v65);
        v64 = objc_loadWeakRetained((v4 + 16));
        v63 = [v64 parameterWithAddress:v52];
        if (v63)
        {
          v53 = v63;
          v54 = 0xCCCCCCCCCCCCCCCDLL * ((v51 - v50) >> 3);
          v67 = v51;
          do
          {
            v55 = [v53 observerList];
            if (v55)
            {
              if (v67 != v50)
              {
                v57 = *v55;
                v56 = v55[1];
                if (*v55 != v56)
                {
                  v72 = v55[1];
                  do
                  {
                    if (*(*v57 + 8) == 1)
                    {
                      if (*(*v57 + 24))
                      {
                        if (!(v54 >> 59))
                        {
                          std::allocator<AUParameterAutomationEvent>::allocate_at_least[abi:ne200100](v54);
                        }

                        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                      }

                      if (v54 <= 0xAAAAAAAAAAAAAAALL)
                      {
                        std::allocator<RecordedParameterEvent>::allocate_at_least[abi:ne200100](v54);
                      }

                      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                    }

                    v57 += 8;
                  }

                  while (v57 != v56);
                }
              }
            }

            v58 = [v53 parentNode];

            v51 = v67;
            v53 = v58;
          }

          while (v58);
        }

        v50 = v51;
        v4 = v66;
      }

      while (v51 != v65);
      v50 = *(v66 + 80);
    }

    *(v4 + 88) = v50;
    v59 = v80;
  }

LABEL_116:
  v61 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v62);
}

void sub_18F7DBBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, char a37)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterAutomationEvent *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  v311 = *MEMORY[0x1E69E9840];
LABEL_2:
  v9 = (a2 - 40);
  v10 = (a2 - 80);
  v223 = (a2 - 72);
  v11 = (a2 - 120);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        goto LABEL_294;
      }

      if (v14 == 2)
      {
        if (*(a2 - 40) >= *v12)
        {
          goto LABEL_294;
        }

LABEL_193:
        v308 = *(v12 + 32);
        v250 = *v12;
        v280 = *(v12 + 16);
        v139 = *v9;
        v140 = *(a2 - 24);
        *(v12 + 32) = *(a2 - 8);
        *v12 = v139;
        *(v12 + 16) = v140;
        v134 = v250;
        v135 = v280;
        v136 = v308;
LABEL_194:
        *(a2 - 8) = v136;
        *v9 = v134;
        *(a2 - 24) = v135;
        goto LABEL_294;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      v131 = *(v12 + 48);
      if (*(v12 + 40) < *v12)
      {
        v132 = *(a2 - 32);
        if (v132 < v131 || v132 <= v131 && *v9 < *(v12 + 40))
        {
          goto LABEL_193;
        }

        v307 = *(v12 + 32);
        v249 = *v12;
        v279 = *(v12 + 16);
        v133 = *(v12 + 56);
        *v12 = *(v12 + 40);
        *(v12 + 16) = v133;
        *(v12 + 32) = *(v12 + 72);
        *(v12 + 40) = v249;
        *(v12 + 56) = v279;
        *(v12 + 72) = v307;
        if (*(a2 - 40) < *(v12 + 40))
        {
          v134 = *(v12 + 40);
          v135 = *(v12 + 56);
          v136 = *(v12 + 72);
          v138 = *v9;
          v137 = *(a2 - 24);
          *(v12 + 72) = *(a2 - 8);
          *(v12 + 40) = v138;
          *(v12 + 56) = v137;
          goto LABEL_194;
        }

        goto LABEL_294;
      }

      v210 = *(a2 - 32);
      if (v210 >= v131 && (v210 > v131 || *v9 >= *(v12 + 40)))
      {
LABEL_294:
        v222 = *MEMORY[0x1E69E9840];
        return;
      }

      v211 = *(v12 + 40);
      v285 = *(v12 + 56);
      v212 = *(v12 + 72);
      v214 = *v9;
      v213 = *(a2 - 24);
      *(v12 + 72) = *(a2 - 8);
      *(v12 + 40) = v214;
      *(v12 + 56) = v213;
      *(a2 - 8) = v212;
      *v9 = v211;
      *(a2 - 24) = v285;
LABEL_286:
      if (*(v12 + 40) < *v12)
      {
        v310 = *(v12 + 32);
        v254 = *v12;
        v286 = *(v12 + 16);
        v215 = *(v12 + 56);
        *v12 = *(v12 + 40);
        *(v12 + 16) = v215;
        *(v12 + 32) = *(v12 + 72);
        *(v12 + 40) = v254;
        *(v12 + 56) = v286;
        *(v12 + 72) = v310;
      }

      goto LABEL_294;
    }

    if (v14 == 4)
    {
      break;
    }

    if (v14 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterAutomationEvent *,0>(v12, v12 + 40, v12 + 80, v12 + 120, a5);
      if (*(a2 - 40) >= *(v12 + 120))
      {
        goto LABEL_294;
      }

      v141 = *(v12 + 120);
      v281 = *(v12 + 136);
      v142 = *(v12 + 152);
      v144 = *v9;
      v143 = *(a2 - 24);
      *(v12 + 152) = *(a2 - 8);
      *(v12 + 120) = v144;
      *(v12 + 136) = v143;
      *(a2 - 8) = v142;
      *v9 = v141;
      *(a2 - 24) = v281;
      if (*(v12 + 120) >= *(v12 + 80))
      {
        goto LABEL_294;
      }

      v145 = *(v12 + 112);
      v147 = *(v12 + 80);
      v146 = *(v12 + 96);
      v148 = *(v12 + 136);
      *(v12 + 80) = *(v12 + 120);
      *(v12 + 96) = v148;
      *(v12 + 112) = *(v12 + 152);
      *(v12 + 120) = v147;
      *(v12 + 136) = v146;
      *(v12 + 152) = v145;
      if (*(v12 + 80) >= *(v12 + 40))
      {
        goto LABEL_294;
      }

      v149 = *(v12 + 72);
      v150 = *(v12 + 40);
      v151 = *(v12 + 96);
      *(v12 + 40) = *(v12 + 80);
      v152 = *(v12 + 56);
      *(v12 + 56) = v151;
      *(v12 + 72) = *(v12 + 112);
      *(v12 + 80) = v150;
      *(v12 + 96) = v152;
      *(v12 + 112) = v149;
      goto LABEL_286;
    }

LABEL_10:
    if (v13 <= 959)
    {
      v153 = v12 + 40;
      v155 = v12 == a2 || v153 == a2;
      if (a4)
      {
        if (v155)
        {
          goto LABEL_294;
        }

        v156 = 0;
        v157 = v12;
        while (2)
        {
          v158 = v157;
          v157 = v153;
          v159 = *(v158 + 48);
          v160 = *(v158 + 8);
          if (v159 < v160)
          {
            v161 = *v157;
            goto LABEL_210;
          }

          if (v159 <= v160)
          {
            v161 = *v157;
            if (*v157 < *v158)
            {
LABEL_210:
              v251 = *(v158 + 56);
              v282 = *(v158 + 72);
              v162 = *(v158 + 16);
              *v157 = *v158;
              *(v157 + 16) = v162;
              *(v157 + 32) = *(v158 + 32);
              v163 = v12;
              if (v158 != v12)
              {
                v164 = v156;
                while (1)
                {
                  v165 = v12 + v164;
                  v166 = (v12 + v164 - 40);
                  v167 = *(v12 + v164 - 32);
                  if (v159 >= v167)
                  {
                    if (v159 > v167)
                    {
                      v163 = v158;
                      goto LABEL_222;
                    }

                    if (v161 >= *v166)
                    {
                      break;
                    }
                  }

                  v158 -= 40;
                  v168 = *(v12 + v164 - 24);
                  *v165 = *v166;
                  *(v165 + 16) = v168;
                  *(v165 + 32) = *(v12 + v164 - 8);
                  v164 -= 40;
                  if (!v164)
                  {
                    v163 = v12;
                    goto LABEL_222;
                  }
                }

                v163 = v12 + v164;
              }

LABEL_222:
              *v163 = v161;
              *(v163 + 8) = v159;
              *(v163 + 16) = v251;
              *(v163 + 32) = v282;
            }
          }

          v153 = v157 + 40;
          v156 += 40;
          if (v157 + 40 == a2)
          {
            goto LABEL_294;
          }

          continue;
        }
      }

      if (v155)
      {
        goto LABEL_294;
      }

      while (2)
      {
        v216 = a1;
        a1 = v153;
        v217 = *(v216 + 48);
        v218 = *(v216 + 8);
        if (v217 < v218)
        {
          v219 = *a1;
          goto LABEL_277;
        }

        if (v217 <= v218)
        {
          v219 = *a1;
          if (*a1 < *v216)
          {
LABEL_277:
            v255 = *(v216 + 56);
            v287 = *(v216 + 72);
            do
            {
              v220 = v216;
              v221 = *(v216 + 16);
              *(v216 + 40) = *v216;
              *(v216 + 56) = v221;
              *(v216 + 72) = *(v216 + 32);
              v216 -= 40;
            }

            while (__PAIR128__(v217, v219) < __PAIR128__(*(v220 - 32), *v216));
            *v220 = v219;
            *(v220 + 8) = v217;
            *(v220 + 16) = v255;
            *(v220 + 32) = v287;
          }
        }

        v153 = a1 + 40;
        if (a1 + 40 == a2)
        {
          goto LABEL_294;
        }

        continue;
      }
    }

    if (!a3)
    {
      if (v12 == a2)
      {
        goto LABEL_294;
      }

      v169 = (v14 - 2) >> 1;
      v170 = v169;
      do
      {
        v171 = v170;
        if (v169 >= v170)
        {
          v172 = (2 * v170) | 1;
          v173 = v12 + 40 * v172;
          if (2 * v171 + 2 < v14 && *v173 < *(v173 + 40))
          {
            v173 += 40;
            v172 = 2 * v171 + 2;
          }

          v174 = v12 + 40 * v171;
          v175 = *(v173 + 8);
          v176 = *(v174 + 8);
          v177 = v175 > v176;
          if (v175 >= v176)
          {
            v178 = *v174;
            if (v177 || *v173 >= v178)
            {
              v283 = *(v174 + 32);
              v252 = *(v174 + 16);
              v179 = *v173;
              v180 = *(v173 + 16);
              *(v174 + 32) = *(v173 + 32);
              *v174 = v179;
              *(v174 + 16) = v180;
              if (v169 >= v172)
              {
                while (1)
                {
                  v182 = 2 * v172;
                  v172 = (2 * v172) | 1;
                  v181 = v12 + 40 * v172;
                  v183 = v182 + 2;
                  if (v183 < v14 && *v181 < *(v181 + 40))
                  {
                    v181 += 40;
                    v172 = v183;
                  }

                  if (*v181 < __PAIR128__(v176, v178))
                  {
                    break;
                  }

                  v184 = *v181;
                  v185 = *(v181 + 16);
                  *(v173 + 32) = *(v181 + 32);
                  *v173 = v184;
                  *(v173 + 16) = v185;
                  v173 = v181;
                  if (v169 < v172)
                  {
                    goto LABEL_236;
                  }
                }
              }

              v181 = v173;
LABEL_236:
              *v181 = v178;
              *(v181 + 8) = v176;
              *(v181 + 16) = v252;
              *(v181 + 32) = v283;
            }
          }
        }

        v170 = v171 - 1;
      }

      while (v171);
      v186 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
      while (2)
      {
        v187 = 0;
        v309 = *(v12 + 32);
        v253 = *v12;
        v284 = *(v12 + 16);
        v188 = v12;
        do
        {
          v189 = v188;
          v190 = v188 + 40 * v187;
          v188 = v190 + 40;
          v191 = 2 * v187;
          v187 = (2 * v187) | 1;
          v192 = v191 + 2;
          if (v192 < v186 && *(v190 + 40) < *(v190 + 80))
          {
            v188 = v190 + 80;
            v187 = v192;
          }

          v193 = *v188;
          v194 = *(v188 + 16);
          *(v189 + 32) = *(v188 + 32);
          *v189 = v193;
          *(v189 + 16) = v194;
        }

        while (v187 <= (v186 - 2) / 2);
        a2 -= 40;
        if (v188 == a2)
        {
          *(v188 + 32) = v309;
          *v188 = v253;
          *(v188 + 16) = v284;
        }

        else
        {
          v195 = *a2;
          v196 = *(a2 + 16);
          *(v188 + 32) = *(a2 + 32);
          *v188 = v195;
          *(v188 + 16) = v196;
          *(a2 + 32) = v309;
          *a2 = v253;
          *(a2 + 16) = v284;
          v197 = v188 - v12 + 40;
          if (v197 >= 41)
          {
            v198 = -2 - 0x3333333333333333 * (v197 >> 3);
            v199 = v198 >> 1;
            v200 = v12 + 40 * (v198 >> 1);
            v201 = *(v200 + 8);
            v202 = *(v188 + 8);
            if (v201 < v202)
            {
              v203 = *v188;
              goto LABEL_254;
            }

            if (v201 <= v202)
            {
              v203 = *v188;
              if (*v200 < *v188)
              {
LABEL_254:
                v229 = *(v188 + 32);
                v226 = *(v188 + 16);
                v204 = *(v200 + 32);
                v205 = *(v200 + 16);
                *v188 = *v200;
                *(v188 + 16) = v205;
                *(v188 + 32) = v204;
                if (v198 >= 2)
                {
                  while (1)
                  {
                    v207 = v199 - 1;
                    v199 = (v199 - 1) >> 1;
                    v206 = v12 + 40 * v199;
                    if (*v206 >= __PAIR128__(v202, v203))
                    {
                      break;
                    }

                    v208 = *v206;
                    v209 = *(v206 + 16);
                    *(v200 + 32) = *(v206 + 32);
                    *v200 = v208;
                    *(v200 + 16) = v209;
                    v200 = v12 + 40 * v199;
                    if (v207 <= 1)
                    {
                      goto LABEL_258;
                    }
                  }
                }

                v206 = v200;
LABEL_258:
                *v206 = v203;
                *(v206 + 8) = v202;
                *(v206 + 16) = v226;
                *(v206 + 32) = v229;
              }
            }
          }
        }

        v177 = v186-- <= 2;
        if (v177)
        {
          goto LABEL_294;
        }

        continue;
      }
    }

    v15 = v14 >> 1;
    v16 = v12 + 40 * (v14 >> 1);
    if (v13 >= 0x1401)
    {
      v17 = *(v16 + 8);
      if (*v16 >= *v12)
      {
        v25 = *(a2 - 32);
        if (v25 < v17 || v25 <= v17 && *v9 < *v16)
        {
          v290 = *(v16 + 32);
          v232 = *v16;
          v258 = *(v16 + 16);
          v26 = *v9;
          v27 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v26;
          *(v16 + 16) = v27;
          *(a2 - 8) = v290;
          *v9 = v232;
          *(a2 - 24) = v258;
          if (*v16 < *v12)
          {
            v291 = *(v12 + 32);
            v233 = *v12;
            v259 = *(v12 + 16);
            v28 = *v16;
            v29 = *(v16 + 16);
            *(v12 + 32) = *(v16 + 32);
            *v12 = v28;
            *(v12 + 16) = v29;
            *(v16 + 32) = v291;
            *v16 = v233;
            *(v16 + 16) = v259;
          }
        }

LABEL_32:
        v39 = v12 + 40 * v15;
        v40 = v39 - 40;
        v41 = *(v39 - 32);
        if (__PAIR128__(v41, *v40) >= *(v12 + 40))
        {
          if (*v223 < v41 || *v223 <= v41 && *v10 < *v40)
          {
            v295 = *(v40 + 32);
            v237 = *v40;
            v263 = *(v40 + 16);
            v47 = *v10;
            v48 = *(a2 - 64);
            *(v40 + 32) = *(a2 - 48);
            *v40 = v47;
            *(v40 + 16) = v48;
            *(a2 - 48) = v295;
            *v10 = v237;
            *(a2 - 64) = v263;
            if (*v40 < *(v12 + 40))
            {
              v49 = *(v12 + 40);
              v264 = *(v12 + 56);
              v50 = *(v12 + 72);
              v52 = *v40;
              v51 = *(v40 + 16);
              *(v12 + 72) = *(v40 + 32);
              *(v12 + 40) = v52;
              *(v12 + 56) = v51;
              *(v40 + 32) = v50;
              *v40 = v49;
              *(v40 + 16) = v264;
            }
          }

LABEL_49:
          v63 = v12 + 40 * v15;
          v64 = *(v63 + 48);
          if (*(v63 + 40) >= *(v12 + 80))
          {
            v71 = *(a2 - 112);
            if (v71 < v64 || v71 <= v64 && *v11 < *(v63 + 40))
            {
              v298 = *(v63 + 72);
              v240 = *(v63 + 40);
              v268 = *(v63 + 56);
              v72 = *v11;
              v73 = *(a2 - 104);
              *(v63 + 72) = *(a2 - 88);
              *(v63 + 56) = v73;
              *(v63 + 40) = v72;
              *(a2 - 88) = v298;
              *v11 = v240;
              *(a2 - 104) = v268;
              if (*(v63 + 40) < *(v12 + 80))
              {
                v74 = *(v12 + 80);
                v269 = *(v12 + 96);
                v75 = *(v12 + 112);
                v76 = *(v63 + 56);
                v77 = *(v63 + 40);
                *(v12 + 112) = *(v63 + 72);
                *(v12 + 80) = v77;
                *(v12 + 96) = v76;
                *(v63 + 56) = v269;
                *(v63 + 72) = v75;
                *(v63 + 40) = v74;
              }
            }

LABEL_64:
            if (*v16 >= *v40)
            {
              if (*(v63 + 40) < *v16)
              {
                v301 = *(v16 + 32);
                v243 = *v16;
                v273 = *(v16 + 16);
                v85 = *(v63 + 56);
                *v16 = *(v63 + 40);
                *(v16 + 16) = v85;
                *(v16 + 32) = *(v63 + 72);
                *(v63 + 56) = v273;
                *(v63 + 72) = v301;
                *(v63 + 40) = v243;
                if (*v16 < *v40)
                {
                  v302 = *(v40 + 32);
                  v244 = *v40;
                  v274 = *(v40 + 16);
                  v86 = *(v16 + 16);
                  *v40 = *v16;
                  *(v40 + 16) = v86;
                  *(v40 + 32) = *(v16 + 32);
                  *(v16 + 32) = v302;
                  *v16 = v244;
                  *(v16 + 16) = v274;
                }
              }

              goto LABEL_72;
            }

            if (*(v63 + 40) < *v16)
            {
              v300 = *(v40 + 32);
              v242 = *v40;
              v272 = *(v40 + 16);
              v84 = *(v63 + 56);
              *v40 = *(v63 + 40);
              *(v40 + 16) = v84;
              *(v40 + 32) = *(v63 + 72);
            }

            else
            {
              v303 = *(v40 + 32);
              v245 = *v40;
              v275 = *(v40 + 16);
              v87 = *(v16 + 16);
              *v40 = *v16;
              *(v40 + 16) = v87;
              *(v40 + 32) = *(v16 + 32);
              *(v16 + 32) = v303;
              *v16 = v245;
              *(v16 + 16) = v275;
              if (*(v63 + 40) >= *v16)
              {
                goto LABEL_72;
              }

              v300 = *(v16 + 32);
              v242 = *v16;
              v272 = *(v16 + 16);
              v88 = *(v63 + 56);
              *v16 = *(v63 + 40);
              *(v16 + 16) = v88;
              *(v16 + 32) = *(v63 + 72);
            }

            *(v63 + 56) = v272;
            *(v63 + 72) = v300;
            *(v63 + 40) = v242;
LABEL_72:
            v304 = *(v12 + 32);
            v246 = *v12;
            v276 = *(v12 + 16);
            v89 = *v16;
            v90 = *(v16 + 16);
            *(v12 + 32) = *(v16 + 32);
            *v12 = v89;
            *(v12 + 16) = v90;
            *(v16 + 32) = v304;
            *v16 = v246;
            *(v16 + 16) = v276;
            goto LABEL_73;
          }

          v65 = *(a2 - 112);
          if (v65 < v64 || v65 <= v64 && *v11 < *(v63 + 40))
          {
            v66 = *(v12 + 80);
            v67 = *(v12 + 96);
            v68 = *(v12 + 112);
            v70 = *v11;
            v69 = *(a2 - 104);
            *(v12 + 112) = *(a2 - 88);
            *(v12 + 80) = v70;
            *(v12 + 96) = v69;
          }

          else
          {
            v78 = *(v12 + 80);
            v270 = *(v12 + 96);
            v79 = *(v12 + 112);
            v80 = *(v63 + 56);
            v81 = *(v63 + 40);
            *(v12 + 112) = *(v63 + 72);
            *(v12 + 80) = v81;
            *(v12 + 96) = v80;
            *(v63 + 56) = v270;
            *(v63 + 72) = v79;
            *(v63 + 40) = v78;
            if (*(a2 - 120) >= *(v63 + 40))
            {
              goto LABEL_64;
            }

            v299 = *(v63 + 72);
            v241 = *(v63 + 40);
            v271 = *(v63 + 56);
            v82 = *v11;
            v83 = *(a2 - 104);
            *(v63 + 72) = *(a2 - 88);
            *(v63 + 56) = v83;
            *(v63 + 40) = v82;
            v66 = v241;
            v67 = v271;
            v68 = v299;
          }

          *(a2 - 88) = v68;
          *v11 = v66;
          *(a2 - 104) = v67;
          goto LABEL_64;
        }

        if (*v223 < v41 || *v223 <= v41 && *v10 < *v40)
        {
          v42 = *(v12 + 40);
          v43 = *(v12 + 56);
          v44 = *(v12 + 72);
          v46 = *v10;
          v45 = *(a2 - 64);
          *(v12 + 72) = *(a2 - 48);
          *(v12 + 40) = v46;
          *(v12 + 56) = v45;
        }

        else
        {
          v57 = *(v12 + 40);
          v266 = *(v12 + 56);
          v58 = *(v12 + 72);
          v60 = *v40;
          v59 = *(v40 + 16);
          *(v12 + 72) = *(v40 + 32);
          *(v12 + 40) = v60;
          *(v12 + 56) = v59;
          *(v40 + 32) = v58;
          *v40 = v57;
          *(v40 + 16) = v266;
          if (__PAIR128__(*v223, *v10) >= *v40)
          {
            goto LABEL_49;
          }

          v297 = *(v40 + 32);
          v239 = *v40;
          v267 = *(v40 + 16);
          v61 = *v10;
          v62 = *(a2 - 64);
          *(v40 + 32) = *(a2 - 48);
          *v40 = v61;
          *(v40 + 16) = v62;
          v42 = v239;
          v43 = v267;
          v44 = v297;
        }

        *(a2 - 48) = v44;
        *v10 = v42;
        *(a2 - 64) = v43;
        goto LABEL_49;
      }

      v18 = *(a2 - 32);
      if (v18 < v17 || v18 <= v17 && *v9 < *v16)
      {
        v288 = *(v12 + 32);
        v230 = *v12;
        v256 = *(v12 + 16);
        v19 = *v9;
        v20 = *(a2 - 24);
        *(v12 + 32) = *(a2 - 8);
        *v12 = v19;
        *(v12 + 16) = v20;
      }

      else
      {
        v294 = *(v12 + 32);
        v236 = *v12;
        v262 = *(v12 + 16);
        v35 = *v16;
        v36 = *(v16 + 16);
        *(v12 + 32) = *(v16 + 32);
        *v12 = v35;
        *(v12 + 16) = v36;
        *(v16 + 32) = v294;
        *v16 = v236;
        *(v16 + 16) = v262;
        if (*(a2 - 40) >= *v16)
        {
          goto LABEL_32;
        }

        v288 = *(v16 + 32);
        v230 = *v16;
        v256 = *(v16 + 16);
        v37 = *v9;
        v38 = *(a2 - 24);
        *(v16 + 32) = *(a2 - 8);
        *v16 = v37;
        *(v16 + 16) = v38;
      }

      *(a2 - 8) = v288;
      *v9 = v230;
      *(a2 - 24) = v256;
      goto LABEL_32;
    }

    v21 = *(v12 + 8);
    if (*v12 >= *v16)
    {
      v30 = *(a2 - 32);
      if (v30 < v21 || v30 <= v21 && *v9 < *v12)
      {
        v292 = *(v12 + 32);
        v234 = *v12;
        v260 = *(v12 + 16);
        v31 = *v9;
        v32 = *(a2 - 24);
        *(v12 + 32) = *(a2 - 8);
        *v12 = v31;
        *(v12 + 16) = v32;
        *(a2 - 8) = v292;
        *v9 = v234;
        *(a2 - 24) = v260;
        if (*v12 < *v16)
        {
          v293 = *(v16 + 32);
          v235 = *v16;
          v261 = *(v16 + 16);
          v33 = *v12;
          v34 = *(v12 + 16);
          *(v16 + 32) = *(v12 + 32);
          *v16 = v33;
          *(v16 + 16) = v34;
          *(v12 + 32) = v293;
          *v12 = v235;
          *(v12 + 16) = v261;
        }
      }

      goto LABEL_73;
    }

    v22 = *(a2 - 32);
    if (v22 < v21 || v22 <= v21 && *v9 < *v12)
    {
      v289 = *(v16 + 32);
      v231 = *v16;
      v257 = *(v16 + 16);
      v23 = *v9;
      v24 = *(a2 - 24);
      *(v16 + 32) = *(a2 - 8);
      *v16 = v23;
      *(v16 + 16) = v24;
    }

    else
    {
      v296 = *(v16 + 32);
      v238 = *v16;
      v265 = *(v16 + 16);
      v53 = *v12;
      v54 = *(v12 + 16);
      *(v16 + 32) = *(v12 + 32);
      *v16 = v53;
      *(v16 + 16) = v54;
      *(v12 + 32) = v296;
      *v12 = v238;
      *(v12 + 16) = v265;
      if (*(a2 - 40) >= *v12)
      {
        goto LABEL_73;
      }

      v289 = *(v12 + 32);
      v231 = *v12;
      v257 = *(v12 + 16);
      v55 = *v9;
      v56 = *(a2 - 24);
      *(v12 + 32) = *(a2 - 8);
      *v12 = v55;
      *(v12 + 16) = v56;
    }

    *(a2 - 8) = v289;
    *v9 = v231;
    *(a2 - 24) = v257;
LABEL_73:
    --a3;
    if (a4)
    {
      v92 = *v12;
      v91 = *(v12 + 8);
LABEL_76:
      v224 = *(v12 + 16);
      v227 = *(v12 + 32);
        ;
      }

      if (i - 5 == v12)
      {
        v96 = a2;
        if (i < a2)
        {
          v98 = *(a2 - 32);
          v96 = (a2 - 40);
          if (v98 >= v91)
          {
            v95 = (a2 - 72);
            v96 = (a2 - 40);
            while (1)
            {
              v111 = v95 + 4;
              if (v98 <= v91)
              {
                if (*v111 < v92 || i >= v111)
                {
                  goto LABEL_84;
                }
              }

              else if (i >= v111)
              {
                break;
              }

              v96 -= 5;
              v113 = *v95;
              v95 -= 5;
              v98 = v113;
              if (v113 < v91)
              {
                goto LABEL_84;
              }
            }
          }
        }
      }

      else
      {
        v94 = *(a2 - 32);
        v95 = (a2 - 72);
        v96 = (a2 - 40);
        if (v94 >= v91)
        {
          do
          {
            if (v94 <= v91 && v95[4] < v92)
            {
              break;
            }

            v97 = *v95;
            v95 -= 5;
            v94 = v97;
          }

          while (v97 >= v91);
LABEL_84:
          v96 = v95 + 4;
        }
      }

      v12 = i;
      if (i < v96)
      {
        v12 = i;
        v99 = v96;
        do
        {
          v305 = *(v12 + 32);
          v247 = *v12;
          v277 = *(v12 + 16);
          v100 = *v99;
          v101 = *(v99 + 1);
          *(v12 + 32) = v99[4];
          *v12 = v100;
          *(v12 + 16) = v101;
          v99[4] = v305;
          *v99 = v247;
          *(v99 + 1) = v277;
          v102 = v12 + 40;
          do
          {
            v12 = v102;
            v103 = *(v102 + 8);
            v102 += 40;
          }

          while (__PAIR128__(v103, *v12) < __PAIR128__(v91, v92));
          v104 = *(v99 - 4);
          if (v104 >= v91)
          {
            v105 = v99 - 9;
            do
            {
              if (v104 <= v91 && v105[4] < v92)
              {
                break;
              }

              v106 = *v105;
              v105 -= 5;
              v104 = v106;
            }

            while (v106 >= v91);
            v99 = v105 + 4;
          }

          else
          {
            v99 -= 5;
          }
        }

        while (v12 < v99);
      }

      if (v12 - 40 != a1)
      {
        v107 = *(v12 - 40);
        v108 = *(v12 - 24);
        *(a1 + 32) = *(v12 - 8);
        *a1 = v107;
        *(a1 + 16) = v108;
      }

      *(v12 - 40) = v92;
      *(v12 - 32) = v91;
      *(v12 - 8) = v227;
      *(v12 - 24) = v224;
      if (i < v96)
      {
        goto LABEL_104;
      }

      v109 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterAutomationEvent *>(a1, v12 - 40, v224);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterAutomationEvent *>(v12, a2, v110))
      {
        a2 = v12 - 40;
        if (v109)
        {
          goto LABEL_294;
        }

        goto LABEL_2;
      }

      if (!v109)
      {
LABEL_104:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterAutomationEvent *,false>(a1, v12 - 40, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v92 = *v12;
      v91 = *(v12 + 8);
      if (*(v12 - 40) < *v12)
      {
        goto LABEL_76;
      }

      v225 = *(v12 + 16);
      v228 = *(v12 + 32);
      v114 = *(a2 - 32);
      if (__PAIR128__(v91, v92) < __PAIR128__(v114, *v9))
      {
        v115 = *(v12 + 48);
        if (v91 >= v115)
        {
          v116 = (v12 + 88);
          do
          {
            if (v91 <= v115 && v92 < *(v116 - 6))
            {
              break;
            }

            v117 = *v116;
            v116 += 5;
            v115 = v117;
          }

          while (v91 >= v117);
          v12 = (v116 - 6);
        }

        else
        {
          v12 += 40;
        }
      }

      else
      {
          ;
        }
      }

      v118 = a2;
      if (v12 < a2)
      {
        for (j = (a2 - 72); v91 < v114 || v91 <= v114 && v92 < j[4]; j -= 5)
        {
          v120 = *j;
          v114 = v120;
        }

        v118 = j + 4;
      }

      while (v12 < v118)
      {
        v306 = *(v12 + 32);
        v248 = *v12;
        v278 = *(v12 + 16);
        v121 = *v118;
        v122 = *(v118 + 1);
        *(v12 + 32) = v118[4];
        *v12 = v121;
        *(v12 + 16) = v122;
        v118[4] = v306;
        *v118 = v248;
        *(v118 + 1) = v278;
        v123 = *(v12 + 48);
        if (v91 >= v123)
        {
          v124 = (v12 + 88);
          do
          {
            if (v91 <= v123 && v92 < *(v124 - 6))
            {
              break;
            }

            v125 = *v124;
            v124 += 5;
            v123 = v125;
          }

          while (v91 >= v125);
          v12 = (v124 - 6);
        }

        else
        {
          v12 += 40;
        }

        v126 = v118 - 5;
        do
        {
          v118 = v126;
          v127 = v126[1];
          v126 -= 5;
        }

        while (__PAIR128__(v91, v92) < __PAIR128__(v127, *v118));
      }

      if (v12 - 40 != a1)
      {
        v128 = *(v12 - 40);
        v129 = *(v12 - 24);
        *(a1 + 32) = *(v12 - 8);
        *a1 = v128;
        *(a1 + 16) = v129;
      }

      a4 = 0;
      *(v12 - 40) = v92;
      *(v12 - 32) = v91;
      a5 = v225;
      *(v12 - 8) = v228;
      *(v12 - 24) = v225;
    }
  }

  v130 = *MEMORY[0x1E69E9840];

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterAutomationEvent *,0>(v12, v12 + 40, v12 + 80, a2 - 40, a5);
}