void sub_18F605784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = *(v14 + 80);
  if (v16)
  {
    free(v16);
  }

  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAFAudioFile::GetUserChunkSize(CAFAudioFile *this, int a2, int a3, unsigned int *a4)
{
  result = 1667787583;
  v8 = this + 144;
  v6 = *(this + 18);
  v7 = *(v8 + 1);
  v9 = v7 - v6;
  if (v7 != v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
    v13 = 1;
    do
    {
      v14 = (v6 + 24 * v10);
      if (*v14 == a2)
      {
        if (v11 == a3)
        {
          result = 0;
          *a4 = v14[2] - 12;
          return result;
        }

        ++v11;
      }

      v10 = v13;
    }

    while (v12 > v13++);
  }

  return result;
}

uint64_t CAFAudioFile::GetProperty(CAFAudioFile *this, int a2, unsigned int *a3, uint64_t *a4)
{
  if (a2 > 1886283374)
  {
    if (a2 == 1886283375)
    {
      if (*a3 >= 0x10)
      {
        valid = CAFAudioFile::NumberValidFrames(this);
        result = 0;
        *a4 = valid;
        a4[1] = *(this + 23);
        *a3 = 16;
        return result;
      }

      return 561211770;
    }

    if (a2 == 1920168566)
    {
      if ((*(this + 100) & 2) == 0)
      {
        return 1869627199;
      }

      if (*a3 == 8)
      {
        result = 0;
        *a4 = *(this + 25);
        return result;
      }

      return 561211770;
    }

    goto LABEL_10;
  }

  if (a2 != 1667787108)
  {
    if (a2 == 1751217000)
    {
      if (*a3 == 20)
      {
        LODWORD(v20) = 20;
        return (*(*this + 584))(this, 1751217000, 0, &v20, a4);
      }

      return 561211770;
    }

LABEL_10:

    return AudioFileObject::GetProperty(this, a2, a3, a4);
  }

  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  v8 = *(this + 18);
  if (*(this + 19) != v8)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v20, *(v8 + 24 * v9));
      v9 = v10;
      v8 = *(this + 18);
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v8) >> 3) > v10++);
    v12 = *a3;
    if (v12 >= 4)
    {
      v13 = v20;
      if (v20 != v21)
      {
        v14 = 0;
        v15 = v12 >> 2;
        do
        {
          *(a4 + v14) = *(v13 + 7);
          v16 = v13[1];
          v17 = v13;
          if (v16)
          {
            do
            {
              v13 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v13 = v17[2];
              v18 = *v13 == v17;
              v17 = v13;
            }

            while (!v18);
          }

          ++v14;
        }

        while (v14 < v15 && v13 != v21);
      }
    }
  }

  return 0;
}

uint64_t AudioFileObject::DoClose(AudioFileObject *this)
{
  if (*(this + 136))
  {
    result = (*(*this + 224))(this);
    if (result)
    {
      return result;
    }

    *(this + 136) = 0;
  }

  v3 = *(*this + 56);

  return v3(this);
}

uint64_t CAFAudioFile::GetEstimatedDuration(CAFAudioFile *this, double *a2)
{
  v3 = *(this + 3);
  v4 = *(this + 11);
  LODWORD(size) = 0;
  v5 = 0.0;
  if (v3 != 0.0)
  {
    if ((*(*this + 736))(this, 1885432692, 0, &size))
    {
      v7 = 0;
    }

    else
    {
      v7 = size >= 0x18;
    }

    if (v7)
    {
      v11 = 0;
      CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v11, size, 1);
      v8 = v11;
      if ((*(*this + 752))(this, 1885432692, 0, 0, &size, v11))
      {
        if (!v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v9 = vrev64q_s8(*v8->i8);
        *v8->i8 = v9;
        v8[2] = vrev32_s8(v8[2]);
        v5 = (v9.i64[1] & ~(v9.i64[1] >> 63)) / v3;
      }

      free(v8);
    }

    else
    {
      v5 = ((*(*this + 248))(this) * v4) / v3;
    }
  }

LABEL_12:
  *a2 = v5;
  return 0;
}

void sub_18F605CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAFAudioFile::GetPropertyInfo(CAFAudioFile *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 > 1886283374)
  {
    if (a2 == 1886283375)
    {
      if (a3)
      {
        v6 = 16;
        goto LABEL_24;
      }

LABEL_25:
      if (!a4)
      {
        return 0;
      }

      v7 = 1;
LABEL_27:
      *a4 = v7;
      return 0;
    }

    if (a2 == 1920168566)
    {
      if (a3)
      {
        *a3 = 8;
      }

      if (!a4)
      {
        return 0;
      }

      v7 = (*(this + 100) >> 1) & 1;
      goto LABEL_27;
    }
  }

  else
  {
    if (a2 == 1667787108)
    {
      if (a4)
      {
        *a4 = 0;
      }

      if (a3)
      {
        v16 = 0;
        v17 = 0;
        v15 = &v16;
        v9 = *(this + 18);
        if (*(this + 19) == v9)
        {
          v13 = 0;
          v14 = 0;
        }

        else
        {
          v10 = 0;
          v11 = 1;
          do
          {
            std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v15, *(v9 + 24 * v10));
            v10 = v11;
            v9 = *(this + 18);
          }

          while (0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v9) >> 3) > v11++);
          v13 = v16;
          v14 = 4 * v17;
        }

        *a3 = v14;
      }

      return 0;
    }

    if (a2 == 1751217000)
    {
      if (a3)
      {
        v6 = 20;
LABEL_24:
        *a3 = v6;
        goto LABEL_25;
      }

      goto LABEL_25;
    }
  }

  return AudioFileObject::GetPropertyInfo(this, a2, a3, a4);
}

uint64_t CAFAudioFile::GetMagicCookieDataSize(CAFAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 1;
  }

  v3 = *(this + 18);
  v4 = *(this + 19) - v3;
  if (v4)
  {
    v5 = 0;
    v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    v7 = 1;
    while (1)
    {
      v8 = (v3 + 24 * v5);
      if (*v8 == 1802857321)
      {
        break;
      }

      v5 = v7;
      if (v6 <= v7++)
      {
        goto LABEL_7;
      }
    }

    if (a2)
    {
      v10 = v8[2] - 12;
      goto LABEL_11;
    }
  }

  else
  {
LABEL_7:
    if (a2)
    {
      v10 = 0;
LABEL_11:
      *a2 = v10;
    }
  }

  return 0;
}

void sub_18F606014(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
    __cxa_end_catch();
    JUMPOUT(0x18F605FD4);
  }

  __cxa_end_catch();
  JUMPOUT(0x18F605FF4);
}

uint64_t AudioFileObject::ReadPackets(AudioFileObject *this, uint64_t a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, void *a7)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "AudioFileObject.cpp";
      v20 = 1024;
      v21 = 867;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "%25s:%-5d  NULL buffer";
      goto LABEL_17;
    }

LABEL_18:
    result = 4294967246;
    goto LABEL_19;
  }

  if (!a6 || !*a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "AudioFileObject.cpp";
      v20 = 1024;
      v21 = 869;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "%25s:%-5d  invalid num packets parameter";
LABEL_17:
      _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, v16, &v18, 0x12u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v10 = *(this + 10);
  v18 = v10 * *a6;
  result = (*(*this + 72))(this, a2, v10 * a5, &v18, a7);
  if (!result || result == -39)
  {
    v12 = v18;
    v13 = *(this + 10);
    if (v18 != v13 * *a6)
    {
      v14 = v18 / v13;
      *a6 = v18 / v13;
      v12 = *(this + 10) * v14;
    }

    if (a3)
    {
      *a3 = v12;
    }

    if (result == -39)
    {
      result = 0;
    }

    else
    {
      result = result;
    }
  }

LABEL_19:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CAFAudioFile::ReadPackets(CAFAudioFile *this, uint64_t a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, void *a7)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(this + 10))
  {
    v13 = *(this + 11) == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (a6 && (v14 = *a6, v14))
    {
      v15 = *(this + 15);
      if (!v15)
      {
        v21 = 1685348671;
        goto LABEL_26;
      }

      v16 = *(v15 + 24);
      if (v16 <= a5)
      {
        if (a3)
        {
          *a3 = 0;
        }

        *a6 = 0;
        v21 = 4294967257;
        goto LABEL_26;
      }

      if (v14 + a5 > v16)
      {
        *a6 = v16 - a5;
      }

      if (a3)
      {
        *a3 = 0;
      }

      CompressedPacketTable::operator[](buf, v15, a5);
      v18 = *buf;
      CompressedPacketTable::operator[](buf, v15, a5 + *a6 - 1);
      v19 = *buf - v18 + v34[0];
      if (v19 <= 0xFFFFFFFFLL)
      {
        v32 = *buf - v18 + v34[0];
        if (a7)
        {
          v20 = (*(*this + 72))(this, a2, v18, &v32, a7);
          v21 = v20;
          if (v20 != -39 && v20)
          {
            if (a3)
            {
              *a3 = 0;
            }

            *a6 = 0;
            goto LABEL_26;
          }

          LODWORD(v19) = v32;
          if (a3)
          {
            *a3 = v32;
          }
        }

        else
        {
          v21 = 0;
        }

        if (*a6)
        {
          v25 = 0;
          v26 = 0;
          v27 = v18 + v19;
          if (a7)
          {
            v28 = 0;
          }

          else
          {
            v28 = v18;
          }

          p_mDataByteSize = &a4->mDataByteSize;
          do
          {
            CompressedPacketTable::operator[](buf, v15, a5 + v25);
            v30 = v34[0];
            if (*buf + v34[0] > v27)
            {
              break;
            }

            if (a4)
            {
              v31 = *&buf[8];
              *(p_mDataByteSize - 3) = v26 + v28;
              *(p_mDataByteSize - 1) = v31;
              *p_mDataByteSize = v30;
            }

            v26 += v30;
            ++v25;
            p_mDataByteSize += 4;
          }

          while (v25 < *a6);
        }

        else
        {
          LODWORD(v25) = 0;
        }

        *a6 = v25;
LABEL_26:
        v24 = *MEMORY[0x1E69E9840];
        return v21;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CAFAudioFile.cpp";
      LOWORD(v34[0]) = 1024;
      *(v34 + 2) = 3100;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  invalid num packets parameter", buf, 0x12u);
    }

    v21 = 4294967246;
    goto LABEL_26;
  }

  v22 = *MEMORY[0x1E69E9840];

  return AudioFileObject::ReadPackets(this, a2, a3, a4, a5, a6, a7);
}

uint64_t AudioFileObject::ReadBytes(AudioFileObject *this, int a2, uint64_t a3, unsigned int *a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a4 && a5)
  {
    v10 = *(this + 9);
    if ((*(*this + 232))(this) <= a3)
    {
      *a4 = 0;
      result = 4294967257;
    }

    else
    {
      v11 = v10 + a3;
      v12 = v11 + *a4;
      v13 = *(this + 9) + (*(*this + 232))(this);
      if (v12 <= v13)
      {
        v14 = *a4;
      }

      else
      {
        v14 = (*(*this + 232))(this) - v11 + *(this + 18);
        *a4 = v14;
      }

      LODWORD(result) = (*(**(this + 13) + 48))(*(this + 13), 32 * (a2 == 0), v11, v14, a5, a4);
      if (result)
      {
        v16 = 1;
      }

      else
      {
        v16 = v12 <= v13;
      }

      if (v16)
      {
        result = result;
      }

      else
      {
        result = 4294967257;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "AudioFileObject.cpp";
      v20 = 1024;
      v21 = 773;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  invalid num bytes parameter", &v18, 0x12u);
    }

    result = 4294967246;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

OSStatus AudioFileClose(AudioFileID inAudioFile)
{
  v8 = inAudioFile;
  v9 = 0;
  __lk.__m_ = &AudioFileMutex(void)::global;
  __lk.__owns_ = 1;
  std::mutex::lock(&AudioFileMutex(void)::global);
  if (!inAudioFile)
  {
    goto LABEL_15;
  }

  v2 = BaseOpaqueObject::ResolveOpaqueRef();
  v9 = v2;
  if (!v2)
  {
    v8 = 0;
LABEL_15:
    v5 = 1;
    goto LABEL_16;
  }

  if (*(v2 + 12))
  {
    ++*(v2 + 16);
    do
    {
      if (*(v2 + 20))
      {
        --*(v2 + 16);
        goto LABEL_15;
      }

      std::condition_variable::wait(&AudioFileCondVar(void)::global, &__lk);
      v2 = v9;
    }

    while (*(v9 + 12));
    v3 = *(v9 + 20);
    --*(v9 + 16);
    if (v3)
    {
      goto LABEL_15;
    }

    v4 = *(v2 + 12) + 1;
  }

  else
  {
    v4 = 1;
  }

  *(v2 + 12) = v4;
  *(v2 + 20) = 1;
  std::condition_variable::notify_one(&AudioFileCondVar(void)::global);
  while (*(v9 + 16))
  {
    std::condition_variable::wait(&AudioFileCondVar(void)::global, &__lk);
  }

  v5 = 0;
LABEL_16:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  if (v5)
  {
    v6 = -38;
    goto LABEL_24;
  }

  if (!v9)
  {
    v6 = -50;
    goto LABEL_24;
  }

  v6 = (*(*v9 + 72))(v9);
  if (v6)
  {
LABEL_24:
    AudioFileLocker::~AudioFileLocker(&v8);
    return v6;
  }

  (*(*v9 + 8))(v9);
  v9 = 0;
  AudioFileLocker::~AudioFileLocker(&v8);
  return 0;
}

void sub_18F606900(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F6068ECLL);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void Cached_DataSource::~Cached_DataSource(Cached_DataSource *this)
{
  *this = &unk_1F033E180;
  if (*(this + 72))
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(this + 5);
  if (v3)
  {
    free(v3);
    *(this + 5) = 0;
  }

  v4 = *(this + 3);
  if (v4)
  {
    free(v4);
    *(this + 3) = 0;
  }
}

{
  Cached_DataSource::~Cached_DataSource(this);

  JUMPOUT(0x193ADF220);
}

void CAFAudioFile::~CAFAudioFile(CAFAudioFile *this)
{
  *this = &unk_1F03365C8;
  v2 = *(this + 32);
  *(this + 32) = 0;
  if (v2)
  {
    MEMORY[0x193ADF220](v2, 0x1000C403E1C8BA9);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  AudioFileObject::~AudioFileObject(this);
}

{
  CAFAudioFile::~CAFAudioFile(this);

  JUMPOUT(0x193ADF220);
}

uint64_t CAFAudioFile::Close(CAFAudioFile *this)
{
  v2 = this + 216;
  v3 = *(this + 27);
  if (v3 != 0.0)
  {
    v4 = *(this + 3);
    _ZF = v4 == 0.0 || v3 == v4;
    if (!_ZF && CAFAudioFile::NumberValidFrames(this) >= 1)
    {
      v6 = *(this + 27) / *(this + 3);
      v7 = *(this + 23);
      v8.i64[0] = v7;
      v8.i64[1] = SHIDWORD(v7);
      __asm { FMOV            V1.2D, #0.5 }

      v15 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vmlaq_n_f64(_Q1, vcvtq_f64_s64(v8), v6))));
      *(this + 22) = (vcvtmd_s64_f64(v6 * (CAFAudioFile::NumberValidFrames(this) + *(this + 46) + *(this + 47)) + 0.5) - vadd_s32(vdup_lane_s32(v15, 1), v15).u32[0]);
      *(this + 23) = v15;
      CAFAudioFile::UpdatePacketTableChunk(this);
      (*(*this + 192))(this, v2);
    }
  }

  v13 = *(this + 13);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  *(this + 13) = 0;
  return 0;
}

void UnixFile_DataSource::~UnixFile_DataSource(UnixFile_DataSource *this)
{
  *this = &unk_1F03263D0;
  if (*(this + 8))
  {
    close(*(this + 3));
  }
}

{
  UnixFile_DataSource::~UnixFile_DataSource(this);

  JUMPOUT(0x193ADF220);
}

void AudioFileObjectHandle::~AudioFileObjectHandle(AudioFileObjectHandle *this)
{
  *this = &unk_1F032F2F0;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F032F3D8;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

{
  AudioFileObjectHandle::~AudioFileObjectHandle(this);

  JUMPOUT(0x193ADF220);
}

void AudioFileObject::~AudioFileObject(AudioFileObject *this)
{
  *this = &unk_1F033DE90;
  v2 = *(this + 13);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  AudioFileObject::DeletePacketTable(this);
  v3 = *(this + 11);
  if (v3)
  {
    CFRelease(v3);
    *(this + 11) = 0;
  }
}

CompressedPacketTable *AudioFileObject::DeletePacketTable(AudioFileObject *this)
{
  result = *(this + 15);
  if (result)
  {
    CompressedPacketTable::~CompressedPacketTable(result);
    result = MEMORY[0x193ADF220]();
  }

  *(this + 15) = 0;
  return result;
}

double DSPGraph::Graph::getLatencyInSeconds(DSPGraph::Graph *this)
{
  if (((*(this + 39) - *(this + 38)) & 0x7FFFFFFF8) == 0)
  {
    return 0.0;
  }

  v2 = 0;
  v3 = 0.0;
  do
  {
    v4 = DSPGraph::Graph::out(this, v2);
    v5 = (*(*v4 + 72))(v4);
    v6 = DSPGraph::Box::upstreamLatencyInTicks(v4);
    v7 = *(*(v4 + 1) + 696);
    if ((v6 + v5) / v7 >= v3)
    {
      v3 = (v6 + v5) / v7;
    }

    ++v2;
  }

  while (v2 < ((*(this + 39) - *(this + 38)) >> 3));
  return v3;
}

uint64_t DSPGraph::Graph::out(DSPGraph::Graph *this, unsigned int a2)
{
  v2 = *(this + 38);
  if (a2 >= ((*(this + 39) - v2) >> 3))
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "out");
    std::string::basic_string[abi:ne200100]<0>(&v4, "Graph::out inIndex out of range");
    DSPGraph::ThrowException(1919837985, &v6, 1360, &v5, &v4);
  }

  return *(v2 + 8 * a2);
}

void sub_18F60722C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

unint64_t DSPGraph::RingBufferBox::selfLatencyInTicks(DSPGraph::RingBufferBox *this)
{
  v1 = *(this + 194);
  v2 = *(*(this + 1) + 696);
  return v2 / (*(*this + 664))(this) * v1;
}

uint64_t DSPGraph::GraphOutput::ringBufferSampleRate(DSPGraph::GraphOutput *this)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v7, "in");
    v6 = (this + 32);
    if (*(this + 55) < 0)
    {
      v6 = *v6;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v5, v6, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  return **((*(*v2 + 40))(v2) + 120);
}

void sub_18F6073AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

unint64_t DSPGraph::Box::upstreamLatencyInTicks(DSPGraph::Box *this)
{
  if (*(this + 760) == 1)
  {
    return *(this + 94);
  }

  v3 = *(this + 8);
  v4 = *(this + 9);
  if (v3 == v4)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    do
    {
      v5 = DSPGraph::InputPort::upstreamLatencyInTicks(v3);
      if (v2 <= v5)
      {
        v2 = v5;
      }

      v3 = (v3 + 32);
    }

    while (v3 != v4);
  }

  *(this + 94) = v2;
  *(this + 760) = 1;
  return v2;
}

uint64_t isInternalBuild(void)
{
  {
    isInternalBuild(void)::sIsInternalBuild = os_variant_has_internal_diagnostics();
  }

  return isInternalBuild(void)::sIsInternalBuild;
}

uint64_t FillDescriptionFromCommonChunk(uint64_t a1, void *outPropertyData, UInt32 inSpecifierSize, void *inSpecifier)
{
  outPropertyData[4] = 0;
  *outPropertyData = 0u;
  *(outPropertyData + 1) = 0u;
  v8 = *(a1 + 16);
  v9 = v8;
  v10 = *(a1 + 17) | ((v8 & 0x7F) << 8);
  v11 = bswap32(*(a1 + 18));
  v12 = bswap32(*(a1 + 22));
  v13 = 0.0;
  if (v10)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 == 0;
  }

  if (!v14 || v12 != 0)
  {
    if (v10 == 0x7FFF)
    {
      v13 = INFINITY;
    }

    else
    {
      v16 = ldexp(v11, v10 - 16414);
      v13 = v16 + ldexp(v12, v10 - 16446);
    }
  }

  result = 1718449215;
  if (v9 < 0)
  {
    v13 = -v13;
  }

  *outPropertyData = v13;
  v18 = *(a1 + 26);
  *(outPropertyData + 2) = v18;
  v19 = *(a1 + 8);
  v20 = *(a1 + 14);
  *(outPropertyData + 7) = v19;
  *(outPropertyData + 8) = v20;
  if (v18 == 1196641568)
  {
    *(outPropertyData + 2) = 1634169709;
LABEL_15:
    *(outPropertyData + 12) = 0;
    outPropertyData[4] = 0;
    *(outPropertyData + 20) = 0;
    ioPropertyDataSize = 40;
    result = AudioFormatGetProperty(0x666D7469u, inSpecifierSize, inSpecifier, &ioPropertyDataSize, outPropertyData);
    if (*(outPropertyData + 2) != 1819304813)
    {
      return result;
    }

    v21 = *(outPropertyData + 3);
    goto LABEL_55;
  }

  v22 = (v20 + 7) >> 3;
  if (v18 <= 1768829491)
  {
    if (v18 > 1313820228)
    {
      if (v18 == 1313820229)
      {
        v35 = v22 * v19;
        *(outPropertyData + 5) = 1;
        *(outPropertyData + 6) = v35;
        *(outPropertyData + 4) = v35;
        *(outPropertyData + 2) = 1819304813;
        if ((v20 & 7) != 0)
        {
          v21 = 20;
          *(outPropertyData + 3) = 20;
          v28 = 22;
        }

        else
        {
          v21 = 12;
          *(outPropertyData + 3) = 12;
          v28 = 14;
        }

        goto LABEL_51;
      }

      if (v18 != 1718367026)
      {
        v24 = 1718367796;
        goto LABEL_36;
      }
    }

    else
    {
      if (v18 == 842231401)
      {
        result = 0;
        v34 = 4 * v19;
        *(outPropertyData + 5) = 1;
        *(outPropertyData + 6) = v34;
        *(outPropertyData + 4) = v34;
        v30 = 32;
        goto LABEL_47;
      }

      if (v18 != 1179398962)
      {
        v24 = 1179399732;
LABEL_36:
        if (v18 != v24)
        {
          goto LABEL_15;
        }

        result = 0;
        v25 = 8 * v19;
        *(outPropertyData + 5) = 1;
        *(outPropertyData + 6) = v25;
        *(outPropertyData + 4) = v25;
        *(outPropertyData + 8) = 64;
        outPropertyData[1] = 0x96C70636DLL;
        v21 = 9;
LABEL_55:
        *(outPropertyData + 3) = v21 | 2;
        return result;
      }
    }

    v27 = 4 * v19;
    *(outPropertyData + 5) = 1;
    *(outPropertyData + 6) = v27;
    *(outPropertyData + 4) = v27;
    *(outPropertyData + 8) = 32;
    outPropertyData[1] = 0x96C70636DLL;
    v28 = 11;
    v21 = 9;
    goto LABEL_51;
  }

  if (v18 > 1836253268)
  {
    if (v18 <= 1936684915)
    {
      if (v18 == 1836253269)
      {
        return result;
      }

      if (v18 != 1918990112)
      {
        goto LABEL_15;
      }

      result = 0;
      v23 = v22 * v19;
      *(outPropertyData + 5) = 1;
      *(outPropertyData + 6) = v23;
      *(outPropertyData + 4) = v23;
      *(outPropertyData + 2) = 1819304813;
      if ((v20 + 7) <= 0xF)
      {
        v21 = 10;
      }

      else
      {
        v21 = 14;
      }

      goto LABEL_55;
    }

    if (v18 != 1936684916)
    {
      if (v18 != 1953984371)
      {
        goto LABEL_15;
      }

      result = 0;
      v26 = v22 * v19;
      *(outPropertyData + 5) = 1;
      *(outPropertyData + 6) = v26;
      *(outPropertyData + 4) = v26;
      outPropertyData[1] = 0xE6C70636DLL;
      v21 = 14;
      goto LABEL_55;
    }

    result = 0;
    v29 = 2 * v19;
    *(outPropertyData + 5) = 1;
    *(outPropertyData + 6) = v29;
    *(outPropertyData + 4) = v29;
    v30 = 16;
LABEL_47:
    *(outPropertyData + 8) = v30;
    outPropertyData[1] = 0xC6C70636DLL;
    return result;
  }

  switch(v18)
  {
    case 1768829492:
      v31 = 3 * v19;
      *(outPropertyData + 5) = 1;
      *(outPropertyData + 6) = v31;
      *(outPropertyData + 4) = v31;
      v32 = 24;
      break;
    case 1768829746:
      v33 = 4 * v19;
      *(outPropertyData + 5) = 1;
      *(outPropertyData + 6) = v33;
      *(outPropertyData + 4) = v33;
      v32 = 32;
      break;
    case 1836253264:
      return result;
    default:
      goto LABEL_15;
  }

  *(outPropertyData + 8) = v32;
  outPropertyData[1] = 0xC6C70636DLL;
  v28 = 14;
  v21 = 12;
LABEL_51:
  if (inSpecifierSize < 0x16)
  {
    result = 0;
    goto LABEL_55;
  }

  result = 0;
  if (!*(inSpecifier + 10))
  {
    *(outPropertyData + 3) = v28;
  }

  return result;
}

BOOL AIFFAudioFile::IsDataFormatSupported(AIFFAudioFile *this, const AudioStreamBasicDescription *a2)
{
  mFormatID = a2->mFormatID;
  if (mFormatID == 1667326771)
  {
    return 1;
  }

  v3 = *(this + 21);
  if (v3 != 1095321155)
  {
    if (v3 == 1095321158)
    {
      if (mFormatID != 1819304813)
      {
        return 0;
      }

      mFormatFlags = a2->mFormatFlags;
      if ((mFormatFlags & 5) != 4)
      {
        return 0;
      }

      if ((mFormatFlags & 2) != 0)
      {
        return 1;
      }

      return a2->mBitsPerChannel < 9 || (*(this + 100) & 2) == 0;
    }

    goto LABEL_22;
  }

  v5 = 0;
  if (mFormatID > 1634169708)
  {
    if (mFormatID <= 1768775987)
    {
      if (mFormatID == 1634169709)
      {
        goto LABEL_22;
      }

      v6 = 1634492791;
    }

    else
    {
      if (mFormatID == 1768775988 || mFormatID == 1970037111)
      {
        goto LABEL_22;
      }

      v6 = 1819304813;
    }
  }

  else if (mFormatID <= 1363430705)
  {
    if (mFormatID == 1296122675)
    {
      goto LABEL_22;
    }

    v6 = 1296122678;
  }

  else
  {
    if (mFormatID == 1363430706 || mFormatID == 1363430723)
    {
      goto LABEL_22;
    }

    v6 = 1365470320;
  }

  if (mFormatID == v6)
  {
LABEL_22:
    if (mFormatID != 1819304813 || (a2->mFormatFlags & 2) != 0)
    {
      return 1;
    }

    return a2->mBitsPerChannel < 9 || (*(this + 100) & 2) == 0;
  }

  return v5;
}

uint64_t AC3PacketParser::IsValid(AC3PacketParser *this)
{
  if (*this != 1)
  {
    return 0;
  }

  if (*(this + 1))
  {
    return 1;
  }

  if (ParseAC3Header(*(this + 1), 0xAu, (this + 24), this + 16, this + 17, 0, this + 21, 0))
  {
    return 0;
  }

  result = 1;
  *(this + 1) = 1;
  return result;
}

uint64_t ChunkyAudioFile::GetProperty(ChunkyAudioFile *this, int a2, unsigned int *a3, uint64_t *a4)
{
  if (a2 == 1751217000)
  {
    if (*a3 == 20)
    {
      LODWORD(v20) = 20;
      return (*(*this + 584))(this, 1751217000, 0, &v20, a4);
    }

    else
    {
      return 561211770;
    }
  }

  else if (a2 == 1667787108)
  {
    v21[0] = 0;
    v21[1] = 0;
    v20 = v21;
    v7 = *(this + 18);
    if (*(this + 19) != v7)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = *(v7 + 24 * v8);
        if (v10 != (*(*this + 736))(this))
        {
          std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v20, *(*(this + 18) + 24 * v8));
        }

        v8 = v9;
        v7 = *(this + 18);
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v7) >> 3) > v9++);
      v12 = *a3;
      if (v12 >= 4)
      {
        v13 = v20;
        if (v20 != v21)
        {
          v14 = 0;
          v15 = v12 >> 2;
          do
          {
            *(a4 + v14) = *(v13 + 7);
            v16 = v13[1];
            v17 = v13;
            if (v16)
            {
              do
              {
                v13 = v16;
                v16 = *v16;
              }

              while (v16);
            }

            else
            {
              do
              {
                v13 = v17[2];
                v18 = *v13 == v17;
                v17 = v13;
              }

              while (!v18);
            }

            ++v14;
          }

          while (v14 < v15 && v13 != v21);
        }
      }
    }

    return 0;
  }

  else
  {

    return AudioFileObject::GetProperty(this, a2, a3, a4);
  }
}

uint64_t AIFFAudioFile::GetProperty(AIFFAudioFile *this, int a2, unsigned int *a3, uint64_t *a4)
{
  result = 561211770;
  if (a3 && a4)
  {
    if (a2 == 1768174447)
    {
      result = 1886681407;
      v6 = *(this + 59);
      if (v6 && (*(this + 100) & 2) == 0)
      {
        result = 561211770;
        if (*a3 >= 8)
        {
          result = 0;
          *a4 = v6;
          *a3 = 8;
        }
      }
    }

    else
    {
      return ChunkyAudioFile::GetProperty(this, a2, a3, a4);
    }
  }

  return result;
}

uint64_t ChunkyAudioFile::GetPropertyInfo(ChunkyAudioFile *this, int a2, unsigned int *a3, unsigned int *a4)
{
  switch(a2)
  {
    case 1920168566:
      if (a3)
      {
        *a3 = 8;
      }

      if (!a4)
      {
        return 0;
      }

      v13 = (*(this + 100) >> 1) & 1;
LABEL_21:
      *a4 = v13;
      return 0;
    case 1751217000:
      if (a3)
      {
        *a3 = 20;
      }

      if (!a4)
      {
        return 0;
      }

      v13 = 1;
      goto LABEL_21;
    case 1667787108:
      if (a4)
      {
        *a4 = 0;
      }

      if (a3)
      {
        v16 = 0;
        v17 = 0;
        v15 = &v16;
        v6 = *(this + 18);
        if (*(this + 19) == v6)
        {
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v7 = 0;
          v8 = 1;
          do
          {
            v9 = *(v6 + 24 * v7);
            if (v9 != (*(*this + 736))(this))
            {
              std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v15, *(*(this + 18) + 24 * v7));
            }

            v7 = v8;
            v6 = *(this + 18);
          }

          while (0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v6) >> 3) > v8++);
          v11 = v16;
          v12 = 4 * v17;
        }

        *a3 = v12;
      }

      return 0;
  }

  return AudioFileObject::GetPropertyInfo(this, a2, a3, a4);
}

uint64_t AIFFAudioFile::GetPropertyInfo(AIFFAudioFile *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 != 1768174447)
  {
    return ChunkyAudioFile::GetPropertyInfo(this, a2, a3, a4);
  }

  if (a3)
  {
    *a3 = 8;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

uint64_t AIFFAudioFile::GetMagicCookieDataSize(AIFFAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(this + 8) == 1667326771)
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a2)
    {
      *a2 = 0;
      v22 = 0;
      v4 = (*(**(this + 13) + 48))(*(this + 13), 0, *(this + 9) + 8, 10, v23, &v22);
      if (v4)
      {
        goto LABEL_21;
      }

      v15 = 0;
      v16 = v23;
      v17 = v22;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0xF6400000000;
      if (v22 < 0xA)
      {
        goto LABEL_23;
      }

      if (v23[0] != 2935)
      {
        if (v23[0] != 30475)
        {
LABEL_23:
          if (AC3PacketParser::IsValid(&v15))
          {
            *a2 = 11;
          }

          if (v20)
          {
            free(v20);
          }

          goto LABEL_21;
        }

        v18 = 1;
      }

      LOBYTE(v15) = 1;
      goto LABEL_23;
    }

LABEL_18:
    v4 = 0;
    goto LABEL_21;
  }

  if (a3)
  {
    *a3 = 1;
  }

  if (!a2)
  {
    goto LABEL_18;
  }

  v5 = *(this + 18);
  v6 = *(this + 19) - v5;
  if (v6)
  {
    v7 = 0;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
    v9 = 1;
    while (1)
    {
      v10 = (v5 + 24 * v7);
      if (*v10 == 2002876005)
      {
        break;
      }

      v7 = v9;
      if (v8 <= v9++)
      {
        goto LABEL_17;
      }
    }

    v12 = v10[2] - 8;
  }

  else
  {
LABEL_17:
    v12 = 0;
  }

  v4 = 0;
  *a2 = v12;
LABEL_21:
  v13 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t AudioFileObject::GetFormatListInfo(AudioFileObject *this, unsigned int *a2, unsigned int *a3)
{
  *a2 = 48;
  *a3 = 0;
  return 0;
}

uint64_t AudioFileObject::GetEstimatedDuration(AudioFileObject *this, double *a2)
{
  v3 = *(this + 11);
  if (v3)
  {
    v4 = *(this + 3);
    v5 = ((*(*this + 248))(this) * v3) / v4;
  }

  else
  {
    v5 = 0.0;
  }

  *a2 = v5;
  return 0;
}

uint64_t AIFFAudioFile::GetChannelLayoutSize(AIFFAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 1;
  }

  if (*(this + 8) == 1667326771)
  {
    result = 0;
    v4 = 32;
  }

  else
  {
    v5 = *(this + 18);
    v6 = *(this + 19) - v5;
    if (v6)
    {
      v7 = 0;
      v8 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v9 = 1;
      while (1)
      {
        v10 = (v5 + 24 * v7);
        if (*v10 == 1128808782)
        {
          break;
        }

        v7 = v9;
        if (v8 <= v9++)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v10 = 0;
    }

    if (!a2)
    {
      return 0;
    }

    if (v10)
    {
      result = 0;
      v4 = v10[2] - 8;
    }

    else
    {
      v4 = 0;
      result = 1667787583;
    }
  }

  *a2 = v4;
  return result;
}

uint64_t AIFFAudioFile::GetChannelLayout(AIFFAudioFile *this, unsigned int *a2, AudioChannelLayout *a3)
{
  if (*(this + 8) == 1667326771)
  {
    *&a3->mChannelLayoutTag = 0u;
    *&a3->mChannelDescriptions[0].mChannelFlags = 0u;
    a3->mChannelLayoutTag = *(this + 122);
    result = 0;
    if (a2)
    {
      *a2 = 32;
    }
  }

  else
  {
    v6 = *(this + 18);
    v7 = *(this + 19) - v6;
    if (v7)
    {
      v8 = 0;
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 1;
      while (1)
      {
        v11 = v6 + 24 * v8;
        if (*v11 == 1128808782)
        {
          break;
        }

        v8 = v10;
        if (v9 <= v10++)
        {
          goto LABEL_8;
        }
      }

      v13 = *(v11 + 8) - 8;
      if (*a2 >= v13)
      {
        result = (*(**(this + 13) + 48))(*(this + 13), 0, *(v11 + 16) + 8);
        if (!result)
        {
          AudioChannelLayout_BtoN(a3, v13);
          result = 0;
          *a2 = v13;
        }
      }

      else
      {
        return 561211770;
      }
    }

    else
    {
LABEL_8:
      *a2 = 0;
      return 1667787583;
    }
  }

  return result;
}

int8x16_t AudioChannelLayout_BtoN(AudioChannelLayout *a1, unint64_t a2)
{
  v2 = a2 - 12;
  if (a2 >= 0xC)
  {
    *result.i8 = vrev32_s8(*&a1->mChannelLayoutTag);
    *&a1->mChannelLayoutTag = result.i64[0];
    v4 = bswap32(a1->mNumberChannelDescriptions);
    a1->mNumberChannelDescriptions = v4;
    if (a2 >= 0x20)
    {
      if (v4 >= (((a2 & 0xFFFFFFFC) - 12) / 0x14))
      {
        v4 = ((a2 & 0xFFFFFFFC) - 12) / 0x14;
      }

      a1->mNumberChannelDescriptions = v4;
      if (20 * v4 <= v2)
      {
        v5 = v4;
      }

      else
      {
        v5 = (v2 / 0x14);
      }

      if (v5)
      {
        v6 = &a1->mChannelDescriptions[0].mCoordinates[2];
        do
        {
          result = vrev32q_s8(*(v6 - 1));
          *(v6 - 1) = result;
          *v6 = bswap32(*v6);
          v6 += 5;
          --v5;
        }

        while (v5);
      }
    }
  }

  return result;
}

uint64_t ChunkyAudioFile::GetLoudnessInfo(ChunkyAudioFile *this, CACFDictionary *a2)
{
  v14 = 0;
  v4 = (*(*this + 744))(this, 1819243876, 0, &v14);
  if (!v4)
  {
    CADeprecated::CAAutoFree<unsigned char>::CAAutoFree(&bytes, v14, 1);
    v4 = (*(*this + 760))(this, 1819243876, 0, 0, &v14, bytes);
    if (!v4)
    {
      errorString = 0;
      v11 = 1;
      v10 = CFDataCreate(0, bytes, v14);
      v5 = CFPropertyListCreateFromXMLData(*MEMORY[0x1E695E480], v10, 0, &errorString);
      if (errorString)
      {
        CFRelease(errorString);
      }

      v4 = 1667787583;
      if (v5)
      {
        theDict = v5;
        v9 = 1;
        v6 = CFGetTypeID(v5);
        if (v6 == CFDictionaryGetTypeID())
        {
          CACFDictionary::SetCFMutableDictionaryFromCopy(a2, theDict, 1);
          v4 = 0;
        }

        CACFObject<void const*>::~CACFObject(&theDict);
      }

      CACFData::~CACFData(&v10);
    }

    if (bytes)
    {
      free(bytes);
    }
  }

  return v4;
}

void sub_18F608640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (a15)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioFileGetLoudnessInfoFromSoundCheckDictionary(AudioFileObject *a1, CACFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = 257;
  v4 = (*(*a1 + 464))(a1, &Mutable);
  if (!v4)
  {
    AudioFileGetLoudnessInfoFromSoundCheckDictionary(&Mutable, a2);
  }

  CACFDictionary::~CACFDictionary(&Mutable);
  return v4;
}

uint64_t ChunkyAudioFile::GetUserChunkSize(ChunkyAudioFile *this, int a2, int a3, unsigned int *a4)
{
  result = 1667787583;
  v8 = this + 144;
  v6 = *(this + 18);
  v7 = *(v8 + 1);
  v9 = v7 - v6;
  if (v7 != v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
    v13 = 1;
    do
    {
      v14 = v6 + 24 * v10;
      if (*v14 == a2)
      {
        if (v11 == a3)
        {
          v16 = *(v14 + 4);
          v17 = *(v14 + 8);
          if (v17 <= ~v16)
          {
            result = 0;
            *a4 = v17 - v16;
          }

          return result;
        }

        ++v11;
      }

      v10 = v13;
    }

    while (v12 > v13++);
  }

  return result;
}

void CACFDictionary::~CACFDictionary(CACFDictionary *this)
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

void AudioComponentMgr_RegistrarService::retrieveComponents(id *this, uint64_t a2, uint64_t a3)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = CFAbsoluteTimeGetCurrent();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = [this[11] synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_69];
  v7 = (*(*this + 16))(this);
  v8 = *(this + 80);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN34AudioComponentMgr_RegistrarService18retrieveComponentsEbb_block_invoke_70;
  v9[3] = &unk_1E72BA7C8;
  v9[4] = v14;
  v9[5] = &v10;
  v9[6] = this;
  [v6 getComponentList:v7 linkedSDKRequiresEntitlement:v8 includeExtensions:a2 forceWaitForExtensions:a3 reply:v9];

  if (*(v11 + 24) == 1 && a2)
  {
    *(this + 96) = 1;
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(v14, 8);
}

void sub_18F6089B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<APComponent>>,std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<APComponent>>,std::shared_ptr<APComponent>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<APComponent>>,std::shared_ptr<APComponent>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v3 -= 16;
    }
  }

  return a1;
}

void std::vector<std::shared_ptr<APComponent>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
}

BOOL std::__function::__func<AudioComponentVector::no_extensions_except(AudioComponentDescription &)::$_0,std::allocator<AudioComponentVector::no_extensions_except(AudioComponentDescription &)::$_0>,BOOL ()(APComponent &)>::operator()(uint64_t a1, _DWORD *a2)
{
  if (a2[8] != 3)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (*v2 && a2[9] == *v2)
  {
    return 0;
  }

  v4 = v2[1];
  if (v4 && a2[10] == v4)
  {
    return 0;
  }

  v6 = v2[2];
  return !v6 || a2[11] != v6;
}

id AudioComponentVector::serialized(AudioComponentVector *this)
{
  v16 = *MEMORY[0x1E69E9840];
  AudioComponentVector::sort(this);
  v2 = [[_ACComponentVector alloc] initWithVector:this];
  v9 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v9];
  v4 = v9;
  if (v4)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v5 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v11 = "AudioComponentVector.mm";
      v12 = 1024;
      v13 = 349;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error serializing AudioComponentVector: %@", buf, 0x1Cu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t std::__function::__value_func<BOOL ()(APComponent &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<std::shared_ptr<APComponent>>::__assign_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<APComponent>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v8 = a1[2] - *a1;
      v9 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::shared_ptr<APComponent>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v7;
  if (a4 <= v11 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<APComponent> *,std::shared_ptr<APComponent> *,std::shared_ptr<APComponent> *>(a2, a3, v7);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<APComponent> *,std::shared_ptr<APComponent> *,std::shared_ptr<APComponent> *>(a2, (a2 + v11), v7);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<APComponent>>,std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(a1, v12, a3, a1[1]);
  }
}

void std::vector<std::shared_ptr<APComponent>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

APComponent *APComponent::name(APComponent *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

void std::vector<std::shared_ptr<CA::ADMPackFormat>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void ___ZN34AudioComponentMgr_RegistrarService18retrieveComponentsEbb_block_invoke_70(void *a1, void *a2, char a3, void *a4, void *a5)
{
  v12 = a2;
  v9 = a4;
  v10 = a5;
  v11 = a1[6];
  *(*(a1[4] + 8) + 24) = CFAbsoluteTimeGetCurrent();
  *(*(a1[5] + 8) + 24) = 1;
  AudioComponentMgr_RegistrarService::mergeServerRegistrations(v11, v12, a3 ^ 1, v9, v10);
}

void AudioComponentMgr_RegistrarService::mergeServerRegistrations(AudioComponentMgr_RegistrarService *this, NSData *a2, char a3, NSData *a4, NSArray *a5)
{
  v35[4] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  AudioComponentVector::createWithSerializedData(&v22, a2);
  v11 = v9;
  v12 = v10;
  v13 = *(this + 97);
  *(this + 97) = 1;
  if (!v22.mSorted)
  {
    __assert_rtn("mergeServerRegistrations", "AudioComponentPluginMgr.mm", 653, "currentServerRegistrations.sorted()");
  }

  v29 = 0;
  v30 = 0;
  v32 = 0;
  v31 = 0;
  v35[0] = &unk_1F03269A8;
  v35[1] = this;
  v35[2] = &v29;
  v35[3] = v35;
  AudioComponentVector::remove_and_erase_if (&v22, v35);
  std::__function::__value_func<BOOL ()(APComponent &)>::~__value_func[abi:ne200100](v35);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  std::vector<std::shared_ptr<APComponent>>::__init_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(&v25, v22.__begin_, v22.__end_, (v22.__end_ - v22.__begin_) >> 4);
  v14 = 126 - 2 * __clz((v26 - v25) >> 4);
  mSorted = v22.mSorted;
  if (v26 == v25)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  std::__introsort<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,false>(v25, v26, v15, 1);
  v29 = 0;
  v30 = 0;
  v32 = 0;
  v31 = 0;
  v34[0] = &unk_1F03269F0;
  v34[1] = &v29;
  v34[3] = v34;
  AudioComponentVector::remove_and_erase_if (&v25, v34);
  std::__function::__value_func<BOOL ()(APComponent &)>::~__value_func[abi:ne200100](v34);
  v16 = v25;
  v17 = v26;
  while (v16 != v17)
  {
    AudioComponentVector::remove(&v22, *v16);
    v16 += 2;
  }

  if (a3)
  {
    begin = v22.__begin_;
    end = v22.__end_;
    while (begin != end)
    {
      if (*(*begin + 32) == 3)
      {
        *(*begin + 48) |= 1u;
      }

      begin += 16;
    }
  }

  v20 = !AudioComponentMgr_RegistrarService::inExtensionServiceProcess(this);
  if (!v12)
  {
    LOBYTE(v20) = 1;
  }

  if (!v20)
  {
    (*(*this + 136))(&v24, this, v12);
    AudioComponentVector::append(&v22, v24.__begin_, v24.__end_);
    v23.__begin_ = &v24;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v23);
  }

  AudioComponentVector::subtract(&v24, &v22, (this + 112));
  AudioComponentVector::subtract(&v23, (this + 112), &v22);
  if (v13 & 1) != 0 || gAudioComponentLogCategory && (*(gAudioComponentLogCategory + 8))
  {
    AudioComponentVector::showAll(&v24, "addedComponents");
    AudioComponentVector::showAll(&v23, "removedComponents");
  }

  AudioComponentMgr_Base::addAndRemoveComponents(this, &v24, v23.__begin_, v23.__end_);
  if ((this + 112) != &v22)
  {
    std::vector<std::shared_ptr<APComponent>>::__assign_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(this + 14, v22.__begin_, v22.__end_, (v22.__end_ - v22.__begin_) >> 4);
  }

  *(this + 136) = v22.mSorted;
  if (v13)
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_82);
  }

  v33 = &v23;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v33);
  v23.__begin_ = &v24;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v23);
  v24.__begin_ = &v25;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v24);

  v35[0] = &v22;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](v35);

  v21 = *MEMORY[0x1E69E9840];
}

void sub_18F60940C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void ****a13, uint64_t a14, uint64_t a15, uint64_t a16, void ***a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a13 = &a17;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a13);
  a17 = &a21;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a17);

  a21 = &a9;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a21);

  _Unwind_Resume(a1);
}

void AudioComponentVector::createWithSerializedData(AudioComponentVector *this, NSData *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0;
  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v10];
  v5 = v10;
  if (v5)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v6 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v12 = "AudioComponentVector.mm";
      v13 = 1024;
      v14 = 360;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error deserializing AudioComponentVector: %@", buf, 0x1Cu);
    }

    *&this->__begin_ = 0u;
    *&this->__cap_ = 0u;
    v7 = 1;
  }

  else
  {
    *(v4 + 32) = 1;
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__cap_ = 0;
    std::vector<std::shared_ptr<APComponent>>::__init_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(this, *(v4 + 8), *(v4 + 16), (*(v4 + 16) - *(v4 + 8)) >> 4);
    v7 = *(v4 + 32);
  }

  this->mSorted = v7;

  v9 = *MEMORY[0x1E69E9840];
}

void applesauce::CF::StringRef::from_ns(applesauce::CF::StringRef *this, NSString *a2)
{
  v3 = a2;
  if (v3)
  {
    cf = v3;
    CFRetain(v3);
    *this = cf;
    v4 = CFGetTypeID(cf);
    v5 = v4 == CFStringGetTypeID();
    v3 = cf;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }
}

void sub_18F609774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v10);

  _Unwind_Resume(a1);
}

void applesauce::CF::ArrayRef::from_ns(applesauce::CF::ArrayRef *this, NSArray *a2)
{
  v3 = a2;
  if (v3)
  {
    cf = v3;
    CFRetain(v3);
    *this = cf;
    v4 = CFGetTypeID(cf);
    v5 = v4 == CFArrayGetTypeID();
    v3 = cf;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }
}

void sub_18F609858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v10);

  _Unwind_Resume(a1);
}

uint64_t AudioComponentRegistrationInfo::AudioComponentRegistrationInfo(uint64_t a1, uint64_t a2, int a3, CFTypeRef *a4, int a5, const void **a6, const void **a7, const void **a8)
{
  v13 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v13;
  *(a1 + 20) = a3;
  v14 = *a4;
  if (*a4)
  {
    CFRetain(*a4);
  }

  *(a1 + 24) = v14;
  *(a1 + 32) = a5;
  v15 = *a6;
  if (v15)
  {
    CFRetain(v15);
  }

  *(a1 + 40) = v15;
  v16 = *a7;
  if (v16)
  {
    CFRetain(v16);
  }

  *(a1 + 48) = v16;
  v17 = *a8;
  if (v17)
  {
    CFRetain(v17);
  }

  *(a1 + 56) = v17;
  return a1;
}

void APComponent_NSExtension::create_shared(APComponent_NSExtension *this, const AudioComponentRegistrationInfo *a2, NSString *a3, NSExtension *a4)
{
  a3;
  v5 = a4;
  operator new();
}

void sub_18F609A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  (*(*v11 + 24))(v11);

  _Unwind_Resume(a1);
}

void APComponent_NSExtension::APComponent_NSExtension(APComponent_NSExtension *this, const AudioComponentRegistrationInfo *a2, NSString *a3, NSExtension *a4)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  *this = &unk_1F033C098;
  v9 = *(a2 + 5);
  v10 = *(a2 + 8);
  v17[0] = &unk_1F033C468;
  v17[1] = this;
  v17[3] = v17;
  APComponent::APComponent(this, 3, 70, a2, v9, a2 + 3, v10, v17);
  std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::~__value_func[abi:ne200100](v17);
  *this = &unk_1F033C098;
  v11 = v7;
  *(this + 20) = v11;
  v12 = v8;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = v12;
  v13 = *(a2 + 5);
  if (v13)
  {
    CFRetain(*(a2 + 5));
  }

  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = v13;
  v14 = *(this + 15);
  v15 = *(a2 + 7);
  *(this + 15) = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_18F609C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<APComponent_NSExtension::APComponent_NSExtension(AudioComponentRegistrationInfo const&,NSString *,NSExtension *)::$_0,std::allocator<APComponent_NSExtension::APComponent_NSExtension(AudioComponentRegistrationInfo const&,NSString *,NSExtension *)::$_0>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F033C468;
  a2[1] = v2;
  return result;
}

void AudioComponentRegistrationInfo::~AudioComponentRegistrationInfo(AudioComponentRegistrationInfo *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    CFRelease(v5);
  }
}

size_t *std::vector<std::shared_ptr<CA::ADMPackFormat>>::push_back[abi:ne200100](size_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *result;
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

    v17[4] = v2;
    if (v10)
    {
      std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::shared_ptr<unsigned char []>>::~__split_buffer(v17);
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

  v2[1] = v6;
  return result;
}

BOOL std::__function::__func<AudioComponentMgr_RegistrarService::mergeServerRegistrations(AudioComponentVector &,BOOL,NSData *,NSArray *)::$_0,std::allocator<AudioComponentMgr_RegistrarService::mergeServerRegistrations(AudioComponentVector &,BOOL,NSData *,NSArray *)::$_0>,BOOL ()(APComponent &)>::operator()(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  if ((v4 - 2) >= 2)
  {
    if (v4 == 1)
    {
      v5 = (*(*a2 + 80))(a2);
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = *(v5 + 168);
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = *v15;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v6);
            }

            if ([*(*(&v14 + 1) + 8 * i) intValue] == 16777228)
            {

              goto LABEL_18;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }
    }

    else if (v4 != 4)
    {
      goto LABEL_18;
    }

LABEL_16:
    result = 1;
    goto LABEL_24;
  }

  if (AudioComponentMgr_RegistrarService::inExtensionServiceProcess(*(a1 + 8)))
  {
    goto LABEL_16;
  }

LABEL_18:
  v11 = *(a1 + 16);
  result = *(a2 + 36) == *v11 && *(a2 + 40) == *(v11 + 4) && *(a2 + 44) == *(v11 + 8) && *(a2 + 56) == *(v11 + 20);
  v12 = *(a2 + 36);
  *(v11 + 12) = *(a2 + 48);
  *v11 = v12;
LABEL_24:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v118 = a2 - 2;
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

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a1 + 2, v118);
          return;
        case 4:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a1 + 2, a1 + 4);
          if ((APComponent::Key::sortCompare((*v118 + 36), (a1[4] + 36), 1) & 0x80000000) != 0)
          {
            v50 = a1[4];
            a1[4] = *(a2 - 2);
            *(a2 - 2) = v50;
            v51 = a1[5];
            a1[5] = *(a2 - 1);
            *(a2 - 1) = v51;
            if ((APComponent::Key::sortCompare((a1[4] + 36), (a1[2] + 36), 1) & 0x80000000) != 0)
            {
              v53 = *(a1 + 1);
              v52 = *(a1 + 2);
              *(a1 + 1) = v52;
              *(a1 + 2) = v53;
              if ((APComponent::Key::sortCompare((v52 + 36), (*a1 + 36), 1) & 0x80000000) != 0)
              {
                v54 = *a1;
                *a1 = *(a1 + 1);
                *(a1 + 1) = v54;
              }
            }
          }

          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, v118);
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
        v47 = APComponent::Key::sortCompare((*v118 + 36), (*a1 + 36), 1);
        if (v47 < 0)
        {
          v48 = *a1;
          *a1 = *(a2 - 2);
          *(a2 - 2) = v48;
          v49 = a1[1];
          a1[1] = *(a2 - 1);
          *(a2 - 1) = v49;
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
      if (a1 == a2)
      {
        return;
      }

      v117 = a2;
      v70 = v10 >> 1;
      v71 = v10 >> 1;
      do
      {
        v72 = v71;
        if (v70 >= v71)
        {
          v73 = (2 * v71) | 1;
          v74 = &a1[2 * v73];
          if (2 * v71 + 2 < v9 && APComponent::Key::sortCompare((*v74 + 36), (v74[2] + 36), 1) < 0)
          {
            v74 += 2;
            v73 = 2 * v72 + 2;
          }

          v75 = &a1[2 * v72];
          if ((APComponent::Key::sortCompare((*v74 + 36), (*v75 + 36), 1) & 0x80000000) == 0)
          {
            v76 = *v75;
            *v75 = 0;
            v75[1] = 0;
            v119 = v76;
            v77 = v76;
            do
            {
              v78 = v74;
              v79 = *v74;
              *v74 = 0;
              v74[1] = 0;
              v80 = v75[1];
              *v75 = v79;
              if (v80)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v80);
              }

              if (v70 < v73)
              {
                break;
              }

              v81 = (2 * v73) | 1;
              v74 = &a1[2 * v81];
              v73 = 2 * v73 + 2;
              if (v73 >= v9)
              {
                v73 = v81;
              }

              else if (APComponent::Key::sortCompare((*v74 + 36), (v74[2] + 36), 1) >= 0)
              {
                v73 = v81;
              }

              else
              {
                v74 += 2;
              }

              v75 = v78;
            }

            while ((APComponent::Key::sortCompare((*v74 + 36), (v77 + 36), 1) & 0x80000000) == 0);
            v82 = v78[1];
            *v78 = v119;
            if (v82)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v82);
            }
          }
        }

        v71 = v72 - 1;
      }

      while (v72);
      v83 = v117;
      while (2)
      {
        v84 = 0;
        v85 = v83;
        v86 = *a1;
        v120 = a1[1];
        *a1 = 0;
        a1[1] = 0;
        v87 = a1;
        do
        {
          v88 = &v87[2 * v84];
          v89 = (v88 + 2);
          v90 = (2 * v84) | 1;
          v84 = 2 * v84 + 2;
          if (v84 >= v9)
          {
            v84 = v90;
          }

          else
          {
            v92 = v88[4];
            v91 = (v88 + 4);
            if (APComponent::Key::sortCompare((*(v91 - 2) + 36), (v92 + 36), 1) >= 0)
            {
              v84 = v90;
            }

            else
            {
              v89 = v91;
            }
          }

          v93 = *v89;
          *v89 = 0;
          *(v89 + 1) = 0;
          v94 = v87[1];
          *v87 = v93;
          if (v94)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v94);
          }

          v87 = v89;
        }

        while (v84 <= ((v9 - 2) >> 1));
        v83 = v85 - 2;
        if (v89 == (v85 - 2))
        {
          v108 = *(v89 + 1);
          *v89 = v86;
          *(v89 + 1) = v120;
          if (!v108)
          {
            goto LABEL_140;
          }
        }

        else
        {
          v95 = *(v85 - 1);
          *v83 = 0;
          *(v85 - 1) = 0;
          v96 = *(v89 + 1);
          *v89 = v95;
          if (v96)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v96);
          }

          v97 = *(v85 - 1);
          *(v85 - 2) = v86;
          *(v85 - 1) = v120;
          if (v97)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v97);
          }

          v98 = (v89 + 16 - a1) >> 4;
          v99 = v98 < 2;
          v100 = v98 - 2;
          if (v99)
          {
            goto LABEL_140;
          }

          v101 = v100 >> 1;
          v102 = &a1[2 * (v100 >> 1)];
          if ((APComponent::Key::sortCompare((*v102 + 36), (*v89 + 36), 1) & 0x80000000) == 0)
          {
            goto LABEL_140;
          }

          v103 = *v89;
          v104 = *(v89 + 1);
          *v89 = 0;
          *(v89 + 1) = 0;
          do
          {
            v105 = v102;
            v106 = *v102;
            *v102 = 0;
            v102[1] = 0;
            v107 = *(v89 + 1);
            *v89 = v106;
            if (v107)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v107);
            }

            if (!v101)
            {
              break;
            }

            v101 = (v101 - 1) >> 1;
            v102 = &a1[2 * v101];
            v89 = v105;
          }

          while ((APComponent::Key::sortCompare((*v102 + 36), (v103 + 36), 1) & 0x80000000) != 0);
          v108 = v105[1];
          *v105 = v103;
          v105[1] = v104;
          if (!v108)
          {
LABEL_140:
            v99 = v9-- <= 2;
            if (v99)
            {
              return;
            }

            continue;
          }
        }

        break;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v108);
      goto LABEL_140;
    }

    v11 = v9 >> 1;
    v12 = &a1[2 * (v9 >> 1)];
    if (v9 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(&a1[2 * (v9 >> 1)], a1, v118);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, &a1[2 * (v9 >> 1)], v118);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1 + 2, v12 - 2, a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1 + 4, &a1[2 * v11 + 2], a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(v12 - 2, &a1[2 * (v9 >> 1)], &a1[2 * v11 + 2]);
      v13 = *a1;
      *a1 = *v12;
      *v12 = v13;
    }

    --a3;
    if ((a4 & 1) != 0 || (APComponent::Key::sortCompare((*(a1 - 2) + 36), (*a1 + 36), 1) & 0x80000000) != 0)
    {
      v15 = *a1;
      v14 = a1[1];
      v16 = a1;
      *a1 = 0;
      a1[1] = 0;
      do
      {
        v17 = v16[2];
        v16 += 2;
      }

      while ((APComponent::Key::sortCompare((v17 + 36), (v15 + 36), 1) & 0x80000000) != 0);
      v18 = a2;
      if (v16 - 2 == a1)
      {
        v18 = a2;
        do
        {
          if (v16 >= v18)
          {
            break;
          }

          v20 = *(v18 - 2);
          v18 -= 2;
        }

        while ((APComponent::Key::sortCompare((v20 + 36), (v15 + 36), 1) & 0x80000000) == 0);
      }

      else
      {
        do
        {
          v19 = *(v18 - 2);
          v18 -= 2;
        }

        while ((APComponent::Key::sortCompare((v19 + 36), (v15 + 36), 1) & 0x80000000) == 0);
      }

      v8 = v16;
      if (v16 < v18)
      {
        v21 = v18;
        do
        {
          v22 = *v8;
          *v8 = *v21;
          *v21 = v22;
          v23 = v8[1];
          v8[1] = v21[1];
          v21[1] = v23;
          do
          {
            v24 = v8[2];
            v8 += 2;
          }

          while ((APComponent::Key::sortCompare((v24 + 36), (v15 + 36), 1) & 0x80000000) != 0);
          do
          {
            v25 = *(v21 - 2);
            v21 -= 2;
          }

          while ((APComponent::Key::sortCompare((v25 + 36), (v15 + 36), 1) & 0x80000000) == 0);
        }

        while (v8 < v21);
      }

      v26 = v8 - 2;
      if (v8 - 2 != a1)
      {
        v27 = *v26;
        *v26 = 0;
        *(v8 - 1) = 0;
        v28 = a1[1];
        *a1 = v27;
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }
      }

      v29 = *(v8 - 1);
      *(v8 - 2) = v15;
      *(v8 - 1) = v14;
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      if (v16 < v18)
      {
        goto LABEL_38;
      }

      v30 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *>(a1, v8 - 2);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *>(v8, a2))
      {
        a2 = v8 - 2;
        if (v30)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v30)
      {
LABEL_38:
        std::__introsort<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,false>(a1, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v32 = *a1;
      v31 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      if ((APComponent::Key::sortCompare((v32 + 36), (*v118 + 36), 1) & 0x80000000) != 0)
      {
        v8 = a1;
        do
        {
          v36 = v8[2];
          v8 += 2;
        }

        while ((APComponent::Key::sortCompare((v32 + 36), (v36 + 36), 1) & 0x80000000) == 0);
      }

      else
      {
        v33 = a1 + 2;
        do
        {
          v8 = v33;
          if (v33 >= a2)
          {
            break;
          }

          v34 = *v33;
          v35 = APComponent::Key::sortCompare((v32 + 36), (*v8 + 36), 1);
          v33 = v8 + 2;
        }

        while ((v35 & 0x80000000) == 0);
      }

      v37 = a2;
      if (v8 < a2)
      {
        v37 = a2;
        do
        {
          v38 = *(v37 - 2);
          v37 -= 2;
        }

        while ((APComponent::Key::sortCompare((v32 + 36), (v38 + 36), 1) & 0x80000000) != 0);
      }

      while (v8 < v37)
      {
        v39 = *v8;
        *v8 = *v37;
        *v37 = v39;
        v40 = v8[1];
        v8[1] = v37[1];
        v37[1] = v40;
        do
        {
          v41 = v8[2];
          v8 += 2;
        }

        while ((APComponent::Key::sortCompare((v32 + 36), (v41 + 36), 1) & 0x80000000) == 0);
        do
        {
          v42 = *(v37 - 2);
          v37 -= 2;
        }

        while ((APComponent::Key::sortCompare((v32 + 36), (v42 + 36), 1) & 0x80000000) != 0);
      }

      v43 = v8 - 2;
      if (v8 - 2 != a1)
      {
        v44 = *v43;
        *v43 = 0;
        *(v8 - 1) = 0;
        v45 = a1[1];
        *a1 = v44;
        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }
      }

      a4 = 0;
      v46 = *(v8 - 1);
      *(v8 - 2) = v32;
      *(v8 - 1) = v31;
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
        a4 = 0;
      }
    }
  }

  v55 = a1 + 2;
  v57 = a1 == a2 || v55 == a2;
  if (a4)
  {
    if (!v57)
    {
      v58 = 0;
      v59 = a1;
      do
      {
        v60 = v59;
        v59 = v55;
        if ((APComponent::Key::sortCompare((v60[2] + 36), (*v60 + 36), 1) & 0x80000000) != 0)
        {
          v61 = *v59;
          v62 = v60[3];
          v63 = v58;
          *v59 = 0;
          v59[1] = 0;
          while (1)
          {
            v64 = a1 + v63;
            v65 = *(a1 + v63);
            *v64 = 0;
            *(v64 + 1) = 0;
            v66 = *(a1 + v63 + 24);
            *(v64 + 1) = v65;
            if (v66)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v66);
            }

            if (!v63)
            {
              break;
            }

            v67 = APComponent::Key::sortCompare((v61 + 36), (*(a1 + v63 - 16) + 36), 1);
            v63 -= 16;
            if ((v67 & 0x80000000) == 0)
            {
              v68 = (a1 + v63 + 16);
              goto LABEL_90;
            }
          }

          v68 = a1;
LABEL_90:
          v69 = v68[1];
          *v68 = v61;
          v68[1] = v62;
          if (v69)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v69);
          }
        }

        v55 = v59 + 2;
        v58 += 16;
      }

      while (v59 + 2 != a2);
    }
  }

  else if (!v57)
  {
    do
    {
      v109 = a1;
      a1 = v55;
      if ((APComponent::Key::sortCompare((v109[2] + 36), (*v109 + 36), 1) & 0x80000000) != 0)
      {
        v110 = *a1;
        v111 = v109[3];
        v112 = a1;
        *a1 = 0;
        a1[1] = 0;
        do
        {
          v113 = *(v112 - 1);
          *(v112 - 2) = 0;
          *(v112 - 1) = 0;
          v114 = v112[1];
          *v112 = v113;
          if (v114)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v114);
          }

          v115 = APComponent::Key::sortCompare((v110 + 36), (*(v112 - 4) + 36), 1);
          v112 -= 2;
        }

        while (v115 < 0);
        v116 = v112[1];
        *v112 = v110;
        v112[1] = v111;
        if (v116)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v116);
        }
      }

      v55 = a1 + 2;
    }

    while (a1 + 2 != a2);
  }
}

void sub_18F60A958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = APComponent::Key::sortCompare((*a2 + 36), (*a1 + 36), 1);
  result = APComponent::Key::sortCompare((*a3 + 36), (*a2 + 36), 1);
  if (v6 < 0)
  {
    v13 = *a1;
    if ((result & 0x80000000) != 0)
    {
      *a1 = *a3;
      *a3 = v13;
      v17 = a3 + 1;
      v12 = a1 + 1;
    }

    else
    {
      *a1 = *a2;
      v14 = a2[1];
      *a2 = v13;
      v15 = a1[1];
      a1[1] = v14;
      a2[1] = v15;
      result = APComponent::Key::sortCompare((*a3 + 36), (*a2 + 36), 1);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = a3 + 1;
      v12 = a2 + 1;
    }

    v10 = v17;
    goto LABEL_10;
  }

  if ((result & 0x80000000) != 0)
  {
    v8 = *a2;
    *a2 = *a3;
    *a3 = v8;
    v10 = a2 + 1;
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    result = APComponent::Key::sortCompare((*a2 + 36), (*a1 + 36), 1);
    if ((result & 0x80000000) != 0)
    {
      v11 = *a1;
      *a1 = *a2;
      v12 = a1 + 1;
      *a2 = v11;
LABEL_10:
      v18 = *v12;
      *v12 = *v10;
      *v10 = v18;
    }
  }

  return result;
}

uint64_t std::__function::__func<AudioComponentMgr_RegistrarService::mergeServerRegistrations(AudioComponentVector &,BOOL,NSData *,NSArray *)::$_1,std::allocator<AudioComponentMgr_RegistrarService::mergeServerRegistrations(AudioComponentVector &,BOOL,NSData *,NSArray *)::$_1>,BOOL ()(APComponent &)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2 == 1)
  {
    v5 = *(a1 + 8);
    v6 = *(a2 + 36);
    *(v5 + 12) = *(a2 + 48);
    *v5 = v6;
  }

  else if (v2 == 4)
  {
    v3 = *(a1 + 8);
    if (*(a2 + 36) == *v3 && *(a2 + 40) == v3[1] && *(a2 + 44) == v3[2])
    {
      return 0;
    }
  }

  return 1;
}

void AudioComponentVector::subtract(AudioComponentVector *this, AudioComponentVector *a2, AudioComponentVector *a3)
{
  AudioComponentVector::sort(a2);
  AudioComponentVector::sort(a3);
  begin = a2->__begin_;
  end = a2->__end_;
  this->__end_ = 0;
  this->__cap_ = 0;
  this->__begin_ = 0;
  v23 = this;
  LOBYTE(v24) = 0;
  if (end != begin)
  {
    std::vector<std::shared_ptr<APComponent>>::__vallocate[abi:ne200100](this, (end - begin) >> 4);
  }

  this->mSorted = 1;
  v8 = a3->__begin_;
  v9 = a3->__end_;
  v23 = v8;
  v22 = 0;
  std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<APComponent> *,std::shared_ptr<APComponent> *,std::shared_ptr<APComponent> *>(begin, end, 0);
  v10 = this->__begin_;
  v11 = this->__end_;
  v13 = v12 - this->__begin_;
  v14 = v13 >> 4;
  v15 = (v11 - this->__begin_) >> 4;
  if (v13 >> 4 <= v15)
  {
    if (v14 < v15)
    {
      v20 = &v10[v13];
      while (v11 != v20)
      {
        v21 = *(v11 - 1);
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        v11 -= 16;
      }

      this->__end_ = v20;
    }
  }

  else
  {
    v16 = v14 - v15;
    cap = this->__cap_;
    if (v14 - v15 > (cap - v11) >> 4)
    {
      if (!(v14 >> 60))
      {
        v25 = this;
        v18 = cap - v10;
        if (v18 >> 3 > v14)
        {
          v14 = v18 >> 3;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF0)
        {
          v19 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v14;
        }

        std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](v19);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 16 * v16);
    this->__end_ = &v11[16 * v16];
  }
}

void sub_18F60ADD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<APComponent> *,std::shared_ptr<APComponent> *,std::shared_ptr<APComponent> *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v4 += 2;
      a3 += 2;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void AudioComponentMgr_Base::addAndRemoveComponents(char **this, const AudioComponentVector *a2, const AudioComponentVector *a3, const AudioComponentVector *a4)
{
  if (a3 != a4)
  {
    v7 = a3;
    do
    {
      SortedPosition = AudioComponentVector::findSortedPosition(this[2], this[3], (v7->__begin_ + 36));
      v9 = this[3];
      if (v9 != SortedPosition)
      {
        v10 = SortedPosition;
        v11 = *SortedPosition;
        begin = v7->__begin_;
        if (*(*SortedPosition + 36) == *(v7->__begin_ + 9) && v11[10] == begin[10] && v11[11] == begin[11] && v11[14] == begin[14])
        {
          v13 = *(SortedPosition + 1);
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            v9 = this[3];
          }

          if (SortedPosition + 16 == v9)
          {
            v16 = SortedPosition;
          }

          else
          {
            do
            {
              v14 = *(v10 + 1);
              *(v10 + 2) = 0;
              *(v10 + 3) = 0;
              v15 = *(v10 + 1);
              *v10 = v14;
              if (v15)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v15);
              }

              v16 = v10 + 16;
              v17 = v10 + 32;
              v10 += 16;
            }

            while (v17 != v9);
            v9 = this[3];
          }

          while (v9 != v16)
          {
            v18 = *(v9 - 1);
            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            }

            v9 -= 16;
          }

          this[3] = v16;
          (*(*this + 13))(this, v11);
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }
        }
      }

      v7 = (v7 + 16);
    }

    while (v7 != a4);
  }

  v20 = a2->__begin_;
  end = a2->__end_;
  while (v20 != end)
  {
    AudioComponentMgr_Base::_addComponent(this, v20);
    v20 += 16;
  }

  v21 = this + 1;
  v22 = this[2];
  v23 = this[3];
  while (v22 != v23)
  {
    v24 = *v22;
    v22 += 16;
    *v21 = v24;
    v21 = (v24 + 24);
  }

  *v21 = 0;
}

void sub_18F60B038(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

acv2::CodecConverterFactory *acv2::CodecConverterFactory::CodecConverterFactory(acv2::CodecConverterFactory *this, int a2, int a3, OpaqueAudioComponent *a4, AudioComponentDescription *a5, CFTypeRef cf)
{
  componentManufacturer = a5->componentManufacturer;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 2) = *&a5->componentType;
  *(this + 6) = componentManufacturer;
  *this = &unk_1F032FE48;
  *(this + 4) = a4;
  if (cf)
  {
    CFRetain(cf);
    *(this + 5) = cf;
    v9 = CFGetTypeID(cf);
    if (v9 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *(this + 5) = 0;
  }

  *(this + 48) = 0;
  *(this + 52) = 0;
  *(this + 56) = 0;
  *(this + 60) = 0;
  *(this + 64) = 0;
  *(this + 68) = 0;
  *(this + 72) = 0;
  return this;
}

void sub_18F60B140(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v1 + 40));
  _Unwind_Resume(a1);
}

uint64_t acv2::CodecConverterFactory::GetAvailableEncodeSampleRatesInfo(AudioComponent *this, unsigned int *a2)
{
  outInstance = 0;
  PropertyInfo = AudioComponentInstanceNew(this[4], &outInstance);
  if (!PropertyInfo)
  {
    outWritable = 0;
    PropertyInfo = AudioCodecGetPropertyInfo(outInstance, 0x616F7372u, a2, &outWritable);
    AudioComponentInstanceDispose(outInstance);
  }

  return PropertyInfo;
}

uint64_t acv2::ConverterRegistry::GetAvailableEncodeSampleRates(acv2::ConverterRegistry *this, unsigned int a2, unsigned int *a3, unsigned int *a4, void *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  FactoryBySpecifier = acv2::ConverterRegistry::FindFactoryBySpecifier(this, a2, a3);
  if (FactoryBySpecifier)
  {
    v6 = *(*FactoryBySpecifier + 96);
    v7 = *MEMORY[0x1E69E9840];

    return v6();
  }

  else
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v9 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "ConverterFactory.cpp";
      v13 = 1024;
      v14 = 613;
      _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to find converter that supports given format for encode sample rates", &v11, 0x12u);
    }

    v10 = *MEMORY[0x1E69E9840];
    return 1718449215;
  }
}

uint64_t acv2::CodecConverterFactory::GetAvailableEncodeSampleRates(AudioComponent *this, unsigned int *a2, void *a3)
{
  outInstance = 0;
  Property = AudioComponentInstanceNew(this[4], &outInstance);
  if (!Property)
  {
    Property = AudioCodecGetProperty(outInstance, 0x616F7372u, a2, a3);
    AudioComponentInstanceDispose(outInstance);
  }

  return Property;
}

float DSPGraph::Graph::getParameter(DSPGraph::Graph *this, unsigned int a2)
{
  v2 = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>(this + 65, a2);
  if (!v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v10, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v9, "getParameter : inParamID not found");
    DSPGraph::ThrowException(1852204065, &v11, 2399, &v10, &v9);
  }

  if (*(v2 + 32) != 1)
  {
    return *(v2 + 7);
  }

  v3 = v2[5];
  if (v2[6] == v3)
  {
    return *(v2 + 7);
  }

  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = *(**v3 + 88);

  v7();
  return result;
}

void sub_18F60B48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *DSPGraph::Graph::setParameter(DSPGraph::Graph *this, unsigned int a2, float a3)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>(this + 65, a2);
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(&v9, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v8, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v7, "setParameter : inParamID not found");
    DSPGraph::ThrowException(1852204065, &v9, 2385, &v8, &v7);
  }

  *(result + 7) = a3;
  v5 = result[5];
  v6 = result[6];
  while (v5 != v6)
  {
    result = (*(**v5 + 80))(*v5, v5[2], v5[3], v5[4], 0, a3);
    v5 += 6;
  }

  return result;
}

void sub_18F60B5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::AUBox::setParameter(AudioUnit *this, AudioUnitParameterID a2, AudioUnitScope a3, AudioUnitElement a4, AudioUnitParameterValue a5, UInt32 a6)
{
  result = AudioUnitSetParameter(this[106], a2, a3, a4, a5, a6);
  if (result)
  {
    v11 = result;
    std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v13, "AudioUnitSetParameter");
    DSPGraph::ThrowException(v11, &v12, 1702, &v14, &v13);
  }

  if (*(this[1] + 767) == 1)
  {
    memset(&v12, 0, sizeof(v12));
    v12.mArgument.mParameter.mAudioUnit = this[106];
    *&v12.mArgument.mProperty.mPropertyID = __PAIR64__(a3, a2);
    v12.mArgument.mParameter.mElement = a4;
    return AUEventListenerNotify(0, 0, &v12);
  }

  return result;
}

void sub_18F60B6D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *Float32ToNativeInt16Scaled_ARM(_OWORD *result, __n128 *a2, unsigned int a3, float a4, int32x4_t a5)
{
  if (a3 >= 8)
  {
    v5 = a3 >> 3;
    do
    {
      v6 = *result;
      v7 = *(result + 1);
      result += 2;
      a5 = vqmovn_high_s32(vqmovn_s32(vcvtaq_s32_f32(vmulq_n_f32(v6, a4))), vcvtaq_s32_f32(vmulq_n_f32(v7, a4)));
      *a2++ = a5;
      --v5;
    }

    while (v5);
  }

  v8 = a3 & 7;
  if ((a3 & 7) != 0)
  {
    do
    {
      v9 = *result;
      result = (result + 4);
      a5.i32[0] = llroundf(v9 * a4);
      *a5.i8 = vqmovn_s32(a5);
      a2->n128_u16[0] = a5.i16[0];
      a2 = (a2 + 2);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t TDeinterleaver_SIMD<PCMSInt32_SIMD>::Deinterleave(unint64_t result, char *a2, void **a3, int a4)
{
  if (!result)
  {
    return result;
  }

  if (result == 1)
  {
    v5 = *a3;

    return memcpy(v5, a2, 4 * a4);
  }

  v6 = 0;
  v7 = a4 + 3;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 + 3;
  }

  v9 = v8 >> 2;
  v10 = result;
  v11 = 2 * result;
  v12 = 4 * result;
  while (result >= 8)
  {
    v13 = &a2[4 * v6];
    v14 = &a3[v6];
    v15 = *v14;
    v16 = v14[1];
    v18 = v14[2];
    v17 = v14[3];
    v19 = v14[4];
    v20 = v14[5];
    v21 = v14[6];
    v22 = v14[7];
    if (v7 >= 7)
    {
      v23 = 0;
      v24 = v9;
      do
      {
        v25 = v13;
        v26 = *v13;
        v27 = v13[1];
        v28 = (v13 + v12);
        v29 = *v28;
        v30 = v28[1];
        v31 = &v28->i8[v12];
        v32 = *v31;
        v33 = *(v31 + 1);
        v34 = &v31[v12];
        *&v35 = vzip1q_s32(v26, v29).u64[0];
        DWORD2(v35) = v32;
        HIDWORD(v35) = *v34;
        *&v36 = vtrn2q_s32(v26, v29).u64[0];
        DWORD2(v36) = DWORD1(v32);
        HIDWORD(v36) = HIDWORD(*v34);
        *&v37 = vzip2q_s32(v26, v29).u64[0];
        DWORD2(v37) = DWORD2(v32);
        HIDWORD(v37) = *(v34 + 1);
        v26.i64[0] = vuzp2q_s32(vuzp2q_s32(v26, v29), v26).u64[0];
        v26.i32[2] = HIDWORD(v32);
        v26.i32[3] = HIDWORD(*v34);
        v29.i64[0] = vzip1q_s32(v27, v30).u64[0];
        v29.i32[2] = v33;
        v29.i32[3] = *(v34 + 1);
        *&v32 = vtrn2q_s32(v27, v30).u64[0];
        DWORD2(v32) = DWORD1(v33);
        HIDWORD(v32) = HIDWORD(*(v34 + 2));
        *&v38 = vzip2q_s32(v27, v30).u64[0];
        DWORD2(v38) = DWORD2(v33);
        HIDWORD(v38) = *(v34 + 3);
        v27.i64[0] = vuzp2q_s32(vuzp2q_s32(v27, v30), v27).u64[0];
        v27.i64[1] = __PAIR64__(HIDWORD(*(v34 + 1)), HIDWORD(v33));
        *&v15[v23] = v35;
        *&v16[v23] = v36;
        *&v18[v23] = v37;
        *&v17[v23] = v26;
        *&v19[v23] = v29;
        *&v20[v23] = v32;
        *&v21[v23] = v38;
        *&v22[v23] = v27;
        v23 += 4;
        v13 = &v34[v12];
        --v24;
      }

      while (v24);
      v13 = &v25[v11 / 2];
      v15 = (v15 + v23 * 4);
      v16 = (v16 + v23 * 4);
      v18 = (v18 + v23 * 4);
      v17 = (v17 + v23 * 4);
      v19 = (v19 + v23 * 4);
      v20 = (v20 + v23 * 4);
      v21 = (v21 + v23 * 4);
      v22 = (v22 + v23 * 4);
    }

    if ((a4 & 3) != 0)
    {
      v39 = v13 + 1;
      v40 = a4 & 3;
      do
      {
        v41 = v39[-1];
        v42 = *v39;
        *v15++ = v41.i32[0];
        *v16++ = v41.i32[1];
        *v18++ = v41.i32[2];
        *v17++ = v41.i32[3];
        *v19++ = v42.i32[0];
        *v20++ = v42.i32[1];
        *v21++ = v42.i32[2];
        *v22++ = v42.i32[3];
        v39 = (v39 + v12);
        --v40;
      }

      while (v40);
    }

    v43 = -8;
    v44 = 8;
LABEL_34:
    v6 += v44;
    result = (result + v43);
    if (!result)
    {
      return result;
    }
  }

  if (result >= 4)
  {
    v45 = &a2[4 * v6];
    v46 = &a3[v6];
    v47 = *v46;
    v48 = v46[1];
    v50 = v46[2];
    v49 = v46[3];
    if (v7 >= 7)
    {
      v51 = 0;
      v52 = v9;
      do
      {
        v53 = v45;
        v54 = *v45;
        v55 = (v45 + v12);
        v56 = *v55;
        v57 = &v55->i8[v12];
        v58 = *v57;
        v59 = &v57[v12];
        *&v60 = vzip1q_s32(v54, v56).u64[0];
        DWORD2(v60) = v58;
        HIDWORD(v60) = *v59;
        *&v61 = vtrn2q_s32(v54, v56).u64[0];
        DWORD2(v61) = DWORD1(v58);
        HIDWORD(v61) = HIDWORD(*v59);
        *&v62 = vzip2q_s32(v54, v56).u64[0];
        DWORD2(v62) = DWORD2(v58);
        HIDWORD(v62) = *(v59 + 1);
        v54.i64[0] = vuzp2q_s32(vuzp2q_s32(v54, v56), v54).u64[0];
        v54.i32[2] = HIDWORD(v58);
        v54.i32[3] = HIDWORD(*v59);
        *&v47[v51] = v60;
        *&v48[v51] = v61;
        *&v50[v51] = v62;
        *&v49[v51] = v54;
        v51 += 4;
        v45 = &v59[v12];
        --v52;
      }

      while (v52);
      v45 = &v53[v11 / 2];
      v49 = (v49 + v51 * 4);
      v50 = (v50 + v51 * 4);
      v48 = (v48 + v51 * 4);
      v47 = (v47 + v51 * 4);
    }

    v63 = a4 & 3;
    if ((a4 & 3) != 0)
    {
      do
      {
        v64 = *v45;
        *v47++ = *v45;
        *v48++ = v64.i32[1];
        *v50++ = v64.i32[2];
        *v49++ = v64.i32[3];
        v45 = (v45 + v12);
        --v63;
      }

      while (v63);
    }

    v43 = -4;
    v44 = 4;
    goto LABEL_34;
  }

  if (result >= 2)
  {
    v65 = &a2[4 * v6];
    v66 = &a3[v6];
    v67 = *v66;
    v68 = v66[1];
    v69 = v9;
    if (v7 >= 7)
    {
      do
      {
        v70 = v65;
        v71 = *v65;
        v72 = (v65 + v12);
        v73 = *v72;
        v74 = (v72 + v12);
        v75 = *v74;
        v76 = (v74 + v12);
        *&v77 = vzip1_s32(v71, v73);
        DWORD2(v77) = v75.i32[0];
        HIDWORD(v77) = *v76;
        *&v78 = vzip2_s32(v71, v73);
        DWORD2(v78) = vdup_lane_s32(v75, 1).u32[0];
        HIDWORD(v78) = HIDWORD(*v76);
        *v67++ = v77;
        *v68++ = v78;
        v65 = (v76 + v12);
        --v69;
      }

      while (v69);
      v65 = &v70[v11];
    }

    v79 = a4 & 3;
    if ((a4 & 3) != 0)
    {
      do
      {
        v80 = *v65;
        *v67 = *v65;
        v67 = (v67 + 4);
        *v68 = v80.i32[1];
        v68 = (v68 + 4);
        v65 = (v65 + v12);
        --v79;
      }

      while (v79);
    }

    v43 = -2;
    v44 = 2;
    goto LABEL_34;
  }

  if (a4)
  {
    v81 = a3[v6];
    v82 = 4 * v10;
    v83 = &a2[4 * v6];
    do
    {
      *v81++ = *v83;
      v83 += v82;
      --a4;
    }

    while (a4);
  }

  return result;
}

void ___ZN22AudioComponentMgr_Base41postLocalRegistrationsChangedNotificationEv_block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"com.apple.coreaudio.AudioComponentLocalRegistrationsChanged", 0, 0, 1u);
}

uint64_t acv2::BlockCopyConverter::GetProperty(acv2::BlockCopyConverter *this, int a2, unsigned int *a3, int *a4)
{
  v5 = 1;
  result = 1886547824;
  if (a2 <= 1836016242)
  {
    if (a2 == 1667850867 || a2 == 1668244083)
    {
      return 0;
    }

    if (a2 != 1835623027)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (a2 > 2020175986)
  {
    if (a2 == 2020175987)
    {
      v5 = *(this + 8);
      goto LABEL_14;
    }

    if (a2 == 2020569203)
    {
      v5 = *(this + 18);
      goto LABEL_14;
    }

    return result;
  }

  if (a2 == 1836016243)
  {
LABEL_14:
    *a4 = v5;
    return 0;
  }

  if (a2 == 2020172403)
  {
    v5 = -1;
    goto LABEL_14;
  }

  return result;
}

void acv2::BlockCopyConverter::~BlockCopyConverter(acv2::BlockCopyConverter *this)
{
  acv2::AudioConverterBase::~AudioConverterBase(this);

  JUMPOUT(0x193ADF220);
}

uint64_t acv2::BlockCopyConverter::ProduceOutput(uint64_t a1, unsigned int *a2, unsigned __int8 a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 1869627199;
  }

  if (!*(a1 + 32))
  {
    std::terminate();
  }

  acv2::AudioConverterChain::ObtainInput(v13, v4, a1, a2[1], a3);
  if (v14)
  {
    v7 = v13[0];
    v6 = v13[1];
    if (a2[1] >= *v13[0])
    {
      v8 = *v13[0];
    }

    else
    {
      v8 = a2[1];
    }

    v9 = ACBaseAudioSpan::append(a2, v13[0], v8, *(a1 + 72));
    v10 = HIDWORD(v9);
    if (HIDWORD(v9))
    {
      v9 = acv2::AudioConverterChain::ConsumedInput(*(a1 + 8), *v7, v6, v8);
      v10 = HIDWORD(v9);
      if (HIDWORD(v9))
      {
        v11 = 0;
        LOBYTE(v9) = v8 != 0;
        v10 = 0x100000000;
      }

      else
      {
        v11 = v9 & 0xFFFFFF00;
      }

      return v10 | v11 | v9;
    }
  }

  else
  {
    v10 = 0;
    LODWORD(v9) = v13[0];
  }

  v11 = v9 & 0xFFFFFF00;
  return v10 | v11 | v9;
}

uint64_t ACBaseAudioSpan::append(ACBaseAudioSpan *this, const ACBaseAudioSpan *a2, unsigned int a3, int a4)
{
  if (!a3)
  {
    v21 = 0;
LABEL_30:
    v22 = 0x100000000;
    return v22 | v21;
  }

  v7 = *(this + 4);
  if (v7)
  {
    v8 = *(a2 + 4);
    if (v8)
    {
      v9 = *(this + 2);
      if (*v9 != 1)
      {
        std::terminate();
      }

      v10 = v7 + 16 * *this;
      v11 = *(*(a2 + 2) + 16);
      v12 = *(this + 2);
      v13 = (*(v9 + 16) + v12);
      v14 = (v8 + 8);
      v15 = a3;
      do
      {
        v16 = *(v14 - 1);
        *v10 = v12;
        v17 = *v14;
        v18 = v14[1];
        v14 += 4;
        *(v10 + 8) = v17;
        *(v10 + 12) = v18;
        memmove(v13, (v11 + v16), v18);
        LODWORD(v12) = *(this + 2) + v18;
        *(this + 2) = v12;
        v13 += v18;
        v10 += 16;
        --v15;
      }

      while (v15);
LABEL_26:
      v36 = *(this + 5);
      if (v36)
      {
        v37 = *(a2 + 5);
        if (v37)
        {
          memmove((v36 + 16 * *this), v37, 16 * a3);
        }
      }

      v21 = 2003329280;
      *this += a3;
      goto LABEL_30;
    }
  }

  Packets = ACBaseAudioSpan::sizeOfFirstPackets(a2, a3, a4);
  v20 = Packets;
  if (HIDWORD(Packets))
  {
    if (*(this + 3) < Packets)
    {
      v23 = _os_log_pack_size();
      message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v23 + 88, 16);
      if (message)
      {
        v25 = message;
        v26 = _os_log_pack_fill();
        v27 = *(this + 3);
        v28 = *this;
        *v26 = 67109632;
        *(v26 + 4) = a3;
        *(v26 + 8) = 1024;
        *(v26 + 10) = v27;
        *(v26 + 14) = 1024;
        *(v26 + 16) = v28;
        caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v25);
      }

      v20 = *(this + 3);
    }

    v29 = **(this + 2);
    if (v29 == **(a2 + 2))
    {
      if (v29)
      {
        v30 = 0;
        v31 = 16;
        do
        {
          v32 = *(*(a2 + 2) + v31);
          v33 = *(*(this + 2) + v31);
          v34 = v33 + *(this + 2);
          if (v32 != v34)
          {
            if (v32)
            {
              v35 = v33 == 0;
            }

            else
            {
              v35 = 1;
            }

            if (v35)
            {
              v21 = 2003329280;
              v39 = _os_log_pack_size();
              v40 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v39 + 88, 17);
              if (v40)
              {
                v41 = v40;
                v42 = _os_log_pack_fill();
                *v42 = 67109632;
                *(v42 + 4) = v30;
                *(v42 + 8) = 2048;
                *(v42 + 10) = v32;
                *(v42 + 18) = 2048;
                *(v42 + 20) = v34;
                v43 = *(gAudioConverterDeferredLog + 16);
                v44 = v41;
                goto LABEL_34;
              }

              goto LABEL_35;
            }

            memmove((v33 + *(this + 2)), *(*(a2 + 2) + v31), v20);
          }

          ++v30;
          v31 += 16;
        }

        while (v29 != v30);
      }

      *(this + 2) += v20;
      goto LABEL_26;
    }

    v21 = 2003329280;
    v45 = _os_log_pack_size();
    v46 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v45 + 88, 17);
    if (v46)
    {
      v47 = v46;
      v48 = _os_log_pack_fill();
      v49 = **(a2 + 2);
      v50 = **(this + 2);
      *v48 = 67109376;
      *(v48 + 4) = v49;
      *(v48 + 8) = 1024;
      *(v48 + 10) = v50;
      v43 = *(gAudioConverterDeferredLog + 16);
      v44 = v47;
LABEL_34:
      caulk::concurrent::messenger::enqueue(v43, v44);
    }

LABEL_35:
    v22 = 116;
  }

  else
  {
    v21 = Packets & 0xFFFFFF00;
    v22 = Packets;
  }

  return v22 | v21;
}

void acv2::Reinterleaver::SetLayouts(std::vector<int> *this, const AudioChannelLayout *const *a2, const AudioChannelLayout *a3)
{
  v3 = a3;
  v4 = a2;
  memset(v33, 0, sizeof(v33));
  memset(v32, 0, sizeof(v32));
  v6 = *a2;
  if (*a2 == 0x10000)
  {
    v7 = vcnt_s8(*(a2 + 1));
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.i32[0])
    {
      goto LABEL_13;
    }
  }

  else if (v6)
  {
    if (*a2)
    {
      goto LABEL_13;
    }
  }

  else if (*(a2 + 2))
  {
    goto LABEL_13;
  }

  if (a3->mChannelLayoutTag == 0x10000)
  {
    v8 = vcnt_s8(a3->mChannelBitmap);
    v8.i16[0] = vaddlv_u8(v8);
    if (!v8.i32[0])
    {
      goto LABEL_39;
    }

    goto LABEL_13;
  }

  if (a3->mChannelLayoutTag)
  {
    if (!a3->mChannelLayoutTag)
    {
      goto LABEL_39;
    }

LABEL_13:
    if (v6 == 0x10000)
    {
      v9 = vcnt_s8(*(a2 + 1));
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.i32[0])
      {
        goto LABEL_25;
      }
    }

    else if (v6)
    {
      if (*a2)
      {
        goto LABEL_25;
      }
    }

    else if (*(a2 + 2))
    {
      goto LABEL_25;
    }

    value_high = HIDWORD(this[1].__end_cap_.__value_);
    if (value_high >= 3)
    {
      goto LABEL_55;
    }

    if (value_high == 2)
    {
      v11 = 6619138;
    }

    else
    {
      v11 = 6553601;
    }

    LODWORD(v33[0]) = v11;
    v4 = v33;
LABEL_25:
    if (a3->mChannelLayoutTag == 0x10000)
    {
      v13 = vcnt_s8(a3->mChannelBitmap);
      v13.i16[0] = vaddlv_u8(v13);
      mChannelLayoutTag = v13.i32[0];
    }

    else if (a3->mChannelLayoutTag)
    {
      mChannelLayoutTag = a3->mChannelLayoutTag;
    }

    else
    {
      mChannelLayoutTag = a3->mNumberChannelDescriptions;
    }

    end_high = HIDWORD(this[3].__end_);
    if (mChannelLayoutTag)
    {
      goto LABEL_36;
    }

    if (end_high < 3)
    {
      if (end_high == 2)
      {
        v15 = 6619138;
      }

      else
      {
        v15 = 6553601;
      }

      LODWORD(v32[0]) = v15;
      v3 = v32;
LABEL_36:
      v16.__i_ = this[8].__begin_;
      this[8].__end_ = v16.__i_;
      __x = -1;
      std::vector<int>::insert(this + 8, v16, end_high, &__x);
      __x = HIDWORD(this[3].__end_);
      AudioFormatProperty_ChannelMap(v4, v3, &__x, this[8].__begin_);
      acv2::Reinterleaver::BuildInverseChannelMap(this);
      return;
    }

LABEL_55:
    std::terminate();
  }

  if (a3->mNumberChannelDescriptions)
  {
    goto LABEL_13;
  }

LABEL_39:
  v18 = this + 8;
  v17.__i_ = this[8].__begin_;
  this[8].__end_ = v17.__i_;
  v19 = HIDWORD(this[3].__end_);
  __x = -1;
  std::vector<int>::insert(this + 8, v17, v19, &__x);
  v20 = HIDWORD(v18[-7].__end_cap_.__value_);
  v21 = HIDWORD(v18[-5].__end_);
  if (v20 == 1)
  {
    if (v21)
    {
      bzero(v18->__begin_, 4 * v21);
    }
  }

  else
  {
    if (v21 >= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      v23 = 0;
      v24 = (v22 + 3) & 0x1FFFFFFFCLL;
      v25 = vdupq_n_s64(v22 - 1);
      v26 = xmmword_18F9016B0;
      v27 = xmmword_18F9016C0;
      v28 = v18->__begin_ + 2;
      v29 = vdupq_n_s64(4uLL);
      do
      {
        v30 = vmovn_s64(vcgeq_u64(v25, v27));
        if (vuzp1_s16(v30, *v25.i8).u8[0])
        {
          *(v28 - 2) = v23;
        }

        if (vuzp1_s16(v30, *&v25).i8[2])
        {
          *(v28 - 1) = v23 + 1;
        }

        if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, *&v26))).i32[1])
        {
          *v28 = v23 + 2;
          v28[1] = v23 + 3;
        }

        v23 += 4;
        v26 = vaddq_s64(v26, v29);
        v27 = vaddq_s64(v27, v29);
        v28 += 4;
      }

      while (v24 != v23);
    }
  }
}

uint64_t acv2::Reinterleaver::SetProperty(acv2::Reinterleaver *this, int a2, size_t a3, void *__src)
{
  if (a2 != 1667788144)
  {
    return 1886547824;
  }

  if (a3 < 4)
  {
LABEL_6:
    v8 = (4 * *(this + 21));
    if (v8 >= a3)
    {
      a3 = a3;
    }

    else
    {
      a3 = v8;
    }

    memcpy(*(this + 24), __src, a3);
    *(this + 264) = memcmp(*(this + 24), *(this + 27), v8) == 0;
    acv2::Reinterleaver::BuildInverseChannelMap(this);
    return 0;
  }

  else
  {
    v5 = a3 >> 2;
    v6 = __src;
    while (1)
    {
      v7 = *v6++;
      if (v7 >= *(this + 11))
      {
        return 4294967246;
      }

      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }
}

uint64_t DSPGraph::GraphInput::preflight(DSPGraph::GraphInput *this)
{
  v2 = *(*(this + 1) + 704);
  v3 = *(*(this + 2) + 304);
  v4 = v3 * (*(*this + 672))(this);
  v5 = (v2 + v4 - 1) / v4;
  LODWORD(v2) = (*(*this + 672))(this);
  v6 = *(this + 1);
  v7 = *(v6 + 704);
  v8 = *(v6 + 720);
  v9 = *(*(this + 2) + 304);
  v10 = v9 * (*(*this + 672))(this);
  return ((v7 + v8 + v10 - 1) / v10) * (*(*this + 672))(this) - v5 * v2;
}

uint64_t DSPGraph::GraphInput::bytesPerPacket(DSPGraph::GraphInput *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v7, "out");
    v6 = (this + 32);
    if (*(this + 55) < 0)
    {
      v6 = *v6;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, v6, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 16);
}

void sub_18F60CBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GraphOutput::bytesPerPacket(DSPGraph::GraphOutput *this)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v7, "in");
    v6 = (this + 32);
    if (*(this + 55) < 0)
    {
      v6 = *v6;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v5, v6, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 16);
}

void sub_18F60CD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::Graph::processAll(DSPGraph::Graph *this)
{
  v25[0] = this + 1024;
  if (*(this + 131))
  {
    CurrentTimeInNanos = DSPGraph::details::DoTimePoint<std::function<void ()(double)>>::GetCurrentTimeInNanos();
  }

  else
  {
    CurrentTimeInNanos = 0;
  }

  v25[1] = CurrentTimeInNanos;
  v26 = this;
  atomic_store(1u, this + 464);
  v3 = *(this + 85);
  v27 = *(this + 172);
  _ZNK5caulk10concurrent26lf_read_synchronized_writeINSt3__16vectorIN8DSPGraph18RenderObserverListINS4_5GraphEE14RenderObserverENS2_9allocatorIS8_EEEEE6accessIZNS7_7callAllEPS6_jNS4_18RenderCallbackTypeEEUlRKT_E_EEvOSG_(v3, &v26);
  v4 = *(this + 24);
  v5 = *(this + 25);
  while (v4 != v5)
  {
    DSPGraph::Buffer::setByteSize(*v4, *(*v4 + 25));
    ++v4;
  }

  if (*(this + 766))
  {
    v6 = *(this + 32);
    v7 = *(this + 33);
    while (v6 != v7)
    {
      DSPGraph::IsoGroup::processAll(*v6++);
    }
  }

  else
  {
    v8 = *(this + 35);
    v9 = *(this + 36);
    while (v8 != v9)
    {
      DSPGraph::GraphInput::copyInput(*v8++);
    }

    v10 = *(this + 32);
    v11 = *(this + 33);
    while (v10 != v11)
    {
      DSPGraph::IsoGroup::processAll(*v10++);
    }

    v12 = *(this + 38);
    v13 = *(this + 39);
    while (v12 != v13)
    {
      DSPGraph::GraphOutput::copyOutput(*v12++);
    }
  }

  v14 = *(this + 85);
  v15 = *(this + 172);
  v26 = this;
  v27 = v15;
  _ZNK5caulk10concurrent26lf_read_synchronized_writeINSt3__16vectorIN8DSPGraph18RenderObserverListINS4_5GraphEE14RenderObserverENS2_9allocatorIS8_EEEEE6accessIZNS7_7callAllEPS6_jNS4_18RenderCallbackTypeEEUlRKT_E_EEvOSG_((v14 + 64), &v26);
  v16 = *(this + 124);
  v17 = *(this + 125);
  while (v16 != v17)
  {
    v18 = v16[1];
    v19 = v16[2];
    while (v18 != v19)
    {
      v20 = *v18;
      (*(*this + 48))(this, v20);
      (*(**v16 + 40))(*v16, v20);
      ++v18;
    }

    v21 = v16[4];
    v22 = v16[5];
    while (v21 != v22)
    {
      v23 = *(v21 + 1);
      LODWORD(v26) = v21[4] - v23;
      (*(*this + 72))(this, *v21, &v26, v23);
      (*(**v16 + 56))(*v16, *v21, v26, v23);
      v21 += 8;
    }

    v16 += 7;
  }

  *(this + 88) += *(this + 90);
  atomic_store(0, this + 464);
  return DSPGraph::details::DoTimePoint<std::function<void ()(double)>>::~DoTimePoint(v25);
}

void sub_18F60CFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  atomic_store(0, (v9 + 464));
  DSPGraph::details::DoTimePoint<std::function<void ()(double)>>::~DoTimePoint(&a9);
  _Unwind_Resume(a1);
}

unsigned int **DSPGraph::Buffer::setByteSize(DSPGraph::Buffer *this, unsigned int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(this + 25) < a2)
  {
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10562);
    }

    v7 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_FAULT))
    {
      v8 = *(this + 25);
      *buf = 67109376;
      v10 = a2;
      v11 = 1024;
      v12 = v8;
      _os_log_fault_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_FAULT, "DSPGraph assertion failure: DSPGraph buffer byte size %u is larger than byte capacity %u", buf, 0xEu);
    }

    snprintf(buf, 0x400uLL, "DSPGraph assertion failure: DSPGraph buffer byte size %u is larger than byte capacity %u", a2, *(this + 25));
    qword_1EAD0BBC0 = buf;
    __break(1u);
  }

  v4 = *MEMORY[0x1E69E9840];
  v5 = (this + 80);

  return DSPGraph::SimpleABL::setByteSize(v5, a2);
}

unsigned int **DSPGraph::SimpleABL::setByteSize(unsigned int **this, int a2)
{
  v2 = *this;
  if (!*this)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v12, "setByteSize");
    std::string::basic_string[abi:ne200100]<0>(&v11, "null internal ABL");
    DSPGraph::ThrowException(1768843553, &v13, 587, &v12, &v11);
  }

  v3 = *v2;
  if (v3)
  {
    v4 = (v3 + 3) & 0x1FFFFFFFCLL;
    v5 = vdupq_n_s64(v3 - 1);
    v6 = xmmword_18F9016B0;
    v7 = xmmword_18F9016C0;
    v8 = v2 + 11;
    v9 = vdupq_n_s64(4uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v5, v7));
      if (vuzp1_s16(v10, *v5.i8).u8[0])
      {
        *(v8 - 8) = a2;
      }

      if (vuzp1_s16(v10, *&v5).i8[2])
      {
        *(v8 - 4) = a2;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v6))).i32[1])
      {
        *v8 = a2;
        v8[4] = a2;
      }

      v6 = vaddq_s64(v6, v9);
      v7 = vaddq_s64(v7, v9);
      v8 += 16;
      v4 -= 4;
    }

    while (v4);
  }

  return this;
}

void sub_18F60D230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::IsoGroup::processAll(DSPGraph::IsoGroup *this)
{
  if (*(this + 66))
  {
    v2 = *(*(this + 1) + 720) + *(*(this + 1) + 704);
    v3 = *(this + 36);
    if (v2 <= v3)
    {
      if (*(this + 67) != 1)
      {
        return;
      }

      v4 = 0;
    }

    else
    {
      v4 = (v2 + ~v3 + *(this + 37)) / *(this + 37);
      if (*(this + 67) != 1)
      {
        for (; v4; LODWORD(v4) = v4 - 1)
        {
          DSPGraph::IsoGroup::process(this, *(this + 67));
          *(this + 36) += *(this + 37);
        }

        return;
      }
    }

    DSPGraph::IsoGroup::process(this, v4);
    *(this + 36) += *(this + 37) * v4;
    return;
  }

  DSPGraph::IsoGroup::process(this, 1);
}

void DSPGraph::GraphInput::process(DSPGraph::GraphInput *this, uint64_t a2, double a3, double a4)
{
  v4 = a2;
  v6 = *(this + 110);
  if (v6)
  {
    (*(*v6 + 96))(v6, a2, *(*(this + 106) + 72), *(this + 912), *(*(this + 106) + 8));
  }

  if ((*(*(this + 1) + 764) & 1) == 0)
  {
    v7 = v4 / (*(*this + 672))(this);
    if (*(*(this + 1) + 766) == 1)
    {
      v40 = *(*(this + 106) + 72);
      LOBYTE(v41) = 0;
      v8 = *(this + 11);
      if (*(this + 12) == v8)
      {
        std::string::basic_string[abi:ne200100]<0>(v43, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v42, "out");
        v33 = (this + 32);
        if (*(this + 55) < 0)
        {
          v33 = *v33;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v32, v33, (*(this + 12) - *(this + 11)) >> 5, 0, v40, v41);
      }

      v9 = *((*(*v8 + 40))(v8) + 56);
      v10 = (*(*this + 656))(this);
      DSPGraph::SimpleABL::copy(&v40, (v9 + 80), 0, 0, v10 * v7, 1);
      v11 = *(this + 11);
      if (*(this + 12) == v11)
      {
        std::string::basic_string[abi:ne200100]<0>(v43, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v42, "out");
        v37 = (this + 32);
        if (*(this + 55) < 0)
        {
          v37 = *v37;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v36, v37, (*(this + 12) - *(this + 11)) >> 5, 0, v40, v41);
      }

      v12 = *(this + 106);
      v13 = *((*(*v11 + 40))(v11) + 56);
      v14 = *(v12 + 8);
      v15 = *(v12 + 24);
      v16 = *(v12 + 40);
      *(v13 + 56) = *(v12 + 56);
      *(v13 + 40) = v16;
      *(v13 + 24) = v15;
      *(v13 + 8) = v14;
      v17 = *(this + 11);
      if (*(this + 12) == v17)
      {
        std::string::basic_string[abi:ne200100]<0>(v43, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v42, "out");
        v39 = (this + 32);
        if (*(this + 55) < 0)
        {
          v39 = *v39;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v38, v39, (*(this + 12) - *(this + 11)) >> 5, 0, v40, v41);
      }

      v18 = *(*(this + 106) + 4);
      *(*((*(*v17 + 40))(v17) + 56) + 72) = v18;
      DSPGraph::SimpleABL::free(&v40);
      return;
    }

    v19 = *(this + 11);
    if (*(this + 12) == v19)
    {
      std::string::basic_string[abi:ne200100]<0>(v43, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v42, "out");
      v35 = (this + 32);
      if (*(this + 55) < 0)
      {
        v35 = *v35;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v34, v35, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v20 = (*(*v19 + 40))(v19);
    DSPGraph::RingBuffer::read((this + 808), v7, v7, (*(v20 + 56) + 80));
  }

  v21 = *(this + 2);
  v22 = *(v21 + 256);
  if (*(this + 856) == 1)
  {
    LODWORD(a4) = *(v21 + 264);
    v23 = llround((v22 - *(this + 109)) / *&a4 * 24000000.0) + *(this + 108);
    v24 = 3;
  }

  else
  {
    v23 = 0;
    v24 = 1;
  }

  v25 = *(this + 11);
  v26 = *(this + 12);
  if (v25 != v26)
  {
    v27 = *(*(this + 106) + 4);
    v28 = v25;
    v29 = v25;
    do
    {
      v30 = *v29;
      v29 += 4;
      v31 = *((*(v30 + 40))(v28) + 56);
      *(v31 + 8) = v22;
      *(v31 + 16) = v23;
      *(v31 + 56) = 0;
      *(v31 + 40) = 0u;
      *(v31 + 24) = 0u;
      *(v31 + 64) = v24;
      *(v31 + 68) = 0;
      *(v31 + 72) = v27;
      v25 += 4;
      v28 = v29;
    }

    while (v29 != v26);
  }
}

void sub_18F60D840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  DSPGraph::SimpleABL::free(&a12);
  _Unwind_Resume(a1);
}

unsigned int **DSPGraph::SimpleABL::copy(unsigned int **this, unsigned int **a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *this;
  if (!*this)
  {
    std::string::basic_string[abi:ne200100]<0>(&v24, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v23, "copy");
    std::string::basic_string[abi:ne200100]<0>(&v22, "null internal ABL");
    DSPGraph::ThrowException(1768843553, &v24, 662, &v23, &v22);
  }

  v8 = *a2;
  if (!*a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v24, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v23, "copy");
    std::string::basic_string[abi:ne200100]<0>(&v22, "null destination ABL");
    DSPGraph::ThrowException(1768843553, &v24, 666, &v23, &v22);
  }

  v9 = this;
  if (*v6 != *v8)
  {
    std::string::basic_string[abi:ne200100]<0>(&v24, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v23, "copy");
    DSPGraph::strprintf("mABL->mNumberBuffers (%u) != toABL->mNumberBuffers (%u)", v17, **v9, *v8);
  }

  if (*v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = a5 + a3;
    v13 = a5 + a4;
    v14 = v8 + 2;
    do
    {
      if (v12 > v6[v10 + 3])
      {
        std::string::basic_string[abi:ne200100]<0>(&v24, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v23, "copy");
        DSPGraph::strprintf("fromBytePos (%u) + numBytesToCopy (%u) > mABL->mBuffers[%u].mDataByteSize (%u)", v15, a3, a5, v11, (*v9)[4 * v11 + 3]);
      }

      if (v13 > v14[1])
      {
        std::string::basic_string[abi:ne200100]<0>(&v24, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v23, "copy");
        DSPGraph::strprintf("toBytePos (%u) + numBytesToCopy (%u) > toABL->mBuffers[%u].mDataByteSize (%u)", v16, a4, a5, v11, v14[1]);
      }

      this = memmove((*(v14 + 1) + a4), (*&v6[v10 + 4] + a3), a5);
      ++v11;
      v6 = *v9;
      v14 += 4;
      v10 += 4;
    }

    while (v11 < **v9);
  }

  if (a6)
  {

    return DSPGraph::SimpleABL::setByteSize(a2, a5 + a4);
  }

  return this;
}

void sub_18F60DC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v29 - 81) < 0)
  {
    operator delete(*(v29 - 104));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::SimpleABL::free(DSPGraph::SimpleABL *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (!*this)
    {
      return;
    }

    if (*v2)
    {
      v3 = 0;
      v4 = 4;
      do
      {
        free(*&v2[v4]);
        ++v3;
        v2 = *this;
        v4 += 4;
      }

      while (v3 < **this);
    }

    free(v2);
    *(this + 8) = 0;
  }

  *this = 0;
}

void DSPGraph::AUBox::process(DSPGraph::AUBox *this, UInt32 a2)
{
  v4 = (*(*this + 64))(this);
  v5 = *(this + 8);
  v6 = *(this + 9);
  if (v4)
  {
    if (v6 == v5)
    {
      std::string::basic_string[abi:ne200100]<0>(&__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v56, "in");
      v45 = (this + 32);
      if (*(this + 55) < 0)
      {
        v45 = *v45;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v44, v45, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v7 = (*(*v5 + 40))(v5);
    v8 = *(this + 11);
    if (*(this + 12) == v8)
    {
      std::string::basic_string[abi:ne200100]<0>(&__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v56, "out");
      v49 = (this + 32);
      if (*(this + 55) < 0)
      {
        v49 = *v49;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v48, v49, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v9 = *(v7 + 56);
    v10 = (*(*v8 + 40))(v8);
    v11 = *(v10 + 56);
    if (v11 != v9)
    {
      DSPGraph::Buffer::copyFrom(*(v10 + 56), v9);
      v12 = *(v9 + 8);
      v13 = *(v9 + 24);
      v14 = *(v9 + 40);
      *(v11 + 56) = *(v9 + 56);
      *(v11 + 40) = v14;
      *(v11 + 24) = v13;
      *(v11 + 8) = v12;
      *(v11 + 72) = *(v9 + 72);
    }

    *(v11 + 8) = *(*(this + 2) + 256);
    v15 = v11 + 8;
    v16 = *(v15 + 72);
    v17 = AudioUnitProcess(*(this + 106), (v15 + 64), v15, a2, v16);
    if (v17)
    {
      v51 = v17;
      std::string::basic_string[abi:ne200100]<0>(&__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v56, "process");
      std::operator+<char>();
      DSPGraph::ThrowException(v51, &__C, 1882, &v56, &v55);
    }

    if ((*(v15 + 64) & 0x10) != 0 && v16->mNumberBuffers)
    {
      v18 = 0;
      v19 = a2;
      for (i = 16; ; i += 16)
      {
        LODWORD(__C.mSampleTime) = 0;
        vDSP_maxmgv(*(&v16->mNumberBuffers + i), 1, &__C, v19);
        if (*&__C.mSampleTime != 0.0)
        {
          break;
        }

        if (++v18 >= v16->mNumberBuffers)
        {
          return;
        }
      }

      *(v15 + 64) &= ~0x10u;
    }
  }

  else
  {
    if (v6 != v5)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        *(*(this + 97) + 8 * v22++) = *(*((*(*(v5 + v21) + 40))(v5 + v21) + 56) + 80);
        v5 = *(this + 8);
        v6 = *(this + 9);
        v21 += 32;
      }

      while (v22 < (v6 - v5) >> 5);
    }

    v23 = *(this + 11);
    if (*(this + 12) != v23)
    {
      v24 = 0;
      v25 = 0;
      do
      {
        v26 = v23 + v24;
        v27 = *((*(*(v23 + v24) + 40))(v23 + v24) + 56);
        *(*(this + 100) + 8 * v25) = *(v27 + 10);
        v28 = (*(*v26 + 40))(v26);
        DSPGraph::Buffer::setByteSize(v27, *(*(v28 + 120) + 24) * a2);
        ++v25;
        v23 = *(this + 11);
        v24 += 32;
      }

      while (v25 < (*(this + 12) - v23) >> 5);
      v5 = *(this + 8);
      v6 = *(this + 9);
    }

    if (v6 == v5)
    {
      std::string::basic_string[abi:ne200100]<0>(&__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v56, "in");
      v47 = (this + 32);
      if (*(this + 55) < 0)
      {
        v47 = *v47;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v46, v47, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v29 = *((*(*v5 + 40))(v5) + 56);
    ioActionFlags = 0;
    v30 = *(v29 + 24);
    v31 = *(v29 + 56);
    v32 = *(v29 + 8);
    *&__C.mSMPTETime.mSubframes = *(v29 + 40);
    *&__C.mSMPTETime.mHours = v31;
    *&__C.mSampleTime = v32;
    *&__C.mRateScalar = v30;
    __C.mSampleTime = *(*(this + 2) + 256);
    v33 = AudioUnitProcessMultiple(*(this + 106), &ioActionFlags, &__C, a2, (*(this + 9) - *(this + 8)) >> 5, *(this + 97), (*(this + 12) - *(this + 11)) >> 5, *(this + 100));
    if (v33)
    {
      v50 = v33;
      std::string::basic_string[abi:ne200100]<0>(&v56, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v55, "process");
      std::operator+<char>();
      DSPGraph::ThrowException(v50, &v56, 1916, &v55, &v52);
    }

    v35 = *(this + 11);
    v34 = *(this + 12);
    if (v35 != v34)
    {
      v36 = ioActionFlags;
      v37 = v35;
      v38 = v35;
      do
      {
        v39 = *v38;
        v38 += 4;
        v40 = *((*(v39 + 40))(v37) + 56);
        v42 = *&__C.mSMPTETime.mSubframes;
        v41 = *&__C.mSMPTETime.mHours;
        v43 = *&__C.mRateScalar;
        *(v40 + 8) = *&__C.mSampleTime;
        *(v40 + 24) = v43;
        *(v40 + 40) = v42;
        *(v40 + 56) = v41;
        *(v40 + 72) = v36;
        v35 += 4;
        v37 = v38;
      }

      while (v38 != v34);
    }
  }
}

void sub_18F60E2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 73) < 0)
  {
    operator delete(*(v23 - 96));
  }

  if (*(v23 - 49) < 0)
  {
    operator delete(*(v23 - 72));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::ChannelSplitterBox::process(DSPGraph::ChannelSplitterBox *this, int a2)
{
  v4 = this + 64;
  v3 = *(this + 8);
  if (*(v4 + 1) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v47, "in");
    v44 = (this + 32);
    if (*(this + 55) < 0)
    {
      v44 = *v44;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v43, v44, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(this + 8);
  if (*(this + 9) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v47, "in");
    v46 = (this + 32);
    if (*(this + 55) < 0)
    {
      v46 = *v46;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v45, v46, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = *(this + 12) - *(this + 11);
  result = (*(*v7 + 40))(v7);
  if ((v9 & 0x1FFFFFFFE0) != 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = ((4 * a2) << (*(*(result + 120) + 8) == 1718773105));
    v14 = v8 + 8;
    v15 = (v9 >> 5);
    do
    {
      v16 = *(this + 11);
      if (v11 >= (*(this + 12) - v16) >> 5)
      {
        std::string::basic_string[abi:ne200100]<0>(v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v47, "out");
        v34 = (this + 32);
        if (*(this + 55) < 0)
        {
          v34 = *v34;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v33, v34, (*(this + 12) - *(this + 11)) >> 5, v11);
      }

      v17 = *(*((*(*(v16 + 32 * v11) + 40))(v16 + 32 * v11) + 56) + 80);
      v18 = *v17;
      if (v18)
      {
        v19 = (v17 + 4);
        do
        {
          *(v19 - 1) = v13;
          v20 = *(v14 + 16 * v12 + 8);
          if (v20 != *v19)
          {
            memcpy(*v19, v20, v13);
          }

          ++v12;
          v19 += 2;
          --v18;
        }

        while (v18);
      }

      v21 = *(this + 8);
      if (*(this + 9) == v21)
      {
        std::string::basic_string[abi:ne200100]<0>(v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v47, "in");
        v36 = (this + 32);
        if (*(this + 55) < 0)
        {
          v36 = *v36;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v35, v36, (*(this + 9) - *(this + 8)) >> 5, 0);
      }

      v22 = (*(*v21 + 40))(v21);
      v23 = *(this + 11);
      if (v11 >= (*(this + 12) - v23) >> 5)
      {
        std::string::basic_string[abi:ne200100]<0>(v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v47, "out");
        v38 = (this + 32);
        if (*(this + 55) < 0)
        {
          v38 = *v38;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v37, v38, (*(this + 12) - *(this + 11)) >> 5, v11);
      }

      v24 = *(v22 + 56);
      v25 = *((*(*(v23 + 32 * v11) + 40))(v23 + 32 * v11) + 56);
      v26 = *(v24 + 8);
      v27 = *(v24 + 24);
      v28 = *(v24 + 40);
      *(v25 + 56) = *(v24 + 56);
      *(v25 + 40) = v28;
      *(v25 + 24) = v27;
      *(v25 + 8) = v26;
      v29 = *(this + 8);
      if (*(this + 9) == v29)
      {
        std::string::basic_string[abi:ne200100]<0>(v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v47, "in");
        v40 = (this + 32);
        if (*(this + 55) < 0)
        {
          v40 = *v40;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v39, v40, (*(this + 9) - *(this + 8)) >> 5, 0);
      }

      v30 = (*(*v29 + 40))(v29);
      v31 = *(this + 11);
      if (v11 >= (*(this + 12) - v31) >> 5)
      {
        std::string::basic_string[abi:ne200100]<0>(v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v47, "out");
        v42 = (this + 32);
        if (*(this + 55) < 0)
        {
          v42 = *v42;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v41, v42, (*(this + 12) - *(this + 11)) >> 5, v11);
      }

      v32 = *(*(v30 + 56) + 72);
      result = (*(*(v31 + 32 * v11) + 40))(v31 + 32 * v11);
      *(*(result + 56) + 72) = v32;
      ++v11;
    }

    while (v11 != v15);
  }

  return result;
}

void sub_18F60E914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::ChannelJoinerBox::process(DSPGraph::ChannelJoinerBox *this, unsigned int a2)
{
  v2 = this;
  v4 = this + 88;
  v3 = *(this + 11);
  if (*(v4 + 1) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v62, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v61, "out");
    v47 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v47 = *v47;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v46, v47, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(v2 + 11);
  if (*(v2 + 12) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(v62, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v61, "out");
    v49 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v49 = *v49;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v48, v49, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = *(*((*(*v7 + 40))(v7) + 120) + 8) == 1718773105;
  v10 = *(v2 + 8);
  v11 = *(v2 + 9);
  v60 = v2;
  if (((v11 - v10) & 0x1FFFFFFFE0) != 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = (4 * a2) << v9;
    v15 = (v11 - v10) >> 5;
    LOBYTE(v16) = 1;
    do
    {
      if (v15 <= v12)
      {
        std::string::basic_string[abi:ne200100]<0>(v62, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v61, "in");
        v41 = (v2 + 32);
        if (*(v2 + 55) < 0)
        {
          v41 = *v41;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v40, v41, (*(v2 + 9) - *(v2 + 8)) >> 5, v12);
      }

      v17 = (*(*(v10 + 32 * v12) + 40))(v10 + 32 * v12);
      v18 = *(v2 + 8);
      if (v12 >= (*(v2 + 9) - v18) >> 5)
      {
        std::string::basic_string[abi:ne200100]<0>(v62, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v61, "in");
        v43 = (v2 + 32);
        if (*(v2 + 55) < 0)
        {
          v43 = *v43;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v42, v43, (*(v2 + 9) - *(v2 + 8)) >> 5, v12);
      }

      v19 = *(*(v17 + 56) + 80);
      v20 = (*(*(v18 + 32 * v12) + 40))(v18 + 32 * v12);
      v21 = *(v2 + 8);
      if (v12 >= (*(v2 + 9) - v21) >> 5)
      {
        std::string::basic_string[abi:ne200100]<0>(v62, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v61, "in");
        v45 = (v2 + 32);
        if (*(v2 + 55) < 0)
        {
          v45 = *v45;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v44, v45, (*(v2 + 9) - *(v2 + 8)) >> 5, v12);
      }

      v22 = *(v20 + 120);
      v23 = *(*((*(*(v21 + 32 * v12) + 40))(v21 + 32 * v12) + 56) + 72);
      if (*(v22 + 28))
      {
        v24 = 0;
        v25 = (v19 + 16);
        v26 = &v8[4 * v13 + 4];
        do
        {
          if (v13 + v24 >= *v8)
          {
            __assert_rtn("process", "DSPGraph_Box.cpp", 3417, "outBufferIndex < outABL->mNumberBuffers");
          }

          *(v26 - 1) = v14;
          if ((v23 & 0x10) != 0)
          {
            bzero(*v26, v14);
          }

          else if (*v25 != *v26)
          {
            memcpy(*v26, *v25, v14);
          }

          ++v24;
          v25 += 2;
          v26 += 2;
        }

        while (v24 < *(v22 + 28));
        v13 = (v13 + v24);
        v2 = v60;
      }

      v16 &= (v23 & 0x10) >> 4;
      ++v12;
      v10 = *(v2 + 8);
      v11 = *(v2 + 9);
      v15 = (v11 - v10) >> 5;
    }

    while (v12 < v15);
  }

  else
  {
    LOBYTE(v16) = 1;
  }

  if (v11 == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v62, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v61, "in");
    v51 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v51 = *v51;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v50, v51, (*(v2 + 9) - *(v2 + 8)) >> 5, 0);
  }

  v27 = (*(*v10 + 40))(v10);
  v28 = *(v2 + 11);
  if (*(v2 + 12) == v28)
  {
    std::string::basic_string[abi:ne200100]<0>(v62, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v61, "out");
    v53 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v53 = *v53;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v52, v53, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
  }

  v29 = *(v27 + 56);
  v30 = *((*(*v28 + 40))(v28) + 56);
  v31 = *(v29 + 8);
  v32 = *(v29 + 24);
  v33 = *(v29 + 40);
  *(v30 + 56) = *(v29 + 56);
  *(v30 + 40) = v33;
  *(v30 + 24) = v32;
  *(v30 + 8) = v31;
  v34 = *(v2 + 8);
  if (*(v2 + 9) == v34)
  {
    std::string::basic_string[abi:ne200100]<0>(v62, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v61, "in");
    v55 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v55 = *v55;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v54, v55, (*(v2 + 9) - *(v2 + 8)) >> 5, 0);
  }

  v35 = (*(*v34 + 40))(v34);
  v36 = *(v2 + 11);
  if (*(v2 + 12) == v36)
  {
    std::string::basic_string[abi:ne200100]<0>(v62, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v61, "out");
    v57 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v57 = *v57;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v56, v57, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
  }

  v37 = *(*(v35 + 56) + 72);
  result = (*(*v36 + 40))(v36);
  *(*(result + 56) + 72) = v37;
  if ((v16 & 1) == 0)
  {
    v39 = *(v2 + 11);
    if (*(v2 + 12) == v39)
    {
      std::string::basic_string[abi:ne200100]<0>(v62, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v61, "out");
      v59 = (v2 + 32);
      if (*(v2 + 55) < 0)
      {
        v59 = *v59;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v58, v59, (*(v60 + 12) - *(v60 + 11)) >> 5, 0);
    }

    result = (*(*v39 + 40))(v39);
    *(*(result + 56) + 72) &= ~0x10u;
  }

  return result;
}

void sub_18F60F1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GraphOutput::process(DSPGraph::GraphOutput *this, unsigned int a2)
{
  if ((*(*(this + 1) + 764) & 1) == 0)
  {
    v3 = a2 / (*(*this + 672))(this);
    if (*(*(this + 1) + 766) == 1)
    {
      v17 = *(*(this + 106) + 72);
      LOBYTE(v18) = 0;
      v4 = *(this + 8);
      if (*(this + 9) == v4)
      {
        std::string::basic_string[abi:ne200100]<0>(v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v19, "in");
        v14 = (this + 32);
        if (*(this + 55) < 0)
        {
          v14 = *v14;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v13, v14, (*(this + 9) - *(this + 8)) >> 5, 0, v17, v18);
      }

      v5 = *((*(*v4 + 40))(v4) + 56);
      v6 = (*(*this + 656))(this);
      DSPGraph::SimpleABL::copy((v5 + 80), &v17, 0, 0, (v6 * v3), 1);
      DSPGraph::SimpleABL::free(&v17);
    }

    else
    {
      v7 = *(this + 8);
      if (*(this + 9) == v7)
      {
        std::string::basic_string[abi:ne200100]<0>(v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v19, "in");
        v16 = (this + 32);
        if (*(this + 55) < 0)
        {
          v16 = *v16;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v15, v16, (*(this + 9) - *(this + 8)) >> 5, 0);
      }

      v8 = (*(*v7 + 40))(v7);
      DSPGraph::RingBuffer::write((this + 808), v3, v3, (*(v8 + 56) + 80));
    }
  }

  v9 = *(this + 8);
  if (*(this + 9) == v9)
  {
    std::string::basic_string[abi:ne200100]<0>(v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v19, "in");
    v12 = (this + 32);
    if (*(this + 55) < 0)
    {
      v12 = *v12;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v11, v12, (*(this + 9) - *(this + 8)) >> 5, 0, v17, v18);
  }

  result = (*(*v9 + 40))(v9);
  *(*(this + 106) + 4) = *(*(result + 56) + 72);
  return result;
}

void sub_18F60F5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  DSPGraph::SimpleABL::free(&a12);
  _Unwind_Resume(a1);
}

void *DSPGraph::Graph::propagateFlagsAndTimeStamp(void *this, uint64_t a2)
{
  if (((this[39] - this[38]) & 0x7FFFFFFF8) != 0)
  {
    v2 = this;
    v3 = 0;
    v4 = (a2 + 8);
    do
    {
      v5 = DSPGraph::Graph::out(v2, v3);
      v6 = *(v5 + 64);
      if (*(v5 + 72) == v6)
      {
        std::string::basic_string[abi:ne200100]<0>(v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v13, "in");
        v12 = (v5 + 32);
        if (*(v5 + 55) < 0)
        {
          v12 = *v12;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v11, v12, (*(v5 + 72) - *(v5 + 64)) >> 5, 0);
      }

      this = (*(*v6 + 40))(v6);
      v7 = this[7];
      *(v4 - 1) = *(v7 + 72);
      v8 = *(v7 + 8);
      v9 = *(v7 + 24);
      v10 = *(v7 + 56);
      v4[2] = *(v7 + 40);
      v4[3] = v10;
      *v4 = v8;
      v4[1] = v9;
      if ((*(v2 + 766) & 1) == 0)
      {
        *v4 = *(v5 + 856);
      }

      ++v3;
      v4 += 5;
    }

    while (v3 < ((*(v2 + 312) - *(v2 + 304)) >> 3));
  }

  return this;
}

void sub_18F60F7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::Graph::reset(void *this)
{
  this[88] = 0;
  this[91] = 0;
  v1 = this[32];
  v2 = this[33];
  while (v1 != v2)
  {
    v3 = *v1;
    v3[32] = 0;
    v3[36] = 0;
    v4 = v3[28];
    v5 = v3[29];
    while (v4 != v5)
    {
      v6 = *v4++;
      this = (*(*v6 + 632))(v6);
    }

    ++v1;
  }

  return this;
}

void DSPGraph::RingBufferBox::reset(DSPGraph::RingBufferBox *this)
{
  if ((*(*this + 696))(this))
  {
    v2 = *(this + 194);
  }

  else
  {
    v2 = 0;
  }

  DSPGraph::RingBuffer::initialize((this + 808), v2);
}

void DSPGraph::RingBuffer::initialize(DSPGraph::RingBuffer *this, int a2)
{
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 7) = a2;
  v2 = *this;
  if (*this && *v2)
  {
    v4 = 0;
    v5 = (*(this + 6) * a2);
    v6 = 4;
    do
    {
      bzero(*&v2[v6], v5);
      ++v4;
      v2 = *this;
      v6 += 4;
    }

    while (v4 < **this);
  }
}

uint64_t DSPGraph::AUBox::reset(AudioUnit *this, AudioUnitScope a2, AudioUnitElement a3)
{
  result = AudioUnitReset(this[106], a2, a3);
  if (result)
  {
    v4 = result;
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v6, "reset");
    std::string::basic_string[abi:ne200100]<0>(&v5, "AudioUnitReset");
    DSPGraph::ThrowException(v4, &v7, 1846, &v6, &v5);
  }

  return result;
}

void sub_18F60F9F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

__n128 DSPGraph::Graph::preflight(__n128 *this, _DWORD *a2, _DWORD *a3, unsigned int a4, unsigned int a5, char a6)
{
  if ((this[47].n128_u8[10] & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "preflight");
    std::string::basic_string[abi:ne200100]<0>(&v17, "not initialized");
    DSPGraph::ThrowException(1768843553, &v19, 423, &v18, &v17);
  }

  v7 = a3;
  v8 = a2;
  if (a2 == a3 && (this[47].n128_u8[11] & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "preflight");
    std::string::basic_string[abi:ne200100]<0>(&v17, "input and output data are identical, but graph cannot process in-place");
    DSPGraph::ThrowException(1768975393, &v19, 428, &v18, &v17);
  }

  result = this[45];
  if (this[47].n128_u8[8] != 1)
  {
    if (a4 && this[43].n128_u32[0] != a4 || a5 && this[43].n128_u32[1] != a5)
    {
      std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v18, "preflight");
      std::string::basic_string[abi:ne200100]<0>(&v17, "the slice duration cannot vary, yet a different duration was supplied to preflight.");
      DSPGraph::ThrowException(1718775073, &v19, 446, &v18, &v17);
    }

    goto LABEL_14;
  }

  if (!a4 || !a5)
  {
LABEL_14:
    v11 = this[44].n128_u64[1];
    this[45].n128_u64[1] = v11;
    goto LABEL_15;
  }

  v11 = this[43].n128_u64[1] * a4 / a5;
  this[45].n128_u64[1] = v11;
  if ((a6 & 1) == 0 && v11 > this[44].n128_u64[1])
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "preflight");
    std::string::basic_string[abi:ne200100]<0>(&v17, "preflight slice duration is greater than the graph's maximum slice duration.");
    DSPGraph::ThrowException(1718775073, &v19, 438, &v18, &v17);
  }

LABEL_15:
  v16 = result;
  this[45].n128_u64[0] = v11;
  if (((this[18].n128_u64[0] - this[17].n128_u64[1]) & 0x7FFFFFFF8) != 0)
  {
    v12 = 0;
    do
    {
      v13 = DSPGraph::Graph::in(this, v12);
      *v8 = DSPGraph::GraphInput::preflight(v13);
      v8 += 20;
      ++v12;
    }

    while (v12 < ((this[18].n128_u64[0] - this[17].n128_u64[1]) >> 3));
  }

  if (((this[19].n128_u64[1] - this[19].n128_u64[0]) & 0x7FFFFFFF8) != 0)
  {
    v14 = 0;
    do
    {
      v15 = DSPGraph::Graph::out(this, v14);
      *v7 = DSPGraph::GraphOutput::preflight(v15);
      v7 += 20;
      ++v14;
    }

    while (v14 < ((this[19].n128_u64[1] - this[19].n128_u64[0]) >> 3));
  }

  if (a6)
  {
    result = v16;
    this[45] = v16;
  }

  return result;
}

void sub_18F60FCE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Graph::in(DSPGraph::Graph *this, unsigned int a2)
{
  v2 = *(this + 35);
  if (a2 >= ((*(this + 36) - v2) >> 3))
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "in");
    std::string::basic_string[abi:ne200100]<0>(&v4, "Graph::in inIndex out of range");
    DSPGraph::ThrowException(1919837985, &v6, 1352, &v5, &v4);
  }

  return *(v2 + 8 * a2);
}

void sub_18F60FDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GraphInput::ringBufferFramesPerPacket(DSPGraph::GraphInput *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v7, "out");
    v6 = (this + 32);
    if (*(this + 55) < 0)
    {
      v6 = *v6;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, v6, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 20);
}

void sub_18F60FEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GraphOutput::ringBufferFramesPerPacket(DSPGraph::GraphOutput *this)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v7, "in");
    v6 = (this + 32);
    if (*(this + 55) < 0)
    {
      v6 = *v6;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v5, v6, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 20);
}

void sub_18F61001C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GraphOutput::preflight(DSPGraph::GraphOutput *this)
{
  v2 = *(*(this + 1) + 704);
  v3 = *(*(this + 2) + 304);
  v4 = v3 * (*(*this + 672))(this);
  v5 = (v2 + v4 - 1) / v4;
  LODWORD(v2) = (*(*this + 672))(this);
  v6 = *(this + 1);
  v7 = *(v6 + 704);
  v8 = *(v6 + 720);
  v9 = *(*(this + 2) + 304);
  v10 = v9 * (*(*this + 672))(this);
  return ((v7 + v8 + v10 - 1) / v10) * (*(*this + 672))(this) - v5 * v2;
}

void *DSPGraph::Graph::processMultiple(DSPGraph::Graph *this, unsigned int *a2, unsigned int *a3)
{
  if ((*(this + 762) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v12, "processMultiple");
    std::string::basic_string[abi:ne200100]<0>(&v11, "not initialized");
    DSPGraph::ThrowException(1768843553, &v13, 574, &v12, &v11);
  }

  if (*(this + 764) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v12, "processMultiple");
    std::string::basic_string[abi:ne200100]<0>(&v11, "Graph::processMultiple. Graph must be processed in-place");
    DSPGraph::ThrowException(1836084257, &v13, 578, &v12, &v11);
  }

  if (((*(this + 36) - *(this + 35)) & 0x7FFFFFFF8) != 0)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      *(DSPGraph::Graph::in(this, v6++) + 848) = v7;
      v7 += 20;
    }

    while (v6 < ((*(this + 36) - *(this + 35)) >> 3));
  }

  if (((*(this + 39) - *(this + 38)) & 0x7FFFFFFF8) != 0)
  {
    v8 = 0;
    v9 = a3;
    do
    {
      *(DSPGraph::Graph::out(this, v8++) + 848) = v9;
      v9 += 20;
    }

    while (v8 < ((*(this + 39) - *(this + 38)) >> 3));
  }

  DSPGraph::Graph::checkCurSliceTicks(this, a2, a3);
  DSPGraph::Graph::processAll(this);

  return DSPGraph::Graph::propagateFlagsAndTimeStamp(this, a3);
}

void sub_18F610378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Graph::checkCurSliceTicks(uint64_t this, unsigned int *a2, unsigned int *a3)
{
  v4 = this;
  if (*(this + 760) == 1)
  {
    v5 = *(this + 728);
    if (!v5)
    {
      std::string::basic_string[abi:ne200100]<0>(&v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v53, "checkCurSliceTicks");
      std::string::basic_string[abi:ne200100]<0>(&v52, "preflighting is required if slice duration can vary.");
      DSPGraph::ThrowException(1718775073, &v54, 471, &v53, &v52);
    }
  }

  else
  {
    v5 = *(this + 712);
  }

  *(this + 720) = v5;
  *(this + 728) = 0;
  if (((*(this + 288) - *(this + 280)) & 0x7FFFFFFF8) != 0)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = DSPGraph::Graph::in(v4, v6);
      this = DSPGraph::GraphInput::preflight(v9);
      if (v8 != this)
      {
        std::string::basic_string[abi:ne200100]<0>(&v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v53, "checkCurSliceTicks");
        v41 = *v7;
        v42 = DSPGraph::Graph::in(v4, v6);
        v43 = DSPGraph::GraphInput::preflight(v42);
        DSPGraph::strprintf("input %u packet count %u is inconsistent with preflight %u", v44, v6, v41, v43);
      }

      ++v6;
      v7 += 20;
    }

    while (v6 < ((*(v4 + 288) - *(v4 + 280)) >> 3));
  }

  v11 = *(v4 + 304);
  v10 = *(v4 + 312);
  if (((v10 - v11) & 0x7FFFFFFF8) != 0)
  {
    v12 = 0;
    v13 = a3;
    do
    {
      v14 = *v13;
      v15 = DSPGraph::Graph::out(v4, v12);
      this = DSPGraph::GraphOutput::preflight(v15);
      if (v14 != this)
      {
        std::string::basic_string[abi:ne200100]<0>(&v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v53, "checkCurSliceTicks");
        v45 = *v13;
        v46 = DSPGraph::Graph::out(v4, v12);
        v47 = DSPGraph::GraphOutput::preflight(v46);
        DSPGraph::strprintf("output %u frame count %u is inconsistent with preflight %u", v48, v12, v45, v47);
      }

      ++v12;
      v11 = *(v4 + 304);
      v10 = *(v4 + 312);
      v13 += 20;
    }

    while (v12 < ((v10 - v11) >> 3));
  }

  if (*(v4 + 766))
  {
    if (a2 == a3)
    {
      if ((*(v4 + 763) & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v53, "checkCurSliceTicks");
        std::string::basic_string[abi:ne200100]<0>(&v52, "graph cannot process in-place.");
        DSPGraph::ThrowException(1768975393, &v54, 497, &v53, &v52);
      }
    }

    else
    {
      v17 = *(v4 + 280);
      v16 = *(v4 + 288);
      if (((v16 - v17) & 0x7FFFFFFF8) != 0)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        do
        {
          v21 = &a2[20 * v18];
          if (v19)
          {
            if (*v21 != v20)
            {
              std::string::basic_string[abi:ne200100]<0>(&v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v53, "checkCurSliceTicks");
              DSPGraph::strprintf("number of frames are different in different ports though the sample rates are the same. %u %u", v50, *v21, v20);
            }
          }

          else
          {
            v20 = *v21;
          }

          v22 = *(v21 + 9);
          if (*v22)
          {
            v23 = 0;
            v24 = v22 + 3;
            do
            {
              v25 = DSPGraph::Graph::in(v4, v18);
              v26 = *v21;
              v27 = v26 / (*(*v25 + 672))(v25);
              this = (*(*v25 + 656))(v25);
              v28 = this * v27;
              if (*v24 < v28)
              {
                std::string::basic_string[abi:ne200100]<0>(&v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v53, "checkCurSliceTicks");
                DSPGraph::strprintf("AudioBufferList mDataByteSize is too small for the number of packets for input %u.  mDataByteSize %u   expectedByteSize %u", v40, v18, *v24, v28);
              }

              ++v23;
              v24 += 4;
            }

            while (v23 < *v22);
            v17 = *(v4 + 280);
            v16 = *(v4 + 288);
          }

          ++v18;
          v19 = 1;
        }

        while (v18 < ((v16 - v17) >> 3));
        v11 = *(v4 + 304);
        v10 = *(v4 + 312);
        v29 = 1;
        goto LABEL_30;
      }
    }

    v20 = 0;
    v29 = 0;
LABEL_30:
    if (((v10 - v11) & 0x7FFFFFFF8) != 0)
    {
      v30 = 0;
      do
      {
        v31 = &a3[20 * v30];
        if (v29)
        {
          if (*v31 != v20)
          {
            std::string::basic_string[abi:ne200100]<0>(&v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
            std::string::basic_string[abi:ne200100]<0>(&v53, "checkCurSliceTicks");
            DSPGraph::strprintf("number of frames are different in different ports though the sample rates are the same. %u %u", v49, *v31, v20);
          }
        }

        else
        {
          v20 = *v31;
        }

        v32 = *(v31 + 9);
        if (*v32)
        {
          v33 = 0;
          v34 = v32 + 3;
          do
          {
            v35 = DSPGraph::Graph::out(v4, v30);
            v36 = *v31;
            v37 = v36 / (*(*v35 + 672))(v35);
            this = (*(*v35 + 656))(v35);
            v38 = this * v37;
            if (*v34 < v38)
            {
              std::string::basic_string[abi:ne200100]<0>(&v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v53, "checkCurSliceTicks");
              DSPGraph::strprintf("AudioBufferList mDataByteSize is too small for the number of frames for output %u.  mDataByteSize %u   expectedByteSize %u", v39, v30, *v34, v38);
            }

            ++v33;
            v34 += 4;
          }

          while (v33 < *v32);
          v11 = *(v4 + 304);
          v10 = *(v4 + 312);
        }

        ++v30;
        v29 = 1;
      }

      while (v30 < ((v10 - v11) >> 3));
    }
  }

  return this;
}

void sub_18F610A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNK5caulk10concurrent26lf_read_synchronized_writeINSt3__16vectorIN8DSPGraph18RenderObserverListINS4_5GraphEE14RenderObserverENS2_9allocatorIS8_EEEEE6accessIZNS7_7callAllEPS6_jNS4_18RenderCallbackTypeEEUlRKT_E_EEvOSG_(caulk::concurrent::details::lf_read_sync_write_impl *a1, uint64_t *a2)
{
  result = caulk::concurrent::details::lf_read_sync_write_impl::begin_access(a1);
  if (*(a1 + result + 8))
  {
    v5 = a1 + 24 * result;
    v6 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v6 == v7)
    {
      goto LABEL_6;
    }

    do
    {
      v8 = *(a2 + 2);
      v11 = *a2;
      v10 = v8;
      v9 = *(v6 + 32);
      if (!v9)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v9 + 48))(v9, &v11, &v10);
      v6 += 48;
    }

    while (v6 != v7);
    if (a1)
    {
LABEL_6:

      return caulk::concurrent::details::lf_read_sync_write_impl::end_access(a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double DSPGraph::IsoGroup::process(DSPGraph::IsoGroup *this, uint64_t a2)
{
  for (i = *(this + 14); i; i = *i)
  {
    (*(*i[2] + 704))(i[2], a2);
  }

  v5 = *(this + 28);
  v6 = *(this + 29);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 464))(v7, a2);
  }

  result = *(this + 32) + a2;
  *(this + 32) = result;
  return result;
}

void *DSPGraph::Box::doProcess(DSPGraph::Box *this, uint64_t a2)
{
  v29 = this + 640;
  if (*(this + 83))
  {
    CurrentTimeInNanos = DSPGraph::details::DoTimePoint<std::function<void ()(double)>>::GetCurrentTimeInNanos();
  }

  else
  {
    CurrentTimeInNanos = 0;
  }

  v30 = CurrentTimeInNanos;
  if (*(this + 744) == 1)
  {
    v5 = *(this + 11);
    v6 = *(this + 12) - v5;
    if ((v6 & 0x1FFFFFFFE0) != 0)
    {
      v7 = 0;
      v8 = 0;
      v9 = v6 >> 5;
      do
      {
        if (v9 <= v8)
        {
          std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v31, "out");
          v28 = (this + 32);
          if (*(this + 55) < 0)
          {
            v28 = *v28;
          }

          DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v27, v28, (*(this + 12) - *(this + 11)) >> 5, v8, v29, v30);
        }

        v10 = v5 + v7;
        v11 = *((*(*(v5 + v7) + 40))(v5 + v7) + 56);
        v12 = *(*((*(*v10 + 40))(v10) + 120) + 8);
        v13 = *((*(*v10 + 40))(v10) + 120);
        if (v12 == 1819304813)
        {
          v14 = *(v13 + 24) * a2;
        }

        else
        {
          if (*(v13 + 8) != 1718773105)
          {
            DSPGraph::Buffer::setByteSize(v11, v11[25]);
            goto LABEL_14;
          }

          v14 = 2 * a2 * *(*((*(*v10 + 40))(v10) + 120) + 24);
        }

        DSPGraph::Buffer::setByteSize(v11, v14);
LABEL_14:
        ++v8;
        v5 = *(this + 11);
        v9 = (*(this + 12) - v5) >> 5;
        v7 += 32;
      }

      while (v8 < v9);
    }

    v15 = atomic_fetch_or(this + 192, 0x80000000);
    v16 = *this;
    if (v15)
    {
      (*(v16 + 480))(this);
      (*(*this + 488))(this);
      v17 = *(this + 92);
      v32 = this;
      v33 = a2;
      _ZNK5caulk10concurrent26lf_read_synchronized_writeINSt3__16vectorIN8DSPGraph18RenderObserverListINS4_3BoxEE14RenderObserverENS2_9allocatorIS8_EEEEE6accessIZNS7_7callAllEPS6_jNS4_18RenderCallbackTypeEEUlRKT_E_EEvOSG_(v17, &v32);
      (*(*this + 472))(this, a2);
      v18 = *(this + 25);
      v19 = *(this + 26);
      while (v18 != v19)
      {
        if (((*(this + 12) - *(this + 11)) & 0x1FFFFFFFE0) != 0 || ((*(this + 9) - *(this + 8)) & 0x1FFFFFFFE0) != 0)
        {
          DSPGraph::FileRecorder::record(*v18, a2);
        }

        ++v18;
      }

      v20 = *(this + 28);
      v21 = *(this + 29);
      while (v20 != v21)
      {
        DSPGraph::FileInjector::inject(*v20++, a2);
      }

      caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
      for (i = atomic_load(this + 45); ; i = atomic_load(v24))
      {
        v23 = (i & 0xFFFFFFFFFFFFFFFCLL);
        if ((this + 520) == v23)
        {
          break;
        }

        v24 = v23 + 3;
        atomic_load(v23 + 3);
        if (*(*v23 + 28) == 1)
        {
          (*(**v23 + 64))(*v23, *(*(*v23 + 8) + 56), a2);
        }
      }

      caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(this + 560, v23);
      v25 = *(this + 92);
      v32 = this;
      v33 = a2;
      _ZNK5caulk10concurrent26lf_read_synchronized_writeINSt3__16vectorIN8DSPGraph18RenderObserverListINS4_3BoxEE14RenderObserverENS2_9allocatorIS8_EEEEE6accessIZNS7_7callAllEPS6_jNS4_18RenderCallbackTypeEEUlRKT_E_EEvOSG_((v25 + 64), &v32);
    }

    else
    {
      (*(v16 + 472))(this, a2);
    }

    atomic_fetch_and(this + 192, 0x7FFFFFFFu);
  }

  return DSPGraph::details::DoTimePoint<std::function<void ()(double)>>::~DoTimePoint(&v29);
}

void sub_18F611080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  atomic_fetch_and((v31 + 768), 0x7FFFFFFFu);
  DSPGraph::details::DoTimePoint<std::function<void ()(double)>>::~DoTimePoint(&a12);
  _Unwind_Resume(a1);
}

void *DSPGraph::details::DoTimePoint<std::function<void ()(double)>>::~DoTimePoint(void *a1)
{
  v2 = *a1;
  if (*(*a1 + 24))
  {
    v5 = (DSPGraph::details::DoTimePoint<std::function<void ()(double)>>::GetCurrentTimeInNanos() - a1[1]);
    v3 = *(v2 + 24);
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v3 + 48))(v3, &v5);
  }

  return a1;
}

uint64_t DSPGraph::NonFiniteProtectionBox::process(DSPGraph::NonFiniteProtectionBox *this, unsigned int a2)
{
  v2 = this;
  v3 = atomic_load(this + 825);
  v6 = this + 64;
  v4 = *(this + 8);
  v5 = *(v6 + 1);
  if (v3)
  {
    if (v5 == v4)
    {
      std::string::basic_string[abi:ne200100]<0>(__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(__B, "in");
      v72 = (v2 + 32);
      if (*(v2 + 55) < 0)
      {
        v72 = *v72;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v71, v72, (*(v2 + 9) - *(v2 + 8)) >> 5, 0);
    }

    v7 = (*(*v4 + 40))(v4);
    v8 = *(v2 + 11);
    if (*(v2 + 12) == v8)
    {
      std::string::basic_string[abi:ne200100]<0>(__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(__B, "out");
      v76 = (v2 + 32);
      if (*(v2 + 55) < 0)
      {
        v76 = *v76;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v75, v76, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
    }

    v9 = *(v7 + 56);
    v10 = (*(*v8 + 40))(v8);
    DSPGraph::SimpleABL::copy((v9 + 80), (*(v10 + 56) + 80), 1);
    goto LABEL_44;
  }

  if (v5 == v4)
  {
    std::string::basic_string[abi:ne200100]<0>(__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(__B, "in");
    v74 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v74 = *v74;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v73, v74, (*(v2 + 9) - *(v2 + 8)) >> 5, 0);
  }

  v11 = (*(*v4 + 40))(v4);
  v12 = *(v2 + 11);
  if (*(v2 + 12) == v12)
  {
    std::string::basic_string[abi:ne200100]<0>(__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(__B, "out");
    v78 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v78 = *v78;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v77, v78, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
  }

  v13 = *(*(v11 + 56) + 80);
  v14 = *(*((*(*v12 + 40))(v12) + 56) + 80);
  v15 = *v13;
  v16 = COERCE_FLOAT(atomic_load(v2 + 193));
  v17 = __exp10f(v16 * 0.05);
  if (!v15)
  {
    v30 = *(v2 + 196);
    if (v30)
    {
      *(v2 + 196) = (v30 - a2) & ~((v30 - a2) >> 31);
    }

    goto LABEL_44;
  }

  v18 = v17;
  v80 = 0;
  v81 = v2;
  v19 = 0;
  v20 = 0;
  v79 = v14;
  v21 = -v17;
  v22 = v14 + 8;
  v23 = 4 * a2;
  while (1)
  {
    v24 = *&v13[4 * v19 + 4];
    v25 = *(v22 + 16 * v19 + 8);
    __C[0] = 0.0;
    vDSP_sve(v24, 1, __C, a2);
    if ((LODWORD(__C[0]) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      if (a2)
      {
        v26 = 4 * a2;
        v27 = v24;
        do
        {
          if ((*v27 & 0x7FFFFFFFu) >= 0x7F800000)
          {
            *v27 = 0.0;
          }

          ++v27;
          v26 -= 4;
        }

        while (v26);
      }

      v20 = 1;
    }

    __C[0] = v18;
    __B[0] = v21;
    v83[0] = 0.0;
    vDSP_maxmgv(v24, 1, v83, a2);
    if (v83[0] <= __C[0])
    {
      if (v24 != v25)
      {
        memcpy(v25, v24, v23);
      }

      goto LABEL_21;
    }

    v28 = atomic_load(v81 + 780);
    if (v28)
    {
      break;
    }

    v80 = 1;
    vDSP_vclip(v24, 1, __B, __C, v25, 1, a2);
LABEL_21:
    if (++v19 == v15)
    {
      v29 = v80;
      v2 = v81;
      if (!*(v81 + 196))
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }
  }

  v2 = v81;
  if (!*(v81 + 196))
  {
    atomic_load(v81 + 193);
    atomic_load(v81 + 194);
    v31 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gCADefaultDeferredLog, v31 + 88, 16);
    if (message)
    {
      v33 = message;
      v34 = _os_log_pack_fill();
      v35 = COERCE_FLOAT(atomic_load(v81 + 193));
      v36 = v35;
      v37 = COERCE_FLOAT(atomic_load(v81 + 194));
      *v34 = 134218240;
      *(v34 + 4) = v36;
      *(v34 + 12) = 2048;
      *(v34 + 14) = v37;
      caulk::concurrent::messenger::enqueue(*(gCADefaultDeferredLog + 16), v33);
    }
  }

  v38 = COERCE_FLOAT(atomic_load(v81 + 194));
  v39 = (v38 * DSPGraph::Box::sampleRate(v81));
  *(v81 + 196) = v39;
  v29 = 1;
  if (v39)
  {
LABEL_30:
    v40 = (v13 + 4);
    v41 = (v79 + 16);
    do
    {
      v42 = *v41;
      if (v20)
      {
        v20 = 1;
      }

      else
      {
        v43 = *v40;
        __C[0] = 0.0;
        vDSP_sve(v43, 1, __C, a2);
        v20 = (LODWORD(__C[0]) & 0x7FFFFFFFu) > 0x7F7FFFFF;
      }

      bzero(v42, v23);
      v40 += 2;
      v41 += 2;
      --v15;
    }

    while (v15);
    *(v2 + 196) = (*(v2 + 196) - a2) & ~((*(v2 + 196) - a2) >> 31);
  }

LABEL_36:
  if (v20)
  {
    ++*(v2 + 204);
    v44 = atomic_load(v2 + 826);
    if (v44)
    {
      v45 = *(v2 + 204);
      v46 = atomic_load(v2 + 207);
      if (!(v45 % v46))
      {
        DSPGraph::NonFiniteProtectionBox::addEvent(v2, 0);
      }
    }
  }

  if (v29)
  {
    ++*(v2 + 205);
    v47 = atomic_load(v2 + 826);
    if (v47)
    {
      v48 = *(v2 + 205);
      v49 = atomic_load(v2 + 207);
      if (!(v48 % v49))
      {
        DSPGraph::NonFiniteProtectionBox::addEvent(v2, 1);
      }
    }
  }

LABEL_44:
  v50 = *(v2 + 8);
  if (*(v2 + 9) == v50)
  {
    std::string::basic_string[abi:ne200100]<0>(__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(__B, "in");
    v64 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v64 = *v64;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v63, v64, (*(v2 + 9) - *(v2 + 8)) >> 5, 0);
  }

  v51 = (*(*v50 + 40))(v50);
  v52 = *(v2 + 11);
  if (*(v2 + 12) == v52)
  {
    std::string::basic_string[abi:ne200100]<0>(__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(__B, "out");
    v66 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v66 = *v66;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v65, v66, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
  }

  v53 = *(v51 + 56);
  v54 = *((*(*v52 + 40))(v52) + 56);
  v55 = *(v53 + 8);
  v56 = *(v53 + 24);
  v57 = *(v53 + 40);
  *(v54 + 56) = *(v53 + 56);
  *(v54 + 40) = v57;
  *(v54 + 24) = v56;
  *(v54 + 8) = v55;
  v58 = *(v2 + 8);
  if (*(v2 + 9) == v58)
  {
    std::string::basic_string[abi:ne200100]<0>(__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(__B, "in");
    v68 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v68 = *v68;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v67, v68, (*(v2 + 9) - *(v2 + 8)) >> 5, 0);
  }

  v59 = (*(*v58 + 40))(v58);
  v60 = *(v2 + 11);
  if (*(v2 + 12) == v60)
  {
    std::string::basic_string[abi:ne200100]<0>(__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(__B, "out");
    v70 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v70 = *v70;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v69, v70, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
  }

  v61 = *(*(v59 + 56) + 72);
  result = (*(*v60 + 40))(v60);
  *(*(result + 56) + 72) = v61;
  return result;
}

void sub_18F611ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *ACMetadataContainer::resetMetadataEvents(uint64_t *this, AudioMetadataFrame *a2)
{
  *(this + 8) = 0;
  this[3] = 0;
  if (a2)
  {
    v3 = this;
    v4 = *this;
    v5 = *(v3 + 8) - v4;
    if (v5 >= 1)
    {
      bzero(v4, v5);
      v4 = *v3;
    }

    *(v3 + 8) = v4;
    memset(v9, 0, 44);
    BYTE8(v9[1]) = 1;
    *&v9[2] = 0x10000002CLL;
    this = AudioMetadataFrame::begin_new(v3, v9);
    v6 = *a2;
    if (*(a2 + 1) - *a2 >= 0x2CuLL && v6)
    {
      v7 = *(v6 + 40);
      v8 = v6 + 44;
      if (!v7)
      {
        v8 = 0;
      }

      *(v3 + 24) = v8;
      *(v3 + 32) = v7;
    }
  }

  return this;
}

void AudioConverterPrepare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
  v5 = dispatch_queue_create("AudioConverterPrepareQueue", v4);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v9 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __AudioConverterPrepare_block_invoke;
  block[3] = &unk_1E72C0F88;
  block[4] = v8;
  dispatch_async(v5, block);
  dispatch_async(v5, &__block_literal_global_5290);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __AudioConverterPrepare_block_invoke_3;
  v6[3] = &unk_1E72C0FD0;
  v6[4] = a3;
  v6[5] = v8;
  dispatch_barrier_async(v5, v6);
  _Block_object_dispose(v8, 8);
  if (v5)
  {
    dispatch_release(v5);
  }
}

OSStatus ExtAudioFileOpenURL(CFURLRef inURL, ExtAudioFileRef *outExtAudioFile)
{
  v5 = *MEMORY[0x1E69E9840];
  result = -50;
  if (inURL && outExtAudioFile)
  {
    *outExtAudioFile = 0;
    operator new();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F611FC8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v3);
  if (a2 == 4)
  {
    v6 = *(__cxa_begin_catch(exception_object) + 2);
  }

  else if (a2 == 3)
  {
    v6 = *(__cxa_begin_catch(exception_object) + 66);
  }

  else
  {
    v7 = __cxa_begin_catch(exception_object);
    if (a2 != 2)
    {
      __cxa_end_catch();
      v6 = -1;
      if (!v2)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    v6 = *v7;
  }

  __cxa_end_catch();
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_9:
  if (v6)
  {
    (*(*v2 + 8))(v2);
  }

LABEL_15:
  JUMPOUT(0x18F611E1CLL);
}

void ExtAudioFile::ExtAudioFile(ExtAudioFile *this)
{
  BaseOpaqueObject::BaseOpaqueObject(this);
  *v2 = &unk_1F0327008;
  *(v2 + 16) = 0;
  *(v2 + 29) = 1;
  *(v2 + 32) = 0;
  *(v2 + 40) = -1;
  *(v2 + 72) = 0;
  *(v2 + 84) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 164) = 0u;
  *(v2 + 180) = 0u;
  *(v2 + 192) = 0u;
  CAAudioChannelLayout::CAAudioChannelLayout((v2 + 264));
  CAAudioChannelLayout::CAAudioChannelLayout((this + 272));
  *(this + 37) = 0;
  *(this + 40) = 0;
  *(this + 328) = 0;
  *(this + 42) = 0;
  *(this + 92) = 0;
  *(this + 416) = 0;
  *(this + 53) = 0;
  *(this + 14) = 0;
  *(this + 27) = 0;
  *(this + 284) = 0x4B00000000;
  *(this + 22) = 0x10000;
  *(this + 6) = 0;
  *(this + 392) = 0;
  *(this + 50) = 0;
  *(this + 51) = -1;
}

void ExtAudioFile::GetExistingFileInfo(ExtAudioFile *this, int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  *outDataSize = 0;
  v34 = -1;
  PropertyInfo = AudioFileGetPropertyInfo(*(this + 2), 0x666C7374u, outDataSize, 0);
  v5 = outDataSize[0];
  if (PropertyInfo)
  {
    v6 = 1;
  }

  else
  {
    v6 = outDataSize[0] == 0;
  }

  if (v6)
  {
    v7 = 0;
    v8 = -1;
    goto LABEL_27;
  }

  v9 = outDataSize[0] / 0x30uLL;
  CADeprecated::CAAutoFree<AudioFormatListItem>::CAAutoFree(outPropertyData, v9, 0);
  if (AudioFileGetProperty(*(this + 2), 0x666C7374u, outDataSize, outPropertyData[0]))
  {
    v7 = 0;
  }

  else
  {
    if (a2)
    {
      if (v5 < 0x30)
      {
LABEL_14:
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v37, 0xFFFFFFCE);
          *buf = 136315906;
          *&buf[4] = "ExtAudioFile.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 533;
          *&buf[18] = 2080;
          *&buf[20] = v37;
          *&buf[28] = 2080;
          *&buf[30] = "couldn't get preferred format ID";
          _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        exception = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(exception, "couldn't get preferred format ID", -50);
      }

      v10 = 0;
      v11 = (outPropertyData[0] + 8);
      while (1)
      {
        v12 = *v11;
        v11 += 12;
        if (v12 == a2)
        {
          break;
        }

        if (v9 == ++v10)
        {
          goto LABEL_14;
        }
      }

      v14 = outPropertyData[0] + 48 * v10;
      v15 = *v14;
      v16 = *(v14 + 1);
      *(this + 25) = *(v14 + 4);
      *(this + 184) = v16;
      *(this + 168) = v15;
      if (*(v14 + 10) <= 0xFFFEFFFF)
      {
        CAAudioChannelLayout::SetWithTag((this + 264));
      }
    }

    else
    {
      outDataSize[1] = 4;
      v7 = 0;
      if (AudioFormatGetProperty(0x6670666Cu, outDataSize[0], outPropertyData[0], &outDataSize[1], &v34) || (v34 & 0x80000000) != 0)
      {
        goto LABEL_24;
      }

      v17 = outPropertyData[0] + 48 * v34;
      v18 = *(v17 + 4);
      v19 = *(v17 + 1);
      *(this + 168) = *v17;
      *(this + 184) = v19;
      *(this + 25) = v18;
      if (*(v17 + 10) <= 0xFFFEFFFF)
      {
        CAAudioChannelLayout::SetWithTag((this + 264));
      }
    }

    v7 = 1;
  }

LABEL_24:
  if (outPropertyData[0])
  {
    free(outPropertyData[0]);
  }

  v8 = v9 - 1;
LABEL_27:
  memset(buf, 0, sizeof(buf));
  outDataSize[1] = 40;
  Property = AudioFileGetProperty(*(this + 2), 0x64666D74u, &outDataSize[1], buf);
  if (Property)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(outPropertyData, Property);
      *v37 = 136315906;
      v38 = "ExtAudioFile.cpp";
      v39 = 1024;
      v40 = 551;
      v41 = 2080;
      v42 = outPropertyData;
      v43 = 2080;
      v44 = "get audio file's data format";
      _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", v37, 0x26u);
    }

    v28 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v28, "get audio file's data format", Property);
  }

  if (v7)
  {
    if (v34 != v8)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v21 = *&buf[16];
    *(this + 168) = *buf;
    *(this + 184) = v21;
    *(this + 25) = *&buf[32];
  }

  if (!AudioFileGetPropertyInfo(*(this + 2), 0x636D6170u, &outDataSize[1], 0) && outDataSize[1])
  {
    v22 = malloc_type_malloc(outDataSize[1], 0x7FE3F34FuLL);
    if (!v22 && outDataSize[1])
    {
      v29 = __cxa_allocate_exception(8uLL);
      v30 = std::bad_alloc::bad_alloc(v29);
    }

    v23 = AudioFileGetProperty(*(this + 2), 0x636D6170u, &outDataSize[1], v22);
    if (v23)
    {
      free(v22);
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(outPropertyData, v23);
        *v37 = 136315906;
        v38 = "ExtAudioFile.cpp";
        v39 = 1024;
        v40 = 580;
        v41 = 2080;
        v42 = outPropertyData;
        v43 = 2080;
        v44 = "get audio file's channel layout";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", v37, 0x26u);
      }

      v31 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v31, "get audio file's channel layout", v23);
    }

    if (outDataSize[1] <= 0xB)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(outPropertyData, 0x2173697Au);
        *v37 = 136315906;
        v38 = "ExtAudioFile.cpp";
        v39 = 1024;
        v40 = 571;
        v41 = 2080;
        v42 = outPropertyData;
        v43 = 2080;
        v44 = "channel layout's reported size is too small";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", v37, 0x26u);
      }

      v32 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v32, "channel layout's reported size is too small", 561211770);
    }

    v24 = caulk::numeric::exceptional_mul<unsigned int>(v22[2], 0x14u);
    if (caulk::numeric::exceptional_add<unsigned int>(12, v24) > outDataSize[1])
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(outPropertyData, 0x2173697Au);
        *v37 = 136315906;
        v38 = "ExtAudioFile.cpp";
        v39 = 1024;
        v40 = 573;
        v41 = 2080;
        v42 = outPropertyData;
        v43 = 2080;
        v44 = "channel layout's reported size is larger than file chunk size";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", v37, 0x26u);
      }

      v33 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v33, "channel layout's reported size is larger than file chunk size", 561211770);
    }

    CAAudioChannelLayout::operator=();
    free(v22);
  }

LABEL_40:
  v25 = *(this + 21);
  v26 = 1.0;
  if (v25 != *buf && v25 != 0.0 && *buf != 0.0)
  {
    v26 = v25 / *buf;
  }

  *(this + 26) = v26;
  if (*(this + 8) == 1)
  {
    if (!AudioFileGetPropertyInfo(*(this + 2), 0x6D676963u, &outDataSize[1], 0) && outDataSize[1])
    {
      operator new[]();
    }

    ExtAudioFile::InitFileMaxPacketSize(this);
    *(this + 6) = 0;
    *(this + 7) = 0;
    *(this + 8) = 0;
    ExtAudioFile::UpdateInternals(this);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_18F612A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAFAudioFile::GetFormatListInfo(CAFAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  v8 = 0;
  if ((*(*this + 568))(this, 1818522467, 0, &v8))
  {
    v5 = 0;
    v6 = 48;
  }

  else
  {
    if (v8 % 0x24)
    {
      return 1667787583;
    }

    v6 = 48 * (v8 / 0x24);
    v5 = 1;
  }

  result = 0;
  *a2 = v6;
  *a3 = v5;
  return result;
}

void *CADeprecated::CAAutoFree<AudioFormatListItem>::CAAutoFree(void *a1, uint64_t a2, int a3)
{
  *a1 = 0;
  v5 = 48 * a2;
  if (a3)
  {
    v6 = malloc_type_malloc(48 * a2, 0xD7524C8FuLL);
    v7 = v6;
    if (!a2 || v6)
    {
      bzero(v6, v5);
      goto LABEL_7;
    }

LABEL_8:
    exception = __cxa_allocate_exception(8uLL);
    v11 = std::bad_alloc::bad_alloc(exception);
  }

  v8 = malloc_type_malloc(v5, 0x100004064842E6AuLL);
  v7 = v8;
  if (a2 && !v8)
  {
    goto LABEL_8;
  }

LABEL_7:
  *a1 = v7;
  return a1;
}

uint64_t CAFAudioFile::GetFormatList(CAFAudioFile *this, unsigned int *a2, AudioFormatListItem *a3)
{
  v15 = 0;
  if ((*(*this + 568))(this, 1818522467, 0, &v15))
  {
    AudioFileObject::GetFormatList(this, a2, a3);
    return v6;
  }

  else
  {
    v8 = *a2;
    if (v8 >= 0x30)
    {
      LODWORD(v9) = v15 / 0x24;
      if (v15 % 0x24)
      {
        return 1667787583;
      }

      else
      {
        bzero(a3, v8);
        CADeprecated::CAAutoFree<CAFAudioFormatListItem>::CAAutoFree(&v14, v9);
        v15 = 36 * v9;
        v7 = (*(*this + 584))(this, 1818522467, 0, &v15, v14);
        if (!v7)
        {
          v10 = *a2 / 0x30;
          if (v9 >= v10)
          {
            v9 = v10;
          }

          else
          {
            v9 = v9;
          }

          if (v9)
          {
            v11 = v14;
            v12 = v9;
            do
            {
              *&v11->mFormat.mSampleRate = bswap64(*&v11->mFormat.mSampleRate);
              *&v11->mFormat.mFormatID = vrev32q_s8(*&v11->mFormat.mFormatID);
              *&v11->mFormat.mChannelsPerFrame = vrev32_s8(*&v11->mFormat.mChannelsPerFrame);
              v11->mChannelLayoutTag = bswap32(v11->mChannelLayoutTag);
              CAFtoAF_FormatListItem(v11++, a3++);
              --v12;
            }

            while (v12);
          }

          v7 = 0;
          *a2 = 48 * v9;
        }

        if (v14)
        {
          free(v14);
        }
      }
    }

    else
    {
      return 561211770;
    }
  }

  return v7;
}

void sub_18F612E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

double AudioFileObject::GetFormatList(AudioFileObject *this, unsigned int *a2, AudioFormatListItem *a3)
{
  if (*a2 >= 0x30)
  {
    v6 = *(this + 40);
    v14 = *(this + 24);
    v15 = v6;
    v16 = *(this + 7);
    v7 = *(this + 13) | 0xFFFF0000;
    size = 0;
    if (!(*(*this + 408))())
    {
      v12 = 0;
      CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v12, HIDWORD(size), 0);
      v8 = v12;
      if ((*(*this + 416))(this, &size + 4, v12))
      {
        v9 = 0;
      }

      else
      {
        v9 = HIDWORD(size) >= 0xC;
      }

      if (v9)
      {
        if ((*v8 | 0x10000) != 0x10000)
        {
          v7 = *v8;
        }
      }

      else if (!v8)
      {
        goto LABEL_12;
      }

      free(v8);
    }

LABEL_12:
    result = *&v14;
    v11 = v15;
    *&a3->mASBD.mSampleRate = v14;
    *&a3->mASBD.mBytesPerPacket = v11;
    *&a3->mASBD.mBitsPerChannel = v16;
    a3->mChannelLayoutTag = v7;
    *a2 = 48;
  }

  return result;
}

void sub_18F612FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAFAudioFile::GetChannelLayoutSize(CAFAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 1;
  }

  v3 = *(this + 18);
  v4 = *(this + 19) - v3;
  if (v4)
  {
    v5 = 0;
    v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    v7 = 1;
    while (1)
    {
      v8 = (v3 + 24 * v5);
      if (*v8 == 1667785070)
      {
        break;
      }

      v5 = v7;
      if (v6 <= v7++)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8)
  {
    result = 0;
    v11 = v8[2] - 12;
  }

  else
  {
    v11 = 0;
    result = 1667787583;
  }

  *a2 = v11;
  return result;
}

uint64_t ExtAudioFile::InitFileMaxPacketSize(AudioFileID *this)
{
  v17 = *MEMORY[0x1E69E9840];
  ioDataSize = 4;
  Property = AudioFileGetProperty(this[2], 0x706B7562u, &ioDataSize, this + 35);
  if (Property)
  {
    if (*(this + 44) != 1819304813)
    {
      v6 = Property;
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v8, v6);
        *buf = 136315906;
        v10 = "ExtAudioFile.cpp";
        v11 = 1024;
        v12 = 466;
        v13 = 2080;
        v14 = v8;
        v15 = 2080;
        v16 = "get audio file's maximum packet size";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(exception, "get audio file's maximum packet size", v6);
    }

    *(this + 70) = *(this + 48);
  }

  result = ExtAudioFile::AllocateBuffers(this, 1);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __AudioConverterPrepare_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v0 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    object = "AudioConverterOOPOriginal.cpp";
    v4 = 1024;
    v5 = 684;
    _os_log_impl(&dword_18F5DF000, v0, OS_LOG_TYPE_DEBUG, "%25s:%-5d Preparing AudioConverterService", buf, 0x12u);
  }

  remoteAudioConverterClientWithActivatedEndpoint(&v1);
}

void sub_18F6134C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void remoteAudioConverterClientWithActivatedEndpoint(uint64_t a1)
{
  v2 = selectAudioConverterService();
  applesauce::xpc::connection::create(&object, v2, v3);
  v4 = object;
  if (object)
  {
    xpc_retain(object);
    v5 = v4;
  }

  else
  {
    v5 = xpc_null_create();
  }

  xpc_release(v5);
  xpc_null_create();
  remoteAudioConverterClient(a1, v4);
}

void sub_18F613674(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v3 + 8))(v3);
  xpc_release(v2);
  _Unwind_Resume(a1);
}

void applesauce::xpc::connection::create(applesauce::xpc::connection *this, const char *name, dispatch_queue_s *a3)
{
  v4 = xpc_connection_create(name, 0);
  v5 = v4;
  if (v4)
  {
    *this = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *this = v5;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (object_getClass(v5) == MEMORY[0x1E69E9E68])
  {
    xpc_retain(v5);
    goto LABEL_7;
  }

LABEL_5:
  *this = xpc_null_create();
LABEL_7:
  xpc_release(v5);
}

OpaqueAudioComponent *__AudioConverterPrepare_block_invoke_2()
{
  result = 0;
  *&v1.componentType = xmmword_18F901880;
  v1.componentFlagsMask = 0;
  do
  {
    result = AudioComponentFindNext(result, &v1);
  }

  while (result);
  return result;
}

std::string *swix::connection_config::connection_config(std::string *this, const swix::connection_config *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 6);
  this[2].__r_.__value_.__r.__words[0] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    this[2].__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  v7 = *(a2 + 7);
  this[2].__r_.__value_.__l.__size_ = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *(a2 + 8);
  LOWORD(this[3].__r_.__value_.__l.__data_) = *(a2 + 36);
  this[2].__r_.__value_.__r.__words[2] = v8;
  std::__optional_copy_base<swix::timeout_config,false>::__optional_copy_base[abi:ne200100](&this[3].__r_.__value_.__s.__data_[8], a2 + 80);
  return this;
}

void sub_18F613874(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *AudioConverterXPC_Client::AudioConverterXPC_Client(void *a1, __int128 *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  std::optional<swix::connection_config>::optional[abi:ne200100](&v5, a2);
  swix::ipc_interface::ipc_interface();
  if (v11[40] == 1)
  {
    if (v11[32] == 1)
    {
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11);
    }

    if (object)
    {
      dispatch_release(object);
    }

    xpc_release(v9);
    v9 = 0;
    if (v8 < 0)
    {
      operator delete(__p);
    }

    if (v6 < 0)
    {
      operator delete(v5);
    }
  }

  *a1 = &unk_1F033FD28;
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F6139A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_copy_base<swix::timeout_config,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[40] = 0;
  if (*(a2 + 40) == 1)
  {
    *a1 = *a2;
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100]((a1 + 8), a2 + 8);
    a1[40] = 1;
  }

  return a1;
}

void sub_18F613A24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<swix::connection_config>::optional[abi:ne200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(a1 + 48) = *(a2 + 6);
    v6 = xpc_null_create();
    *(a1 + 56) = *(a2 + 7);
    *(a2 + 6) = v6;
    *(a2 + 7) = 0;
    v7 = *(a2 + 8);
    *(a1 + 72) = *(a2 + 36);
    *(a1 + 64) = v7;
    *(a1 + 80) = 0;
    *(a1 + 120) = 0;
    if (*(a2 + 120) == 1)
    {
      *(a1 + 80) = *(a2 + 10);
      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](a1 + 88, a2 + 88);
      *(a1 + 120) = 1;
    }

    *(a1 + 128) = 1;
  }

  return a1;
}

void swix::connection::activate(swix::connection *this)
{
  swix::connection::xpc_connection(&connection, this);
  xpc_connection_activate(connection);
  xpc_release(connection);
}

void ___ZL32AudioConverterExecuteWorkaroundsv_block_invoke()
{
  v21 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 bundleIdentifier];
    v3 = v2;
    if (!v2)
    {
LABEL_23:

      goto LABEL_24;
    }

    if ([v2 isEqualToString:@"com.apple.mobilegarageband"])
    {
      v4 = [v1 infoDictionary];
      v5 = v4;
      if (v4 && ([v4 objectForKeyedSubscript:@"CFBundleVersion"], v6 = objc_claimAutoreleasedReturnValue(), (v7 = v6) != 0))
      {
        v8 = [v6 intValue];

        if (v8 >> 1 > 0xA22)
        {
          goto LABEL_13;
        }
      }

      else
      {

        v8 = 0;
      }

      ACv2Workarounds::fix84702776_86723525_86479548_89800354_SinglePacketDesc = 1;
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v9 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = "ACv2Workarounds.mm";
        v15 = 1024;
        v16 = 41;
        v17 = 2112;
        v18 = v3;
        v19 = 1024;
        LODWORD(v20) = v8;
        _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@ 0x%x: fix84702776_86723525_86479548_89800354_SinglePacketDesc", &v13, 0x22u);
      }
    }

LABEL_13:
    if (([v3 hasPrefix:@"com.iqiyi."] & 1) != 0 || objc_msgSend(v3, "hasPrefix:", @"com.qiyi."))
    {
      ACv2Workarounds::fix84702776_86723525_86479548_89800354_SinglePacketDesc = 1;
    }

    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v10 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = "ACv2Workarounds.mm";
      v13 = 136315906;
      v15 = 1024;
      if (ACv2Workarounds::fix84702776_86723525_86479548_89800354_SinglePacketDesc)
      {
        v11 = "true";
      }

      else
      {
        v11 = "false";
      }

      v16 = 51;
      v17 = 2112;
      v18 = v3;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@: fix84702776_86723525_86479548_89800354_SinglePacketDesc: %s", &v13, 0x26u);
    }

    goto LABEL_23;
  }

LABEL_24:

  v12 = *MEMORY[0x1E69E9840];
}

void ExtAudioFile::SetClientFormat(ExtAudioFile *this, AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  outPropertyData[3] = *MEMORY[0x1E69E9840];
  if (a2->mFormatID != 1819304813)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(outPropertyData, 0xFFFEFBFD);
      *inSpecifier = 136315906;
      *&inSpecifier[4] = "ExtAudioFile.cpp";
      *&inSpecifier[12] = 1024;
      *&inSpecifier[14] = 638;
      v52 = 2080;
      v53 = outPropertyData;
      v54 = 2080;
      v55 = "non-PCM client format on audio file";
      _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", inSpecifier, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "non-PCM client format on audio file", -66563);
  }

  if (!*(this + 58) || !CAStreamBasicDescription::IsEquivalent((this + 224), a2, a3))
  {
    v12 = *(this + 19);
    if (v12)
    {
      AudioConverterDispose(v12);
      *(this + 19) = 0;
    }

    CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(this + 40, 0);
    v13 = *&a2->mSampleRate;
    v14 = *&a2->mBytesPerPacket;
    *(this + 32) = *&a2->mBitsPerChannel;
    *(this + 14) = v13;
    *(this + 15) = v14;
    v8 = 1;
    if (!a3)
    {
      goto LABEL_5;
    }

LABEL_10:
    v11 = CAAudioChannelLayout::operator==() ^ 1;
    if (*&a3->mSampleRate && CAAudioChannelLayout::NumberChannels((*&a3->mSampleRate + 16), v10))
    {
      if (*&a3->mSampleRate)
      {
        v15 = CAAudioChannelLayout::NumberChannels((*&a3->mSampleRate + 16), v10);
      }

      else
      {
        v15 = 0;
      }

      if (v15 != *(this + 63))
      {
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(outPropertyData, 0xFFFEFBFC);
          *inSpecifier = 136315906;
          *&inSpecifier[4] = "ExtAudioFile.cpp";
          *&inSpecifier[12] = 1024;
          *&inSpecifier[14] = 653;
          v52 = 2080;
          v53 = outPropertyData;
          v54 = 2080;
          v55 = "inappropriate channel map";
          _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", inSpecifier, 0x26u);
        }

        v41 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v41, "inappropriate channel map", -66564);
      }

      CAAudioChannelLayout::operator=();
    }

    goto LABEL_18;
  }

  v8 = 0;
  if (a3)
  {
    goto LABEL_10;
  }

LABEL_5:
  v9 = *(this + 34);
  if (!v9)
  {
    v11 = 0;
LABEL_29:
    v22 = 1;
    goto LABEL_30;
  }

  v11 = CAAudioChannelLayout::NumberChannels((v9 + 16), v6) != 0;
LABEL_18:
  v16 = *(this + 34);
  if (!v16)
  {
    goto LABEL_29;
  }

  if (!CAAudioChannelLayout::NumberChannels((v16 + 16), v10))
  {
    goto LABEL_29;
  }

  v18 = *(this + 33);
  if (!v18)
  {
    goto LABEL_29;
  }

  if (!CAAudioChannelLayout::NumberChannels((v18 + 16), v17))
  {
    goto LABEL_29;
  }

  v20 = *(this + 33);
  v19 = *(this + 34);
  if (v19 == v20)
  {
    goto LABEL_29;
  }

  LODWORD(outPropertyData[0]) = 0;
  ioPropertyDataSize.mType = 4;
  *inSpecifier = v19 + 16;
  *&inSpecifier[8] = v20 + 16;
  if (AudioFormatGetProperty(0x63686571u, 0x10u, inSpecifier, &ioPropertyDataSize.mType, outPropertyData))
  {
    v21 = 1;
  }

  else
  {
    v21 = LODWORD(outPropertyData[0]) == 0;
  }

  v22 = !v21;
LABEL_30:
  v23 = *(this + 19);
  if (v23)
  {
    v24 = v8;
  }

  else
  {
    v24 = 1;
  }

  if ((v24 & 1) != 0 || v11)
  {
    if ((CAStreamBasicDescription::IsEquivalent((this + 224), (this + 168), v7) & v22) != 1 || *(this + 160) == 1)
    {
      v25 = *(this + 8);
      if ((v25 - 2) >= 2)
      {
        if (v25 != 1)
        {
          if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(outPropertyData, 0xFFFEFBFB);
            *inSpecifier = 136315906;
            *&inSpecifier[4] = "ExtAudioFile.cpp";
            *&inSpecifier[12] = 1024;
            *&inSpecifier[14] = 746;
            v52 = 2080;
            v53 = outPropertyData;
            v54 = 2080;
            v55 = "audio file format not yet known";
            _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", inSpecifier, 0x26u);
          }

          v42 = __cxa_allocate_exception(0x110uLL);
          CAXException::CAXException(v42, "audio file format not yet known", -66565);
        }

        if (!v23)
        {
          v30 = *(this + 41);
          if (v30)
          {
            v31 = *(this + 44);
            ioPropertyDataSize.mType = 1633969507;
            ioPropertyDataSize.mSubType = v31;
            ioPropertyDataSize.mManufacturer = v30;
            v32 = AudioConverterNewSpecific((this + 168), (this + 224), 1u, &ioPropertyDataSize, this + 19);
            if (v32)
            {
              if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
              {
                CAX4CCString::CAX4CCString(outPropertyData, v32);
                *inSpecifier = 136315906;
                *&inSpecifier[4] = "ExtAudioFile.cpp";
                *&inSpecifier[12] = 1024;
                *&inSpecifier[14] = 694;
                v52 = 2080;
                v53 = outPropertyData;
                v54 = 2080;
                v55 = "create audio converter";
                _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", inSpecifier, 0x26u);
              }

              v33 = __cxa_allocate_exception(0x110uLL);
              CAXException::CAXException(v33, "create audio converter", v32);
            }
          }

          else
          {
            v36 = AudioConverterNewWithOptions((this + 168));
            if (v36)
            {
              v45 = v36;
              if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
              {
                CAX4CCString::CAX4CCString(outPropertyData, v45);
                *inSpecifier = 136315906;
                *&inSpecifier[4] = "ExtAudioFile.cpp";
                *&inSpecifier[12] = 1024;
                *&inSpecifier[14] = 696;
                v52 = 2080;
                v53 = outPropertyData;
                v54 = 2080;
                v55 = "create audio converter";
                _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", inSpecifier, 0x26u);
              }

              v46 = __cxa_allocate_exception(0x110uLL);
              CAXException::CAXException(v46, "create audio converter", v45);
            }
          }
        }

        v37 = *(this + 37);
        if (v37)
        {
          ExtAudioFile::SetConverterProperty(this, 1684891491, *(this + 76), v37, *(this + 44) == 1819304813);
        }

        ExtAudioFile::SetConverterChannelLayout(this, 0, (this + 264));
        ExtAudioFile::SetConverterChannelLayout(this, 1, (this + 272));
        v38 = *(this + 19);
        v50 = 1886546285;
        v49 = 8;
        v47 = 0;
        *&ioPropertyDataSize.mType = &v47;
        outPropertyData[0] = &v50;
        outPropertyData[1] = &v49;
        outPropertyData[2] = &ioPropertyDataSize;
        *inSpecifier = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
        *&inSpecifier[8] = outPropertyData;
        with_resolved(v38, inSpecifier);
      }

      else
      {
        if (!v23)
        {
          v26 = *(this + 41);
          if (v26)
          {
            v27 = *(this + 44);
            ioPropertyDataSize.mType = 1634037347;
            ioPropertyDataSize.mSubType = v27;
            ioPropertyDataSize.mManufacturer = v26;
            v28 = AudioConverterNewSpecific((this + 224), (this + 168), 1u, &ioPropertyDataSize, this + 19);
            if (v28)
            {
              if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
              {
                CAX4CCString::CAX4CCString(outPropertyData, v28);
                *inSpecifier = 136315906;
                *&inSpecifier[4] = "ExtAudioFile.cpp";
                *&inSpecifier[12] = 1024;
                *&inSpecifier[14] = 729;
                v52 = 2080;
                v53 = outPropertyData;
                v54 = 2080;
                v55 = "create audio converter";
                _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", inSpecifier, 0x26u);
              }

              v29 = __cxa_allocate_exception(0x110uLL);
              CAXException::CAXException(v29, "create audio converter", v28);
            }
          }

          else
          {
            v34 = AudioConverterNewWithOptions((this + 224));
            if (v34)
            {
              v43 = v34;
              if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
              {
                CAX4CCString::CAX4CCString(outPropertyData, v43);
                *inSpecifier = 136315906;
                *&inSpecifier[4] = "ExtAudioFile.cpp";
                *&inSpecifier[12] = 1024;
                *&inSpecifier[14] = 731;
                v52 = 2080;
                v53 = outPropertyData;
                v54 = 2080;
                v55 = "create audio converter";
                _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", inSpecifier, 0x26u);
              }

              v44 = __cxa_allocate_exception(0x110uLL);
              CAXException::CAXException(v44, "create audio converter", v43);
            }
          }
        }

        v35 = CADeprecated::CABufferList::New("", *(this + 59), *(this + 63));
        CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(this + 40, v35);
        ExtAudioFile::SetConverterChannelLayout(this, 0, (this + 272));
        ExtAudioFile::SetConverterChannelLayout(this, 1, (this + 264));
        if (*(this + 8) == 3)
        {
          ExtAudioFile::FileFormatChanged(this, 0, 0, 0);
        }
      }
    }

    ExtAudioFile::UpdateInternals(this);
  }

  v39 = *MEMORY[0x1E69E9840];
}

OSStatus ExtAudioFileSetProperty(ExtAudioFileRef inExtAudioFile, ExtAudioFilePropertyID inPropertyID, UInt32 inPropertyDataSize, const void *inPropertyData)
{
  v31[3] = *MEMORY[0x1E69E9840];
  v7 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v7)
  {
    LODWORD(v9) = -50;
    goto LABEL_49;
  }

  v8 = v7;
  if (inPropertyID <= 1668112749)
  {
    if (inPropertyID <= 1633903461)
    {
      if (inPropertyID == 593916525)
      {
        inPropertyDataa = *inPropertyData;
        if (*(v7 + 188) == 1)
        {
          v18 = AudioFileSetProperty(*(v7 + 16), 0x70636E74u, 8u, &inPropertyDataa);
          if (!v18)
          {
            goto LABEL_48;
          }

          if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(v31, v18);
            LODWORD(buf.mSampleRate) = 136315906;
            *(&buf.mSampleRate + 4) = "ExtAudioFile.cpp";
            LOWORD(buf.mFormatFlags) = 1024;
            *(&buf.mFormatFlags + 2) = 501;
            HIWORD(buf.mBytesPerPacket) = 2080;
            *&buf.mFramesPerPacket = v31;
            LOWORD(buf.mChannelsPerFrame) = 2080;
            *(&buf.mChannelsPerFrame + 2) = "Couldn't set number of packets on audio file";
            _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", &buf, 0x26u);
          }

          exception = __cxa_allocate_exception(0x110uLL);
          CAXException::CAXException(exception, "Couldn't set number of packets on audio file", v18);
        }

        else
        {
          if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(v31, 0xFFFEFBFA);
            LODWORD(buf.mSampleRate) = 136315906;
            *(&buf.mSampleRate + 4) = "ExtAudioFile.cpp";
            LOWORD(buf.mFormatFlags) = 1024;
            *(&buf.mFormatFlags + 2) = 500;
            HIWORD(buf.mBytesPerPacket) = 2080;
            *&buf.mFramesPerPacket = v31;
            LOWORD(buf.mChannelsPerFrame) = 2080;
            *(&buf.mChannelsPerFrame + 2) = "SetNumberFrames only supported for PCM";
            _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", &buf, 0x26u);
          }

          exception = __cxa_allocate_exception(0x110uLL);
          CAXException::CAXException(exception, "SetNumberFrames only supported for PCM", -66566);
        }
      }

      if (inPropertyID == 610889331)
      {
        v17 = *inPropertyData;
        *(v7 + 416) = *inPropertyData != 0;
        if (v17)
        {
          *(v7 + 424) = 0;
        }

        v9 = *(v7 + 152);
        if (v9)
        {
          v26 = v17 != 0;
          v29 = 610889331;
          v28 = 4;
          inPropertyDataa = &v26;
          v31[0] = &v29;
          v31[1] = &v28;
          v31[2] = &inPropertyDataa;
          *&buf.mSampleRate = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
          *&buf.mFormatID = v31;
          with_resolved(v9, &buf);
          goto LABEL_48;
        }

        goto LABEL_49;
      }
    }

    else
    {
      switch(inPropertyID)
      {
        case 0x61636366u:
          buf.mSampleRate = *inPropertyData;
          ExtAudioFile::SetConverterProperty(v7, 1633906803, 8, &buf, 0);
          goto LABEL_48;
        case 0x63636C6Fu:
          CAAudioChannelLayout::CAAudioChannelLayout(&buf, inPropertyData);
          ExtAudioFile::SetClientFormat(v8, (v8 + 224), &buf);
          goto LABEL_35;
        case 0x63666D74u:
          if (inPropertyDataSize > 0x23)
          {
            v10 = *(inPropertyData + 1);
            *&buf.mSampleRate = *inPropertyData;
            *&buf.mBytesPerPacket = v10;
            *&buf.mBitsPerChannel = *(inPropertyData + 4);
            ExtAudioFile::SetClientFormat(v7, &buf, 0);
            goto LABEL_48;
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf.mSampleRate) = 136315394;
            *(&buf.mSampleRate + 4) = "ExtendedAudioFile.cpp";
            LOWORD(buf.mFormatFlags) = 1024;
            *(&buf.mFormatFlags + 2) = 369;
            _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  bad property size", &buf, 0x12u);
          }

          v23 = __cxa_allocate_exception(4uLL);
          *v23 = -66562;
LABEL_58:
          __cxa_throw(v23, v24, 0);
      }
    }

LABEL_57:
    v23 = __cxa_allocate_exception(4uLL);
    *v23 = -66561;
    v24 = MEMORY[0x1E69E5478];
    goto LABEL_58;
  }

  if (inPropertyID > 1768907365)
  {
    switch(inPropertyID)
    {
      case 0x696F6266u:
        v20 = *inPropertyData;
        if ((*(v7 + 120) & 1) == 0)
        {
          v21 = *(v7 + 112);
          if (v21)
          {
            MEMORY[0x193ADF1F0](v21, 0x1000C8077774924);
          }
        }

        *(v8 + 112) = v20;
        *(v8 + 120) = *&v20 != 0;
        break;
      case 0x696F6273u:
        *(v7 + 88) = *inPropertyData;
        break;
      case 0x78707469u:
        LODWORD(v9) = 0;
        v11 = *inPropertyData;
        *(v8 + 400) = *inPropertyData;
        v12 = *(inPropertyData + 2);
        *(v8 + 408) = v12;
        v13 = *(inPropertyData + 3);
        *(v8 + 412) = v13;
        v14 = *&v11 - 1;
        v16 = (v12 & v13) != 0xFFFFFFFF || v14 < 0xFFFFFFFFFFFFFFFELL;
        *(v8 + 392) = v16;
        goto LABEL_49;
      default:
        goto LABEL_57;
    }

    ExtAudioFile::AllocateBuffers(v8, 0);
    goto LABEL_48;
  }

  if (inPropertyID != 1668112750)
  {
    if (inPropertyID != 1717791855)
    {
      if (inPropertyID == 1717792374)
      {
        *(v7 + 160) = *inPropertyData != 0;
        ExtAudioFile::SetClientFormat(v7, (v7 + 224), 0);
LABEL_48:
        LODWORD(v9) = 0;
        goto LABEL_49;
      }

      goto LABEL_57;
    }

    CAAudioChannelLayout::CAAudioChannelLayout(&buf, inPropertyData);
    CAAudioChannelLayout::operator=();
    if (*(v8 + 32) != 1)
    {
      ExtAudioFile::FileFormatChanged(v8, 0, 0, 0);
    }

LABEL_35:
    MEMORY[0x193ADE5D0](&buf);
    goto LABEL_48;
  }

  LODWORD(v9) = 0;
  *(v8 + 164) = *inPropertyData;
LABEL_49:
  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_18F614DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __cxa_free_exception(v13);
    if (a2 == 4)
    {
      v16 = *(__cxa_begin_catch(exception_object) + 2);
      __cxa_end_catch();
    }

    else if (a2 == 3)
    {
      v17 = *(__cxa_begin_catch(exception_object) + 66);
      __cxa_end_catch();
    }

    else
    {
      v18 = __cxa_begin_catch(exception_object);
      if (a2 == 2)
      {
        v19 = *v18;
        __cxa_end_catch();
      }

      else
      {
        __cxa_end_catch();
      }
    }

    JUMPOUT(0x18F614C18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getAuditToken(integer_t *a1)
{
  task_info_outCnt = 8;
  result = task_info(*MEMORY[0x1E69E9A60], 0xFu, a1, &task_info_outCnt);
  if (result)
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ___Z25_CAInitDefaultDeferredLogv_block_invoke()
{
  v0 = CADefaultLog();
  caulk::deferred_logger::create_v(&v4, v0, v1);
  v2 = v4;
  v4 = 0uLL;
  v3 = *(&gCADefaultDeferredLog + 1);
  gCADefaultDeferredLog = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (*(&v4 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
    }
  }
}

__objc2_class *CADefaultLog()
{
  v0 = AudioComponentRegistrarClient;
  {
    v0 = AudioComponentRegistrarClient;
    if (v2)
    {
      CADefaultLog::global = os_log_create("com.apple.coreaudio", "default");
      v0 = AudioComponentRegistrarClient;
    }
  }

  return v0[17].superclass;
}

uint64_t AudioFileObject::PacketToRollDistance(AudioFileObject *this, AudioPacketRollDistanceTranslation *a2)
{
  mPacket = *(this + 32);
  if (!mPacket)
  {
    v4 = *(this + 8);
    ioPropertyDataSize = 4;
    inSpecifier = v4;
    outPropertyData = 0;
    AudioFormatGetProperty(0x64726C6Cu, 4u, &inSpecifier, &ioPropertyDataSize, &outPropertyData);
    mPacket = outPropertyData;
  }

  if (a2->mPacket < mPacket)
  {
    mPacket = a2->mPacket;
  }

  a2->mRollDistance = mPacket;
  return 0;
}

uint64_t ExtAudioFile::ReadInputProc(ExtAudioFile *this, OpaqueAudioConverter *a2, AudioStreamPacketDescription **a3, AudioBufferList *a4, AudioStreamPacketDescription **a5, void *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v10 = a5 + 12;
    v11 = *(a5 + 23);
  }

  else
  {
    v12 = *(a5 + 70);
    if (!v12)
    {
      v16 = 4294900729;
      goto LABEL_34;
    }

    v11 = *(a3 + 3) / v12;
    if (v11 >= *a2)
    {
      v11 = *a2;
    }

    v10 = a3;
  }

  if (a5[16] && v11 >= *(a5 + 34))
  {
    v11 = *(a5 + 34);
  }

  v13 = *(a5 + 77);
  if (v11 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  ioNumPackets = ExtAudioFile::AlignIO(a5, v14);
  if (!ioNumPackets)
  {
    goto LABEL_28;
  }

  ioNumBytes = *(v10 + 3);
  if (*(a5 + 416) == 1)
  {
    v15 = mach_absolute_time();
  }

  else
  {
    v15 = 0;
  }

  v16 = AudioFileReadPacketData(a5[2], *(a5 + 29), &ioNumBytes, a5[16], a5[6], &ioNumPackets, v10[2]);
  if (*(a5 + 416) == 1)
  {
    a5[53] = (a5[53] + mach_absolute_time() - v15);
  }

  if (v16)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v28 = "ExtAudioFile.cpp";
      v29 = 1024;
      v30 = 1362;
      v31 = 1024;
      v32 = v16;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Error %d from AudioFileReadPackets!!!\n", buf, 0x18u);
    }

    goto LABEL_34;
  }

  v17 = ioNumPackets;
  if (!ioNumPackets)
  {
LABEL_28:
    v16 = 0;
    *a2 = 0;
    *(a3 + 3) = 0;
    goto LABEL_34;
  }

  if (a4)
  {
    *&a4->mNumberBuffers = a5[16];
  }

  *(a3 + 3) = ioNumBytes;
  a3[2] = v10[2];
  a5[6] = (a5[6] + v17);
  if (*(a5 + 61) != 1)
  {
    v18 = *(a5 + 47);
    if (v18)
    {
      v19 = (a5[7] + (v18 * v17));
    }

    else
    {
      v19 = a5[7];
      p_mVariableFramesInPacket = &a5[16]->mVariableFramesInPacket;
      v21 = v17;
      do
      {
        v22 = *p_mVariableFramesInPacket;
        p_mVariableFramesInPacket += 4;
        v19 = (v19 + v22);
        --v21;
      }

      while (v21);
    }

    a5[7] = v19;
  }

  v16 = 0;
  *a2 = v17;
LABEL_34:
  v23 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_18F6153C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

OSStatus AudioFileReadPacketData(AudioFileID inAudioFile, Boolean inUseCache, UInt32 *ioNumBytes, AudioStreamPacketDescription *outPacketDescriptions, SInt64 inStartingPacket, UInt32 *ioNumPackets, void *outBuffer)
{
  if (!ioNumPackets)
  {
    return -50;
  }

  v7 = -50;
  if ((inStartingPacket & 0x8000000000000000) == 0 && *ioNumPackets)
  {
    v14 = inAudioFile;
    v15 = 0;
    if (AudioFileLocker::Lock(&v14))
    {
      if (v15)
      {
        if (!ioNumBytes && outPacketDescriptions && !outBuffer)
        {
          v11 = (*(*v15 + 104))();
          goto LABEL_16;
        }

        if (ioNumBytes && *ioNumBytes)
        {
          v11 = (*(*v15 + 112))();
LABEL_16:
          v12 = v11;
          AudioFileLocker::~AudioFileLocker(&v14);
          if (v12 == -39)
          {
            return 0;
          }

          else
          {
            return v12;
          }
        }
      }
    }

    else
    {
      v7 = -38;
    }

    AudioFileLocker::~AudioFileLocker(&v14);
  }

  return v7;
}

void sub_18F615518(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
    __cxa_end_catch();
    JUMPOUT(0x18F6154F0);
  }

  __cxa_end_catch();
  JUMPOUT(0x18F6154F8);
}