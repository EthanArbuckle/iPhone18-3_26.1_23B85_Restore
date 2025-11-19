void sub_18F5F578C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

void sub_18F5F586C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F5F5854);
}

uint64_t AudioFileObject::GetPropertyInfo(AudioFileObject *this, int a2, unsigned int *a3, unsigned int *a4)
{
  v15 = 0;
  result = 1886681407;
  if (a2 > 1835493730)
  {
    if (a2 <= 1886086769)
    {
      if (a2 > 1885564531)
      {
        if (a2 <= 1886085752)
        {
          if (a2 == 1885564532)
          {
            goto LABEL_83;
          }

          v11 = 1885957732;
          goto LABEL_71;
        }

        if (a2 == 1886085753)
        {
          goto LABEL_74;
        }

        v9 = 25712;
LABEL_70:
        v11 = v9 | 0x706B0000;
LABEL_71:
        if (a2 != v11)
        {
          goto LABEL_79;
        }

        goto LABEL_72;
      }

      if (a2 <= 1852403299)
      {
        if (a2 == 1835493731)
        {
          result = (*(*this + 336))(this, a3, &v15);
        }

        else if (a2 == 1835756659)
        {
          result = (*(*this + 360))(this, a3, &v15);
        }

        goto LABEL_79;
      }

      if (a2 == 1852403300)
      {
LABEL_72:
        if (!a3)
        {
          goto LABEL_77;
        }

        v13 = 16;
        goto LABEL_76;
      }

      if (a2 != 1869640813)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (a2 > 1886616164)
      {
        if (a2 <= 1920098671)
        {
          if (a2 != 1886616165)
          {
            if (a2 == 1919380595)
            {
              result = (*(*this + 384))(this, a3, &v15);
            }

            goto LABEL_79;
          }
        }

        else if (a2 != 1920098672)
        {
          if (a2 != 1935832164)
          {
            if (a2 == 1935893603)
            {
              result = (*(*this + 456))(this, a3, &v15);
            }

            goto LABEL_79;
          }

LABEL_29:
          if (!a3)
          {
            goto LABEL_91;
          }

          v8 = 4;
          goto LABEL_90;
        }

        goto LABEL_60;
      }

      if (a2 <= 1886090593)
      {
        if (a2 == 1886086770)
        {
          goto LABEL_74;
        }

        v9 = 29292;
        goto LABEL_70;
      }

      if (a2 != 1886090594)
      {
        if (a2 != 1886549346)
        {
          goto LABEL_79;
        }

        if (a3)
        {
          result = 0;
          v12 = 24;
LABEL_102:
          *a3 = v12;
          goto LABEL_79;
        }

LABEL_103:
        result = 0;
        goto LABEL_79;
      }
    }

LABEL_60:
    if (!a3)
    {
      goto LABEL_77;
    }

    v13 = 4;
LABEL_76:
    *a3 = v13;
    goto LABEL_77;
  }

  if (a2 > 1701082481)
  {
    if (a2 > 1718775914)
    {
      if (a2 > 1768842862)
      {
        if (a2 == 1768842863)
        {
          result = (*(*this + 432))(this, a3, &v15);
          goto LABEL_79;
        }

        if (a2 != 1769172837)
        {
          if (a2 == 1819243876)
          {
            result = (*(*this + 528))(this, a3, &v15);
          }

          goto LABEL_79;
        }

        result = (*(*this + 536))(this, a3, &v15);
        goto LABEL_78;
      }

      if (a2 != 1718775915)
      {
        if (a2 == 1735159669)
        {
          result = (*(*this + 528))(this, a3, &v15);
LABEL_78:
          v15 = 0;
        }

LABEL_79:
        if (!a4)
        {
          return result;
        }

        v14 = v15;
        goto LABEL_81;
      }

LABEL_74:
      if (a3)
      {
        v13 = 24;
        goto LABEL_76;
      }

LABEL_77:
      result = 0;
      goto LABEL_78;
    }

    if (a2 <= 1717988723)
    {
      if (a2 == 1701082482)
      {
        if (!a3)
        {
          goto LABEL_77;
        }

        v13 = 8;
        goto LABEL_76;
      }

      if (a2 != 1701799487)
      {
        goto LABEL_79;
      }

      goto LABEL_29;
    }

    if (a2 != 1717988724)
    {
      if (a2 == 1718383476)
      {
        result = (*(*this + 200))(this, a3, &v15);
      }

      goto LABEL_79;
    }

    goto LABEL_60;
  }

  if (a2 > 1668112751)
  {
    if (a2 > 1685022309)
    {
      if (a2 == 1685022310)
      {
        if (a3)
        {
LABEL_101:
          result = 0;
          v12 = 8;
          goto LABEL_102;
        }

        goto LABEL_103;
      }

      if (a2 != 1685289589)
      {
        goto LABEL_79;
      }

      if (a3)
      {
        v10 = 4;
        goto LABEL_66;
      }
    }

    else
    {
      if (a2 == 1668112752)
      {
        result = (*(*this + 408))(this, a3, &v15);
        if (a3)
        {
          if (*a3 >= 0xC)
          {
            result = result;
          }

          else
          {
            result = 561211770;
          }
        }

        goto LABEL_79;
      }

      if (a2 != 1684434292)
      {
        goto LABEL_79;
      }

      if (a3)
      {
        v10 = 40;
LABEL_66:
        *a3 = v10;
      }
    }

    result = 0;
    v15 = 1;
    goto LABEL_79;
  }

  if (a2 > 1651663219)
  {
    if (a2 != 1651663220)
    {
      if (a2 != 1652125803)
      {
        goto LABEL_79;
      }

      goto LABEL_74;
    }

    if (a3)
    {
      result = 0;
      v12 = 4;
      goto LABEL_102;
    }

    goto LABEL_103;
  }

  if (a2 != 1280922179)
  {
    if (a2 != 1650683508)
    {
      goto LABEL_79;
    }

LABEL_83:
    v15 = 1;
    if (!a3)
    {
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  if (!a3)
  {
    goto LABEL_91;
  }

  v8 = 8;
LABEL_90:
  *a3 = v8;
LABEL_91:
  v14 = 0;
  result = 0;
  if (a4)
  {
LABEL_81:
    *a4 = v14;
  }

  return result;
}

OSStatus AudioComponentInstanceDispose(AudioComponentInstance inInstance)
{
  if (!inInstance)
  {
    return -50;
  }

  v1 = (*(*inInstance + 8))(inInstance);
  if (!v1)
  {
    return -50;
  }

  v2 = v1;
  v3 = objc_autoreleasePoolPush();
  v4 = v2[3];
  if (v4)
  {
    (*(v4 + 8))();
  }

  atomic_fetch_add((v2[1] + 136), 0xFFFFFFFF);
  (*(*v2 + 24))(v2);
  objc_autoreleasePoolPop(v3);
  return 0;
}

void APMIDIRouter::~APMIDIRouter(APMIDIRouter *this)
{
  (*(*(this + 17) + 24))(this + 144);
  (*(*(this + 12) + 24))(this + 104);
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x193ADF220](v2, 0x1000C40C4F964E4);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x193ADF220](v3, 0xC400A2AC0F1);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    MEMORY[0x193ADF220](v4, 0x1000C40F03D91BDLL);
  }
}

void APComponentInstance::~APComponentInstance(RenderContextChangeGenerator *this)
{
  this->mLastWorkgroup = &unk_1F032B9B0;
  APMIDIRouter::~APMIDIRouter(&this[5].mObserver);
  mObserver = this[4].mObserver;
  if (mObserver)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](mObserver);
  }

  if (LOBYTE(this[3].mLastWorkgroup) == 1)
  {
    RenderContextChangeGenerator::~RenderContextChangeGenerator(this + 2);
  }

  mLastWorkgroup = this[1].mLastWorkgroup;
  if (mLastWorkgroup)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](mLastWorkgroup);
  }

  JUMPOUT(0x193ADF220);
}

{
  this->mLastWorkgroup = &unk_1F032B9B0;
  APMIDIRouter::~APMIDIRouter(&this[5].mObserver);
  mObserver = this[4].mObserver;
  if (mObserver)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](mObserver);
  }

  if (LOBYTE(this[3].mLastWorkgroup) == 1)
  {
    RenderContextChangeGenerator::~RenderContextChangeGenerator(this + 2);
  }

  mLastWorkgroup = this[1].mLastWorkgroup;
  if (mLastWorkgroup)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](mLastWorkgroup);
  }
}

uint64_t with_resolved_rt(unsigned int a1, uint64_t (**a2)(uint64_t, uint64_t))
{
  LODWORD(result) = ResolvedOpaqueRef<AudioConverterAPI>::ResolvedOpaqueRef(v5, a1);
  v4 = v8;
  if (v8)
  {
    LODWORD(result) = (*a2)((a2 + 1), v8);
  }

  if (v7 == 1 && v6)
  {
    atomic_fetch_add(v6, 0xFFFFFFFF);
  }

  if (v4)
  {
    return result;
  }

  else
  {
    return 4294967246;
  }
}

uint64_t AudioConverterAPI::ScopedThreadChecker::ScopedThreadChecker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  v5 = pthread_self();
  v6 = 0;
  atomic_compare_exchange_strong(*(a1 + 8), &v6, v5);
  if (v6)
  {
    v7 = v5;
    v8 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v8 + 88, 16);
    if (message)
    {
      v10 = message;
      v11 = _os_log_pack_fill();
      *v11 = 134218496;
      *(v11 + 4) = a3;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v7;
      *(v11 + 22) = 2048;
      *(v11 + 24) = v6;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v10);
    }

    *a1 = 1919249970;
  }

  return a1;
}

uint64_t *ACBaseAudioSpan::set(uint64_t *this, const AudioBufferList *a2, uint64_t a3, int a4, AudioStreamPacketDescription *a5)
{
  *this = 0;
  *(this + 2) = 0;
  v5 = *this[2];
  if (v5)
  {
    v6 = 16;
    do
    {
      *(this[2] + v6) = *(&a2->mNumberBuffers + v6);
      v6 += 16;
      --v5;
    }

    while (v5);
  }

  this[4] = a3;
  *(this + 1) = a4;
  *(this + 3) = a5;
  return ACBaseAudioSpan::resetMetadataEvents(this);
}

uint64_t *ACBaseAudioSpan::resetMetadataEvents(uint64_t *this)
{
  if (*(this + 88) == 1)
  {
    if (*(this + 28) == 1 && (v1 = this[2], v1[4 * *v1 + 2] == 1094863915))
    {
      v2 = *(v1 - 9);
      v3 = v1 + v2 - 48;
      if (v2)
      {
        v4 = v3;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    return ACMetadataContainer::resetMetadataEvents(this + 6, v4);
  }

  return this;
}

unint64_t acv2::AudioConverterChain::ProduceOutput(uint64_t a1, __int128 *a2, ACBaseAudioSpan *this, unsigned __int8 a4)
{
  if (*(a1 + 104) == *(a1 + 112))
  {
    LOBYTE(v15) = 0;
    v28 = 1869627199;
    return v28 | (v15 << 32);
  }

  v8 = *a2;
  *(a1 + 256) = *(a2 + 2);
  *(a1 + 240) = v8;
  if ((*(gAudioConverterLog + 8) & 2) != 0)
  {
    v9 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v9 + 88, 2);
    if (message)
    {
      v4 = message;
      v11 = _os_log_pack_fill();
      v12 = *(this + 1);
      v13 = *(this + 3);
      *v11 = 134218496;
      *(v11 + 4) = a1;
      *(v11 + 12) = 1024;
      *(v11 + 14) = v12;
      *(v11 + 18) = 1024;
      *(v11 + 20) = v13;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v4);
    }
  }

  v14 = 0;
  v15 = 1;
  do
  {
    if (*this >= *(this + 1))
    {
      break;
    }

    ACBaseAudioSpan::setAfter(a1 + 128, this);
    ACBaseAudioSpan::copyEmptyMetadataEventsFrom((a1 + 128), this);
    v16 = (*(**(*(a1 + 112) - 8) + 112))(*(*(a1 + 112) - 8), a1 + 128, a4);
    v17 = HIDWORD(v16);
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      LODWORD(v17) = v15;
      v18 = 1;
    }

    if ((v16 & 0x100000000) != 0)
    {
      v14 = (v16 | v14) & 1;
    }

    else
    {
      LODWORD(v4) = v16 >> 8;
      v14 = v16;
    }

    v15 = (v16 & 0x100000000) != 0 ? v18 : v17;
    v19 = (v16 & 0x100000000) != 0 ? v16 : 0;
    v20 = *(a1 + 128);
    if ((v19 & 1) == 0 && !v20)
    {
      break;
    }

    v21 = *(a1 + 136);
    v22 = *(this + 4);
    v23 = *this;
    v24 = *(this + 2);
    if (v20)
    {
      v25 = v22 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      v26 = *this;
      v27 = *(a1 + 128);
      do
      {
        *(v22 + 16 * v26++) += v24;
        --v27;
      }

      while (v27);
    }

    *this = v23 + v20;
    *(this + 2) = v24 + v21;
    ACBaseAudioSpan::copyFilledMetadataEventsFrom(this, a1 + 128, 0);
  }

  while ((v15 & 1) != 0);
  ACBaseAudioSpan::completeMetadataFrame(this);
  v28 = v14 | (v4 << 8);
  *(a1 + 404) += *this;
  if ((*(gAudioConverterLog + 8) & 2) != 0)
  {
    v29 = _os_log_pack_size();
    v30 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v29 + 88, 2);
    if (v30)
    {
      v31 = v30;
      v32 = _os_log_pack_fill();
      v33 = *this;
      v34 = *(this + 2);
      if (v15)
      {
        v35 = 0;
      }

      else
      {
        v35 = v28;
      }

      v36 = *(a1 + 404);
      *v32 = 134219008;
      *(v32 + 4) = a1;
      *(v32 + 12) = 1024;
      *(v32 + 14) = v33;
      *(v32 + 18) = 1024;
      *(v32 + 20) = v34;
      *(v32 + 24) = 1024;
      *(v32 + 26) = v35;
      *(v32 + 30) = 1024;
      *(v32 + 32) = v36;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v31);
    }
  }

  if ((v15 & 1) != 0 && *this < *(this + 1) && (*(a1 + 401) & 1) == 0 && (*(a1 + 402) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v59);
    v38 = *(a1 + 104);
    for (i = *(a1 + 112); v38 != i; v38 += 8)
    {
      (*(**v38 + 64))(__p);
      if ((v58 & 0x80u) == 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = __p[0];
      }

      if ((v58 & 0x80u) == 0)
      {
        v40 = v58;
      }

      else
      {
        v40 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, v39, v40);
      if (v58 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((v69 & 0x10) != 0)
    {
      v43 = v68;
      if (v68 < v65)
      {
        v68 = v65;
        v43 = v65;
      }

      v44 = __src;
    }

    else
    {
      if ((v69 & 8) == 0)
      {
        v41 = 0;
        v58 = 0;
        goto LABEL_63;
      }

      v44 = v62;
      v43 = v63;
    }

    v41 = v43 - v44;
    if (v43 - v44 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v41 >= 0x17)
    {
      operator new();
    }

    v58 = v43 - v44;
    if (v41)
    {
      memmove(__p, v44, v41);
    }

LABEL_63:
    *(__p + v41) = 0;
    if (v58 < 0)
    {
      v45 = strlen(__p[0]);
      operator delete(__p[0]);
    }

    else
    {
      v45 = strlen(__p);
    }

    v46 = _os_log_pack_size() + 88;
    v47 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v45 + v46 + 1, 17);
    if (!v47)
    {
LABEL_87:
      v59 = *MEMORY[0x1E69E54E8];
      *(&v59 + *(v59 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v60 = MEMORY[0x1E69E5548] + 16;
      if (v67 < 0)
      {
        operator delete(v66);
      }

      v60 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&v61);
      std::ostream::~ostream();
      MEMORY[0x193ADF120](&v70);
      return v28 | (v15 << 32);
    }

    v48 = v47;
    v49 = _os_log_pack_fill();
    v50 = *(this + 1);
    v56 = *this;
    if ((v69 & 0x10) != 0)
    {
      v55 = *(this + 1);
      v52 = v68;
      if (v68 < v65)
      {
        v68 = v65;
        v52 = v65;
      }

      v53 = __src;
    }

    else
    {
      if ((v69 & 8) == 0)
      {
        v51 = 0;
        v58 = 0;
LABEL_81:
        *(__p + v51) = 0;
        if ((v58 & 0x80u) == 0)
        {
          v54 = __p;
        }

        else
        {
          v54 = __p[0];
        }

        stpcpy(v48 + v46, v54);
        *v49 = 67109634;
        *(v49 + 4) = v56;
        *(v49 + 8) = 1024;
        *(v49 + 10) = v50;
        *(v49 + 14) = 2080;
        *(v49 + 16) = v48 + v46;
        if (v58 < 0)
        {
          operator delete(__p[0]);
        }

        caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v48);
        goto LABEL_87;
      }

      v55 = *(this + 1);
      v53 = v62;
      v52 = v63;
    }

    v51 = v52 - v53;
    if (v52 - v53 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v51 >= 0x17)
    {
      operator new();
    }

    v58 = v52 - v53;
    if (v51)
    {
      memmove(__p, v53, v51);
    }

    v50 = v55;
    goto LABEL_81;
  }

  return v28 | (v15 << 32);
}

void sub_18F5F6AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

OSStatus AudioConverterConvertBuffer(AudioConverterRef inAudioConverter, UInt32 inInputDataSize, const void *inInputData, UInt32 *ioOutputDataSize, void *outOutputData)
{
  v11 = inInputDataSize;
  v9 = ioOutputDataSize;
  v10 = inInputData;
  v8 = outOutputData;
  v6[0] = &v11;
  v6[1] = &v10;
  v6[2] = &v9;
  v6[3] = &v8;
  v7[0] = caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterConvertBuffer::$_0>;
  v7[1] = v6;
  return with_resolved_rt(inAudioConverter, v7);
}

uint64_t caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterConvertBuffer::$_0>(unsigned int ***a1, uint64_t a2)
{
  v3 = (*(*a2 + 64))(a2, ***a1, *(*a1)[1], *(*a1)[2], *(*a1)[3]);
  if (isRenderStatusConcerning(v3))
  {
    v4 = (*(*a2 + 104))(a2) ? 15 : 11;
    v5 = _os_log_pack_size() + 88;
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v5 + v4, 16);
    if (message)
    {
      v7 = message;
      v8 = _os_log_pack_fill();
      v9 = v7 + v5;
      if ((*(*a2 + 104))(a2))
      {
        v10 = "out-of-process";
      }

      else
      {
        v10 = "in-process";
      }

      stpcpy(v9, v10);
      *v8 = 134218498;
      *(v8 + 4) = a2;
      *(v8 + 12) = 2080;
      *(v8 + 14) = v9;
      *(v8 + 22) = 1024;
      *(v8 + 24) = v3;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v7);
    }
  }

  return v3;
}

uint64_t acv2::AudioConverterV2::convertBuffer(unsigned int **this, unsigned int a2, const void *a3, unsigned int *a4, void *a5)
{
  v61 = a4;
  if (*(this + 12))
  {
    v59 = this;
    v60 = &v61;
  }

  else
  {
    v9 = *(this + 2);
    v10 = *(this + 4);
    v11 = *(this + 5);
    v12 = *a4;
    v13 = *(this + 12);
    v59 = this;
    v60 = &v61;
    if (v13 & 1) == 0 && (*(this + 13))
    {
      v14 = *(this + 4);
      v15 = *(this + 5);
      HIDWORD(v63) = 2740;
      v64 = v14;
      v65 = v15;
      v66 = 0;
      v67 = 0;
      kdebug_trace();
      v52[0] = 1;
      v53 = 2740;
      v54 = v14;
      v55 = v15;
      v56 = 0;
      v57 = 0;
      LOBYTE(v63) = 0;
      v58 = 1;
      AT::ScopedTrace::~ScopedTrace(&v63);
      goto LABEL_7;
    }
  }

  v52[0] = 0;
  v58 = 0;
LABEL_7:
  if (!a3)
  {
    v38 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v38 + 88, 16);
    if (!message)
    {
      goto LABEL_59;
    }

    v40 = message;
LABEL_58:
    *_os_log_pack_fill() = 0;
    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v40);
    goto LABEL_59;
  }

  if (!v61)
  {
    v41 = _os_log_pack_size();
    v42 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v41 + 88, 16);
    if (!v42)
    {
      goto LABEL_59;
    }

    v40 = v42;
    goto LABEL_58;
  }

  if (a5)
  {
    AudioConverterAPI::ScopedThreadChecker::ScopedThreadChecker(&v50, (this + 4), this);
    v16 = v50;
    if (v50)
    {
LABEL_35:
      atomic_store(0, v51);
      goto LABEL_36;
    }

    v17 = this[5];
    if (*(v17 + 82) == 1)
    {
      v48 = _os_log_pack_size();
      v49 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v48 + 88, 16);
      if (!v49)
      {
LABEL_65:
        v16 = 4294967246;
        goto LABEL_35;
      }

      v47 = v49;
    }

    else
    {
      if ((*(v17 + 80) & 1) == 0 && *(v17 + 81) != 1)
      {
        v18 = v61;
        v75[0] = a3;
        v75[1] = a2;
        v19 = *(v17 + 449);
        if (v19 == 1)
        {
          v20 = mach_absolute_time();
        }

        else
        {
          v20 = 0;
        }

        v21 = *v18;
        if (*v18)
        {
          v22 = 1869627136;
          v23 = *(v17 + 16);
          if (!v23 || !*(v17 + 24) || (v24 = *(v17 + 56)) == 0 || !*(v17 + 64))
          {
            v26 = 0;
            v27 = 63;
            goto LABEL_29;
          }

          v25 = a2 / v23;
          v74 = a2 / v23;
          if (v21 / v24 >= a2 / v23)
          {
            v73 = 0;
            v72[0] = &v73;
            v72[1] = v75;
            v72[2] = &v74;
            *&v71.mNumberBuffers = 1;
            v71.mBuffers[0].mNumberChannels = *(v17 + 68);
            v71.mBuffers[0].mDataByteSize = v24 * v25;
            v71.mBuffers[0].mData = a5;
            v63 = 0;
            v64 = 0;
            v65 = &v71;
            LODWORD(v66) = 1;
            BYTE4(v66) = 0;
            v70 = 0;
            v67 = 0;
            v68 = 0;
            v69[0] = 0;
            ACBaseAudioSpan::set(&v63, &v71, 0, v25, (v24 * v25));
            *&v62 = caulk::function_ref<caulk::expected<unsigned int,int> ()(ACAudioSpan &)>::functor_invoker<acv2::AudioConverterChain::ConvertBuffer(std::span<unsigned char const,18446744073709551615ul>,void *,unsigned int &)::$_0>;
            *(&v62 + 1) = v72;
            v27 = acv2::AudioConverterChain::ProduceOutput(v17, &v62, &v63, 1u);
            *v18 = v64;
            if (v19)
            {
              v35 = mach_absolute_time() - v20;
              ++*(v17 + 456);
              v36 = *(v17 + 472);
              *(v17 + 464) += v35;
              if (v36 > v35)
              {
                *(v17 + 472) = v35;
              }

              if (*(v17 + 480) < v35)
              {
                *(v17 + 480) = v35;
              }
            }

            v26 = v27 & 0x100000000;
            v37 = v27 & 0xFFFFFF00;
            v27 = v27;
            if (v70 == 1)
            {
              std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](v69);
            }

            if (v26)
            {
              v22 = 0;
            }

            else
            {
              v22 = v37;
            }

            if (v26)
            {
              v27 = 0;
            }

            goto LABEL_29;
          }

          v26 = 0;
          v22 = 1768846080;
        }

        else
        {
          v22 = 1869902592;
          v28 = _os_log_pack_size();
          v29 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v28 + 88, 16);
          if (v29)
          {
            v30 = v29;
            *_os_log_pack_fill() = 0;
            caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v30);
          }

          v26 = 0;
        }

        v27 = 122;
LABEL_29:
        if (*(this + 28) == 1 && *v61)
        {
          v31 = *(this + 5);
          v32 = *(this + 6);
          *(this + 28) = 0;
          v33 = *(this + 4);
          kdebug_trace();
        }

        if ((v22 | v27 | v26) >= 0x100000000)
        {
          v16 = 0x100000000;
        }

        else
        {
          v16 = v22 | v27 | v26;
        }

        goto LABEL_35;
      }

      v45 = _os_log_pack_size();
      v46 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v45 + 88, 16);
      if (!v46)
      {
        goto LABEL_65;
      }

      v47 = v46;
    }

    *_os_log_pack_fill() = 0;
    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v47);
    goto LABEL_65;
  }

  v43 = _os_log_pack_size();
  v44 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v43 + 88, 16);
  if (v44)
  {
    v40 = v44;
    goto LABEL_58;
  }

LABEL_59:
  v16 = 4294967246;
LABEL_36:
  if (v58 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v52);
  }

  applesauce::raii::v1::detail::ScopeGuard<acv2::AudioConverterV2::convertBuffer(unsigned int,void const*,unsigned int *,void *)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(&v59);
  return v16;
}

void sub_18F5F7210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, unsigned int **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a35)
  {
    std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](&a30);
  }

  atomic_store(0, a11);
  if (a17 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(&a12);
  }

  applesauce::raii::v1::detail::ScopeGuard<acv2::AudioConverterV2::convertBuffer(unsigned int,void const*,unsigned int *,void *)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(&a18);
  _Unwind_Resume(a1);
}

uint64_t caulk::function_ref<caulk::expected<unsigned int,int> ()(ACAudioSpan &)>::functor_invoker<acv2::AudioConverterChain::ConvertBuffer(std::span<unsigned char const,18446744073709551615ul>,void *,unsigned int &)::$_0>(char ***a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *v3;
  *v3 = 1;
  if (v4)
  {
    v5 = 0;
    v6 = 1852139886;
  }

  else
  {
    v7 = *(a2 + 16);
    v9 = v2[1];
    v8 = v2[2];
    v11 = *v9;
    v10 = v9[1];
    *(v7 + 16) = v11;
    *(v7 + 12) = v10;
    v6 = *v8;
    v5 = 0x100000000;
  }

  return v5 | v6;
}

uint64_t acv2::PCMConverter2::ConvertBufferList(uint64_t result, int a2, void *a3, void *a4)
{
  v6 = result;
  if ((*(result + 28) & 0x20) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(result + 44);
  }

  v8 = **a3;
  if (v8)
  {
    v9 = (v7 * a2);
    v10 = 16;
    do
    {
      result = (*(v6 + 168))(*(*a3 + v10), *(*a4 + v10), v9);
      v10 += 16;
      --v8;
    }

    while (v8);
  }

  return result;
}

int16x8_t *NativeInt16ToFloat32Scaled_ARM(int16x8_t *result, float32x4_t *a2, unsigned int a3, float a4)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v4 = a2 + 4;
    do
    {
      v5 = result->i16[0];
      result = (result + 2);
      a2->f32[0] = v5 * a4;
      a2 = (a2 + 4);
      v6 = a3 - 1;
      if ((v4 & 0xF) == 0)
      {
        break;
      }

      v4 += 4;
      --a3;
    }

    while (a3);
  }

  else
  {
    v6 = a3;
  }

  if (v6 >= 8)
  {
    v7 = v6 >> 3;
    do
    {
      v8 = *result++;
      *a2 = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v8.i8)), a4);
      a2[1] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v8)), a4);
      a2 += 2;
      --v7;
    }

    while (v7);
  }

  for (i = v6 & 7; i; --i)
  {
    v10 = result->i16[0];
    result = (result + 2);
    a2->f32[0] = v10 * a4;
    a2 = (a2 + 4);
  }

  return result;
}

uint64_t *ACBaseAudioSpan::copyEmptyMetadataEventsFrom(uint64_t *this, const ACBaseAudioSpan *a2)
{
  if (*(this + 88) == 1)
  {
    v12 = v2;
    v13 = v3;
    if (*(a2 + 88) == 1)
    {
      v5 = this;
      if (*(this + 28) == 1)
      {
        v6 = this[2];
        if (v6[4 * *v6 + 2] == 1094863915)
        {
          v7 = *(v6 - 9);
          if (v7)
          {
            v8 = (v6 + v7 - 48);
            memset(v11, 0, 44);
            BYTE8(v11[1]) = 1;
            *&v11[2] = 0x10000002CLL;
            AudioMetadataFrame::begin_new(v8, v11);
            if (*(a2 + 20))
            {
              v9 = 0;
              v10 = *(a2 + 9);
              do
              {
                AudioMetadataFrame_AppendEvent(v8, v10);
                v10 += *(v10 + 8);
                ++v9;
              }

              while (v9 < *(a2 + 20));
            }

            return ACMetadataContainer::resetMetadataEvents(v5 + 6, v8);
          }
        }
      }
    }
  }

  return this;
}

uint64_t ACBaseAudioSpan::setAfter(uint64_t result, unsigned int *a2)
{
  *result = 0;
  *(result + 8) = 0;
  v2 = **(result + 16);
  if (v2)
  {
    v3 = a2[2];
    v4 = 16;
    do
    {
      *(*(result + 16) + v4) = *(*(a2 + 2) + v4) + v3;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  v5 = *(a2 + 4);
  v6 = *a2;
  if (v5)
  {
    *(result + 32) = v5 + 16 * v6;
  }

  v7 = *(a2 + 5);
  if (v7)
  {
    *(result + 40) = v7 + 16 * v6;
  }

  v8 = a2[2];
  *(result + 4) = a2[1] - v6;
  *(result + 12) = a2[3] - v8;
  return result;
}

uint64_t acv2::CBRConverter::ProduceOutput(uint64_t a1, unsigned int *a2, unsigned __int8 a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 1869627199;
  }

  acv2::AudioConverterChain::ObtainInput(v17, v4, a1, a2[1], a3);
  if ((v18 & 1) == 0)
  {
    v13 = 0;
    LODWORD(Packets) = v17[0];
    goto LABEL_14;
  }

  v6 = v17[0];
  v7 = a2[1];
  if (v7 >= *v17[0])
  {
    v8 = *v17[0];
  }

  else
  {
    v8 = v7;
  }

  if (!v8)
  {
    LOBYTE(Packets) = 0;
    v15 = 0;
LABEL_17:
    v13 = 0x100000000;
    return v13 | v15 | Packets;
  }

  v9 = v17[1];
  (*(*a1 + 160))(a1, v8, v17[0] + 16, a2 + 4);
  v10 = *(a1 + 72);
  *a2 = v8;
  Packets = ACBaseAudioSpan::sizeOfFirstPackets(a2, v8, v10);
  v13 = HIDWORD(Packets);
  if (!HIDWORD(Packets))
  {
LABEL_14:
    v15 = Packets & 0xFFFFFF00;
    return v13 | v15 | Packets;
  }

  a2[2] = Packets;
  v14 = *(a1 + 152);
  if (v14)
  {
    acv2::AudioConverterBase::writeCapture(v14, a2, v12);
  }

  Packets = acv2::AudioConverterChain::ConsumedInput(*(a1 + 8), *v6, v9, v8);
  v13 = HIDWORD(Packets);
  if (HIDWORD(Packets))
  {
    v15 = 0;
    LOBYTE(Packets) = 1;
    goto LABEL_17;
  }

  v15 = Packets & 0xFFFFFF00;
  return v13 | v15 | Packets;
}

uint64_t acv2::AudioConverterChain::ObtainInput(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int8 a5)
{
  v5 = a5;
  v6 = a4;
  v8 = a2;
  v9 = result;
  v10 = *(a3 + 104);
  if (!v10)
  {
    v28 = *(a3 + 112);
    if (v28)
    {
      *v28 = 0;
      *(v28 + 8) = 0;
      result = ACBaseAudioSpan::resetMetadataEvents(v28);
      v29 = *(a3 + 32) * v6;
      *(v28 + 4) = v6;
      *(v28 + 12) = v29;
    }

LABEL_31:
    v31 = *(a3 + 96);
    if (v31)
    {
      if (*(a3 + 104))
      {
        v108 = v6;
      }

      else
      {
        v42 = v31[30];
        v43 = *(v8 + 272);
        if (v42 >= (*(v8 + 280) - v43) >> 3)
        {
          v30 = 0;
          *v9 = 1651074168;
          goto LABEL_78;
        }

        v44 = v5;
        v45 = v9;
        v46 = *(v43 + 8 * v42);
        if (*v46 >= v6)
        {
          v47 = v6;
        }

        else
        {
          v47 = *v46;
        }

        LODWORD(v48) = v31[21];
        if ((v31[17] & 0x20) != 0)
        {
          v48 = v48;
        }

        else
        {
          v48 = 1;
        }

        v49 = (v31[20] * v47 + 15) & 0xFFFFFFF0;
        **(v46 + 24) = v48;
        v50 = *(v46 + 112);
        LODWORD(v51) = ((v48 + 1) >> 1) * v49 + 32;
        if (v48 <= 1)
        {
          v51 = 0;
        }

        else
        {
          v51 = v51;
        }

        v110[0] = *(v46 + 112);
        v110[1] = v50 + v51;
        if (v48)
        {
          v52 = 0;
          v53 = 16;
          do
          {
            v54 = v110[v52 & 1];
            *(*(v46 + 24) + v53) = v54;
            v110[v52++ & 1] = v54 + v49;
            v53 += 16;
          }

          while (v48 != v52);
        }

        *(v46 + 8) = 0;
        v28 = v46 + 8;
        *(v28 + 8) = 0;
        ACBaseAudioSpan::resetMetadataEvents(v28);
        *(v28 + 4) = v47;
        *(v28 + 12) = v49;
        v108 = *v28;
        v9 = v45;
        v5 = v44;
      }

      if ((*(gAudioConverterLog + 8) & 2) != 0)
      {
        v55 = _os_log_pack_size();
        message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v55 + 88, 2);
        if (message)
        {
          v57 = message;
          v58 = _os_log_pack_fill();
          v59 = *(v28 + 4);
          v60 = *(v28 + 12);
          *v58 = 134218496;
          *(v58 + 4) = a3;
          *(v58 + 12) = 1024;
          *(v58 + 14) = v59;
          *(v58 + 18) = 1024;
          *(v58 + 20) = v60;
          caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v57);
        }
      }

      result = (*(*v31 + 112))(v31, v28, v5);
      if ((result & 0x100000000) != 0)
      {
        v61 = result;
      }

      else
      {
        v61 = result;
      }

      if ((result & 0x100000000) != 0)
      {
        v62 = 1;
      }

      else
      {
        v62 = BYTE4(result);
      }

      if ((*(gAudioConverterLog + 8) & 2) != 0)
      {
        v63 = _os_log_pack_size();
        result = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v63 + 88, 2);
        if (result)
        {
          v64 = result;
          v65 = _os_log_pack_fill();
          v66 = *v28;
          v67 = *(v28 + 8);
          if (v62)
          {
            v68 = 0;
          }

          else
          {
            v68 = v61;
          }

          *v65 = 134218752;
          *(v65 + 4) = a3;
          *(v65 + 12) = 1024;
          *(v65 + 14) = v66;
          *(v65 + 18) = 1024;
          *(v65 + 20) = v67;
          *(v65 + 24) = 1024;
          *(v65 + 26) = v68;
          result = caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v64);
        }
      }

      if (v62)
      {
        v6 = v108;
LABEL_74:
        if (v10)
        {
          result = ACSpanningInputBuffer::consolidateInput(v10, v6);
          v28 = result;
          if ((v70 & 1) == 0)
          {
            v30 = 0;
            *v9 = result;
            goto LABEL_78;
          }
        }

        *v9 = v28;
        goto LABEL_77;
      }

      v69 = *(a3 + 104);
      v6 = v108;
      if (v69 && (*(v69 + 24) || *(v69 + 128)) || *v28)
      {
        goto LABEL_74;
      }

LABEL_127:
      *v28 = 0;
      *(v28 + 8) = 0;
      result = ACBaseAudioSpan::resetMetadataEvents(v28);
      v30 = 0;
      *v9 = v61;
      goto LABEL_78;
    }

    v106 = v9;
    if ((*(gAudioConverterLog + 8) & 2) != 0)
    {
      v32 = _os_log_pack_size();
      v33 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v32 + 88, 2);
      if (v33)
      {
        v34 = v33;
        v35 = _os_log_pack_fill();
        v36 = *(v28 + 4);
        v37 = *(v28 + 12);
        *v35 = 134218496;
        *(v35 + 4) = v8;
        *(v35 + 12) = 1024;
        *(v35 + 14) = v36;
        *(v35 + 18) = 1024;
        *(v35 + 20) = v37;
        caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v34);
      }
    }

    *(v8 + 400) = 1;
    v38 = (*(v8 + 240))(v8 + 248, v28);
    v40 = v38;
    *(v8 + 400) = 0;
    if ((v38 & 0x100000000) == 0)
    {
      v41 = 0;
      v109 = v38;
      goto LABEL_113;
    }

    v109 = v38 != 0;
    if (v38)
    {
      v71 = *(v8 + 16);
      if (!v71)
      {
        goto LABEL_102;
      }

      v72 = *(*(v28 + 16) + 12);
      if (*(v28 + 32))
      {
        v73 = v71 * v38;
        v74 = v71 * v38 - v72;
        if (v71 * v38 <= v72)
        {
          if (v73 < v72)
          {
            if ((*(gAudioConverterLog + 8) & 2) != 0)
            {
              v79 = _os_log_pack_size();
              v80 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v79 + 88, 2);
              if (v80)
              {
                v81 = v80;
                v82 = _os_log_pack_fill();
                *v82 = 134218752;
                *(v82 + 4) = v8;
                *(v82 + 12) = 1024;
                *(v82 + 14) = v72;
                *(v82 + 18) = 1024;
                *(v82 + 20) = v40;
                *(v82 + 24) = 1024;
                *(v82 + 26) = v73;
                caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v81);
              }
            }

            *(*(v28 + 16) + 12) = v73;
          }

          goto LABEL_102;
        }

        if ((*(gAudioConverterLog + 8) & 2) != 0)
        {
          v102 = v71 * v38 - v72;
          v75 = _os_log_pack_size();
          v76 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v75 + 88, 2);
          v74 = v102;
          if (v76)
          {
            v77 = v76;
            v78 = _os_log_pack_fill();
            *v78 = 134218752;
            *(v78 + 4) = v8;
            *(v78 + 12) = 1024;
            *(v78 + 14) = v73;
            *(v78 + 18) = 1024;
            *(v78 + 20) = v40;
            *(v78 + 24) = 1024;
            *(v78 + 26) = v72;
            caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v77);
            v74 = v102;
          }
        }

        v40 -= v74 / v71;
        goto LABEL_99;
      }

      if (v72 / v71 == v38)
      {
LABEL_102:
        v86 = *(v8 + 344);
        if (v86)
        {
          v87 = *(v86 + 364) | 0x100000000;
        }

        else
        {
          v87 = 0;
        }

        v88 = validateInputProcData(v8, *(v28 + 16), v40, *(v28 + 32), v87);
        if (v88)
        {
          v41 = 0;
          v109 = v88;
        }

        else
        {
          *v28 = v40;
          *(v28 + 4) = v40;
          if (v40)
          {
            v89 = *(*(v28 + 16) + 12);
          }

          else
          {
            v89 = 0;
          }

          *(v28 + 8) = v89;
          *(v28 + 12) = v89;
          v41 = 1;
          if (v10 && *(v28 + 32))
          {
            ACSpanningInputBuffer::checkRelocateClientPacketDescriptions(v10, v28);
          }
        }

LABEL_113:
        *(v8 + 408) += *v28;
        if ((*(gAudioConverterLog + 8) & 2) != 0)
        {
          v90 = *(v8 + 401) ? 4 : 3;
          v91 = _os_log_pack_size() + 88;
          v92 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v91 + v90, 2);
          if (v92)
          {
            v93 = v92;
            v94 = (v92 + v91);
            v95 = _os_log_pack_fill();
            v96 = *v28;
            v97 = *(v28 + 8);
            v98 = v109;
            if (v41)
            {
              v98 = 0;
            }

            v104 = v98;
            if (*(v8 + 401))
            {
              v99 = "YES";
            }

            else
            {
              v99 = "NO";
            }

            stpcpy(v94, v99);
            v100 = *(v8 + 408);
            *v95 = 134219266;
            *(v95 + 4) = v8;
            *(v95 + 12) = 1024;
            *(v95 + 14) = v96;
            *(v95 + 18) = 1024;
            *(v95 + 20) = v97;
            *(v95 + 24) = 1024;
            *(v95 + 26) = v104;
            *(v95 + 30) = 2080;
            *(v95 + 32) = v94;
            *(v95 + 40) = 1024;
            *(v95 + 42) = v100;
            caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v93);
          }
        }

        result = *(v8 + 488);
        if (result)
        {
          result = acv2::AudioConverterBase::writeCapture(result, v28, v39);
        }

        v9 = v106;
        v61 = v109;
        if (v41)
        {
          goto LABEL_74;
        }

        goto LABEL_127;
      }

      v83 = _os_log_pack_size();
      v84 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v83 + 88, 16);
      if (v84)
      {
        v103 = v84;
        v85 = _os_log_pack_fill();
        *v85 = 67109888;
        *(v85 + 4) = v40;
        *(v85 + 8) = 1024;
        *(v85 + 10) = v72;
        *(v85 + 14) = 1024;
        *(v85 + 16) = v71;
        *(v85 + 20) = 1024;
        *(v85 + 22) = v72 / v71;
        caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v103);
      }

      v40 = v72 / v71;
    }

LABEL_99:
    if ((*(v8 + 401) & 1) == 0 && !v40)
    {
      *(v8 + 401) = 1;
    }

    goto LABEL_102;
  }

  if (*v10 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = *v10;
  }

  v12 = *(v10 + 24);
  if (v12 >= v11)
  {
    result = v10 + 24;
    goto LABEL_27;
  }

  if (!v12 && !*(v10 + 128))
  {
    result = ACBaseAudioSpan::set((v10 + 128), (*(v10 + 16) + 48), *(v10 + 232), v11, (*(v10 + 8) * v11));
LABEL_30:
    v28 = v10 + 128;
    goto LABEL_31;
  }

  v13 = result;
  v14 = *(v10 + 16);
  v15 = *(v10 + 232);
  v16 = *(v10 + 12);
  *(v10 + 28) = *v10;
  *(v10 + 36) = v16;
  v17 = **(v10 + 40);
  if (v17)
  {
    v18 = (v14 + 64);
    v19 = 16;
    do
    {
      v20 = *(v10 + 40);
      v21 = *(v20 + v19);
      v22 = *v18;
      if (v21 != *v18)
      {
        memmove(v22, v21, *(v10 + 32));
        v22 = *v18;
      }

      *(v20 + v19) = v22;
      v18 += 2;
      v19 += 16;
      --v17;
    }

    while (v17);
  }

  v23 = *(v10 + 56);
  if (v23)
  {
    v24 = v23 == v15;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    memmove(v15, v23, 16 * *(v10 + 24));
    *(v10 + 56) = v15;
  }

  result = ACSpanningInputBuffer::consolidateInput(v10, v11);
  v9 = v13;
  if (v25)
  {
    v5 = a5;
    if (*result < v11)
    {
      if (v11 - *(v10 + 24) >= *v10)
      {
        v26 = *v10;
      }

      else
      {
        v26 = v11 - *(v10 + 24);
      }

      result = ACBaseAudioSpan::setAfter(v10 + 128, (v10 + 24));
      v27 = *(v10 + 8) * v26;
      *(v10 + 132) = v26;
      *(v10 + 140) = v27;
      v6 = a4;
      v8 = a2;
      goto LABEL_30;
    }

LABEL_27:
    *v9 = result;
LABEL_77:
    *(v9 + 1) = v10;
    v30 = 1;
    goto LABEL_78;
  }

  v30 = 0;
  *v13 = result;
LABEL_78:
  *(v9 + 16) = v30;
  return result;
}

uint64_t validateInputProcData(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5)
{
  CrashIfClientProvidedBogusAudioBufferList();
  v10 = *a2;
  v11 = *(a1 + 28);
  if ((*(a1 + 12) & 0x20) == 0)
  {
    v11 = 1;
  }

  if (v10 != v11)
  {
    v24 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v24 + 88, 16);
    if (!message)
    {
      return 4294967246;
    }

    v26 = message;
    *_os_log_pack_fill() = 0;
LABEL_29:
    v31 = *(gAudioConverterDeferredLog + 16);
    v32 = v26;
LABEL_30:
    caulk::concurrent::messenger::enqueue(v31, v32);
    return 4294967246;
  }

  v12 = a2[3];
  if (v10 >= 2)
  {
    v13 = (a2 + 7);
    v14 = 1;
    while (*v13 == v12)
    {
      ++v14;
      v13 += 4;
      if (v10 == v14)
      {
        goto LABEL_8;
      }
    }

    v27 = _os_log_pack_size();
    v28 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v27 + 88, 16);
    if (!v28)
    {
      return 4294967246;
    }

    v26 = v28;
    v29 = _os_log_pack_fill();
    v30 = *v13;
    *v29 = 67109632;
    *(v29 + 4) = v12;
    *(v29 + 8) = 1024;
    *(v29 + 10) = v30;
    *(v29 + 14) = 1024;
    *(v29 + 16) = v14;
    goto LABEL_29;
  }

LABEL_8:
  if (!a4)
  {
    return 0;
  }

  if (a3)
  {
    v15 = 0;
    v16 = 0;
    v17 = (a4 + 12);
    while (1)
    {
      v18 = *v17;
      if ((a5 & 0x100000000) != 0 && v18 > a5)
      {
        v42 = _os_log_pack_size();
        v43 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v42 + 88, 16);
        if (!v43)
        {
          return 4294967246;
        }

        v39 = v43;
        v44 = _os_log_pack_fill();
        v45 = *v17;
        *v44 = 67109888;
        *(v44 + 4) = v15;
        *(v44 + 8) = 1024;
        *(v44 + 10) = a3;
        *(v44 + 14) = 1024;
        *(v44 + 16) = v45;
        *(v44 + 20) = 1024;
        *(v44 + 22) = a5;
        v41 = gAudioConverterDeferredLog;
        goto LABEL_42;
      }

      v19 = *(v17 - 3);
      v20 = v19 + v18;
      v21 = v19 >= v16 && v19 <= v12;
      if (!v21 || v20 > v12)
      {
        break;
      }

      ++v15;
      v17 += 4;
      v16 = v19 + v18;
      if (a3 == v15)
      {
        if (v20 >= v12)
        {
          return 0;
        }

        if (a3 == 1)
        {
          result = 0;
          a2[3] = v20;
          return result;
        }

        goto LABEL_34;
      }
    }

    v37 = _os_log_pack_size();
    v38 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v37 + 88, 16);
    if (v38)
    {
      v39 = v38;
      v40 = _os_log_pack_fill();
      *v40 = 67110144;
      *(v40 + 4) = v15;
      *(v40 + 8) = 1024;
      *(v40 + 10) = a3;
      *(v40 + 14) = 2048;
      *(v40 + 16) = v19;
      *(v40 + 24) = 2048;
      *(v40 + 26) = v20;
      *(v40 + 34) = 1024;
      *(v40 + 36) = v12;
      v41 = gAudioConverterDeferredLog;
LABEL_42:
      v31 = *(v41 + 16);
      v32 = v39;
      goto LABEL_30;
    }

    return 4294967246;
  }

  if (!v12)
  {
    return 0;
  }

  v20 = 0;
LABEL_34:
  v33 = _os_log_pack_size();
  result = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v33 + 88, 16);
  if (result)
  {
    v34 = result;
    v35 = _os_log_pack_fill();
    v36 = a2[3];
    *v35 = 67109632;
    *(v35 + 4) = v36;
    *(v35 + 8) = 1024;
    *(v35 + 10) = a3;
    *(v35 + 14) = 2048;
    *(v35 + 16) = v20;
    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v34);
    return 0;
  }

  return result;
}

ACBaseAudioSpan *ACSpanningInputBuffer::consolidateInput(ACSpanningInputBuffer *this, unsigned int a2)
{
  v4 = (this + 24);
  v3 = *(this + 6);
  v6 = (this + 128);
  v5 = *(this + 32);
  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5 >= a2;
  }

  if (!v7 || *(this + 20))
  {
    if (*this >= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = *this;
    }

    v9 = v8 - v3;
    if (v9 >= v5)
    {
      v10 = *(this + 32);
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (!v3)
      {
        ACBaseAudioSpan::set(this + 3, (*(this + 2) + 48), *(this + 29), *this, *(this + 3));
      }

      v11 = ACBaseAudioSpan::append(v4, v6, v10, *(this + 1));
      if (HIDWORD(v11))
      {
        v12 = ACBaseAudioSpan::advanceConsume(v6, v10, *(this + 1));
        if (HIDWORD(v12))
        {
          return v4;
        }

        else
        {
          return v12;
        }
      }

      else
      {
        return v11;
      }
    }

    else
    {
      return (this + 24);
    }
  }

  return v6;
}

uint64_t ACBaseAudioSpan::advanceConsume(ACBaseAudioSpan *this, unsigned int a2, int a3)
{
  if (a2)
  {
    Packets = ACBaseAudioSpan::sizeOfFirstPackets(this, a2, a3);
    if (HIDWORD(Packets))
    {
      v8 = *(this + 2);
      v9 = *v8;
      if (v9)
      {
        v10 = 16 * v9;
        v11 = v8 + 4;
        do
        {
          *v11 += Packets;
          v11 += 2;
          v10 -= 16;
        }

        while (v10);
      }

      v12 = *this;
      v6 = *this - a2;
      *this = v6;
      *(this + 2) -= Packets;
      v13 = *(this + 4);
      if (v13 && (v14 = (v13 + 16 * a2), *(this + 4) = v14, v12 != a2))
      {
        do
        {
          *v14 -= Packets;
          v14 += 2;
          --v6;
        }

        while (v6);
      }

      else
      {
        v6 = 0;
      }

      v7 = 0x100000000;
    }

    else
    {
      v6 = Packets & 0xFFFFFF00;
      v7 = Packets;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0x100000000;
  }

  return v7 | v6;
}

uint64_t acv2::AudioConverterChain::ConsumedInput(void *a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  if (a3 || a2 <= a4)
  {
    if (a3)
    {
      if (a4)
      {
        v7 = *(a3 + 24);
        v6 = a3 + 24;
        if (v7)
        {
          v8 = v6;
        }

        else
        {
          v8 = (v6 + 104);
        }

        v9 = ACBaseAudioSpan::advanceConsume(v8, a4, *(v6 - 20));
      }

      else
      {
        v9 = 0x100000000;
      }

      v11 = v9 & 0xFFFFFF00;
      v12 = v9 & 0x100000000;
      v10 = v9;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0x100000000;
    }
  }

  else
  {
    acv2::AudioConverterChain::description(__s, a1);
    if (v21 < 0)
    {
      v5 = strlen(*__s);
      operator delete(*__s);
    }

    else
    {
      v5 = strlen(__s);
    }

    v11 = 2003329280;
    v13 = _os_log_pack_size() + 88;
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v5 + v13 + 1, 17);
    if (message)
    {
      v15 = message;
      v16 = (message + v13);
      v17 = _os_log_pack_fill();
      acv2::AudioConverterChain::description(__s, a1);
      if (v21 >= 0)
      {
        v18 = __s;
      }

      else
      {
        v18 = *__s;
      }

      stpcpy(v16, v18);
      *v17 = 136315138;
      *(v17 + 4) = v16;
      if (v21 < 0)
      {
        operator delete(*__s);
      }

      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v15);
    }

    v12 = 0;
    v10 = 116;
  }

  return v10 | v11 | v12;
}

void sub_18F5F8704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACBaseAudioSpan::sizeOfFirstPackets(ACBaseAudioSpan *this, unsigned int a2, int a3)
{
  if (!a2)
  {
    LODWORD(v4) = 0;
    goto LABEL_5;
  }

  if (!a3)
  {
    v8 = *(this + 4);
    v9 = *this;
    if (v8)
    {
      if (v9 >= a2)
      {
        v4 = *(v8 + 16 * (a2 - 1)) + *(v8 + 16 * (a2 - 1) + 12);
        if (!HIDWORD(v4))
        {
          goto LABEL_5;
        }

        LODWORD(v4) = 2003329396;
        v13 = _os_log_pack_size();
        message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v13 + 88, 16);
        if (message)
        {
          v15 = message;
          *_os_log_pack_fill() = 0;
          v16 = *(gAudioConverterDeferredLog + 16);
          v17 = v15;
LABEL_20:
          caulk::concurrent::messenger::enqueue(v16, v17);
        }
      }

      else
      {
        LODWORD(v4) = 2003329396;
        v10 = _os_log_pack_size();
        v11 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v10 + 88, 16);
        if (v11)
        {
          v12 = v11;
LABEL_19:
          v20 = _os_log_pack_fill();
          v21 = *this;
          *v20 = 67109376;
          *(v20 + 4) = a2;
          *(v20 + 8) = 1024;
          *(v20 + 10) = v21;
          v16 = *(gAudioConverterDeferredLog + 16);
          v17 = v12;
          goto LABEL_20;
        }
      }
    }

    else
    {
      if (v9 == a2)
      {
        LODWORD(v4) = *(this + 2);
        goto LABEL_5;
      }

      LODWORD(v4) = 2003329396;
      v18 = _os_log_pack_size();
      v19 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v18 + 88, 16);
      if (v19)
      {
        v12 = v19;
        goto LABEL_19;
      }
    }

    v5 = 0;
    return v5 | v4;
  }

  LODWORD(v4) = a3 * a2;
LABEL_5:
  v5 = 0x100000000;
  return v5 | v4;
}

uint64_t *ACBaseAudioSpan::completeMetadataFrame(uint64_t *this)
{
  if (*(this + 88) == 1 && *(this + 28) == 1)
  {
    v1 = this[2];
    if (v1[4 * *v1 + 2] == 1094863915)
    {
      v2 = *(v1 - 9);
      if (v2)
      {
        v3 = v1 + v2;
        v6 = *(v3 - 6);
        v5 = *(v3 - 5);
        v4 = (v3 - 48);
        if ((v5 - v6) >= 0x2C && v6 != 0)
        {
          v8 = this[6];
          if ((this[7] - v8) >= 0x2C)
          {
            if (v8)
            {
              return AudioMetadataFrame::begin_new(v4, v8);
            }
          }
        }
      }
    }
  }

  return this;
}

char **ACBaseAudioSpan::copyFilledMetadataEventsFrom(char **result, uint64_t a2, uint64_t a3)
{
  if (*(result + 88) == 1 && *(a2 + 88) == 1 && *(a2 + 28) == 1)
  {
    v19 = v3;
    v20 = v4;
    v5 = *(a2 + 16);
    if (v5[4 * *v5 + 2] == 1094863915)
    {
      v6 = *(v5 - 9);
      if (v6)
      {
        v7 = v5 + v6;
        v8 = *(v7 - 6);
        v9 = (*(v7 - 5) - v8) < 0x2C || v8 == 0;
        if (!v9 && *(v8 + 40))
        {
          v11 = result;
          v12 = 0;
          v13 = (v8 + 44);
          do
          {
            v14 = *v13;
            v15 = v13[1];
            v18 = *(v13 + 4);
            v16 = v14;
            v17 = v15;
            if ((a3 & 0x100000000) != 0)
            {
              DWORD1(v17) = a3;
            }

            result = AudioMetadataFrame_AppendEvent(v11 + 6, &v16);
            v13 = (v13 + *(v13 + 2));
            v11[9] += *(v11[9] + 2);
            --*(v11 + 20);
            ++v12;
          }

          while (v12 < *(v8 + 40));
        }
      }
    }
  }

  return result;
}

uint64_t isRenderStatusConcerning(int a1)
{
  result = 1;
  if (a1 > 1869627198)
  {
    if (a1 > 1919251262)
    {
      if (a1 == 1919251263)
      {
        return result;
      }

      v3 = 2003329396;
    }

    else
    {
      if (a1 == 1869627199)
      {
        return result;
      }

      v3 = 1919249970;
    }

LABEL_13:
    if (a1 == v3)
    {
      return result;
    }

    return 0;
  }

  if (a1 > 560164717)
  {
    if (a1 == 560164718)
    {
      return result;
    }

    v3 = 561277293;
    goto LABEL_13;
  }

  if (a1 != -50 && a1 != -4)
  {
    return 0;
  }

  return result;
}

OSStatus AudioConverterConvertComplexBuffer(AudioConverterRef inAudioConverter, UInt32 inNumberPCMFrames, const AudioBufferList *inInputData, AudioBufferList *outOutputData)
{
  v9 = inNumberPCMFrames;
  v7 = outOutputData;
  v8 = inInputData;
  v5[0] = &v9;
  v5[1] = &v8;
  v5[2] = &v7;
  v6[0] = caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterConvertComplexBuffer::$_0>;
  v6[1] = v5;
  return with_resolved_rt(inAudioConverter, v6);
}

uint64_t caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterConvertComplexBuffer::$_0>(unsigned int ***a1, uint64_t a2)
{
  v3 = (*(*a2 + 88))(a2, ***a1, *(*a1)[1], *(*a1)[2]);
  if (isRenderStatusConcerning(v3))
  {
    v4 = (*(*a2 + 104))(a2) ? 15 : 11;
    v5 = _os_log_pack_size() + 88;
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v5 + v4, 16);
    if (message)
    {
      v7 = message;
      v8 = _os_log_pack_fill();
      v9 = v7 + v5;
      if ((*(*a2 + 104))(a2))
      {
        v10 = "out-of-process";
      }

      else
      {
        v10 = "in-process";
      }

      stpcpy(v9, v10);
      *v8 = 134218498;
      *(v8 + 4) = a2;
      *(v8 + 12) = 2080;
      *(v8 + 14) = v9;
      *(v8 + 22) = 1024;
      *(v8 + 24) = v3;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v7);
    }
  }

  return v3;
}

uint64_t acv2::AudioConverterV2::convertComplexBuffer(acv2::AudioConverterV2 *this, unsigned int a2, const AudioBufferList *a3, AudioBufferList *a4)
{
  v95 = a2;
  v94 = a3;
  if (*(this + 12))
  {
    v92 = this;
    v93 = &v95;
  }

  else
  {
    v8 = *(this + 2);
    v9 = *(this + 4);
    v10 = *(this + 5);
    v11 = *(this + 12);
    v92 = this;
    v93 = &v95;
    if (v11 & 1) == 0 && (*(this + 13))
    {
      v12 = *(this + 4);
      v13 = *(this + 5);
      v75[1] = 2740;
      v76 = v12;
      v77 = v13;
      v78 = a2;
      v79 = 0;
      kdebug_trace();
      v85[0] = 1;
      v86 = 2740;
      v87 = v12;
      v88 = v13;
      v89 = a2;
      v90 = 0;
      LOBYTE(v75[0]) = 0;
      v91 = 1;
      AT::ScopedTrace::~ScopedTrace(v75);
      goto LABEL_7;
    }
  }

  v85[0] = 0;
  v91 = 0;
LABEL_7:
  if (a3)
  {
    if (a4)
    {
      AudioConverterAPI::ScopedThreadChecker::ScopedThreadChecker(&v83, this + 32, this);
      v14 = v83;
      if (v83)
      {
LABEL_59:
        atomic_store(0, v84);
        goto LABEL_60;
      }

      v15 = *(this + 5);
      if (*(v15 + 82) == 1)
      {
        v64 = _os_log_pack_size();
        message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v64 + 88, 16);
        if (!message)
        {
          goto LABEL_70;
        }

        v49 = message;
        *_os_log_pack_fill() = 0;
        goto LABEL_68;
      }

      if ((*(v15 + 12) & 0x20) != 0)
      {
        v16 = *(v15 + 28);
        if (v16 == a3->mNumberBuffers)
        {
          goto LABEL_15;
        }
      }

      else if (a3->mNumberBuffers == 1)
      {
        v16 = 1;
LABEL_15:
        if ((*(v15 + 52) & 0x20) != 0)
        {
          mNumberBuffers = *(v15 + 68);
          if (mNumberBuffers != a4->mNumberBuffers)
          {
            goto LABEL_17;
          }
        }

        else
        {
          mNumberBuffers = a4->mNumberBuffers;
          if (a4->mNumberBuffers != 1)
          {
LABEL_17:
            v18 = _os_log_pack_size();
            v19 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v18 + 88, 16);
            if (!v19)
            {
LABEL_70:
              v14 = 4294967246;
              goto LABEL_59;
            }

            v20 = v19;
            v21 = _os_log_pack_fill();
            v22 = *(this + 5);
            if ((*(v22 + 52) & 0x20) != 0)
            {
              v23 = *(v22 + 68);
            }

            else
            {
              v23 = 1;
            }

            v73 = a4->mNumberBuffers;
            *v21 = 67109376;
            *(v21 + 4) = v23;
            *(v21 + 8) = 1024;
            *(v21 + 10) = v73;
            v57 = *(gAudioConverterDeferredLog + 16);
            v58 = v20;
LABEL_69:
            caulk::concurrent::messenger::enqueue(v57, v58);
            goto LABEL_70;
          }
        }

        if (v16)
        {
          v24 = 0;
          v25 = *(v15 + 24) * v95;
          p_mData = &a3->mBuffers[0].mData;
          while (*p_mData && *(p_mData - 1) >= v25)
          {
            ++v24;
            p_mData += 2;
            if (v16 == v24)
            {
              goto LABEL_26;
            }
          }

          v47 = _os_log_pack_size();
          v48 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v47 + 88, 16);
          if (!v48)
          {
            goto LABEL_70;
          }

          v49 = v48;
          v50 = _os_log_pack_fill();
          v51 = &a3->mBuffers[v24];
          mData = v51->mData;
          LODWORD(v51) = v51->mDataByteSize;
          *v50 = 67109888;
          *(v50 + 4) = v24;
          *(v50 + 8) = 2048;
          *(v50 + 10) = mData;
          *(v50 + 18) = 1024;
          *(v50 + 20) = v51;
          *(v50 + 24) = 1024;
        }

        else
        {
LABEL_26:
          if (!mNumberBuffers)
          {
LABEL_31:
            CrashIfClientProvidedBogusAudioBufferList();
            CrashIfClientProvidedBogusAudioBufferList();
            if (*(*(this + 5) + 48) == 1885564203 && a4->mBuffers[a4->mNumberBuffers].mNumberChannels == 1094863915)
            {
              v29 = (a4[-2].mBuffers[0].mDataByteSize != 0);
            }

            else
            {
              v29 = 0;
            }

            v82 = 0;
            v81[0] = &v82;
            v81[1] = &v94;
            v81[2] = &v95;
            ACBaseAudioSpan::ACBaseAudioSpan(v75, v95, a4, v29);
            v30 = *(this + 5);
            *&v74 = caulk::function_ref<caulk::expected<unsigned int,int> ()(ACAudioSpan &)>::functor_invoker<acv2::AudioConverterV2::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_1>;
            *(&v74 + 1) = v81;
            v31 = acv2::AudioConverterChain::ProduceOutput(v30, &v74, v75, 1u);
            if ((v31 & 0x100000000) != 0)
            {
              v32 = 0;
            }

            else
            {
              v32 = v31;
            }

            v33 = *v77;
            if (v33)
            {
              v34 = v76;
              v35 = (v33 + 3) & 0x1FFFFFFFCLL;
              v36 = vdupq_n_s64(v33 - 1);
              v37 = xmmword_18F9016B0;
              v38 = xmmword_18F9016C0;
              v39 = v77 + 11;
              v40 = vdupq_n_s64(4uLL);
              do
              {
                v41 = vmovn_s64(vcgeq_u64(v36, v38));
                if (vuzp1_s16(v41, *v36.i8).u8[0])
                {
                  *(v39 - 8) = v34;
                }

                if (vuzp1_s16(v41, *&v36).i8[2])
                {
                  *(v39 - 4) = v34;
                }

                if (vuzp1_s16(*&v36, vmovn_s64(vcgeq_u64(v36, *&v37))).i32[1])
                {
                  *v39 = v34;
                  v39[4] = v34;
                }

                v37 = vaddq_s64(v37, v40);
                v38 = vaddq_s64(v38, v40);
                v39 += 16;
                v35 -= 4;
              }

              while (v35);
            }

            if (v75[0] == v95)
            {
              v42 = 0;
            }

            else
            {
              v42 = 1768846202;
            }

            if (v32)
            {
              v14 = v32;
            }

            else
            {
              v14 = v42;
            }

            if ((*(this + 28) & 1) != 0 && a4->mNumberBuffers && a4->mBuffers[0].mDataByteSize)
            {
              v43 = *(this + 5);
              v44 = *(this + 6);
              *(this + 28) = 0;
              v45 = *(this + 4);
              kdebug_trace();
            }

            if (v80[40] == 1)
            {
              std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](v80);
            }

            goto LABEL_59;
          }

          v27 = 0;
          v25 = *(v15 + 64) * v95;
          mBuffers = a4->mBuffers;
          while (mBuffers->mData && mBuffers->mDataByteSize >= v25)
          {
            ++v27;
            ++mBuffers;
            if (mNumberBuffers == v27)
            {
              goto LABEL_31;
            }
          }

          v53 = _os_log_pack_size();
          v54 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v53 + 88, 16);
          if (!v54)
          {
            goto LABEL_70;
          }

          v49 = v54;
          v50 = _os_log_pack_fill();
          v55 = mBuffers->mData;
          mDataByteSize = mBuffers->mDataByteSize;
          *v50 = 67109888;
          *(v50 + 4) = v27;
          *(v50 + 8) = 2048;
          *(v50 + 10) = v55;
          *(v50 + 18) = 1024;
          *(v50 + 20) = mDataByteSize;
          *(v50 + 24) = 1024;
        }

        *(v50 + 26) = v25;
LABEL_68:
        v57 = *(gAudioConverterDeferredLog + 16);
        v58 = v49;
        goto LABEL_69;
      }

      v66 = _os_log_pack_size();
      v67 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v66 + 88, 16);
      if (!v67)
      {
        goto LABEL_70;
      }

      v68 = v67;
      v69 = _os_log_pack_fill();
      v70 = *(this + 5);
      if ((*(v70 + 12) & 0x20) != 0)
      {
        v71 = *(v70 + 28);
      }

      else
      {
        v71 = 1;
      }

      v72 = a3->mNumberBuffers;
      *v69 = 67109376;
      *(v69 + 4) = v71;
      *(v69 + 8) = 1024;
      *(v69 + 10) = v72;
      v57 = *(gAudioConverterDeferredLog + 16);
      v58 = v68;
      goto LABEL_69;
    }

    v62 = _os_log_pack_size();
    v63 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v62 + 88, 16);
    if (v63)
    {
      v61 = v63;
      goto LABEL_75;
    }
  }

  else
  {
    v59 = _os_log_pack_size();
    v60 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v59 + 88, 16);
    if (v60)
    {
      v61 = v60;
LABEL_75:
      *_os_log_pack_fill() = 0;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v61);
    }
  }

  v14 = 4294967246;
LABEL_60:
  if (v91 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v85);
  }

  applesauce::raii::v1::detail::ScopeGuard<acv2::AudioConverterV2::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(&v92);
  return v14;
}

void sub_18F5F9400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t *a30)
{
  if (a24 == 1)
  {
    std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](&a19);
  }

  atomic_store(0, a30);
  if (*(v30 - 104) == 1)
  {
    AT::ScopedTrace::~ScopedTrace((v30 - 144));
  }

  applesauce::raii::v1::detail::ScopeGuard<acv2::AudioConverterV2::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard((v30 - 96));
  _Unwind_Resume(a1);
}

void ACBaseAudioSpan::ACBaseAudioSpan(ACBaseAudioSpan *this, int a2, AudioBufferList *a3, AudioStreamPacketDescription *a4)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = a3;
  *(this + 6) = a3->mNumberBuffers;
  *(this + 28) = a4;
  *(this + 88) = 0;
  *(this + 48) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (a4)
  {
    _ZNSt3__18optionalI19ACMetadataContainerE7emplaceB8ne200100IJEvEERS1_DpOT_(this + 48);
  }

  mDataByteSize = a3->mBuffers[0].mDataByteSize;
  *(this + 5) = 0;
  ACBaseAudioSpan::set(this, a3, 0, a2, mDataByteSize);
}

uint64_t caulk::function_ref<caulk::expected<unsigned int,int> ()(ACAudioSpan &)>::functor_invoker<acv2::AudioConverterV2::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_1>(_BYTE ***a1, ACBaseAudioSpan *this)
{
  v2 = *a1;
  if (***a1 == 1)
  {
    *this = 0;
    *(this + 2) = 0;
    ACBaseAudioSpan::resetMetadataEvents(this);
    return 0x100000000;
  }

  else
  {
    memcpy(*(this + 2), *v2[1], 16 * (**v2[1] - 1) + 24);
    v4 = *v2[2];
    **v2 = 1;
    return v4 | 0x100000000;
  }
}

void acv2::Reinterleaver::ConvertBufferList(uint64_t a1, acv2::Reinterleaver *this, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 80);
  if (!v8)
  {
    goto LABEL_4;
  }

  if ((*(a1 + 68) & 0x20) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(a1 + 84);
    if (!v9)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_7;
    }
  }

  v10 = (v8 / v9);
LABEL_7:
  v11 = *(*a3 + 16);
  v12 = *(*a4 + 16);
  if (*(a1 + 272) == 1)
  {
    v13 = *(a1 + 268);
    switch(v13)
    {
      case 3:
        v23 = *(*a3 + 16);
        v24 = *(*a4 + 16);

        DownmixStereoInterleavedInt32ToMono_Portable(v23, v24, this);
        break;
      case 2:
        v21 = *(*a3 + 16);
        v22 = *(*a4 + 16);

        DownmixStereoInterleavedInt16ToMono_ARM(v21, v22, this);
        break;
      case 1:
        if (this >= 2)
        {
          v14 = this >> 1;
          v15 = vdup_n_s32(0x3F3504F3u);
          do
          {
            v16.i32[0] = *v11;
            v17 = v11 + 16;
            v16.i32[1] = *(v11 + 12);
            *v12 = vmul_f32(vadd_f32(*(v11 + 4), v16), v15);
            v12 += 8;
            v11 += 16;
            --v14;
          }

          while (v14);
          v11 = v17;
        }

        if (this)
        {
          *v12 = (*v11 + *(v11 + 4)) * 0.70711;
        }

        break;
    }

    return;
  }

  v18 = *(a1 + 276);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      if ((*(a1 + 68) & 0x20) != 0)
      {
        v32 = *(a1 + 84);
      }

      else
      {
        v32 = 1;
      }

      if ((*(a1 + 28) & 0x20) != 0)
      {
        v43 = 1;
      }

      else
      {
        v43 = *(a1 + 44);
      }

      v44 = *(a1 + 40);
      v45 = (v10 * this);
      if (v10 <= 8 && ((1 << v10) & 0x114) != 0 && *(a1 + 265) == 1)
      {
        if (v43 >= 1)
        {
          v46 = 0;
          do
          {
            v47 = *(*(a1 + 240) + 4 * v46);
            if (v47 == -1)
            {
              v48 = &acv2::Reinterleaver::sTempScratchBuffer;
              if (v45 > 0x2000)
              {
                goto LABEL_86;
              }
            }

            else
            {
              v48 = (*a4 + 16 * v47 + 16);
            }

            *(*(a1 + 168) + 8 * v46++) = *v48;
          }

          while (v43 != v46);
        }

        switch(v10)
        {
          case 8:
            TDeinterleaver_SIMD<PCMFloat64_SIMD>::Deinterleave(v43, v11, *(a1 + 168), this);
            break;
          case 4:
            v70 = *(a1 + 168);
            if (v43 == 2)
            {
              StereoDeinterleave32_Portable(v11, *v70, v70[1], this);
            }

            else
            {
              TDeinterleaver_SIMD<PCMSInt32_SIMD>::Deinterleave(v43, v11, v70, this);
            }

            break;
          case 2:
            TDeinterleaver_SIMD<PCMSInt16_SIMD>::Deinterleave(v43, v11, *(a1 + 168), this);
            break;
        }

        if (v32 >= 1)
        {
          v72 = 0;
          v73 = 16;
          do
          {
            if (*(*(a1 + 192) + v72) == -1)
            {
              bzero(*(*a4 + v73), v45);
            }

            v72 += 4;
            v73 += 16;
          }

          while (4 * v32 != v72);
        }
      }

      else
      {
LABEL_86:
        if (v32 >= 1)
        {
          v49 = 0;
          v50 = 4 * v32;
          v51 = 16;
          do
          {
            v52 = *(*(a1 + 192) + v49);
            if (v52 == -1)
            {
              bzero(*(*a4 + v51), (v10 * this));
            }

            else
            {
              acv2::Reinterleaver::Blit(this, v11 + v52 * v10, *(*a4 + v51), v10, v44, v10);
            }

            v49 += 4;
            v51 += 16;
          }

          while (v50 != v49);
        }
      }
    }

    else
    {
      if (v18 != 3)
      {
        return;
      }

      if ((*(a1 + 68) & 0x20) != 0)
      {
        v20 = *(a1 + 84);
        if (v20 < 1)
        {
          return;
        }
      }

      else
      {
        v20 = 1;
      }

      v37 = 0;
      v38 = (v10 * this);
      v39 = 16;
      v40 = v20;
      do
      {
        v41 = *(*a4 + v39);
        v42 = *(*(a1 + 192) + 4 * v37);
        if (v42 == -1)
        {
          bzero(v41, v38);
        }

        else
        {
          memcpy(v41, *(*a3 + 16 * v42 + 16), v38);
        }

        ++v37;
        v39 += 16;
      }

      while (v40 != v37);
    }
  }

  else if (v18)
  {
    if (v18 == 1)
    {
      if ((*(a1 + 68) & 0x20) != 0)
      {
        v19 = 1;
      }

      else
      {
        v19 = *(a1 + 84);
      }

      if (v10 <= 8 && ((1 << v10) & 0x114) != 0)
      {
        if (v19 >= 1)
        {
          v33 = 0;
          do
          {
            v34 = *(*(a1 + 192) + 4 * v33);
            if (v34 == -1)
            {
              v35 = &acv2::Reinterleaver::sTempZeroBuffer;
              if ((v10 * this) > 0x2000)
              {
                goto LABEL_93;
              }
            }

            else
            {
              v35 = (*a3 + 16 * v34 + 16);
            }

            *(*(a1 + 168) + 8 * v33++) = *v35;
          }

          while (v19 != v33);
        }

        switch(v10)
        {
          case 8:
            v69 = *(a1 + 168);

            TInterleaver_SIMD<PCMFloat64_SIMD>::Interleave(v19, v69, v12, this);
            break;
          case 4:
            v63 = *(a1 + 168);
            if (v19 == 2)
            {
              v65 = *v63;
              v64 = v63[1];
              if (this >= 2)
              {
                v66 = this >> 1;
                do
                {
                  v67 = *v65++;
                  v75.val[0] = v67;
                  v68 = *v64++;
                  v75.val[1] = v68;
                  vst2_f32(v12, v75);
                  v12 += 16;
                  --v66;
                }

                while (v66);
              }

              if (this)
              {
                *v12 = v65->i32[0];
                *(v12 + 4) = v64->i32[0];
              }
            }

            else
            {

              TInterleaver_SIMD<PCMSInt32_SIMD>::Interleave(v19, v63, v12, this);
            }

            break;
          case 2:
            v36 = *(a1 + 168);

            TInterleaver_SIMD<PCMSInt16_SIMD>::Interleave(v19, v36, v12, this);
            break;
        }
      }

      else
      {
LABEL_93:
        if (v19 >= 1)
        {
          v53 = 0;
          do
          {
            LODWORD(v54) = v53 + 1;
            v55 = v53;
            v56 = *(a1 + 192);
            v57 = *(v56 + 4 * v53);
            if (v57 == -1)
            {
              if (v54 < v19)
              {
                v54 = v54;
                while (*(v56 + 4 * v54) == -1)
                {
                  if (v19 == ++v54)
                  {
                    LODWORD(v54) = v19;
                    break;
                  }
                }
              }

              acv2::Reinterleaver::Zero(this, v12 + v55 * v10, ((v54 - v55) * v10), v8);
            }

            else
            {
              acv2::Reinterleaver::Blit(this, *(*a3 + 16 * v57 + 16), (v12 + v55 * v10), v10, v10, v8);
            }

            v53 = v54;
          }

          while (v54 < v19);
        }
      }
    }
  }

  else
  {
    if ((*(a1 + 68) & 0x20) != 0)
    {
      v26 = *(a1 + 40);
      v25 = 1;
    }

    else
    {
      v25 = *(a1 + 84);
      v26 = *(a1 + 40);
      if (v25 == 2)
      {
        v27 = *(a1 + 192);
        v28 = *v27;
        v29 = v27[1];
        if (v28 != -1 && v28 == v29)
        {
          if (v10 == 4)
          {
            v71 = *(*a4 + 16);

            UpmixMonoToStereoInterleaved32_ARM((v11 + 4 * v28), v12, this);
            return;
          }

          if (v10 == 2)
          {
            v31 = *(*a4 + 16);

            UpmixMonoToStereoInterleaved16_ARM((v11 + 2 * v28), v12, this);
            return;
          }
        }

        v25 = 2;
      }

      else if (v25 < 1)
      {
        return;
      }
    }

    v58 = 0;
    do
    {
      LODWORD(v59) = v58 + 1;
      v60 = v58;
      v61 = *(a1 + 192);
      v62 = *(v61 + 4 * v58);
      if (v62 == -1)
      {
        if (v59 < v25)
        {
          v59 = v59;
          while (*(v61 + 4 * v59) == -1)
          {
            if (v25 == ++v59)
            {
              LODWORD(v59) = v25;
              break;
            }
          }
        }

        acv2::Reinterleaver::Zero(this, v12 + v60 * v10, ((v59 - v60) * v10), v8);
      }

      else
      {
        if (v59 < v25)
        {
          v59 = v59;
          while (*(v61 + 4 * v59) == *(v61 + 4 * v59 - 4) + 1)
          {
            if (v25 == ++v59)
            {
              LODWORD(v59) = v25;
              break;
            }
          }
        }

        acv2::Reinterleaver::Blit(this, v11 + v62 * v10, (v12 + v60 * v10), ((v59 - v60) * v10), v26, v8);
      }

      v58 = v59;
    }

    while (v59 < v25);
  }
}

unsigned int **applesauce::raii::v1::detail::ScopeGuard<acv2::AudioConverterV2::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(unsigned int **a1)
{
  v2 = *a1;
  if (((*a1)[3] & 1) == 0)
  {
    v3 = v2[2];
    v4 = v2[4];
    v5 = v2[5];
    v6 = *a1[1];
  }

  return a1;
}

OSStatus AudioOutputUnitStop(AudioUnit ci)
{
  if (!ci)
  {
    return -50;
  }

  v1 = (*(*ci + 8))(ci);
  if (!v1)
  {
    return 560947818;
  }

  v2 = v1;
  if (*((**v1)(v1) + 38) != 24949)
  {
    return -3000;
  }

  v3 = *(*((**v2)(v2) + 112) + 152);
  if (!v3)
  {
    return -4;
  }

  v4 = v2[3];

  return v3(v4);
}

const __CFString *AudioFormatProperty_FormatCategoryName(const AudioStreamBasicDescription *a1, const __CFString **a2, uint64_t a3, const __CFString *a4)
{
  v6 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v6 = sAudioToolboxBundle;
  }

  mFormatID = a1->mFormatID;
  v8 = @"Dolby Atmos";
  if (mFormatID > 1902324530)
  {
    v9 = mFormatID == 1902324531;
    v10 = 2053319475;
  }

  else
  {
    v9 = mFormatID == 1700997939;
    v10 = 1885547315;
  }

  if (!v9 && mFormatID != v10)
  {
    if (a1->mChannelsPerFrame <= 2)
    {
      v8 = @"Stereo";
    }

    else
    {
      v8 = @"Multichannel";
    }
  }

  result = ThreadSafeCFCopyLocalizedStringFromTableInBundle(v8, @"FormatNames", v6, a4);
  *a2 = result;
  return result;
}

unsigned int ***applesauce::raii::v1::detail::ScopeGuard<acv2::AudioConverterV2::convertBuffer(unsigned int,void const*,unsigned int *,void *)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(unsigned int ***a1)
{
  v2 = *a1;
  if ((*(*a1 + 12) & 1) == 0)
  {
    v3 = v2[2];
    v4 = v2[4];
    v5 = v2[5];
    v6 = **a1[1];
  }

  return a1;
}

int *StereoDeinterleave32_Portable(int *result, int *a2, _DWORD *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v4 = a4 >> 1;
    do
    {
      v5 = *result;
      v6 = result[1];
      v7 = result[2];
      v8 = result[3];
      result += 4;
      *a2 = v5;
      *a3 = v6;
      a2[1] = v7;
      a3[1] = v8;
      a2 += 2;
      a3 += 2;
      --v4;
    }

    while (v4);
  }

  if (a4)
  {
    *a2 = *result;
    *a3 = result[1];
  }

  return result;
}

uint64_t AudioConverterFillComplexBufferRealtimeSafe(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a3;
  v13 = a2;
  v10 = a5;
  v11 = a4;
  v9 = a6;
  v7[0] = &v13;
  v7[1] = &v12;
  v7[2] = &v11;
  v7[3] = &v10;
  v7[4] = &v9;
  v8[0] = caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterFillComplexBufferRealtimeSafe::$_0>;
  v8[1] = v7;
  return with_resolved_rt(a1, v8);
}

OSStatus AudioConverterReset(AudioConverterRef inAudioConverter)
{
  v3[0] = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterReset::$_0>;
  v3[1] = &v2;
  return with_resolved(inAudioConverter, v3);
}

uint64_t acv2::AudioConverterV2::reset(acv2::AudioConverterV2 *this)
{
  v1 = *(this + 5);
  if (*(v1 + 400))
  {
    return 0;
  }

  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  while (v3 != v4)
  {
    result = (*(**v3 + 72))();
    if (result)
    {
      return result;
    }

    v5 = *(*v3 + 104);
    if (v5)
    {
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      ACBaseAudioSpan::resetMetadataEvents((v5 + 24));
      *(v5 + 128) = 0;
      v6 = v5 + 128;
      *(v6 + 8) = 0;
      ACBaseAudioSpan::resetMetadataEvents(v6);
    }

    v3 += 8;
  }

  result = 0;
  *(v1 + 400) = 0;
  *(v1 + 402) = 0;
  return result;
}

void AudioMetadataMemoryPool_AP::AudioMetadataMemoryPool_AP(AudioMetadataMemoryPool_AP *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v1 = this;
  operator new();
}

void sub_18F5FA4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = v9 + 3;
  std::vector<std::pair<BOOL,std::shared_ptr<unsigned char []>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = v9;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_18F5FA884(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x193ADF120](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x193ADF0B0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0;
  v4 = a1 + 64;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = a2;
  if ((a2 & 8) != 0)
  {
    *(a1 + 88) = v4;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4;
  }

  if ((a2 & 0x10) != 0)
  {
    *(a1 + 88) = v4;
    std::string::resize((a1 + 64), 0x16uLL, 0);
    v5 = *(a1 + 87);
    if (v5 < 0)
    {
      v5 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v5;
  }

  return a1;
}

void sub_18F5FA97C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x193ADEE00](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x193ADEE10](v20);
  return a1;
}

void sub_18F5FAC4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x193ADEE10](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x18F5FAC20);
}

const void *std::ostringstream::str[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t FetchFormatListFromCodecs(uint64_t (*a1)(void), const AudioFormatInfo *a2, unsigned int a3, unsigned int *a4, AudioFormatListItem *a5)
{
  v24 = 0;
  if (a3 < 0x40)
  {
    LODWORD(v21) = 1969977198;
    v10 = AudioFormatEncryptedFormatTranslator::DecryptFormatID(a2->mASBD.mFormatID, &v21);
    *&inDesc.componentType = 0;
    v11 = OpenCodecComponent(v10, &inDesc, 0x61646563u);
    if (v11)
    {
      goto LABEL_6;
    }

    outInstance = *&inDesc.componentType;
    v24 = *a4;
    v9 = a1();
    AudioCodecAutoDisposer::~AudioCodecAutoDisposer(&outInstance);
    if (v9)
    {
      return v9;
    }

    if (!v24)
    {
LABEL_6:
      if (a5)
      {
        v12 = *a4;
      }

      else
      {
        v12 = 0;
      }

      v20 = v12;
      if (OpenCodecComponent(v10, &inDesc, 0x61636463u))
      {
        v13 = 0;
        v14 = 0;
      }

      else
      {
        outInstance = *&inDesc.componentType;
        v9 = a1();
        AudioCodecAutoDisposer::~AudioCodecAutoDisposer(&outInstance);
        if (v9)
        {
          return v9;
        }

        v14 = 1;
        v13 = v20;
      }
    }

    else
    {
      v13 = 0;
      v14 = 1;
    }

    v15 = v13 + v24;
    *a4 = v15;
    if (a5)
    {
      v16 = v21;
      if (v21 != 1969977198 && v15 >= 0x30)
      {
        v17 = 0;
        p_mFormatID = &a5->mASBD.mFormatID;
        do
        {
          *p_mFormatID = AudioFormatEncryptedFormatTranslator::EncryptFormatInFlavor(*p_mFormatID, v16);
          p_mFormatID += 12;
          ++v17;
        }

        while (v17 < *a4 / 0x30uLL);
      }
    }

    if (v14)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    inDesc.componentFlags = 0;
    inDesc.componentFlagsMask = 0;
    *&inDesc.componentType = *(&a2->mMagicCookieSize + 1);
    inDesc.componentManufacturer = HIDWORD(a2[1].mASBD.mSampleRate);
    Next = AudioComponentFindNext(0, &inDesc);
    if (Next && (outInstance = 0, !AudioComponentInstanceNew(Next, &outInstance)))
    {
      v21 = outInstance;
      v9 = a1();
      AudioCodecAutoDisposer::~AudioCodecAutoDisposer(&v21);
    }

    else
    {
      return 4294957891;
    }
  }

  return v9;
}

void sub_18F5FAFF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AudioCodecAutoDisposer::~AudioCodecAutoDisposer(va);
  _Unwind_Resume(a1);
}

uint64_t AudioFormatProperty_FormatListSize(const AudioFormatInfo *a1, unsigned int a2, unsigned int *a3)
{
  *a3 = 0;
  if (a1->mASBD.mFormatID == 1836069985)
  {
    v14 = 0;
    v5 = FormatFromESDS(a1->mMagicCookie, a1->mMagicCookieSize, &v14);
    if (v14)
    {
      v6 = v5;
      memset(&v13, 0, 40);
      mMagicCookie = a1->mMagicCookie;
      v13.mMagicCookie = mMagicCookie;
      mMagicCookieSize = a1->mMagicCookieSize;
      v13.mMagicCookieSize = mMagicCookieSize;
      if (v6)
      {
        v10 = 40;
        memset(v11, 0, sizeof(v11));
        v12 = 0;
        result = AudioFormatProperty_AudioFormatInfoFromESDS(mMagicCookie, mMagicCookieSize, &v10, v11);
        if (result)
        {
          return result;
        }

        v13.mASBD.mFormatID = DWORD2(v11[0]);
      }

      else
      {
        v13.mASBD.mFormatID = v14;
      }

      return AudioFormatProperty_FormatListSize(&v13, 0x38u, a3);
    }

    else
    {
      return 560360820;
    }
  }

  else
  {

    return FetchFormatListFromCodecs(GetFormatListFromCodec, a1, a2, a3, 0);
  }
}

uint64_t AudioFormatEncryptedFormatTranslator::DecryptFormatID(uint64_t result, int *a2)
{
  v2 = 1633772320;
  *a2 = 1969977198;
  if (result > 1902211170)
  {
    if (result > 2053202274)
    {
      if (result > 2053202799)
      {
        if (result <= 2053464882)
        {
          if (result != 2053202800)
          {
            if (result != 2053319475)
            {
              return result;
            }

            v3 = 2053467747;
            goto LABEL_53;
          }

          v2 = 1633772400;
LABEL_61:
          v3 = 2053467747;
          goto LABEL_64;
        }

        if (result == 2053464883)
        {
          v2 = 1700998451;
          goto LABEL_61;
        }

        if (result != 2053923171)
        {
          return result;
        }

        v3 = 2053467747;
LABEL_55:
        v2 = 1634492771;
        goto LABEL_64;
      }

      if (result == 2053202275)
      {
        goto LABEL_61;
      }

      if (result != 2053202739)
      {
        if (result != 2053202792)
        {
          return result;
        }

        v2 = 1633772392;
        goto LABEL_61;
      }

      v3 = 2053467747;
LABEL_63:
      v2 = 1633889587;
      goto LABEL_64;
    }

    if (result <= 1902537826)
    {
      switch(result)
      {
        case 0x71617063:
          v2 = 1634754915;
          break;
        case 0x71632B33:
          v3 = 1667392371;
LABEL_53:
          v2 = 1700997939;
          goto LABEL_64;
        case 0x71656333:
          v2 = 1700998451;
          break;
        default:
          return result;
      }

      goto LABEL_58;
    }

    if (result == 1902537827)
    {
      v2 = 1718378851;
      goto LABEL_58;
    }

    if (result == 1902928227)
    {
      v3 = 1667392371;
      goto LABEL_55;
    }

    if (result != 1903522657)
    {
      return result;
    }

    v3 = 1667392371;
    goto LABEL_45;
  }

  if (result <= 1885692722)
  {
    if (result > 1885430639)
    {
      switch(result)
      {
        case 0x70616370:
          v2 = 1633772400;
          break;
        case 0x70617063:
          v2 = 1634754915;
          break;
        case 0x70632B33:
          v3 = 1885695587;
          goto LABEL_53;
        default:
          return result;
      }
    }

    else if (result != 1885430115)
    {
      if (result == 1885430579)
      {
        v3 = 1885695587;
        goto LABEL_63;
      }

      if (result != 1885430632)
      {
        return result;
      }

      v2 = 1633772392;
    }

    goto LABEL_50;
  }

  if (result > 1902207794)
  {
    switch(result)
    {
      case 0x71616333:
        v3 = 1667392371;
        goto LABEL_63;
      case 0x71616368:
        v2 = 1633772392;
        break;
      case 0x71616370:
        v2 = 1633772400;
        break;
      default:
        return result;
    }

LABEL_58:
    v3 = 1667392371;
    goto LABEL_64;
  }

  switch(result)
  {
    case 0x70656333:
      v2 = 1700998451;
LABEL_50:
      v3 = 1885695587;
      goto LABEL_64;
    case 0x70757361:
      v3 = 1885695587;
LABEL_45:
      v2 = 1970495843;
LABEL_64:
      *a2 = v3;
      return v2;
    case 0x71616163:
      goto LABEL_58;
  }

  return result;
}

uint64_t OpenCodecComponent(OSType a1, OpaqueAudioComponentInstance **a2, OSType a3)
{
  inDesc.componentFlagsMask = 0;
  inDesc.componentType = a3;
  inDesc.componentSubType = a1;
  *&inDesc.componentManufacturer = 1634758764;
  Next = AudioComponentFindNext(0, &inDesc);
  if (!Next)
  {
    inDesc.componentManufacturer = 0;
    Next = AudioComponentFindNext(0, &inDesc);
    if (!Next)
    {
      return 4294957891;
    }
  }

  *a2 = 0;
  v5 = AudioComponentInstanceNew(Next, a2);
  if (*a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = -9405;
  }

  if (v5)
  {
    return 4294957891;
  }

  else
  {
    return v6;
  }
}

unint64_t AudioFormatProperty_FirstPlayableFormatFromList(RegistryAccess *a1, AudioFormatListItem *a2, unsigned int *a3)
{
  v5 = a1;
  v18 = *MEMORY[0x1E69E9840];
  v16[0] = &unk_1F033CE48;
  v17 = v16;
  if (a1 == 1 && a2->mASBD.mFormatID == 1819304813)
  {
    v6 = 0;
  }

  else
  {
    RegistryAccess::instance(a1);
    v7 = 1718449215;
    v8 = qword_1ED746318;
    os_unfair_recursive_lock_lock_with_options();
    if (v5)
    {
      v9 = 0;
      p_mFormatID = &a2->mASBD.mFormatID;
      while (1)
      {
        v11 = *p_mFormatID;
        p_mFormatID += 12;
        v12 = (*(*v8 + 16))(v8, v11, 1819304813, 0, 0);
        if (v12)
        {
          if (std::function<BOOL ()(IConverterFactory const*)>::operator()(v17, v12))
          {
            break;
          }
        }

        if (v5 == ++v9)
        {
          goto LABEL_9;
        }
      }

      v7 = (v9 >> 31) & 0x666D743F;
      if ((v9 & 0x80000000) != 0)
      {
        v13 = 0xFFFFFFFF00000000;
      }

      else
      {
        v13 = v9 << 32;
      }
    }

    else
    {
LABEL_9:
      v13 = 0xFFFFFFFF00000000;
    }

    os_unfair_recursive_lock_unlock();
    v6 = v13 | v7;
  }

  std::__function::__value_func<BOOL ()(IConverterFactory const*)>::~__value_func[abi:ne200100](v16);
  if (a3)
  {
    *a3 = HIDWORD(v6);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_18F5FB69C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(IConverterFactory const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(IConverterFactory const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

OSStatus AudioUnitUninitialize(AudioUnit inUnit)
{
  if (!inUnit)
  {
    return -50;
  }

  v1 = (*(*inUnit + 8))(inUnit);
  if (!v1)
  {
    return 560947818;
  }

  v2 = v1;
  if (*((**v1)(v1) + 38) != 24949)
  {
    return -3000;
  }

  v3 = *(*((**v2)(v2) + 112) + 8);
  if (!v3)
  {
    return -4;
  }

  v4 = v2[3];

  return v3(v4);
}

OSStatus AudioConverterDispose(AudioConverterRef inAudioConverter)
{
  ResolvedOpaqueRef<AudioConverterAPI>::ResolvedOpaqueRef(v10, inAudioConverter);
  v1 = v14;
  if (v14)
  {
    v2 = *(v14 + 12);
    if (v2 == 1)
    {
      v5[0] = 0;
      v9 = 0;
    }

    else
    {
      v16 = 2741;
      v17 = 0u;
      v18 = 0u;
      kdebug_trace();
      v5[0] = 1;
      v6 = 2741;
      v7 = 0u;
      v8 = 0u;
      v15[0] = 0;
      v9 = 1;
      AT::ScopedTrace::~ScopedTrace(v15);
      v1 = v14;
      if (!v14)
      {
LABEL_11:
        AT::ScopedTrace::~ScopedTrace(v5);
LABEL_12:
        v3 = 0;
        goto LABEL_13;
      }
    }

    if (v12)
    {
      atomic_fetch_add(v12, 0xFFFFFFFF);
      if (v11 == 1)
      {
        v11 = 0;
      }

      v12 = 0;
    }

    BaseOpaqueObject::destroyOpaqueRef(v1);
    (*(*v1 + 8))(v1);
    v14 = 0;
    if (v2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v3 = -50;
LABEL_13:
  if (v13 == 1 && v12)
  {
    atomic_fetch_add(v12, 0xFFFFFFFF);
  }

  return v3;
}

void sub_18F5FB978(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = *v3;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F5FB948);
}

void acv2::AudioConverterV2::~AudioConverterV2(acv2::AudioConverterChain **this)
{
  *this = &unk_1F032D4A8;
  std::unique_ptr<acv2::AudioConverterChain>::reset[abi:ne200100](this + 5, 0);
  AudioConverterAPI::~AudioConverterAPI(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032D4A8;
  std::unique_ptr<acv2::AudioConverterChain>::reset[abi:ne200100](this + 5, 0);

  AudioConverterAPI::~AudioConverterAPI(this);
}

void acv2::AudioConverterChain::~AudioConverterChain(acv2::AudioConverterChain *this)
{
  v2 = *(this + 63);
  if (v2)
  {
    *(this + 64) = v2;
    operator delete(v2);
  }

  v3 = *(this + 61);
  *(this + 61) = 0;
  if (v3)
  {
    AudioConverterCapturer::~AudioConverterCapturer(v3);
    MEMORY[0x193ADF220]();
  }

  v4 = *(this + 47);
  if (v4)
  {
    *(this + 48) = v4;
    operator delete(v4);
  }

  v5 = *(this + 44);
  if (v5)
  {
    *(this + 45) = v5;
    operator delete(v5);
  }

  v6 = *(this + 40);
  if (v6)
  {
    *(this + 41) = v6;
    operator delete(v6);
  }

  v7 = *(this + 37);
  if (v7)
  {
    *(this + 38) = v7;
    operator delete(v7);
  }

  v8 = (this + 272);
  std::vector<std::unique_ptr<ACOutputBuffer>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 232) == 1)
  {
    ACAudioSpan::~ACAudioSpan((this + 128));
  }

  v8 = (this + 104);
  std::vector<std::unique_ptr<acv2::AudioConverterBase>>::__destroy_vector::operator()[abi:ne200100](&v8);
}

void ACAudioSpan::~ACAudioSpan(ACAudioSpan *this)
{
  ExtendedAudioBufferList_Destroy(*(this + 12));
  if (*(this + 88) == 1)
  {
    std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](this + 48);
  }
}

uint64_t ExtendedAudioBufferList_Destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 8) != 1094863915)
    {
      std::terminate();
    }

    if ((atomic_load_explicit(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input, memory_order_acquire) & 1) == 0)
    {
      result = __cxa_guard_acquire(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input);
      if (result)
      {
        _ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input = checkEnvVar("AudioBufferMemoryResource_UseMalloc");
        __cxa_guard_release(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input);
      }
    }

    if (_ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input == 1)
    {
      default_resource = std::pmr::get_default_resource(result);
    }

    else
    {
      default_resource = caulk::audio_buffer_resource(result);
    }

    v3 = default_resource;
    v4 = *(v1 + 32);
    if (v4)
    {
      (*(*default_resource + 24))(default_resource, v4, *(v1 + 20), 8);
    }

    v5 = *(v1 + 12);
    v6 = *(v1 + 16);
    if (v5)
    {
      std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](v1 + v5);
    }

    v7 = *(*v3 + 24);

    return v7(v3, v1, v6, 8);
  }

  return result;
}

void std::vector<std::unique_ptr<ACOutputBuffer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<ACOutputBuffer>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void acv2::AudioConverterBase::~AudioConverterBase(acv2::AudioConverterBase *this)
{
  *this = &unk_1F033D460;
  v2 = *(this + 19);
  *(this + 19) = 0;
  if (v2)
  {
    AudioConverterCapturer::~AudioConverterCapturer(v2);
    MEMORY[0x193ADF220]();
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    ACAudioSpan::~ACAudioSpan(v3);
    MEMORY[0x193ADF220]();
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    if (*(v4 + 280) == 1)
    {
      std::vector<AudioStreamPacketDescription,caulk::rt_allocator<AudioStreamPacketDescription>>::__destroy_vector::operator()[abi:ne200100]((v4 + 256));
    }

    v5 = *(v4 + 232);
    if (v5)
    {
      *(v4 + 240) = v5;
      operator delete(v5);
    }

    ACAudioSpan::~ACAudioSpan((v4 + 128));
    ACAudioSpan::~ACAudioSpan((v4 + 24));
    ExtendedAudioBufferList_Destroy(*(v4 + 16));
    MEMORY[0x193ADF220](v4, 0x1072C40F2EF4CA8);
  }
}

void AudioConverterAPI::~AudioConverterAPI(AudioConverterAPI *this)
{
  *this = &unk_1F033D040;
  if (*(this + 28) == 1)
  {
    v2 = *(this + 5);
    v3 = *(this + 6);
    *(this + 28) = 0;
    v4 = *(this + 4);
    kdebug_trace();
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

uint64_t AUOOPWorkgroupManager_RemoveRemoteIOWorkgroup(int a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (kAUExtensionScope)
  {
    v2 = *kAUExtensionScope;
    v3 = v2;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AUOOPWorkgroups.mm";
    *&buf[12] = 1024;
    *&buf[14] = 38;
    v12 = 1024;
    v13 = a1;
    _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUOOPWorkgroupManager: RemoveRemoteIOWorkgroup called with token %u.", buf, 0x18u);
  }

LABEL_8:
  v5 = auoop::gWorkgroupManager(v2);
  v10 = a1;
  *buf = &unk_1F0337408;
  *&buf[8] = &v10;
  v14 = buf;
  auoop::WorkgroupManager_Base::mutateWorkgroups(v5, buf);
  std::__function::__value_func<BOOL ()(auoop::WorkgroupManager_Base::State &)>::~__value_func[abi:ne200100](buf);
  v6 = auoop::tlsWorkgroupPort();
  v7 = *v6;
  *v6 = 0;
  result = mach_port_deallocate(*MEMORY[0x1E69E9A60], v7);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F5FC010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(auoop::WorkgroupManager_Base::State &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<auoop::WorkgroupManager_iOS::removeRemoteIOWorkgroup(unsigned int)::$_0,std::allocator<auoop::WorkgroupManager_iOS::removeRemoteIOWorkgroup(unsigned int)::$_0>,BOOL ()(auoop::WorkgroupManager_Base::State &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  if (v4 != v3)
  {
    while (*v4 != **(a1 + 8))
    {
      v4 += 6;
      if (v4 == v3)
      {
        v4 = v3;
        break;
      }
    }
  }

  if (v3 != v4)
  {
    v5 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *>((v4 + 6), v3, v4);
    v6 = *(a2 + 8);
    if (v6 != v5)
    {
      do
      {
        v7 = v6 - 24;
        objc_destroyWeak((v6 - 8));
        v6 = v7;
      }

      while (v7 != v5);
    }

    *(a2 + 8) = v5;
  }

  return 1;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      WeakRetained = objc_loadWeakRetained((v5 + 16));
      objc_storeWeak((a3 + 16), WeakRetained);

      a3 += 24;
      v5 += 24;
    }

    while (v5 != a2);
  }

  return a3;
}

void acv2::Reinterleaver::~Reinterleaver(acv2::Reinterleaver *this)
{
  *this = &unk_1F0327440;
  v2 = *(this + 30);
  if (v2)
  {
    *(this + 31) = v2;
    operator delete(v2);
  }

  v3 = *(this + 27);
  if (v3)
  {
    *(this + 28) = v3;
    operator delete(v3);
  }

  v4 = *(this + 24);
  if (v4)
  {
    *(this + 25) = v4;
    operator delete(v4);
  }

  v5 = *(this + 21);
  if (v5)
  {
    *(this + 22) = v5;
    operator delete(v5);
  }

  acv2::AudioConverterBase::~AudioConverterBase(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0327440;
  v2 = *(this + 30);
  if (v2)
  {
    *(this + 31) = v2;
    operator delete(v2);
  }

  v3 = *(this + 27);
  if (v3)
  {
    *(this + 28) = v3;
    operator delete(v3);
  }

  v4 = *(this + 24);
  if (v4)
  {
    *(this + 25) = v4;
    operator delete(v4);
  }

  v5 = *(this + 21);
  if (v5)
  {
    *(this + 22) = v5;
    operator delete(v5);
  }

  acv2::AudioConverterBase::~AudioConverterBase(this);
}

void acv2::PCMConverter2::~PCMConverter2(acv2::PCMConverter2 *this)
{
  acv2::AudioConverterBase::~AudioConverterBase(this);

  JUMPOUT(0x193ADF220);
}

uint64_t GetMediaServerRPCTimeout(void)
{
  result = gMediaServerTimeout;
  if (gMediaServerTimeout < 0)
  {
    v4 = 0;
    AppIntegerValue = CACFPreferencesGetAppIntegerValue(@"rpc_timeout", @"com.apple.coreaudio", &v4);
    if (v4)
    {
      if (AppIntegerValue)
      {
        result = (1000 * AppIntegerValue);
      }

      else
      {
        result = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v2 = CACFPreferencesGetAppIntegerValue(@"rpc_timeout", @"com.apple.coremedia", &v4);
      v3 = 1000 * v2;
      if (!v2)
      {
        v3 = 0x7FFFFFFF;
      }

      if (v4)
      {
        result = v3;
      }

      else
      {
        result = 9000;
      }
    }

    gMediaServerTimeout = result;
  }

  return result;
}

uint64_t CAStreamBasicDescription::PackednessIsSignificant(CAStreamBasicDescription *this)
{
  if (*(this + 2) == 1819304813)
  {
    v1 = *(this + 6);
    if (v1)
    {
      if ((*(this + 12) & 0x20) != 0)
      {
        v2 = 1;
      }

      else
      {
        v2 = *(this + 7);
        if (!v2)
        {
          v1 = 0;
          return v1 != *(this + 8);
        }
      }

      v1 = 8 * (v1 / v2);
    }

    return v1 != *(this + 8);
  }

  v4 = CAVerboseAbort();
  return acv2::AudioConverterBase::AsReinterleaver(v4);
}

void CACFFormatter::CACFFormatter(CACFFormatter *this, const void *a2)
{
  *this = 0;
  v3 = CFStringCreateWithFormat(0, 0, @"%@", a2);
  usedBufLen = 0;
  v6.length = CFStringGetLength(v3);
  v6.location = 0;
  CFStringGetBytes(v3, v6, 0x8000100u, 0x3Fu, 0, 0, 0, &usedBufLen);
  v4 = malloc_type_malloc(usedBufLen + 1, 0x100004077774924uLL);
  *this = v4;
  CFStringGetCString(v3, v4, usedBufLen + 1, 0x8000100u);
  CFRelease(v3);
}

void sub_18F5FC410(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void auoop::WorkgroupManager_Base::mutateWorkgroups(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  LOBYTE(__p) = 0;
  v44 = 0;
  if (kAUExtensionScope)
  {
    v4 = *kAUExtensionScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AUOOPWorkgroups.mm";
    v46 = 1024;
    v47 = 66;
    _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUOOPWorkgroupManager: mutating workgroups.", buf, 0x12u);
  }

LABEL_8:
  os_unfair_lock_lock(a1);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 != v7)
  {
    while (1)
    {
      WeakRetained = objc_loadWeakRetained((v6 + 16));
      v9 = WeakRetained == 0;

      if (v9)
      {
        break;
      }

      v6 += 24;
      if (v6 == v7)
      {
        v6 = v7;
        goto LABEL_18;
      }
    }

    if (v6 != v7)
    {
      for (i = v6 + 24; i != v7; i += 24)
      {
        v11 = objc_loadWeakRetained((i + 16));
        v12 = v11 == 0;

        if (!v12)
        {
          *v6 = *i;
          v13 = objc_loadWeakRetained((i + 16));
          objc_storeWeak((v6 + 16), v13);

          v6 += 24;
        }
      }
    }
  }

LABEL_18:
  v14 = *(a1 + 16);
  if (v6 != v14)
  {
    v15 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *>(*(a1 + 16), *(a1 + 16), v6);
    for (j = *(a1 + 16); j != v15; j -= 24)
    {
      objc_destroyWeak((j - 8));
    }

    *(a1 + 16) = v15;
  }

  v17 = *(a2 + 24);
  if (!v17)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v18 = (*(*v17 + 48))(v17, a1 + 8) ^ 1;
  if (v6 != v14)
  {
    LOBYTE(v18) = 0;
  }

  if (v18)
  {
    goto LABEL_52;
  }

  if (v44 != 1)
  {
    __p = 0;
    v42 = 0;
    v43 = 0;
    std::vector<auoop::TrackedWorkgroup>::__init_with_size[abi:ne200100]<auoop::TrackedWorkgroup*,auoop::TrackedWorkgroup*>(&__p, *(a1 + 8), *(a1 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
    v44 = 1;
LABEL_52:
    os_unfair_lock_unlock(a1);
    goto LABEL_53;
  }

  if (&__p == (a1 + 8))
  {
    goto LABEL_52;
  }

  v20 = *(a1 + 8);
  v19 = *(a1 + 16);
  v21 = v19 - v20;
  v22 = v43;
  v23 = __p;
  if (v43 - __p < (v19 - v20))
  {
    if (__p)
    {
      v24 = v42;
      v25 = __p;
      if (v42 != __p)
      {
        do
        {
          objc_destroyWeak(v24 - 1);
          v24 -= 3;
        }

        while (v24 != v23);
        v25 = __p;
      }

      v42 = v23;
      operator delete(v25);
      v22 = 0;
      __p = 0;
      v42 = 0;
      v43 = 0;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * (v21 >> 3);
    if (v26 <= 0xAAAAAAAAAAAAAAALL)
    {
      v27 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 3);
      if (2 * v27 > v26)
      {
        v26 = 2 * v27;
      }

      if (v27 >= 0x555555555555555)
      {
        v28 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v28 = v26;
      }

      if (v28 <= 0xAAAAAAAAAAAAAAALL)
      {
        std::allocator<auoop::TrackedWorkgroup>::allocate_at_least[abi:ne200100](v28);
      }
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  if (v42 - __p >= v21)
  {
    std::__copy_impl::operator()[abi:ne200100]<auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *>(*(a1 + 8), *(a1 + 16), __p);
    v35 = v34;
    for (k = v42; k != v35; k -= 3)
    {
      objc_destroyWeak(k - 1);
    }

    v42 = v35;
  }

  else
  {
    v29 = std::__copy_impl::operator()[abi:ne200100]<auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *>(*(a1 + 8), v20 + v42 - __p, __p);
    v30 = v42;
    if (v19 != v29)
    {
      do
      {
        v31 = v30;
        *v30 = *v29;
        v32 = (v30 + 2);
        v33 = v29 + 16;
        objc_copyWeak(v30 + 2, (v29 + 16));
        v29 = v33 + 8;
        v30 = (v32 + 8);
      }

      while (v33 + 8 != v19);
      v30 = v31 + 3;
    }

    v42 = v30;
  }

  if (a1)
  {
    goto LABEL_52;
  }

LABEL_53:
  if (v44 == 1)
  {
    v37 = (a1 + 32);
    os_unfair_lock_lock((a1 + 32));
    v39 = *(a1 + 40);
    v38 = *(a1 + 48);
    while (v39 != v38)
    {
      auoop::WorkgroupPropagator::propagate(*v39++, &__p);
    }

    os_unfair_lock_unlock(v37);
    if (v44)
    {
      *buf = &__p;
      std::vector<auoop::TrackedWorkgroup>::__destroy_vector::operator()[abi:ne200100](buf);
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

void sub_18F5FC8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t *a13)
{
  if (v13)
  {
    os_unfair_lock_unlock(v13);
  }

  if (a12 == 1)
  {
    a13 = &a9;
    std::vector<auoop::TrackedWorkgroup>::__destroy_vector::operator()[abi:ne200100](&a13);
  }

  _Unwind_Resume(exception_object);
}

void auoop::WorkgroupManager_Base::State::addWorkgroup(auoop::WorkgroupManager_Base::State *this, int a2, OS_os_workgroup *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *this;
  v8 = *(this + 1);
  if (v8 != *this)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *this) >> 3);
    do
    {
      v10 = v9 >> 1;
      v11 = v7 + 24 * (v9 >> 1);
      v12 = *(v11 + 8);
      v13 = v11 + 24;
      v9 += ~(v9 >> 1);
      if (v12 > v5)
      {
        v9 = v10;
      }

      else
      {
        v7 = v13;
      }
    }

    while (v9);
    v8 = v7;
  }

  LODWORD(v35) = a2;
  *(&v35 + 1) = v5;
  objc_initWeak(&v36, v5);
  v15 = *(this + 1);
  v14 = *(this + 2);
  if (v15 >= v14)
  {
    v21 = *this;
    v22 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *this) >> 3) + 1;
    if (v22 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v23 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v21) >> 3);
    if (2 * v23 > v22)
    {
      v22 = 2 * v23;
    }

    if (v23 >= 0x555555555555555)
    {
      v24 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v24 = v22;
    }

    v40 = this;
    if (v24)
    {
      std::allocator<auoop::TrackedWorkgroup>::allocate_at_least[abi:ne200100](v24);
    }

    v25 = v8 - v21;
    v26 = 8 * ((v8 - v21) >> 3);
    v37 = 0;
    v38 = v26;
    v39 = v26;
    if (!(0xAAAAAAAAAAAAAAABLL * ((v8 - v21) >> 3)))
    {
      if (v25 < 1)
      {
        if (v8 == v21)
        {
          v29 = 1;
        }

        else
        {
          v29 = 0x5555555555555556 * ((v8 - v21) >> 3);
        }

        v41 = this;
        std::allocator<auoop::TrackedWorkgroup>::allocate_at_least[abi:ne200100](v29);
      }

      v27 = 1 - 0x5555555555555555 * (v25 >> 3);
      v28 = -3 * (v27 >> 1);
      v26 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *>(v26, v26, v26 - 24 * (v27 >> 1));
      v38 += 8 * v28;
      *&v39 = v26;
    }

    *v26 = v35;
    objc_moveWeak((v26 + 16), &v36);
    *&v39 = v39 + 24;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<auoop::TrackedWorkgroup>,auoop::TrackedWorkgroup*>(v8, *(this + 1), v39);
    v30 = *this;
    v31 = v38;
    *&v39 = v39 + *(this + 1) - v8;
    *(this + 1) = v8;
    v32 = v31 + v30 - v8;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<auoop::TrackedWorkgroup>,auoop::TrackedWorkgroup*>(v30, v8, v32);
    v33 = *this;
    *this = v32;
    v34 = *(this + 2);
    *(this + 8) = v39;
    *&v39 = v33;
    *(&v39 + 1) = v34;
    v37 = v33;
    v38 = v33;
    std::__split_buffer<auoop::TrackedWorkgroup>::~__split_buffer(&v37);
  }

  else if (v8 == v15)
  {
    *v15 = v35;
    objc_moveWeak((v15 + 16), &v36);
    *(this + 1) = v15 + 24;
  }

  else
  {
    v16 = v15 - 24;
    v17 = *(this + 1);
    if (v15 >= 0x18)
    {
      v17 = *(this + 1);
      do
      {
        *v17 = *v16;
        objc_moveWeak((v17 + 16), (v16 + 16));
        v17 += 24;
        v16 += 24;
      }

      while (v16 < v15);
    }

    *(this + 1) = v17;
    if (v15 != v8 + 24)
    {
      v18 = 0;
      do
      {
        *(v15 + v18 - 24) = *(v15 + v18 - 48);
        WeakRetained = objc_loadWeakRetained((v15 + v18 - 32));
        objc_storeWeak((v15 + v18 - 8), WeakRetained);

        v18 -= 24;
      }

      while (v8 - v15 + 24 != v18);
    }

    *v8 = v35;
    v20 = objc_loadWeakRetained(&v36);
    objc_storeWeak((v8 + 16), v20);
  }

  objc_destroyWeak(&v36);
}

void sub_18F5FCCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__split_buffer<auoop::TrackedWorkgroup>::~__split_buffer(va);
  objc_destroyWeak((v6 + 16));

  _Unwind_Resume(a1);
}

void std::allocator<auoop::TrackedWorkgroup>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<auoop::TrackedWorkgroup>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<auoop::TrackedWorkgroup>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
}

void std::vector<auoop::TrackedWorkgroup>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 3;
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

uint64_t std::__function::__value_func<BOOL ()(auoop::WorkgroupManager_Base::State &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::vector<auoop::TrackedWorkgroup>::__init_with_size[abi:ne200100]<auoop::TrackedWorkgroup*,auoop::TrackedWorkgroup*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<auoop::TrackedWorkgroup>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t ResolvedOpaqueRef<AudioConverterAPI>::ResolvedOpaqueRef(uint64_t a1, unsigned int a2)
{
  v5 = a2;
  *a1 = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (*MEMORY[0x1E69E5020])
  {
    std::optional<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::scoped_lookup>::emplace[abi:ne200100]<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>&,unsigned int const&,void>(a1, *MEMORY[0x1E69E5020], &v5);
    if (*(a1 + 24))
    {
      v3 = *(a1 + 16);
      *(a1 + 48) = BaseOpaqueObject::checkRTTI();
    }
  }

  return a1;
}

uint64_t std::optional<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::scoped_lookup>::emplace[abi:ne200100]<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>&,unsigned int const&,void>(uint64_t result, uint64_t a2, unsigned int *a3)
{
  if (*(result + 40) == 1)
  {
    v3 = *(result + 32);
    if (v3)
    {
      atomic_fetch_add(v3, 0xFFFFFFFF);
    }

    *(result + 40) = 0;
  }

  v4 = *a3;
  *result = a2;
  *(result + 8) = v4;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  atomic_fetch_add((a2 + 16), 1u);
  v5 = atomic_load((*result + 8));
  if (v5)
  {
    v6 = *(v5 + 8);
    v7 = v4 % v6;
    if ((v4 % v6) >= 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v5 + 8);
    }

    v9 = v7 + v8 - 3;
    v10 = v5 + 16;
    v11 = -1;
    v12 = v4 % v6;
    do
    {
      v13 = v9;
      v14 = atomic_load((v10 + 8 * v12));
      if (v14 == -1)
      {
        if (v11 < 0)
        {
          v11 = v12;
        }
      }

      else
      {
        if (!v14)
        {
          goto LABEL_21;
        }

        if (v14[1] == v4)
        {
          *(result + 32) = v14;
          atomic_fetch_add(v14, 1u);
          *(result + 16) = *(*(result + 32) + 8);
          *(result + 24) = 1;
          goto LABEL_22;
        }
      }

      if (v13 >= 3)
      {
        v15 = 0;
      }

      else
      {
        v15 = v6;
      }

      v9 = v13 + v15 - 3;
      v12 = v13;
    }

    while (v13 != v7);
    if ((v11 & 0x80000000) == 0)
    {
LABEL_21:
      *(result + 32) = 0;
      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    atomic_fetch_add((*result + 16), 0xFFFFFFFF);
    *(result + 40) = 1;
  }

  return result;
}

uint64_t with_resolved(unsigned int a1, uint64_t (**a2)(uint64_t, uint64_t))
{
  ResolvedOpaqueRef<AudioConverterAPI>::ResolvedOpaqueRef(v5, a1);
  v3 = v8;
  if (v8)
  {
    LODWORD(a2) = (*a2)((a2 + 1), v8);
  }

  if (v7 == 1 && v6)
  {
    atomic_fetch_add(v6, 0xFFFFFFFF);
  }

  if (v3)
  {
    return a2;
  }

  else
  {
    return 4294967246;
  }
}

void sub_18F5FD164(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = *v3;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F5FD12CLL);
}

void std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<std::unique_ptr<acv2::AudioConverterBase>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t *CA::AudioBuffersBase::AudioBuffersBase(uint64_t *a1, uint64_t a2, int a3)
{
  *a1 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ExtendedAudioBufferList_CreateWithFormat failed");
  }

  ExtendedAudioBufferList_Prepare(a2, a3, *(a2 + 4));
  return a1;
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
}

void acv2::Reinterleaver::BuildInverseChannelMap(acv2::Reinterleaver *this)
{
  *(this + 265) = 1;
  memset(*(this + 30), 255, 4 * *(this + 11));
  v2 = *(this + 21);
  if (!v2)
  {
    v2 = 0;
    v4 = 0;
    goto LABEL_11;
  }

  v3 = 0;
  v4 = 0;
  v5 = *(this + 24);
  while (1)
  {
    v6 = *(v5 + 4 * v3);
    if (v6 == -1)
    {
      v4 = 1;
      goto LABEL_7;
    }

    v7 = *(this + 30);
    if (*(v7 + 4 * v6) != -1)
    {
      break;
    }

    *(v7 + 4 * v6) = v3;
    v2 = *(this + 21);
LABEL_7:
    if (++v3 >= v2)
    {
      goto LABEL_11;
    }
  }

  *(this + 265) = 0;
LABEL_11:
  v8 = *(this + 20);
  if (v8)
  {
    if ((*(this + 68) & 0x20) != 0)
    {
      v2 = 1;
    }

    else if (!v2)
    {
      return;
    }

    v9 = v8 / v2;
    v10 = v9 > 8;
    v11 = (1 << v9) & 0x114;
    if (!v10 && v11 != 0)
    {
      if (((*(this + 69) == 1) & v4) == 1 && acv2::Reinterleaver::BuildInverseChannelMap(void)::token[0] != -1)
      {
        dispatch_once(acv2::Reinterleaver::BuildInverseChannelMap(void)::token, &__block_literal_global_2217);
      }

      v13 = *(this + 11);
      if (v13)
      {
        v14 = 0;
        v15 = *(this + 30);
        do
        {
          v16 = *v15++;
          v14 |= v16 == -1;
          --v13;
        }

        while (v13);
        if (((*(this + 69) == 2) & v14) != 0 && acv2::Reinterleaver::BuildInverseChannelMap(void)::token != -1)
        {

          dispatch_once(&acv2::Reinterleaver::BuildInverseChannelMap(void)::token, &__block_literal_global_3);
        }
      }
    }
  }
}

uint64_t acv2::Reinterleaver::StereoDownmixPossible(_DWORD *a1)
{
  v1 = a1[7] == 2 && a1[17] == 1;
  if (v1 && a1[2] == 1819304813)
  {
    v2 = a1[8];
    v4 = a1[5];
    v3 = a1[6];
    v5 = a1[4];
    v6 = a1[3] & 0xF;
    v7 = v6 == 9 && v4 == 1;
    if (v7 && (v2 == 32 ? (v8 = v3 == 8) : (v8 = 0), v8))
    {
      v9 = a1[12];
      if (v5 == 8 && v9 == 1819304813)
      {
        if ((a1[13] & 0xF) == 9 && a1[15] == 1 && a1[18] == 32 && a1[16] == 4)
        {
          v9 = 1819304813;
          if (a1[14] == 4)
          {
            return 1;
          }
        }

        else
        {
          v9 = 1819304813;
        }
      }
    }

    else
    {
      v9 = a1[12];
    }

    v12 = v6 == 12 && v4 == 1;
    if (v12 && v2 == 16 && v3 == 4 && v5 == 4 && v9 == 1819304813)
    {
      if ((a1[13] & 0xF) == 0xC && a1[15] == 1 && a1[18] == 16 && a1[16] == 2 && a1[14] == 2)
      {
        return 2;
      }
    }

    else
    {
      v17 = v2 == 32 && v12;
      v20 = v17 && v3 == 8 && v5 == 8 && v9 == 1819304813;
      if (v20 && (a1[13] & 0xF) == 0xC && a1[15] == 1 && a1[18] == 32 && a1[16] == 4 && a1[14] == 4)
      {
        return 3;
      }
    }
  }

  return 0;
}

OSStatus AudioConverterSetProperty(AudioConverterRef inAudioConverter, AudioConverterPropertyID inPropertyID, UInt32 inPropertyDataSize, const void *inPropertyData)
{
  v8 = inPropertyDataSize;
  v9 = inPropertyID;
  v7 = inPropertyData;
  v5[0] = &v9;
  v5[1] = &v8;
  v5[2] = &v7;
  v6[0] = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
  v6[1] = v5;
  return with_resolved(inAudioConverter, v6);
}

uint64_t caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>(unsigned int ***a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = ***a1;
  v4 = *(*a1)[2];
  if (!v4)
  {
    v20 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v20 + 88, 16);
    if (!message)
    {
      v7 = 4294967246;
      goto LABEL_31;
    }

    v11 = message;
    v22 = _os_log_pack_fill();
    *v22 = 67109120;
    v22[1] = v3;
    v7 = 4294967246;
    goto LABEL_14;
  }

  v6 = *v2[1];
  if (v3 == 1668309874)
  {
    if (v6 < 8)
    {
      v7 = 561211770;
      goto LABEL_31;
    }

    if ((*(*a2 + 104))(a2))
    {
      v7 = (*(*a2 + 56))(a2, 1668309874, v6, v4);
    }

    else
    {
      v7 = 2003329396;
      cf = 0;
      v17 = *v4;
      if (!MediaToolboxLibraryCore(0) || !getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc())
      {
        goto LABEL_21;
      }

      CryptorFromSerializedRecipeSymbolLoc = getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc();
      if (!CryptorFromSerializedRecipeSymbolLoc)
      {
        dlerror();
        abort_report_np();
      }

      v7 = CryptorFromSerializedRecipeSymbolLoc(*MEMORY[0x1E695E480], v17, &cf);
      if (!v7)
      {
        v7 = (*(*a2 + 56))(a2, 1668310371, 8, &cf);
        CFRelease(cf);
      }

      else
      {
LABEL_21:
        if (gAudioConverterDeferredLogOnce != -1)
        {
          dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
        }

        v19 = *gAudioConverterLog;
        if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v27 = "AudioConverterInternal.cpp";
          v28 = 1024;
          v29 = 132;
          _os_log_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create a limited Cryptor from the context, returning kAudioConverterErr_UnspecifiedError", buf, 0x12u);
        }
      }
    }

    if (v7 != 1886547824)
    {
      goto LABEL_31;
    }

    v3 = **v2;
    v6 = *v2[1];
    v4 = *v2[2];
  }

  v7 = (*(*a2 + 56))(a2, v3, v6, v4);
  if (v7)
  {
    v8 = (*(*a2 + 104))(a2) ? 15 : 11;
    v9 = _os_log_pack_size() + 88;
    v10 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v9 + v8, 0);
    if (v10)
    {
      v11 = v10;
      v12 = (v10 + v9);
      v13 = _os_log_pack_fill();
      if ((*(*a2 + 104))(a2))
      {
        v14 = "out-of-process";
      }

      else
      {
        v14 = "in-process";
      }

      stpcpy(v12, v14);
      v15 = **v2;
      v16 = *v2[1];
      *v13 = 134219010;
      *(v13 + 4) = a2;
      *(v13 + 12) = 2080;
      *(v13 + 14) = v12;
      *(v13 + 22) = 1024;
      *(v13 + 24) = v7;
      *(v13 + 28) = 1024;
      *(v13 + 30) = v15;
      *(v13 + 34) = 1024;
      *(v13 + 36) = v16;
LABEL_14:
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v11);
    }
  }

LABEL_31:
  v23 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t acv2::AudioConverterV2::setProperty(acv2::AudioConverterV2 *this, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (*(this + 12))
  {
    v8 = 0;
  }

  else
  {
    v23 = 2737;
    v24 = a2;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    kdebug_trace();
    v16 = 2737;
    v17 = a2;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v22[0] = 0;
    AT::ScopedTrace::~ScopedTrace(v22);
    v8 = 1;
  }

  v15[0] = v8;
  v21 = v8;
  if (a4)
  {
    v9 = acv2::AudioConverterChain::SetProperty(*(this + 5), a2, a3, a4);
  }

  else
  {
    v11 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v11 + 88, 16);
    if (message)
    {
      v13 = message;
      v14 = _os_log_pack_fill();
      *v14 = 67109120;
      v14[1] = a2;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v13);
    }

    v9 = 4294967246;
  }

  if (v21 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v15);
  }

  return v9;
}

void sub_18F5FDC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<float>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

OSStatus AudioConverterGetProperty(AudioConverterRef inAudioConverter, AudioConverterPropertyID inPropertyID, UInt32 *ioPropertyDataSize, void *outPropertyData)
{
  v9 = inPropertyID;
  v7 = outPropertyData;
  v8 = ioPropertyDataSize;
  v5[0] = &v9;
  v5[1] = &v8;
  v5[2] = &v7;
  v6[0] = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
  v6[1] = v5;
  return with_resolved(inAudioConverter, v6);
}

uint64_t caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>(unsigned int ***a1, uint64_t *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = ***a1;
  v5 = *(*a1)[1];
  v6 = *(*a1)[2];
  v7 = *a2;
  if (v4 == 1869574207)
  {
    v8 = *(v7 + 112);
    v9 = *MEMORY[0x1E69E9840];
    v10 = *(*a1)[1];

    return v8(a2, v5, v6);
  }

  else
  {
    v12 = (*(v7 + 48))(a2, v4, v5, v6);
    if (v12)
    {
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v13 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
      {
        v14 = (*(*a2 + 104))(a2);
        v15 = "in-process";
        if (v14)
        {
          v15 = "out-of-process";
        }

        v16 = **v3;
        v17 = **v3[1];
        v19 = 136316674;
        v20 = "AudioConverter.cpp";
        v21 = 1024;
        v22 = 1294;
        v23 = 2048;
        v24 = a2;
        v25 = 2080;
        v26 = v15;
        v27 = 1024;
        v28 = v12;
        v29 = 1024;
        v30 = v16;
        v31 = 1024;
        v32 = v17;
        _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverter -> %p: The %s GetProperty call returned %i for property %u with size %u.", &v19, 0x38u);
      }
    }

    v18 = *MEMORY[0x1E69E9840];
    return v12;
  }
}

void CAFormatter::CAFormatter(CAFormatter *this, const AudioStreamBasicDescription *a2)
{
  v3 = *&a2->mBytesPerPacket;
  v5[0] = *&a2->mSampleRate;
  v5[1] = v3;
  v6 = *&a2->mBitsPerChannel;
  CA::StreamDescription::AsString(__p, v5, *v5, *&v3);
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  CAFormatter::Init(this, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

{
  CAFormatter::CAFormatter(this, a2);
}

void sub_18F5FE098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t CAFormatter::Init(CAFormatter *this, const char *__s)
{
  v4 = strlen(__s);
  v5 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
  *this = v5;

  return strlcpy(v5, __s, v4 + 1);
}

uint64_t acv2::Reinterleaver::Reinterleaver(uint64_t a1, __int128 *a2)
{
  v4 = a2[3];
  v3 = a2[4];
  v6 = a2[1];
  v5 = a2[2];
  v7 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 48) = v5;
  *(a1 + 64) = v4;
  *(a1 + 80) = v3;
  *(a1 + 16) = v7;
  *(a1 + 32) = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = -1;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = *(a2 + 6);
  *(a1 + 164) = *(a2 + 16);
  *(a1 + 168) = 0u;
  *(a1 + 216) = 0u;
  *a1 = &unk_1F0327440;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 264) = 1;
  *(a1 + 268) = 0;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  v8 = *(a1 + 84);
  __x[0] = -1;
  v9.__i_ = 0;
  std::vector<int>::insert((a1 + 216), v9, v8, __x);
  v10.__i_ = *(a1 + 240);
  v11 = *(a1 + 44);
  __x[0] = -1;
  std::vector<int>::insert((a1 + 240), v10, v11, __x);
  v12 = *(a1 + 84);
  v13 = *(a1 + 44);
  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v15 = *(a1 + 216);
  if (v14)
  {
    v16 = 0;
    v17 = (v14 + 3) & 0x1FFFFFFFCLL;
    v18 = vdupq_n_s64(v14 - 1);
    v19 = xmmword_18F9016B0;
    v20 = xmmword_18F9016C0;
    v21 = v15 + 8;
    v22 = vdupq_n_s64(4uLL);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v18, v20));
      if (vuzp1_s16(v23, *v18.i8).u8[0])
      {
        *(v21 - 2) = v16;
      }

      if (vuzp1_s16(v23, *&v18).i8[2])
      {
        *(v21 - 1) = v16 + 1;
      }

      if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v19))).i32[1])
      {
        *v21 = v16 + 2;
        v21[1] = v16 + 3;
      }

      v16 += 4;
      v19 = vaddq_s64(v19, v22);
      v20 = vaddq_s64(v20, v22);
      v21 += 4;
    }

    while (v17 != v16);
  }

  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 192), v15, *(a1 + 224), (*(a1 + 224) - v15) >> 2);
  *(a1 + 264) = 1;
  *(a1 + 276) = 0;
  if ((*(a1 + 28) & 0x20) != 0 || *(a1 + 44) == 1)
  {
    *(a1 + 276) = 1;
    v24 = 3;
  }

  else
  {
    v24 = 2;
  }

  v25 = *(a1 + 84);
  if ((*(a1 + 68) & 0x20) != 0 || v25 == 1)
  {
    *(a1 + 276) = v24;
  }

  LODWORD(v26) = *(a1 + 44);
  if (v26 <= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v26;
  }

  v27 = *(a1 + 168);
  v28 = *(a1 + 176);
  v29 = (v28 - v27) >> 3;
  if (v26 > v29)
  {
    v30 = v26 - v29;
    v31 = *(a1 + 184);
    if (v30 > (v31 - v28) >> 3)
    {
      v32 = v31 - v27;
      if (v32 >> 2 > v26)
      {
        v26 = v32 >> 2;
      }

      if (v32 >= 0x7FFFFFFFFFFFFFF8)
      {
        v33 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v26;
      }

      if (!(v33 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(*(a1 + 176), 8 * v30);
    v34 = v28 + 8 * v30;
    goto LABEL_35;
  }

  if (v26 < v29)
  {
    v34 = v27 + 8 * v26;
LABEL_35:
    *(a1 + 176) = v34;
  }

  acv2::Reinterleaver::BuildInverseChannelMap(a1);
  *(a1 + 268) = acv2::Reinterleaver::StereoDownmixPossible((a1 + 16));
  return a1;
}

void sub_18F5FE448(_Unwind_Exception *a1)
{
  v5 = *(v1 + 30);
  if (v5)
  {
    *(v1 + 31) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 28) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 24);
  if (v7)
  {
    *(v1 + 25) = v7;
    operator delete(v7);
  }

  v8 = *v3;
  if (*v3)
  {
    *(v1 + 22) = v8;
    operator delete(v8);
  }

  acv2::AudioConverterBase::~AudioConverterBase(v1);
  _Unwind_Resume(a1);
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  if (__n)
  {
    v4 = __x;
    v7 = this;
    end = this->__end_;
    value = this->__end_cap_.__value_;
    if (__n <= value - end)
    {
      v14 = end - __position.__i_;
      v15 = this->__end_;
      v16 = __n;
      if (__n <= end - __position.__i_)
      {
        goto LABEL_21;
      }

      v17 = 0;
      v16 = v14 >> 2;
      v18 = __n - (v14 >> 2);
      v19 = *__x;
      v20 = (4 * __n - v14 - 4) >> 2;
      v21 = (v20 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v22 = vdupq_n_s64(v20);
      v23 = (end + 2);
      do
      {
        v24 = vdupq_n_s64(v17);
        v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_18F9016C0)));
        if (vuzp1_s16(v25, *v22.i8).u8[0])
        {
          *(v23 - 2) = v19;
        }

        if (vuzp1_s16(v25, *&v22).i8[2])
        {
          *(v23 - 1) = v19;
        }

        if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_18F9016B0)))).i32[1])
        {
          *v23 = v19;
          v23[1] = v19;
        }

        v17 += 4;
        v23 += 4;
      }

      while (v21 != v17);
      v15 = &end[v18];
      this->__end_ = v15;
      if (end != __position.__i_)
      {
LABEL_21:
        v26 = &__position.__i_[__n];
        v27 = &v15[-__n];
        v28 = v15;
        if (v27 < end)
        {
          v28 = v15;
          do
          {
            v29 = *v27++;
            *v28++ = v29;
          }

          while (v27 < end);
        }

        this->__end_ = v28;
        if (v15 != v26)
        {
          this = memmove(&__position.__i_[__n], __position.__i_, v15 - v26);
        }

        if (__position.__i_ <= v4)
        {
          if (v7->__end_ <= v4)
          {
            v30 = 0;
          }

          else
          {
            v30 = __n;
          }

          v4 += v30;
        }

        v31 = 0;
        v32 = *v4;
        v33 = vdupq_n_s64(v16 - 1);
        v34 = (__position.__i_ + 2);
        do
        {
          v35 = vdupq_n_s64(v31);
          v36 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_18F9016C0)));
          if (vuzp1_s16(v36, *v33.i8).u8[0])
          {
            *(v34 - 2) = v32;
          }

          if (vuzp1_s16(v36, *&v33).i8[2])
          {
            *(v34 - 1) = v32;
          }

          if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_18F9016B0)))).i32[1])
          {
            *v34 = v32;
            v34[1] = v32;
          }

          v31 += 4;
          v34 += 4;
        }

        while (((v16 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v31);
      }
    }

    else
    {
      begin = this->__begin_;
      v11 = __n + end - this->__begin_;
      if (v11 >> 62)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v12 = value - begin;
      if (v12 >> 1 > v11)
      {
        v11 = v12 >> 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v13 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v13);
      }

      v37 = 0;
      v38 = 4 * (__position.__i_ - begin);
      v39 = *__x;
      v40 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v41 = vdupq_n_s64(v40);
      v42 = v40 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v43 = (v38 + 8);
      do
      {
        v44 = vdupq_n_s64(v37);
        v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_18F9016C0)));
        if (vuzp1_s16(v45, *v41.i8).u8[0])
        {
          *(v43 - 2) = v39;
        }

        if (vuzp1_s16(v45, *&v41).i8[2])
        {
          *(v43 - 1) = v39;
        }

        if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_18F9016B0)))).i32[1])
        {
          *v43 = v39;
          v43[1] = v39;
        }

        v37 += 4;
        v43 += 4;
      }

      while (v42 != v37);
      v46 = (v38 + 4 * __n);
      memcpy(v46, __position.__i_, v7->__end_ - __position.__i_);
      v47 = v7->__begin_;
      v48 = &v46[(v7->__end_ - __position.__i_)];
      v7->__end_ = __position.__i_;
      v49 = (__position.__i_ - v47);
      v50 = (v38 - (__position.__i_ - v47));
      memcpy(v50, v47, v49);
      this = v7->__begin_;
      v7->__begin_ = v50;
      v7->__end_ = v48;
      v7->__end_cap_.__value_ = 0;
      if (this)
      {

        operator delete(this);
      }
    }
  }

  return this;
}

uint64_t acv2::AudioConverterChain::SetProperty(acv2::AudioConverterChain *this, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a2 == 1633906532 || a2 == 1633904996)
  {
    if ((a3 - 41) >= 0xFFFFFFFB)
    {
      v10 = 40;
      if (a2 == 1633904996)
      {
        v10 = 0;
      }

      if (*(a4 + 2) == 1819304813)
      {
        v11 = this + v10;
        if (*(v11 + 2) == 1819304813)
        {
          v12 = *a4;
          v13 = a4[1];
          *(v11 + 4) = *(a4 + 4);
          *v11 = v12;
          *(v11 + 1) = v13;
          v45 = 0;
          std::vector<char>::vector[abi:ne200100](&v44, 32);
        }
      }

      return 4294967246;
    }

    return 561211770;
  }

  PropertyDelegate = acv2::AudioConverterChain::GetPropertyDelegate(this, a2);
  if (PropertyDelegate)
  {
    v16 = (*(*PropertyDelegate + 12))(PropertyDelegate, a2, a3, a4);
    if (v16)
    {
      return v16;
    }

    if (a2 == 1684891491)
    {
      v28 = *(this + 47);
      if (*v28 == 0x10000)
      {
        v40 = vcnt_s8(v28[1]);
        v40.i16[0] = vaddlv_u8(v40);
        v29 = v40.i32[0];
      }

      else if (*v28)
      {
        v29 = *v28;
      }

      else
      {
        v29 = v28[2];
      }

      if (v29)
      {
        if (acv2::AudioConverterChain::ShouldAutomaticallyEnableSpatialRendering(this, this + 47))
        {
          *(this + 528) = 1;
          acv2::AudioConverterChain::GetChainBuildSettings(&v44);
        }
      }
    }

    return 0;
  }

  v9 = 1886547824;
  if (a2 > 1835884911)
  {
    if (a2 > 1919837297)
    {
      if ((a2 - 1936876385) > 0x10 || ((1 << (a2 - 97)) & 0x18101) == 0)
      {
        if (a2 != 1919837298)
        {
          return v9;
        }

        if (a3 == 4)
        {
          *(this + 528) = *a4 != 0;
          *(this + 529) = 1;
          acv2::AudioConverterChain::GetChainBuildSettings(&v44);
        }

        return 561211770;
      }

LABEL_68:
      if (*(this + 37) == *(this + 38))
      {
        return v9;
      }

      v38 = *(this + 13);
      v37 = *(this + 14);
      if (v38 != v37)
      {
        do
        {
          v39 = *v38++;
          v9 = (*(*v39 + 96))(v39, a2, a3, a4);
        }

        while (v38 != v37);
        return v9;
      }

      return 0;
    }

    if (a2 == 1835884912)
    {
      v41 = (*(this + 17) * *(this + 7));
      if (a3 != 4 * v41)
      {
        return 561211770;
      }

      return acv2::AudioConverterChain::SetMixMap(this, v41, a4);
    }

    if (a2 != 1868786720)
    {
      if (a2 != 1886546285)
      {
        return v9;
      }

      v30 = *(this + 43);
      if (!v30)
      {
        return v9;
      }

      v31 = *(*v30 + 96);

      return v31();
    }

LABEL_72:
    v16 = acv2::AudioConverterChain::SetIOChannelLayout(this, a2 == 1768123424, a4, a3);
    if (!v16)
    {
      acv2::AudioConverterChain::GetChainBuildSettings(&v44);
    }

    return v16;
  }

  if (a2 > 1684632679)
  {
    if (a2 <= 1768123423)
    {
      if (a2 == 1684632680)
      {
        if (a3 != 4)
        {
          return 561211770;
        }

        v43 = *a4;

        return acv2::AudioConverterChain::SetDitherAlgorithm(this, v43, v15);
      }

      else
      {
        if (a2 != 1684892024)
        {
          return v9;
        }

        if (a3 != 4)
        {
          return 561211770;
        }

        v33 = *a4 != 0;

        return acv2::AudioConverterChain::SetDownmixEnabled(this, v33);
      }
    }

    if (a2 != 1768123424)
    {
      if (a2 != 1835626096)
      {
        return v9;
      }

      goto LABEL_68;
    }

    goto LABEL_72;
  }

  if (a2 <= 1667788143)
  {
    if (a2 == 1633903204)
    {
      v42 = *(this + 43);
      if (!v42 || *(v42 + 204) != 1)
      {
        return v9;
      }

      if (a3 == 4)
      {
        *(this + 103) = *a4;
        acv2::AudioConverterChain::GetChainBuildSettings(&v44);
      }
    }

    else
    {
      if (a2 != 1633906803)
      {
        return v9;
      }

      if (a3 == 8)
      {
        v17 = *a4;
        Count = CFArrayGetCount(v17);
        v19 = Count;
        if (Count)
        {
          v20 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v17, v20);
            if (ValueAtIndex)
            {
              v22 = ValueAtIndex;
              v23 = *(this + 13);
              v24 = *(this + 14);
              if (v23 != v24)
              {
                while (1)
                {
                  v25 = *v23;
                  Value = CFDictionaryGetValue(v22, @"converter");
                  v27 = (*(*v25 + 56))(v25);
                  if (CFStringCompare(Value, v27, 0) == kCFCompareEqualTo)
                  {
                    break;
                  }

                  if (++v23 == v24)
                  {
                    v23 = v24;
                    break;
                  }
                }

                v24 = *(this + 14);
              }

              if (v23 != v24)
              {
                v16 = (*(**v23 + 152))(*v23, v22);
                if (v16)
                {
                  return v16;
                }
              }
            }

            v9 = 0;
            if (++v20 == v19)
            {
              return v9;
            }
          }
        }

        return 0;
      }
    }

    return 561211770;
  }

  if (a2 == 1667788144)
  {
    if (a3 != 4 * *(this + 17))
    {
      return 561211770;
    }

    return acv2::AudioConverterChain::SetChannelMap(this, a4);
  }

  else
  {
    if (a2 != 1684171124)
    {
      return v9;
    }

    if (a3 != 4)
    {
      return 561211770;
    }

    v34 = *(this + 55);
    if (!v34)
    {
      v16 = acv2::AudioConverterChain::SetDitherAlgorithm(this, *(this + 108), v15);
      if (v16)
      {
        return v16;
      }

      v34 = *(this + 55);
      if (!v34)
      {
        return v9;
      }
    }

    v35 = *a4;
    v36 = *(*v34 + 168);

    return v36();
  }
}

uint64_t acv2::Reinterleaver::GetProperty(acv2::Reinterleaver *this, int a2, unsigned int *a3, void *__dst)
{
  if (a2 == 1667788144)
  {
    v5 = 4 * *(this + 21);
    if (a3)
    {
      v6 = *a3;
      if (*a3 < v5)
      {
LABEL_6:
        memcpy(__dst, *(this + 24), v6);
        return 0;
      }

      *a3 = v5;
    }

    v6 = v5;
    goto LABEL_6;
  }

  return acv2::CBRConverter::GetProperty(this, a2, a3, __dst);
}

uint64_t acv2::CBRConverter::GetProperty(acv2::CBRConverter *this, int a2, unsigned int *a3, unsigned int *a4)
{
  v4 = 1886547824;
  if (a2 > 1836016242)
  {
    if (a2 > 2020175986)
    {
      if (a2 == 2020175987)
      {
        v5 = *(this + 8);
        goto LABEL_18;
      }

      if (a2 == 2020569203)
      {
        v5 = *(this + 18);
        goto LABEL_18;
      }
    }

    else
    {
      if (a2 == 1836016243)
      {
        v5 = *(this + 41);
        goto LABEL_18;
      }

      if (a2 == 2020172403)
      {
        v5 = -1;
LABEL_18:
        v4 = 0;
        *a4 = v5;
        return v4;
      }
    }

    return v4;
  }

  switch(a2)
  {
    case 1667850867:
      v6 = *a4;
      v7 = *(this + 40);
      v8 = *(this + 41);
LABEL_17:
      v5 = v7 * v6 / v8;
      goto LABEL_18;
    case 1668244083:
      v6 = *a4;
      v8 = *(this + 40);
      v7 = *(this + 41);
      goto LABEL_17;
    case 1835623027:
      v5 = *(this + 40);
      goto LABEL_18;
  }

  return v4;
}

OSStatus AudioOutputUnitStart(AudioUnit ci)
{
  if (!ci)
  {
    return -50;
  }

  v1 = (*(*ci + 8))(ci);
  if (!v1)
  {
    return 560947818;
  }

  v2 = v1;
  if (*((**v1)(v1) + 38) != 24949)
  {
    return -3000;
  }

  v3 = *(*((**v2)(v2) + 112) + 144);
  if (!v3)
  {
    return -4;
  }

  v4 = v2[3];

  return v3(v4);
}

void AUOOPWorkgroupManager_AddRemoteIOWorkgroup(int a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kAUExtensionScope)
  {
    v4 = *kAUExtensionScope;
    v5 = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AUOOPWorkgroups.mm";
    *&buf[12] = 1024;
    *&buf[14] = 30;
    *&buf[18] = 1024;
    *&buf[20] = a1;
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUOOPWorkgroupManager: AddRemoteIOWorkgroup called with token %u.", buf, 0x18u);
  }

LABEL_8:
  v7 = auoop::gWorkgroupManager(v4);
  v9 = caulk::mach::details::retain_os_object(v3, v8);
  caulk::mach::details::release_os_object(0, v10);
  v16[0] = MEMORY[0x1E69E3C18] + 16;
  v16[1] = v9;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  caulk::mach::details::release_os_object(0, v11);
  v15 = a1;
  caulk::mach::os_workgroup_managed::copy_mach_port(v16);
  v12 = auoop::tlsWorkgroupPort();
  *v12 = v13;
  *buf = &unk_1F03373C0;
  *&buf[8] = &v15;
  *&buf[16] = v16;
  v20 = buf;
  auoop::WorkgroupManager_Base::mutateWorkgroups(v7, buf);
  std::__function::__value_func<BOOL ()(auoop::WorkgroupManager_Base::State &)>::~__value_func[abi:ne200100](buf);
  caulk::mach::os_workgroup_managed::~os_workgroup_managed(v16);

  v14 = *MEMORY[0x1E69E9840];
}

void sub_18F5FF418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(auoop::WorkgroupManager_Base::State &)>::~__value_func[abi:ne200100](va1);
  caulk::mach::os_workgroup_managed::~os_workgroup_managed(va);

  _Unwind_Resume(a1);
}

uint64_t auoop::gWorkgroupManager(auoop *this)
{
  {
    operator new();
  }

  return auoop::gWorkgroupManager(void)::global;
}

uint64_t std::__function::__func<auoop::WorkgroupManager_iOS::addRemoteIOWorkgroup(unsigned int,caulk::mach::os_workgroup_managed)::$_0,std::allocator<auoop::WorkgroupManager_iOS::addRemoteIOWorkgroup(unsigned int,caulk::mach::os_workgroup_managed)::$_0>,BOOL ()(auoop::WorkgroupManager_Base::State &)>::operator()(uint64_t a1, auoop::WorkgroupManager_Base::State *a2)
{
  v3 = **(a1 + 8);
  v4 = *(*(a1 + 16) + 8);
  applesauce::dispatch::v1::queue::operator*(v4);
  objc_claimAutoreleasedReturnValue();
  auoop::WorkgroupManager_Base::State::addWorkgroup(a2, v3, v4);

  return 1;
}

void sub_18F600E64(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_18F600EE8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(uint64_t))
{
  if (a2)
  {
    if (v23)
    {
      (STACK[0x658])(v23);
    }

    if (v22)
    {
      a22(v22);
    }

    v26 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v27 = v26[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x18F600958);
  }

  JUMPOUT(0x18F600ED8);
}

void sub_18F600F34(void *a1, int a2)
{
  if (a2)
  {
    os_unfair_recursive_lock_unlock();
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v5 = v4[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x18F600958);
  }

  JUMPOUT(0x18F600ED8);
}

void sub_18F600FA0(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x18F600958);
  }

  JUMPOUT(0x18F600ED8);
}

void sub_18F600FB0(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18F600FBCLL);
  }

  JUMPOUT(0x18F600ED8);
}

void RegistryAccess::instance(RegistryAccess *this)
{
  {
    if (v1)
    {
      RegistryAccess::RegistryAccess(v1);
    }
  }
}

void RegistryAccess::RegistryAccess(RegistryAccess *this)
{
  RegistryAccess::instance(void)::inst = 0;
  qword_1ED746318 = 0;
  operator new();
}

void sub_18F6010FC(_Unwind_Exception *a1)
{
  v2 = v1;
  MEMORY[0x193ADF220](v2, 0x1081C408399A26FLL);
  v4 = qword_1ED746318;
  qword_1ED746318 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

acv2::ConverterRegistry *acv2::ConverterRegistry::ConverterRegistry(acv2::ConverterRegistry *this)
{
  *this = &unk_1F0334928;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  qmemcpy(this + 40, "mcplmcplvnocmcpllppa", 20);
  *(this + 4) = &unk_1F03349D8;
  *(this + 32) = 0;
  v3 = this + 32;
  std::vector<IPCAUClient::RemoteAUServer *>::emplace_back<IPCAUClient::RemoteAUServer * const&>(this + 8, &v3);
  return this;
}

void sub_18F601208(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t acv2::ConverterRegistry::GetAvailableEncodeSampleRatesInfo(acv2::ConverterRegistry *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  FactoryBySpecifier = acv2::ConverterRegistry::FindFactoryBySpecifier(this, a2, a3);
  if (FactoryBySpecifier)
  {
    v5 = *(*FactoryBySpecifier + 64);
    v6 = *MEMORY[0x1E69E9840];

    return v5();
  }

  else
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v8 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "ConverterFactory.cpp";
      v12 = 1024;
      v13 = 446;
      _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to find converter that supports given format for encode sample rates info", &v10, 0x12u);
    }

    v9 = *MEMORY[0x1E69E9840];
    return 1718449215;
  }
}

uint64_t acv2::ConverterRegistry::MakeFactories(acv2::ConverterRegistry *this, const AudioClassDescription *a2, int a3, double a4)
{
  v6 = 0;
  v7 = 0;
  *&inDesc.componentType = a4;
  inDesc.componentFlags = 0;
  inDesc.componentFlagsMask = 0;
  inDesc.componentManufacturer = a2;
  while (1)
  {
    Next = AudioComponentFindNext(v6, &inDesc);
    if (!Next)
    {
      break;
    }

    v6 = Next;
    if (Impl_AudioGetComponentInfo(Next, &v14, 0))
    {
      break;
    }

    cf = 0;
    if (Impl_AudioGetComponentInfo(v6, 0, &cf))
    {
      if (cf)
      {
        CFRelease(cf);
      }

      return v7 & 1;
    }

    v9 = *(this + 1);
    v10 = *(this + 2);
    if (v9 == v10)
    {
LABEL_14:
      if (v14.componentType == 1634037347)
      {
        operator new();
      }

      if (v14.componentType == 1633969507)
      {
        operator new();
      }

      v7 = 1;
    }

    else
    {
      while (1)
      {
        v11 = *v9;
        if (*(*v9 + 12) == a3 && (!v14.componentType || v11[4] == v14.componentType) && (!v14.componentSubType || v11[5] == v14.componentSubType) && (!v14.componentManufacturer || v11[6] == v14.componentManufacturer))
        {
          break;
        }

        v9 += 8;
        if (v9 == v10)
        {
          goto LABEL_14;
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return v7 & 1;
}

uint64_t acv2::ConverterRegistry::MakeEncoderFactories(acv2::ConverterRegistry *this, int a2)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 == v3)
  {
LABEL_8:
    if (a2 == 1970037111)
    {
      operator new();
    }

    if (a2 == 1634492791)
    {
      operator new();
    }

    LODWORD(v7) = vdup_n_s32(0x61656E63u).u32[0];
    HIDWORD(v7) = a2;

    return acv2::ConverterRegistry::MakeFactories(this, 0, a2, v7);
  }

  else
  {
    while (1)
    {
      if (*(*v2 + 20) == a2)
      {
        v4 = *(*v2 + 16);
        if (v4 == 1634037347 || v4 == 1852597614)
        {
          return 0;
        }
      }

      v2 += 8;
      if (v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }
}

uint64_t caulk::synchronized<AudioComponentMgr_NSExtension,std::recursive_mutex,caulk::empty_atomic_interface<AudioComponentMgr_NSExtension>>::synchronized<>(uint64_t a1)
{
  v2 = MEMORY[0x193ADEF60]();
  *(v2 + 104) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 64) = &unk_1F03265C8;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 1;
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  out_token[0] = 0;
  v3 = dispatch_get_global_queue(0, 0);
  notify_register_dispatch("com.apple.coreaudio.list_components", out_token, v3, &__block_literal_global_1702);

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 64) = &unk_1F0326898;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  return a1;
}

void sub_18F601888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 80);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::recursive_mutex::~recursive_mutex(v10);
  _Unwind_Resume(a1);
}

AudioComponent AudioComponentRegister(const AudioComponentDescription *inDesc, CFStringRef inName, UInt32 inVersion, AudioComponentFactoryFunction inFactory)
{
  v13[8] = *MEMORY[0x1E69E9840];
  if (inDesc && inName && inFactory)
  {
    GlobalComponentPluginMgr(&v12);
    if (EmbeddedComponentManager::isComponentDescriptionVisible(inDesc->componentFlags, v7))
    {
      componentFlags = inDesc->componentFlags;
      applesauce::CF::StringRef::from_get(&cf, inName);
      v13[0] = &unk_1F032B9E0;
      v13[1] = inFactory;
      v13[3] = v13;
      operator new();
    }

    if (v12)
    {
      std::recursive_mutex::unlock(v12);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_18F601AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::recursive_mutex *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *applesauce::CF::StringRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFStringGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_18F601C10(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AudioComponentPlugInInterface * (*)(AudioComponentDescription const*),std::allocator<AudioComponentPlugInInterface * (*)(AudioComponentDescription const*)>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032B9E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t acv2::ConverterRegistry::FindFactoryBySpecifier(acv2::ConverterRegistry *this, unsigned int a2, unsigned int *a3)
{
  switch(a2)
  {
    case 0u:
      return 0;
    case 0x28u:
      v3 = a3[2];
      return (*(*this + 16))(this, 1819304813, v3, 0, 0);
    case 4u:
      v3 = *a3;
      return (*(*this + 16))(this, 1819304813, v3, 0, 0);
  }

  if (a2 % 0xC)
  {
    return 0;
  }

  else
  {
    return (*(*this + 16))(this, 1819304813, a3[1], a3, a2 / 0xC);
  }
}

uint64_t AudioComponentMgr_RegistrarService::initPhase2(AudioComponentMgr_RegistrarService *this)
{
  v2 = EmbeddedComponentManager::registerInternalAudioUnits(this);
  EmbeddedComponentManager::registerInternalAudioCodecs(v2);
  *(this + 80) = dyld_program_sdk_at_least();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN34AudioComponentMgr_RegistrarService27connectToRegistrationServerEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  if (AudioComponentMgr_RegistrarService::connectToRegistrationServer(void)::onceToken != -1)
  {
    dispatch_once(&AudioComponentMgr_RegistrarService::connectToRegistrationServer(void)::onceToken, block);
  }

  v3 = *(*this + 120);

  return v3(this, 0, 0);
}

void SystemAUsSoftLink::instance(SystemAUsSoftLink *this)
{
  {
    if (v1)
    {
      SystemAUsSoftLink::SystemAUsSoftLink(v1);
    }
  }
}

void SystemAUsSoftLink::SystemAUsSoftLink(SystemAUsSoftLink *this)
{
  SystemAUsSoftLink::instance(void)::global = 0;
  off_1ED7463E8 = 0;
  off_1ED7463F0 = 0;
  v1 = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libEmbeddedSystemAUs.dylib", 1);
  if (!v1)
  {
    __assert_rtn("SystemAUsSoftLink", "AudioToolboxSoftLink.h", 58, "lib != nullptr");
  }

  v2 = v1;
  DLSymbol<void ()(void)>::init(&SystemAUsSoftLink::instance(void)::global, v1, "RegisterAudioUnits_Toolbox");
  DLSymbol<void ()(void)>::init(&off_1ED7463E8, v2, "RegisterAudioUnits_Instruments");
  off_1ED7463F0 = dlsym(v2, "AudioOutputUnitPublish_Impl");
  if (!off_1ED7463F0)
  {
    __assert_rtn("init", "DLSymbol.h", 23, "mImpl != nullptr");
  }
}

void *DLSymbol<void ()(void)>::init(void *a1, void *__handle, char *__symbol)
{
  result = dlsym(__handle, __symbol);
  *a1 = result;
  if (!result)
  {
    __assert_rtn("init", "DLSymbol.h", 23, "mImpl != nullptr");
  }

  return result;
}

uint64_t std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t APComponent::APComponent(uint64_t a1, int a2, int a3, uint64_t a4, unsigned int a5, CFTypeRef *a6, int a7, uint64_t a8)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F033CA40;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  v10 = *(a4 + 16);
  v11 = *(a4 + 8);
  v12 = *(a4 + 12) & 0xFFFFFFE3 | (4 * ((a5 >> 2) & 7));
  *(a1 + 36) = *a4;
  *(a1 + 44) = v11;
  *(a1 + 48) = v12;
  *(a1 + 52) = v10;
  *(a1 + 56) = a7;
  *(a1 + 60) = a3;
  v13 = *a6;
  if (*a6)
  {
    CFRetain(*a6);
  }

  *(a1 + 64) = v13;
  *(a1 + 72) = 0;
  std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::__value_func[abi:ne200100](a1 + 80, a8);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  return a1;
}

void sub_18F602168(_Unwind_Exception *a1)
{
  applesauce::CF::StringRef::~StringRef((v1 + 64));
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t EmbeddedComponentManager::registerInternalAudioUnits(EmbeddedComponentManager *this)
{
  v1 = tkqMjk4y;
  AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"AllAUsPublic", @"com.apple.coreaudio", 0);
  if ((AppBooleanValue & 1) == 0 && (v1 & 0xC000) == 0)
  {
    AppBooleanValue = SecTaskCreateFromSelf(0);
    if (AppBooleanValue)
    {
      v3 = AppBooleanValue;
      v4 = SecTaskCopyValueForEntitlement(AppBooleanValue, @"com.apple.coreaudio.register-internal-aus", 0);
      if (v4)
      {
        v5 = v4;
        v6 = CFGetTypeID(v4);
        if (v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v5))
        {
          atomic_fetch_or(&tkqMjk4y, 0x8000u);
        }

        CFRelease(v5);
      }

      CFRelease(v3);
    }
  }

  SystemAUsSoftLink::instance(AppBooleanValue);
  v7 = SystemAUsSoftLink::instance(void)::global();
  SystemAUsSoftLink::instance(v7);
  off_1ED7463E8();
  v8 = *(*GetAudioDSPManager() + 24);

  return v8();
}

uint64_t AudioComponentMgr_Base::_addComponent(char **a1, char *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(*a2 + 36);
  if (v3 == 1145392463 || *(*a2 + 40) == 1145392463 || *(*a2 + 44) == 1145392463)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v6 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "AudioComponentPluginMgr.mm";
      v22 = 1024;
      v23 = 1139;
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Can't register component with 'DEMO' type, subtype, or manufacturer.", &v20, 0x12u);
    }

    goto LABEL_27;
  }

  if (v3 == 1635087216)
  {
    if (!(*(*a1 + 14))(a1))
    {
      goto LABEL_27;
    }

    v2 = *a2;
  }

  v9 = a1 + 2;
  SortedPosition = AudioComponentVector::findSortedPosition(a1[2], a1[3], (v2 + 36));
  v11 = SortedPosition;
  if (a1[3] == SortedPosition || (v12 = *SortedPosition, v13 = *a2, *(*SortedPosition + 36) != *(*a2 + 36)) || v12[10] != v13[10] || v12[11] != v13[11] || v12[14] != v13[14])
  {
    v17 = a1 + 2;
    v16 = v11;
    goto LABEL_23;
  }

  result = (*(*a1 + 12))(a1, SortedPosition, a2);
  if (!result)
  {
    if (*(*a2 + 60) > *(*v11 + 60))
    {
      v15 = v11 - *v9;
      std::vector<std::shared_ptr<APComponent>>::erase[abi:ne200100](v9, v11);
      v16 = (v15 + *v9);
      v17 = v9;
LABEL_23:
      AudioComponentVector::insertSorted(v17, v16, a2);
      result = *a2;
      goto LABEL_28;
    }

LABEL_27:
    result = 0;
  }

LABEL_28:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AudioComponentMgr_Base::addComponentLocally(uint64_t a1, char *a2)
{
  v3 = AudioComponentMgr_Base::_addComponent(a1, a2);
  v4 = v3;
  v5 = (a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  while (v6 != v7)
  {
    v8 = *v6;
    v6 += 2;
    *v5 = v8;
    v5 = (v8 + 24);
  }

  *v5 = 0;
  if (v3)
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_84);
  }

  return v4;
}

void AudioComponentVector::insertSorted(void *a1, char *a2, char *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v14 = *a1;
    v15 = (&v6[-*a1] >> 4) + 1;
    if (v15 >> 60)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v16 = a2 - v14;
    v17 = v7 - v14;
    if (v17 >> 3 > v15)
    {
      v15 = v17 >> 3;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF0)
    {
      v18 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v15;
    }

    v19 = v16 >> 4;
    v33 = a1;
    if (v18)
    {
      std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](v18);
    }

    v21 = (16 * v19);
    v30 = 0;
    v31 = 16 * v19;
    v32 = (16 * v19);
    if (!v19)
    {
      if (v16 < 1)
      {
        if (v14 == a2)
        {
          v22 = 1;
        }

        else
        {
          v22 = v16 >> 3;
        }

        v34 = a1;
        std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](v22);
      }

      v21 = (v21 - (((v16 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
      v31 = v21;
      *&v32 = v21;
    }

    v23 = *(a3 + 1);
    *v21 = *a3;
    v21[1] = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      v21 = v32;
    }

    *&v32 = v21 + 2;
    memcpy(v21 + 2, a2, a1[1] - a2);
    v24 = *a1;
    v25 = v31;
    *&v32 = v32 + a1[1] - a2;
    a1[1] = a2;
    v26 = a2 - v24;
    v27 = (v25 - (a2 - v24));
    memcpy(v27, v24, v26);
    v28 = *a1;
    *a1 = v27;
    v29 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v28;
    *(&v32 + 1) = v29;
    v30 = v28;
    v31 = v28;
    std::__split_buffer<std::shared_ptr<unsigned char []>>::~__split_buffer(&v30);
  }

  else if (a2 == v6)
  {
    v20 = *(a3 + 1);
    *v6 = *a3;
    *(v6 + 1) = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    a1[1] = v6 + 16;
  }

  else
  {
    std::vector<std::shared_ptr<APComponent>>::__move_range(a1, a2, v6, a2 + 16);
    v8 = a1[1] <= a3 || a2 > a3;
    v9 = 16;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    v12 = *v10;
    v11 = *(v10 + 1);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(a2 + 1);
    *a2 = v12;
    *(a2 + 1) = v11;
    if (v13)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }
}

uint64_t GetAudioDSPManager()
{
  {
    GetAudioDSPManager::instance = GetAudioDSPManager::$_0::operator()();
  }

  return GetAudioDSPManager::instance;
}

void APComponent::~APComponent(APComponent *this)
{
  APComponent::~APComponent(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033CA40;
  v2 = *(this + 14);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    CFRelease(v4);
  }

  std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::~__value_func[abi:ne200100](this + 80);
  v5 = *(this + 8);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

uint64_t std::__shared_ptr_pointer<APComponent *,std::shared_ptr<APComponent>::__shared_ptr_default_delete<APComponent,APComponent>,std::allocator<APComponent>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void ___ZN34AudioComponentMgr_RegistrarService27connectToRegistrationServerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  assertXPCServiceReachable(&cfstr_ComAppleAudioA_7.isa);
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.audio.AudioComponentRegistrar" options:4096];
  v3 = AudioComponentRegistrarProtocol_XPCInterface();
  [v2 setRemoteObjectInterface:v3];

  v4 = objc_opt_new();
  [v2 setExportedObject:v4];

  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F034E750];
  [v2 setExportedInterface:v5];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZN34AudioComponentMgr_RegistrarService27connectToRegistrationServerEv_block_invoke_2;
  v8[3] = &__block_descriptor_40_e5_v8__0l;
  v8[4] = v1;
  [v2 setInterruptionHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN34AudioComponentMgr_RegistrarService27connectToRegistrationServerEv_block_invoke_3;
  v7[3] = &__block_descriptor_40_e5_v8__0l;
  v7[4] = v1;
  [v2 setInvalidationHandler:v7];
  [v2 resume];
  v6 = *(v1 + 88);
  *(v1 + 88) = v2;
}

void sub_18F602A80(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void assertXPCServiceReachable(NSString *a1)
{
  v2 = a1;
  if (assertXPCServiceReachable(NSString *)::gAssertReachable < 0)
  {
    CASmartPreferences::Read(@"AssertComponentRegistrarReachable", @"com.apple.coreaudio", &assertXPCServiceReachable(NSString *)::gAssertReachable, v1);
  }

  if (assertXPCServiceReachable(NSString *)::gAssertReachable >= 1 && (*special_port = 0, task_get_special_port(*MEMORY[0x1E69E9A60], 4, &special_port[1]), bootstrap_look_up(special_port[1], [(NSString *)v2 UTF8String], special_port)))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  else
  {
  }
}

void std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void EmbeddedComponentManager::registerInternalAudioCodecs(EmbeddedComponentManager *this)
{
  v46 = *MEMORY[0x1E69E9840];
  memcpy(__dst, "/System/Library/Frameworks/AudioToolbox.framework", sizeof(__dst));
  v1 = strlen(__dst);
  v2 = (v1 + 1);
  __dst[v1] = 47;
  strncpy(&__dst[v2], "Codecs.plist", 1024 - v2);
  v3 = *MEMORY[0x1E695E480];
  v4 = strlen(__dst);
  v5 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], __dst, v4, 0);
  if (!v5 || (v6 = v5, v7 = CFReadStreamCreateWithFile(v3, v5), CFRelease(v6), !v7))
  {
    v11 = 0;
    goto LABEL_9;
  }

  if (!CFReadStreamOpen(v7))
  {
LABEL_31:
    v11 = 0;
    goto LABEL_32;
  }

  v8 = CFPropertyListCreateWithStream(v3, v7, 0, 0, 0, 0);
  if (!v8)
  {
    v28 = CADefaultLog();
    v11 = v28;
    if (!v28)
    {
      goto LABEL_32;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buffer = 136315394;
      v42 = "EmbeddedAudioCodecLoader.cpp";
      v43 = 1024;
      v44 = 61;
      _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d couldn't get property list from Codec plist read stream\n", buffer, 0x12u);
    }

    goto LABEL_31;
  }

  v9 = v8;
  Value = CFDictionaryGetValue(v8, @"codecList");
  v11 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  else
  {
    v30 = CADefaultLog();
    if (v30)
    {
      v31 = v30;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buffer = 136315394;
        v42 = "EmbeddedAudioCodecLoader.cpp";
        v43 = 1024;
        v44 = 67;
        _os_log_impl(&dword_18F5DF000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d couldn't get codec array from Codec plist property list\n", buffer, 0x12u);
      }
    }
  }

  CFRelease(v9);
LABEL_32:
  CFReadStreamClose(v7);
  CFRelease(v7);
  if (v11)
  {
    Count = CFArrayGetCount(v11);
    if (Count < 0)
    {
LABEL_26:
      CFRelease(v11);
      goto LABEL_27;
    }

    v32 = 0;
    v12 = Count + 1;
    goto LABEL_10;
  }

LABEL_9:
  v12 = 1;
  v32 = 1;
LABEL_10:
  v13 = 1;
  do
  {
    v14 = "AudioCodecs";
    if (v13 != 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, v13 - 2);
      if (!ValueAtIndex)
      {
        break;
      }

      v14 = buffer;
      if (!CFStringGetCString(ValueAtIndex, buffer, 256, 0x600u))
      {
        break;
      }
    }

    strncpy(&__dst[v2], v14, 1024 - v2);
    v16 = dlopen(__dst, 0);
    if (!v16)
    {
      v18 = CADefaultLog();
      if (!v18)
      {
        continue;
      }

      v19 = v18;
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        continue;
      }

      v20 = dlerror();
      *buf = 136315906;
      v34 = "EmbeddedAudioCodecLoader.cpp";
      v35 = 1024;
      v36 = 102;
      v37 = 2080;
      v38 = __dst;
      v39 = 2080;
      v40 = v20;
      v21 = v19;
      v22 = "%25s:%-5d couldn't open library %s:\n%s";
LABEL_23:
      _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x26u);
      continue;
    }

    v17 = dlsym(v16, "RegisterExternalAudioCodecs");
    if (!v17)
    {
      v23 = CADefaultLog();
      if (!v23)
      {
        continue;
      }

      v24 = v23;
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        continue;
      }

      v25 = dlerror();
      *buf = 136315906;
      v34 = "EmbeddedAudioCodecLoader.cpp";
      v35 = 1024;
      v36 = 108;
      v37 = 2080;
      v38 = "RegisterExternalAudioCodecs";
      v39 = 2080;
      v40 = v25;
      v21 = v24;
      v22 = "%25s:%-5d couldn't lookup symbol %s:\n%s";
      goto LABEL_23;
    }

    v17(0);
  }

  while (v12 > v13++);
  if ((v32 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_27:
  v27 = *MEMORY[0x1E69E9840];
}

uint64_t std::__function::__func<CASmartPreferences::Read(__CFString const*,__CFString const*,int &)::{lambda(long long)#1},std::allocator<CASmartPreferences::Read(__CFString const*,__CFString const*,int &)::{lambda(long long)#1}>,void ()(long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0336F08;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void CASmartPreferences::AddHandler<long long>(__CFString const*,__CFString const*,long long (*)(void const*,BOOL &),std::function<void ()(long long)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<long long>(__CFString const*,__CFString const*,long long (*)(void const*,BOOL &),std::function<void ()(long long)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

id AudioComponentRegistrarProtocol_XPCInterface(void)
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0354628];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v1 setWithObjects:{v2, v3, v4, objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_getComponentList_linkedSDKRequiresEntitlement_includeExtensions_forceWaitForExtensions_reply_ argumentIndex:3 ofReply:1];

  return v0;
}

uint64_t std::__split_buffer<std::shared_ptr<unsigned char []>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::shared_ptr<APComponent>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = (v4 - a4);
  v6 = (a2 + v4 - a4);
  v7 = v4;
  while (v6 < a3)
  {
    *v7 = *v6;
    v7 += 16;
    *v6 = 0;
    *(v6 + 1) = 0;
    v6 += 16;
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v8 = (v4 - 8);
    v9 = a2 - 16;
    do
    {
      v10 = &v5[v9];
      v11 = *&v5[v9];
      *v10 = 0;
      *(v10 + 1) = 0;
      v12 = *v8;
      *(v8 - 1) = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v8 -= 2;
      v5 -= 16;
    }

    while (v5);
  }
}

uint64_t GetAudioDSPManager::$_0::operator()()
{
  v0 = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (!v0)
  {
    dlerror();
    abort_report_np();
    goto LABEL_7;
  }

  v1 = dlsym(v0, "GetAudioDSPManager");
  if (!v1)
  {
LABEL_7:
    dlerror();
    v3 = abort_report_np();
    return AudioComponentMgr_RegistrarService::inExtensionServiceProcess(v3);
  }

  return v1();
}

BOOL AudioComponentMgr_RegistrarService::inExtensionServiceProcess(AudioComponentMgr_RegistrarService *this)
{
  v1 = (*(*this + 128))(this);
  v2 = v1 != 0;

  return v2;
}

uint64_t AudioComponentMgr_NSExtension::handleDuplicateRegistrationAttempt(AudioComponentMgr_RegistrarService *a1, uint64_t *a2, uint64_t *a3)
{
  if (AudioComponentMgr_RegistrarService::inExtensionServiceProcess(a1))
  {
    return 0;
  }

  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*(*v6 + 64))(v6);
  v8 = (v7 != 0) ^ ((*(**a3 + 64))() == 0);
  if ((v8 & 1) == 0)
  {
    std::shared_ptr<APComponent>::shared_ptr[abi:ne200100]<APComponent,0>(&v26, *(v6 + 8), *(v6 + 16));
    v9 = (*(*v26 + 64))(v26);
    v10 = (*(**a3 + 64))();
    if (v9)
    {
      v12 = *a3;
      v11 = a3[1];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *(v9 + 208);
      *(v9 + 200) = v12;
      *(v9 + 208) = v11;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v14 = *a3;
      v7 = v26;
      v15 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = *(v14 + 152);
      *(v14 + 144) = v7;
      *(v14 + 152) = v15;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        v7 = v26;
      }

      v17 = v27;
      if (!v27)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v21 = v26;
      v20 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = *(v10 + 208);
      *(v10 + 200) = v21;
      *(v10 + 208) = v20;
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v23 = *a3;
      v24 = a3[1];
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = *(v23 + 152);
      *(v23 + 144) = v23;
      *(v23 + 152) = v24;
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v7 = *a3;
      v17 = a3[1];
      if (!v17)
      {
        goto LABEL_16;
      }
    }

    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_16:
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (v7 != v6)
    {
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = a2[1];
      *a2 = v7;
      a2[1] = v17;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v8)
  {
    return 0;
  }

  return v7;
}

void sub_18F603620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void CASmartPreferences::Read(CASmartPreferences *this, const __CFString *a2, const __CFString *a3, int *a4)
{
  v5[8] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F0336F08;
  v4[1] = a3;
  v4[3] = v4;
  CASmartPreferences::instance(this);
  v4[4] = MEMORY[0x1E69E5040];
  std::__function::__value_func<void ()(long long)>::__value_func[abi:ne200100](v5, v4);
  v5[7] = 0;
  operator new();
}

void sub_18F6037DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL ConnectionInfo::_canUseExtensions(ConnectionInfo *this)
{
  if (!this->mLinkedSDKRequiresEntitlement)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&this->mConnection);
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained auditToken];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  token = v10;
  v4 = SecTaskCreateWithAuditToken(0, &token);
  v5 = v4;
  if (v4)
  {
    v6 = SecTaskCopyValueForEntitlement(v4, @"inter-app-audio", 0);
    v7 = v6;
    if (v6)
    {
      v8 = CFGetTypeID(v6);
      v3 = v8 == CFBooleanGetTypeID() && CFBooleanGetValue(v7) != 0;
      CFRelease(v7);
    }

    else
    {
      v3 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void AudioComponentRegistrarImpl::replyWithComponentList(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v17 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 208;
  if (a2)
  {
    v11 = 168;
  }

  v18 = a1 + v11;
  v19 = 0;
  if (v17 && *(a1 + 256) && (v12 = atomic_load((a1 + 2)), (v12 & 1) != 0))
  {
    v13 = *(a1 + 256);
    os_unfair_lock_lock(v13);
    v14 = AUExtensionScanner::getExtensionComponentList(&v13[2], v17);
    if (v13)
    {
      os_unfair_lock_unlock(v13);
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = PurgeableDataWrapper::accessor::data(&v18);
  if (a2)
  {
    v16 = atomic_load((a1 + 2));
  }

  else
  {
    v16 = 0;
  }

  v10[2](v10, v15, v16 & 1, v9, v14);

  *(a1 + 1) = 1;
  if (v19 == 1)
  {
    [*(v18 + 32) endContentAccess];
  }
}

void sub_18F603C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, char a12)
{
  if (v14)
  {
    os_unfair_lock_unlock(v14);
  }

  if (a12 == 1)
  {
    [*(a11 + 32) endContentAccess];
  }

  _Unwind_Resume(a1);
}

id PurgeableDataWrapper::accessor::data(PurgeableDataWrapper::accessor *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    v2 = *this;
    v3 = *(*this + 32);
    if (v3)
    {
      if ([v3 beginContentAccess])
      {
LABEL_7:
        *(this + 8) = 1;
        goto LABEL_8;
      }

      v2 = *this;
    }

    v4 = *(v2 + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v5 = MEMORY[0x1E696AE58];
    v6 = (*(*v4 + 48))(v4);
    v7 = [v5 dataWithData:v6];
    v8 = *(*this + 32);
    *(*this + 32) = v7;

    goto LABEL_7;
  }

LABEL_8:
  v9 = *(*this + 32);

  return v9;
}

id std::__function::__func<AudioComponentRegistrarImpl::AudioComponentRegistrarImpl(BOOL,AudioComponentRegistrar *)::$_1,std::allocator<AudioComponentRegistrarImpl::AudioComponentRegistrarImpl(BOOL,AudioComponentRegistrar *)::$_1>,NSData * ()(void)>::operator()(uint64_t a1)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v6 = *"psua";
  v7 = 0;
  memset(&v5, 0, 24);
  std::vector<std::shared_ptr<APComponent>>::__init_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(&v5, *(v1 + 136), *(v1 + 144), (*(v1 + 144) - *(v1 + 136)) >> 4);
  v5.mSorted = *(v1 + 160);
  v8[0] = &unk_1F032E118;
  v8[1] = &v6;
  v8[3] = v8;
  AudioComponentVector::remove_and_erase_if (&v5, v8);
  std::__function::__value_func<BOOL ()(APComponent &)>::~__value_func[abi:ne200100](v8);
  v2 = AudioComponentVector::serialized(&v5);
  v8[0] = &v5;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](v8);
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

void sub_18F603E40(_Unwind_Exception *a1)
{
  *(v2 - 56) = v1;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100]((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::shared_ptr<APComponent>>::__init_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<APComponent>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

uint64_t AudioComponentVector::remove_and_erase_if (void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    while (1)
    {
      v6 = *(a2 + 24);
      if (!v6)
      {
LABEL_18:
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v6 + 48))(v6, *v3))
      {
        break;
      }

      v3 += 2;
      if (v3 == v4)
      {
        v3 = v4;
        goto LABEL_15;
      }
    }

    if (v3 != v4)
    {
      for (i = v3 + 2; i != v4; i += 2)
      {
        v8 = *(a2 + 24);
        if (!v8)
        {
          goto LABEL_18;
        }

        if (((*(*v8 + 48))(v8, *i) & 1) == 0)
        {
          v9 = *i;
          *i = 0;
          i[1] = 0;
          v10 = v3[1];
          *v3 = v9;
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }

          v3 += 2;
        }
      }
    }
  }

LABEL_15:
  v11 = a1[1];

  return std::vector<std::shared_ptr<APComponent>>::erase(a1, v3, v11);
}

uint64_t std::vector<std::shared_ptr<APComponent>>::erase(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = *a1 + a2;
      v8 = *a1 + a3;
      do
      {
        v9 = (v8 + v6);
        v10 = *(v8 + v6);
        *v9 = 0;
        v9[1] = 0;
        v11 = *(v7 + v6 + 8);
        *(v7 + v6) = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v7 += 16;
        v8 += 16;
      }

      while (v8 + v6 != v5);
      v12 = v7 + v6;
      v5 = a1[1];
    }

    while (v5 != v12)
    {
      v13 = *(v5 - 8);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v5 -= 16;
    }

    a1[1] = v12;
  }

  return a2;
}

void AudioComponentVector::sort(AudioComponentVector *this)
{
  if (!this->mSorted)
  {
    begin = this->__begin_;
    end = this->__end_;
    v4 = 126 - 2 * __clz((end - begin) >> 4);
    if (end == begin)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    std::__introsort<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,false>(begin, end, v5, 1);
    this->mSorted = 1;
  }
}

void std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

BOOL AIFFAudioFormat::ExtensionIsThisFormat(AIFFAudioFormat *this, CFStringRef theString1)
{
  v3 = 1;
  if (CFStringCompare(theString1, @"aiff", 1uLL))
  {
    return CFStringCompare(theString1, @"aif", 1uLL) == kCFCompareEqualTo;
  }

  return v3;
}

void AudioFileFormatRegistry::AddAudioFileType(AudioFileFormatRegistry *this, AudioFileFormatBase *a2)
{
  v3 = *(a2 + 2);
  LODWORD(v46) = v3;
  *(&v46 + 1) = a2;
  v5 = *(this + 4);
  v4 = *(this + 5);
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v8 = *(this + 5);
  }

  else
  {
    v7 = v6 >> 4;
    v8 = *(this + 4);
    do
    {
      v9 = v7 >> 1;
      v10 = &v8[16 * (v7 >> 1)];
      v12 = *v10;
      v11 = v10 + 16;
      v7 += ~(v7 >> 1);
      if (v12 < v3)
      {
        v8 = v11;
      }

      else
      {
        v7 = v9;
      }
    }

    while (v7);
  }

  v13 = *(this + 6);
  if (v4 >= v13)
  {
    v16 = (v6 >> 4) + 1;
    if (v16 >> 60)
    {
      goto LABEL_54;
    }

    v17 = v8 - v5;
    v18 = v13 - v5;
    v19 = (v13 - v5) >> 3;
    if (v19 > v16)
    {
      v16 = v19;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFF0)
    {
      v20 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v16;
    }

    v21 = v17 >> 4;
    if (v20)
    {
      std::allocator<AudioFileTypePair>::allocate_at_least[abi:ne200100](v20);
    }

    v22 = (16 * v21);
    v23 = 16 * v21;
    if (!v21)
    {
      if (v17 < 1)
      {
        if (v8 == v5)
        {
          v26 = 1;
        }

        else
        {
          v26 = v17 >> 3;
        }

        std::allocator<AudioFileTypePair>::allocate_at_least[abi:ne200100](v26);
      }

      v22 = (v22 - (((v17 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
      v23 = v22;
    }

    *v22 = v46;
    v27 = v23 + 16;
    memcpy((v23 + 16), v8, *(this + 5) - v8);
    v28 = *(this + 4);
    v45 = (v27 + *(this + 5) - v8);
    *(this + 5) = v8;
    v29 = v8 - v28;
    v30 = v22 - (v8 - v28);
    memcpy(v30, v28, v29);
    v31 = *(this + 4);
    *(this + 4) = v30;
    *(this + 40) = v45;
    if (v31)
    {
      operator delete(v31);
    }
  }

  else if (v8 == v4)
  {
    *v4 = v46;
    *(this + 5) = v4 + 16;
  }

  else
  {
    v14 = v8 + 16;
    if (v4 < 0x10)
    {
      v15 = *(this + 5);
    }

    else
    {
      v15 = (v4 + 16);
      *v4 = *(v4 - 1);
    }

    *(this + 5) = v15;
    if (v4 != v14)
    {
      memmove(v8 + 16, v8, v4 - v14);
      v15 = *(this + 5);
    }

    v24 = v15 <= &v46 || v8 > &v46;
    v25 = 16;
    if (v24)
    {
      v25 = 0;
    }

    *v8 = *(&v46 + v25);
  }

  v33 = *(this + 2);
  v32 = *(this + 3);
  if (v33 < v32)
  {
    *v33 = v46;
    v34 = (v33 + 1);
    goto LABEL_53;
  }

  v35 = *(this + 1);
  v36 = (v33 - v35) >> 4;
  v37 = v36 + 1;
  if ((v36 + 1) >> 60)
  {
LABEL_54:
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v38 = v32 - v35;
  if (v38 >> 3 > v37)
  {
    v37 = v38 >> 3;
  }

  if (v38 >= 0x7FFFFFFFFFFFFFF0)
  {
    v39 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v39 = v37;
  }

  if (v39)
  {
    std::allocator<AudioFileTypePair>::allocate_at_least[abi:ne200100](v39);
  }

  v40 = (16 * v36);
  *v40 = v46;
  v34 = 16 * v36 + 16;
  v41 = *(this + 1);
  v42 = *(this + 2) - v41;
  v43 = 16 * v36 - v42;
  memcpy(v40 - v42, v41, v42);
  v44 = *(this + 1);
  *(this + 1) = v43;
  *(this + 2) = v34;
  *(this + 3) = 0;
  if (v44)
  {
    operator delete(v44);
  }

LABEL_53:
  *(this + 2) = v34;
}

void sub_18F6044D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<AudioFileTypePair>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

BOOL CAFAudioFormat::ExtensionIsThisFormat(CAFAudioFormat *this, CFStringRef theString1)
{
  v3 = 1;
  if (CFStringCompare(theString1, @"caf", 1uLL))
  {
    return CFStringCompare(theString1, @"caff", 1uLL) == kCFCompareEqualTo;
  }

  return v3;
}

BOOL AIFFAudioFormat::FileDataIsThisFormat(AIFFAudioFormat *this, unsigned int a2, _DWORD *a3)
{
  if (a2 < 0xC)
  {
    return 0;
  }

  return *a3 == 1297239878 && a3[2] == 1179011393;
}

void AIFFAudioFile::AIFFAudioFile(AIFFAudioFile *this, int a2)
{
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 20) = 1;
  *(this + 21) = a2;
  *(this + 11) = 0;
  *(this + 24) = -1;
  *(this + 50) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0x100000000;
  *(this + 34) = 65792;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 168) = xmmword_18F9018B0;
  *(this + 46) = 16;
  *(this + 94) = 258;
  *this = &unk_1F032DBA8;
  *(this + 56) = 0;
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 58) = 0;
}

uint64_t AIFFAudioFile::OpenFromDataSource(AIFFAudioFile *this)
{
  v69 = *MEMORY[0x1E69E9840];
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0uLL;
  v47 = 0;
  inSpecifierSize = 0;
  v55 = 0u;
  v56 = 0u;
  outPropertyData = 0u;
  v49 = 0u;
  v50 = 0;
  *(this + 9) = 0;
  (*(*this + 240))(this, 0);
  *(this + 190) = 0;
  v2 = this + 190;
  v3 = (*(**(this + 13) + 24))(*(this + 13), &v53);
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&v59 = "AIFFAudioFile.cpp";
      WORD4(v59) = 1024;
      *(&v59 + 10) = 1290;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  GetSize Failed";
      goto LABEL_4;
    }

    goto LABEL_5;
  }

  v8 = (*(**(this + 13) + 48))(*(this + 13), 0, 0, 8, &v57, &v54);
  v3 = v8;
  v6 = 1685348671;
  if (v8 == -39)
  {
    goto LABEL_97;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&v59 = "AIFFAudioFile.cpp";
      WORD4(v59) = 1024;
      *(&v59 + 10) = 1296;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  FSRead Failed 1";
      goto LABEL_4;
    }

    goto LABEL_5;
  }

  v9 = v57.i32[0];
  v57.i32[0] = bswap32(v57.u32[0]);
  if (v9 != 1297239878)
  {
    goto LABEL_97;
  }

  v57.i32[1] = bswap32(v57.u32[1]);
  *&v51 = 0x8464F524DLL;
  *(&v51 + 1) = v57.i32[1] + 8;
  v52 = 0;
  std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v51);
  if (v53 > (v57.i32[1] + 8))
  {
    v53 = (v57.i32[1] + 8);
  }

  v3 = (*(**(this + 13) + 48))(*(this + 13), 0, 0, 12, &v68, &v54);
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&v59 = "AIFFAudioFile.cpp";
      WORD4(v59) = 1024;
      *(&v59 + 10) = 1318;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  FSRead Failed 2";
      goto LABEL_4;
    }

    goto LABEL_5;
  }

  v43 = v68.i32[2];
  v10 = bswap32(v68.u32[2]);
  *(this + 21) = v10;
  if (v10 != 1095321155 && v10 != 1095321158)
  {
    v6 = 4294967246;
    goto LABEL_97;
  }

  if (v53 < 0xD)
  {
    inSpecifier = 0;
    goto LABEL_73;
  }

  inSpecifier = 0;
  v11 = 0;
  v12 = 12;
LABEL_27:
  v45 = -16 - v12;
  for (i = -v12; ; LODWORD(i) = i + 1)
  {
    v14 = (*(**(this + 13) + 48))(*(this + 13), 0, v12, 8, &v57, &v54);
    v3 = v14;
    if (v14)
    {
      if (v14 != -39)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&v59 = "AIFFAudioFile.cpp";
          WORD4(v59) = 1024;
          *(&v59 + 10) = 1338;
          v4 = MEMORY[0x1E69E9C10];
          v5 = "%25s:%-5d  FSRead Failed 1";
          goto LABEL_4;
        }

        goto LABEL_5;
      }

LABEL_73:
      if (v55 == 1129270605)
      {
        if (!DWORD2(outPropertyData))
        {
          v3 = FillDescriptionFromCommonChunk(&v55, &outPropertyData, inSpecifierSize, inSpecifier);
          if (v3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&v59 = "AIFFAudioFile.cpp";
              WORD4(v59) = 1024;
              *(&v59 + 10) = 1478;
              v4 = MEMORY[0x1E69E9C10];
              v5 = "%25s:%-5d  FillDescriptionFromCommonChunk Failed";
              goto LABEL_4;
            }

            goto LABEL_5;
          }
        }

        if (*&outPropertyData > 0.0)
        {
          (*(*this + 656))(this, v49, *&outPropertyData);
          (*(*this + 256))(this, *(&v55 + 10));
          v3 = (*(*this + 184))(this, &outPropertyData);
          if (v3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&v59 = "AIFFAudioFile.cpp";
              WORD4(v59) = 1024;
              *(&v59 + 10) = 1487;
              v4 = MEMORY[0x1E69E9C10];
              v5 = "%25s:%-5d  bad data format";
              goto LABEL_4;
            }

            goto LABEL_5;
          }

          if (DWORD2(outPropertyData) != 1819304813)
          {
            goto LABEL_134;
          }

          v38 = *(this + 9) + 8;
          for (j = 4; ; --j)
          {
            if ((*(**(this + 13) + 48))(*(this + 13), 0, v38, 10, &v68, &v54))
            {
              v6 = 0;
              goto LABEL_97;
            }

            *buf = 0;
            *(&v59 + 4) = &v68;
            HIDWORD(v59) = v54;
            v60 = 0;
            v64 = 0;
            v65 = 0;
            v66 = 0;
            v67 = 3940;
            if (v54 >= 0xA)
            {
              if (v68.u16[0] != 2935)
              {
                if (v68.u16[0] != 30475)
                {
                  goto LABEL_118;
                }

                v60 = 1;
              }

              buf[0] = 1;
            }

LABEL_118:
            if (!AC3PacketParser::IsValid(buf))
            {
              goto LABEL_132;
            }

            if (!j)
            {
              *&outPropertyData = v61;
              v49 = v62;
              v50 = v63;
              DWORD2(outPropertyData) = 1667326771;
              HIDWORD(outPropertyData) = (2 * v60) | 0xC;
              LODWORD(v49) = 6144;
              if (!(*(*this + 184))(this, &outPropertyData))
              {
                (*(*this + 656))(this, 6144);
                v41 = (*(*this + 232))(this);
                (*(*this + 256))(this, v41 / 6144);
                *(this + 122) = v64;
              }

LABEL_132:
              if (v65)
              {
                free(v65);
              }

LABEL_134:
              v6 = 0;
LABEL_84:
              v32 = v51 == 1397968452;
LABEL_85:
              v33 = v32;
              goto LABEL_88;
            }

            if (v65)
            {
              free(v65);
            }

            v38 += 6144;
          }
        }

        v6 = 1718449215;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_84;
        }

        *buf = 136315394;
        *&v59 = "AIFFAudioFile.cpp";
        WORD4(v59) = 1024;
        *(&v59 + 10) = 1482;
        v30 = MEMORY[0x1E69E9C10];
        v31 = "%25s:%-5d  Invalid sampling rate";
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_84;
        }

        *buf = 136315394;
        *&v59 = "AIFFAudioFile.cpp";
        WORD4(v59) = 1024;
        *(&v59 + 10) = 1472;
        v30 = MEMORY[0x1E69E9C10];
        v31 = "%25s:%-5d  Never found the Common Chunk";
      }

      _os_log_impl(&dword_18F5DF000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x12u);
      goto LABEL_84;
    }

    v15 = v57.i32[0];
    v16 = vrev32_s8(v57);
    v57 = v16;
    *&v51 = v16.u32[0] | 0x800000000;
    v17 = v16.i32[1] + 8;
    v18 = v12;
    *(&v51 + 1) = v17;
    v52 = v12;
    v19 = v53;
    v20 = (i + v53);
    if (v15 == 1145983827 && v17 >= 0x11 && v17 > v20)
    {
      if (v55 != 1129270605)
      {
        v40 = v16.i32[0];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&v59 = "AIFFAudioFile.cpp";
          WORD4(v59) = 1024;
          *(&v59 + 10) = 1355;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Never found the Common Chunk", buf, 0x12u);
          v32 = v40 == 1397968452;
          goto LABEL_85;
        }

        v33 = 1;
LABEL_88:
        *(this + 20) = v33;
        goto LABEL_89;
      }

      v3 = FillDescriptionFromCommonChunk(&v55, &outPropertyData, inSpecifierSize, inSpecifier);
      if (v3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&v59 = "AIFFAudioFile.cpp";
          WORD4(v59) = 1024;
          *(&v59 + 10) = 1359;
          v4 = MEMORY[0x1E69E9C10];
          v5 = "%25s:%-5d  FillDescriptionFromCommonChunk Failed";
          goto LABEL_4;
        }

        goto LABEL_5;
      }

      v17 = ((v45 + v19) & -v49) + 16;
      *(&v51 + 1) = v17;
    }

    if (v17 > v20)
    {
      goto LABEL_73;
    }

    std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v51);
    if (v57.i32[0] <= 1397968451)
    {
      v23 = v18;
      if (v57.i32[0] == 1129270605)
      {
        v24 = *(**(this + 13) + 48);
        if (v43 == 1128679745)
        {
          v3 = v24();
          if (v3)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_5;
            }

            *buf = 136315394;
            *&v59 = "AIFFAudioFile.cpp";
            WORD4(v59) = 1024;
            *(&v59 + 10) = 1378;
            v4 = MEMORY[0x1E69E9C10];
            v5 = "%25s:%-5d  FSRead Failed 3";
            goto LABEL_4;
          }

          *&v55 = vrev32_s8(*&v55);
          WORD4(v55) = bswap32(WORD4(v55)) >> 16;
          *(&v55 + 10) = bswap32(*(&v55 + 10));
          HIWORD(v55) = bswap32(HIWORD(v55)) >> 16;
          *(&v56 + 10) = bswap32(*(&v56 + 10));
          v25 = (DWORD1(v55) - 21) & 0xFFFFFFFE;
          if (v25 >= 1)
          {
            v26 = v25 >= 0x100 ? 256 : v25;
            v3 = (*(**(this + 13) + 48))(*(this + 13), 0, v18 + 30, v26, this + 190, &v54);
            if (v3)
            {
              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_5;
              }

              *buf = 136315394;
              *&v59 = "AIFFAudioFile.cpp";
              WORD4(v59) = 1024;
              *(&v59 + 10) = 1386;
              v4 = MEMORY[0x1E69E9C10];
              v5 = "%25s:%-5d  FSRead Failed 4";
LABEL_4:
              _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_ERROR, v5, buf, 0x12u);
              goto LABEL_5;
            }
          }

          if (!*v2)
          {
            v27 = *(&v56 + 10);
            *(this + 24) = *(&v56 + 10);
            *(this + 191) = v27;
            *(this + 190) = 4;
          }
        }

        else
        {
          v3 = v24();
          if (v3)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_5;
            }

            *buf = 136315394;
            *&v59 = "AIFFAudioFile.cpp";
            WORD4(v59) = 1024;
            *(&v59 + 10) = 1402;
            v4 = MEMORY[0x1E69E9C10];
            v5 = "%25s:%-5d  FSRead Failed 5";
            goto LABEL_4;
          }

          *&v55 = vrev32_s8(*&v55);
          WORD4(v55) = bswap32(WORD4(v55)) >> 16;
          *(&v55 + 10) = bswap32(*(&v55 + 10));
          HIWORD(v55) = bswap32(HIWORD(v55)) >> 16;
          *(&v56 + 10) = 1313820229;
          *v2 = 1852788256;
          *(this + 194) = 101;
          *v2 = 4;
        }

        goto LABEL_67;
      }

      if (v57.i32[0] == 1229206304)
      {
        *(this + 59) = v18 + 8;
        if (ID3ParserOpen(this, AIFFID3CallbackProc, this + 464))
        {
          *(this + 59) = 0;
        }

        goto LABEL_67;
      }

      goto LABEL_47;
    }

    v23 = v18;
    if (v57.i32[0] == 1397968452)
    {
      *(this + 56) = v18;
      v3 = (*(**(this + 13) + 48))(*(this + 13), 0, v18, 16, &v68, &v54);
      if (v3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&v59 = "AIFFAudioFile.cpp";
          WORD4(v59) = 1024;
          *(&v59 + 10) = 1420;
          v4 = MEMORY[0x1E69E9C10];
          v5 = "%25s:%-5d  FSRead Failed 6";
          goto LABEL_4;
        }

        goto LABEL_5;
      }

      v28 = vrev32q_s8(v68);
      v68 = v28;
      *(this + 9) = v18 + v28.u32[2] + 16;
      (*(*this + 240))(this, v28.u32[1] - v28.u32[2] - 8);
LABEL_67:
      v11 = v57.i8[4] & 1;
      v12 = v23 + ((v57.i32[1] + 1) & 0xFFFFFFFE) + 8;
      if (v12 >= v53)
      {
        goto LABEL_73;
      }

      goto LABEL_27;
    }

    if (v57.i32[0] == 2002876005)
    {
      break;
    }

LABEL_47:
    if ((v57.i8[0] & 0xE0) != 0 || (v11 & 1) == 0)
    {
      goto LABEL_67;
    }

    v11 = 0;
    v12 = v23 - 1;
    ++v45;
  }

  inSpecifierSize = v17 - 8;
  if (v17 == 8)
  {
    goto LABEL_67;
  }

  CADeprecated::CAAutoFree<unsigned char>::alloc(&v47, (v17 - 8), 0);
  inSpecifier = v47;
  v3 = (*(**(this + 13) + 48))(*(this + 13), 0, v18 + 8, inSpecifierSize);
  if (!v3)
  {
    goto LABEL_67;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&v59 = "AIFFAudioFile.cpp";
    WORD4(v59) = 1024;
    *(&v59 + 10) = 1447;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "%25s:%-5d  FSRead Failed 5";
    goto LABEL_4;
  }

LABEL_5:
  *(this + 20) = v51 == 1397968452;
  v6 = v3;
  if (v3 == -39)
  {
    if (*(&v56 + 10))
    {
      v7 = *(this + 9) == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v6 = 1685348671;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_97;
  }

LABEL_89:
  if ((*(this + 100) & 2) != 0 && DWORD2(outPropertyData) == 1819304813)
  {
    if (v50 > 8 && (BYTE12(outPropertyData) & 2) == 0)
    {
      v6 = 1886547263;
    }

    else
    {
      v6 = v6;
    }
  }

LABEL_97:
  if (v47)
  {
    free(v47);
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&v59 = "AIFFAudioFile.cpp";
      WORD4(v59) = 1024;
      *(&v59 + 10) = 1045;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d   AIFFAudioFile::OpenFromDataSource Failed", buf, 0x12u);
    }

LABEL_105:
    result = v6;
  }

  else
  {
    if ((*(this + 100) & 2) == 0)
    {
      goto LABEL_105;
    }

    result = 1886547263;
    v36 = *(this + 8);
    if (v36 != 842231401 && v36 != 1936684916)
    {
      goto LABEL_105;
    }
  }

  v37 = *MEMORY[0x1E69E9840];
  return result;
}