void sub_18F69FA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<MP4AudioESDS>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 1512);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 1496);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

BOOL IsConfigBoxForCodingName(int a1, int a2, unsigned int *outPropertyData)
{
  if (a1 == 1685220723)
  {
    inSpecifier = 0x46D703466;
    v14 = a2;
    ioPropertyDataSize[0] = 4;
    v5 = AudioFormatGetProperty(0x6964656Eu, 0xCu, &inSpecifier, ioPropertyDataSize, outPropertyData) == 0;
    v6 = ioPropertyDataSize[0];
  }

  else
  {
    inSpecifier = 0x46D703466;
    v14 = a1;
    v12 = 0;
    *ioPropertyDataSize = 0;
    v10 = 12;
    if (AudioFormatGetProperty(0x656E636Eu, 0xCu, &inSpecifier, &v10, ioPropertyDataSize))
    {
      return 0;
    }

    if (v10 != 12 || v12 != a2)
    {
      return 0;
    }

    v10 = 4;
    v5 = AudioFormatGetProperty(0x6964636Eu, 0xCu, &inSpecifier, &v10, outPropertyData) == 0;
    v6 = v10;
  }

  return v5 && v6 == 4;
}

void MP4BoxParser_SampleDescription::GetMagicCookieAndAudioChannelLayoutFromConfigBox(MP4BoxParser_SampleDescription *this, int a2, int a3, int a4, unsigned int a5, void *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  inSpecifier[0] = a3;
  inSpecifier[1] = 1836069990;
  v30 = a6;
  v31 = a5;
  outPropertyDataSize = 0;
  if (AudioFormatGetPropertyInfo(0x6D636563u, 0x18u, inSpecifier, &outPropertyDataSize))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315394;
      *&buf[1] = "MP4_BoxParser_SampleDescription.cpp";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = 452;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CanonicalMagicCookieFromEncapsulatedMagicCookie not supported for specifier", buf, 0x12u);
    }

LABEL_4:
    v10 = 0;
    goto LABEL_5;
  }

  v12 = outPropertyDataSize;
  v13 = malloc_type_malloc(outPropertyDataSize, 0x5952BD5FuLL);
  v10 = v13;
  if (v12 && !v13)
  {
    exception = __cxa_allocate_exception(8uLL);
    v23 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v13, v12);
  if (AudioFormatGetProperty(0x6D636563u, 0x18u, inSpecifier, &outPropertyDataSize, v10))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315394;
      *&buf[1] = "MP4_BoxParser_SampleDescription.cpp";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = 456;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Couldn't extract magic cookie", buf, 0x12u);
    }
  }

  else
  {
    v14 = outPropertyDataSize;
    *(this + 24) = outPropertyDataSize;
    *(this + 11) = v10;
    if (a2 == 1685220723)
    {
      *(this + 18) = a4;
    }

    if (v10)
    {
      v33 = 0;
      v36 = 0;
      memset(buf, 0, sizeof(buf));
      v34 = v10;
      v35 = v14;
      v27 = 0;
      buf[2] = a3;
      if (AudioFormatGetPropertyInfo(0x636C6669u, 0x38u, buf, &v27))
      {
        v26 = 0u;
        memset(outPropertyData, 0, sizeof(outPropertyData));
        ioPropertyDataSize = 48;
        if (!AudioFormatGetProperty(0x666C7374u, 0x38u, buf, &ioPropertyDataSize, outPropertyData))
        {
          v15 = *(this + 20);
          v16 = *(this + 21) - v15;
          if (v16 > 0x1F)
          {
            if (v16 != 32)
            {
              *(this + 21) = v15 + 8;
            }
          }

          else
          {
            std::vector<unsigned char>::__append((this + 160), 32 - v16);
            v15 = *(this + 20);
          }

          *v15 = DWORD2(v26);
        }
      }

      else
      {
        v17 = *(this + 20);
        v18 = *(this + 21) - v17;
        if (v27 <= v18)
        {
          if (v27 < v18)
          {
            *(this + 21) = &v17[v27];
          }
        }

        else
        {
          std::vector<unsigned char>::__append((this + 160), v27 - v18);
          v17 = *(this + 20);
        }

        if (AudioFormatGetProperty(0x636C6669u, 0x38u, buf, &v27, v17))
        {
          v19 = 0;
        }

        else
        {
          v19 = v27;
        }

        v20 = *(this + 20);
        v21 = *(this + 21) - v20;
        if (v19 <= v21)
        {
          if (v19 < v21)
          {
            *(this + 21) = v20 + v19;
          }
        }

        else
        {
          std::vector<unsigned char>::__append((this + 160), v19 - v21);
        }
      }

      goto LABEL_4;
    }
  }

LABEL_5:
  free(v10);
  v11 = *MEMORY[0x1E69E9840];
}

CFMutableArrayRef CACFArray::SetCFMutableArrayFromCopy(CACFArray *this, CFArrayRef theArray)
{
  if (*(this + 8) == 1)
  {
    v4 = *this;
    if (*this)
    {
      CFRelease(v4);
    }
  }

  result = CFArrayCreateMutableCopy(0, 0, theArray);
  *this = result;
  *(this + 4) = 257;
  return result;
}

void CACFArray::~CACFArray(CACFArray *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

void MP4BoxParser_SampleDescription::~MP4BoxParser_SampleDescription(MP4BoxParser_SampleDescription *this)
{
  MP4BoxParser_SampleDescription::~MP4BoxParser_SampleDescription(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325AD8;
  v2 = *(this + 11);
  if (v2)
  {
    free(v2);
  }

  std::unique_ptr<MP4AudioESDS>::reset[abi:ne200100](this + 23, 0);
  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  CACFDictionary::~CACFDictionary((this + 104));
  v5 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

uint64_t MP4BoxParser_SampleDescription::MP4BoxParser_SampleDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 8;
  *a1 = &unk_1F0325AD8;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 60) = 0;
  *(a1 + 76) = 0;
  *(a1 + 68) = 0;
  *(a1 + 104) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(a1 + 112) = 257;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return a1;
}

void sub_18F6A022C(_Unwind_Exception *exception_object)
{
  v4 = v1[1];
  *v1 = v2;
  v1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4BoxParser_SampleDescription::GetASBD(MP4BoxParser_SampleDescription *this, AudioStreamBasicDescription *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, unsigned int *a8)
{
  v41 = 40;
  HIDWORD(v10) = 0;
  *&a2->mSampleRate = 0u;
  *&a2->mBytesPerPacket = 0u;
  *&a2->mBitsPerChannel = 0;
  v11 = *(this + 16);
  if (v11 == 1701733217)
  {
    v11 = *(this + 19);
  }

  else if (v11 == 1685220723)
  {
    v12 = *(this + 18);
    if (v12 != 1684103987)
    {
      if (v12 != 1684366131)
      {
        if (v12 != 1702061171)
        {
          v11 = 1685220723;
          goto LABEL_36;
        }

        goto LABEL_30;
      }

LABEL_18:
      Property = ParseEAC3MP4Cookie(*(this + 11), *(this + 24), a2, 0, 0, 0, a7, a8, v37, inSpecifier, v39, v40);
      goto LABEL_50;
    }

LABEL_25:
    v18 = (*(*this + 24))(this);
    v16 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), (v18 + 4), 0x2FuLL, &inSpecifier);
    if (v16)
    {
      goto LABEL_51;
    }

    *&a2->mBitsPerChannel = 0;
    *&a2->mSampleRate = 0u;
    *&a2->mBytesPerPacket = 0u;
    Property = ParseAC3MP4Cookie(*(this + 11), *(this + 24), a2, 0, v19, v20);
    goto LABEL_50;
  }

  if (v11 > 1768973164)
  {
    if (v11 > 1836069984)
    {
      if (v11 == 1935767394)
      {
        a2->mFormatID = 1935767394;
        a2->mChannelsPerFrame = 1;
        v31 = 16000.0;
      }

      else
      {
        if (v11 != 1935764850)
        {
          v13 = 1836069985;
          goto LABEL_29;
        }

        a2->mFormatID = 1935764850;
        a2->mChannelsPerFrame = 1;
        v31 = 8000.0;
      }

      a2->mSampleRate = v31;
LABEL_48:
      v28 = *(this + 24);
      v27 = *(this + 11);
      p_inSpecifier = &v41;
      v30 = 1718449257;
LABEL_49:
      Property = AudioFormatGetProperty(v30, v28, v27, p_inSpecifier, a2);
      goto LABEL_50;
    }

    if (v11 == 1768973165)
    {
      goto LABEL_38;
    }

    v13 = 1832149349;
LABEL_29:
    if (v11 == v13)
    {
LABEL_30:
      v21 = *(this + 23);
      if (!v21)
      {
        goto LABEL_42;
      }

      Property = DecoderConfigDescr::MakeStreamDescription((v21 + 296), a2, 0.0);
      if (!Property)
      {
        mFormatID = a2->mFormatID;
        if (mFormatID == 1634497332 || mFormatID == 1936487278 || mFormatID == 1936487267)
        {
          mFormatFlags = a2->mFormatFlags;
LABEL_61:
          SourceBitDepthFromASBD = GetSourceBitDepthFromASBD(mFormatID, mFormatFlags);
          v16 = 0;
LABEL_62:
          *(this + 38) = SourceBitDepthFromASBD;
          goto LABEL_51;
        }

LABEL_42:
        v16 = 0;
        goto LABEL_51;
      }

LABEL_50:
      v16 = Property;
      goto LABEL_51;
    }

    goto LABEL_36;
  }

  if (v11 > 1700998450)
  {
    if (v11 == 1700998451)
    {
      goto LABEL_18;
    }

    if (v11 == 1716281667)
    {
      a2->mFormatID = 1718378851;
      v16 = AudioFormatGetProperty(0x666D7469u, *(this + 24), *(this + 11), &v41, a2);
      if (v16)
      {
        goto LABEL_51;
      }

      SourceBitDepthFromASBD = GetSourceBitDepthFromASBD(a2->mFormatID, a2->mFormatFlags);
      goto LABEL_62;
    }

    if (v11 != 1718641517)
    {
      goto LABEL_36;
    }

LABEL_38:
    LODWORD(inSpecifier) = 40;
    LODWORD(v10) = *(this + 31);
    v23 = *(this + 60);
    v24 = *(this + 61);
    a2->mSampleRate = v10;
    if (v11 == 1718641517)
    {
      v25 = 11;
    }

    else
    {
      v25 = 14;
    }

    a2->mFormatID = 1819304813;
    a2->mFormatFlags = v25;
    v26 = (v24 >> 3) * v23;
    a2->mBytesPerPacket = v26;
    a2->mFramesPerPacket = 1;
    a2->mBytesPerFrame = v26;
    a2->mChannelsPerFrame = v23;
    a2->mBitsPerChannel = v24;
    v27 = *(this + 16);
    v28 = *(this + 34) - v27;
    p_inSpecifier = &inSpecifier;
    v30 = 1885565796;
    goto LABEL_49;
  }

  if (v11 == 1633889587)
  {
    goto LABEL_25;
  }

  if (v11 != 1634492771)
  {
LABEL_36:
    inSpecifier = 0x46D703466;
    LODWORD(v39) = v11;
    HIDWORD(v37) = 4;
    v16 = AudioFormatGetProperty(0x6964636Eu, 0xCu, &inSpecifier, &v37 + 1, &a2->mFormatID);
    if (v16)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v15 = *(this + 11);
  v16 = 4294967246;
  if (v15 && *(this + 24) >= 0x18u)
  {
    a2->mFormatID = 1634492771;
    a2->mSampleRate = bswap32(*(v15 + 20));
    if ((((*(v15 + 5) - 16) >> 2) | ((*(v15 + 5) - 16) << 6)) > 4u)
    {
      mFormatFlags = 0;
    }

    else
    {
      mFormatFlags = dword_18F917B98[(((*(v15 + 5) - 16) >> 2) | ((*(v15 + 5) - 16) << 6))];
    }

    a2->mFormatFlags = mFormatFlags;
    a2->mChannelsPerFrame = *(v15 + 9);
    v36 = bswap32(*v15);
    a2->mBytesPerPacket = 0;
    *&a2->mFramesPerPacket = v36;
    *&a2->mBitsPerChannel = 0;
    mFormatID = 1634492771;
    goto LABEL_61;
  }

LABEL_51:
  v33 = *(this + 16);
  if (v33 == 1685220723)
  {
    v34 = 1885695587;
LABEL_57:
    a2->mFormatID = AudioFormatEncryptedFormatTranslator::EncryptFormatInFlavor(a2->mFormatID, v34);
    return v16;
  }

  if (v33 == 1701733217)
  {
    v34 = *(this + 20);
    if (v34 == 1667591779 || v34 == 1667392371)
    {
      goto LABEL_57;
    }
  }

  return v16;
}

const __CFDictionary *MP4BoxParser_SampleDescription::GetASEBoxes(MP4BoxParser_SampleDescription *this, const __CFDictionary **a2)
{
  if (CACFDictionary::Size((this + 104)) && (v4 = *(this + 13)) != 0)
  {
    result = CFDictionaryCreateCopy(0, v4);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t MP4BoxParser_SampleDescription::GetChannelLayout(MP4BoxParser_SampleDescription *this, AudioChannelLayout **a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, unsigned int *a8)
{
  v11 = *(this + 16);
  *a2 = 0;
  *a3 = 0;
  if (v11 == 1701733217)
  {
    v11 = *(this + 19);
  }

  else if (v11 == 1685220723)
  {
    v11 = *(this + 18);
    if (v11 != 1684103987)
    {
      if (v11 != 1684366131)
      {
        v12 = 1702061171;
LABEL_11:
        if (v11 == v12)
        {
          goto LABEL_12;
        }

LABEL_38:
        v21 = *(this + 21) - *(this + 20);
        *a3 = v21;
        if (!v21)
        {
          return 0;
        }

        v22 = v21;
        v23 = malloc_type_malloc(v21, 0xD03117C2uLL);
        if (v23)
        {
          v24 = v23;
          bzero(v23, v22);
          *a2 = v24;
          memcpy(v24, *(this + 20), *a3);
          return 0;
        }

        goto LABEL_43;
      }

      goto LABEL_24;
    }

    goto LABEL_30;
  }

  if (v11 <= 1700998450)
  {
    if (v11 != 1633889587)
    {
      if (v11 != 1634492771)
      {
        goto LABEL_38;
      }

      if (*(this + 24) != 48 || *(*(this + 11) + 28) != 1851877475)
      {
        return 0;
      }

      *a3 = 32;
      v16 = malloc_type_malloc(0x20uLL, 0x2FE20AECuLL);
      if (!v16)
      {
        goto LABEL_43;
      }

      v15 = 0;
      *v16 = 0u;
      *(v16 + 1) = 0u;
      *a2 = v16;
      mSampleRate_low = bswap32(*(*(this + 11) + 36));
      goto LABEL_37;
    }

LABEL_30:
    v18 = (*(*this + 24))(this);
    if (MP4BoxParser::ReadDataSourceBytes(*(this + 1), (v18 + 4), 0x2FuLL, &v30))
    {
      return 0;
    }

    v29 = 0;
    v15 = ParseAC3MP4Cookie(*(this + 11), *(this + 24), &v28, &v29, v19, v20);
    if (v15 || v29 == 6553601 || v29 == 6619138 || v29 + 0x10000 < 0x20000)
    {
      return v15;
    }

    *a3 = 32;
    v16 = malloc_type_malloc(0x20uLL, 0x35B487B4uLL);
    if (!v16)
    {
      goto LABEL_43;
    }

    *(v16 + 7) = 0;
    *(v16 + 20) = 0;
    *(v16 + 4) = 0u;
    *a2 = v16;
    mSampleRate_low = v29;
LABEL_37:
    *v16 = mSampleRate_low;
    return v15;
  }

  if (v11 != 1700998451)
  {
    if (v11 == 1836069985)
    {
LABEL_12:
      if (!*(this + 23))
      {
        return 0;
      }

      *a3 = 32;
      v13 = malloc_type_malloc(0x20uLL, 0xE71A773AuLL);
      if (v13)
      {
        *&v13->mChannelLayoutTag = 0u;
        *&v13->mChannelDescriptions[0].mChannelFlags = 0u;
        *a2 = v13;
        DecoderConfigDescr::GetChannelLayoutTag((*(this + 23) + 296), &v13->mChannelLayoutTag);
        mChannelLayoutTag = (*a2)->mChannelLayoutTag;
        if (mChannelLayoutTag == 6553601 || mChannelLayoutTag == 6619138 || !((mChannelLayoutTag + 0x10000) >> 17))
        {
          free(*a2);
          v15 = 0;
          *a2 = 0;
          *a3 = 0;
          return v15;
        }

        return 0;
      }

LABEL_43:
      exception = __cxa_allocate_exception(8uLL);
      v27 = std::bad_alloc::bad_alloc(exception);
    }

    v12 = 1832149349;
    goto LABEL_11;
  }

LABEL_24:
  LODWORD(v30.mSampleRate) = 0;
  v15 = ParseEAC3MP4Cookie(*(this + 11), *(this + 24), 0, &v30, 0, 0, a7, a8, *&v28.mSampleRate, v28.mFormatID, *&v28.mBytesPerPacket, *&v28.mBytesPerFrame);
  if (!v15 && LODWORD(v30.mSampleRate) != 6553601 && LODWORD(v30.mSampleRate) != 6619138 && (LODWORD(v30.mSampleRate) + 0x10000) >= 0x20000)
  {
    *a3 = 32;
    v16 = malloc_type_malloc(0x20uLL, 0xD46628D3uLL);
    if (!v16)
    {
      goto LABEL_43;
    }

    *(v16 + 7) = 0;
    *(v16 + 20) = 0;
    *(v16 + 4) = 0u;
    *a2 = v16;
    mSampleRate_low = LODWORD(v30.mSampleRate);
    goto LABEL_37;
  }

  return v15;
}

void AudioMetadataTimeline::AudioMetadataTimeline(AudioMetadataTimeline *this)
{
  v2 = this + 600;
  *(this + 600) = 0u;
  bzero(this, 0x250uLL);
  *(this + 74) = v2;
  *(this + 39) = 0u;
  *(this + 77) = this + 624;
  *(this + 648) = 0u;
  *(this + 80) = this + 648;
  AudioMetadataMemoryPool::create<AudioMetadataFormatExtended>();
}

void sub_18F6A10D8(_Unwind_Exception *a1)
{
  AudioMetadataMemoryPool::~AudioMetadataMemoryPool((v1 + 592));
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 528);
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 464);
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 400);
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 336);
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 272);
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 208);
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 144);
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 80);
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 16);
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void AudioMetadataMemoryPool::~AudioMetadataMemoryPool(AudioMetadataMemoryPool *this)
{
  std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(this + 7));
  std::__tree<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::__map_value_compare<void *,std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>>>::destroy(*(this + 4));
  std::__tree<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::__map_value_compare<void *,std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>>>::destroy(*(this + 1));
}

uint64_t std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v12 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v12 = v2;
  }

  *v4 = 0;
  v13 = v12 - v3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v13 = v2 - v3;
    }

    while (v13 > 2);
    v12 = v2;
  }

  if (v13 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = 256;
  }

  *(a1 + 32) = v14;
LABEL_19:
  if (v3 != v12)
  {
    do
    {
      v15 = *v3++;
      operator delete(v15);
    }

    while (v3 != v12);
    v12 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v12)
  {
    *(a1 + 16) = v2 + ((v12 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*a1);
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::__map_value_compare<void *,std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::__map_value_compare<void *,std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>>>::destroy(*a1);
    std::__tree<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::__map_value_compare<void *,std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      v3 = a1[6];
      v4 = a1[5];
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 8);
          if (v5)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          }

          v3 -= 16;
        }

        while (v3 != v2);
        v4 = a1[5];
      }

      a1[6] = v2;
      operator delete(v4);
    }

    operator delete(a1);
  }
}

void sub_18F6A1570(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    MEMORY[0x193ADF1F0](v1, 0x80C80B8603338);
  }

  __cxa_rethrow();
}

void *std::__tree<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::__map_value_compare<void *,std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void std::vector<std::shared_ptr<void *[]>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

uint64_t std::__shared_ptr_pointer<void * *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x193ADF1F0);
  }

  return result;
}

void std::__shared_ptr_pointer<void * *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void *std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void std::__shared_ptr_emplace<AudioMetadataFormatExtended>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032E9A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void AudioMetadataTimeline::addEvent()
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_18F6A9E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *****a31, uint64_t a32, uint64_t a33, uint64_t ****a34, uint64_t a35, uint64_t a36, uint64_t ***a37, uint64_t a38, uint64_t a39, uint64_t **a40, uint64_t a41, uint64_t a42, uint64_t *a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  *(v47 - 160) = v46;
  if (v46)
  {
    operator delete(v46);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  *(v47 - 168) = &a31;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100]((v47 - 168));
  a31 = &a34;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a31);
  a34 = &a37;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a34);
  a37 = &a40;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a37);
  a40 = &a43;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a40);
  a43 = &a46;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a43);
  a46 = v47 - 240;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a46);
  *(v47 - 240) = v47 - 216;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100]((v47 - 240));
  *(v47 - 216) = v47 - 192;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100]((v47 - 216));
  _Unwind_Resume(a1);
}

void sub_18F6AA030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  JUMPOUT(0x18F6AA568);
}

void sub_18F6AA040(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA074(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA0A8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA0DC(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA110(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA144(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA178(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA1AC(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA1E0(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA214(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA248(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA27C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA2B0(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA2E4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA318(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA34C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA380(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA3B4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  JUMPOUT(0x18F6AA560);
}

void sub_18F6AA4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *******a31, uint64_t a32, uint64_t a33, void ******a34, uint64_t a35, uint64_t a36, void *****a37, uint64_t a38, uint64_t a39, void ****a40, uint64_t a41, uint64_t a42, void ***a43, uint64_t a44, uint64_t a45, void **a46)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  *(v46 - 168) = &a31;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100]((v46 - 168));
  a31 = &a34;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a31);
  a34 = &a37;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a34);
  a37 = &a40;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a37);
  a40 = &a43;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a40);
  a43 = &a46;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a43);
  a46 = (v46 - 240);
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a46);
  *(v46 - 240) = v46 - 216;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100]((v46 - 240));
  *(v46 - 216) = v46 - 192;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100]((v46 - 216));
  _Unwind_Resume(a1);
}

void sub_18F6AA4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  JUMPOUT(0x18F6AA560);
}

void sub_18F6AA524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  JUMPOUT(0x18F6AA560);
}

void std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,false>(uint64_t **a1, uint64_t **a2, uint64_t a3, char a4)
{
LABEL_1:
  v228 = (a2 - 4);
  v229 = (a2 - 2);
  v227 = (a2 - 6);
  v7 = a1;
  v235 = a2;
  while (1)
  {
    a1 = v7;
    v8 = (a2 - v7) >> 4;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,0>(v7, v7 + 16, v229);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,0>(v7, (v7 + 16), (v7 + 32), v229);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,0>(v7, v7 + 16, v7 + 32, (v7 + 48), v229);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *(a2 - 1);
        if (v89)
        {
          atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v91 = *v7;
        v90 = *(v7 + 8);
        if (v90)
        {
          atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v92 = 0;
        if (v88 && v91)
        {
          v93 = *v88;
          v92 = v93 && (v94 = *v91) != 0 && *(v93 + 28) < *(v94 + 28);
        }

        if (v90)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v90);
        }

        if (v89)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v89);
        }

        if (v92)
        {
          v225 = *v7;
          *v7 = *(v235 - 16);
          *(v235 - 16) = v225;
          v226 = *(v7 + 8);
          *(v7 + 8) = *(v235 - 8);
          *(v235 - 8) = v226;
        }

        return;
      }
    }

    if (v8 <= 23)
    {
      v95 = (v7 + 16);
      v97 = v7 == a2 || v95 == a2;
      if (a4)
      {
        if (v97)
        {
          return;
        }

        v98 = 0;
        v99 = v7;
        while (1)
        {
          v100 = v99;
          v99 = v95;
          v101 = v100[2];
          v102 = v100[3];
          if (v102)
          {
            atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v104 = *v100;
          v103 = v100[1];
          if (v103)
          {
            atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v101 && v104 != 0)
          {
            v106 = *v101;
            if (v106)
            {
              v107 = *v104;
              if (v107)
              {
                break;
              }
            }
          }

          v108 = 0;
          if (v103)
          {
            goto LABEL_283;
          }

LABEL_284:
          if (v102)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v102);
          }

          if (!v108)
          {
            goto LABEL_311;
          }

          v109 = *v99;
          v110 = v100[3];
          v111 = v98;
          *v99 = 0;
          v99[1] = 0;
          do
          {
            v112 = a1 + v111;
            v113 = *(a1 + v111);
            *v112 = 0;
            *(v112 + 1) = 0;
            v114 = *(a1 + v111 + 24);
            *(v112 + 1) = v113;
            if (v114)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v114);
            }

            if (!v111)
            {
              v119 = a1;
              goto LABEL_309;
            }

            if (v110)
            {
              atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v116 = *(a1 + v111 - 16);
            v115 = *(a1 + v111 - 8);
            if (v115)
            {
              atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v117 = 0;
            if (!v109 || !v116)
            {
              goto LABEL_300;
            }

            if (*v109)
            {
              v118 = *v116;
              if (v118)
              {
                v117 = *(*v109 + 28) < *(v118 + 28);
LABEL_300:
                if (!v115)
                {
                  goto LABEL_302;
                }

LABEL_301:
                std::__shared_weak_count::__release_shared[abi:ne200100](v115);
                goto LABEL_302;
              }
            }

            v117 = 0;
            if (v115)
            {
              goto LABEL_301;
            }

LABEL_302:
            if (v110)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v110);
            }

            v111 -= 16;
          }

          while (v117);
          v119 = (a1 + v111 + 16);
LABEL_309:
          v120 = v119[1];
          *v119 = v109;
          v119[1] = v110;
          if (v120)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v120);
          }

LABEL_311:
          v95 = v99 + 2;
          v98 += 16;
          if (v99 + 2 == v235)
          {
            return;
          }
        }

        v108 = *(v106 + 28) < *(v107 + 28);
        if (!v103)
        {
          goto LABEL_284;
        }

LABEL_283:
        std::__shared_weak_count::__release_shared[abi:ne200100](v103);
        goto LABEL_284;
      }

      if (v97)
      {
        return;
      }

LABEL_475:
      v206 = a1;
      a1 = v95;
      v207 = v206[2];
      v208 = v206[3];
      if (v208)
      {
        atomic_fetch_add_explicit(&v208->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v210 = *v206;
      v209 = v206[1];
      if (v209)
      {
        atomic_fetch_add_explicit(&v209->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v207)
      {
        v211 = v210 == 0;
      }

      else
      {
        v211 = 1;
      }

      if (!v211 && (v212 = *v207) != 0 && (v213 = *v210) != 0)
      {
        v214 = *(v212 + 28) < *(v213 + 28);
        if (!v209)
        {
LABEL_489:
          if (v208)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v208);
          }

          if (!v214)
          {
            goto LABEL_514;
          }

          v215 = *a1;
          v216 = v206[3];
          v217 = a1;
          *a1 = 0;
          a1[1] = 0;
          while (1)
          {
            v218 = *(v217 - 1);
            *(v217 - 2) = 0;
            *(v217 - 1) = 0;
            v219 = v217[1];
            *v217 = v218;
            if (v219)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v219);
            }

            if (v216)
            {
              atomic_fetch_add_explicit(&v216->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v221 = *(v217 - 4);
            v220 = *(v217 - 3);
            if (v220)
            {
              atomic_fetch_add_explicit(&v220->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v222 = 0;
            if (v215 && v221)
            {
              if (!*v215 || (v223 = *v221) == 0)
              {
                v222 = 0;
                if (!v220)
                {
                  goto LABEL_506;
                }

LABEL_505:
                std::__shared_weak_count::__release_shared[abi:ne200100](v220);
                goto LABEL_506;
              }

              v222 = *(*v215 + 28) < *(v223 + 28);
            }

            if (v220)
            {
              goto LABEL_505;
            }

LABEL_506:
            if (v216)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v216);
            }

            v217 -= 2;
            if (!v222)
            {
              v224 = v217[1];
              *v217 = v215;
              v217[1] = v216;
              if (v224)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v224);
              }

LABEL_514:
              v95 = a1 + 2;
              if (a1 + 2 == v235)
              {
                return;
              }

              goto LABEL_475;
            }
          }
        }
      }

      else
      {
        v214 = 0;
        if (!v209)
        {
          goto LABEL_489;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v209);
      goto LABEL_489;
    }

    if (!a3)
    {
      break;
    }

    v9 = (v7 + 16 * (v8 >> 1));
    if (v8 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,0>(&a1[2 * (v8 >> 1)], a1, v229);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,0>(a1, &a1[2 * (v8 >> 1)], v229);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,0>((a1 + 2), (v9 - 1), v228);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,0>((a1 + 4), &a1[2 * (v8 >> 1) + 2], v227);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,0>((v9 - 1), &a1[2 * (v8 >> 1)], &a1[2 * (v8 >> 1) + 2]);
      v10 = *a1;
      *a1 = *v9;
      *v9 = v10;
    }

    --a3;
    if (a4)
    {
      v11 = *a1;
LABEL_31:
      v19 = a1[1];
      v20 = a1;
      *a1 = 0;
      a1[1] = 0;
      do
      {
        v21 = v20[2];
        v22 = v20[3];
        v20 += 2;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v21)
        {
          v23 = v11 == 0;
        }

        else
        {
          v23 = 1;
        }

        if (v23 || (v24 = *v21) == 0 || !*v11)
        {
          v25 = 0;
          if (!v19)
          {
            goto LABEL_46;
          }

LABEL_45:
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          goto LABEL_46;
        }

        v25 = *(v24 + 28) < *(*v11 + 28);
        if (v19)
        {
          goto LABEL_45;
        }

LABEL_46:
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }

      while (v25);
      v233 = a3;
      v26 = a2;
      if (v20 - 2 != a1)
      {
        while (1)
        {
          v27 = *(v26 - 2);
          v28 = *(v26 - 1);
          v26 -= 2;
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v27 && v11 != 0)
          {
            v30 = *v27;
            if (v30)
            {
              if (*v11)
              {
                break;
              }
            }
          }

          v31 = 0;
          if (v19)
          {
            goto LABEL_63;
          }

LABEL_64:
          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          if (v31)
          {
            goto LABEL_67;
          }
        }

        v31 = *(v30 + 28) < *(*v11 + 28);
        if (!v19)
        {
          goto LABEL_64;
        }

LABEL_63:
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        goto LABEL_64;
      }

      v26 = a2;
      while (2)
      {
        if (v20 < v26)
        {
          v51 = *(v26 - 2);
          v52 = *(v26 - 1);
          v26 -= 2;
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v53 = 0;
          if (v51 && v11)
          {
            v54 = *v51;
            if (v54 && *v11)
            {
              v53 = *(v54 + 28) < *(*v11 + 28);
              goto LABEL_126;
            }

            v53 = 0;
            if (!v19)
            {
LABEL_128:
              if (v52)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v52);
              }

              if (v53)
              {
                break;
              }

              continue;
            }
          }

          else
          {
LABEL_126:
            if (!v19)
            {
              goto LABEL_128;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          goto LABEL_128;
        }

        break;
      }

LABEL_67:
      v7 = v20;
      if (v20 < v26)
      {
        v32 = v26;
        do
        {
          v33 = *v7;
          *v7 = *v32;
          *v32 = v33;
          v34 = *(v7 + 8);
          *(v7 + 8) = v32[1];
          v32[1] = v34;
          do
          {
            v35 = *(v7 + 16);
            v36 = *(v7 + 24);
            v7 += 16;
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v35)
            {
              v37 = v11 == 0;
            }

            else
            {
              v37 = 1;
            }

            if (v37 || (v38 = *v35) == 0 || !*v11)
            {
              v39 = 0;
              if (!v19)
              {
                goto LABEL_84;
              }

LABEL_83:
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              goto LABEL_84;
            }

            v39 = *(v38 + 28) < *(*v11 + 28);
            if (v19)
            {
              goto LABEL_83;
            }

LABEL_84:
            if (v36)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v36);
            }
          }

          while (v39);
          do
          {
            v40 = *(v32 - 2);
            v41 = *(v32 - 1);
            v32 -= 2;
            if (v41)
            {
              atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v40)
            {
              v42 = v11 == 0;
            }

            else
            {
              v42 = 1;
            }

            if (v42 || (v43 = *v40) == 0 || !*v11)
            {
              v44 = 0;
              if (!v19)
              {
                goto LABEL_101;
              }

LABEL_100:
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              goto LABEL_101;
            }

            v44 = *(v43 + 28) < *(*v11 + 28);
            if (v19)
            {
              goto LABEL_100;
            }

LABEL_101:
            if (v41)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v41);
            }
          }

          while (!v44);
        }

        while (v7 < v32);
      }

      v45 = (v7 - 16);
      if ((v7 - 16) != a1)
      {
        v46 = *v45;
        *v45 = 0;
        *(v7 - 8) = 0;
        v47 = a1[1];
        *a1 = v46;
        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }
      }

      v48 = *(v7 - 8);
      *(v7 - 16) = v11;
      *(v7 - 8) = v19;
      a2 = v235;
      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }

      v49 = v20 >= v26;
      a3 = v233;
      if (v49)
      {
        v50 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*>(a1, v7 - 16);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*>(v7, v235))
        {
          a2 = (v7 - 16);
          if (v50)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v50)
        {
          goto LABEL_114;
        }
      }

      else
      {
LABEL_114:
        std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,false>(a1, v7 - 16, v233, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v12 = *(a1 - 2);
      v13 = *(a1 - 1);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *a1;
      v14 = a1[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = 0;
      if (v12 && v15)
      {
        v17 = *v12;
        v16 = v17 && (v18 = *v15) != 0 && *(v17 + 28) < *(v18 + 28);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v11 = *a1;
      if (v16)
      {
        goto LABEL_31;
      }

      v55 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v57 = *(a2 - 2);
      v56 = *(a2 - 1);
      if (v56)
      {
        atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v58 = 0;
      if (v11 && v57)
      {
        v58 = *v11 && (v59 = *v57) != 0 && *(*v11 + 28) < *(v59 + 28);
      }

      if (v56)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v56);
      }

      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v55);
      }

      if (v58)
      {
        v7 = a1;
        do
        {
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v61 = *(v7 + 16);
          v60 = *(v7 + 24);
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v62 = 0;
          if (v11 && v61)
          {
            v62 = *v11 && (v63 = *v61) != 0 && *(*v11 + 28) < *(v63 + 28);
          }

          if (v60)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v60);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v7 += 16;
        }

        while (!v62);
      }

      else
      {
        v64 = a1 + 2;
        do
        {
          v7 = v64;
          if (v64 >= a2)
          {
            break;
          }

          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v66 = *v64;
          v65 = *(v7 + 8);
          if (v65)
          {
            atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v67 = 0;
          if (v11 && v66)
          {
            v67 = *v11 && (v68 = *v66) != 0 && *(*v11 + 28) < *(v68 + 28);
          }

          if (v65)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v64 = (v7 + 16);
        }

        while (!v67);
      }

      v69 = a2;
      if (v7 < a2)
      {
        v69 = a2;
        do
        {
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v71 = *(v69 - 2);
          v70 = *(v69 - 1);
          if (v70)
          {
            atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v72 = 0;
          if (v11 && v71)
          {
            v72 = *v11 && (v73 = *v71) != 0 && *(*v11 + 28) < *(v73 + 28);
          }

          if (v70)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v70);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v69 -= 2;
        }

        while (v72);
      }

LABEL_235:
      if (v7 < v69)
      {
        v74 = *v7;
        *v7 = *v69;
        *v69 = v74;
        v75 = *(v7 + 8);
        *(v7 + 8) = v69[1];
        v69[1] = v75;
        while (1)
        {
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v77 = *(v7 + 16);
          v76 = *(v7 + 24);
          if (v76)
          {
            atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v78 = 0;
          if (v11 && v77)
          {
            if (!*v11 || (v79 = *v77) == 0)
            {
              v78 = 0;
              if (!v76)
              {
                goto LABEL_213;
              }

LABEL_212:
              std::__shared_weak_count::__release_shared[abi:ne200100](v76);
              goto LABEL_213;
            }

            v78 = *(*v11 + 28) < *(v79 + 28);
          }

          if (v76)
          {
            goto LABEL_212;
          }

LABEL_213:
          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v7 += 16;
          if (v78)
          {
            while (1)
            {
              if (v55)
              {
                atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v82 = *(v69 - 2);
              v81 = *(v69 - 1);
              if (v81)
              {
                atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v80 = 0;
              if (v11 && v82)
              {
                if (!*v11 || (v83 = *v82) == 0)
                {
                  v80 = 0;
                  if (!v81)
                  {
                    goto LABEL_232;
                  }

LABEL_231:
                  std::__shared_weak_count::__release_shared[abi:ne200100](v81);
                  goto LABEL_232;
                }

                v80 = *(*v11 + 28) < *(v83 + 28);
              }

              if (v81)
              {
                goto LABEL_231;
              }

LABEL_232:
              if (v55)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v55);
              }

              v69 -= 2;
              if (!v80)
              {
                goto LABEL_235;
              }
            }
          }
        }
      }

      v84 = (v7 - 16);
      if ((v7 - 16) != a1)
      {
        v85 = *v84;
        *v84 = 0;
        *(v7 - 8) = 0;
        v86 = a1[1];
        *a1 = v85;
        if (v86)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v86);
        }
      }

      a4 = 0;
      v87 = *(v7 - 8);
      *(v7 - 16) = v11;
      *(v7 - 8) = v55;
      if (v87)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v87);
        a4 = 0;
      }
    }
  }

  if (v7 == a2)
  {
    return;
  }

  v121 = (v8 - 2) >> 1;
  v122 = v121;
  do
  {
    v123 = v122;
    if (v121 < v122)
    {
      goto LABEL_397;
    }

    v124 = (2 * v122) | 1;
    v125 = &a1[2 * v124];
    if (2 * v122 + 2 < v8)
    {
      v126 = *v125;
      v127 = v125[1];
      if (v127)
      {
        atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v129 = v125[2];
      v128 = v125[3];
      if (v128)
      {
        atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v126)
      {
        v130 = v129 == 0;
      }

      else
      {
        v130 = 1;
      }

      if (!v130 && (v131 = *v126) != 0 && (v132 = *v129) != 0)
      {
        v133 = *(v131 + 28) < *(v132 + 28);
        if (!v128)
        {
          goto LABEL_331;
        }
      }

      else
      {
        v133 = 0;
        if (!v128)
        {
LABEL_331:
          if (v127)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v127);
          }

          if (v133)
          {
            v125 += 2;
            v124 = 2 * v123 + 2;
          }

          goto LABEL_335;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v128);
      goto LABEL_331;
    }

LABEL_335:
    v134 = *v125;
    v135 = v125[1];
    if (v135)
    {
      atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v136 = &a1[2 * v123];
    v138 = *v136;
    v137 = v136[1];
    if (v137)
    {
      atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v134)
    {
      v139 = v138 == 0;
    }

    else
    {
      v139 = 1;
    }

    if (v139 || (v140 = *v134) == 0 || (v141 = *v138) == 0)
    {
      v142 = 0;
      if (!v137)
      {
        goto LABEL_349;
      }

LABEL_348:
      std::__shared_weak_count::__release_shared[abi:ne200100](v137);
      goto LABEL_349;
    }

    v142 = *(v140 + 28) < *(v141 + 28);
    if (v137)
    {
      goto LABEL_348;
    }

LABEL_349:
    if (v135)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v135);
    }

    a2 = v235;
    if (!v142)
    {
      v231 = v123;
      v144 = *v136;
      v143 = v136[1];
      *v136 = 0;
      v136[1] = 0;
      while (1)
      {
        v145 = v125;
        v146 = *v125;
        *v125 = 0;
        v125[1] = 0;
        v147 = v136[1];
        *v136 = v146;
        if (v147)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v147);
        }

        if (v121 < v124)
        {
LABEL_395:
          v162 = v145[1];
          *v145 = v144;
          v145[1] = v143;
          a2 = v235;
          v123 = v231;
          if (v162)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v162);
          }

          goto LABEL_397;
        }

        v148 = (2 * v124) | 1;
        v125 = &a1[2 * v148];
        v124 = 2 * v124 + 2;
        if (v124 >= v8)
        {
          v124 = v148;
          goto LABEL_378;
        }

        v149 = *v125;
        v150 = v125[1];
        if (v150)
        {
          atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v152 = v125[2];
        v151 = v125[3];
        if (v151)
        {
          atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v149 && v152 != 0)
        {
          v154 = *v149;
          if (v154)
          {
            v155 = *v152;
            if (v155)
            {
              break;
            }
          }
        }

        v156 = 0;
        if (v151)
        {
          goto LABEL_371;
        }

LABEL_372:
        if (v150)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v150);
        }

        if (v156)
        {
          v125 += 2;
        }

        else
        {
          v124 = v148;
        }

        v121 = (v8 - 2) >> 1;
LABEL_378:
        v157 = *v125;
        v158 = v125[1];
        if (v158)
        {
          atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v143)
        {
          atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v157)
        {
          v159 = v144 == 0;
        }

        else
        {
          v159 = 1;
        }

        if (!v159)
        {
          v160 = *v157;
          if (v160)
          {
            if (*v144)
            {
              v161 = *(v160 + 28) < *(*v144 + 28);
              if (!v143)
              {
                goto LABEL_392;
              }

LABEL_391:
              std::__shared_weak_count::__release_shared[abi:ne200100](v143);
              goto LABEL_392;
            }
          }
        }

        v161 = 0;
        if (v143)
        {
          goto LABEL_391;
        }

LABEL_392:
        if (v158)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v158);
        }

        v136 = v145;
        if (v161)
        {
          goto LABEL_395;
        }
      }

      v156 = *(v154 + 28) < *(v155 + 28);
      if (!v151)
      {
        goto LABEL_372;
      }

LABEL_371:
      std::__shared_weak_count::__release_shared[abi:ne200100](v151);
      goto LABEL_372;
    }

LABEL_397:
    v122 = v123 - 1;
  }

  while (v123);
  do
  {
    if (v8 < 2)
    {
      goto LABEL_472;
    }

    v236 = a2;
    v163 = 0;
    v232 = *a1;
    v234 = a1[1];
    v164 = a1;
    *a1 = 0;
    a1[1] = 0;
    do
    {
      v165 = &v164[2 * v163];
      v166 = v165 + 2;
      v167 = (2 * v163) | 1;
      v168 = 2 * v163 + 2;
      if (v168 >= v8)
      {
        v163 = (2 * v163) | 1;
        goto LABEL_421;
      }

      v169 = v165[2];
      v170 = v165[3];
      if (v170)
      {
        atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v172 = v165[4];
      v171 = v165[5];
      if (v171)
      {
        atomic_fetch_add_explicit(&v171->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v169)
      {
        v173 = v172 == 0;
      }

      else
      {
        v173 = 1;
      }

      if (!v173)
      {
        v174 = *v169;
        if (v174)
        {
          v175 = *v172;
          if (v175)
          {
            v176 = *(v174 + 28) < *(v175 + 28);
            if (!v171)
            {
              goto LABEL_416;
            }

LABEL_415:
            std::__shared_weak_count::__release_shared[abi:ne200100](v171);
            goto LABEL_416;
          }
        }
      }

      v176 = 0;
      if (v171)
      {
        goto LABEL_415;
      }

LABEL_416:
      if (v170)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v170);
      }

      if (v176)
      {
        v166 = v165 + 4;
        v163 = v168;
      }

      else
      {
        v163 = v167;
      }

LABEL_421:
      v177 = *v166;
      *v166 = 0;
      v166[1] = 0;
      v178 = v164[1];
      *v164 = v177;
      if (v178)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v178);
      }

      v164 = v166;
    }

    while (v163 <= ((v8 - 2) >> 1));
    a2 = v236;
    if (v166 == v236 - 2)
    {
      v195 = v166[1];
      *v166 = v232;
      v166[1] = v234;
      if (v195)
      {
        goto LABEL_471;
      }

      goto LABEL_472;
    }

    v179 = *(v236 - 1);
    *(v236 - 2) = 0;
    *(v236 - 1) = 0;
    v180 = v166[1];
    *v166 = v179;
    if (v180)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v180);
    }

    v181 = *(v236 - 1);
    *(v236 - 2) = v232;
    *(v236 - 1) = v234;
    if (v181)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v181);
    }

    v182 = ((v166 + 2) - a1) >> 4;
    v183 = v182 < 2;
    v184 = v182 - 2;
    if (v183)
    {
      goto LABEL_472;
    }

    v185 = v184 >> 1;
    v186 = &a1[2 * (v184 >> 1)];
    v187 = *v186;
    v188 = v186[1];
    if (v188)
    {
      atomic_fetch_add_explicit(&v188->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v190 = *v166;
    v189 = v166[1];
    if (v189)
    {
      atomic_fetch_add_explicit(&v189->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v187)
    {
      v191 = v190 == 0;
    }

    else
    {
      v191 = 1;
    }

    if (v191 || (v192 = *v187) == 0 || (v193 = *v190) == 0)
    {
      v194 = 0;
      if (!v189)
      {
        goto LABEL_446;
      }

LABEL_445:
      std::__shared_weak_count::__release_shared[abi:ne200100](v189);
      goto LABEL_446;
    }

    v194 = *(v192 + 28) < *(v193 + 28);
    if (v189)
    {
      goto LABEL_445;
    }

LABEL_446:
    if (v188)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v188);
    }

    a2 = v236;
    if (!v194)
    {
      goto LABEL_472;
    }

    v196 = *v166;
    v197 = v166[1];
    *v166 = 0;
    v166[1] = 0;
    while (2)
    {
      v198 = v186;
      v199 = *v186;
      *v186 = 0;
      v186[1] = 0;
      v200 = v166[1];
      *v166 = v199;
      if (v200)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v200);
      }

      if (v185)
      {
        v185 = (v185 - 1) >> 1;
        v186 = &a1[2 * v185];
        v201 = *v186;
        v202 = v186[1];
        if (v202)
        {
          atomic_fetch_add_explicit(&v202->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v197)
        {
          atomic_fetch_add_explicit(&v197->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v201)
        {
          v203 = v196 == 0;
        }

        else
        {
          v203 = 1;
        }

        if (!v203 && (v204 = *v201) != 0 && *v196)
        {
          v205 = *(v204 + 28) < *(*v196 + 28);
          if (!v197)
          {
LABEL_467:
            if (v202)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v202);
            }

            v166 = v198;
            if (!v205)
            {
              break;
            }

            continue;
          }
        }

        else
        {
          v205 = 0;
          if (!v197)
          {
            goto LABEL_467;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v197);
        goto LABEL_467;
      }

      break;
    }

    v195 = v198[1];
    *v198 = v196;
    v198[1] = v197;
    a2 = v236;
    if (v195)
    {
LABEL_471:
      std::__shared_weak_count::__release_shared[abi:ne200100](v195);
    }

LABEL_472:
    a2 -= 2;
    v183 = v8-- > 2;
  }

  while (v183);
}

void *AudioMetadataMemoryPool::lookup<AudioMetadataObject>(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = a3;
  v8 = &v7;
  if (!std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 48, a3)[5])
  {
    __assert_rtn("lookup", "AudioMetadataTimeline.hpp", 109, "mObjects[rawPtr] != nullptr");
  }

  v8 = &v7;
  result = std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 48, v7);
  v6 = result[6];
  *a1 = result[5];
  a1[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

void std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>*,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = a2 - 2;
  v184 = (a2 - 1);
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = (a2 - v8) >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v108 = (v8 + 16);
          v109 = (v8 + 24);
          v110 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(v8 + 16), *(v8 + 24), v8);
          v111 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v7, *v184, v8 + 16);
          if (v110)
          {
            v112 = (v8 + 8);
            v113 = *v8;
            if (v111)
            {
              *v8 = *v7;
              *v7 = v113;
            }

            else
            {
              v177 = *(v8 + 8);
              *v8 = *(v8 + 16);
              *(v8 + 16) = v113;
              *(v8 + 24) = v177;
              if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v7, *v184, v8 + 16))
              {
                return;
              }

              v178 = *v108;
              *v108 = *v7;
              *v7 = v178;
              v112 = (v8 + 24);
            }

            v109 = v184;
          }

          else
          {
            if (!v111)
            {
              return;
            }

            v165 = *(v8 + 16);
            *(v8 + 16) = *v7;
            *v7 = v165;
            v166 = *(v8 + 24);
            *(v8 + 24) = *v184;
            *v184 = v166;
            if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(v8 + 16), *(v8 + 24), v8))
            {
              return;
            }

            v167 = *v8;
            *v8 = *(v8 + 16);
            *(v8 + 16) = v167;
            v112 = (v8 + 8);
          }

          v179 = *v112;
          *v112 = *v109;
          *v109 = v179;
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>*,0>(v8, (v8 + 16), (v8 + 32), v7);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>*,0>(v8, (v8 + 16), (v8 + 32), v8 + 48, v7);
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v7, *v184, v8))
        {
          v106 = *v8;
          *v8 = *v7;
          *v7 = v106;
          v107 = *(v8 + 8);
          *(v8 + 8) = *v184;
          *v184 = v107;
        }

        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return;
      }

      v128 = v10 >> 1;
      v129 = v10 >> 1;
      do
      {
        v130 = v129;
        if (v128 >= v129)
        {
          v131 = (2 * v129) | 1;
          v132 = &a1[2 * v131];
          if (2 * v129 + 2 < v9 && sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v132, v132[1], (v132 + 2)))
          {
            v132 += 2;
            v131 = 2 * v130 + 2;
          }

          v133 = &a1[2 * v130];
          if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v132, v132[1], v133))
          {
            v188 = *v133;
            *v133 = 0;
            *(v133 + 8) = 0;
            do
            {
              v134 = v132;
              v135 = *v132;
              *v132 = 0;
              v132[1] = 0;
              v136 = *(v133 + 8);
              *v133 = v135;
              if (v136)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v136);
              }

              if (v128 < v131)
              {
                break;
              }

              v137 = (2 * v131) | 1;
              v132 = &a1[2 * v137];
              v138 = 2 * v131 + 2;
              if (v138 < v9 && sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v132, v132[1], (v132 + 2)))
              {
                v132 += 2;
                v137 = v138;
              }

              v133 = v134;
              v131 = v137;
            }

            while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v132, v132[1], &v188));
            v139 = v188;
            v188 = 0uLL;
            v140 = v134[1];
            *v134 = v139;
            if (v140)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v140);
            }

            if (*(&v188 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v188 + 1));
            }
          }
        }

        v129 = v130 - 1;
      }

      while (v130);
      while (2)
      {
        if (v9 >= 2)
        {
          v141 = 0;
          v142 = *a1;
          v186 = a1[1];
          v143 = a1;
          *a1 = 0;
          a1[1] = 0;
          do
          {
            v144 = &v143[2 * v141];
            v145 = (v144 + 2);
            v146 = (2 * v141) | 1;
            v147 = 2 * v141 + 2;
            if (v147 >= v9)
            {
              v141 = (2 * v141) | 1;
            }

            else
            {
              v148 = (v144 + 4);
              if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v144[2], v144[3], (v144 + 4)))
              {
                v145 = v148;
                v141 = v147;
              }

              else
              {
                v141 = v146;
              }
            }

            v149 = *v145;
            *v145 = 0;
            *(v145 + 8) = 0;
            v150 = v143[1];
            *v143 = v149;
            if (v150)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v150);
            }

            v143 = v145;
          }

          while (v141 <= ((v9 - 2) >> 1));
          if (v145 == a2 - 2)
          {
            v164 = *(v145 + 8);
            *v145 = v142;
            *(v145 + 8) = v186;
            if (!v164)
            {
              goto LABEL_190;
            }
          }

          else
          {
            v151 = *(a2 - 1);
            *(a2 - 2) = 0;
            *(a2 - 1) = 0;
            v152 = *(v145 + 8);
            *v145 = v151;
            if (v152)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v152);
            }

            v153 = *(a2 - 1);
            *(a2 - 2) = v142;
            *(a2 - 1) = v186;
            if (v153)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v153);
            }

            v154 = (v145 + 16 - a1) >> 4;
            v155 = v154 < 2;
            v156 = v154 - 2;
            if (v155)
            {
              goto LABEL_190;
            }

            v157 = v156 >> 1;
            v158 = &a1[2 * (v156 >> 1)];
            if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v158, v158[1], v145))
            {
              goto LABEL_190;
            }

            v188 = *v145;
            *v145 = 0;
            *(v145 + 8) = 0;
            do
            {
              v159 = v158;
              v160 = *v158;
              *v158 = 0;
              v158[1] = 0;
              v161 = *(v145 + 8);
              *v145 = v160;
              if (v161)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v161);
              }

              if (!v157)
              {
                break;
              }

              v157 = (v157 - 1) >> 1;
              v158 = &a1[2 * v157];
              v145 = v159;
            }

            while (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v158, v158[1], &v188));
            v162 = v188;
            v188 = 0uLL;
            v163 = v159[1];
            *v159 = v162;
            if (!v163)
            {
              goto LABEL_190;
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v163);
            v164 = *(&v188 + 1);
            if (!*(&v188 + 1))
            {
              goto LABEL_190;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v164);
        }

LABEL_190:
        a2 -= 2;
        v155 = v9-- > 2;
        if (!v155)
        {
          return;
        }

        continue;
      }
    }

    v182 = a3;
    v11 = v9 >> 1;
    v12 = (v8 + 16 * (v9 >> 1));
    if (v9 >= 0x81)
    {
      v13 = v12 + 1;
      v14 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v12, v12[1], a1);
      v15 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v7, *v184, v12);
      if (v14)
      {
        v16 = a1 + 1;
        v17 = *a1;
        if (v15)
        {
          *a1 = *v7;
          *v7 = v17;
          goto LABEL_26;
        }

        v29 = a1[1];
        *a1 = *v12;
        *v12 = v17;
        v12[1] = v29;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v7, *v184, v12))
        {
          v30 = *v12;
          *v12 = *v7;
          *v7 = v30;
          v16 = v12 + 1;
LABEL_26:
          v25 = a2 - 1;
LABEL_27:
          v31 = *v16;
          *v16 = *v25;
          *v25 = v31;
        }
      }

      else if (v15)
      {
        v22 = *v12;
        *v12 = *v7;
        *v7 = v22;
        v23 = v12[1];
        v12[1] = *v184;
        *v184 = v23;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v12, v12[1], a1))
        {
          v24 = *a1;
          *a1 = *v12;
          v16 = a1 + 1;
          *v12 = v24;
          v25 = v12 + 1;
          goto LABEL_27;
        }
      }

      v32 = v12 - 2;
      v33 = v12 - 1;
      v34 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(v12 - 2), *(v12 - 1), (a1 + 2));
      v35 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(a2 - 4), *(a2 - 3), (v12 - 2));
      if (v34)
      {
        v36 = a1[2];
        v37 = a1 + 3;
        if (v35)
        {
          a1[2] = *(a2 - 4);
          *(a2 - 4) = v36;
          goto LABEL_39;
        }

        v44 = *v37;
        *(a1 + 1) = *v32;
        *v32 = v36;
        *(v12 - 1) = v44;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(a2 - 4), *(a2 - 3), (v12 - 2)))
        {
          v45 = *v32;
          *v32 = *(a2 - 4);
          *(a2 - 4) = v45;
          v37 = v12 - 1;
LABEL_39:
          v41 = a2 - 3;
LABEL_40:
          v46 = *v37;
          *v37 = *v41;
          *v41 = v46;
        }
      }

      else if (v35)
      {
        v38 = *v32;
        *v32 = *(a2 - 4);
        *(a2 - 4) = v38;
        v39 = *(v12 - 1);
        *(v12 - 1) = *(a2 - 3);
        *(a2 - 3) = v39;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v32, *(v12 - 1), (a1 + 2)))
        {
          v40 = a1[2];
          a1[2] = *v32;
          *v32 = v40;
          v37 = a1 + 3;
          v41 = v12 - 1;
          goto LABEL_40;
        }
      }

      v180 = v11;
      v47 = v11 + 1;
      v48 = &a1[2 * v11 + 2];
      v49 = v48 + 1;
      v50 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v48, v48[1], (a1 + 4));
      v51 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(a2 - 6), *(a2 - 5), v48);
      if (v50)
      {
        v52 = a1[4];
        v53 = a1 + 5;
        if (v51)
        {
          a1[4] = *(a2 - 6);
          *(a2 - 6) = v52;
          goto LABEL_49;
        }

        v57 = *v53;
        *(a1 + 2) = *v48;
        *v48 = v52;
        v48[1] = v57;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(a2 - 6), *(a2 - 5), v48))
        {
          v58 = *v48;
          *v48 = *(a2 - 6);
          *(a2 - 6) = v58;
          v53 = v48 + 1;
LABEL_49:
          v49 = a2 - 5;
LABEL_50:
          v59 = *v53;
          *v53 = *v49;
          *v49 = v59;
        }
      }

      else if (v51)
      {
        v54 = *v48;
        *v48 = *(a2 - 6);
        *(a2 - 6) = v54;
        v55 = v48[1];
        v48[1] = *(a2 - 5);
        *(a2 - 5) = v55;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v48, v48[1], (a1 + 4)))
        {
          v56 = a1[4];
          a1[4] = *v48;
          *v48 = v56;
          v53 = a1 + 5;
          goto LABEL_50;
        }
      }

      v60 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v12, v12[1], (v12 - 2));
      v61 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v48, v48[1], v12);
      if (v60)
      {
        v62 = *v32;
        if (v61)
        {
          *v32 = *v48;
          *v48 = v62;
          v7 = a2 - 2;
          goto LABEL_59;
        }

        v66 = *(v12 - 1);
        *v32 = *v12;
        *v12 = v62;
        v12[1] = v66;
        v7 = a2 - 2;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v48, v48[1], v12))
        {
          v67 = *v12;
          *v12 = *v48;
          *v48 = v67;
          v33 = v12 + 1;
LABEL_59:
          v68 = &a1[2 * v47];
          v69 = *v33;
          *v33 = v68[1];
          v68[1] = v69;
        }
      }

      else
      {
        v7 = a2 - 2;
        if (v61)
        {
          v63 = *v48;
          v64 = *v12;
          *v12 = *v48;
          *v48 = v64;
          if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v63, *(&v63 + 1), (v12 - 2)))
          {
            v65 = *v32;
            *v32 = *v12;
            *v12 = v65;
            v47 = v180;
            goto LABEL_59;
          }
        }
      }

      v70 = *a1;
      *a1 = *v12;
      v20 = a1 + 1;
      *v12 = v70;
      goto LABEL_61;
    }

    v13 = a1 + 1;
    v18 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*a1, a1[1], &a1[2 * (v9 >> 1)]);
    v19 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v7, *v184, a1);
    if (v18)
    {
      v20 = v12 + 1;
      v21 = *v12;
      if (v19)
      {
        *v12 = *v7;
        *v7 = v21;
      }

      else
      {
        v42 = v12[1];
        *v12 = *a1;
        *a1 = v21;
        a1[1] = v42;
        if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v7, *v184, a1))
        {
          goto LABEL_62;
        }

        v43 = *a1;
        *a1 = *v7;
        *v7 = v43;
        v20 = a1 + 1;
      }

      v13 = a2 - 1;
    }

    else
    {
      if (!v19)
      {
        goto LABEL_62;
      }

      v26 = *a1;
      *a1 = *v7;
      *v7 = v26;
      v27 = a1[1];
      a1[1] = *v184;
      *v184 = v27;
      if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*a1, a1[1], v12))
      {
        goto LABEL_62;
      }

      v28 = *v12;
      *v12 = *a1;
      *a1 = v28;
      v20 = v12 + 1;
    }

LABEL_61:
    v71 = *v20;
    *v20 = *v13;
    *v13 = v71;
LABEL_62:
    a3 = v182 - 1;
    if ((a4 & 1) != 0 || sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(a1 - 2), *(a1 - 1), a1))
    {
      v188 = *a1;
      *a1 = 0;
      a1[1] = 0;
      v72 = a1;
      do
      {
        v73 = v72;
        v74 = v72[2];
        v72 += 2;
      }

      while (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v74, v73[3], &v188));
      v75 = a2;
      if (v73 == a1)
      {
        v75 = a2;
        do
        {
          if (v72 >= v75)
          {
            break;
          }

          v78 = *(v75 - 2);
          v79 = *(v75 - 1);
          v75 -= 2;
        }

        while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v78, v79, &v188));
      }

      else
      {
        do
        {
          v76 = *(v75 - 2);
          v77 = *(v75 - 1);
          v75 -= 2;
        }

        while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v76, v77, &v188));
      }

      v8 = v72;
      if (v72 < v75)
      {
        v80 = v75;
        do
        {
          v81 = *v8;
          *v8 = *v80;
          *v80 = v81;
          v82 = *(v8 + 8);
          *(v8 + 8) = v80[1];
          v80[1] = v82;
          do
          {
            v83 = *(v8 + 16);
            v84 = *(v8 + 24);
            v8 += 16;
          }

          while (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v83, v84, &v188));
          do
          {
            v85 = *(v80 - 2);
            v86 = *(v80 - 1);
            v80 -= 2;
          }

          while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v85, v86, &v188));
        }

        while (v8 < v80);
      }

      v87 = (v8 - 16);
      if ((v8 - 16) != a1)
      {
        v88 = *v87;
        *v87 = 0;
        *(v8 - 8) = 0;
        v89 = a1[1];
        *a1 = v88;
        if (v89)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v89);
        }
      }

      v90 = v188;
      v188 = 0uLL;
      v91 = *(v8 - 8);
      *(v8 - 16) = v90;
      if (v91)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v91);
      }

      if (*(&v188 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v188 + 1));
      }

      if (v72 < v75)
      {
        goto LABEL_88;
      }

      v92 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>*>(a1, (v8 - 16));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>*>(v8, a2))
      {
        a2 = (v8 - 16);
        if (v92)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v92)
      {
LABEL_88:
        std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>*,false>(a1, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v93 = *a1;
      *a1 = 0;
      a1[1] = 0;
      v94 = v93;
      v183 = v93;
      v95 = *(&v93 + 1);
      if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v93, *(&v93 + 1), v7))
      {
        v8 = a1;
        do
        {
          v8 += 16;
        }

        while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v94, v95, v8));
      }

      else
      {
        v96 = (a1 + 2);
        do
        {
          v8 = v96;
          if (v96 >= a2)
          {
            break;
          }

          v97 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v94, v95, v96);
          v96 = v8 + 16;
        }

        while (!v97);
      }

      v98 = a2;
      if (v8 < a2)
      {
        v98 = a2;
        do
        {
          v98 -= 2;
        }

        while (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v94, v95, v98));
      }

      while (v8 < v98)
      {
        v99 = *v8;
        *v8 = *v98;
        *v98 = v99;
        v100 = *(v8 + 8);
        *(v8 + 8) = v98[1];
        v98[1] = v100;
        do
        {
          v8 += 16;
        }

        while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v94, v95, v8));
        do
        {
          v98 -= 2;
        }

        while (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v94, v95, v98));
      }

      v101 = (v8 - 16);
      if ((v8 - 16) != a1)
      {
        v102 = *v101;
        *v101 = 0;
        *(v8 - 8) = 0;
        v103 = a1[1];
        *a1 = v102;
        if (v103)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v103);
        }
      }

      a4 = 0;
      v104 = *(v8 - 8);
      *(v8 - 16) = v183;
      if (v104)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v104);
        a4 = 0;
      }
    }
  }

  v114 = (v8 + 16);
  v116 = v8 == a2 || v114 == a2;
  if (a4)
  {
    if (!v116)
    {
      v117 = 0;
      do
      {
        v118 = v8;
        v8 = v114;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(v118 + 16), v114[1], v118))
        {
          v119 = *v8;
          *v8 = 0;
          *(v8 + 8) = 0;
          v120 = v119;
          v185 = v119;
          v121 = *(&v119 + 1);
          v122 = v117;
          while (1)
          {
            v123 = a1 + v122;
            v124 = *(a1 + v122);
            *v123 = 0;
            *(v123 + 1) = 0;
            v125 = *(a1 + v122 + 24);
            *(v123 + 1) = v124;
            if (v125)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v125);
            }

            if (!v122)
            {
              break;
            }

            v122 -= 16;
            if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v120, v121, a1 + v122))
            {
              v126 = a1 + v122 + 16;
              goto LABEL_139;
            }
          }

          v126 = a1;
LABEL_139:
          v127 = *(v126 + 8);
          *v126 = v185;
          if (v127)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v127);
          }
        }

        v114 = (v8 + 16);
        v117 += 16;
      }

      while ((v8 + 16) != a2);
    }
  }

  else if (!v116)
  {
    do
    {
      v168 = a1;
      a1 = v114;
      if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(v168 + 16), v114[1], v168))
      {
        v169 = *a1;
        *a1 = 0;
        a1[1] = 0;
        v170 = v169;
        v187 = v169;
        v171 = *(&v169 + 1);
        v172 = a1;
        do
        {
          v173 = *(v172 - 1);
          *(v172 - 2) = 0;
          *(v172 - 1) = 0;
          v174 = v172[1];
          *v172 = v173;
          if (v174)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v174);
          }

          v175 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v170, v171, (v172 - 4));
          v172 -= 2;
        }

        while (v175);
        v176 = v172[1];
        *v172 = v187;
        if (v176)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v176);
        }
      }

      v114 = a1 + 2;
    }

    while (a1 + 2 != a2);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,false>(uint64_t **a1, uint64_t **a2, uint64_t a3, char a4)
{
LABEL_1:
  v228 = (a2 - 4);
  v229 = (a2 - 2);
  v227 = (a2 - 6);
  v7 = a1;
  v235 = a2;
  while (1)
  {
    a1 = v7;
    v8 = (a2 - v7) >> 4;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,0>(v7, v7 + 16, v229);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,0>(v7, (v7 + 16), (v7 + 32), v229);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,0>(v7, v7 + 16, v7 + 32, (v7 + 48), v229);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *(a2 - 1);
        if (v89)
        {
          atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v91 = *v7;
        v90 = *(v7 + 8);
        if (v90)
        {
          atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v92 = 0;
        if (v88 && v91)
        {
          v93 = *v88;
          v92 = v93 && (v94 = *v91) != 0 && *(v93 + 20) < *(v94 + 20);
        }

        if (v90)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v90);
        }

        if (v89)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v89);
        }

        if (v92)
        {
          v225 = *v7;
          *v7 = *(v235 - 16);
          *(v235 - 16) = v225;
          v226 = *(v7 + 8);
          *(v7 + 8) = *(v235 - 8);
          *(v235 - 8) = v226;
        }

        return;
      }
    }

    if (v8 <= 23)
    {
      v95 = (v7 + 16);
      v97 = v7 == a2 || v95 == a2;
      if (a4)
      {
        if (v97)
        {
          return;
        }

        v98 = 0;
        v99 = v7;
        while (1)
        {
          v100 = v99;
          v99 = v95;
          v101 = v100[2];
          v102 = v100[3];
          if (v102)
          {
            atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v104 = *v100;
          v103 = v100[1];
          if (v103)
          {
            atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v101 && v104 != 0)
          {
            v106 = *v101;
            if (v106)
            {
              v107 = *v104;
              if (v107)
              {
                break;
              }
            }
          }

          v108 = 0;
          if (v103)
          {
            goto LABEL_283;
          }

LABEL_284:
          if (v102)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v102);
          }

          if (!v108)
          {
            goto LABEL_311;
          }

          v109 = *v99;
          v110 = v100[3];
          v111 = v98;
          *v99 = 0;
          v99[1] = 0;
          do
          {
            v112 = a1 + v111;
            v113 = *(a1 + v111);
            *v112 = 0;
            *(v112 + 1) = 0;
            v114 = *(a1 + v111 + 24);
            *(v112 + 1) = v113;
            if (v114)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v114);
            }

            if (!v111)
            {
              v119 = a1;
              goto LABEL_309;
            }

            if (v110)
            {
              atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v116 = *(a1 + v111 - 16);
            v115 = *(a1 + v111 - 8);
            if (v115)
            {
              atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v117 = 0;
            if (!v109 || !v116)
            {
              goto LABEL_300;
            }

            if (*v109)
            {
              v118 = *v116;
              if (v118)
              {
                v117 = *(*v109 + 20) < *(v118 + 20);
LABEL_300:
                if (!v115)
                {
                  goto LABEL_302;
                }

LABEL_301:
                std::__shared_weak_count::__release_shared[abi:ne200100](v115);
                goto LABEL_302;
              }
            }

            v117 = 0;
            if (v115)
            {
              goto LABEL_301;
            }

LABEL_302:
            if (v110)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v110);
            }

            v111 -= 16;
          }

          while (v117);
          v119 = (a1 + v111 + 16);
LABEL_309:
          v120 = v119[1];
          *v119 = v109;
          v119[1] = v110;
          if (v120)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v120);
          }

LABEL_311:
          v95 = v99 + 2;
          v98 += 16;
          if (v99 + 2 == v235)
          {
            return;
          }
        }

        v108 = *(v106 + 20) < *(v107 + 20);
        if (!v103)
        {
          goto LABEL_284;
        }

LABEL_283:
        std::__shared_weak_count::__release_shared[abi:ne200100](v103);
        goto LABEL_284;
      }

      if (v97)
      {
        return;
      }

LABEL_475:
      v206 = a1;
      a1 = v95;
      v207 = v206[2];
      v208 = v206[3];
      if (v208)
      {
        atomic_fetch_add_explicit(&v208->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v210 = *v206;
      v209 = v206[1];
      if (v209)
      {
        atomic_fetch_add_explicit(&v209->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v207)
      {
        v211 = v210 == 0;
      }

      else
      {
        v211 = 1;
      }

      if (!v211 && (v212 = *v207) != 0 && (v213 = *v210) != 0)
      {
        v214 = *(v212 + 20) < *(v213 + 20);
        if (!v209)
        {
LABEL_489:
          if (v208)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v208);
          }

          if (!v214)
          {
            goto LABEL_514;
          }

          v215 = *a1;
          v216 = v206[3];
          v217 = a1;
          *a1 = 0;
          a1[1] = 0;
          while (1)
          {
            v218 = *(v217 - 1);
            *(v217 - 2) = 0;
            *(v217 - 1) = 0;
            v219 = v217[1];
            *v217 = v218;
            if (v219)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v219);
            }

            if (v216)
            {
              atomic_fetch_add_explicit(&v216->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v221 = *(v217 - 4);
            v220 = *(v217 - 3);
            if (v220)
            {
              atomic_fetch_add_explicit(&v220->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v222 = 0;
            if (v215 && v221)
            {
              if (!*v215 || (v223 = *v221) == 0)
              {
                v222 = 0;
                if (!v220)
                {
                  goto LABEL_506;
                }

LABEL_505:
                std::__shared_weak_count::__release_shared[abi:ne200100](v220);
                goto LABEL_506;
              }

              v222 = *(*v215 + 20) < *(v223 + 20);
            }

            if (v220)
            {
              goto LABEL_505;
            }

LABEL_506:
            if (v216)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v216);
            }

            v217 -= 2;
            if (!v222)
            {
              v224 = v217[1];
              *v217 = v215;
              v217[1] = v216;
              if (v224)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v224);
              }

LABEL_514:
              v95 = a1 + 2;
              if (a1 + 2 == v235)
              {
                return;
              }

              goto LABEL_475;
            }
          }
        }
      }

      else
      {
        v214 = 0;
        if (!v209)
        {
          goto LABEL_489;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v209);
      goto LABEL_489;
    }

    if (!a3)
    {
      break;
    }

    v9 = (v7 + 16 * (v8 >> 1));
    if (v8 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,0>(&a1[2 * (v8 >> 1)], a1, v229);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,0>(a1, &a1[2 * (v8 >> 1)], v229);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,0>((a1 + 2), (v9 - 1), v228);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,0>((a1 + 4), &a1[2 * (v8 >> 1) + 2], v227);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,0>((v9 - 1), &a1[2 * (v8 >> 1)], &a1[2 * (v8 >> 1) + 2]);
      v10 = *a1;
      *a1 = *v9;
      *v9 = v10;
    }

    --a3;
    if (a4)
    {
      v11 = *a1;
LABEL_31:
      v19 = a1[1];
      v20 = a1;
      *a1 = 0;
      a1[1] = 0;
      do
      {
        v21 = v20[2];
        v22 = v20[3];
        v20 += 2;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v21)
        {
          v23 = v11 == 0;
        }

        else
        {
          v23 = 1;
        }

        if (v23 || (v24 = *v21) == 0 || !*v11)
        {
          v25 = 0;
          if (!v19)
          {
            goto LABEL_46;
          }

LABEL_45:
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          goto LABEL_46;
        }

        v25 = *(v24 + 20) < *(*v11 + 20);
        if (v19)
        {
          goto LABEL_45;
        }

LABEL_46:
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }

      while (v25);
      v233 = a3;
      v26 = a2;
      if (v20 - 2 != a1)
      {
        while (1)
        {
          v27 = *(v26 - 2);
          v28 = *(v26 - 1);
          v26 -= 2;
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v27 && v11 != 0)
          {
            v30 = *v27;
            if (v30)
            {
              if (*v11)
              {
                break;
              }
            }
          }

          v31 = 0;
          if (v19)
          {
            goto LABEL_63;
          }

LABEL_64:
          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          if (v31)
          {
            goto LABEL_67;
          }
        }

        v31 = *(v30 + 20) < *(*v11 + 20);
        if (!v19)
        {
          goto LABEL_64;
        }

LABEL_63:
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        goto LABEL_64;
      }

      v26 = a2;
      while (2)
      {
        if (v20 < v26)
        {
          v51 = *(v26 - 2);
          v52 = *(v26 - 1);
          v26 -= 2;
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v53 = 0;
          if (v51 && v11)
          {
            v54 = *v51;
            if (v54 && *v11)
            {
              v53 = *(v54 + 20) < *(*v11 + 20);
              goto LABEL_126;
            }

            v53 = 0;
            if (!v19)
            {
LABEL_128:
              if (v52)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v52);
              }

              if (v53)
              {
                break;
              }

              continue;
            }
          }

          else
          {
LABEL_126:
            if (!v19)
            {
              goto LABEL_128;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          goto LABEL_128;
        }

        break;
      }

LABEL_67:
      v7 = v20;
      if (v20 < v26)
      {
        v32 = v26;
        do
        {
          v33 = *v7;
          *v7 = *v32;
          *v32 = v33;
          v34 = *(v7 + 8);
          *(v7 + 8) = v32[1];
          v32[1] = v34;
          do
          {
            v35 = *(v7 + 16);
            v36 = *(v7 + 24);
            v7 += 16;
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v35)
            {
              v37 = v11 == 0;
            }

            else
            {
              v37 = 1;
            }

            if (v37 || (v38 = *v35) == 0 || !*v11)
            {
              v39 = 0;
              if (!v19)
              {
                goto LABEL_84;
              }

LABEL_83:
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              goto LABEL_84;
            }

            v39 = *(v38 + 20) < *(*v11 + 20);
            if (v19)
            {
              goto LABEL_83;
            }

LABEL_84:
            if (v36)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v36);
            }
          }

          while (v39);
          do
          {
            v40 = *(v32 - 2);
            v41 = *(v32 - 1);
            v32 -= 2;
            if (v41)
            {
              atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v40)
            {
              v42 = v11 == 0;
            }

            else
            {
              v42 = 1;
            }

            if (v42 || (v43 = *v40) == 0 || !*v11)
            {
              v44 = 0;
              if (!v19)
              {
                goto LABEL_101;
              }

LABEL_100:
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              goto LABEL_101;
            }

            v44 = *(v43 + 20) < *(*v11 + 20);
            if (v19)
            {
              goto LABEL_100;
            }

LABEL_101:
            if (v41)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v41);
            }
          }

          while (!v44);
        }

        while (v7 < v32);
      }

      v45 = (v7 - 16);
      if ((v7 - 16) != a1)
      {
        v46 = *v45;
        *v45 = 0;
        *(v7 - 8) = 0;
        v47 = a1[1];
        *a1 = v46;
        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }
      }

      v48 = *(v7 - 8);
      *(v7 - 16) = v11;
      *(v7 - 8) = v19;
      a2 = v235;
      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }

      v49 = v20 >= v26;
      a3 = v233;
      if (v49)
      {
        v50 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*>(a1, v7 - 16);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*>(v7, v235))
        {
          a2 = (v7 - 16);
          if (v50)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v50)
        {
          goto LABEL_114;
        }
      }

      else
      {
LABEL_114:
        std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,false>(a1, v7 - 16, v233, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v12 = *(a1 - 2);
      v13 = *(a1 - 1);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *a1;
      v14 = a1[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = 0;
      if (v12 && v15)
      {
        v17 = *v12;
        v16 = v17 && (v18 = *v15) != 0 && *(v17 + 20) < *(v18 + 20);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v11 = *a1;
      if (v16)
      {
        goto LABEL_31;
      }

      v55 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v57 = *(a2 - 2);
      v56 = *(a2 - 1);
      if (v56)
      {
        atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v58 = 0;
      if (v11 && v57)
      {
        v58 = *v11 && (v59 = *v57) != 0 && *(*v11 + 20) < *(v59 + 20);
      }

      if (v56)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v56);
      }

      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v55);
      }

      if (v58)
      {
        v7 = a1;
        do
        {
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v61 = *(v7 + 16);
          v60 = *(v7 + 24);
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v62 = 0;
          if (v11 && v61)
          {
            v62 = *v11 && (v63 = *v61) != 0 && *(*v11 + 20) < *(v63 + 20);
          }

          if (v60)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v60);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v7 += 16;
        }

        while (!v62);
      }

      else
      {
        v64 = a1 + 2;
        do
        {
          v7 = v64;
          if (v64 >= a2)
          {
            break;
          }

          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v66 = *v64;
          v65 = *(v7 + 8);
          if (v65)
          {
            atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v67 = 0;
          if (v11 && v66)
          {
            v67 = *v11 && (v68 = *v66) != 0 && *(*v11 + 20) < *(v68 + 20);
          }

          if (v65)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v64 = (v7 + 16);
        }

        while (!v67);
      }

      v69 = a2;
      if (v7 < a2)
      {
        v69 = a2;
        do
        {
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v71 = *(v69 - 2);
          v70 = *(v69 - 1);
          if (v70)
          {
            atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v72 = 0;
          if (v11 && v71)
          {
            v72 = *v11 && (v73 = *v71) != 0 && *(*v11 + 20) < *(v73 + 20);
          }

          if (v70)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v70);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v69 -= 2;
        }

        while (v72);
      }

LABEL_235:
      if (v7 < v69)
      {
        v74 = *v7;
        *v7 = *v69;
        *v69 = v74;
        v75 = *(v7 + 8);
        *(v7 + 8) = v69[1];
        v69[1] = v75;
        while (1)
        {
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v77 = *(v7 + 16);
          v76 = *(v7 + 24);
          if (v76)
          {
            atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v78 = 0;
          if (v11 && v77)
          {
            if (!*v11 || (v79 = *v77) == 0)
            {
              v78 = 0;
              if (!v76)
              {
                goto LABEL_213;
              }

LABEL_212:
              std::__shared_weak_count::__release_shared[abi:ne200100](v76);
              goto LABEL_213;
            }

            v78 = *(*v11 + 20) < *(v79 + 20);
          }

          if (v76)
          {
            goto LABEL_212;
          }

LABEL_213:
          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v7 += 16;
          if (v78)
          {
            while (1)
            {
              if (v55)
              {
                atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v82 = *(v69 - 2);
              v81 = *(v69 - 1);
              if (v81)
              {
                atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v80 = 0;
              if (v11 && v82)
              {
                if (!*v11 || (v83 = *v82) == 0)
                {
                  v80 = 0;
                  if (!v81)
                  {
                    goto LABEL_232;
                  }

LABEL_231:
                  std::__shared_weak_count::__release_shared[abi:ne200100](v81);
                  goto LABEL_232;
                }

                v80 = *(*v11 + 20) < *(v83 + 20);
              }

              if (v81)
              {
                goto LABEL_231;
              }

LABEL_232:
              if (v55)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v55);
              }

              v69 -= 2;
              if (!v80)
              {
                goto LABEL_235;
              }
            }
          }
        }
      }

      v84 = (v7 - 16);
      if ((v7 - 16) != a1)
      {
        v85 = *v84;
        *v84 = 0;
        *(v7 - 8) = 0;
        v86 = a1[1];
        *a1 = v85;
        if (v86)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v86);
        }
      }

      a4 = 0;
      v87 = *(v7 - 8);
      *(v7 - 16) = v11;
      *(v7 - 8) = v55;
      if (v87)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v87);
        a4 = 0;
      }
    }
  }

  if (v7 == a2)
  {
    return;
  }

  v121 = (v8 - 2) >> 1;
  v122 = v121;
  do
  {
    v123 = v122;
    if (v121 < v122)
    {
      goto LABEL_397;
    }

    v124 = (2 * v122) | 1;
    v125 = &a1[2 * v124];
    if (2 * v122 + 2 < v8)
    {
      v126 = *v125;
      v127 = v125[1];
      if (v127)
      {
        atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v129 = v125[2];
      v128 = v125[3];
      if (v128)
      {
        atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v126)
      {
        v130 = v129 == 0;
      }

      else
      {
        v130 = 1;
      }

      if (!v130 && (v131 = *v126) != 0 && (v132 = *v129) != 0)
      {
        v133 = *(v131 + 20) < *(v132 + 20);
        if (!v128)
        {
          goto LABEL_331;
        }
      }

      else
      {
        v133 = 0;
        if (!v128)
        {
LABEL_331:
          if (v127)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v127);
          }

          if (v133)
          {
            v125 += 2;
            v124 = 2 * v123 + 2;
          }

          goto LABEL_335;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v128);
      goto LABEL_331;
    }

LABEL_335:
    v134 = *v125;
    v135 = v125[1];
    if (v135)
    {
      atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v136 = &a1[2 * v123];
    v138 = *v136;
    v137 = v136[1];
    if (v137)
    {
      atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v134)
    {
      v139 = v138 == 0;
    }

    else
    {
      v139 = 1;
    }

    if (v139 || (v140 = *v134) == 0 || (v141 = *v138) == 0)
    {
      v142 = 0;
      if (!v137)
      {
        goto LABEL_349;
      }

LABEL_348:
      std::__shared_weak_count::__release_shared[abi:ne200100](v137);
      goto LABEL_349;
    }

    v142 = *(v140 + 20) < *(v141 + 20);
    if (v137)
    {
      goto LABEL_348;
    }

LABEL_349:
    if (v135)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v135);
    }

    a2 = v235;
    if (!v142)
    {
      v231 = v123;
      v144 = *v136;
      v143 = v136[1];
      *v136 = 0;
      v136[1] = 0;
      while (1)
      {
        v145 = v125;
        v146 = *v125;
        *v125 = 0;
        v125[1] = 0;
        v147 = v136[1];
        *v136 = v146;
        if (v147)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v147);
        }

        if (v121 < v124)
        {
LABEL_395:
          v162 = v145[1];
          *v145 = v144;
          v145[1] = v143;
          a2 = v235;
          v123 = v231;
          if (v162)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v162);
          }

          goto LABEL_397;
        }

        v148 = (2 * v124) | 1;
        v125 = &a1[2 * v148];
        v124 = 2 * v124 + 2;
        if (v124 >= v8)
        {
          v124 = v148;
          goto LABEL_378;
        }

        v149 = *v125;
        v150 = v125[1];
        if (v150)
        {
          atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v152 = v125[2];
        v151 = v125[3];
        if (v151)
        {
          atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v149 && v152 != 0)
        {
          v154 = *v149;
          if (v154)
          {
            v155 = *v152;
            if (v155)
            {
              break;
            }
          }
        }

        v156 = 0;
        if (v151)
        {
          goto LABEL_371;
        }

LABEL_372:
        if (v150)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v150);
        }

        if (v156)
        {
          v125 += 2;
        }

        else
        {
          v124 = v148;
        }

        v121 = (v8 - 2) >> 1;
LABEL_378:
        v157 = *v125;
        v158 = v125[1];
        if (v158)
        {
          atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v143)
        {
          atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v157)
        {
          v159 = v144 == 0;
        }

        else
        {
          v159 = 1;
        }

        if (!v159)
        {
          v160 = *v157;
          if (v160)
          {
            if (*v144)
            {
              v161 = *(v160 + 20) < *(*v144 + 20);
              if (!v143)
              {
                goto LABEL_392;
              }

LABEL_391:
              std::__shared_weak_count::__release_shared[abi:ne200100](v143);
              goto LABEL_392;
            }
          }
        }

        v161 = 0;
        if (v143)
        {
          goto LABEL_391;
        }

LABEL_392:
        if (v158)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v158);
        }

        v136 = v145;
        if (v161)
        {
          goto LABEL_395;
        }
      }

      v156 = *(v154 + 20) < *(v155 + 20);
      if (!v151)
      {
        goto LABEL_372;
      }

LABEL_371:
      std::__shared_weak_count::__release_shared[abi:ne200100](v151);
      goto LABEL_372;
    }

LABEL_397:
    v122 = v123 - 1;
  }

  while (v123);
  do
  {
    if (v8 < 2)
    {
      goto LABEL_472;
    }

    v236 = a2;
    v163 = 0;
    v232 = *a1;
    v234 = a1[1];
    v164 = a1;
    *a1 = 0;
    a1[1] = 0;
    do
    {
      v165 = &v164[2 * v163];
      v166 = v165 + 2;
      v167 = (2 * v163) | 1;
      v168 = 2 * v163 + 2;
      if (v168 >= v8)
      {
        v163 = (2 * v163) | 1;
        goto LABEL_421;
      }

      v169 = v165[2];
      v170 = v165[3];
      if (v170)
      {
        atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v172 = v165[4];
      v171 = v165[5];
      if (v171)
      {
        atomic_fetch_add_explicit(&v171->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v169)
      {
        v173 = v172 == 0;
      }

      else
      {
        v173 = 1;
      }

      if (!v173)
      {
        v174 = *v169;
        if (v174)
        {
          v175 = *v172;
          if (v175)
          {
            v176 = *(v174 + 20) < *(v175 + 20);
            if (!v171)
            {
              goto LABEL_416;
            }

LABEL_415:
            std::__shared_weak_count::__release_shared[abi:ne200100](v171);
            goto LABEL_416;
          }
        }
      }

      v176 = 0;
      if (v171)
      {
        goto LABEL_415;
      }

LABEL_416:
      if (v170)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v170);
      }

      if (v176)
      {
        v166 = v165 + 4;
        v163 = v168;
      }

      else
      {
        v163 = v167;
      }

LABEL_421:
      v177 = *v166;
      *v166 = 0;
      v166[1] = 0;
      v178 = v164[1];
      *v164 = v177;
      if (v178)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v178);
      }

      v164 = v166;
    }

    while (v163 <= ((v8 - 2) >> 1));
    a2 = v236;
    if (v166 == v236 - 2)
    {
      v195 = v166[1];
      *v166 = v232;
      v166[1] = v234;
      if (v195)
      {
        goto LABEL_471;
      }

      goto LABEL_472;
    }

    v179 = *(v236 - 1);
    *(v236 - 2) = 0;
    *(v236 - 1) = 0;
    v180 = v166[1];
    *v166 = v179;
    if (v180)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v180);
    }

    v181 = *(v236 - 1);
    *(v236 - 2) = v232;
    *(v236 - 1) = v234;
    if (v181)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v181);
    }

    v182 = ((v166 + 2) - a1) >> 4;
    v183 = v182 < 2;
    v184 = v182 - 2;
    if (v183)
    {
      goto LABEL_472;
    }

    v185 = v184 >> 1;
    v186 = &a1[2 * (v184 >> 1)];
    v187 = *v186;
    v188 = v186[1];
    if (v188)
    {
      atomic_fetch_add_explicit(&v188->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v190 = *v166;
    v189 = v166[1];
    if (v189)
    {
      atomic_fetch_add_explicit(&v189->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v187)
    {
      v191 = v190 == 0;
    }

    else
    {
      v191 = 1;
    }

    if (v191 || (v192 = *v187) == 0 || (v193 = *v190) == 0)
    {
      v194 = 0;
      if (!v189)
      {
        goto LABEL_446;
      }

LABEL_445:
      std::__shared_weak_count::__release_shared[abi:ne200100](v189);
      goto LABEL_446;
    }

    v194 = *(v192 + 20) < *(v193 + 20);
    if (v189)
    {
      goto LABEL_445;
    }

LABEL_446:
    if (v188)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v188);
    }

    a2 = v236;
    if (!v194)
    {
      goto LABEL_472;
    }

    v196 = *v166;
    v197 = v166[1];
    *v166 = 0;
    v166[1] = 0;
    while (2)
    {
      v198 = v186;
      v199 = *v186;
      *v186 = 0;
      v186[1] = 0;
      v200 = v166[1];
      *v166 = v199;
      if (v200)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v200);
      }

      if (v185)
      {
        v185 = (v185 - 1) >> 1;
        v186 = &a1[2 * v185];
        v201 = *v186;
        v202 = v186[1];
        if (v202)
        {
          atomic_fetch_add_explicit(&v202->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v197)
        {
          atomic_fetch_add_explicit(&v197->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v201)
        {
          v203 = v196 == 0;
        }

        else
        {
          v203 = 1;
        }

        if (!v203 && (v204 = *v201) != 0 && *v196)
        {
          v205 = *(v204 + 20) < *(*v196 + 20);
          if (!v197)
          {
LABEL_467:
            if (v202)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v202);
            }

            v166 = v198;
            if (!v205)
            {
              break;
            }

            continue;
          }
        }

        else
        {
          v205 = 0;
          if (!v197)
          {
            goto LABEL_467;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v197);
        goto LABEL_467;
      }

      break;
    }

    v195 = v198[1];
    *v198 = v196;
    v198[1] = v197;
    a2 = v236;
    if (v195)
    {
LABEL_471:
      std::__shared_weak_count::__release_shared[abi:ne200100](v195);
    }

LABEL_472:
    a2 -= 2;
    v183 = v8-- > 2;
  }

  while (v183);
}

void std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>*,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = a2 - 2;
  v184 = (a2 - 1);
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = (a2 - v8) >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v108 = (v8 + 16);
          v109 = (v8 + 24);
          v110 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*(v8 + 16), *(v8 + 24), v8);
          v111 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v7, *v184, v8 + 16);
          if (v110)
          {
            v112 = (v8 + 8);
            v113 = *v8;
            if (v111)
            {
              *v8 = *v7;
              *v7 = v113;
            }

            else
            {
              v177 = *(v8 + 8);
              *v8 = *(v8 + 16);
              *(v8 + 16) = v113;
              *(v8 + 24) = v177;
              if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v7, *v184, v8 + 16))
              {
                return;
              }

              v178 = *v108;
              *v108 = *v7;
              *v7 = v178;
              v112 = (v8 + 24);
            }

            v109 = v184;
          }

          else
          {
            if (!v111)
            {
              return;
            }

            v165 = *(v8 + 16);
            *(v8 + 16) = *v7;
            *v7 = v165;
            v166 = *(v8 + 24);
            *(v8 + 24) = *v184;
            *v184 = v166;
            if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*(v8 + 16), *(v8 + 24), v8))
            {
              return;
            }

            v167 = *v8;
            *v8 = *(v8 + 16);
            *(v8 + 16) = v167;
            v112 = (v8 + 8);
          }

          v179 = *v112;
          *v112 = *v109;
          *v109 = v179;
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>*,0>(v8, (v8 + 16), (v8 + 32), v7);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>*,0>(v8, (v8 + 16), (v8 + 32), v8 + 48, v7);
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v7, *v184, v8))
        {
          v106 = *v8;
          *v8 = *v7;
          *v7 = v106;
          v107 = *(v8 + 8);
          *(v8 + 8) = *v184;
          *v184 = v107;
        }

        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return;
      }

      v128 = v10 >> 1;
      v129 = v10 >> 1;
      do
      {
        v130 = v129;
        if (v128 >= v129)
        {
          v131 = (2 * v129) | 1;
          v132 = &a1[2 * v131];
          if (2 * v129 + 2 < v9 && sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v132, v132[1], (v132 + 2)))
          {
            v132 += 2;
            v131 = 2 * v130 + 2;
          }

          v133 = &a1[2 * v130];
          if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v132, v132[1], v133))
          {
            v188 = *v133;
            *v133 = 0;
            *(v133 + 8) = 0;
            do
            {
              v134 = v132;
              v135 = *v132;
              *v132 = 0;
              v132[1] = 0;
              v136 = *(v133 + 8);
              *v133 = v135;
              if (v136)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v136);
              }

              if (v128 < v131)
              {
                break;
              }

              v137 = (2 * v131) | 1;
              v132 = &a1[2 * v137];
              v138 = 2 * v131 + 2;
              if (v138 < v9 && sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v132, v132[1], (v132 + 2)))
              {
                v132 += 2;
                v137 = v138;
              }

              v133 = v134;
              v131 = v137;
            }

            while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v132, v132[1], &v188));
            v139 = v188;
            v188 = 0uLL;
            v140 = v134[1];
            *v134 = v139;
            if (v140)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v140);
            }

            if (*(&v188 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v188 + 1));
            }
          }
        }

        v129 = v130 - 1;
      }

      while (v130);
      while (2)
      {
        if (v9 >= 2)
        {
          v141 = 0;
          v142 = *a1;
          v186 = a1[1];
          v143 = a1;
          *a1 = 0;
          a1[1] = 0;
          do
          {
            v144 = &v143[2 * v141];
            v145 = (v144 + 2);
            v146 = (2 * v141) | 1;
            v147 = 2 * v141 + 2;
            if (v147 >= v9)
            {
              v141 = (2 * v141) | 1;
            }

            else
            {
              v148 = (v144 + 4);
              if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(v144[2], v144[3], (v144 + 4)))
              {
                v145 = v148;
                v141 = v147;
              }

              else
              {
                v141 = v146;
              }
            }

            v149 = *v145;
            *v145 = 0;
            *(v145 + 8) = 0;
            v150 = v143[1];
            *v143 = v149;
            if (v150)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v150);
            }

            v143 = v145;
          }

          while (v141 <= ((v9 - 2) >> 1));
          if (v145 == a2 - 2)
          {
            v164 = *(v145 + 8);
            *v145 = v142;
            *(v145 + 8) = v186;
            if (!v164)
            {
              goto LABEL_190;
            }
          }

          else
          {
            v151 = *(a2 - 1);
            *(a2 - 2) = 0;
            *(a2 - 1) = 0;
            v152 = *(v145 + 8);
            *v145 = v151;
            if (v152)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v152);
            }

            v153 = *(a2 - 1);
            *(a2 - 2) = v142;
            *(a2 - 1) = v186;
            if (v153)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v153);
            }

            v154 = (v145 + 16 - a1) >> 4;
            v155 = v154 < 2;
            v156 = v154 - 2;
            if (v155)
            {
              goto LABEL_190;
            }

            v157 = v156 >> 1;
            v158 = &a1[2 * (v156 >> 1)];
            if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v158, v158[1], v145))
            {
              goto LABEL_190;
            }

            v188 = *v145;
            *v145 = 0;
            *(v145 + 8) = 0;
            do
            {
              v159 = v158;
              v160 = *v158;
              *v158 = 0;
              v158[1] = 0;
              v161 = *(v145 + 8);
              *v145 = v160;
              if (v161)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v161);
              }

              if (!v157)
              {
                break;
              }

              v157 = (v157 - 1) >> 1;
              v158 = &a1[2 * v157];
              v145 = v159;
            }

            while (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v158, v158[1], &v188));
            v162 = v188;
            v188 = 0uLL;
            v163 = v159[1];
            *v159 = v162;
            if (!v163)
            {
              goto LABEL_190;
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v163);
            v164 = *(&v188 + 1);
            if (!*(&v188 + 1))
            {
              goto LABEL_190;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v164);
        }

LABEL_190:
        a2 -= 2;
        v155 = v9-- > 2;
        if (!v155)
        {
          return;
        }

        continue;
      }
    }

    v182 = a3;
    v11 = v9 >> 1;
    v12 = (v8 + 16 * (v9 >> 1));
    if (v9 >= 0x81)
    {
      v13 = v12 + 1;
      v14 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v12, v12[1], a1);
      v15 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v7, *v184, v12);
      if (v14)
      {
        v16 = a1 + 1;
        v17 = *a1;
        if (v15)
        {
          *a1 = *v7;
          *v7 = v17;
          goto LABEL_26;
        }

        v29 = a1[1];
        *a1 = *v12;
        *v12 = v17;
        v12[1] = v29;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v7, *v184, v12))
        {
          v30 = *v12;
          *v12 = *v7;
          *v7 = v30;
          v16 = v12 + 1;
LABEL_26:
          v25 = a2 - 1;
LABEL_27:
          v31 = *v16;
          *v16 = *v25;
          *v25 = v31;
        }
      }

      else if (v15)
      {
        v22 = *v12;
        *v12 = *v7;
        *v7 = v22;
        v23 = v12[1];
        v12[1] = *v184;
        *v184 = v23;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v12, v12[1], a1))
        {
          v24 = *a1;
          *a1 = *v12;
          v16 = a1 + 1;
          *v12 = v24;
          v25 = v12 + 1;
          goto LABEL_27;
        }
      }

      v32 = v12 - 2;
      v33 = v12 - 1;
      v34 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*(v12 - 2), *(v12 - 1), (a1 + 2));
      v35 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*(a2 - 4), *(a2 - 3), (v12 - 2));
      if (v34)
      {
        v36 = a1[2];
        v37 = a1 + 3;
        if (v35)
        {
          a1[2] = *(a2 - 4);
          *(a2 - 4) = v36;
          goto LABEL_39;
        }

        v44 = *v37;
        *(a1 + 1) = *v32;
        *v32 = v36;
        *(v12 - 1) = v44;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*(a2 - 4), *(a2 - 3), (v12 - 2)))
        {
          v45 = *v32;
          *v32 = *(a2 - 4);
          *(a2 - 4) = v45;
          v37 = v12 - 1;
LABEL_39:
          v41 = a2 - 3;
LABEL_40:
          v46 = *v37;
          *v37 = *v41;
          *v41 = v46;
        }
      }

      else if (v35)
      {
        v38 = *v32;
        *v32 = *(a2 - 4);
        *(a2 - 4) = v38;
        v39 = *(v12 - 1);
        *(v12 - 1) = *(a2 - 3);
        *(a2 - 3) = v39;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v32, *(v12 - 1), (a1 + 2)))
        {
          v40 = a1[2];
          a1[2] = *v32;
          *v32 = v40;
          v37 = a1 + 3;
          v41 = v12 - 1;
          goto LABEL_40;
        }
      }

      v180 = v11;
      v47 = v11 + 1;
      v48 = &a1[2 * v11 + 2];
      v49 = v48 + 1;
      v50 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v48, v48[1], (a1 + 4));
      v51 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*(a2 - 6), *(a2 - 5), v48);
      if (v50)
      {
        v52 = a1[4];
        v53 = a1 + 5;
        if (v51)
        {
          a1[4] = *(a2 - 6);
          *(a2 - 6) = v52;
          goto LABEL_49;
        }

        v57 = *v53;
        *(a1 + 2) = *v48;
        *v48 = v52;
        v48[1] = v57;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*(a2 - 6), *(a2 - 5), v48))
        {
          v58 = *v48;
          *v48 = *(a2 - 6);
          *(a2 - 6) = v58;
          v53 = v48 + 1;
LABEL_49:
          v49 = a2 - 5;
LABEL_50:
          v59 = *v53;
          *v53 = *v49;
          *v49 = v59;
        }
      }

      else if (v51)
      {
        v54 = *v48;
        *v48 = *(a2 - 6);
        *(a2 - 6) = v54;
        v55 = v48[1];
        v48[1] = *(a2 - 5);
        *(a2 - 5) = v55;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v48, v48[1], (a1 + 4)))
        {
          v56 = a1[4];
          a1[4] = *v48;
          *v48 = v56;
          v53 = a1 + 5;
          goto LABEL_50;
        }
      }

      v60 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v12, v12[1], (v12 - 2));
      v61 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v48, v48[1], v12);
      if (v60)
      {
        v62 = *v32;
        if (v61)
        {
          *v32 = *v48;
          *v48 = v62;
          v7 = a2 - 2;
          goto LABEL_59;
        }

        v66 = *(v12 - 1);
        *v32 = *v12;
        *v12 = v62;
        v12[1] = v66;
        v7 = a2 - 2;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v48, v48[1], v12))
        {
          v67 = *v12;
          *v12 = *v48;
          *v48 = v67;
          v33 = v12 + 1;
LABEL_59:
          v68 = &a1[2 * v47];
          v69 = *v33;
          *v33 = v68[1];
          v68[1] = v69;
        }
      }

      else
      {
        v7 = a2 - 2;
        if (v61)
        {
          v63 = *v48;
          v64 = *v12;
          *v12 = *v48;
          *v48 = v64;
          if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(v63, *(&v63 + 1), (v12 - 2)))
          {
            v65 = *v32;
            *v32 = *v12;
            *v12 = v65;
            v47 = v180;
            goto LABEL_59;
          }
        }
      }

      v70 = *a1;
      *a1 = *v12;
      v20 = a1 + 1;
      *v12 = v70;
      goto LABEL_61;
    }

    v13 = a1 + 1;
    v18 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*a1, a1[1], &a1[2 * (v9 >> 1)]);
    v19 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v7, *v184, a1);
    if (v18)
    {
      v20 = v12 + 1;
      v21 = *v12;
      if (v19)
      {
        *v12 = *v7;
        *v7 = v21;
      }

      else
      {
        v42 = v12[1];
        *v12 = *a1;
        *a1 = v21;
        a1[1] = v42;
        if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*v7, *v184, a1))
        {
          goto LABEL_62;
        }

        v43 = *a1;
        *a1 = *v7;
        *v7 = v43;
        v20 = a1 + 1;
      }

      v13 = a2 - 1;
    }

    else
    {
      if (!v19)
      {
        goto LABEL_62;
      }

      v26 = *a1;
      *a1 = *v7;
      *v7 = v26;
      v27 = a1[1];
      a1[1] = *v184;
      *v184 = v27;
      if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*a1, a1[1], v12))
      {
        goto LABEL_62;
      }

      v28 = *v12;
      *v12 = *a1;
      *a1 = v28;
      v20 = v12 + 1;
    }

LABEL_61:
    v71 = *v20;
    *v20 = *v13;
    *v13 = v71;
LABEL_62:
    a3 = v182 - 1;
    if ((a4 & 1) != 0 || sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*(a1 - 2), *(a1 - 1), a1))
    {
      v188 = *a1;
      *a1 = 0;
      a1[1] = 0;
      v72 = a1;
      do
      {
        v73 = v72;
        v74 = v72[2];
        v72 += 2;
      }

      while (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(v74, v73[3], &v188));
      v75 = a2;
      if (v73 == a1)
      {
        v75 = a2;
        do
        {
          if (v72 >= v75)
          {
            break;
          }

          v78 = *(v75 - 2);
          v79 = *(v75 - 1);
          v75 -= 2;
        }

        while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(v78, v79, &v188));
      }

      else
      {
        do
        {
          v76 = *(v75 - 2);
          v77 = *(v75 - 1);
          v75 -= 2;
        }

        while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(v76, v77, &v188));
      }

      v8 = v72;
      if (v72 < v75)
      {
        v80 = v75;
        do
        {
          v81 = *v8;
          *v8 = *v80;
          *v80 = v81;
          v82 = *(v8 + 8);
          *(v8 + 8) = v80[1];
          v80[1] = v82;
          do
          {
            v83 = *(v8 + 16);
            v84 = *(v8 + 24);
            v8 += 16;
          }

          while (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(v83, v84, &v188));
          do
          {
            v85 = *(v80 - 2);
            v86 = *(v80 - 1);
            v80 -= 2;
          }

          while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(v85, v86, &v188));
        }

        while (v8 < v80);
      }

      v87 = (v8 - 16);
      if ((v8 - 16) != a1)
      {
        v88 = *v87;
        *v87 = 0;
        *(v8 - 8) = 0;
        v89 = a1[1];
        *a1 = v88;
        if (v89)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v89);
        }
      }

      v90 = v188;
      v188 = 0uLL;
      v91 = *(v8 - 8);
      *(v8 - 16) = v90;
      if (v91)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v91);
      }

      if (*(&v188 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v188 + 1));
      }

      if (v72 < v75)
      {
        goto LABEL_88;
      }

      v92 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>*>(a1, (v8 - 16));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>*>(v8, a2))
      {
        a2 = (v8 - 16);
        if (v92)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v92)
      {
LABEL_88:
        std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>*,false>(a1, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v93 = *a1;
      *a1 = 0;
      a1[1] = 0;
      v94 = v93;
      v183 = v93;
      v95 = *(&v93 + 1);
      if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(v93, *(&v93 + 1), v7))
      {
        v8 = a1;
        do
        {
          v8 += 16;
        }

        while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(v94, v95, v8));
      }

      else
      {
        v96 = (a1 + 2);
        do
        {
          v8 = v96;
          if (v96 >= a2)
          {
            break;
          }

          v97 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(v94, v95, v96);
          v96 = v8 + 16;
        }

        while (!v97);
      }

      v98 = a2;
      if (v8 < a2)
      {
        v98 = a2;
        do
        {
          v98 -= 2;
        }

        while (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(v94, v95, v98));
      }

      while (v8 < v98)
      {
        v99 = *v8;
        *v8 = *v98;
        *v98 = v99;
        v100 = *(v8 + 8);
        *(v8 + 8) = v98[1];
        v98[1] = v100;
        do
        {
          v8 += 16;
        }

        while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(v94, v95, v8));
        do
        {
          v98 -= 2;
        }

        while (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(v94, v95, v98));
      }

      v101 = (v8 - 16);
      if ((v8 - 16) != a1)
      {
        v102 = *v101;
        *v101 = 0;
        *(v8 - 8) = 0;
        v103 = a1[1];
        *a1 = v102;
        if (v103)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v103);
        }
      }

      a4 = 0;
      v104 = *(v8 - 8);
      *(v8 - 16) = v183;
      if (v104)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v104);
        a4 = 0;
      }
    }
  }

  v114 = (v8 + 16);
  v116 = v8 == a2 || v114 == a2;
  if (a4)
  {
    if (!v116)
    {
      v117 = 0;
      do
      {
        v118 = v8;
        v8 = v114;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*(v118 + 16), v114[1], v118))
        {
          v119 = *v8;
          *v8 = 0;
          *(v8 + 8) = 0;
          v120 = v119;
          v185 = v119;
          v121 = *(&v119 + 1);
          v122 = v117;
          while (1)
          {
            v123 = a1 + v122;
            v124 = *(a1 + v122);
            *v123 = 0;
            *(v123 + 1) = 0;
            v125 = *(a1 + v122 + 24);
            *(v123 + 1) = v124;
            if (v125)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v125);
            }

            if (!v122)
            {
              break;
            }

            v122 -= 16;
            if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(v120, v121, a1 + v122))
            {
              v126 = a1 + v122 + 16;
              goto LABEL_139;
            }
          }

          v126 = a1;
LABEL_139:
          v127 = *(v126 + 8);
          *v126 = v185;
          if (v127)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v127);
          }
        }

        v114 = (v8 + 16);
        v117 += 16;
      }

      while ((v8 + 16) != a2);
    }
  }

  else if (!v116)
  {
    do
    {
      v168 = a1;
      a1 = v114;
      if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(*(v168 + 16), v114[1], v168))
      {
        v169 = *a1;
        *a1 = 0;
        a1[1] = 0;
        v170 = v169;
        v187 = v169;
        v171 = *(&v169 + 1);
        v172 = a1;
        do
        {
          v173 = *(v172 - 1);
          *(v172 - 2) = 0;
          *(v172 - 1) = 0;
          v174 = v172[1];
          *v172 = v173;
          if (v174)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v174);
          }

          v175 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> const&)#1}::operator()(v170, v171, (v172 - 4));
          v172 -= 2;
        }

        while (v175);
        v176 = v172[1];
        *v172 = v187;
        if (v176)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v176);
        }
      }

      v114 = a1 + 2;
    }

    while (a1 + 2 != a2);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>*,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v6 = a2;
  v166 = a2 - 16;
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = (v6 - v7) >> 4;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>*,0>(v7, v7 + 16, v166);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>*,0>(v7, v7 + 16, v7 + 32, v166);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>*,0>(v7, v7 + 16, v7 + 32, v7 + 48, v166);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      v6 = a2;
      if (v8 == 2)
      {
        v65 = *(a2 - 16);
        v66 = *(a2 - 8);
        if (v66)
        {
          atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v67 = *(v7 + 8);
        v174 = *v7;
        v175 = v67;
        if (v67)
        {
          atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
          v68 = lessThan(v65, &v174);
          std::__shared_weak_count::__release_shared[abi:ne200100](v67);
          if (!v66)
          {
            goto LABEL_159;
          }
        }

        else
        {
          v68 = lessThan(v65, &v174);
          if (!v66)
          {
LABEL_159:
            if (v68)
            {
              v69 = *v7;
              *v7 = *(a2 - 16);
              *(a2 - 16) = v69;
              v70 = *(v7 + 8);
              *(v7 + 8) = *(a2 - 8);
              *(a2 - 8) = v70;
            }

            return;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        goto LABEL_159;
      }
    }

    if (v8 <= 23)
    {
      if (a4)
      {
        if (v7 == v6)
        {
          return;
        }

        v71 = v7 + 16;
        if (v7 + 16 == a2)
        {
          return;
        }

        for (i = 0; ; i += 16)
        {
          v73 = v7;
          v7 = v71;
          v74 = *(v73 + 16);
          v75 = *(v73 + 24);
          if (v75)
          {
            atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v76 = *(v73 + 8);
          v174 = *v73;
          v175 = v76;
          if (!v76)
          {
            break;
          }

          atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
          v77 = lessThan(v74, &v174);
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
          if (v75)
          {
            goto LABEL_175;
          }

LABEL_176:
          if (!v77)
          {
            goto LABEL_195;
          }

          v78 = *v7;
          v79 = *(v73 + 24);
          v80 = i;
          *v7 = 0;
          *(v7 + 8) = 0;
          do
          {
            v81 = a1 + v80;
            v82 = *(a1 + v80);
            *v81 = 0;
            *(v81 + 8) = 0;
            v83 = *(a1 + v80 + 24);
            *(v81 + 16) = v82;
            if (v83)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v83);
            }

            if (!v80)
            {
              v86 = a1;
              goto LABEL_193;
            }

            if (v79)
            {
              atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v174 = *(a1 + v80 - 16);
            v84 = *(a1 + v80 - 8);
            v175 = v84;
            if (v84)
            {
              atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
              v85 = lessThan(v78, &v174);
              std::__shared_weak_count::__release_shared[abi:ne200100](v84);
              if (!v79)
              {
                goto LABEL_186;
              }

LABEL_185:
              std::__shared_weak_count::__release_shared[abi:ne200100](v79);
              goto LABEL_186;
            }

            v85 = lessThan(v78, &v174);
            if (v79)
            {
              goto LABEL_185;
            }

LABEL_186:
            v80 -= 16;
          }

          while (v85);
          v86 = (a1 + v80 + 16);
LABEL_193:
          v87 = v86[1];
          *v86 = v78;
          v86[1] = v79;
          if (v87)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v87);
          }

LABEL_195:
          v71 = v7 + 16;
          if (v7 + 16 == a2)
          {
            return;
          }
        }

        v77 = lessThan(v74, &v174);
        if (!v75)
        {
          goto LABEL_176;
        }

LABEL_175:
        std::__shared_weak_count::__release_shared[abi:ne200100](v75);
        goto LABEL_176;
      }

      if (v7 == v6)
      {
        return;
      }

      v150 = v7 + 16;
      if (v7 + 16 == a2)
      {
        return;
      }

      while (2)
      {
        v151 = v150;
        v152 = *(a1 + 16);
        v153 = *(a1 + 24);
        if (v153)
        {
          atomic_fetch_add_explicit(&v153->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v154 = *(a1 + 8);
        v174 = *a1;
        v175 = v154;
        v155 = a2;
        if (v154)
        {
          atomic_fetch_add_explicit(&v154->__shared_owners_, 1uLL, memory_order_relaxed);
          v156 = lessThan(v152, &v174);
          std::__shared_weak_count::__release_shared[abi:ne200100](v154);
          if (v153)
          {
            goto LABEL_306;
          }
        }

        else
        {
          v156 = lessThan(v152, &v174);
          if (v153)
          {
LABEL_306:
            std::__shared_weak_count::__release_shared[abi:ne200100](v153);
          }
        }

        if (!v156)
        {
LABEL_322:
          a1 = v151;
          v150 = v151 + 16;
          if (v151 + 16 == v155)
          {
            return;
          }

          continue;
        }

        break;
      }

      v157 = *v151;
      v158 = *(a1 + 24);
      v159 = v151;
      *v151 = 0;
      *(v151 + 8) = 0;
      while (2)
      {
        v160 = *(v159 - 16);
        *(v159 - 16) = 0;
        *(v159 - 8) = 0;
        v161 = *(v159 + 8);
        *v159 = v160;
        if (v161)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v161);
        }

        if (v158)
        {
          atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v174 = *(v159 - 32);
        v162 = *(v159 - 24);
        v175 = v162;
        if (v162)
        {
          atomic_fetch_add_explicit(&v162->__shared_owners_, 1uLL, memory_order_relaxed);
          v163 = lessThan(v157, &v174);
          std::__shared_weak_count::__release_shared[abi:ne200100](v162);
          if (v158)
          {
            goto LABEL_315;
          }
        }

        else
        {
          v163 = lessThan(v157, &v174);
          if (v158)
          {
LABEL_315:
            std::__shared_weak_count::__release_shared[abi:ne200100](v158);
          }
        }

        v159 -= 16;
        if (!v163)
        {
          v164 = *(v159 + 8);
          *v159 = v157;
          *(v159 + 8) = v158;
          v155 = a2;
          if (v164)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v164);
          }

          goto LABEL_322;
        }

        continue;
      }
    }

    if (!a3)
    {
      break;
    }

    v9 = v7;
    v10 = (v7 + 16 * (v8 >> 1));
    if (v8 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>*,0>(a1 + 16 * (v8 >> 1), a1, v166);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>*,0>(a1, a1 + 16 * (v8 >> 1), v166);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>*,0>(a1 + 16, (v10 - 1), a2 - 32);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>*,0>(a1 + 32, a1 + 16 + 16 * (v8 >> 1), a2 - 48);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>*,0>((v10 - 1), a1 + 16 * (v8 >> 1), a1 + 16 + 16 * (v8 >> 1));
      v11 = *a1;
      *a1 = *v10;
      *v10 = v11;
    }

    --a3;
    if (a4)
    {
      goto LABEL_21;
    }

    v12 = *(a1 - 16);
    v13 = *(a1 - 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *(a1 + 8);
    v174 = *a1;
    v175 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = lessThan(v12, &v174);
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      if (!v13)
      {
        goto LABEL_20;
      }

LABEL_19:
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      goto LABEL_20;
    }

    v15 = lessThan(v12, &v174);
    if (v13)
    {
      goto LABEL_19;
    }

LABEL_20:
    if (v15)
    {
LABEL_21:
      v16 = *a1;
      v17 = *(a1 + 8);
      *a1 = 0;
      *(a1 + 8) = 0;
      do
      {
        v18 = *(v9 + 16);
        v19 = *(v9 + 24);
        v9 += 16;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v174 = v16;
        v175 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          v20 = lessThan(v18, &v174);
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          if (!v19)
          {
            continue;
          }

LABEL_26:
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          continue;
        }

        v20 = lessThan(v18, &v174);
        if (v19)
        {
          goto LABEL_26;
        }
      }

      while (v20);
      v171 = a3;
      v21 = v6;
      if (v9 - 16 != a1)
      {
        while (1)
        {
          v22 = *(v21 - 2);
          v23 = *(v21 - 1);
          v21 -= 2;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v174 = v16;
          v175 = v17;
          if (!v17)
          {
            break;
          }

          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          v24 = lessThan(v22, &v174);
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          if (v23)
          {
            goto LABEL_36;
          }

LABEL_37:
          if (v24)
          {
            goto LABEL_52;
          }
        }

        v24 = lessThan(v22, &v174);
        if (!v23)
        {
          goto LABEL_37;
        }

LABEL_36:
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        goto LABEL_37;
      }

      v21 = v6;
      while (2)
      {
        if (v9 < v21)
        {
          v25 = *(v21 - 2);
          v26 = *(v21 - 1);
          v21 -= 2;
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v174 = v16;
          v175 = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            v27 = lessThan(v25, &v174);
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            if (v26)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v27 = lessThan(v25, &v174);
            if (v26)
            {
LABEL_47:
              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
            }
          }

          if (v27)
          {
            break;
          }

          continue;
        }

        break;
      }

LABEL_52:
      v7 = v9;
      if (v9 < v21)
      {
        v28 = v21;
        do
        {
          v29 = *v7;
          *v7 = *v28;
          *v28 = v29;
          v30 = *(v7 + 8);
          *(v7 + 8) = v28[1];
          v28[1] = v30;
          do
          {
            v31 = *(v7 + 16);
            v32 = *(v7 + 24);
            v7 += 16;
            if (v32)
            {
              atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v174 = v16;
            v175 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
              v33 = lessThan(v31, &v174);
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              if (!v32)
              {
                continue;
              }

LABEL_59:
              std::__shared_weak_count::__release_shared[abi:ne200100](v32);
              continue;
            }

            v33 = lessThan(v31, &v174);
            if (v32)
            {
              goto LABEL_59;
            }
          }

          while (v33);
          do
          {
            v35 = *(v28 - 2);
            v36 = *(v28 - 1);
            v28 -= 2;
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v174 = v16;
            v175 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
              v34 = lessThan(v35, &v174);
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              if (!v36)
              {
                continue;
              }

LABEL_70:
              std::__shared_weak_count::__release_shared[abi:ne200100](v36);
              continue;
            }

            v34 = lessThan(v35, &v174);
            if (v36)
            {
              goto LABEL_70;
            }
          }

          while (!v34);
        }

        while (v7 < v28);
      }

      v37 = (v7 - 16);
      if (v7 - 16 != a1)
      {
        v38 = *v37;
        *v37 = 0;
        *(v7 - 8) = 0;
        v39 = *(a1 + 8);
        *a1 = v38;
        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }
      }

      v40 = *(v7 - 8);
      *(v7 - 16) = v16;
      *(v7 - 8) = v17;
      v6 = a2;
      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      v41 = v9 >= v21;
      a3 = v171;
      if (v41)
      {
        v42 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>*>(a1, v7 - 16);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>*>(v7, a2))
        {
          a2 = v7 - 16;
          if (v42)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v42)
        {
          goto LABEL_82;
        }
      }

      else
      {
LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>*,false>(a1, v7 - 16, v171, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v44 = *a1;
      v43 = *(a1 + 8);
      *a1 = 0;
      *(a1 + 8) = 0;
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v174 = *(v6 - 16);
      v45 = *(v6 - 8);
      v175 = v45;
      if (!v45)
      {
        v46 = lessThan(v44, &v174);
        if (!v43)
        {
          goto LABEL_90;
        }

LABEL_89:
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        goto LABEL_90;
      }

      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      v46 = lessThan(v44, &v174);
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      if (v43)
      {
        goto LABEL_89;
      }

LABEL_90:
      if (v46)
      {
        v7 = a1;
        while (1)
        {
          if (v43)
          {
            atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v47 = *(v7 + 24);
          v174 = *(v7 + 16);
          v175 = v47;
          if (!v47)
          {
            break;
          }

          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          v48 = lessThan(v44, &v174);
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
          if (v43)
          {
            goto LABEL_96;
          }

LABEL_97:
          v7 += 16;
          if (v48)
          {
            goto LABEL_112;
          }
        }

        v48 = lessThan(v44, &v174);
        if (!v43)
        {
          goto LABEL_97;
        }

LABEL_96:
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        goto LABEL_97;
      }

      v49 = a1 + 16;
      do
      {
        v7 = v49;
        if (v49 >= a2)
        {
          break;
        }

        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v174 = *v49;
        v50 = *(v49 + 8);
        v175 = v50;
        if (!v50)
        {
          v51 = lessThan(v44, &v174);
          if (!v43)
          {
            goto LABEL_108;
          }

LABEL_107:
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
          goto LABEL_108;
        }

        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        v51 = lessThan(v44, &v174);
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        if (v43)
        {
          goto LABEL_107;
        }

LABEL_108:
        v49 = v7 + 16;
      }

      while (!v51);
LABEL_112:
      v52 = a2;
      if (v7 < a2)
      {
        v52 = a2;
        while (1)
        {
          if (v43)
          {
            atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v174 = *(v52 - 2);
          v53 = *(v52 - 1);
          v175 = v53;
          if (!v53)
          {
            break;
          }

          atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
          v54 = lessThan(v44, &v174);
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
          if (v43)
          {
            goto LABEL_118;
          }

LABEL_119:
          v52 -= 2;
          if (!v54)
          {
            goto LABEL_141;
          }
        }

        v54 = lessThan(v44, &v174);
        if (!v43)
        {
          goto LABEL_119;
        }

LABEL_118:
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        goto LABEL_119;
      }

LABEL_141:
      if (v7 < v52)
      {
        v55 = *v7;
        *v7 = *v52;
        *v52 = v55;
        v56 = *(v7 + 8);
        *(v7 + 8) = v52[1];
        v52[1] = v56;
        while (1)
        {
          if (v43)
          {
            atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v57 = *(v7 + 24);
          v174 = *(v7 + 16);
          v175 = v57;
          if (!v57)
          {
            break;
          }

          atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
          v58 = lessThan(v44, &v174);
          std::__shared_weak_count::__release_shared[abi:ne200100](v57);
          if (v43)
          {
            goto LABEL_128;
          }

LABEL_129:
          v7 += 16;
          if (v58)
          {
            while (1)
            {
              if (v43)
              {
                atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v174 = *(v52 - 2);
              v60 = *(v52 - 1);
              v175 = v60;
              if (!v60)
              {
                break;
              }

              atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
              v59 = lessThan(v44, &v174);
              std::__shared_weak_count::__release_shared[abi:ne200100](v60);
              if (v43)
              {
                goto LABEL_139;
              }

LABEL_140:
              v52 -= 2;
              if (!v59)
              {
                goto LABEL_141;
              }
            }

            v59 = lessThan(v44, &v174);
            if (!v43)
            {
              goto LABEL_140;
            }

LABEL_139:
            std::__shared_weak_count::__release_shared[abi:ne200100](v43);
            goto LABEL_140;
          }
        }

        v58 = lessThan(v44, &v174);
        if (!v43)
        {
          goto LABEL_129;
        }

LABEL_128:
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        goto LABEL_129;
      }

      v61 = (v7 - 16);
      v6 = a2;
      if (v7 - 16 != a1)
      {
        v62 = *v61;
        *v61 = 0;
        *(v7 - 8) = 0;
        v63 = *(a1 + 8);
        *a1 = v62;
        if (v63)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v63);
        }
      }

      a4 = 0;
      v64 = *(v7 - 8);
      *(v7 - 16) = v44;
      *(v7 - 8) = v43;
      if (v64)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        a4 = 0;
      }
    }
  }

  if (v7 == v6)
  {
    return;
  }

  v88 = (v8 - 2) >> 1;
  v89 = v88;
  v172 = a1;
  do
  {
    v90 = v89;
    if (v88 < v89)
    {
      goto LABEL_243;
    }

    v165 = v89;
    v91 = (2 * v89) | 1;
    v92 = a1 + 16 * v91;
    v93 = 2 * v89 + 2;
    if (v93 < v8)
    {
      v94 = *v92;
      v95 = *(v92 + 8);
      if (v95)
      {
        atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v174 = *(v92 + 16);
      v96 = *(v92 + 24);
      v175 = v96;
      if (v96)
      {
        atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
        v97 = lessThan(v94, &v174);
        std::__shared_weak_count::__release_shared[abi:ne200100](v96);
        if (!v95)
        {
LABEL_206:
          if (v97)
          {
            v92 += 16;
            v91 = v93;
          }

          a1 = v172;
          goto LABEL_209;
        }
      }

      else
      {
        v97 = lessThan(v94, &v174);
        if (!v95)
        {
          goto LABEL_206;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v95);
      goto LABEL_206;
    }

LABEL_209:
    v98 = *v92;
    v99 = *(v92 + 8);
    v90 = v165;
    if (v99)
    {
      atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v100 = (a1 + 16 * v165);
    v174 = *v100;
    v101 = v100[1];
    v175 = v101;
    if (!v101)
    {
      v102 = lessThan(v98, &v174);
      if (!v99)
      {
        goto LABEL_214;
      }

LABEL_213:
      std::__shared_weak_count::__release_shared[abi:ne200100](v99);
      goto LABEL_214;
    }

    atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
    v102 = lessThan(v98, &v174);
    std::__shared_weak_count::__release_shared[abi:ne200100](v101);
    if (v99)
    {
      goto LABEL_213;
    }

LABEL_214:
    if (v102)
    {
      goto LABEL_243;
    }

    v103 = v100[1];
    v169 = *v100;
    *v100 = 0;
    v100[1] = 0;
    do
    {
      v104 = v92;
      v105 = *v92;
      *v92 = 0;
      *(v92 + 8) = 0;
      v106 = v100[1];
      *v100 = v105;
      if (v106)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v106);
      }

      if (v88 < v91)
      {
        break;
      }

      v107 = (2 * v91) | 1;
      v92 = a1 + 16 * v107;
      v108 = 2 * v91 + 2;
      if (v108 >= v8)
      {
        v91 = (2 * v91) | 1;
        goto LABEL_230;
      }

      v109 = *v92;
      v110 = *(v92 + 8);
      if (v110)
      {
        atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v174 = *(v92 + 16);
      v111 = *(v92 + 24);
      v175 = v111;
      if (!v111)
      {
        v112 = lessThan(v109, &v174);
        if (!v110)
        {
          goto LABEL_225;
        }

LABEL_224:
        std::__shared_weak_count::__release_shared[abi:ne200100](v110);
        goto LABEL_225;
      }

      atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
      v112 = lessThan(v109, &v174);
      std::__shared_weak_count::__release_shared[abi:ne200100](v111);
      if (v110)
      {
        goto LABEL_224;
      }

LABEL_225:
      if (v112)
      {
        v92 += 16;
        v91 = v108;
      }

      else
      {
        v91 = v107;
      }

      v88 = (v8 - 2) >> 1;
LABEL_230:
      v113 = *v92;
      v114 = *(v92 + 8);
      a1 = v172;
      if (v114)
      {
        atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v174 = v169;
      v175 = v103;
      if (!v103)
      {
        v115 = lessThan(v113, &v174);
        if (!v114)
        {
          goto LABEL_235;
        }

LABEL_234:
        std::__shared_weak_count::__release_shared[abi:ne200100](v114);
        goto LABEL_235;
      }

      atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
      v115 = lessThan(v113, &v174);
      std::__shared_weak_count::__release_shared[abi:ne200100](v103);
      if (v114)
      {
        goto LABEL_234;
      }

LABEL_235:
      v100 = v104;
    }

    while (!v115);
    v116 = v104[1];
    *v104 = v169;
    v104[1] = v103;
    v90 = v165;
    if (v116)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v116);
    }

LABEL_243:
    v89 = v90 - 1;
  }

  while (v90);
  while (2)
  {
    if (v8 < 2)
    {
      goto LABEL_298;
    }

    v119 = a1;
    v120 = 0;
    v167 = *v119;
    v170 = v119[1];
    v121 = v119;
    *v119 = 0;
    v119[1] = 0;
    while (2)
    {
      v122 = &v121[2 * v120];
      v123 = v122 + 2;
      v124 = (2 * v120) | 1;
      v120 = 2 * v120 + 2;
      if (v120 >= v8)
      {
        v120 = v124;
      }

      else
      {
        v125 = v122[2];
        v126 = v122[3];
        if (v126)
        {
          atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v174 = v122[4];
        v127 = v122[5];
        v175 = v127;
        if (v127)
        {
          atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
          v128 = lessThan(v125, &v174);
          std::__shared_weak_count::__release_shared[abi:ne200100](v127);
          if (v126)
          {
            goto LABEL_260;
          }
        }

        else
        {
          v128 = lessThan(v125, &v174);
          if (v126)
          {
LABEL_260:
            std::__shared_weak_count::__release_shared[abi:ne200100](v126);
          }
        }

        if (v128)
        {
          v123 = v122 + 4;
        }

        else
        {
          v120 = v124;
        }
      }

      v129 = *v123;
      *v123 = 0;
      v123[1] = 0;
      v130 = v121[1];
      *v121 = v129;
      if (v130)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v130);
      }

      v121 = v123;
      if (v120 <= ((v8 - 2) >> 1))
      {
        continue;
      }

      break;
    }

    if (v123 == (a2 - 16))
    {
      v117 = v123[1];
      *v123 = v167;
      v123[1] = v170;
      a1 = v172;
      if (!v117)
      {
        goto LABEL_298;
      }

      goto LABEL_297;
    }

    v131 = *(a2 - 16);
    *(a2 - 16) = 0;
    *(a2 - 8) = 0;
    v132 = v123[1];
    *v123 = v131;
    if (v132)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v132);
    }

    v133 = *(a2 - 8);
    *(a2 - 16) = v167;
    *(a2 - 8) = v170;
    if (v133)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v133);
    }

    a1 = v172;
    v134 = (v123 - v172 + 16) >> 4;
    v135 = v134 < 2;
    v136 = v134 - 2;
    if (!v135)
    {
      v137 = v136 >> 1;
      v138 = v172 + 16 * (v136 >> 1);
      v139 = *v138;
      v140 = *(v138 + 8);
      if (v140)
      {
        atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v141 = v123[1];
      v174 = *v123;
      v175 = v141;
      if (v141)
      {
        atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
        v118 = lessThan(v139, &v174);
        std::__shared_weak_count::__release_shared[abi:ne200100](v141);
        if (v140)
        {
LABEL_281:
          std::__shared_weak_count::__release_shared[abi:ne200100](v140);
        }
      }

      else
      {
        v118 = lessThan(v139, &v174);
        if (v140)
        {
          goto LABEL_281;
        }
      }

      if (!v118)
      {
        goto LABEL_298;
      }

      v143 = *v123;
      v142 = v123[1];
      *v123 = 0;
      v123[1] = 0;
      while (2)
      {
        v144 = v138;
        v145 = *v138;
        *v138 = 0;
        *(v138 + 8) = 0;
        v146 = v123[1];
        *v123 = v145;
        if (v146)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v146);
        }

        if (!v137)
        {
LABEL_249:
          v117 = v144[1];
          *v144 = v143;
          v144[1] = v142;
          if (!v117)
          {
            break;
          }

LABEL_297:
          std::__shared_weak_count::__release_shared[abi:ne200100](v117);
          break;
        }

        v137 = (v137 - 1) >> 1;
        v138 = v172 + 16 * v137;
        v147 = *v138;
        v148 = *(v138 + 8);
        if (v148)
        {
          atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v174 = v143;
        v175 = v142;
        if (v142)
        {
          atomic_fetch_add_explicit(&v142->__shared_owners_, 1uLL, memory_order_relaxed);
          v149 = lessThan(v147, &v174);
          std::__shared_weak_count::__release_shared[abi:ne200100](v142);
          if (v148)
          {
            goto LABEL_291;
          }
        }

        else
        {
          v149 = lessThan(v147, &v174);
          if (v148)
          {
LABEL_291:
            std::__shared_weak_count::__release_shared[abi:ne200100](v148);
          }
        }

        v123 = v144;
        if (!v149)
        {
          goto LABEL_249;
        }

        continue;
      }
    }

LABEL_298:
    a2 -= 16;
    v135 = v8-- > 2;
    if (v135)
    {
      continue;
    }

    break;
  }
}

void std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>*,false>(uint64_t **a1, uint64_t **a2, uint64_t a3, char a4)
{
LABEL_1:
  v228 = (a2 - 4);
  v229 = (a2 - 2);
  v227 = (a2 - 6);
  v7 = a1;
  v235 = a2;
  while (1)
  {
    a1 = v7;
    v8 = (a2 - v7) >> 4;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>*,0>(v7, v7 + 16, v229);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>*,0>(v7, (v7 + 16), (v7 + 32), v229);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>*,0>(v7, v7 + 16, v7 + 32, (v7 + 48), v229);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *(a2 - 1);
        if (v89)
        {
          atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v91 = *v7;
        v90 = *(v7 + 8);
        if (v90)
        {
          atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v92 = 0;
        if (v88 && v91)
        {
          v93 = *v88;
          v92 = v93 && (v94 = *v91) != 0 && *(v93 + 12) < *(v94 + 12);
        }

        if (v90)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v90);
        }

        if (v89)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v89);
        }

        if (v92)
        {
          v225 = *v7;
          *v7 = *(v235 - 16);
          *(v235 - 16) = v225;
          v226 = *(v7 + 8);
          *(v7 + 8) = *(v235 - 8);
          *(v235 - 8) = v226;
        }

        return;
      }
    }

    if (v8 <= 23)
    {
      v95 = (v7 + 16);
      v97 = v7 == a2 || v95 == a2;
      if (a4)
      {
        if (v97)
        {
          return;
        }

        v98 = 0;
        v99 = v7;
        while (1)
        {
          v100 = v99;
          v99 = v95;
          v101 = v100[2];
          v102 = v100[3];
          if (v102)
          {
            atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v104 = *v100;
          v103 = v100[1];
          if (v103)
          {
            atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v101 && v104 != 0)
          {
            v106 = *v101;
            if (v106)
            {
              v107 = *v104;
              if (v107)
              {
                break;
              }
            }
          }

          v108 = 0;
          if (v103)
          {
            goto LABEL_283;
          }

LABEL_284:
          if (v102)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v102);
          }

          if (!v108)
          {
            goto LABEL_311;
          }

          v109 = *v99;
          v110 = v100[3];
          v111 = v98;
          *v99 = 0;
          v99[1] = 0;
          do
          {
            v112 = a1 + v111;
            v113 = *(a1 + v111);
            *v112 = 0;
            *(v112 + 1) = 0;
            v114 = *(a1 + v111 + 24);
            *(v112 + 1) = v113;
            if (v114)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v114);
            }

            if (!v111)
            {
              v119 = a1;
              goto LABEL_309;
            }

            if (v110)
            {
              atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v116 = *(a1 + v111 - 16);
            v115 = *(a1 + v111 - 8);
            if (v115)
            {
              atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v117 = 0;
            if (!v109 || !v116)
            {
              goto LABEL_300;
            }

            if (*v109)
            {
              v118 = *v116;
              if (v118)
              {
                v117 = *(*v109 + 12) < *(v118 + 12);
LABEL_300:
                if (!v115)
                {
                  goto LABEL_302;
                }

LABEL_301:
                std::__shared_weak_count::__release_shared[abi:ne200100](v115);
                goto LABEL_302;
              }
            }

            v117 = 0;
            if (v115)
            {
              goto LABEL_301;
            }

LABEL_302:
            if (v110)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v110);
            }

            v111 -= 16;
          }

          while (v117);
          v119 = (a1 + v111 + 16);
LABEL_309:
          v120 = v119[1];
          *v119 = v109;
          v119[1] = v110;
          if (v120)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v120);
          }

LABEL_311:
          v95 = v99 + 2;
          v98 += 16;
          if (v99 + 2 == v235)
          {
            return;
          }
        }

        v108 = *(v106 + 12) < *(v107 + 12);
        if (!v103)
        {
          goto LABEL_284;
        }

LABEL_283:
        std::__shared_weak_count::__release_shared[abi:ne200100](v103);
        goto LABEL_284;
      }

      if (v97)
      {
        return;
      }

LABEL_475:
      v206 = a1;
      a1 = v95;
      v207 = v206[2];
      v208 = v206[3];
      if (v208)
      {
        atomic_fetch_add_explicit(&v208->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v210 = *v206;
      v209 = v206[1];
      if (v209)
      {
        atomic_fetch_add_explicit(&v209->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v207)
      {
        v211 = v210 == 0;
      }

      else
      {
        v211 = 1;
      }

      if (!v211 && (v212 = *v207) != 0 && (v213 = *v210) != 0)
      {
        v214 = *(v212 + 12) < *(v213 + 12);
        if (!v209)
        {
LABEL_489:
          if (v208)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v208);
          }

          if (!v214)
          {
            goto LABEL_514;
          }

          v215 = *a1;
          v216 = v206[3];
          v217 = a1;
          *a1 = 0;
          a1[1] = 0;
          while (1)
          {
            v218 = *(v217 - 1);
            *(v217 - 2) = 0;
            *(v217 - 1) = 0;
            v219 = v217[1];
            *v217 = v218;
            if (v219)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v219);
            }

            if (v216)
            {
              atomic_fetch_add_explicit(&v216->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v221 = *(v217 - 4);
            v220 = *(v217 - 3);
            if (v220)
            {
              atomic_fetch_add_explicit(&v220->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v222 = 0;
            if (v215 && v221)
            {
              if (!*v215 || (v223 = *v221) == 0)
              {
                v222 = 0;
                if (!v220)
                {
                  goto LABEL_506;
                }

LABEL_505:
                std::__shared_weak_count::__release_shared[abi:ne200100](v220);
                goto LABEL_506;
              }

              v222 = *(*v215 + 12) < *(v223 + 12);
            }

            if (v220)
            {
              goto LABEL_505;
            }

LABEL_506:
            if (v216)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v216);
            }

            v217 -= 2;
            if (!v222)
            {
              v224 = v217[1];
              *v217 = v215;
              v217[1] = v216;
              if (v224)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v224);
              }

LABEL_514:
              v95 = a1 + 2;
              if (a1 + 2 == v235)
              {
                return;
              }

              goto LABEL_475;
            }
          }
        }
      }

      else
      {
        v214 = 0;
        if (!v209)
        {
          goto LABEL_489;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v209);
      goto LABEL_489;
    }

    if (!a3)
    {
      break;
    }

    v9 = (v7 + 16 * (v8 >> 1));
    if (v8 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>*,0>(&a1[2 * (v8 >> 1)], a1, v229);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>*,0>(a1, &a1[2 * (v8 >> 1)], v229);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>*,0>((a1 + 2), (v9 - 1), v228);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>*,0>((a1 + 4), &a1[2 * (v8 >> 1) + 2], v227);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>*,0>((v9 - 1), &a1[2 * (v8 >> 1)], &a1[2 * (v8 >> 1) + 2]);
      v10 = *a1;
      *a1 = *v9;
      *v9 = v10;
    }

    --a3;
    if (a4)
    {
      v11 = *a1;
LABEL_31:
      v19 = a1[1];
      v20 = a1;
      *a1 = 0;
      a1[1] = 0;
      do
      {
        v21 = v20[2];
        v22 = v20[3];
        v20 += 2;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v21)
        {
          v23 = v11 == 0;
        }

        else
        {
          v23 = 1;
        }

        if (v23 || (v24 = *v21) == 0 || !*v11)
        {
          v25 = 0;
          if (!v19)
          {
            goto LABEL_46;
          }

LABEL_45:
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          goto LABEL_46;
        }

        v25 = *(v24 + 12) < *(*v11 + 12);
        if (v19)
        {
          goto LABEL_45;
        }

LABEL_46:
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }

      while (v25);
      v233 = a3;
      v26 = a2;
      if (v20 - 2 != a1)
      {
        while (1)
        {
          v27 = *(v26 - 2);
          v28 = *(v26 - 1);
          v26 -= 2;
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v27 && v11 != 0)
          {
            v30 = *v27;
            if (v30)
            {
              if (*v11)
              {
                break;
              }
            }
          }

          v31 = 0;
          if (v19)
          {
            goto LABEL_63;
          }

LABEL_64:
          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          if (v31)
          {
            goto LABEL_67;
          }
        }

        v31 = *(v30 + 12) < *(*v11 + 12);
        if (!v19)
        {
          goto LABEL_64;
        }

LABEL_63:
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        goto LABEL_64;
      }

      v26 = a2;
      while (2)
      {
        if (v20 < v26)
        {
          v51 = *(v26 - 2);
          v52 = *(v26 - 1);
          v26 -= 2;
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v53 = 0;
          if (v51 && v11)
          {
            v54 = *v51;
            if (v54 && *v11)
            {
              v53 = *(v54 + 12) < *(*v11 + 12);
              goto LABEL_126;
            }

            v53 = 0;
            if (!v19)
            {
LABEL_128:
              if (v52)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v52);
              }

              if (v53)
              {
                break;
              }

              continue;
            }
          }

          else
          {
LABEL_126:
            if (!v19)
            {
              goto LABEL_128;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          goto LABEL_128;
        }

        break;
      }

LABEL_67:
      v7 = v20;
      if (v20 < v26)
      {
        v32 = v26;
        do
        {
          v33 = *v7;
          *v7 = *v32;
          *v32 = v33;
          v34 = *(v7 + 8);
          *(v7 + 8) = v32[1];
          v32[1] = v34;
          do
          {
            v35 = *(v7 + 16);
            v36 = *(v7 + 24);
            v7 += 16;
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v35)
            {
              v37 = v11 == 0;
            }

            else
            {
              v37 = 1;
            }

            if (v37 || (v38 = *v35) == 0 || !*v11)
            {
              v39 = 0;
              if (!v19)
              {
                goto LABEL_84;
              }

LABEL_83:
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              goto LABEL_84;
            }

            v39 = *(v38 + 12) < *(*v11 + 12);
            if (v19)
            {
              goto LABEL_83;
            }

LABEL_84:
            if (v36)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v36);
            }
          }

          while (v39);
          do
          {
            v40 = *(v32 - 2);
            v41 = *(v32 - 1);
            v32 -= 2;
            if (v41)
            {
              atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v40)
            {
              v42 = v11 == 0;
            }

            else
            {
              v42 = 1;
            }

            if (v42 || (v43 = *v40) == 0 || !*v11)
            {
              v44 = 0;
              if (!v19)
              {
                goto LABEL_101;
              }

LABEL_100:
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              goto LABEL_101;
            }

            v44 = *(v43 + 12) < *(*v11 + 12);
            if (v19)
            {
              goto LABEL_100;
            }

LABEL_101:
            if (v41)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v41);
            }
          }

          while (!v44);
        }

        while (v7 < v32);
      }

      v45 = (v7 - 16);
      if ((v7 - 16) != a1)
      {
        v46 = *v45;
        *v45 = 0;
        *(v7 - 8) = 0;
        v47 = a1[1];
        *a1 = v46;
        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }
      }

      v48 = *(v7 - 8);
      *(v7 - 16) = v11;
      *(v7 - 8) = v19;
      a2 = v235;
      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }

      v49 = v20 >= v26;
      a3 = v233;
      if (v49)
      {
        v50 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>*>(a1, v7 - 16);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>*>(v7, v235))
        {
          a2 = (v7 - 16);
          if (v50)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v50)
        {
          goto LABEL_114;
        }
      }

      else
      {
LABEL_114:
        std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataBlockFormat,AudioMetadataTimeline::Node<AudioMetadataChannelFormat,AudioMetadataTimeline::Node<AudioMetadataPackFormat,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>*,false>(a1, v7 - 16, v233, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v12 = *(a1 - 2);
      v13 = *(a1 - 1);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *a1;
      v14 = a1[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = 0;
      if (v12 && v15)
      {
        v17 = *v12;
        v16 = v17 && (v18 = *v15) != 0 && *(v17 + 12) < *(v18 + 12);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v11 = *a1;
      if (v16)
      {
        goto LABEL_31;
      }

      v55 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v57 = *(a2 - 2);
      v56 = *(a2 - 1);
      if (v56)
      {
        atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v58 = 0;
      if (v11 && v57)
      {
        v58 = *v11 && (v59 = *v57) != 0 && *(*v11 + 12) < *(v59 + 12);
      }

      if (v56)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v56);
      }

      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v55);
      }

      if (v58)
      {
        v7 = a1;
        do
        {
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v61 = *(v7 + 16);
          v60 = *(v7 + 24);
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v62 = 0;
          if (v11 && v61)
          {
            v62 = *v11 && (v63 = *v61) != 0 && *(*v11 + 12) < *(v63 + 12);
          }

          if (v60)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v60);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v7 += 16;
        }

        while (!v62);
      }

      else
      {
        v64 = a1 + 2;
        do
        {
          v7 = v64;
          if (v64 >= a2)
          {
            break;
          }

          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v66 = *v64;
          v65 = *(v7 + 8);
          if (v65)
          {
            atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v67 = 0;
          if (v11 && v66)
          {
            v67 = *v11 && (v68 = *v66) != 0 && *(*v11 + 12) < *(v68 + 12);
          }

          if (v65)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v64 = (v7 + 16);
        }

        while (!v67);
      }

      v69 = a2;
      if (v7 < a2)
      {
        v69 = a2;
        do
        {
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v71 = *(v69 - 2);
          v70 = *(v69 - 1);
          if (v70)
          {
            atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v72 = 0;
          if (v11 && v71)
          {
            v72 = *v11 && (v73 = *v71) != 0 && *(*v11 + 12) < *(v73 + 12);
          }

          if (v70)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v70);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v69 -= 2;
        }

        while (v72);
      }

LABEL_235:
      if (v7 < v69)
      {
        v74 = *v7;
        *v7 = *v69;
        *v69 = v74;
        v75 = *(v7 + 8);
        *(v7 + 8) = v69[1];
        v69[1] = v75;
        while (1)
        {
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v77 = *(v7 + 16);
          v76 = *(v7 + 24);
          if (v76)
          {
            atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v78 = 0;
          if (v11 && v77)
          {
            if (!*v11 || (v79 = *v77) == 0)
            {
              v78 = 0;
              if (!v76)
              {
                goto LABEL_213;
              }

LABEL_212:
              std::__shared_weak_count::__release_shared[abi:ne200100](v76);
              goto LABEL_213;
            }

            v78 = *(*v11 + 12) < *(v79 + 12);
          }

          if (v76)
          {
            goto LABEL_212;
          }

LABEL_213:
          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v7 += 16;
          if (v78)
          {
            while (1)
            {
              if (v55)
              {
                atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v82 = *(v69 - 2);
              v81 = *(v69 - 1);
              if (v81)
              {
                atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v80 = 0;
              if (v11 && v82)
              {
                if (!*v11 || (v83 = *v82) == 0)
                {
                  v80 = 0;
                  if (!v81)
                  {
                    goto LABEL_232;
                  }

LABEL_231:
                  std::__shared_weak_count::__release_shared[abi:ne200100](v81);
                  goto LABEL_232;
                }

                v80 = *(*v11 + 12) < *(v83 + 12);
              }

              if (v81)
              {
                goto LABEL_231;
              }

LABEL_232:
              if (v55)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v55);
              }

              v69 -= 2;
              if (!v80)
              {
                goto LABEL_235;
              }
            }
          }
        }
      }

      v84 = (v7 - 16);
      if ((v7 - 16) != a1)
      {
        v85 = *v84;
        *v84 = 0;
        *(v7 - 8) = 0;
        v86 = a1[1];
        *a1 = v85;
        if (v86)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v86);
        }
      }

      a4 = 0;
      v87 = *(v7 - 8);
      *(v7 - 16) = v11;
      *(v7 - 8) = v55;
      if (v87)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v87);
        a4 = 0;
      }
    }
  }

  if (v7 == a2)
  {
    return;
  }

  v121 = (v8 - 2) >> 1;
  v122 = v121;
  do
  {
    v123 = v122;
    if (v121 < v122)
    {
      goto LABEL_397;
    }

    v124 = (2 * v122) | 1;
    v125 = &a1[2 * v124];
    if (2 * v122 + 2 < v8)
    {
      v126 = *v125;
      v127 = v125[1];
      if (v127)
      {
        atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v129 = v125[2];
      v128 = v125[3];
      if (v128)
      {
        atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v126)
      {
        v130 = v129 == 0;
      }

      else
      {
        v130 = 1;
      }

      if (!v130 && (v131 = *v126) != 0 && (v132 = *v129) != 0)
      {
        v133 = *(v131 + 12) < *(v132 + 12);
        if (!v128)
        {
          goto LABEL_331;
        }
      }

      else
      {
        v133 = 0;
        if (!v128)
        {
LABEL_331:
          if (v127)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v127);
          }

          if (v133)
          {
            v125 += 2;
            v124 = 2 * v123 + 2;
          }

          goto LABEL_335;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v128);
      goto LABEL_331;
    }

LABEL_335:
    v134 = *v125;
    v135 = v125[1];
    if (v135)
    {
      atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v136 = &a1[2 * v123];
    v138 = *v136;
    v137 = v136[1];
    if (v137)
    {
      atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v134)
    {
      v139 = v138 == 0;
    }

    else
    {
      v139 = 1;
    }

    if (v139 || (v140 = *v134) == 0 || (v141 = *v138) == 0)
    {
      v142 = 0;
      if (!v137)
      {
        goto LABEL_349;
      }

LABEL_348:
      std::__shared_weak_count::__release_shared[abi:ne200100](v137);
      goto LABEL_349;
    }

    v142 = *(v140 + 12) < *(v141 + 12);
    if (v137)
    {
      goto LABEL_348;
    }

LABEL_349:
    if (v135)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v135);
    }

    a2 = v235;
    if (!v142)
    {
      v231 = v123;
      v144 = *v136;
      v143 = v136[1];
      *v136 = 0;
      v136[1] = 0;
      while (1)
      {
        v145 = v125;
        v146 = *v125;
        *v125 = 0;
        v125[1] = 0;
        v147 = v136[1];
        *v136 = v146;
        if (v147)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v147);
        }

        if (v121 < v124)
        {
LABEL_395:
          v162 = v145[1];
          *v145 = v144;
          v145[1] = v143;
          a2 = v235;
          v123 = v231;
          if (v162)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v162);
          }

          goto LABEL_397;
        }

        v148 = (2 * v124) | 1;
        v125 = &a1[2 * v148];
        v124 = 2 * v124 + 2;
        if (v124 >= v8)
        {
          v124 = v148;
          goto LABEL_378;
        }

        v149 = *v125;
        v150 = v125[1];
        if (v150)
        {
          atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v152 = v125[2];
        v151 = v125[3];
        if (v151)
        {
          atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v149 && v152 != 0)
        {
          v154 = *v149;
          if (v154)
          {
            v155 = *v152;
            if (v155)
            {
              break;
            }
          }
        }

        v156 = 0;
        if (v151)
        {
          goto LABEL_371;
        }

LABEL_372:
        if (v150)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v150);
        }

        if (v156)
        {
          v125 += 2;
        }

        else
        {
          v124 = v148;
        }

        v121 = (v8 - 2) >> 1;
LABEL_378:
        v157 = *v125;
        v158 = v125[1];
        if (v158)
        {
          atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v143)
        {
          atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v157)
        {
          v159 = v144 == 0;
        }

        else
        {
          v159 = 1;
        }

        if (!v159)
        {
          v160 = *v157;
          if (v160)
          {
            if (*v144)
            {
              v161 = *(v160 + 12) < *(*v144 + 12);
              if (!v143)
              {
                goto LABEL_392;
              }

LABEL_391:
              std::__shared_weak_count::__release_shared[abi:ne200100](v143);
              goto LABEL_392;
            }
          }
        }

        v161 = 0;
        if (v143)
        {
          goto LABEL_391;
        }

LABEL_392:
        if (v158)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v158);
        }

        v136 = v145;
        if (v161)
        {
          goto LABEL_395;
        }
      }

      v156 = *(v154 + 12) < *(v155 + 12);
      if (!v151)
      {
        goto LABEL_372;
      }

LABEL_371:
      std::__shared_weak_count::__release_shared[abi:ne200100](v151);
      goto LABEL_372;
    }

LABEL_397:
    v122 = v123 - 1;
  }

  while (v123);
  do
  {
    if (v8 < 2)
    {
      goto LABEL_472;
    }

    v236 = a2;
    v163 = 0;
    v232 = *a1;
    v234 = a1[1];
    v164 = a1;
    *a1 = 0;
    a1[1] = 0;
    do
    {
      v165 = &v164[2 * v163];
      v166 = v165 + 2;
      v167 = (2 * v163) | 1;
      v168 = 2 * v163 + 2;
      if (v168 >= v8)
      {
        v163 = (2 * v163) | 1;
        goto LABEL_421;
      }

      v169 = v165[2];
      v170 = v165[3];
      if (v170)
      {
        atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v172 = v165[4];
      v171 = v165[5];
      if (v171)
      {
        atomic_fetch_add_explicit(&v171->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v169)
      {
        v173 = v172 == 0;
      }

      else
      {
        v173 = 1;
      }

      if (!v173)
      {
        v174 = *v169;
        if (v174)
        {
          v175 = *v172;
          if (v175)
          {
            v176 = *(v174 + 12) < *(v175 + 12);
            if (!v171)
            {
              goto LABEL_416;
            }

LABEL_415:
            std::__shared_weak_count::__release_shared[abi:ne200100](v171);
            goto LABEL_416;
          }
        }
      }

      v176 = 0;
      if (v171)
      {
        goto LABEL_415;
      }

LABEL_416:
      if (v170)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v170);
      }

      if (v176)
      {
        v166 = v165 + 4;
        v163 = v168;
      }

      else
      {
        v163 = v167;
      }

LABEL_421:
      v177 = *v166;
      *v166 = 0;
      v166[1] = 0;
      v178 = v164[1];
      *v164 = v177;
      if (v178)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v178);
      }

      v164 = v166;
    }

    while (v163 <= ((v8 - 2) >> 1));
    a2 = v236;
    if (v166 == v236 - 2)
    {
      v195 = v166[1];
      *v166 = v232;
      v166[1] = v234;
      if (v195)
      {
        goto LABEL_471;
      }

      goto LABEL_472;
    }

    v179 = *(v236 - 1);
    *(v236 - 2) = 0;
    *(v236 - 1) = 0;
    v180 = v166[1];
    *v166 = v179;
    if (v180)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v180);
    }

    v181 = *(v236 - 1);
    *(v236 - 2) = v232;
    *(v236 - 1) = v234;
    if (v181)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v181);
    }

    v182 = ((v166 + 2) - a1) >> 4;
    v183 = v182 < 2;
    v184 = v182 - 2;
    if (v183)
    {
      goto LABEL_472;
    }

    v185 = v184 >> 1;
    v186 = &a1[2 * (v184 >> 1)];
    v187 = *v186;
    v188 = v186[1];
    if (v188)
    {
      atomic_fetch_add_explicit(&v188->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v190 = *v166;
    v189 = v166[1];
    if (v189)
    {
      atomic_fetch_add_explicit(&v189->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v187)
    {
      v191 = v190 == 0;
    }

    else
    {
      v191 = 1;
    }

    if (v191 || (v192 = *v187) == 0 || (v193 = *v190) == 0)
    {
      v194 = 0;
      if (!v189)
      {
        goto LABEL_446;
      }

LABEL_445:
      std::__shared_weak_count::__release_shared[abi:ne200100](v189);
      goto LABEL_446;
    }

    v194 = *(v192 + 12) < *(v193 + 12);
    if (v189)
    {
      goto LABEL_445;
    }

LABEL_446:
    if (v188)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v188);
    }

    a2 = v236;
    if (!v194)
    {
      goto LABEL_472;
    }

    v196 = *v166;
    v197 = v166[1];
    *v166 = 0;
    v166[1] = 0;
    while (2)
    {
      v198 = v186;
      v199 = *v186;
      *v186 = 0;
      v186[1] = 0;
      v200 = v166[1];
      *v166 = v199;
      if (v200)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v200);
      }

      if (v185)
      {
        v185 = (v185 - 1) >> 1;
        v186 = &a1[2 * v185];
        v201 = *v186;
        v202 = v186[1];
        if (v202)
        {
          atomic_fetch_add_explicit(&v202->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v197)
        {
          atomic_fetch_add_explicit(&v197->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v201)
        {
          v203 = v196 == 0;
        }

        else
        {
          v203 = 1;
        }

        if (!v203 && (v204 = *v201) != 0 && *v196)
        {
          v205 = *(v204 + 12) < *(*v196 + 12);
          if (!v197)
          {
LABEL_467:
            if (v202)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v202);
            }

            v166 = v198;
            if (!v205)
            {
              break;
            }

            continue;
          }
        }

        else
        {
          v205 = 0;
          if (!v197)
          {
            goto LABEL_467;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v197);
        goto LABEL_467;
      }

      break;
    }

    v195 = v198[1];
    *v198 = v196;
    v198[1] = v197;
    a2 = v236;
    if (v195)
    {
LABEL_471:
      std::__shared_weak_count::__release_shared[abi:ne200100](v195);
    }

LABEL_472:
    a2 -= 2;
    v183 = v8-- > 2;
  }

  while (v183);
}