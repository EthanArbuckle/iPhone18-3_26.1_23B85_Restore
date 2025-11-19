void sub_1BA659CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, char a27, int a28, char a29)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v32 && a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (v31)
  {

    if (a24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a24);
    }
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  TraceMethod::~TraceMethod(&a27);
  TraceWrapper::~TraceWrapper(&a29);
  _Unwind_Resume(a1);
}

uint64_t ___ZN29AVVCAudioQueueRecordingEngine13setupDSPGraphEv_block_invoke(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if ((*(v3 + 848) & 1) == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_14:
        *(v3 + 848) = 1;
        goto LABEL_19;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "AVVCAudioQueueRecordingEngine.mm";
      v13 = 1024;
      v14 = 836;
      v15 = 1024;
      v16 = a2;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVC: AVAudioEngine input rendering block call with numFrames: %d", &v11, 0x18u);
    }

    goto LABEL_14;
  }

  v4 = *(v3 + 852);
  if (v4 < 19)
  {
    *(v3 + 852) = v4 + 1;
  }

  else
  {
    *(v3 + 852) = 0;
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315650;
      v12 = "AVVCAudioQueueRecordingEngine.mm";
      v13 = 1024;
      v14 = 841;
      v15 = 1024;
      v16 = a2;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVC: AVAudioEngine input rendering block call with numFrames: %d", &v11, 0x18u);
    }
  }

LABEL_19:
  result = [*(v3 + 784) audioBufferList];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AVVCAudioQueueRecordingEngine::Initialize(AVVCAudioQueueRecordingEngine *this)
{
  TraceMethod::TraceMethod(v2, "Initialize");
  TraceMethod::~TraceMethod(v2);
  return 0;
}

uint64_t AVVCAudioQueueRecordingEngine::ShouldUseAudioConverter(AVVCAudioQueueRecordingEngine *this, const AudioStreamBasicDescription *a2)
{
  if (a2->mFormatID != 1819304813)
  {
    return 1;
  }

  if ((a2->mFormatFlags & 0x20) == 0)
  {
    return 0;
  }

  mChannelsPerFrame = a2->mChannelsPerFrame;
  if (mChannelsPerFrame != 2)
  {
    return mChannelsPerFrame > 1;
  }

  v5 = IsDSPGraphSupported() ^ 1;
  if (*(this + 33) == 1)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

uint64_t AVVCAudioQueueRecordingEngine::createAudioConverter(AVVCAudioQueueRecordingEngine *this, CAStreamBasicDescription *a2, NSDictionary *a3, unsigned int *a4)
{
  v178 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v175 = "AVVCAudioQueueRecordingEngine.mm";
    v176 = 1024;
    v177 = 581;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d createAudioConverter: INITIAL AUDIOCONVERTER OUTPUT FORMAT:", buf, 0x12u);
  }

LABEL_8:
  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  v13 = v11;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    CAStreamBasicDescription::AsString((this + 24), buf, 0x100uLL, v14, v15);
    LODWORD(v172.var0) = 136315650;
    *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
    LOWORD(v172.var2) = 1024;
    *(&v172.var2 + 2) = 583;
    HIWORD(v172.var3) = 2080;
    *&v172.var4 = buf;
    _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", &v172, 0x1Cu);
  }

LABEL_15:
  v16 = *(this + 40);
  *&inDestinationFormat.mSampleRate = *(this + 24);
  *&inDestinationFormat.mBytesPerPacket = v16;
  *&inDestinationFormat.mBitsPerChannel = *(this + 7);
  if (*(this + 102) && *(this + 103))
  {
    if (kAVVCScope)
    {
      v17 = *kAVVCScope;
      if (!v17)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    v19 = v17;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      CAStreamBasicDescription::AsString(a2, buf, 0x100uLL, v20, v21);
      LODWORD(v172.var0) = 136315650;
      *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
      LOWORD(v172.var2) = 1024;
      *(&v172.var2 + 2) = 587;
      HIWORD(v172.var3) = 2080;
      *&v172.var4 = buf;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d inASBD : %s", &v172, 0x1Cu);
    }

LABEL_24:
    var6 = a2->var6;
    if ((inDestinationFormat.mFormatFlags & 0x20) != 0)
    {
      mChannelsPerFrame = 1;
    }

    else
    {
      mChannelsPerFrame = inDestinationFormat.mChannelsPerFrame;
      if (!inDestinationFormat.mChannelsPerFrame)
      {
        v24 = (inDestinationFormat.mBitsPerChannel + 7) >> 3;
LABEL_29:
        inDestinationFormat.mBytesPerFrame = v24;
        inDestinationFormat.mChannelsPerFrame = var6;
        inDestinationFormat.mBytesPerPacket = v24;
        inDestinationFormat.mFramesPerPacket = 1;
        inDestinationFormat.mFormatFlags |= 0x20u;
        goto LABEL_30;
      }
    }

    v24 = inDestinationFormat.mBytesPerFrame / mChannelsPerFrame;
    goto LABEL_29;
  }

LABEL_30:
  v25 = (this + 768);
  if (!*(this + 96))
  {
    goto LABEL_44;
  }

  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v26 = *kAVVCScope;
      if (v26)
      {
        v27 = v26;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v172.var0) = 136315394;
          *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
          LOWORD(v172.var2) = 1024;
          *(&v172.var2 + 2) = 595;
          _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d createAudioConverter: AudioConverter already exists. Disposing old instance.", &v172, 0x12u);
        }
      }
    }
  }

  v28 = AudioConverterDispose(*v25);
  if (kAVVCScope)
  {
    v29 = *kAVVCScope;
    if (!v29)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v29 = MEMORY[0x1E69E9C10];
    v30 = MEMORY[0x1E69E9C10];
  }

  v31 = v29;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v172.var0) = 136315650;
    *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
    LOWORD(v172.var2) = 1024;
    *(&v172.var2 + 2) = 597;
    HIWORD(v172.var3) = 1024;
    v172.var4 = v28;
    _os_log_impl(&dword_1BA5AC000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d createAudioConverter: AudioConverterDispose error(%d)", &v172, 0x18u);
  }

LABEL_44:
  v32 = AudioConverterNew(a2, &inDestinationFormat, this + 96);
  Property = v32;
  if (v32)
  {
    if ((v32 + 199999) >= 0x61A7F)
    {
      if (kAVVCScope)
      {
        v34 = *kAVVCScope;
        if (!v34)
        {
          goto LABEL_330;
        }
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
        v41 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v172.var0) = 136315650;
        *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
        LOWORD(v172.var2) = 1024;
        *(&v172.var2 + 2) = 600;
        HIWORD(v172.var3) = 1024;
        v172.var4 = Property;
        _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: createAudioConverter: AudioConverterNew err %{audio:4CC}d", &v172, 0x18u);
      }
    }

    else
    {
      if (kAVVCScope)
      {
        v34 = *kAVVCScope;
        if (!v34)
        {
          goto LABEL_330;
        }
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
        v40 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v172.var0) = 136315650;
        *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
        LOWORD(v172.var2) = 1024;
        *(&v172.var2 + 2) = 600;
        HIWORD(v172.var3) = 1024;
        v172.var4 = Property;
        _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: createAudioConverter: AudioConverterNew err %d", &v172, 0x18u);
      }
    }

    goto LABEL_349;
  }

  v35 = v7;
  v36 = v35;
  *v166 = 0;
  if (v35 && *v25)
  {
    inPropertyData = 0;
    if (getUInt32ForKey(v35, &cfstr_Avsamplerateco_0.isa, &inPropertyData, v166))
    {
      v37 = AudioConverterSetProperty(*v25, 0x73726371u, 4u, &inPropertyData);
      v38 = v37;
      *v166 = v37;
      if (!v37)
      {
        goto LABEL_81;
      }

      if ((v37 + 199999) < 0x61A7F)
      {
        if (kAVVCScope)
        {
          v39 = *kAVVCScope;
          if (!v39)
          {
            goto LABEL_81;
          }
        }

        else
        {
          v39 = MEMORY[0x1E69E9C10];
          v42 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v172.var0) = 136315650;
          *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
          LOWORD(v172.var2) = 1024;
          *(&v172.var2 + 2) = 550;
          HIWORD(v172.var3) = 1024;
          v172.var4 = v38;
          v43 = "%25s:%-5d ERROR: configureRecordConverterFromSettings: kAudioConverterSampleRateConverterQuality err %d";
LABEL_79:
          _os_log_impl(&dword_1BA5AC000, v39, OS_LOG_TYPE_ERROR, v43, &v172, 0x18u);
          goto LABEL_80;
        }

        goto LABEL_80;
      }

      if (kAVVCScope)
      {
        v39 = *kAVVCScope;
        if (!v39)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v39 = MEMORY[0x1E69E9C10];
        v44 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v172.var0) = 136315650;
        *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
        LOWORD(v172.var2) = 1024;
        *(&v172.var2 + 2) = 550;
        HIWORD(v172.var3) = 1024;
        v172.var4 = v38;
        v43 = "%25s:%-5d ERROR: configureRecordConverterFromSettings: kAudioConverterSampleRateConverterQuality err %{audio:4CC}d";
        goto LABEL_79;
      }

LABEL_80:

      goto LABEL_81;
    }

    Property = *v166;
    if (*v166)
    {
      goto LABEL_138;
    }

LABEL_81:
    if (getUInt32ForKey(v36, &cfstr_Avencoderbitra_0.isa, &inPropertyData, v166))
    {
      v45 = AudioConverterSetProperty(*v25, 0x62726174u, 4u, &inPropertyData);
      v46 = v45;
      *v166 = v45;
      if (!v45)
      {
        goto LABEL_112;
      }

      if ((v45 + 199999) < 0x61A7F)
      {
        if (kAVVCScope)
        {
          v47 = *kAVVCScope;
          if (!v47)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v47 = MEMORY[0x1E69E9C10];
          v54 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v172.var0) = 136315650;
          *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
          LOWORD(v172.var2) = 1024;
          *(&v172.var2 + 2) = 555;
          HIWORD(v172.var3) = 1024;
          v172.var4 = v46;
          _os_log_impl(&dword_1BA5AC000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: configureRecordConverterFromSettings: kAudioConverterEncodeBitRate err %d", &v172, 0x18u);
        }

LABEL_102:

        goto LABEL_112;
      }

      if (kAVVCScope)
      {
        v47 = *kAVVCScope;
        if (!v47)
        {
          goto LABEL_112;
        }
      }

      else
      {
        v47 = MEMORY[0x1E69E9C10];
        v55 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v172.var0) = 136315650;
        *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
        LOWORD(v172.var2) = 1024;
        *(&v172.var2 + 2) = 555;
        HIWORD(v172.var3) = 1024;
        v172.var4 = v46;
        _os_log_impl(&dword_1BA5AC000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: configureRecordConverterFromSettings: kAudioConverterEncodeBitRate err %{audio:4CC}d", &v172, 0x18u);
      }

      goto LABEL_102;
    }

    Property = *v166;
    if (*v166)
    {
      goto LABEL_138;
    }

    if (!getUInt32ForKey(v36, &cfstr_Avencoderbitra_1.isa, &inPropertyData, v166))
    {
      Property = *v166;
      if (*v166)
      {
        goto LABEL_138;
      }

LABEL_112:
      if (!getUInt32ForKey(v36, &cfstr_Avencoderbitde.isa, &inPropertyData, v166))
      {
        Property = *v166;
        if (*v166)
        {
          goto LABEL_138;
        }

        goto LABEL_131;
      }

      v56 = AudioConverterSetProperty(*v25, 0x61636264u, 4u, &inPropertyData);
      v57 = v56;
      *v166 = v56;
      if (!v56)
      {
LABEL_131:
        if (getUInt32ForKey(v36, &cfstr_Avencoderquali.isa, &inPropertyData, v166))
        {
          v62 = AudioConverterSetProperty(*v25, 0x63647175u, 4u, &inPropertyData);
          v63 = v62;
          *v166 = v62;
          if (!v62)
          {
            goto LABEL_150;
          }

          if ((v62 + 199999) < 0x61A7F)
          {
            if (kAVVCScope)
            {
              v64 = *kAVVCScope;
              if (!v64)
              {
                goto LABEL_150;
              }
            }

            else
            {
              v64 = MEMORY[0x1E69E9C10];
              v65 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v172.var0) = 136315650;
              *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
              LOWORD(v172.var2) = 1024;
              *(&v172.var2 + 2) = 573;
              HIWORD(v172.var3) = 1024;
              v172.var4 = v63;
              v66 = "%25s:%-5d ERROR: configureRecordConverterFromSettings: kAudioConverterCodecQuality err %d";
LABEL_148:
              _os_log_impl(&dword_1BA5AC000, v64, OS_LOG_TYPE_ERROR, v66, &v172, 0x18u);
              goto LABEL_149;
            }

            goto LABEL_149;
          }

          if (kAVVCScope)
          {
            v64 = *kAVVCScope;
            if (!v64)
            {
              goto LABEL_150;
            }
          }

          else
          {
            v64 = MEMORY[0x1E69E9C10];
            v67 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v172.var0) = 136315650;
            *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
            LOWORD(v172.var2) = 1024;
            *(&v172.var2 + 2) = 573;
            HIWORD(v172.var3) = 1024;
            v172.var4 = v63;
            v66 = "%25s:%-5d ERROR: configureRecordConverterFromSettings: kAudioConverterCodecQuality err %{audio:4CC}d";
            goto LABEL_148;
          }

LABEL_149:

          goto LABEL_150;
        }

        Property = *v166;
        if (!*v166)
        {
          goto LABEL_150;
        }

LABEL_138:

        goto LABEL_330;
      }

      if ((v56 + 199999) >= 0x61A7F)
      {
        if (kAVVCScope)
        {
          v58 = *kAVVCScope;
          if (!v58)
          {
            goto LABEL_131;
          }
        }

        else
        {
          v58 = MEMORY[0x1E69E9C10];
          v61 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_130;
        }

        LODWORD(v172.var0) = 136315650;
        *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
        LOWORD(v172.var2) = 1024;
        *(&v172.var2 + 2) = 568;
        HIWORD(v172.var3) = 1024;
        v172.var4 = v57;
        v60 = "%25s:%-5d ERROR: configureRecordConverterFromSettings: kAudioConverterPropertyBitDepthHint err %{audio:4CC}d";
      }

      else
      {
        if (kAVVCScope)
        {
          v58 = *kAVVCScope;
          if (!v58)
          {
            goto LABEL_131;
          }
        }

        else
        {
          v58 = MEMORY[0x1E69E9C10];
          v59 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_130;
        }

        LODWORD(v172.var0) = 136315650;
        *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
        LOWORD(v172.var2) = 1024;
        *(&v172.var2 + 2) = 568;
        HIWORD(v172.var3) = 1024;
        v172.var4 = v57;
        v60 = "%25s:%-5d ERROR: configureRecordConverterFromSettings: kAudioConverterPropertyBitDepthHint err %d";
      }

      _os_log_impl(&dword_1BA5AC000, v58, OS_LOG_TYPE_ERROR, v60, &v172, 0x18u);
LABEL_130:

      goto LABEL_131;
    }

    outPropertyData = *(this + 13) * inPropertyData;
    v48 = AudioConverterSetProperty(*(this + 96), 0x62726174u, 4u, &outPropertyData);
    v49 = v48;
    *v166 = v48;
    if (!v48)
    {
      goto LABEL_112;
    }

    v50 = v48 + 199999;
    v51 = CALog::LogObjIfEnabled(1, kAVVCScope);
    v52 = v51;
    if (v50 >= 0x61A7F)
    {
      if (!v51 || !os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_111;
      }

      LODWORD(v172.var0) = 136315650;
      *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
      LOWORD(v172.var2) = 1024;
      *(&v172.var2 + 2) = 561;
      HIWORD(v172.var3) = 1024;
      v172.var4 = v49;
      v53 = "%25s:%-5d ERROR: configureRecordConverterFromSettings: kAudioConverterEncodeBitRate err %{audio:4CC}d";
    }

    else
    {
      if (!v51 || !os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_111;
      }

      LODWORD(v172.var0) = 136315650;
      *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
      LOWORD(v172.var2) = 1024;
      *(&v172.var2 + 2) = 561;
      HIWORD(v172.var3) = 1024;
      v172.var4 = v49;
      v53 = "%25s:%-5d ERROR: configureRecordConverterFromSettings: kAudioConverterEncodeBitRate err %d";
    }

    _os_log_impl(&dword_1BA5AC000, v52, OS_LOG_TYPE_ERROR, v53, &v172, 0x18u);
LABEL_111:

    goto LABEL_112;
  }

LABEL_150:

  inPropertyData = 0;
  v68 = (*(this + 32) * *(this + 3));
  if (kAVVCScope)
  {
    v69 = *kAVVCScope;
    if (!v69)
    {
      goto LABEL_157;
    }
  }

  else
  {
    v69 = MEMORY[0x1E69E9C10];
    v70 = MEMORY[0x1E69E9C10];
  }

  v71 = v69;
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
  {
    v72 = *(this + 32);
    v73 = *(this + 3);
    LODWORD(v172.var0) = 136316162;
    *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
    LOWORD(v172.var2) = 1024;
    *(&v172.var2 + 2) = 612;
    HIWORD(v172.var3) = 2048;
    *&v172.var4 = v72;
    LOWORD(v172.var6) = 2048;
    *(&v172.var6 + 2) = v73;
    HIWORD(v172.var8) = 1024;
    v173 = v68;
    _os_log_impl(&dword_1BA5AC000, v71, OS_LOG_TYPE_DEBUG, "%25s:%-5d createAudioConverter: initial frames per buffer = dur %.2f * sr %.2f = %u", &v172, 0x2Cu);
  }

LABEL_157:
  if (*(this + 8) != 1936745848)
  {
    goto LABEL_214;
  }

  *v166 = 3;
  v74 = AudioConverterSetProperty(*v25, 0x73656378u, 4u, v166);
  Property = v74;
  if (v74)
  {
    if ((v74 + 199999) >= 0x61A7F)
    {
      if (kAVVCScope)
      {
        v34 = *kAVVCScope;
        if (!v34)
        {
          goto LABEL_330;
        }
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
        v80 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_349;
      }

      LODWORD(v172.var0) = 136315650;
      *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
      LOWORD(v172.var2) = 1024;
      *(&v172.var2 + 2) = 618;
      HIWORD(v172.var3) = 1024;
      v172.var4 = Property;
      v79 = "%25s:%-5d ERROR: createAudioConverter: AudioConverterSetProperty(kAudioCodecPropertySpeexEncodeComplexity) err %{audio:4CC}d";
    }

    else
    {
      if (kAVVCScope)
      {
        v34 = *kAVVCScope;
        if (!v34)
        {
          goto LABEL_330;
        }
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
        v78 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_349;
      }

      LODWORD(v172.var0) = 136315650;
      *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
      LOWORD(v172.var2) = 1024;
      *(&v172.var2 + 2) = 618;
      HIWORD(v172.var3) = 1024;
      v172.var4 = Property;
      v79 = "%25s:%-5d ERROR: createAudioConverter: AudioConverterSetProperty(kAudioCodecPropertySpeexEncodeComplexity) err %d";
    }

    _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_ERROR, v79, &v172, 0x18u);
    goto LABEL_349;
  }

  outPropertyData = 0;
  inPropertyData = 4;
  if (AudioConverterGetProperty(*v25, 0x61667070u, &inPropertyData, &outPropertyData))
  {
    if (*(this + 3) == 8000.0)
    {
      v75 = 160;
    }

    else
    {
      v75 = 320;
    }

    outPropertyData = v75;
  }

  else
  {
    v75 = outPropertyData;
  }

  v76 = v68 / v75 * v75;
  *(this + 11) = v76;
  if (v68 == v68 - v76)
  {
    if (kAVVCScope)
    {
      v77 = *kAVVCScope;
      if (!v77)
      {
LABEL_188:
        v76 = *(this + 11);
        goto LABEL_189;
      }
    }

    else
    {
      v77 = MEMORY[0x1E69E9C10];
      v81 = MEMORY[0x1E69E9C10];
    }

    v82 = v77;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = *(this + 32);
      LODWORD(v172.var0) = 136315906;
      *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
      LOWORD(v172.var2) = 1024;
      *(&v172.var2 + 2) = 630;
      HIWORD(v172.var3) = 1024;
      v172.var4 = v68;
      LOWORD(v172.var5) = 2048;
      *(&v172.var5 + 2) = v83;
      _os_log_impl(&dword_1BA5AC000, v82, OS_LOG_TYPE_ERROR, "%25s:%-5d createAudioConverter: corrupted values??? framesPerBuffer = %u, mRecordBufferDuration = %f", &v172, 0x22u);
    }

    goto LABEL_188;
  }

LABEL_189:
  if (!v76)
  {
    CAVerboseAbort();
  }

  if (v76 >= 0xC81)
  {
    *(this + 11) = v76 >> 1;
  }

  if (kAVVCScope)
  {
    v84 = *kAVVCScope;
    if (!v84)
    {
      goto LABEL_199;
    }
  }

  else
  {
    v84 = MEMORY[0x1E69E9C10];
    v85 = MEMORY[0x1E69E9C10];
  }

  v86 = v84;
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
  {
    v87 = *(this + 11);
    LODWORD(v172.var0) = 136315650;
    *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
    LOWORD(v172.var2) = 1024;
    *(&v172.var2 + 2) = 636;
    HIWORD(v172.var3) = 1024;
    v172.var4 = v87;
    _os_log_impl(&dword_1BA5AC000, v86, OS_LOG_TYPE_DEBUG, "%25s:%-5d createAudioConverter: setting audio converter format to %u frames per packet", &v172, 0x18u);
  }

LABEL_199:
  v88 = AudioConverterSetProperty(*v25, 0x6F666D74u, 0x28u, this + 24);
  Property = v88;
  if (v88)
  {
    if ((v88 + 199999) >= 0x61A7F)
    {
      if (kAVVCScope)
      {
        v34 = *kAVVCScope;
        if (!v34)
        {
          goto LABEL_330;
        }
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
        v146 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_349;
      }

      LODWORD(v172.var0) = 136315650;
      *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
      LOWORD(v172.var2) = 1024;
      *(&v172.var2 + 2) = 638;
      HIWORD(v172.var3) = 1024;
      v172.var4 = Property;
      v145 = "%25s:%-5d ERROR: createAudioConverter: AudioConverterSetProperty(kAudioCodecPropertyCurrentOutputFormat) err %{audio:4CC}d";
    }

    else
    {
      if (kAVVCScope)
      {
        v34 = *kAVVCScope;
        if (!v34)
        {
          goto LABEL_330;
        }
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
        v144 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_349;
      }

      LODWORD(v172.var0) = 136315650;
      *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
      LOWORD(v172.var2) = 1024;
      *(&v172.var2 + 2) = 638;
      HIWORD(v172.var3) = 1024;
      v172.var4 = Property;
      v145 = "%25s:%-5d ERROR: createAudioConverter: AudioConverterSetProperty(kAudioCodecPropertyCurrentOutputFormat) err %d";
    }

    _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_ERROR, v145, &v172, 0x18u);
LABEL_349:

    goto LABEL_330;
  }

  LODWORD(v89) = outPropertyData;
  v90 = (*(this + 3) / v89);
  *(this + 62) = v90;
  if (kAVVCScope)
  {
    v91 = *kAVVCScope;
    if (!v91)
    {
      goto LABEL_214;
    }
  }

  else
  {
    v91 = MEMORY[0x1E69E9C10];
    v92 = MEMORY[0x1E69E9C10];
  }

  v93 = v91;
  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v172.var0) = 136315650;
    *(&v172.var0 + 4) = "AVVCAudioQueueRecordingEngine.mm";
    LOWORD(v172.var2) = 1024;
    *(&v172.var2 + 2) = 642;
    HIWORD(v172.var3) = 1024;
    v172.var4 = v90;
    _os_log_impl(&dword_1BA5AC000, v93, OS_LOG_TYPE_DEBUG, "%25s:%-5d createAudioConverter: %u atomic blocks per second", &v172, 0x18u);
  }

LABEL_214:
  memset(&v172, 0, sizeof(v172));
  inPropertyData = 40;
  Property = AudioConverterGetProperty(*v25, 0x61636F64u, &inPropertyData, &v172);
  if ((v172.var0 == 0.0 || inDestinationFormat.mSampleRate == 0.0 || v172.var0 == inDestinationFormat.mSampleRate) && (!v172.var1 || !inDestinationFormat.mFormatID || v172.var1 == inDestinationFormat.mFormatID) && (!v172.var3 || !inDestinationFormat.mBytesPerPacket || v172.var3 == inDestinationFormat.mBytesPerPacket) && (!v172.var4 || !inDestinationFormat.mFramesPerPacket || v172.var4 == inDestinationFormat.mFramesPerPacket))
  {
    var5 = v172.var5;
    if ((!v172.var5 || !inDestinationFormat.mBytesPerFrame || v172.var5 == inDestinationFormat.mBytesPerFrame) && (!v172.var6 || !inDestinationFormat.mChannelsPerFrame || v172.var6 == inDestinationFormat.mChannelsPerFrame))
    {
      v95 = v172.var7 == 0;
      if (!v172.var7 || !inDestinationFormat.mBitsPerChannel || v172.var7 == inDestinationFormat.mBitsPerChannel)
      {
        if (!v172.var1)
        {
          goto LABEL_255;
        }

        if (!inDestinationFormat.mFormatID)
        {
          goto LABEL_255;
        }

        if (!v172.var2)
        {
          goto LABEL_255;
        }

        mFormatFlags = inDestinationFormat.mFormatFlags;
        if (!inDestinationFormat.mFormatFlags)
        {
          goto LABEL_255;
        }

        if (v172.var1 != 1819304813)
        {
          if (v172.var2 == inDestinationFormat.mFormatFlags)
          {
            goto LABEL_255;
          }

          goto LABEL_248;
        }

        var2 = v172.var2 & 0x7FFFFFFF;
        if ((v172.var2 & 0x7FFFFFFF) == 0)
        {
          var2 = v172.var2;
        }

        if (v172.var5)
        {
          if ((v172.var2 & 0x20) != 0)
          {
            v98 = 1;
          }

          else
          {
            v98 = v172.var6;
          }

          if (v98)
          {
            var5 = 8 * (v172.var5 / v98);
            v95 = var5 == v172.var7;
          }

          else
          {
            var5 = 0;
          }
        }

        if (v95)
        {
          var2 |= 8u;
        }

        if ((v172.var7 & 7) == 0 && var5 == v172.var7)
        {
          var2 &= ~0x10u;
        }

        if (var2)
        {
          var2 &= ~4u;
        }

        if ((var2 & 8) != 0 && v172.var7 <= 8)
        {
          var2 &= 2u;
        }

        if (v172.var6 == 1)
        {
          v149 = var2 & 0xFFFFFFDF;
        }

        else
        {
          v149 = var2;
        }

        if (!v149)
        {
          v149 = 0x80000000;
        }

        if (inDestinationFormat.mFormatID != 1819304813)
        {
          goto LABEL_406;
        }

        if ((inDestinationFormat.mFormatFlags & 0x7FFFFFFF) != 0)
        {
          v150 = inDestinationFormat.mFormatFlags & 0x7FFFFFFF;
        }

        else
        {
          v150 = inDestinationFormat.mFormatFlags;
        }

        mBytesPerFrame = inDestinationFormat.mBytesPerFrame;
        if (inDestinationFormat.mBytesPerFrame)
        {
          v152 = inDestinationFormat.mChannelsPerFrame;
          if ((inDestinationFormat.mFormatFlags & 0x20) != 0)
          {
            v153 = 1;
          }

          else
          {
            v153 = inDestinationFormat.mChannelsPerFrame;
          }

          if (v153)
          {
            mBytesPerFrame = 8 * (inDestinationFormat.mBytesPerFrame / v153);
            mBitsPerChannel = inDestinationFormat.mBitsPerChannel;
            v155 = v150 | 8;
            v156 = mBytesPerFrame == inDestinationFormat.mBitsPerChannel;
LABEL_386:
            if (v156)
            {
              v150 = v155;
            }

            v157 = (mBitsPerChannel & 7) == 0 && mBytesPerFrame == mBitsPerChannel;
            v158 = v150 & 0xFFFFFFEF;
            if (!v157)
            {
              v158 = v150;
            }

            if (v158)
            {
              v158 &= ~4u;
            }

            v159 = (v158 & 8) == 0 || mBitsPerChannel > 8;
            v160 = v158 & 2;
            if (v159)
            {
              v160 = v158;
            }

            if (v152 == 1)
            {
              v161 = v160 & 0xFFFFFFDF;
            }

            else
            {
              v161 = v160;
            }

            if (v161)
            {
              mFormatFlags = v161;
            }

            else
            {
              mFormatFlags = 0x80000000;
            }

LABEL_406:
            if (v149 == mFormatFlags)
            {
              goto LABEL_255;
            }

            goto LABEL_248;
          }

          mBytesPerFrame = 0;
          mBitsPerChannel = inDestinationFormat.mBitsPerChannel;
          v155 = v150 | 8;
        }

        else
        {
          v155 = v150 | 8;
          v152 = inDestinationFormat.mChannelsPerFrame;
          mBitsPerChannel = inDestinationFormat.mBitsPerChannel;
        }

        v156 = mBitsPerChannel == 0;
        goto LABEL_386;
      }
    }
  }

LABEL_248:
  if (kAVVCScope)
  {
    v99 = *kAVVCScope;
    if (!v99)
    {
      goto LABEL_255;
    }
  }

  else
  {
    v99 = MEMORY[0x1E69E9C10];
    v100 = MEMORY[0x1E69E9C10];
  }

  v101 = v99;
  if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
  {
    *v166 = 136315394;
    v167 = "AVVCAudioQueueRecordingEngine.mm";
    v168 = 1024;
    v169 = 650;
    _os_log_impl(&dword_1BA5AC000, v101, OS_LOG_TYPE_ERROR, "%25s:%-5d kAudioConverterCurrentOutputStreamDescription ASBD's are different !! ", v166, 0x12u);
  }

LABEL_255:
  if (*(this + 8) == 1819304813 || (v102 = *&v172.var3, *(this + 24) = *&v172.var0, *(this + 40) = v102, *(this + 7) = *&v172.var7, *(this + 8) != 1936745848))
  {
    *(this + 62) = (*(this + 3) / v68);
  }

  var4 = v172.var4;
  v162 = 2100;
  outPropertyData = v172.var3;
  inPropertyData = 4;
  v104 = AudioConverterGetProperty(*v25, 0x6D6F6273u, &inPropertyData, &v162);
  if (v104)
  {
    if (kAVVCScope)
    {
      v105 = *kAVVCScope;
      if (!v105)
      {
        goto LABEL_273;
      }
    }

    else
    {
      v105 = MEMORY[0x1E69E9C10];
      v107 = MEMORY[0x1E69E9C10];
    }

    v108 = v105;
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
    {
      *v166 = 136315650;
      v167 = "AVVCAudioQueueRecordingEngine.mm";
      v168 = 1024;
      v169 = 675;
      v170 = 1024;
      LODWORD(v171) = v104;
      v109 = "%25s:%-5d createAudioConverter: AudioConverterGetProperty(kAudioConverterPropertyMinimumOutputBufferSize) returned status %d";
LABEL_271:
      _os_log_impl(&dword_1BA5AC000, v108, OS_LOG_TYPE_DEBUG, v109, v166, 0x18u);
      goto LABEL_272;
    }

    goto LABEL_272;
  }

  if (!kAVVCScope)
  {
    v106 = MEMORY[0x1E69E9C10];
    v110 = MEMORY[0x1E69E9C10];
LABEL_269:
    v108 = v106;
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
    {
      *v166 = 136315650;
      v167 = "AVVCAudioQueueRecordingEngine.mm";
      v168 = 1024;
      v169 = 672;
      v170 = 1024;
      LODWORD(v171) = v162;
      v109 = "%25s:%-5d createAudioConverter: encoded audio needs minimum of %u bytes per output buffer";
      goto LABEL_271;
    }

LABEL_272:

    goto LABEL_273;
  }

  v106 = *kAVVCScope;
  if (v106)
  {
    goto LABEL_269;
  }

LABEL_273:
  if (v68 == v68 % var4)
  {
    v111 = 1;
  }

  else
  {
    v111 = v68 / var4 * var4;
  }

  *(this + 194) = v111 / v172.var4 + 1;
  if (kAVVCScope)
  {
    v112 = *kAVVCScope;
    if (!v112)
    {
      goto LABEL_283;
    }
  }

  else
  {
    v112 = MEMORY[0x1E69E9C10];
    v113 = MEMORY[0x1E69E9C10];
  }

  v114 = v112;
  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
  {
    *v166 = 136315650;
    v167 = "AVVCAudioQueueRecordingEngine.mm";
    v168 = 1024;
    v169 = 683;
    v170 = 1024;
    LODWORD(v171) = v111;
    _os_log_impl(&dword_1BA5AC000, v114, OS_LOG_TYPE_DEBUG, "%25s:%-5d createAudioConverter: final framesPerBuffer: %u", v166, 0x18u);
  }

LABEL_283:
  if (kAVVCScope)
  {
    v115 = *kAVVCScope;
    if (!v115)
    {
      goto LABEL_290;
    }
  }

  else
  {
    v115 = MEMORY[0x1E69E9C10];
    v116 = MEMORY[0x1E69E9C10];
  }

  v117 = v115;
  if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
  {
    v118 = *(this + 194);
    *v166 = 136315650;
    v167 = "AVVCAudioQueueRecordingEngine.mm";
    v168 = 1024;
    v169 = 684;
    v170 = 1024;
    LODWORD(v171) = v118;
    _os_log_impl(&dword_1BA5AC000, v117, OS_LOG_TYPE_DEBUG, "%25s:%-5d createAudioConverter: mConvertPacketCount: %u", v166, 0x18u);
  }

LABEL_290:
  if (outPropertyData || (inPropertyData = 4, v120 = AudioConverterGetProperty(*v25, 0x786F7073u, &inPropertyData, &outPropertyData), Property = v120, !v120))
  {
    if (kAVVCScope)
    {
      v119 = *kAVVCScope;
      if (!v119)
      {
        goto LABEL_303;
      }
    }

    else
    {
      v119 = MEMORY[0x1E69E9C10];
      v122 = MEMORY[0x1E69E9C10];
    }

    v123 = v119;
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
    {
      *v166 = 136315650;
      v167 = "AVVCAudioQueueRecordingEngine.mm";
      v168 = 1024;
      v169 = 698;
      v170 = 1024;
      LODWORD(v171) = outPropertyData;
      _os_log_impl(&dword_1BA5AC000, v123, OS_LOG_TYPE_DEBUG, "%25s:%-5d createAudioConverter: outputSizePerPacket: %u", v166, 0x18u);
    }

LABEL_303:
    if ((v172.var2 & 0x20) != 0)
    {
      v124 = v172.var6;
    }

    else
    {
      v124 = 1;
    }

    v125 = outPropertyData * *(this + 194) * v124;
    if (v162 > v125)
    {
      v125 = v162;
    }

    *(this + 195) = v125;
    if (kAVVCScope)
    {
      v126 = *kAVVCScope;
      if (!v126)
      {
        goto LABEL_315;
      }
    }

    else
    {
      v126 = MEMORY[0x1E69E9C10];
      v127 = MEMORY[0x1E69E9C10];
    }

    v128 = v126;
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
    {
      v129 = *(this + 195);
      *v166 = 136315650;
      v167 = "AVVCAudioQueueRecordingEngine.mm";
      v168 = 1024;
      v169 = 709;
      v170 = 1024;
      LODWORD(v171) = v129;
      _os_log_impl(&dword_1BA5AC000, v128, OS_LOG_TYPE_DEBUG, "%25s:%-5d createAudioConverter: mConvertAudioCapacity %u bytes", v166, 0x18u);
    }

LABEL_315:
    if (kAVVCScope)
    {
      v130 = *kAVVCScope;
      if (!v130)
      {
        goto LABEL_322;
      }
    }

    else
    {
      v130 = MEMORY[0x1E69E9C10];
      v131 = MEMORY[0x1E69E9C10];
    }

    v132 = v130;
    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
    {
      *v166 = 136315394;
      v167 = "AVVCAudioQueueRecordingEngine.mm";
      v168 = 1024;
      v169 = 711;
      _os_log_impl(&dword_1BA5AC000, v132, OS_LOG_TYPE_DEBUG, "%25s:%-5d FINAL RECORD FORMAT:", v166, 0x12u);
    }

LABEL_322:
    if (kAVVCScope)
    {
      v133 = *kAVVCScope;
      if (!v133)
      {
LABEL_329:
        *a4 = v111;
        goto LABEL_330;
      }
    }

    else
    {
      v133 = MEMORY[0x1E69E9C10];
      v134 = MEMORY[0x1E69E9C10];
    }

    v135 = v133;
    if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
    {
      CAStreamBasicDescription::AsString(&v172, buf, 0x100uLL, v136, v137);
      *v166 = 136315650;
      v167 = "AVVCAudioQueueRecordingEngine.mm";
      v168 = 1024;
      v169 = 712;
      v170 = 2080;
      v171 = buf;
      _os_log_impl(&dword_1BA5AC000, v135, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", v166, 0x1Cu);
    }

    goto LABEL_329;
  }

  if ((v120 + 199999) >= 0x61A7F)
  {
    if (kAVVCScope)
    {
      v140 = *kAVVCScope;
      if (!v140)
      {
        goto LABEL_330;
      }
    }

    else
    {
      v140 = MEMORY[0x1E69E9C10];
      v143 = MEMORY[0x1E69E9C10];
    }

    v142 = v140;
    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
    {
      *v166 = 136315650;
      v167 = "AVVCAudioQueueRecordingEngine.mm";
      v168 = 1024;
      v169 = 691;
      v170 = 1024;
      LODWORD(v171) = Property;
      _os_log_impl(&dword_1BA5AC000, v142, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: createAudioConverter: AudioConverterGetProperty(MaximumOutputPacketSize) err %{audio:4CC}d", v166, 0x18u);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v121 = *kAVVCScope;
      if (!v121)
      {
        goto LABEL_330;
      }
    }

    else
    {
      v121 = MEMORY[0x1E69E9C10];
      v141 = MEMORY[0x1E69E9C10];
    }

    v142 = v121;
    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
    {
      *v166 = 136315650;
      v167 = "AVVCAudioQueueRecordingEngine.mm";
      v168 = 1024;
      v169 = 691;
      v170 = 1024;
      LODWORD(v171) = Property;
      _os_log_impl(&dword_1BA5AC000, v142, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: createAudioConverter: AudioConverterGetProperty(MaximumOutputPacketSize) err %d", v166, 0x18u);
    }
  }

LABEL_330:
  v138 = *MEMORY[0x1E69E9840];
  return Property;
}

void AVVCAudioQueueRecordingEngine::~AVVCAudioQueueRecordingEngine(AVVCAudioQueueRecordingEngine *this)
{
  AVVCAudioQueueRecordingEngine::~AVVCAudioQueueRecordingEngine(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F3849990;
  TraceMethod::TraceMethod(v5, "~AVVCAudioQueueRecordingEngine");
  *(this + 95) = 0;
  v2 = *(this + 103);
  *(this + 103) = 0;

  [*(this + 102) stop];
  v3 = *(this + 102);
  *(this + 102) = 0;

  TraceMethod::~TraceMethod(v5);
  v4 = *(this + 108);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  AVVCRecordingEngine::~AVVCRecordingEngine(this);
}

void CADeprecated::AudioRingBuffer::~AudioRingBuffer(CADeprecated::AudioRingBuffer *this)
{
  CADeprecated::AudioRingBuffer::~AudioRingBuffer(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F3849680;
  CADeprecated::AudioRingBuffer::Deallocate(this);
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x1BFAF5800](v2, 0x1080C404ACF7207);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x1BFAF5800](v3, 0x1080C404ACF7207);
  }
}

OpaqueAudioConverter *CADeprecated::AudioRingBuffer::Deallocate(CADeprecated::AudioRingBuffer *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    free(v2);
    *(this + 13) = 0;
  }

  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  result = *(this + 16);
  if (result)
  {
    result = AudioConverterDispose(result);
    *(this + 16) = 0;
  }

  return result;
}

uint64_t CADeprecated::AudioRingBuffer::ConvertAndStore(uint64_t this, int a2, const AudioBufferList *a3, int a4, UInt32 inNumberPCMFrames)
{
  if (inNumberPCMFrames)
  {
    v6 = *(this + 96);
    mNumberBuffers = v6->mNumberBuffers;
    if (mNumberBuffers)
    {
      v8 = *(this + 72) * inNumberPCMFrames;
      p_mData = &v6->mBuffers[0].mData;
      v10 = &a3->mBuffers[0].mData;
      do
      {
        v11 = *v10;
        v10 += 2;
        *p_mData = &v11[a4];
        *(p_mData - 1) = v8;
        p_mData += 2;
        --mNumberBuffers;
      }

      while (mNumberBuffers);
    }

    v12 = *(this + 88);
    v13 = v12->mNumberBuffers;
    if (v13)
    {
      v14 = *(this + 32) * inNumberPCMFrames;
      v15 = *(this + 104);
      v16 = &v12->mBuffers[0].mData;
      do
      {
        v17 = *v15++;
        *v16 = (v17 + a2);
        *(v16 - 1) = v14;
        v16 += 2;
        --v13;
      }

      while (v13);
    }

    return AudioConverterConvertComplexBuffer(*(this + 128), inNumberPCMFrames, v6, v12);
  }

  return this;
}

uint64_t CADeprecated::AudioRingBuffer::CheckTimeBounds(CADeprecated::AudioRingBuffer *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 226);
  v4 = this + 24 * (v3 & 0x1F);
  v5 = 8;
  while (1)
  {
    v6 = *(v4 + 17);
    v7 = *(v4 + 18);
    if (*(v4 + 38) == v3)
    {
      break;
    }

    if (!--v5)
    {
      return 4;
    }
  }

  if (v7 > a2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v7 >= a3)
  {
    v9 = 0;
  }

  if (v6 >= a3)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (v7 >= a3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 3;
  }

  if (v6 > a2)
  {
    return v11;
  }

  else
  {
    return v9;
  }
}

uint64_t AVVCHACRecordingEngine::setSessionIsRecordingFlag(AVVCHACRecordingEngine *this)
{
  TraceMethod::TraceMethod(v2, "setSessionIsRecordingFlag");
  TraceMethod::~TraceMethod(v2);
  return 0;
}

__n128 AVVCHACRecordingEngine::getRecordQueueFormat@<Q0>(AVVCHACRecordingEngine *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 24);
  v3 = *(this + 40);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(this + 7);
  return result;
}

uint64_t AVVCHACRecordingEngine::destroyRecordEngine(AVVCHACRecordingEngine *this)
{
  TraceMethod::TraceMethod(v4, "destroyRecordingEngine");
  v2 = (*(*this + 104))(this);
  TraceMethod::~TraceMethod(v4);
  return v2;
}

void sub_1BA65C160(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

uint64_t AVVCHACRecordingEngine::stopRecording(AVVCRecordingEngine *this)
{
  v13 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v8, "stopRecording");
  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "AVVCHACRecordingEngine.mm";
    v11 = 1024;
    v12 = 182;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Calling StopIsolatedAudio", buf, 0x12u);
  }

LABEL_8:
  AVVCRecordingEngine::setStreamState(this, 6);
  ElapsedTime::ElapsedTime(buf, "stopRecording", "stopRecording : StopIsolatedAudio", 0);
  StopIsolatedAudio();
  ElapsedTime::~ElapsedTime(buf);
  AVVCRecordingEngine::doneRecording(this);
  if (*(this + 641) == 1)
  {
    *(this + 641) = 0;
    v4 = +[AVVoiceTriggerClient sharedInstance];
    v5 = [v4 activateSecureSession:0];
  }

  TraceMethod::~TraceMethod(v8);
  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1BA65C2E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

uint64_t AVVCHACRecordingEngine::startRecording(AVVCHACRecordingEngine *this)
{
  v25 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v16, "startRecording");
  v2 = *(this + 29);
  v3 = mach_absolute_time();
  if (v2 > v3)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
LABEL_11:
        *(this + 640) = 1;
        *(this + 39) = 0u;
        goto LABEL_12;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = "AVVCHACRecordingEngine.mm";
      v19 = 1024;
      v20 = 132;
      v21 = 2048;
      v22 = v2;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Recording from future hosttime (%lld) is not supported. Resetting hosttime to 0", buf, 0x1Cu);
    }

    goto LABEL_11;
  }

  *(this + 640) = 1;
  *(this + 39) = 0u;
  if (v2)
  {
    v5 = 0;
    v6 = v2;
    goto LABEL_13;
  }

LABEL_12:
  v6 = mach_absolute_time();
  v5 = 1;
LABEL_13:
  *(this + 77) = v6;
  if (!kAVVCScope)
  {
    v8 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
LABEL_18:
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "past";
      v12 = *(this + 77);
      if (v2 > v3)
      {
        v11 = "future";
      }

      *buf = 136315906;
      v18 = "AVVCHACRecordingEngine.mm";
      v19 = 1024;
      v20 = 150;
      if (v5)
      {
        v11 = "immediate";
      }

      v21 = 2080;
      v22 = v11;
      v23 = 2048;
      v24 = v12;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVC starting (%s) recording at hosttime (%lld) for HAC engine", buf, 0x26u);
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v8 = *kAVVCScope;
  if (v8)
  {
    goto LABEL_18;
  }

  if (!v5)
  {
LABEL_16:
    ElapsedTime::ElapsedTime(buf, "startRecording", "startRecording : StartIsolatedAudioAtTime()", 0);
    started = StartIsolatedAudioAtTime();
    goto LABEL_26;
  }

LABEL_25:
  ElapsedTime::ElapsedTime(buf, "startRecording", "startRecording : StartIsolatedAudio()", 0);
  started = StartIsolatedAudio();
LABEL_26:
  v13 = started;
  ElapsedTime::~ElapsedTime(buf);
  *(this + 29) = 0;
  if (v13)
  {
    AVVCRecordingEngine::setRecordErrorStatus(this, v13, "startRecording");
    AVVCRecordingEngine::setStreamState(this, 3);
  }

  else
  {
    AVVCRecordingEngine::startedRecording(this);
  }

  TraceMethod::~TraceMethod(v16);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1BA65C5E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  ElapsedTime::~ElapsedTime(va1);
  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

uint64_t AVVCHACRecordingEngine::prepareRecording(AVVCHACRecordingEngine *this, NSDictionary *a2)
{
  TraceMethod::TraceMethod(v6, "prepareRecoding");
  if (*(this + 34) == 1684628340)
  {
    *(this + 641) = 1;
    v3 = +[AVVoiceTriggerClient sharedInstance];
    v4 = [v3 activateSecureSession:1];
  }

  AVVCRecordingEngine::setRecordErrorStatus(this, 0, "prepareRecording");
  AVVCRecordingEngine::setStreamState(this, 2);
  TraceMethod::~TraceMethod(v6);
  return 0;
}

void sub_1BA65C6DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

uint64_t AVVCHACRecordingEngine::Initialize(AVVCHACRecordingEngine *this)
{
  TraceMethod::TraceMethod(v2, "Initialize");
  TraceMethod::~TraceMethod(v2);
  return 0;
}

void AVVCHACRecordingEngine::~AVVCHACRecordingEngine(AVVCHACRecordingEngine *this)
{
  AVVCHACRecordingEngine::~AVVCHACRecordingEngine(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F384DB88;
  TraceMethod::TraceMethod(v3, "~AVVCHACRecordingEngine");
  v2 = *(this + 76);
  *(this + 76) = 0;

  *(this + 75) = 0;
  TraceMethod::~TraceMethod(v3);

  AVVCRecordingEngine::~AVVCRecordingEngine(this);
}

void AVVCHACRecordingEngine::Impl::AVVCHACRecordingEngineAudioLapseCallback(AVVCHACRecordingEngine::Impl *this, uint64_t a2, void *a3)
{
  v3 = this;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v9, *(a2 + 8), *(a2 + 16));
  v4 = v9;
  v5 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN22AVVCHACRecordingEngine16handleAudioLapseEi_block_invoke;
  v6[3] = &__block_descriptor_52_ea8_32c44_ZTSNSt3__18weak_ptrI19AVVCRecordingEngineEE_e5_v8__0l;
  v6[4] = v4;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v3;
  (*(*v4 + 336))(v4, v6, "handleAudioLapse");
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1BA65C8FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  v18 = *(v16 - 24);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN22AVVCHACRecordingEngine16handleAudioLapseEi_block_invoke(uint64_t a1)
{
  *&v21[5] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_8;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3 || (v4 = *(a1 + 32)) == 0)
  {
LABEL_8:
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315650;
      v17 = "AVVCHACRecordingEngine.mm";
      v18 = 1024;
      v19 = 303;
      v20 = 2048;
      *v21 = 0;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (engine: %p). Bailing", &v16, 0x1Cu);
    }

LABEL_15:
    if (!v3)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_18;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_18:
    v9 = v5;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 48);
      v11 = *(v4 + 216);
      if (v11 > 6)
      {
        v12 = "ILLEGAL";
      }

      else
      {
        v12 = off_1E7EF6338[v11];
      }

      v16 = 136315906;
      v17 = "AVVCHACRecordingEngine.mm";
      v18 = 1024;
      v19 = 304;
      v20 = 1024;
      v21[0] = v10;
      LOWORD(v21[1]) = 2080;
      *(&v21[1] + 2) = v12;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCHACRecordingEngine::handleAudioLapse: status(%d) streamState(%s)", &v16, 0x22u);
    }
  }

  v13 = *(v4 + 216);
  if (v13 >= 4 && v13 != 6)
  {
    AVVCRecordingEngine::setRecordErrorStatus(v4, *(a1 + 48), "handleAudioLapse_block_invoke");
    (*(*v4 + 104))(v4);
    AVVCRecordingEngine::setRecordErrorStatus(v4, 0, "handleAudioLapse_block_invoke");
  }

LABEL_29:
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
LABEL_30:
  v15 = *MEMORY[0x1E69E9840];
}

void AVVCHACRecordingEngine::Impl::AVVCHACRecordingEngineAudioAvailabilityCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*(a3 + 640) == 1)
  {
    LODWORD(v44) = 4108;
    BYTE4(v44) = 0;
    v45 = 0u;
    v46 = 0u;
    kdebug_trace();
    v6 = mach_absolute_time();
    v7 = *(a3 + 616);
    v8 = __udivti3();
    if (a1 >= v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = -v8;
    }

    v10 = __udivti3();
    if (v6 >= v7)
    {
      v11 = v10;
    }

    else
    {
      v11 = -v10;
    }

    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    v16 = v12;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v42, *(a3 + 8), *(a3 + 16));
      *buf = 136317442;
      v17 = *(a3 + 201);
      v18 = *(a3 + 616);
      *&buf[4] = "AVVCHACRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 233;
      *&buf[18] = 2048;
      *&buf[20] = v42;
      *&buf[28] = 1024;
      *&buf[30] = v17;
      *&buf[34] = 2048;
      *&buf[36] = v6;
      *&buf[44] = 2048;
      *&buf[46] = a1;
      v48 = 2048;
      v49 = a2;
      v50 = 2048;
      v51 = v18;
      v52 = 2048;
      v53 = v11 / 1000000.0;
      v54 = 2048;
      v55 = v9 / 1000000.0;
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d First callback - HAC engine (%p) mIgnoreInputCallback (%d) - Now:(ht: %llu), BuffStartTime:(ht: %llu st: %llu), SiriRequestedStartTime:(ht: %llu). Now-SiriRequestedStartTime: %0.6f ms, BuffStartTime-SiriRequestedStartTime: %0.6f ms.", buf, 0x5Eu);
      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }
    }

LABEL_23:
    if (*(a3 + 201) == 1)
    {
      if (kAVVCScope)
      {
        v19 = *kAVVCScope;
        if (!v19)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v19 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVVCHACRecordingEngine.mm";
        *&buf[12] = 1024;
        *&buf[14] = 239;
        _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCHACRecordingEngine::handleInput resetting ignoreInputCallback", buf, 0x12u);
      }
    }

LABEL_31:
    *(a3 + 201) = 0;
    TraceWrapper::~TraceWrapper(&v44);
    goto LABEL_32;
  }

  if (kAVVCScope)
  {
    v13 = *kAVVCScope;
    if (!v13)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "AVVCHACRecordingEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 244;
    *&buf[18] = 2048;
    *&buf[20] = a1;
    *&buf[28] = 2048;
    *&buf[30] = a2;
    _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d timestamp received (h: %lld, s: %lld)", buf, 0x26u);
  }

LABEL_32:
  if ((*(a3 + 201) & 1) != 0 || ((v22 = *(a3 + 216), v22 == 6) || v22 <= 3) && (*(a3 + 245) & 1) == 0)
  {
    if (kAVVCScope)
    {
      v21 = *kAVVCScope;
      if (!v21)
      {
LABEL_56:
        *(a3 + 640) = 0;
        goto LABEL_57;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v30 = MEMORY[0x1E69E9C10];
    }

    v31 = v21;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = *(a3 + 216);
      v33 = *(a3 + 201);
      if (v32 > 6)
      {
        v34 = "ILLEGAL";
      }

      else
      {
        v34 = off_1E7EF6338[v32];
      }

      v35 = *(a3 + 245);
      *buf = 136316162;
      *&buf[4] = "AVVCHACRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 249;
      *&buf[18] = 1024;
      *&buf[20] = v33;
      *&buf[24] = 2080;
      *&buf[26] = v34;
      *&buf[34] = 1024;
      *&buf[36] = v35;
      _os_log_impl(&dword_1BA5AC000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d record internally stopped, so throwing away buffer. ignoreInputCallback(%d), StreamState(%s). RecordCancelled(%d)", buf, 0x28u);
    }

    goto LABEL_56;
  }

  ElapsedTime::ElapsedTime(buf, "handleInput", "AVVCHACRecordingEngine : RequestIsolatedAudio", *(a3 + 640) == 0);
  if (*(a3 + 640) == 1)
  {
    *(a3 + 640) = 0;
  }

  v23 = RequestIsolatedAudio();
  ElapsedTime::~ElapsedTime(buf);
  if (!v23)
  {
    *(a3 + 624) = a1;
    *(a3 + 632) = a2;
    [*(a3 + 608) setTimeStamp:a1];
    AVVCRecordingEngine::avvcAudioBufferReceived(a3, *(a3 + 608), 1, 1);
    goto LABEL_57;
  }

  v24 = mach_absolute_time();
  v25 = *(a3 + 624);
  v26 = __udivti3();
  if (a1 >= v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = -v26;
  }

  v28 = *(a3 + 632);
  if (!kAVVCScope)
  {
    v29 = MEMORY[0x1E69E9C10];
    v37 = MEMORY[0x1E69E9C10];
    goto LABEL_59;
  }

  v29 = *kAVVCScope;
  if (v29)
  {
LABEL_59:
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136317442;
      v38 = *(a3 + 624);
      v39 = *(a3 + 632);
      *&buf[4] = "AVVCHACRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 269;
      *&buf[18] = 1024;
      *&buf[20] = v23;
      *&buf[24] = 2048;
      *&buf[26] = v24;
      *&buf[34] = 2048;
      *&buf[36] = a1;
      *&buf[44] = 2048;
      *&buf[46] = a2;
      v48 = 2048;
      v49 = v38;
      v50 = 2048;
      v51 = v39;
      v52 = 2048;
      v53 = v27 / 1000000.0;
      v54 = 2048;
      *&v55 = a2 - v28;
      _os_log_impl(&dword_1BA5AC000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCHACRecordingEngine::handleInput: RequestIsolatedAudio error(%d). Now:(ht: %llu), CurrentBufferTimestamp:(ht: %llu st: %llu), LastBufferTimestamp:(ht: %llu st: %llu). CurrentBufferTimestamp-LastBufferTimestamp:(%0.6f ms, %llu samples).", buf, 0x5Eu);
    }
  }

  *(a3 + 201) = 1;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v44, *(a3 + 8), *(a3 + 16));
  v40 = v44;
  v41 = v45;
  if (v45)
  {
    atomic_fetch_add_explicit((v45 + 16), 1uLL, memory_order_relaxed);
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3321888768;
  *&buf[16] = ___ZN22AVVCHACRecordingEngine11handleInputE18CoreAudioTimestamp_block_invoke;
  *&buf[24] = &__block_descriptor_52_ea8_32c44_ZTSNSt3__18weak_ptrI19AVVCRecordingEngineEE_e5_v8__0l;
  *&buf[32] = v40;
  *&buf[40] = v41;
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *&buf[48] = v23;
  (*(*v40 + 336))(v40, buf, "handleInput");
  if (*&buf[40])
  {
    std::__shared_weak_count::__release_weak(*&buf[40]);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

LABEL_57:
  v36 = *MEMORY[0x1E69E9840];
}

void ___ZN22AVVCHACRecordingEngine11handleInputE18CoreAudioTimestamp_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3 || (v4 = *(a1 + 32)) == 0)
  {
LABEL_13:
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "AVVCHACRecordingEngine.mm";
      v14 = 1024;
      v15 = 276;
      v16 = 2048;
      v17 = 0;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (engine: %p). Bailing", &v12, 0x1Cu);
    }

LABEL_20:
    if (!v3)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v5 = *(v4 + 27);
  if (v5 >= 4 && v5 != 6)
  {
    AVVCRecordingEngine::setRecordErrorStatus(*(a1 + 32), *(a1 + 48), "handleInput_block_invoke");
    (*(*v4 + 104))(v4);
    AVVCRecordingEngine::setRecordErrorStatus(v4, 0, "handleInput_block_invoke");
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
    goto LABEL_23;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_23:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "AVVCHACRecordingEngine.mm";
      v14 = 1024;
      v15 = 282;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCHACRecordingEngine::handleInput resetting ignoreInputCallback", &v12, 0x12u);
    }
  }

  *(v4 + 201) = 0;
LABEL_27:
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
LABEL_28:
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1BA65D7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = v10;

  TraceMethod::~TraceMethod(&a9);
  AVVCRecordingEngine::~AVVCRecordingEngine(v9);
  _Unwind_Resume(a1);
}

void sub_1BA65D9DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ___Z36_AVLoadSpeechSynthesisImplementationv_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/TextToSpeech.framework"];
  if (([v0 isLoaded] & 1) == 0)
  {
    v4 = 0;
    v1 = [v0 loadAndReturnError:&v4];
    v2 = v4;
    if (v1)
    {
      [objc_msgSend(v0 "principalClass")];
    }

    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v6 = v2;
        _os_log_fault_impl(&dword_1BA5AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Could not load AXSpeechImplementation: %@", buf, 0xCu);
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_1BA65E140(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BA65E878(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t AVAudioPlayerCpp::donePlaying(uint64_t this)
{
  if (*(this + 314) == 1)
  {
    *(this + 320) = 0u;
    *(this + 336) = 0u;
  }

  if (*(this + 308))
  {
    *(this + 308) = 0;
    *(this + 305) = 0;
    if (*(this + 488))
    {
      v1 = *(this + 496);
      if (v1)
      {
        return v1(*(this + 488), 1685024357, 1, this + 440);
      }
    }
  }

  return this;
}

OpaqueAudioQueue *AVAudioPlayerCpp::disposeQueue(AVAudioPlayerCpp *this, int a2)
{
  result = *(this + 22);
  if (result)
  {
    AudioQueueRemovePropertyListener(result, 0x6171726Eu, AudioPlayerAQPropertyListenerProc, this);
    AudioQueueRemovePropertyListener(*(this + 22), 0x71637665u, AudioPlayerAQPropertyListenerProc, this);
    *(this + 312) = 1;
    __dmb(0xBu);
    v5 = *(this + 22);
    *(this + 22) = 0;
    *(this + 50) = 0;
    *(this + 51) = 0;
    *(this + 49) = 0;
    __dmb(0xBu);
    *(this + 315) = 0;
    *(this + 152) = 0;
    *(this + 77) = 0;
    *(this + 307) = 0;
    *(this + 312) = 0;
    *(this + 40) = 0;
    *(this + 42) = 0;
    __dmb(0xBu);
    pthread_mutex_unlock(&avap_mutex);
    if (a2)
    {
      AudioQueueStop(v5, 1u);
    }

    AudioQueueDispose(v5, 0);
    return pthread_mutex_lock(&avap_mutex);
  }

  return result;
}

void AVAudioPlayerCpp::freeChannelAssignments(AVAudioPlayerCpp *this)
{
  v2 = *(this + 66);
  if (v2)
  {
    v3 = *(this + 130);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(*(this + 66) + v4);
        if (v6)
        {
          CFRelease(v6);
          v3 = *(this + 130);
        }

        v4 += 16;
      }

      v2 = *(this + 66);
    }

    free(v2);
    *(this + 66) = 0;
  }
}

uint64_t AudioPlayerAQPropertyListenerProc(uint64_t a1, OpaqueAudioQueue *a2, int a3)
{
  pthread_mutex_lock(&avap_mutex);
  if (a3 == 1902343781)
  {
    if (*(a1 + 488))
    {
      if (*(a1 + 496))
      {
        ioDataSize = 4;
        outData = 0;
        if (!AudioQueueGetProperty(a2, 0x71637665u, &outData, &ioDataSize))
        {
          (*(a1 + 496))(*(a1 + 488), 1684370034, 4, &outData);
        }
      }
    }
  }

  else if (a3 == 1634824814 && (*(a1 + 443) & 1) == 0)
  {
    ioDataSize = 4;
    outData = 0;
    AudioQueueGetProperty(*(a1 + 176), 0x6171726Eu, &outData, &ioDataSize);
    if (!outData && (*(a1 + 460) & 1) == 0)
    {
      AVAudioPlayerCpp::donePlaying(a1);
    }
  }

  return pthread_mutex_unlock(&avap_mutex);
}

uint64_t AVAudioPlayerCpp::DoAction(AudioQueueRef *this, int a2, uint64_t a3, double *a4)
{
  v5 = 560030580;
  if (a2 <= 1886545263)
  {
    if (a2 != 1885435251)
    {
      if (a2 == 1886151028)
      {
        if (a3 == 8)
        {
          v13 = *a4;
          v15.mSampleTime = 0.0;
          memset(&v15.mRateScalar, 0, 48);
          v15.mHostTime = (v13 * 24000000.0);
          v15.mFlags = 2;
          pthread_mutex_lock(&avap_mutex);
          v5 = AVAudioPlayerCpp::playQueue(this, &v15);
          pthread_mutex_unlock(&avap_mutex);
          return v5;
        }
      }

      else
      {
        if (a2 != 1886151033)
        {
          return v5;
        }

        if (!a3)
        {
          pthread_mutex_lock(&avap_mutex);
          if (*(this + 460) == 1)
          {
            v6 = *(this + 114);
            AudioSessionSetActive_Priv();
            AVAudioPlayerCpp::disposeQueue(this, 1);
            *(this + 230) = 0;
          }

          v5 = AVAudioPlayerCpp::playQueue(this, 0);
          pthread_mutex_unlock(&avap_mutex);
          return v5;
        }
      }

      return 561211770;
    }

    if (a3)
    {
      return 561211770;
    }

    pthread_mutex_lock(&avap_mutex);
    if (*(this + 307) == 1)
    {
      AVAudioPlayerCpp::getQueueTime(this, 1);
      AudioQueuePause(this[22]);
      *(this + 77) = 0;
      *(this + 307) = 0;
    }

    pthread_mutex_unlock(&avap_mutex);
    return 0;
  }

  if (a2 == 1970302324)
  {
    if (a3)
    {
      return 561211770;
    }

    if (*(this + 313))
    {
      return 0;
    }

    pthread_mutex_lock(&avap_mutex);
    v8 = *(this + 15);
    v9 = this[48];
    if (!v9)
    {
      v9 = malloc_type_calloc(*(this + 15), 8uLL, 0x100004000313F17uLL);
      this[48] = v9;
    }

    v10 = this[22];
    if (v10 && *(this + 94))
    {
      LODWORD(v15.mSampleTime) = 8 * v8;
      if (!AudioQueueGetProperty(v10, 0x61716D64u, v9, &v15) || !v8)
      {
        goto LABEL_39;
      }

      v11 = this[48];
      v12 = 8 * v8;
    }

    else
    {
      if (!v8)
      {
LABEL_39:
        pthread_mutex_unlock(&avap_mutex);
        return 0;
      }

      v12 = 8 * v8;
      v11 = v9;
    }

    memset_pattern16(v11, &unk_1BA6CF4F0, v12);
    goto LABEL_39;
  }

  if (a2 == 1937010544)
  {
    if (a3)
    {
      return 561211770;
    }

    pthread_mutex_lock(&avap_mutex);
    if (*(this + 305) == 1)
    {
      AVAudioPlayerCpp::getQueueTime(this, 1);
      this[43] = this[41];
    }

    AVAudioPlayerCpp::disposeQueue(this, 1);
    pthread_mutex_unlock(&avap_mutex);
    return 0;
  }

  if (a2 != 1886545264)
  {
    return v5;
  }

  if (a3)
  {
    return 561211770;
  }

  pthread_mutex_lock(&avap_mutex);
  if (*(this + 460) == 1)
  {
    v7 = *(this + 114);
    AudioSessionSetActive_Priv();
    AVAudioPlayerCpp::disposeQueue(this, 1);
    *(this + 230) = 0;
  }

  v5 = AVAudioPlayerCpp::prepareToPlayQueue(this);
  pthread_mutex_unlock(&avap_mutex);
  return v5;
}

double AVAudioPlayerCpp::getQueueTime(AVAudioPlayerCpp *this, int a2)
{
  v3 = *(this + 22);
  if (v3)
  {
    if (*(this + 307) == 1 && !AudioQueueGetCurrentTime(v3, 0, &v12, 0))
    {
      mSampleTime = v12.mSampleTime;
      *(this + 40) = *&v12.mSampleTime;
      if (a2)
      {
        v6 = *(this + 43);
        v7 = fmax(mSampleTime - *(this + 42) + v6, 0.0);
        *(this + 41) = v7;
        if (*(this + 463) == 1)
        {
          v8 = *(this + 58);
          *(this + 43) = fmod(fmax(v6, 0.0), v8);
          if (*(this + 74) || v6 >= v8)
          {
            v10 = fmod(v7, v8);
          }

          else
          {
            if (v7 <= v8)
            {
              v9 = v7;
            }

            else
            {
              v9 = v8;
            }

            v10 = fmax(v9, 0.0);
          }

          *(this + 41) = v10;
        }
      }
    }
  }

  return *(this + 40);
}

uint64_t AVAudioPlayerCpp::playQueue(AVAudioPlayerCpp *this, const AudioTimeStamp *a2)
{
  if (*(this + 307))
  {
    return 0;
  }

  if (*(this + 305) == 1)
  {
    v5 = *(this + 42);
    QueueTime = AVAudioPlayerCpp::getQueueTime(this, 0);
    *(this + 42) = QueueTime;
    if ((*(this + 306) & 1) == 0)
    {
      v7 = QueueTime - v5 + *(this + 43);
      *(this + 43) = v7;
      *(this + 41) = v7;
    }
  }

  v2 = AVAudioPlayerCpp::prepareToPlayQueue(this);
  if (!v2)
  {
    *(this + 306) = 0;
    v8 = *(this + 26);
    AudioQueueSetParameter(*(this + 22), 1u, v8);
    v9 = *(this + 29);
    AudioQueueSetParameter(*(this + 22), 0xDu, v9);
    AudioQueueSetProperty(*(this + 22), 0x715F7470u, this + 240, 4u);
    if (*(this + 60))
    {
      inData = 1953064047;
      AudioQueueSetProperty(*(this + 22), 0x71747061u, &inData, 4u);
      v10 = *(this + 28);
      AudioQueueSetParameter(*(this + 22), 2u, v10);
    }

    *(this + 305) = 1;
    *(this + 77) = 1;
    *(this + 307) = 1;
    v11 = atomic_load(this + 106);
    pthread_mutex_unlock(&avap_mutex);
    v2 = AudioQueueStart(*(this + 22), a2);
    pthread_mutex_lock(&avap_mutex);
    if (v2)
    {
      *(this + 305) = 0;
      *(this + 77) = 0;
      *(this + 307) = 0;
      return v2;
    }

    if (!v11)
    {
      AVAudioPlayerCpp::flushQueue(this);
    }

    return 0;
  }

  return v2;
}

uint64_t AVAudioPlayerCpp::prepareToPlayQueue(AVAudioPlayerCpp *this)
{
  v2 = AVAudioPlayerCpp::allocAudioQueue(this);
  if (!v2)
  {
    *(this + 41) = *(this + 43);
    if (*(this + 304))
    {
      return 0;
    }

    else
    {
      if (*(this + 10) != 1819304813)
      {
        ioDataSize[0] = 4;
        ioDataSize[1] = 0;
        AudioQueueGetProperty(*(this + 22), 0x6171726Eu, &ioDataSize[1], ioDataSize);
        if (!ioDataSize[1])
        {
          while (1)
          {
            v8 = *(this + 10);
            *ioDataSize = 0;
            FindCodecs(v8, &ioDataSize[1], ioDataSize, v3, v4);
            if (!ioDataSize[1])
            {
LABEL_33:
              v17 = *(this + 22);
              ioDataSize[1] = 1;
              AudioQueueSetProperty(v17, 0x61716370u, &ioDataSize[1], 4u);
              goto LABEL_6;
            }

            outNumberOfFramesPrepared = 0;
            if (!AudioQueuePrime(*(this + 22), 0, &outNumberOfFramesPrepared))
            {
              break;
            }

            v11 = *(this + 10);
            *ioDataSize = 0;
            FindCodecs(v11, &ioDataSize[1], ioDataSize, v9, v10);
            if (!ioDataSize[1] || ioDataSize[0])
            {
              goto LABEL_33;
            }

            if (!*(this + 18) || *(this + 38) >= *(this + 34))
            {
              return 1718449215;
            }

            AVAudioPlayerCpp::disposeQueue(this, 0);
            v12 = *(this + 18);
            v13 = *(this + 38) + 1;
            *(this + 38) = v13;
            v14 = (v12 + 48 * v13);
            v16 = *v14;
            v15 = v14[1];
            *(this + 8) = *(v14 + 4);
            *(this + 2) = v16;
            *(this + 3) = v15;
            AVAudioPlayerCpp::allocAudioQueue(this);
          }

          pthread_mutex_unlock(&avap_mutex);
          AudioQueueReset(*(this + 22));
          pthread_mutex_lock(&avap_mutex);
        }
      }

LABEL_6:
      if ((*(this + 305) & 1) == 0 && (*(this + 444) & 1) == 0)
      {
        AVAudioPlayerCpp::setPlaybackFramePos(this, vcvtmd_s64_f64(*(this + 41)), 1);
      }

      if ((*(this + 460) & 1) == 0)
      {
        *(this + 75) = 0;
      }

      *(this + 52) = 0;
      *(this + 64) = 0;
      *(this + 157) = 256;
      atomic_store(0, this + 106);
      v5 = *(this + 2);
      *(this + 220) = 1;
      *(this + 24) = *(this + 23);
      *(this + 442) = 1;
      if (v5)
      {
        AudioQueueSetProperty(*(this + 22), 0x716C646Eu, this + 16, 8u);
      }

      v6 = 0;
      while (1)
      {
        atomic_fetch_add(this + 106, 1u);
        AVAudioPlayerCpp::AQOutputCallbackCore(this, *(this + 22), *(this + v6 + 49));
        if (*(this + 64))
        {
          *(this + 442) = 0;
          AVAudioPlayerCpp::disposeQueue(this, 0);
          return *(this + 64);
        }

        if (!atomic_load(this + 106))
        {
          *(this + 441) = 0;
          AVAudioPlayerCpp::disposeQueue(this, 0);
          return 2003334207;
        }

        if (*(this + 314) == 1)
        {
          break;
        }

        if (++v6 == 3)
        {
          goto LABEL_22;
        }
      }

      *(this + 56) = *(this + v6 + 49);
LABEL_22:
      *(this + 442) = 0;
      ioDataSize[1] = 1024;
      v2 = AudioQueuePrime(*(this + 22), 0, &ioDataSize[1]);
      if (v2)
      {
        AVAudioPlayerCpp::disposeQueue(this, 0);
      }

      else
      {
        *(this + 304) = 1;
        if (*(this + 305) == 1)
        {
          *(this + 42) = AVAudioPlayerCpp::getQueueTime(this, 0);
        }
      }
    }
  }

  return v2;
}

uint64_t AVAudioPlayerCpp::flushQueue(uint64_t this)
{
  if ((*(this + 312) & 1) == 0)
  {
    v1 = this;
    AudioQueueFlush(*(this + 176));
    *(v1 + 312) = 1;
    __dmb(0xBu);
    pthread_mutex_unlock(&avap_mutex);
    AudioQueueStop(*(v1 + 176), 0);
    return pthread_mutex_lock(&avap_mutex);
  }

  return this;
}

uint64_t AVAudioPlayerCpp::allocAudioQueue(AVAudioPlayerCpp *this)
{
  v1 = (this + 176);
  if (!*(this + 22))
  {
    pthread_once(&gHaveInitializedAVAudio, initAVAudio);
    v4 = *(this + 114);
    AudioSessionSetActive_Priv();
    pthread_mutex_unlock(&avap_mutex);
    v5 = *(this + 6);
    v6 = *(this + 114);
    v2 = AudioQueueNewOutputWithAudioSession();
    pthread_mutex_lock(&avap_mutex);
    if (v2)
    {
      return v2;
    }

    if (*(this + 46) && *v1)
    {
      AudioQueueSetProperty(*v1, 0x61716364u, this + 368, 8u);
    }

    v7 = *(this + 64);
    if (v7)
    {
      AudioQueueSetProperty(*(this + 22), 0x6171636Cu, [*(this + 64) layout], objc_msgSend(v7, "layoutSize"));
    }

    AVAudioPlayerCpp::makeChannelAssignments(this);
    v8 = *(this + 4);
    v10 = *(this + 13);
    v9 = *(this + 14);
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = v8 / v10;
    *(this + 120) = vcvtpd_u64_f64((*(this + 68) / v8 + 0.025) * v11);
    if (v9)
    {
      v12 = v9 * vcvtmd_u64_f64(v8 * 0.333 + 0.5);
      *(this + 119) = v9 * v10;
      goto LABEL_22;
    }

    v13 = *(this + 12);
    if (v13)
    {
      *(this + 119) = v13;
    }

    else
    {
      ioDataSize = 4;
      if (AudioFileGetProperty(*(this + 20), 0x706B7562u, &ioDataSize, this + 476))
      {
        v12 = 0x8000;
        goto LABEL_22;
      }

      v13 = *(this + 119);
    }

    v14 = vcvtmd_u64_f64(v11 * 0.333 * v13 + 0.5);
    if (v13 <= v14)
    {
      v13 = v14;
    }

    if (v13 <= 0x400)
    {
      v12 = 1024;
    }

    else
    {
      v12 = v13;
    }

LABEL_22:
    v15 = *(this + 12);
    for (i = 392; i != 416; i += 8)
    {
      v17 = *(this + 22);
      if (v15)
      {
        Buffer = AudioQueueAllocateBuffer(v17, v12, (this + i));
      }

      else
      {
        Buffer = AudioQueueAllocateBufferWithPacketDescriptions(v17, v12, 0x200u, (this + i));
      }

      v2 = Buffer;
      if (Buffer)
      {
        v21 = *v1;
        *v1 = 0;
        *(this + 50) = 0;
        *(this + 51) = 0;
        *(this + 49) = 0;
        __dmb(0xBu);
        pthread_mutex_unlock(&avap_mutex);
        AudioQueueDispose(v21, 1u);
        pthread_mutex_lock(&avap_mutex);
        return v2;
      }
    }

    AudioQueueAddPropertyListener(*(this + 22), 0x6171726Eu, AudioPlayerAQPropertyListenerProc, this);
    AudioQueueAddPropertyListener(*(this + 22), 0x71637665u, AudioPlayerAQPropertyListenerProc, this);
    if (*(this + 94))
    {
      inData = 1;
      AudioQueueSetProperty(*v1, 0x61716D65u, &inData, 4u);
    }

    if (*(this + 61))
    {
      v19 = *(this + 62);
      if (v19)
      {
        v19();
      }
    }

    v20 = *(this + 16);
    if (v20)
    {
      AudioQueueSetProperty(*(this + 22), 0x61716D63u, v20, *(this + 30));
    }

    if (*(this + 67))
    {
      AVAudioPlayerCpp::applySTSLabelToQueueIfPossible(this);
    }
  }

  return 0;
}

double AVAudioPlayerCpp::setPlaybackFramePos(AVAudioPlayerCpp *this, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3 && *(this + 463) == 1 && *(this + 58) - a2 < *(this + 13))
  {
    v3 = 0;
  }

  v5 = *(this + 13);
  v6 = v3 / v5;
  *(this + 23) = v3 / v5;
  v7 = *(this + 68) + (v3 % v5);
  *(this + 35) = v7;
  if (*(this + 28))
  {
    if (v6 >= 1)
    {
      outPropertyData = v6;
      ioDataSize = 16;
      Property = AudioFileGetProperty(*(this + 20), 0x706B726Cu, &ioDataSize, &outPropertyData);
      v7 = *(this + 35);
      if (!Property)
      {
        v9 = v13;
        *(this + 23) -= v13;
        v7 += v9 * *(this + 13);
        *(this + 35) = v7;
      }
    }
  }

  *(this + 36) = v7;
  result = v3;
  *(this + 43) = v3;
  return result;
}

uint64_t AVAudioPlayerCpp::AQOutputCallbackCore(uint64_t this, AudioQueueRef inAQ, AudioQueueBufferRef inBuffer)
{
  if ((*(this + 312) & 1) == 0)
  {
    if (inBuffer)
    {
      v5 = this;
      if (*(this + 176) == inAQ)
      {
        v6 = 0;
        atomic_fetch_add((this + 424), 0xFFFFFFFF);
        *(this + 256) = 0;
        while (*(this + 8 * v6 + 392) != inBuffer)
        {
          if (++v6 == 3)
          {
            LODWORD(v6) = 0;
            break;
          }
        }

        if (*(this + 314) != 1 || *(this + 416) != inBuffer || (*(this + 416) = 0, this = AVAudioPlayerCpp::loopLogic(this), (this & 1) == 0))
        {
          if (*(v5 + 441) != 1)
          {
            v8 = *(v5 + 48);
            if (v8)
            {
              while (1)
              {
                mAudioDataBytesCapacity = inBuffer->mAudioDataBytesCapacity;
                v10 = inBuffer->mAudioDataBytesCapacity / v8;
                ioNumPackets = v10;
                ioNumBytes = mAudioDataBytesCapacity;
                if (*(v5 + 444) == 1 && *(v5 + 480) < v10)
                {
                  ioNumPackets = *(v5 + 480);
                }

                this = AudioFileReadPacketData(*(v5 + 160), 0, &ioNumBytes, 0, *(v5 + 184), &ioNumPackets, inBuffer->mAudioData);
                v11 = this;
                if (this != -39)
                {
                  if (this)
                  {
                    break;
                  }
                }

                v12 = ioNumPackets;
                v13 = *(v5 + 184) + ioNumPackets;
                *(v5 + 184) = v13;
                if (v12)
                {
                  v29 = *(v5 + 52);
                  inBuffer->mAudioDataByteSize = ioNumBytes;
                  if (*(v5 + 315) == 1)
                  {
                    v30 = v29 * v12;
                    v31 = *(v5 + 288);
                    v32 = v31 - v30;
                    if (v31 >= v30)
                    {
                      v33 = v30;
                    }

                    else
                    {
                      v32 = 0;
                      v33 = *(v5 + 288);
                    }

                    *(v5 + 288) = v32;
                  }

                  else
                  {
                    v33 = 0;
                  }

                  v34 = (v5 + 4 * v6 + 428);
                  *v34 = v33;
                  inBuffer->mUserData = v34;
                  if (*(v5 + 276))
                  {
                    v35 = *(v5 + 200);
                    if (v13 >= v35)
                    {
                      v36 = *(v5 + 276);
                    }

                    else
                    {
                      v36 = 0;
                    }

                    if (v35)
                    {
                      v37 = v36;
                    }

                    else
                    {
                      v37 = 0;
                    }
                  }

                  else
                  {
                    v37 = 0;
                  }

                  this = AudioQueueEnqueueBufferWithParameters(inAQ, inBuffer, 0, 0, v33, v37, 0, 0, 0, 0);
                  goto LABEL_75;
                }

                this = AVAudioPlayerCpp::loopLogic(v5);
                if (this)
                {
                  goto LABEL_77;
                }

                v8 = *(v5 + 48);
              }
            }

            else
            {
              v14 = (v5 + 4 * v6 + 428);
              while (1)
              {
                mPacketDescriptions = inBuffer->mPacketDescriptions;
                v16 = inBuffer->mAudioDataBytesCapacity;
                mPacketDescriptionCapacity = inBuffer->mPacketDescriptionCapacity;
                ioNumPackets = mPacketDescriptionCapacity;
                ioNumBytes = v16;
                if (*(v5 + 444) == 1 && *(v5 + 480) < mPacketDescriptionCapacity)
                {
                  ioNumPackets = *(v5 + 480);
                }

                this = AudioFileReadPacketData(*(v5 + 160), 0, &ioNumBytes, mPacketDescriptions, *(v5 + 184), &ioNumPackets, inBuffer->mAudioData);
                v11 = this;
                if (this != -39 && this != 0)
                {
                  break;
                }

                v19 = ioNumPackets;
                v20 = *(v5 + 184) + ioNumPackets;
                *(v5 + 184) = v20;
                if (v19)
                {
                  v21 = *(v5 + 52) * v19;
                  inBuffer->mAudioDataByteSize = ioNumBytes;
                  inBuffer->mPacketDescriptionCount = v19;
                  if (*(v5 + 315) == 1)
                  {
                    v22 = *(v5 + 288);
                    v23 = v22 - v21;
                    if (v22 >= v21)
                    {
                      v24 = v21;
                    }

                    else
                    {
                      v23 = 0;
                      v24 = *(v5 + 288);
                    }

                    *(v5 + 288) = v23;
                  }

                  else
                  {
                    v24 = 0;
                  }

                  *v14 = v24;
                  inBuffer->mUserData = v14;
                  if (*(v5 + 276) && (v25 = *(v5 + 200)) != 0)
                  {
                    v26 = v20 >= v25 ? *(v5 + 276) : 0;
                  }

                  else
                  {
                    v26 = 0;
                  }

                  if (*(v5 + 112) || !v26 || v26 + v24 <= v21)
                  {
                    this = AudioQueueEnqueueBufferWithParameters(inAQ, inBuffer, v19, mPacketDescriptions, v24, v26, 0, 0, 0, 0);
LABEL_75:
                    *(v5 + 256) = this;
                    if (!this)
                    {
                      *(v5 + 416) = inBuffer;
                      atomic_fetch_add((v5 + 424), 1u);
                    }

                    goto LABEL_77;
                  }
                }

                this = AVAudioPlayerCpp::loopLogic(v5);
                if (this)
                {
                  goto LABEL_77;
                }
              }
            }

            goto LABEL_77;
          }

          if (v6 || (this = AVAudioPlayerCpp::loopLogic(v5), (this & 1) == 0))
          {
            v7 = *(v5 + 448) == inBuffer ? *(v5 + 276) : 0;
            if (*(v5 + 48))
            {
              mPacketDescriptionCount = 0;
              v28 = 0;
            }

            else
            {
              mPacketDescriptionCount = inBuffer->mPacketDescriptionCount;
              v28 = inBuffer->mPacketDescriptions;
            }

            this = AudioQueueEnqueueBufferWithParameters(inAQ, inBuffer, mPacketDescriptionCount, v28, *inBuffer->mUserData, v7, 0, 0, 0, 0);
            *(v5 + 256) = this;
            if (!this)
            {
              *(v5 + 416) = inBuffer;
              atomic_fetch_add((v5 + 424), 1u);
LABEL_85:
              if (!*(v5 + 288))
              {
                *(v5 + 315) = 0;
              }

              return this;
            }
          }
        }

        v11 = 0;
LABEL_77:
        if (!atomic_load((v5 + 424)))
        {
          if (v11 && v11 != -39 || *(v5 + 256))
          {
            *(v5 + 440) = 0;
          }

          if (*(v5 + 307) == 1 && *(v5 + 256) != 560030580)
          {
            this = AVAudioPlayerCpp::flushQueue(v5);
          }
        }

        goto LABEL_85;
      }
    }
  }

  return this;
}

void sub_1BA65FFF4(_Unwind_Exception *a1)
{
  if (!*(v1 + 288))
  {
    *(v1 + 315) = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t AVAudioPlayerCpp::loopLogic(AVAudioPlayerCpp *this)
{
  if ((*(this + 463) & 1) == 0)
  {
    outPropertyData = 0;
    ioDataSize = 8;
    if (!AudioFileGetProperty(*(this + 20), 0x70636E74u, &ioDataSize, &outPropertyData))
    {
      *(this + 58) = outPropertyData * *(this + 13);
      *(this + 463) = 1;
    }
  }

  if (*(this + 442) != 1)
  {
    v6 = *(this + 74);
    v3 = *(this + 75);
    if ((v6 & 0x80000000) == 0 && v3 >= v6)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = 0;
    *(this + 75) = v3 + 1;
    goto LABEL_17;
  }

  if ((*(this + 441) & 1) == 0 && !*(this + 24))
  {
    if (atomic_load(this + 106))
    {
      result = 1;
      *(this + 314) = 1;
      *(this + 441) = 1;
      return result;
    }

    AVAudioPlayerCpp::donePlaying(this);
    return 1;
  }

  v2 = *(this + 74);
  v3 = *(this + 75);
  if (v2 < 0 || v3 < v2)
  {
    goto LABEL_16;
  }

  if (atomic_load(this + 106))
  {
LABEL_13:
    result = 1;
    *(this + 314) = 1;
    *(this + 440) = 1;
    if (*(this + 307) != 1)
    {
      return result;
    }

    AVAudioPlayerCpp::flushQueue(this);
    return 1;
  }

  result = 0;
LABEL_17:
  *(this + 23) = 0;
  v7 = *(this + 68);
  *(this + 35) = v7;
  *(this + 36) = v7;
  *(this + 157) = 256;
  return result;
}

uint64_t FindCodecs(int a1, _DWORD *a2, _DWORD *a3, unsigned int *a4, unsigned int *a5)
{
  outPropertyDataSize = 0;
  inSpecifier = a1;
  *a2 = 0;
  *a3 = 0;
  result = AudioFormatGetPropertyInfo(0x61766465u, 4u, &inSpecifier, &outPropertyDataSize);
  if (!result)
  {
    if (outPropertyDataSize)
    {
      operator new[]();
    }
  }

  return result;
}

uint64_t AVAudioPlayerCpp::makeChannelAssignments(AVAudioPlayerCpp *this)
{
  v2 = *(this + 22);
  if (v2 && (v3 = *(this + 130)) != 0)
  {
    return AudioQueueSetProperty(v2, 0x61716361u, *(this + 66), 16 * v3);
  }

  else
  {
    return 0;
  }
}

void AVAudioPlayerCpp::applySTSLabelToQueueIfPossible(AVAudioPlayerCpp *this)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(this + 22);
  if (v2)
  {
    inData = *(this + 67);
    v3 = AudioQueueSetProperty(v2, 0x7374736Cu, &inData, 8u);
    if (v3)
    {
      v4 = v3;
      if (AVAudioPlayerLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioPlayerLogCategory(void)::once, &__block_literal_global_5228);
      }

      v5 = *AVAudioPlayerLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioPlayerLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        v6 = *(this + 22);
        *buf = 136316162;
        v10 = "AVAudioPlayerCpp.mm";
        v11 = 1024;
        v12 = 2106;
        v13 = 2048;
        v14 = this;
        v15 = 2048;
        v16 = v6;
        v17 = 1024;
        v18 = v4;
        _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d player@0x%p failed to set label on audioqueue 0x%p: %d", buf, 0x2Cu);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t AudioPlayerAQOutputCallback(uint64_t a1, OpaqueAudioQueue *a2, AudioQueueBuffer *a3)
{
  pthread_mutex_lock(&avap_mutex);
  AVAudioPlayerCpp::AQOutputCallbackCore(a1, a2, a3);
  return pthread_mutex_unlock(&avap_mutex);
}

uint64_t AVAudioPlayerCpp::SetProperty(uint64_t this, int a2, uint64_t a3, double *a4)
{
  v4 = this;
  if (a2 > 1885433375)
  {
    if (a2 > 1987013748)
    {
      if (a2 == 1987013749)
      {
        if (a3 != 8)
        {
          return this;
        }

        if (*(this + 208) == *a4)
        {
          return this;
        }

        *(this + 208) = *a4;
        if (*(this + 313))
        {
          return this;
        }

        pthread_mutex_lock(&avap_mutex);
        v19 = *(v4 + 176);
        if (v19)
        {
          v20 = *(v4 + 208);
          AudioQueueSetParameter(v19, 1u, v20);
        }
      }

      else
      {
        if (a2 != 1987015284)
        {
          return this;
        }

        if (a3 != 8)
        {
          return this;
        }

        if (*(this + 216) == *a4)
        {
          return this;
        }

        *(this + 216) = *a4;
        if (*(this + 313))
        {
          return this;
        }

        pthread_mutex_lock(&avap_mutex);
        v9 = *(v4 + 176);
        if (v9)
        {
          v10 = *(v4 + 216);
          AudioQueueSetParameter(v9, 4u, v10);
        }
      }
    }

    else
    {
      if (a2 != 1885433376)
      {
        if (a2 == 1918989413 && a3 == 8 && *(this + 224) != *a4)
        {
          *(this + 224) = *a4;
          if ((*(this + 313) & 1) == 0)
          {
            pthread_mutex_lock(&avap_mutex);
            AudioQueueSetProperty(*(v4 + 176), 0x715F7470u, (v4 + 240), 4u);
            v7 = *(v4 + 176);
            if (v7 && *(v4 + 240))
            {
              LODWORD(inData) = 1953064047;
              AudioQueueSetProperty(v7, 0x71747061u, &inData, 4u);
              v8 = *(v4 + 224);
              AudioQueueSetParameter(*(v4 + 176), 2u, v8);
            }

            return pthread_mutex_unlock(&avap_mutex);
          }
        }

        return this;
      }

      if (a3 != 8)
      {
        return this;
      }

      if (*(this + 232) == *a4)
      {
        return this;
      }

      *(this + 232) = *a4;
      if (*(this + 313))
      {
        return this;
      }

      pthread_mutex_lock(&avap_mutex);
      v13 = *(v4 + 176);
      if (v13)
      {
        v14 = *(v4 + 232);
        AudioQueueSetParameter(v13, 0xDu, v14);
      }
    }

    return pthread_mutex_unlock(&avap_mutex);
  }

  if (a2 > 1701737075)
  {
    if (a2 == 1701737076)
    {
      if (a3 == 4)
      {
        v15 = *a4 != 0;
        v16 = (this + 240);
        if (*(this + 240) != v15)
        {
          *(this + 240) = v15;
          if ((*(this + 313) & 1) == 0)
          {
            pthread_mutex_lock(&avap_mutex);
            AudioQueueSetProperty(*(v4 + 176), 0x715F7470u, (v4 + 240), 4u);
            v17 = *(v4 + 176);
            if (v17 && *v16)
            {
              LODWORD(inData) = 1953064047;
              AudioQueueSetProperty(v17, 0x71747061u, &inData, 4u);
              v18 = *(v4 + 224);
              AudioQueueSetParameter(*(v4 + 176), 2u, v18);
            }

            return pthread_mutex_unlock(&avap_mutex);
          }
        }
      }
    }

    else if (a2 == 1819242352 && a3 == 4)
    {
      *(this + 296) = *a4;
    }
  }

  else if (a2 == 1668573549)
  {
    if (a3 == 8 && (*(this + 313) & 1) == 0)
    {
      v11 = *a4;
      pthread_mutex_lock(&avap_mutex);
      if (v11 < 0.0)
      {
        v11 = 0.0;
      }

      v12 = *(v4 + 248);
      if (v11 > v12)
      {
        if ((*(v4 + 462) & 1) == 0)
        {
          inData = 0;
          ioDataSize = 8;
          if (AudioFileGetProperty(*(v4 + 160), 0x70636E74u, &ioDataSize, &inData))
          {
            v12 = *(v4 + 248);
          }

          else
          {
            v12 = (inData * *(v4 + 52)) / *(v4 + 32);
            *(v4 + 248) = v12;
            *(v4 + 462) = 1;
          }
        }

        if (v11 > v12)
        {
          v11 = v12;
        }
      }

      v21 = *(v4 + 305);
      if ((v21 & 1) != 0 || *(v4 + 304))
      {
        if (*(v4 + 307) == 1)
        {
          *(v4 + 443) = 1;
          if (v21)
          {
            *(v4 + 312) = 1;
            __dmb(0xBu);
            AVAudioPlayerCpp::getQueueTime(v4, 1);
            pthread_mutex_unlock(&avap_mutex);
            v22 = AudioQueueStop(*(v4 + 176), 1u);
            v23 = v22;
            if (!v22)
            {
              v23 = AudioQueueReset(*(v4 + 176));
            }

            pthread_mutex_lock(&avap_mutex);
            if (!v22)
            {
              atomic_store(0, (v4 + 424));
              if (!v23)
              {
                *(v4 + 314) = 0;
                *(v4 + 304) = 0x10000;
                *(v4 + 312) = 0;
                *(v4 + 328) = *(v4 + 344);
                *(v4 + 320) = 0;
                *(v4 + 336) = 0;
                __dmb(0xBu);
              }
            }
          }

          AVAudioPlayerCpp::setPlaybackFramePos(v4, vcvtmd_s64_f64(v11 * *(v4 + 32) + 0.5), 0);
          *(v4 + 328) = *(v4 + 344);
          *(v4 + 444) = 1;
          v24 = AVAudioPlayerCpp::playQueue(v4, 0);
          *(v4 + 443) = 0;
          if (v24)
          {
            AVAudioPlayerCpp::donePlaying(v4);
          }
        }

        else
        {
          AVAudioPlayerCpp::setPlaybackFramePos(v4, vcvtmd_s64_f64(v11 * *(v4 + 32) + 0.5), *(v4 + 304));
          *(v4 + 328) = *(v4 + 344);
          *(v4 + 304) = 0;
          *(v4 + 312) = 1;
          pthread_mutex_unlock(&avap_mutex);
          AudioQueueReset(*(v4 + 176));
          pthread_mutex_lock(&avap_mutex);
          *(v4 + 312) = 0;
          *(v4 + 444) = 1;
          AVAudioPlayerCpp::prepareToPlayQueue(v4);
          *(v4 + 444) = 0;
        }
      }

      else
      {
        AVAudioPlayerCpp::setPlaybackFramePos(v4, vcvtmd_s64_f64(v11 * *(v4 + 32) + 0.5), 0);
        *(v4 + 328) = *(v4 + 344);
      }

      return pthread_mutex_unlock(&avap_mutex);
    }
  }

  else if (a2 == 1701735796 && a3 == 4)
  {
    v5 = *a4 != 0;
    if (*(this + 376) != v5 && (*(this + 313) & 1) == 0)
    {
      pthread_mutex_lock(&avap_mutex);
      v6 = *(v4 + 176);
      if (!v6 || (LODWORD(inData) = v5, !AudioQueueSetProperty(v6, 0x61716D65u, &inData, 4u)))
      {
        *(v4 + 376) = v5;
      }

      return pthread_mutex_unlock(&avap_mutex);
    }
  }

  return this;
}

void sub_1BA660AA0(_Unwind_Exception *a1)
{
  pthread_mutex_lock(&avap_mutex);
  pthread_mutex_unlock(&avap_mutex);
  _Unwind_Resume(a1);
}

const __CFData *AudioPlayerAFGetSizeProc(const __CFData **a1)
{
  result = *a1;
  if (result)
  {
    return CFDataGetLength(result);
  }

  return result;
}

uint64_t AudioPlayerAFReadProc(CFDataRef *a1, uint64_t a2, unsigned int a3, void *a4, unsigned int *a5)
{
  v6 = *a1;
  if (*a1)
  {
    Length = CFDataGetLength(*a1);
    if (a2 < 0)
    {
      a3 = 0;
      result = 4294967256;
    }

    else if (Length <= a2)
    {
      a3 = 0;
      result = 4294967257;
    }

    else
    {
      if (Length - a2 < a3)
      {
        a3 = Length - a2;
      }

      BytePtr = CFDataGetBytePtr(v6);
      memcpy(a4, &BytePtr[a2], a3);
      result = 0;
    }
  }

  else
  {
    a3 = 0;
    result = 4294967246;
  }

  *a5 = a3;
  return result;
}

void MyAudioQueueBuffer::MyAudioQueueBuffer(MyAudioQueueBuffer *this, unsigned int a2, unsigned int a3)
{
  this->var0 = a2;
  this->var1 = 0;
  this->var2 = 0;
  this->var3 = 0;
  this->var4 = a3;
  this->var5 = 0;
  this->var6 = 0;
  *&this->var8 = 0;
  this->var10 = 0;
  if (a2)
  {
    operator new[]();
  }

  if (a3)
  {
    operator new[]();
  }

  *&this->var7.mBitsPerChannel = 0;
  *&this->var7.mBytesPerPacket = 0u;
  *&this->var7.mSampleRate = 0u;
}

void sub_1BA6611B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA6614C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA6620C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA662400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA66268C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA662830(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA662CD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA663050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  std::__tree<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::__map_value_compare<AUGraphNodeBaseV3 *,std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::less<AUGraphNodeBaseV3 *>,true>,std::allocator<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>>>::destroy(*v22);
  caulk::details::lifetime_guard_base<AVAudioEnvironmentNodeImpl>::~lifetime_guard_base(v20);
  AVAudioUnitImpl::~AVAudioUnitImpl(v18);
  MEMORY[0x1BFAF5800](v18, v19);
  _Unwind_Resume(a1);
}

void ControllerImpl::~ControllerImpl(ControllerImpl *this)
{
  ControllerImpl::~ControllerImpl(this);

  JUMPOUT(0x1BFAF5800);
}

{
  v33 = *MEMORY[0x1E69E9840];
  *this = &unk_1F384C968;
  v26 = 4118;
  v27 = 1;
  v28 = 0u;
  v29 = 0u;
  kdebug_trace();
  TraceMethod::TraceMethod(v25, "~ControllerImpl");
  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "ControllerImpl.mm";
    v31 = 1024;
    v32 = 442;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ControllerImpl::Entering Dealloc", buf, 0x12u);
  }

LABEL_8:
  v24 = 1;
  *buf = &v24;
  v4 = std::__tree<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>>>::__emplace_unique_key_args<AVVoiceAlertType,std::piecewise_construct_t const&,std::tuple<AVVoiceAlertType&&>,std::tuple<>>(this + 272, 1);
  v5 = v4[5];
  v4[5] = 0;

  v24 = 2;
  *buf = &v24;
  v6 = std::__tree<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>>>::__emplace_unique_key_args<AVVoiceAlertType,std::piecewise_construct_t const&,std::tuple<AVVoiceAlertType&&>,std::tuple<>>(this + 272, 2);
  v7 = v6[5];
  v6[5] = 0;

  v24 = 3;
  *buf = &v24;
  v8 = std::__tree<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>>>::__emplace_unique_key_args<AVVoiceAlertType,std::piecewise_construct_t const&,std::tuple<AVVoiceAlertType&&>,std::tuple<>>(this + 272, 3);
  v9 = v8[5];
  v8[5] = 0;

  v10 = *(this + 75);
  *(this + 75) = 0;

  v11 = *(this + 3);
  *(this + 3) = 0;

  v12 = *(this + 4);
  *(this + 4) = 0;

  [*(this + 58) invalidatePlugins];
  *(this + 71) = 0;
  v13 = *(this + 24);
  *(v13 + 144) = 1;
  CFRunLoopSourceSignal(*(v13 + 136));
  CFRunLoopWakeUp(*(v13 + 128));
  *(this + 24) = 0;
  if (kAVVCScope)
  {
    v14 = *kAVVCScope;
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "ControllerImpl.mm";
    v31 = 1024;
    v32 = 463;
    _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d QueueRunLoop stopped", buf, 0x12u);
  }

LABEL_15:
  objc_storeWeak(this + 21, 0);
  for (i = 536; i != 568; i += 8)
  {
    v17 = *(this + i);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    *(this + i) = 0;
  }

  +[AVVCMetricsManager destroySharedManager];
  v18 = +[AVVCSessionFactory sharedInstance];
  [v18 releasePrimarySessionManager];

  if (kAVVCScope)
  {
    v19 = *kAVVCScope;
    if (!v19)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "ControllerImpl.mm";
    v31 = 1024;
    v32 = 489;
    _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ControllerImpl::Exiting Dealloc", buf, 0x12u);
  }

LABEL_26:
  TraceMethod::~TraceMethod(v25);
  TraceWrapper::~TraceWrapper(&v26);

  v21 = *(this + 73);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(this + 480);

  objc_destroyWeak(this + 52);
  std::__tree<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::__map_value_compare<AUGraphNodeBaseV3 *,std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::less<AUGraphNodeBaseV3 *>,true>,std::allocator<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>>>::destroy(*(this + 38));
  std::__tree<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>>>::destroy(*(this + 35));

  objc_destroyWeak(this + 21);
  std::recursive_mutex::~recursive_mutex((this + 104));
  std::recursive_mutex::~recursive_mutex((this + 40));

  v22 = *(this + 2);
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1BA66352C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>>>::__emplace_unique_key_args<AVVoiceAlertType,std::piecewise_construct_t const&,std::tuple<AVVoiceAlertType&&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__tree<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>>>::destroy(*a1);
    std::__tree<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<AVVCRecordingEngineMap>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F3849318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFAF5800);
}

void ControllerImpl::setStartAlertMode(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if ((a2 - 1) > 3)
    {
      v6 = "Silent";
    }

    else
    {
      v6 = off_1E7EF6250[a2 - 1];
    }

    v9 = 136315650;
    v10 = "ControllerImpl.h";
    v11 = 1024;
    v12 = 321;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d setStartAlertMode: %s", &v9, 0x1Cu);
  }

LABEL_11:
  if (*(a1 + 320) != a2)
  {
    *(a1 + 320) = a2;
    if (!a2)
    {
      if (*(a1 + 360) >= 200)
      {
        v7 = 200;
      }

      else
      {
        v7 = *(a1 + 360);
      }

      ControllerImpl::setAlertQueueState(a1, v7);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void ControllerImpl::setStopAlertMode(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if ((a2 - 1) > 3)
    {
      v6 = "Silent";
    }

    else
    {
      v6 = off_1E7EF6250[a2 - 1];
    }

    v9 = 136315650;
    v10 = "ControllerImpl.h";
    v11 = 1024;
    v12 = 328;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d setStopAlertMode: %s", &v9, 0x1Cu);
  }

LABEL_11:
  if (*(a1 + 324) != a2)
  {
    *(a1 + 324) = a2;
    if (!a2)
    {
      if (*(a1 + 360) >= 200)
      {
        v7 = 200;
      }

      else
      {
        v7 = *(a1 + 360);
      }

      ControllerImpl::setAlertQueueState(a1, v7);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void ControllerImpl::setStopWithErrorAlertMode(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if ((a2 - 1) > 3)
    {
      v6 = "Silent";
    }

    else
    {
      v6 = off_1E7EF6250[a2 - 1];
    }

    v9 = 136315650;
    v10 = "ControllerImpl.h";
    v11 = 1024;
    v12 = 335;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d setStopWithErrorAlertMode: %s", &v9, 0x1Cu);
  }

LABEL_11:
  if (*(a1 + 328) != a2)
  {
    *(a1 + 328) = a2;
    if (!a2)
    {
      if (*(a1 + 360) >= 200)
      {
        v7 = 200;
      }

      else
      {
        v7 = *(a1 + 360);
      }

      ControllerImpl::setAlertQueueState(a1, v7);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void ControllerImpl::setAlertQueueState(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = "ILLEGAL";
    if (a2 > 201)
    {
      switch(a2)
      {
        case 202:
          v6 = "stopping";
          break;
        case 203:
          v6 = "started";
          break;
        case 204:
          v6 = "running";
          break;
      }
    }

    else if (a2)
    {
      if (a2 == 200)
      {
        v6 = "stopped";
      }

      else if (a2 == 201)
      {
        v6 = "primed";
      }
    }

    else
    {
      v6 = "uninit";
    }

    v8 = 136315650;
    v9 = "ControllerImpl.h";
    v10 = 1024;
    v11 = 536;
    v12 = 2080;
    v13 = v6;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d alert queue state => %s", &v8, 0x1Cu);
  }

LABEL_21:
  *(a1 + 360) = a2;
  v7 = *MEMORY[0x1E69E9840];
}

void MyMutex::~MyMutex(MyMutex *this)
{
  CADeprecated::CAMutex::~CAMutex(this);

  JUMPOUT(0x1BFAF5800);
}

uint64_t CADeprecated::AVVCGenericRunLoopThread::Entry(dispatch_semaphore_t *this, void *a2)
{
  Current = CFRunLoopGetCurrent();
  v7.version = 0;
  v7.info = this;
  memset(&v7.retain, 0, 56);
  v7.perform = CADeprecated::AVVCGenericRunLoopThread::PerformSource;
  v4 = CFRunLoopSourceCreate(0, 0, &v7);
  this[17] = v4;
  v5 = *MEMORY[0x1E695E8E0];
  CFRunLoopAddSource(Current, v4, *MEMORY[0x1E695E8E0]);
  this[16] = Current;
  dispatch_semaphore_signal(this[20]);
  if ((this[18] & 1) == 0)
  {
    do
    {
      CFRunLoopRunInMode(v5, 504911233.0, 1u);
    }

    while (*(this + 144) != 1);
  }

  return 0;
}

void ControllerImpl::ControllerImpl(void *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F384C968;
  a1[3] = 0;
  a1[4] = 0;
  MEMORY[0x1BFAF5690](a1 + 5);
  MEMORY[0x1BFAF5690](a1 + 13);
  a1[21] = 0;
  a1[22] = 0;
  operator new();
}

void ControllerImpl::deactivateSessionForListening(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, int a6, void *a7)
{
  v13 = a2;
  v14 = a7;
  v32 = 4124;
  v33 = 1;
  v34 = 0u;
  v35 = 0u;
  kdebug_trace();
  TraceMethod::TraceMethod(v31, "deactivateSessionForListening");
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = a3;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v28, *(a1 + 8), *(a1 + 16));
  v15 = v28;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3321888768;
  v18[2] = ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke;
  v18[3] = &unk_1F3847F00;
  v22 = a1;
  v23 = v28;
  v24 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = a6;
  v21 = v30;
  v25 = a5;
  v16 = v14;
  v20 = v16;
  v27 = a4;
  v17 = v13;
  v19 = v17;
  ControllerImpl::safeWork(v15, v18, "deactivateSessionForListening");

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Block_object_dispose(v30, 8);
  TraceMethod::~TraceMethod(v31);
  TraceWrapper::~TraceWrapper(&v32);
}

void sub_1BA664B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, ...)
{
  va_start(va, a15);

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Block_object_dispose(va, 8);
  TraceMethod::~TraceMethod((v17 - 128));
  TraceWrapper::~TraceWrapper((v17 - 120));

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SessionLock::SessionLock(v71, v2, v4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    v7 = *(a1 + 64);
    v8 = *(*(*(a1 + 48) + 8) + 24);
    if (ControllerImpl::audioSessionForStreamIDIsPrimary(v7, v8))
    {
      v9 = *(v7 + 576);
      v10 = *(v7 + 584);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v9)
      {
        *buf = &unk_1F384E0C8;
        *&v74[4] = buf;
        AVVCRecordingEngineMap::for_each_engine(v9, buf, "switchRecordModeOnDeactivate");
        std::__function::__value_func<void ()(std::shared_ptr<AVVCRecordingEngine>)>::~__value_func[abi:ne200100](buf);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        v10 = 0;
      }
    }

    else
    {
      ControllerImpl::_lookupEngineForStreamID(buf, *(v7 + 576), *(v7 + 584), v8);
      v11 = *buf;
      if (*buf)
      {
        v12 = (*(**buf + 64))(*buf, 0);
        [v12 setClientRequestsRecording:0];

        (*(*v11 + 288))(v11);
        v10 = 0;
      }

      else
      {
        v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
        v13 = v10;
      }

      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    v6 = v10;
    v5 = *(a1 + 88);
  }

  else
  {
    v6 = 0;
  }

  if ((v5 & 2) != 0)
  {
    v14 = *(a1 + 64);
    v15 = *(a1 + 80);
    v16 = *(*(*(a1 + 48) + 8) + 24);
    v17 = ControllerImpl::sessionManagerForStreamID(v14, v16, 0);
    v18 = [v17 getSessionActivationOptions];

    if (v15)
    {
      if (kAVVCScope)
      {
        if (*(kAVVCScope + 8))
        {
          v22 = *kAVVCScope;
          if (v22)
          {
            v23 = v22;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "ControllerImpl.mm";
              *&buf[12] = 1024;
              *&buf[14] = 539;
              _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d setNoResumeOnDeactivate(FALSE): will notify others on deactivation", buf, 0x12u);
            }
          }
        }
      }

      v21 = v18 | 1u;
    }

    else
    {
      if (kAVVCScope)
      {
        if (*(kAVVCScope + 8))
        {
          v19 = *kAVVCScope;
          if (v19)
          {
            v20 = v19;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "ControllerImpl.mm";
              *&buf[12] = 1024;
              *&buf[14] = 535;
              _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d setNoResumeOnDeactivate(TRUE): will not notify others on deactivation", buf, 0x12u);
            }
          }
        }
      }

      v21 = v18 & 0xFFFFFFFE;
    }

    v24 = ControllerImpl::sessionManagerForStreamID(v14, v16, 0);
    [v24 setSessionActivationOptions:v21];
  }

  ControllerImpl::_lookupEngineForStreamID(&v69, *(*(a1 + 64) + 576), *(*(a1 + 64) + 584), *(*(*(a1 + 48) + 8) + 24));
  v25 = *(*(*(a1 + 48) + 8) + 24);
  v68 = v6;
  v26 = ControllerImpl::sessionManagerForStreamID(v3, v25, &v68);
  v27 = v68;

  if (v27 || !v26)
  {
    if (kAVVCScope)
    {
      v34 = *kAVVCScope;
      if (!v34)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v34 = MEMORY[0x1E69E9C10];
      v35 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 592;
      v73 = 2112;
      *v74 = v27;
      _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d deactivateSessionForListening() returned error(%@)", buf, 0x1Cu);
    }

LABEL_61:
    v36 = *(a1 + 64);
    v37 = v36[61];
    if (v37)
    {
      v38 = *(*(a1 + 48) + 8);
      v39 = *(v38 + 24);
      v40 = vcnt_s8(v37);
      v40.i16[0] = vaddlv_u8(v40);
      if (v40.u32[0] > 1uLL)
      {
        v41 = *(v38 + 24);
        if (v39 >= *&v37)
        {
          v41 = v39 % *&v37;
        }
      }

      else
      {
        v41 = (*&v37 - 1) & v39;
      }

      v42 = *(*&v36[60] + 8 * v41);
      if (v42)
      {
        for (i = *v42; i; i = *i)
        {
          v44 = i[1];
          if (v39 == v44)
          {
            if (i[2] == v39)
            {
              *(v38 + 24) = 0;
              v52 = ControllerImpl::sessionManagerForStreamID(v3, 0, 0);

              v26 = v52;
              goto LABEL_39;
            }
          }

          else
          {
            if (v40.u32[0] > 1uLL)
            {
              if (v44 >= *&v37)
              {
                v44 %= *&v37;
              }
            }

            else
            {
              v44 &= *&v37 - 1;
            }

            if (v44 != v41)
            {
              break;
            }
          }
        }
      }
    }

    if (kAVVCScope)
    {
      v45 = *kAVVCScope;
      if (!v45)
      {
LABEL_84:
        v48 = *(a1 + 64);
        v49 = *(a1 + 40);
        v50 = v49 != 0;
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_120;
        v65[3] = &unk_1E7EF6710;
        v67 = v49;
        v66 = v27;
        ControllerImpl::safeNotifyAlwaysAsync(v48, v50, v65);

        goto LABEL_85;
      }
    }

    else
    {
      v45 = MEMORY[0x1E69E9C10];
      v46 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v47 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 598;
      v73 = 2048;
      *v74 = v47;
      _os_log_impl(&dword_1BA5AC000, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d StreamID(%lu) is not associated with primary session, noop", buf, 0x1Cu);
    }

    goto LABEL_84;
  }

LABEL_39:
  v29 = v69;
  v28 = v70;
  if (v70)
  {
    atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3321888768;
  v54 = ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_2;
  v55 = &unk_1F3847DE8;
  v64 = *(a1 + 92);
  v59 = *(a1 + 48);
  v60 = v29;
  v61 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = v26;
  v31 = *(a1 + 64);
  v30 = *(a1 + 72);
  v56 = v26;
  v62 = v31;
  v63 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v58 = *(a1 + 40);
  v57 = *(a1 + 32);
  v32 = v53;
  v33 = v32;
  if (v29)
  {
    (*(*v29 + 328))(v29, v32, "AVVCDoSafeOrSynchronousWork");
  }

  else
  {
    v54(v32);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

LABEL_85:

  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  VCLocker::~VCLocker(v71);
  v51 = *MEMORY[0x1E69E9840];
}

void sub_1BA665384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  VCLocker::~VCLocker((v32 - 144));
  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_64c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_64c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 72);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v84 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 96) != 1 || *(*(*(a1 + 56) + 8) + 24)) && *(a1 + 64))
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    v5 = v3;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
LABEL_43:

      goto LABEL_44;
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      v1 = (*(*v6 + 64))(*(a1 + 64), 0);
      v7 = [v1 sessionState];
      v8 = "ILLEGAL";
      if (v7 > 3)
      {
        if (v7 > 5)
        {
          if (v7 == 6)
          {
            v8 = "Activating";
          }

          else if (v7 == 7)
          {
            v8 = "Active";
          }
        }

        else if (v7 == 4)
        {
          v8 = "Deactivating";
        }

        else
        {
          v8 = "Prewarming";
        }

LABEL_17:
        v9 = *(a1 + 64);
        v10 = *(a1 + 72);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          if (v9)
          {
            v11 = MEMORY[0x1E696AEC0];
            v12 = *(v9 + 264);
            v13 = v10->__shared_owners_ + 1;
LABEL_22:
            v14 = [v11 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v9, v12, v13];
LABEL_24:
            v15 = v14;
            v16 = *(a1 + 64);
            if (v16)
            {
              v17 = (*(*v16 + 296))(v16);
              if (v17 > 4)
              {
                v18 = "ILLEGAL";
              }

              else
              {
                v18 = off_1E7EF6310[v17];
              }

              v20 = *(a1 + 64);
              if (v20)
              {
                v21 = *(v20 + 216);
                v19 = "ILLEGAL";
                if (v21 <= 2)
                {
                  if (v21)
                  {
                    if (v21 == 1)
                    {
                      v19 = "Uninitialized";
                    }

                    else if (v21 == 2)
                    {
                      v19 = "Prepared";
                    }
                  }

                  else
                  {
                    v19 = "Invalid";
                  }
                }

                else if (v21 > 4)
                {
                  if (v21 == 5)
                  {
                    v19 = "Running";
                  }

                  else if (v21 == 6)
                  {
                    v19 = "Stopping";
                  }
                }

                else if (v21 == 3)
                {
                  v19 = "Stopped";
                }

                else
                {
                  v19 = "Starting";
                }
              }

              else
              {
                v19 = "unconfigured";
              }
            }

            else
            {
              v18 = "unconfigured";
              v19 = "unconfigured";
            }

            *buf = 136316418;
            v73 = "ControllerImpl.mm";
            v74 = 1024;
            v75 = 611;
            v76 = 2080;
            v77 = v8;
            v78 = 2112;
            v79 = v15;
            v80 = 2080;
            v81 = v18;
            v82 = 2080;
            v83 = v19;
            _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);

            if (v10)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            }

            if (v6)
            {
            }

            goto LABEL_43;
          }
        }

        else if (v9)
        {
          v13 = 0;
          v11 = MEMORY[0x1E696AEC0];
          v12 = *(v9 + 264);
          goto LABEL_22;
        }

        v14 = @"(0x0) use_count:0";
        goto LABEL_24;
      }

      if (v7 > 1)
      {
        if (v7 == 2)
        {
          v8 = "InteruptedWhileRecording";
        }

        else
        {
          v8 = "InteruptedWhilePlaying";
        }

        goto LABEL_17;
      }

      if (v7)
      {
        if (v7 == 1)
        {
          v8 = "Inactive";
        }

        goto LABEL_17;
      }
    }

    v8 = "NotConfigured";
    goto LABEL_17;
  }

LABEL_44:
  if (![*(a1 + 32) sessionState])
  {
    if (kAVVCScope)
    {
      v23 = *kAVVCScope;
      if (!v23)
      {
LABEL_61:
        v33 = *(a1 + 80);
        v34 = *(a1 + 48);
        v35 = v34 != 0;
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_123;
        v70[3] = &unk_1E7EF6548;
        v71 = v34;
        ControllerImpl::safeNotifyAlwaysAsync(v33, v35, v70);

        goto LABEL_89;
      }
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v73 = "ControllerImpl.mm";
      v74 = 1024;
      v75 = 619;
      _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d deactivateSessionForListening: Error! Attemtping to deactivate a session that is not configured.", buf, 0x12u);
    }

    goto LABEL_61;
  }

  if ([*(a1 + 32) sessionState] < 5)
  {
    v24 = *(a1 + 64);
    v25 = *(a1 + 80);
    v26 = *(a1 + 88);
    v57[0] = v25;
    v57[1] = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *(a1 + 80);
      v27 = *(a1 + 88);
    }

    else
    {
      v27 = 0;
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3321888768;
    v52[2] = ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_3;
    v52[3] = &unk_1F3848710;
    v55 = v25;
    v56 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = v24 != 0;
    v53 = *(a1 + 40);
    v49 = *(a1 + 48);
    v37 = v49;
    v54 = v49;
    AVVCDoSafeOrSynchronousWork<std::shared_ptr<ControllerImpl>>(v36, v57, v52);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    v38 = v56;
    if (v56)
    {
      goto LABEL_88;
    }
  }

  else
  {
    if ([*(a1 + 32) isPrimary])
    {
      if (kAVVCScope)
      {
        v22 = *kAVVCScope;
        if (!v22)
        {
LABEL_73:
          [*(a1 + 32) setSessionState:4];
          v40 = *(a1 + 64);
          v41 = *(a1 + 88);
          v69[0] = *(a1 + 80);
          v69[1] = v41;
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3321888768;
          v64[2] = ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_125;
          v64[3] = &unk_1F3848710;
          v42 = *(a1 + 40);
          v44 = *(a1 + 80);
          v43 = *(a1 + 88);
          v65 = v42;
          v67 = v44;
          v68 = v43;
          if (v43)
          {
            atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v50 = *(a1 + 48);
          v45 = v50;
          v66 = v50;
          AVVCDoSafeOrSynchronousWork<std::shared_ptr<ControllerImpl>>(v40 != 0, v69, v64);
          if (v41)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v41);
          }

          if (v68)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v68);
          }

          goto LABEL_89;
        }
      }

      else
      {
        v22 = MEMORY[0x1E69E9C10];
        v39 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v73 = "ControllerImpl.mm";
        v74 = 1024;
        v75 = 629;
        _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: Deactivating session with notify ####", buf, 0x12u);
      }

      goto LABEL_73;
    }

    v28 = *(a1 + 64);
    v29 = *(a1 + 80);
    v30 = *(a1 + 88);
    v63[0] = v29;
    v63[1] = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      v29 = *(a1 + 80);
      v31 = *(a1 + 88);
    }

    else
    {
      v31 = 0;
    }

    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3321888768;
    v58[2] = ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_131;
    v58[3] = &unk_1F3848710;
    v61 = v29;
    v62 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v46 = v28 != 0;
    v59 = *(a1 + 40);
    v51 = *(a1 + 48);
    v47 = v51;
    v60 = v51;
    AVVCDoSafeOrSynchronousWork<std::shared_ptr<ControllerImpl>>(v46, v63, v58);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    v38 = v62;
    if (v62)
    {
LABEL_88:
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }
  }

LABEL_89:
  v48 = *MEMORY[0x1E69E9840];
}

void sub_1BA665D40(_Unwind_Exception *a1)
{
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_64c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE80c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_ea8_64c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE80c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(void *result, void *a2)
{
  v2 = a2[9];
  result[8] = a2[8];
  result[9] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[11];
  result[10] = a2[10];
  result[11] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_123(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11781 userInfo:0];
  (*(v1 + 16))(v1);
}

void ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_125(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 56);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_2_127;
  v25[3] = &unk_1E7EF6678;
  objc_copyWeak(&v26, &location);
  ControllerImpl::safeNotify(v2, "beginAudioSessionActivate", v25);
  ControllerImpl::stopKeepAliveQueue(*(*(a1 + 56) + 8), *(*(a1 + 56) + 16));
  v3 = *(a1 + 56);
  if (!*(v3 + 364))
  {
    if (!ControllerImpl::getAlertQueueFromImplQueue(v3))
    {
LABEL_37:
      v14 = ControllerImpl::deactivateSession(*(a1 + 56), *(a1 + 32), "deactivateSessionForListening1", *(*(*(a1 + 48) + 8) + 24));
      goto LABEL_38;
    }

    if (kAVVCScope)
    {
      if (*(kAVVCScope + 8))
      {
        v5 = *kAVVCScope;
        if (v5)
        {
          v6 = v5;
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v35 = "ControllerImpl.mm";
            v36 = 1024;
            v37 = 648;
            _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d deactivateSessionForListening: resetting alert queue", buf, 0x12u);
          }
        }
      }
    }

    ElapsedTime::ElapsedTime(buf, "deactivateSessionForListening_block_invoke", "deactivateSessionForListening:AudioQueueReset", 0);
    AlertQueueFromImplQueue = ControllerImpl::getAlertQueueFromImplQueue(*(a1 + 56));
    v8 = AudioQueueReset(AlertQueueFromImplQueue);
    v9 = v8;
    if (!v8)
    {
LABEL_36:
      ControllerImpl::setAlertQueueState(*(a1 + 56), 200);
      ElapsedTime::~ElapsedTime(buf);
      goto LABEL_37;
    }

    if ((v8 + 199999) > 0x61A7E)
    {
      if (kAVVCScope)
      {
        v10 = *kAVVCScope;
        if (!v10)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v17 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      *v28 = 136315650;
      v29 = "ControllerImpl.mm";
      v30 = 1024;
      v31 = 651;
      v32 = 1024;
      v33 = v9;
      v16 = "%25s:%-5d ERROR: setSessionActive(false): ignoring AudioQueueReset err %{audio:4CC}d";
    }

    else
    {
      if (kAVVCScope)
      {
        v10 = *kAVVCScope;
        if (!v10)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      *v28 = 136315650;
      v29 = "ControllerImpl.mm";
      v30 = 1024;
      v31 = 651;
      v32 = 1024;
      v33 = v9;
      v16 = "%25s:%-5d ERROR: setSessionActive(false): ignoring AudioQueueReset err %d";
    }

    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, v16, v28, 0x18u);
LABEL_35:

    goto LABEL_36;
  }

  if (!kAVVCScope)
  {
    v4 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
    goto LABEL_18;
  }

  v4 = *kAVVCScope;
  if (v4)
  {
LABEL_18:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(a1 + 56) + 364);
      if (v12 > 3)
      {
        v13 = "ILLEGAL";
      }

      else
      {
        v13 = off_1E7EF6288[v12];
      }

      *buf = 136315650;
      v35 = "ControllerImpl.mm";
      v36 = 1024;
      v37 = 658;
      v38 = 2080;
      v39 = v13;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d deactivateSessionForListening: alert state %s -- deactivating session in alertFinished", buf, 0x1Cu);
    }
  }

  ControllerImpl::notifyAlertFinished(*(a1 + 56), *(a1 + 32));
  v14 = 0;
LABEL_38:
  v18 = *(a1 + 56);
  v19 = *(a1 + 40);
  v20 = v19 != 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_130;
  v22[3] = &unk_1E7EF5A18;
  v24 = v14;
  v23 = v19;
  ControllerImpl::safeNotifyAlwaysAsync(v18, v20, v22);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1BA666388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void AVVCDoSafeOrSynchronousWork<std::shared_ptr<ControllerImpl>>(int a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    if (a1)
    {
      ControllerImpl::safeWork(*a2, v5, "AVVCDoSafeOrSynchronousWork");
    }

    else
    {
      v5[2](v5);
    }
  }
}

void ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_131(uint64_t a1)
{
  v1 = a1;
  v2 = ControllerImpl::deactivateSession(*(a1 + 56), *(a1 + 32), "deactivateSessionForListening1", *(*(*(a1 + 48) + 8) + 24));
  v3 = *(v1 + 56);
  v4 = *(v1 + 40);
  LODWORD(v1) = v4 != 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_2_132;
  v5[3] = &unk_1E7EF5A18;
  v7 = v2;
  v6 = v4;
  ControllerImpl::safeNotifyAlwaysAsync(v3, v1, v5);
}

void ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = *(*(*(a1 + 48) + 8) + 24);
  v4 = *(a1 + 32);
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&location, *(v2 + 8), *(v2 + 16));
    SessionState = ControllerImpl::getSessionState(location, v3);
    if (SessionState > 7)
    {
      v9 = "ILLEGAL";
    }

    else
    {
      v9 = off_1E7EF63F8[SessionState];
    }

    *buf = 136315906;
    *&buf[4] = "ControllerImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 867;
    *&buf[18] = 2080;
    *&buf[20] = "deactivateSessionForListening2";
    *&buf[28] = 2080;
    *&buf[30] = v9;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s - setSessionActive(false): session state already %s -- forcing deactivation", buf, 0x26u);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

LABEL_12:
  ControllerImpl::setSessionState(v2, 4, v3);
  objc_initWeak(&location, v4);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN14ControllerImpl35forceDeactivateSessionAndFixupStateEP17AVVoiceControlleriPKcm_block_invoke;
  *&buf[24] = &unk_1E7EF6678;
  objc_copyWeak(&buf[32], &location);
  ControllerImpl::safeNotify(v2, "beginAudioSessionActivate", buf);
  v10 = ControllerImpl::deactivateSession(v2, v4, "deactivateSessionForListening2", v3);
  objc_destroyWeak(&buf[32]);
  objc_destroyWeak(&location);

  v11 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v12 != 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_4;
  v15[3] = &unk_1E7EF5A18;
  v17 = v10;
  v16 = v12;
  ControllerImpl::safeNotifyAlwaysAsync(v11, v13, v15);

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1BA6667CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v2 userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(*(a1 + 32) + 16))();
}

void ControllerImpl::setSessionState(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 7)
    {
      v8 = "ILLEGAL";
    }

    else
    {
      v8 = off_1E7EF63F8[a2];
    }

    v11 = 136315906;
    v12 = "ControllerImpl.h";
    v13 = 1024;
    v14 = 359;
    v15 = 1024;
    v16 = a3;
    v17 = 2080;
    v18 = v8;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d session state(streamID %d) => %s", &v11, 0x22u);
  }

LABEL_11:
  v9 = ControllerImpl::sessionManagerForStreamID(a1, a3, 0);
  [v9 setSessionState:a2];

  v10 = *MEMORY[0x1E69E9840];
}

void ___ZN14ControllerImpl35forceDeactivateSessionAndFixupStateEP17AVVoiceControlleriPKcm_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained beginAudioSessionActivate:0];
  }

  else
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "ControllerImpl.mm";
      v8 = 1024;
      v9 = 873;
      v10 = 2048;
      v11 = 0;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v6, 0x1Cu);
    }
  }

LABEL_10:

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t ControllerImpl::deactivateSession(ControllerImpl *this, AVVoiceController *a2, uint64_t a3, const char *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  val = a2;
  v41 = 4112;
  v42 = 1;
  v43 = 0u;
  v44 = 0u;
  kdebug_trace();
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__5601;
  v39 = __Block_byref_object_dispose__5602;
  v40 = 0;
  SessionState = ControllerImpl::getSessionState(this, a4);
  v7 = ControllerImpl::sessionManagerForStreamID(this, a4, 0);
  v8 = [v7 getSessionActivationOptions];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN14ControllerImpl17deactivateSessionEP17AVVoiceControlleriPKcm_block_invoke;
  aBlock[3] = &unk_1E7EF63D0;
  v9 = v7;
  v34 = v8;
  v32 = v9;
  v33 = &v35;
  v10 = _Block_copy(aBlock);
  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  v13 = v11;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = ControllerImpl::audioSessionForStreamID(this, a4, 0);
    *buf = 136315906;
    v55 = "ControllerImpl.mm";
    v56 = 1024;
    v57 = 892;
    v58 = 2048;
    v59 = v14;
    v60 = 2048;
    v61 = v9;
    _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d deactivate session (%p) (session mananger (%p))", buf, 0x26u);
  }

LABEL_8:
  kdebug_trace();
  ElapsedTime::ElapsedTime(buf, "deactivateSession", "AVAudioSessionDeactivate", 0);
  v15 = +[AVVCMetricsManager sharedManager];
  v16 = [v15 measureElapseTimeForMetric:@"SetSessionInactiveTime" block:v10];

  if (v16)
  {
    goto LABEL_9;
  }

  v17 = [v36[5] code];
  if (!v17)
  {
    goto LABEL_9;
  }

  if (kAVVCScope)
  {
    v18 = *kAVVCScope;
    if (!v18)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v18 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  v20 = v18;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    CAX4CCString::CAX4CCString(v45, v17);
    *v46 = 136315906;
    v47 = "ControllerImpl.mm";
    v48 = 1024;
    v49 = 899;
    v50 = 2080;
    v51 = a3;
    v52 = 2080;
    v53 = v45;
    _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: %s setActive:FALSE withOptions: err %s", v46, 0x26u);
  }

LABEL_18:
  if (v17 == 560030580)
  {
LABEL_9:
    ControllerImpl::setSessionState(this, 1, a4);
LABEL_31:
    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::clear(this + 60);
    v17 = 0;
    goto LABEL_32;
  }

  if (v17 == 1836282486)
  {
    ControllerImpl::setSessionState(this, 0, a4);
    if (kAVVCScope)
    {
      v21 = *kAVVCScope;
      if (!v21)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v46 = 136315650;
      v47 = "ControllerImpl.mm";
      v48 = 1024;
      v49 = 908;
      v50 = 2080;
      v51 = a3;
      _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: %s - error AVAudioSessionErrorCodeMediaServicesFailed ####", v46, 0x1Cu);
    }

    goto LABEL_31;
  }

  ControllerImpl::setSessionState(this, SessionState, a4);
  if (kAVVCScope)
  {
    v22 = *kAVVCScope;
    if (!v22)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E9C10];
    v26 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v46 = 136315650;
    v47 = "ControllerImpl.mm";
    v48 = 1024;
    v49 = 904;
    v50 = 2080;
    v51 = a3;
    _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: %s - error ####", v46, 0x1Cu);
  }

LABEL_32:
  kdebug_trace();
  if (ControllerImpl::audioSessionForStreamIDIsPrimary(this, a4))
  {
    objc_initWeak(v46, val);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = ___ZN14ControllerImpl17deactivateSessionEP17AVVoiceControlleriPKcm_block_invoke_145;
    v29[3] = &unk_1E7EF6678;
    objc_copyWeak(&v30, v46);
    ControllerImpl::safeNotify(this, "endAudioSessionActivate", v29);
    objc_destroyWeak(&v30);
    objc_destroyWeak(v46);
  }

  ElapsedTime::~ElapsedTime(buf);

  _Block_object_dispose(&v35, 8);
  TraceWrapper::~TraceWrapper(&v41);

  v24 = *MEMORY[0x1E69E9840];
  return v17;
}

void sub_1BA667168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  ElapsedTime::~ElapsedTime(&a43);

  _Block_object_dispose(&a24, 8);
  TraceWrapper::~TraceWrapper(&a30);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5601(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ___ZN14ControllerImpl17deactivateSessionEP17AVVoiceControlleriPKcm_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 setActive:0 withOptions:v1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  return v4;
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

BOOL ControllerImpl::audioSessionForStreamIDIsPrimary(ControllerImpl *this, unint64_t a2)
{
  v2 = ControllerImpl::audioSessionForStreamID(this, a2, 0);
  v3 = [MEMORY[0x1E698D708] sharedInstance];
  v4 = v2 == v3;

  return v4;
}

void ___ZN14ControllerImpl17deactivateSessionEP17AVVoiceControlleriPKcm_block_invoke_145(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained endAudioSessionActivate:0];
  }

  else
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "ControllerImpl.mm";
      v8 = 1024;
      v9 = 930;
      v10 = 2048;
      v11 = 0;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v6, 0x1Cu);
    }
  }

LABEL_10:

  v5 = *MEMORY[0x1E69E9840];
}

void ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_2_132(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v2 userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(*(a1 + 32) + 16))();
}

void ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_2_127(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained beginAudioSessionActivate:0];
  }

  else
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "ControllerImpl.mm";
      v8 = 1024;
      v9 = 639;
      v10 = 2048;
      v11 = 0;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v6, 0x1Cu);
    }
  }

LABEL_10:

  v5 = *MEMORY[0x1E69E9840];
}

void ControllerImpl::stopKeepAliveQueue(ControllerImpl *this, std::__shared_weak_count *a2)
{
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v4, this, a2);
  v2 = +[AVVCKeepAliveManager sharedManager];
  [v2 stopWithCompletion:0];

  v3 = +[AVVCKeepAliveManager sharedManager];
  [v3 destroyWithCompletion:0];

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1BA6676C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  v11 = v10;

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void ControllerImpl::notifyAlertFinished(ControllerImpl *this, AVVoiceController *a2)
{
  v3 = a2;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v15, *(this + 1), *(this + 2));
  v4 = v15;
  v5 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AlertLock::AlertLock(v14, v4, v5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v15 + 51);
  if (v6)
  {
    v7 = *(v15 + 26);
    v8 = *(v15 + 49);
    objc_initWeak(&location, v3);
    v9 = v15;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___ZN14ControllerImpl19notifyAlertFinishedEP17AVVoiceController_block_invoke;
    v10[3] = &unk_1E7EF5BA8;
    objc_copyWeak(v11, &location);
    v12 = v6;
    v11[1] = v7;
    v11[2] = v8;
    ControllerImpl::safeNotify(v9, "notifyAlertFinished", v10);
    ControllerImpl::alertFinished(v15, v3);
    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }

  VCLocker::~VCLocker(v14);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1BA667828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  VCLocker::~VCLocker(&a19);
  v23 = *(v21 - 56);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptionsU13block_pointerFvP7NSErrorE_block_invoke_130(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v2 userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(*(a1 + 32) + 16))();
}

void ___ZN14ControllerImpl19notifyAlertFinishedEP17AVVoiceController_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = [[AVVCAlertInformation alloc] initWithAlertType:*(a1 + 56) mode:*(a1 + 40) endTime:*(a1 + 48)];
    [WeakRetained alertPlaybackFinishedWithSettings:v3];
  }

  else
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "ControllerImpl.mm";
      v9 = 1024;
      v10 = 2627;
      v11 = 2048;
      v12 = 0;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v7, 0x1Cu);
    }
  }

LABEL_10:

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1BA667A48(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void ControllerImpl::alertFinished(ControllerImpl *this, AVVoiceController *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v32, *(this + 1), *(this + 2));
  TraceMethod::TraceMethod(v31, "alertFinished");
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
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
    v35 = "ControllerImpl.mm";
    v36 = 1024;
    v37 = 2568;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d alertFinished", buf, 0x12u);
  }

LABEL_8:
  ControllerImpl::setAlertState(this, 0);
  if (*(this + 90) > 201)
  {
    v7 = ControllerImpl::sessionManagerForStreamID(this, 0, 0);
    if ([v7 sessionState] != 4)
    {
LABEL_64:

      if (ControllerImpl::getAlertQueueFromImplQueue(this))
      {
        v25 = 200;
      }

      else
      {
        v25 = 0;
      }

      ControllerImpl::setAlertQueueState(this, v25);
      *(this + 51) = 0;
      *(this + 26) = 0;
      goto LABEL_68;
    }

    v8 = v32;
    v9 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SessionLock::SessionLock(v30, v8, v9);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v35 = "ControllerImpl.mm";
      v36 = 1024;
      v37 = 2585;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d alertFinished: deactivating session -- finishing the job", buf, 0x12u);
    }

LABEL_35:
    v15 = [v7 sessionState];
    v29 = 0;
    v16 = [v7 setActive:0 withOptions:objc_msgSend(v7 error:{"getSessionActivationOptions"), &v29}];
    v17 = v29;
    v18 = v17;
    if (v16)
    {
      [v7 setSessionState:1];
LABEL_63:
      objc_initWeak(buf, v3);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = ___ZN14ControllerImpl13alertFinishedEP17AVVoiceController_block_invoke;
      v27[3] = &unk_1E7EF6678;
      objc_copyWeak(&v28, buf);
      ControllerImpl::safeNotify(this, "endAudioSessionActivate", v27);
      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);

      VCLocker::~VCLocker(v30);
      goto LABEL_64;
    }

    v19 = [v17 code];
    v20 = v19;
    if (v19)
    {
      if ((v19 + 199999) <= 0x61A7E)
      {
        if (kAVVCScope)
        {
          v21 = *kAVVCScope;
          if (!v21)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v21 = MEMORY[0x1E69E9C10];
          v22 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v35 = "ControllerImpl.mm";
          v36 = 1024;
          v37 = 2592;
          v38 = 1024;
          LODWORD(v39) = v20;
          v23 = "%25s:%-5d ERROR: alertFinished: setActive:FALSE withOptions: err %d";
LABEL_59:
          _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_ERROR, v23, buf, 0x18u);
          goto LABEL_60;
        }

        goto LABEL_60;
      }

      if (kAVVCScope)
      {
        v21 = *kAVVCScope;
        if (!v21)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
        v24 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v35 = "ControllerImpl.mm";
        v36 = 1024;
        v37 = 2592;
        v38 = 1024;
        LODWORD(v39) = v20;
        v23 = "%25s:%-5d ERROR: alertFinished: setActive:FALSE withOptions: err %{audio:4CC}d";
        goto LABEL_59;
      }

LABEL_60:
    }

LABEL_61:
    if (v20 != 560030580)
    {
      [v7 setSessionState:v15];
    }

    goto LABEL_63;
  }

  if (!kAVVCScope)
  {
    v6 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
    goto LABEL_21;
  }

  v6 = *kAVVCScope;
  if (v6)
  {
LABEL_21:
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(this + 90);
      v13 = "ILLEGAL";
      if (v12 > 201)
      {
        switch(v12)
        {
          case 202:
            v13 = "stopping";
            break;
          case 203:
            v13 = "started";
            break;
          case 204:
            v13 = "running";
            break;
        }
      }

      else if (v12)
      {
        if (v12 == 200)
        {
          v13 = "stopped";
        }

        else if (v12 == 201)
        {
          v13 = "primed";
        }
      }

      else
      {
        v13 = "uninit";
      }

      *buf = 136315650;
      v35 = "ControllerImpl.mm";
      v36 = 1024;
      v37 = 2573;
      v38 = 2080;
      v39 = v13;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d alertFinished: state = %s -- not priming alert", buf, 0x1Cu);
    }
  }

  if (*(this + 90) != 201)
  {
    ControllerImpl::setAlertQueueState(this, 200);
  }

LABEL_68:
  TraceMethod::~TraceMethod(v31);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1BA668024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, std::__shared_weak_count *a20, id location)
{
  VCLocker::~VCLocker(&a16);

  TraceMethod::~TraceMethod(&a18);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

void ControllerImpl::setAlertState(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
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
    v6 = off_1E7EF6288[a2];
    v8 = 136315650;
    v9 = "ControllerImpl.h";
    v10 = 1024;
    v11 = 535;
    v12 = 2080;
    v13 = v6;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d alert state => %s", &v8, 0x1Cu);
  }

LABEL_8:
  *(a1 + 364) = a2;
  v7 = *MEMORY[0x1E69E9840];
}

void ___ZN14ControllerImpl13alertFinishedEP17AVVoiceController_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained endAudioSessionActivate:0];
  }

  else
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "ControllerImpl.mm";
      v8 = 1024;
      v9 = 2604;
      v10 = 2048;
      v11 = 0;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v6, 0x1Cu);
    }
  }

LABEL_10:

  v5 = *MEMORY[0x1E69E9840];
}

void std::__function::__func<ControllerImpl::switchRecordModeOnDeactivate(unsigned long,NSError * {__autoreleasing}*)::$_0,std::allocator<ControllerImpl::switchRecordModeOnDeactivate(unsigned long,NSError * {__autoreleasing}*)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = (*(*v3 + 56))(v3, 0);
  v5 = [MEMORY[0x1E698D708] sharedInstance];

  if (v4 == v5)
  {
    v6 = (*(*v3 + 64))(v3, 0);
    [v6 setClientRequestsRecording:0];

    (*(*v3 + 288))(v3);
  }

  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1BA6683F4(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptions_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 76);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptions_block_invoke_2;
  v12[3] = &unk_1E7EF5A40;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v3;
  v14 = v9;
  v11 = v3;
  ControllerImpl::deactivateSessionForListening(v4, v10, v5, v6, v7, v8, v12);
}

void ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptions_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    LODWORD(v3) = [v3 code];
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_semaphore_signal(v4);
  }
}

void ControllerImpl::handlePluginDidPublishDevice(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 deviceIdentifier];
    v13 = 136316162;
    v14 = "ControllerImpl.mm";
    v15 = 1024;
    v16 = 735;
    v17 = 2048;
    v18 = v6;
    v19 = 2048;
    v20 = v7;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d handlePluginDidPublishDevice notification for plugin(%p), device(%p), deviceID(%@)", &v13, 0x30u);
  }

LABEL_8:
  v12 = *MEMORY[0x1E69E9840];
}

void ControllerImpl::_removeEngineFromMap(uint64_t a1, void *a2, unint64_t a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v29, *(a1 + 8), *(a1 + 16));
  v12 = *(v29 + 576);
  v13 = *(v29 + 584);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12)
  {
    if (v10)
    {
      AVVCRecordingEngineMap::findEngine(buf, v12, v10);
    }

    else
    {
      AVVCRecordingEngineMap::findEngine(buf, v12, a3);
    }

    v15 = *buf;
    if (*buf)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3321888768;
      v20[2] = ___ZN14ControllerImpl20_removeEngineFromMapEP17AVVoiceControllermP8NSStringU13block_pointerFvvE_block_invoke;
      v20[3] = &unk_1F3849150;
      v23 = a1;
      v24 = *buf;
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
      }

      v25 = v29;
      v26 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = v12;
      v28 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = v9;
      v22 = v11;
      (*(*v15 + 328))(v15, v20, "_removeEngineFromMap");

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (*(&v24 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v24 + 1));
      }

LABEL_38:
      if (*(&v15 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
      }

      goto LABEL_40;
    }

    if (kAVVCScope)
    {
      v16 = *kAVVCScope;
      if (!v16)
      {
LABEL_36:
        if (v11)
        {
          v11[2](v11);
        }

        goto LABEL_38;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4324;
      v32 = 2048;
      v33 = a3;
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d _removeEngineFromMap: Engine for streamID(%llu) not found.", buf, 0x1Cu);
    }

    goto LABEL_36;
  }

  if (!kAVVCScope)
  {
    v14 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
    goto LABEL_27;
  }

  v14 = *kAVVCScope;
  if (v14)
  {
LABEL_27:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4310;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d _removeEngineFromMap: Engine Map does not exist", buf, 0x12u);
    }
  }

  if (v11)
  {
    v11[2](v11);
  }

LABEL_40:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1BA668B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    if (!v27)
    {
LABEL_6:
      if (a24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  goto LABEL_6;
}

void ___ZN14ControllerImpl20_removeEngineFromMapEP17AVVoiceControllermP8NSStringU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = (*(**(a1 + 56) + 296))(*(a1 + 56));
  v4 = *(*(a1 + 56) + 264);
  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
LABEL_5:
    v7 = v5;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_19:

      goto LABEL_20;
    }

    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v8)
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = *(v8 + 264);
        v12 = v9->__shared_owners_ + 1;
LABEL_11:
        v13 = [v10 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v8, v11, v12];
LABEL_13:
        if (v3 > 4)
        {
          v14 = "ILLEGAL";
        }

        else
        {
          v14 = off_1E7EF6310[v3];
        }

        *buf = 136315906;
        v40 = "ControllerImpl.mm";
        v41 = 1024;
        v42 = 4333;
        v43 = 2112;
        v44 = v13;
        v45 = 2080;
        v46 = v14;
        _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d _removeEngineFromMap: engine[%@] engineType(%s) ", buf, 0x26u);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        goto LABEL_19;
      }
    }

    else if (v8)
    {
      v12 = 0;
      v10 = MEMORY[0x1E696AEC0];
      v11 = *(v8 + 264);
      goto LABEL_11;
    }

    v13 = @"(0x0) use_count:0";
    goto LABEL_13;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_20:
  v15 = *(*(a1 + 56) + 216);
  if (v15 < 4)
  {
    goto LABEL_32;
  }

  if (!kAVVCScope)
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
    goto LABEL_25;
  }

  v16 = *kAVVCScope;
  if (v16)
  {
LABEL_25:
    v18 = v16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(*(a1 + 56) + 216);
      if (v19 > 6)
      {
        v20 = "ILLEGAL";
      }

      else
      {
        v20 = off_1E7EF6338[v19];
      }

      *buf = 136315650;
      v40 = "ControllerImpl.mm";
      v41 = 1024;
      v42 = 4338;
      v43 = 2080;
      v44 = v20;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d _removeEngineFromMap: Stream state is (%s). Will stop recording before removing the engine.", buf, 0x1Cu);
    }
  }

  AVVCRecordingEngine::setRecordErrorStatus(*(a1 + 56), 0xFFFFD1F1, "_removeEngineFromMap_block_invoke");
LABEL_32:
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v37, *(v2 + 8), *(v2 + 16));
  RecordLock::RecordLock(buf, v37, v38);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  (*(**(a1 + 56) + 112))(*(a1 + 56), v15 > 3);
  VCLocker::~VCLocker(buf);
  AVVCRecordingEngine::resetCompletionBlocks(*(*(a1 + 56) + 8), *(*(a1 + 56) + 16));
  v21 = *(a1 + 72);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3321888768;
  v28[2] = ___ZN14ControllerImpl20_removeEngineFromMapEP17AVVoiceControllermP8NSStringU13block_pointerFvvE_block_invoke_362;
  v28[3] = &unk_1F3847E90;
  v23 = *(a1 + 88);
  v22 = *(a1 + 96);
  v31 = v2;
  v32 = v23;
  v33 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v34 = v4;
  v24 = *(a1 + 32);
  v26 = *(a1 + 72);
  v25 = *(a1 + 80);
  v29 = v24;
  v35 = v26;
  v36 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = *(a1 + 40);
  ControllerImpl::safeWork(v21, v28, "_removeEngineFromMap_block_invoke");

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_1BA668FE8(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_56c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE72c42_ZTSNSt3__110shared_ptrI14ControllerImplEE88c50_ZTSNSt3__110shared_ptrI22AVVCRecordingEngineMapEE(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[10];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[8];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *__copy_helper_block_ea8_56c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE72c42_ZTSNSt3__110shared_ptrI14ControllerImplEE88c50_ZTSNSt3__110shared_ptrI22AVVCRecordingEngineMapEE(void *result, void *a2)
{
  v2 = a2[8];
  result[7] = a2[7];
  result[8] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[10];
  result[9] = a2[9];
  result[10] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[12];
  result[11] = a2[11];
  result[12] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ControllerImpl20_removeEngineFromMapEP17AVVoiceControllermP8NSStringU13block_pointerFvvE_block_invoke_362(uint64_t a1)
{
  v2 = *(a1 + 48);
  AVVCRecordingEngineMap::removeEngine(*(a1 + 56), *(a1 + 72));
  v3 = *(a1 + 72);
  if (!v3 || *(v2 + 472) == v3)
  {
    *(v2 + 472) = 0;
  }

  objc_initWeak(&location, *(a1 + 32));
  v4 = *(a1 + 80);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN14ControllerImpl20_removeEngineFromMapEP17AVVoiceControllermP8NSStringU13block_pointerFvvE_block_invoke_2;
  v6[3] = &unk_1E7EF5BD0;
  objc_copyWeak(v7, &location);
  v7[1] = *(a1 + 72);
  ControllerImpl::safeNotify(v4, "notifyStreamInvalidated", v6);
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void sub_1BA6691FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_56c50_ZTSNSt3__110shared_ptrI22AVVCRecordingEngineMapEE80c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_ea8_56c50_ZTSNSt3__110shared_ptrI22AVVCRecordingEngineMapEE80c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(void *result, void *a2)
{
  v2 = a2[8];
  result[7] = a2[7];
  result[8] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[11];
  result[10] = a2[10];
  result[11] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ControllerImpl20_removeEngineFromMapEP17AVVoiceControllermP8NSStringU13block_pointerFvvE_block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained notifyStreamInvalidated:*(a1 + 40)];
  }

  else
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "ControllerImpl.mm";
      v9 = 1024;
      v10 = 4361;
      v11 = 2048;
      v12 = 0;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v7, 0x1Cu);
    }
  }

LABEL_10:

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t ControllerImpl::configureAlerts(ControllerImpl *this, AVVoiceController *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  TraceMethod::TraceMethod(v11, "configureAlerts");
  ElapsedTime::ElapsedTime(v13, "configureAlerts", 0, 0);
  v10 = 1;
  v12 = &v10;
  v4 = std::__tree<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>>>::__emplace_unique_key_args<AVVoiceAlertType,std::piecewise_construct_t const&,std::tuple<AVVoiceAlertType&&>,std::tuple<>>(this + 272, 1);
  v5 = ControllerImpl::setupAlert(this, v3, 1, v4[5]);
  if (!v5)
  {
    v10 = 2;
    v12 = &v10;
    v6 = std::__tree<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>>>::__emplace_unique_key_args<AVVoiceAlertType,std::piecewise_construct_t const&,std::tuple<AVVoiceAlertType&&>,std::tuple<>>(this + 272, 2);
    v5 = ControllerImpl::setupAlert(this, v3, 2, v6[5]);
    if (!v5)
    {
      v10 = 3;
      v12 = &v10;
      v7 = std::__tree<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,NSURL * {__strong}>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,NSURL * {__strong}>>>::__emplace_unique_key_args<AVVoiceAlertType,std::piecewise_construct_t const&,std::tuple<AVVoiceAlertType&&>,std::tuple<>>(this + 272, 3);
      v5 = ControllerImpl::setupAlert(this, v3, 3, v7[5]);
    }
  }

  ElapsedTime::~ElapsedTime(v13);
  TraceMethod::~TraceMethod(v11);

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1BA669520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ElapsedTime::~ElapsedTime(va1);
  TraceMethod::~TraceMethod(va);

  _Unwind_Resume(a1);
}

void ControllerImpl::setAlertQueueFromImplQueue(ControllerImpl *this, OpaqueAudioQueue *a2)
{
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v8, *(this + 1), *(this + 2));
  v4 = *(*(this + 24) + 128);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v5[2] = ___ZN14ControllerImpl26setAlertQueueFromImplQueueEP16OpaqueAudioQueue_block_invoke;
  v5[3] = &__block_descriptor_56_ea8_32c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
  v5[4] = v8;
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a2;
  ExecuteBlockOnRunLoop(v4, 0xFFFFFFFFFFFFFFFFLL, v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1BA66961C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  v17 = *(v15 - 24);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void ControllerImpl::AlertAQPropertyListenerProc(ControllerImpl *this, void *a2, OpaqueAudioQueue *a3)
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v25, "AlertAQPropertyListenerProc");
  v6 = this;
  v7 = v6;
  if (v6)
  {
    [(ControllerImpl *)v6 impl];
    if (v23)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(buf, *(v23 + 8), *(v23 + 16));
      if (IsSerializationEnabled(void)::onceToken != -1)
      {
        dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
      }

      if (IsSerializationEnabled(void)::enable == 1)
      {
        v8 = *(*buf + 192);
        v9 = atomic_load((v8 + 8));
        if (!v9 || (v10 = pthread_self(), v11 = atomic_load((v8 + 8)), v10 != v11))
        {
          __assert_rtn("getAlertQueueFromRunLoop", "ControllerImpl.h", 499, "implSP->getAudioQueueRunLoop()->IsCurrentThread() && This code must run only on the AQ runloop thread");
        }
      }

      v12 = *(v23 + 616);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      if (v12 && ObjectExists(v7))
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3321888768;
        v17[2] = ___ZN14ControllerImpl27AlertAQPropertyListenerProcEPvP16OpaqueAudioQueuej_block_invoke;
        v17[3] = &unk_1F3848860;
        v13 = v23;
        v19 = v23;
        v20 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v18 = v7;
        v21 = a2;
        v22 = v3;
        ControllerImpl::dispatchAndSafeWork(v13, v17, "AlertAQPropertyListenerProc");

        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        goto LABEL_23;
      }
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v14 = *kAVVCScope;
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2653;
          _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Alert Listener: impl or queue is NULL or object is being destroyed -- noop", buf, 0x12u);
        }
      }
    }
  }

LABEL_23:
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  TraceMethod::~TraceMethod(v25);
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1BA6698C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, ...)
{
  va_start(va, a12);

  if (a8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a8);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl27AlertAQPropertyListenerProcEPvP16OpaqueAudioQueuej_block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v36, *(v1 + 8), *(v1 + 16));
  TraceMethod::TraceMethod(v35, "handleAlertAQPropertyChange");
  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v4 = *kAVVCScope;
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v6 = *(v1 + 360);
          v7 = "ILLEGAL";
          if (v6 > 201)
          {
            switch(v6)
            {
              case 202:
                v7 = "stopping";
                break;
              case 203:
                v7 = "started";
                break;
              case 204:
                v7 = "running";
                break;
            }
          }

          else if (v6)
          {
            if (v6 == 200)
            {
              v7 = "stopped";
            }

            else if (v6 == 201)
            {
              v7 = "primed";
            }
          }

          else
          {
            v7 = "uninit";
          }

          *buf = 136315650;
          v40 = "ControllerImpl.mm";
          v41 = 1024;
          v42 = 2670;
          v43 = 2080;
          v44 = v7;
          _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Alert Listener: mAlertQueueState = %s", buf, 0x1Cu);
        }
      }
    }
  }

  if (*(v1 + 408) != 1)
  {
    v9 = v36;
    v10 = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AlertLock::AlertLock(v34, v9, v10);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v1 + 360);
      v15 = "ILLEGAL";
      if (v14 > 201)
      {
        switch(v14)
        {
          case 202:
            v15 = "stopping";
            break;
          case 203:
            v15 = "started";
            break;
          case 204:
            v15 = "running";
            break;
        }
      }

      else if (v14)
      {
        if (v14 == 200)
        {
          v15 = "stopped";
        }

        else if (v14 == 201)
        {
          v15 = "primed";
        }
      }

      else
      {
        v15 = "uninit";
      }

      *buf = 136315650;
      v40 = "ControllerImpl.mm";
      v41 = 1024;
      v42 = 2676;
      v43 = 2080;
      v44 = v15;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Alert Listener: mAlertQueueState = %s", buf, 0x1Cu);
    }

LABEL_53:
    v16 = ControllerImpl::sessionManagerForStreamID(v1, 0, 0);
    v17 = [v16 sessionState];

    if (v2 != 1634824814)
    {
      if (kAVVCScope)
      {
        v21 = *kAVVCScope;
        if (!v21)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
        v22 = MEMORY[0x1E69E9C10];
      }

      v23 = v21;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        CAX4CCString::CAX4CCString(v38, v2);
        *buf = 136315650;
        v40 = "ControllerImpl.mm";
        v41 = 1024;
        v42 = 2732;
        v43 = 2080;
        v44 = v38;
        _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Alert Listener: unhandled inID %s", buf, 0x1Cu);
      }

      goto LABEL_64;
    }

    AlertQueueFromImplQueue = ControllerImpl::getAlertQueueFromImplQueue(v1);
    IsRunning = QueueIsRunning(AlertQueueFromImplQueue);
    if (kAVVCScope)
    {
      v20 = *kAVVCScope;
      if (!v20)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v40 = "ControllerImpl.mm";
      v41 = 1024;
      v42 = 2686;
      v43 = 1024;
      LODWORD(v44) = IsRunning;
      _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Alert Listener: RUNNING = %d", buf, 0x18u);
    }

LABEL_72:
    if (IsRunning)
    {
      if (v17 == 2)
      {
        if (kAVVCScope)
        {
          v26 = *kAVVCScope;
          if (!v26)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v26 = MEMORY[0x1E69E9C10];
          v30 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v40 = "ControllerImpl.mm";
          v41 = 1024;
          v42 = 2691;
          _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d Alert Listener: session was interrupted!  Doing nothing here", buf, 0x12u);
        }

        goto LABEL_116;
      }

      v28 = *(v1 + 360);
      if (v28 == 200)
      {
        goto LABEL_105;
      }

      if (v28 == 204)
      {
        if (!kAVVCScope)
        {
          goto LABEL_64;
        }

        if ((*(kAVVCScope + 8) & 1) == 0)
        {
          goto LABEL_64;
        }

        v29 = *kAVVCScope;
        if (!v29)
        {
          goto LABEL_64;
        }

        v26 = v29;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v40 = "ControllerImpl.mm";
          v41 = 1024;
          v42 = 2696;
          _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d Alert Listener: state already kAlertQueueRunning.  Doing nothing here", buf, 0x12u);
        }

LABEL_116:

        goto LABEL_64;
      }

      if (!*(v1 + 204))
      {
LABEL_105:
        if (kAVVCScope)
        {
          v26 = *kAVVCScope;
          if (!v26)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v26 = MEMORY[0x1E69E9C10];
          v33 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v40 = "ControllerImpl.mm";
          v41 = 1024;
          v42 = 2702;
          _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Alert Listener: Alert was stopped/interrupted, but an alert queue didStart was received. No-op", buf, 0x12u);
        }

        goto LABEL_116;
      }

      ControllerImpl::setAlertQueueState(v1, 204);
      ControllerImpl::alertStarted(v1, v3);
LABEL_64:
      VCLocker::~VCLocker(v34);
      goto LABEL_65;
    }

    if (ControllerImpl::getSessionState(v1, 0) <= 4)
    {
      if (kAVVCScope)
      {
        v26 = *kAVVCScope;
        if (!v26)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v26 = MEMORY[0x1E69E9C10];
        v31 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v40 = "ControllerImpl.mm";
        v41 = 1024;
        v42 = 2712;
        _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Alert Listener: Session is inactive, alertFinishedPlayback already synthesized in deactivateSession.", buf, 0x12u);
      }

      goto LABEL_116;
    }

    if (*(v1 + 360) != 203 || v17 == 2)
    {
      *(v1 + 208) = 2;
      ControllerImpl::notifyAlertFinished(v1, v3);
      goto LABEL_64;
    }

    if (kAVVCScope)
    {
      v27 = *kAVVCScope;
      if (!v27)
      {
LABEL_112:
        ControllerImpl::alertStarted(v1, v3);
        ControllerImpl::setAlertQueueState(v1, 204);
        goto LABEL_64;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v40 = "ControllerImpl.mm";
      v41 = 1024;
      v42 = 2716;
      _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d Alert Listener: queue reports stopped on first IsRunning prop notification -- treat this like a regular start", buf, 0x12u);
    }

    goto LABEL_112;
  }

  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v40 = "ControllerImpl.mm";
    v41 = 1024;
    v42 = 2672;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Alert Listener: in the middle of priming alert queue:  Doing nothing.  [THIS IS NEW BEHAVIOR]", buf, 0x12u);
  }

LABEL_65:
  TraceMethod::~TraceMethod(v35);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1BA66A184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, std::__shared_weak_count *a14)
{
  VCLocker::~VCLocker(&a10);
  TraceMethod::~TraceMethod(&a12);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void ControllerImpl::alertStarted(ControllerImpl *this, AVVoiceController *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = a2;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v64, *(this + 1), *(this + 2));
  TraceMethod::TraceMethod(v63, "alertStarted");
  ControllerImpl::setAlertState(this, 2);
  if (*(this + 51) == 1 && (*(this + 409) & 1) == 0)
  {
    ControllerImpl::_getCurrentRecordingEngine(&v61, this, *(this + 59), 0, "alertStarted");
    v6 = v61;
    if (v61 && *(v61 + 216) == 4)
    {
      if (*(this + 80) != 2)
      {
LABEL_100:
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3321888768;
        v57[2] = ___ZN14ControllerImpl12alertStartedEP17AVVoiceController_block_invoke;
        v57[3] = &__block_descriptor_64_ea8_32c42_ZTSNSt3__110shared_ptrI14ControllerImplEE48c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE_e5_v8__0l;
        v57[4] = v64;
        v58 = v65;
        if (v65)
        {
          atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = v62;
        v59 = v6;
        v60 = v62;
        if (v62)
        {
          atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 328))(v6, v57, "alertStarted");
        if (v60)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v60);
        }

        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v58);
        }

        goto LABEL_108;
      }

      if (*(this + 90) != 204)
      {
        if (kAVVCScope)
        {
          if (*(kAVVCScope + 8))
          {
            v14 = *kAVVCScope;
            if (v14)
            {
              v10 = v14;
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf.mSampleTime) = 136315394;
                *(&buf.mSampleTime + 4) = "ControllerImpl.mm";
                WORD2(buf.mHostTime) = 1024;
                *(&buf.mHostTime + 6) = 2465;
                v15 = "%25s:%-5d calculateAlertTimes: alert queue already stopped -- using current time as end time";
                p_buf = &buf;
                v17 = v10;
                v18 = OS_LOG_TYPE_DEBUG;
                v19 = 18;
LABEL_58:
                _os_log_impl(&dword_1BA5AC000, v17, v18, v15, p_buf, v19);
                goto LABEL_59;
              }

              goto LABEL_59;
            }
          }
        }

LABEL_60:
        *(this + 49) = mach_absolute_time();
        if (kAVVCScope)
        {
          v28 = *kAVVCScope;
          if (!v28)
          {
LABEL_68:
            v36 = *(this + 49);
            ControllerImpl::_getCurrentRecordingEngine(v66, this, *(this + 59), 0, "calculateRecordStartTime");
            v37 = *v66;
            if (!*v66)
            {
              if (kAVVCScope)
              {
                v39 = *kAVVCScope;
                if (!v39)
                {
                  goto LABEL_98;
                }
              }

              else
              {
                v39 = MEMORY[0x1E69E9C10];
                v55 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf.mSampleTime) = 136315394;
                *(&buf.mSampleTime + 4) = "ControllerImpl.mm";
                WORD2(buf.mHostTime) = 1024;
                *(&buf.mHostTime + 6) = 1014;
                v51 = "%25s:%-5d calculateRecordStartTime: Error, current recording engine is nil!";
                v52 = v39;
                v53 = OS_LOG_TYPE_ERROR;
                v54 = 18;
                goto LABEL_96;
              }

LABEL_97:

              goto LABEL_98;
            }

            if (*(*v66 + 232))
            {
              if (kAVVCScope)
              {
                v38 = *kAVVCScope;
                if (!v38)
                {
                  goto LABEL_80;
                }
              }

              else
              {
                v38 = MEMORY[0x1E69E9C10];
                v40 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf.mSampleTime) = 136315394;
                *(&buf.mSampleTime + 4) = "ControllerImpl.mm";
                WORD2(buf.mHostTime) = 1024;
                *(&buf.mHostTime + 6) = 1018;
                _os_log_impl(&dword_1BA5AC000, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d WARNING: startRecordingAtTime:error was used without 'silent' start alert", &buf, 0x12u);
              }
            }

LABEL_80:
            v41 = *(this + 33) * 24000000.0 / *(this + 27);
            *(v37 + 232) = (v36 - v41) & ~((v36 - v41) >> 63);
            if (kAVVCScope)
            {
              v42 = *kAVVCScope;
              if (!v42)
              {
                goto LABEL_87;
              }
            }

            else
            {
              v42 = MEMORY[0x1E69E9C10];
              v43 = MEMORY[0x1E69E9C10];
            }

            v44 = v42;
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v45 = *(v37 + 232);
              v46 = __udivti3();
              LODWORD(buf.mSampleTime) = 136315650;
              *(&buf.mSampleTime + 4) = "ControllerImpl.mm";
              WORD2(buf.mHostTime) = 1024;
              *(&buf.mHostTime + 6) = 1026;
              WORD1(buf.mRateScalar) = 2048;
              *(&buf.mRateScalar + 4) = v46 / 1000000000.0;
              _os_log_impl(&dword_1BA5AC000, v44, OS_LOG_TYPE_DEFAULT, "%25s:%-5d calculateRecordStartTime: host time for start of record: %.3f seconds", &buf, 0x1Cu);
            }

LABEL_87:
            v47 = mach_absolute_time();
            v48 = *(v37 + 232);
            if (kAVVCScope)
            {
              v39 = *kAVVCScope;
              if (!v39)
              {
LABEL_98:
                if (*&v66[8])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*&v66[8]);
                }

                goto LABEL_100;
              }
            }

            else
            {
              v39 = MEMORY[0x1E69E9C10];
              v49 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v50 = *(v37 + 232) - *(this + 49);
              LODWORD(buf.mSampleTime) = 136315906;
              *(&buf.mSampleTime + 4) = "ControllerImpl.mm";
              WORD2(buf.mHostTime) = 1024;
              *(&buf.mHostTime + 6) = 1030;
              WORD1(buf.mRateScalar) = 2048;
              *(&buf.mRateScalar + 4) = v50;
              WORD2(buf.mWordClockTime) = 2048;
              *(&buf.mWordClockTime + 6) = fmax((v48 - v47) * 0.0000000416666667, 0.0);
              v51 = "%25s:%-5d this is %lld ticks beyond alert end (%.6f seconds in the future)";
              v52 = v39;
              v53 = OS_LOG_TYPE_DEFAULT;
              v54 = 38;
LABEL_96:
              _os_log_impl(&dword_1BA5AC000, v52, v53, v51, &buf, v54);
              goto LABEL_97;
            }

            goto LABEL_97;
          }
        }

        else
        {
          v28 = MEMORY[0x1E69E9C10];
          v34 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v35 = *(this + 49);
          *v66 = 136315650;
          *&v66[4] = "ControllerImpl.mm";
          *&v66[12] = 1024;
          *&v66[14] = 2500;
          v67 = 2048;
          v68 = v35;
          v31 = "%25s:%-5d calculateAlertTimes: host time for (already-passed) end of alert: %llu";
          goto LABEL_66;
        }

        goto LABEL_67;
      }

      AlertQueueFromImplQueue = ControllerImpl::getAlertQueueFromImplQueue(this);
      CurrentTime = AudioQueueGetCurrentTime(AlertQueueFromImplQueue, 0, &buf, 0);
      v9 = CurrentTime;
      if (CurrentTime)
      {
        if ((CurrentTime + 199999) <= 0x61A7E)
        {
          if (kAVVCScope)
          {
            v10 = *kAVVCScope;
            if (!v10)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v10 = MEMORY[0x1E69E9C10];
            v32 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *v66 = 136315650;
            *&v66[4] = "ControllerImpl.mm";
            *&v66[12] = 1024;
            *&v66[14] = 2470;
            v67 = 1024;
            LODWORD(v68) = v9;
            v15 = "%25s:%-5d ERROR: calculateAlertTimes: AudioQueueGetCurrentTime err %d";
LABEL_57:
            p_buf = v66;
            v17 = v10;
            v18 = OS_LOG_TYPE_ERROR;
            v19 = 24;
            goto LABEL_58;
          }

          goto LABEL_59;
        }

        if (kAVVCScope)
        {
          v10 = *kAVVCScope;
          if (!v10)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v10 = MEMORY[0x1E69E9C10];
          v33 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *v66 = 136315650;
          *&v66[4] = "ControllerImpl.mm";
          *&v66[12] = 1024;
          *&v66[14] = 2470;
          v67 = 1024;
          LODWORD(v68) = v9;
          v15 = "%25s:%-5d ERROR: calculateAlertTimes: AudioQueueGetCurrentTime err %{audio:4CC}d";
          goto LABEL_57;
        }

LABEL_59:

        goto LABEL_60;
      }

      v20 = *(this + 32) - buf.mSampleTime;
      v21 = v20 / *(this + 27);
      *(this + 49) = buf.mHostTime + (v21 * 24000000.0);
      if (kAVVCScope)
      {
        v22 = *kAVVCScope;
        if (!v22)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v22 = MEMORY[0x1E69E9C10];
        v23 = MEMORY[0x1E69E9C10];
      }

      v24 = v22;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(this + 49);
        mach_absolute_time();
        v26 = __udivti3();
        if (v26 >= 0)
        {
          v27 = v26;
        }

        else
        {
          v27 = -v26;
        }

        *v66 = 136315906;
        *&v66[4] = "ControllerImpl.mm";
        *&v66[12] = 1024;
        *&v66[14] = 2488;
        v67 = 2048;
        v68 = v25;
        v69 = 2048;
        v70 = v27 / 1000000000.0;
        _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d calculateAlertTimes: host time for end of alert: %llu (%.6f seconds in future)", v66, 0x26u);
      }

LABEL_45:
      *(this + 47) = (*(this + 49) + *(this + 32) * -24000000.0 / *(this + 27));
      if (kAVVCScope)
      {
        v28 = *kAVVCScope;
        if (!v28)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v28 = MEMORY[0x1E69E9C10];
        v29 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(this + 47);
        *v66 = 136315650;
        *&v66[4] = "ControllerImpl.mm";
        *&v66[12] = 1024;
        *&v66[14] = 2495;
        v67 = 2048;
        v68 = v30;
        v31 = "%25s:%-5d calculateAlertTimes: host time for start of alert: %llu";
LABEL_66:
        _os_log_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_DEFAULT, v31, v66, 0x1Cu);
      }

LABEL_67:

      goto LABEL_68;
    }

    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
LABEL_26:
        v13 = v62;
LABEL_108:
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        goto LABEL_110;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf.mSampleTime) = 136315394;
      *(&buf.mSampleTime + 4) = "ControllerImpl.mm";
      WORD2(buf.mHostTime) = 1024;
      *(&buf.mHostTime + 6) = 2554;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d alertStarted: record state != kRecordStarting -- noop", &buf, 0x12u);
    }

    goto LABEL_26;
  }

  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_110;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.mSampleTime) = 136315394;
    *(&buf.mSampleTime + 4) = "ControllerImpl.mm";
    WORD2(buf.mHostTime) = 1024;
    *(&buf.mHostTime + 6) = 2558;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d alertStarted: not playing start alert -- noop", &buf, 0x12u);
  }

LABEL_110:
  TraceMethod::~TraceMethod(v63);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  v56 = *MEMORY[0x1E69E9840];
}

void sub_1BA66AC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN14ControllerImpl12alertStartedEP17AVVoiceController_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RecordLock::RecordLock(v4, v2, v3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if ((*(**(a1 + 48) + 96))(*(a1 + 48)))
  {
    AVVCRecordingEngine::startedRecording(*(a1 + 48));
  }

  VCLocker::~VCLocker(v4);
}

void sub_1BA66AD80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c42_ZTSNSt3__110shared_ptrI14ControllerImplEE48c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_ea8_32c42_ZTSNSt3__110shared_ptrI14ControllerImplEE48c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ControllerImpl::cleanup(ControllerImpl *this, AVVoiceController *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = a2;
  TraceMethod::TraceMethod(v50, "cleanup");
  v4 = v3;
  TraceMethod::TraceMethod(v61, "destroyAlertQueue");
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v59, *(this + 1), *(this + 2));
  v5 = v59;
  v6 = v60;
  if (v60)
  {
    atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AlertLock::AlertLock(v58, v5, v6);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  AlertQueueFromImplQueue = ControllerImpl::getAlertQueueFromImplQueue(this);
  ControllerImpl::setAlertQueueFromImplQueue(this, 0);
  LODWORD(v52) = 1;
  *buf = &v52;
  std::__tree<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>>>::__emplace_unique_key_args<AVVoiceAlertType,std::piecewise_construct_t const&,std::tuple<AVVoiceAlertType&&>,std::tuple<>>(this + 296, 1)[5] = 0;
  LODWORD(v52) = 2;
  *buf = &v52;
  std::__tree<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>>>::__emplace_unique_key_args<AVVoiceAlertType,std::piecewise_construct_t const&,std::tuple<AVVoiceAlertType&&>,std::tuple<>>(this + 296, 2)[5] = 0;
  LODWORD(v52) = 3;
  *buf = &v52;
  std::__tree<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>>>::__emplace_unique_key_args<AVVoiceAlertType,std::piecewise_construct_t const&,std::tuple<AVVoiceAlertType&&>,std::tuple<>>(this + 296, 3)[5] = 0;
  if (AlertQueueFromImplQueue)
  {
    if (*(this + 91) < 1)
    {
      ControllerImpl::setAlertQueueState(this, 200);
      goto LABEL_22;
    }

    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_19:
        v11 = v59;
        v12 = *(v59 + 51);
        if (v12)
        {
          v13 = *(v59 + 26);
          v14 = *(v59 + 49);
          objc_initWeak(buf, v4);
          v15 = v59;
          v52 = MEMORY[0x1E69E9820];
          v53 = 3221225472;
          v54 = ___ZN14ControllerImpl17destroyAlertQueueEP17AVVoiceController_block_invoke;
          v55 = &unk_1E7EF5BA8;
          objc_copyWeak(v56, buf);
          v57 = v12;
          v56[1] = v13;
          v56[2] = v14;
          ControllerImpl::safeNotify(v15, "destroyAlertQueue: alert finished", &v52);
          objc_destroyWeak(v56);
          objc_destroyWeak(buf);
          v11 = v59;
        }

        ControllerImpl::alertFinished(v11, v4);
LABEL_22:
        if (kAVVCScope)
        {
          if (*(kAVVCScope + 8))
          {
            v16 = *kAVVCScope;
            if (v16)
            {
              v17 = v16;
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "ControllerImpl.mm";
                *&buf[12] = 1024;
                *&buf[14] = 2426;
                _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d destroyAlertQueue: calling AudioQueueStop", buf, 0x12u);
              }
            }
          }
        }

        ElapsedTime::ElapsedTime(buf, "destroyAlertQueue", "destroyAlertQueue : AudioQueueStop", 0);
        v18 = AudioQueueStop(AlertQueueFromImplQueue, 1u);
        ElapsedTime::~ElapsedTime(buf);
        if (kAVVCScope)
        {
          v19 = *kAVVCScope;
          if (!v19)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v19 = MEMORY[0x1E69E9C10];
          v20 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = " but failed";
          *buf = 136315906;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[14] = 2433;
          *&buf[18] = 2080;
          *&buf[12] = 1024;
          if (!v18)
          {
            v21 = "";
          }

          *&buf[20] = v21;
          *&buf[28] = 1024;
          *&buf[30] = v18;
          _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVC stopped alert queue%s (%d)", buf, 0x22u);
        }

LABEL_37:
        if ((*(this + 521) & 1) != 0 || !v18)
        {
LABEL_54:
          if (kAVVCScope)
          {
            if (*(kAVVCScope + 8))
            {
              v26 = *kAVVCScope;
              if (v26)
              {
                v27 = v26;
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  *&buf[4] = "ControllerImpl.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 2439;
                  _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d destroyAlertQueue: removing queue listener", buf, 0x12u);
                }
              }
            }
          }

          AudioQueueRemovePropertyListener(AlertQueueFromImplQueue, 0x6171726Eu, ControllerImpl::AlertAQPropertyListenerProc, v4);
          if (kAVVCScope)
          {
            if (*(kAVVCScope + 8))
            {
              v28 = *kAVVCScope;
              if (v28)
              {
                v29 = v28;
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  *&buf[4] = "ControllerImpl.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 2444;
                  _os_log_impl(&dword_1BA5AC000, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d destroyAlertQueue: calling AudioQueueDispose", buf, 0x12u);
                }
              }
            }
          }

          v30 = v59;
          v31 = v60;
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          VCUnlocker::VCUnlocker(v51, v30, 0);
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          v32 = AudioQueueDispose(AlertQueueFromImplQueue, 0);
          v33 = v32;
          if (!v32)
          {
            goto LABEL_86;
          }

          if ((v32 + 199999) >= 0x61A7F)
          {
            if (kAVVCScope)
            {
              v34 = *kAVVCScope;
              if (!v34)
              {
                goto LABEL_86;
              }
            }

            else
            {
              v34 = MEMORY[0x1E69E9C10];
              v37 = MEMORY[0x1E69E9C10];
            }

            if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_85;
            }

            *buf = 136315650;
            *&buf[4] = "ControllerImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 2447;
            *&buf[18] = 1024;
            *&buf[20] = v33;
            v36 = "%25s:%-5d ERROR: destroyAlertQueue: AudioQueueDispose err %{audio:4CC}d";
          }

          else
          {
            if (kAVVCScope)
            {
              v34 = *kAVVCScope;
              if (!v34)
              {
                goto LABEL_86;
              }
            }

            else
            {
              v34 = MEMORY[0x1E69E9C10];
              v35 = MEMORY[0x1E69E9C10];
            }

            if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
LABEL_85:

LABEL_86:
              VCUnlocker::~VCUnlocker(v51);
              CallbackBarrier(*(*(this + 24) + 128));
              ControllerImpl::setAlertQueueState(this, 0);
              goto LABEL_87;
            }

            *buf = 136315650;
            *&buf[4] = "ControllerImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 2447;
            *&buf[18] = 1024;
            *&buf[20] = v33;
            v36 = "%25s:%-5d ERROR: destroyAlertQueue: AudioQueueDispose err %d";
          }

          _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_ERROR, v36, buf, 0x18u);
          goto LABEL_85;
        }

        if ((v18 + 199999) >= 0x61A7F)
        {
          if (kAVVCScope)
          {
            v22 = *kAVVCScope;
            if (!v22)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v22 = MEMORY[0x1E69E9C10];
            v25 = MEMORY[0x1E69E9C10];
          }

          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_53;
          }

          *buf = 136315650;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2436;
          *&buf[18] = 1024;
          *&buf[20] = v18;
          v24 = "%25s:%-5d ERROR: destroyAlertQueue: AudioQueueStop() err %{audio:4CC}d";
        }

        else
        {
          if (kAVVCScope)
          {
            v22 = *kAVVCScope;
            if (!v22)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v22 = MEMORY[0x1E69E9C10];
            v23 = MEMORY[0x1E69E9C10];
          }

          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_53;
          }

          *buf = 136315650;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2436;
          *&buf[18] = 1024;
          *&buf[20] = v18;
          v24 = "%25s:%-5d ERROR: destroyAlertQueue: AudioQueueStop() err %d";
        }

        _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_ERROR, v24, buf, 0x18u);
LABEL_53:

        goto LABEL_54;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2406;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d detected unfinished alert, queue up alertFinished", buf, 0x12u);
    }

    goto LABEL_19;
  }

  if (*(this + 90))
  {
    goto LABEL_87;
  }

  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v47 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "ControllerImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2401;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Alert queue NULL but state != Uninitialized", buf, 0x12u);
  }

LABEL_87:
  VCLocker::~VCLocker(v58);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  TraceMethod::~TraceMethod(v61);

  if (*(this + 96))
  {
    if (kAVVCScope)
    {
      v38 = *kAVVCScope;
      if (!v38)
      {
LABEL_97:
        AudioServicesDisposeSystemSoundID(*(this + 96));
        *(this + 96) = 0;
        goto LABEL_98;
      }
    }

    else
    {
      v38 = MEMORY[0x1E69E9C10];
      v39 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(this + 96);
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1638;
      *&buf[18] = 1024;
      *&buf[20] = v40;
      _os_log_impl(&dword_1BA5AC000, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d disposeSAESystemSound: mSAESystemSoundID(%u)", buf, 0x18u);
    }

    goto LABEL_97;
  }

LABEL_98:
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v48, *(this + 1), *(this + 2));
  RecordLock::RecordLock(buf, v48, v49);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  v41 = +[AVVCKeepAliveManager sharedManager];
  [v41 destroyWithCompletion:0];

  VCLocker::~VCLocker(buf);
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v52, *(this + 1), *(this + 2));
  v42 = v52;
  v43 = *(v52 + 576);
  v44 = *(v52 + 584);
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v43)
  {
    v45 = v53;
    if (v53)
    {
      atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
    }

    *buf = &unk_1F384DFB8;
    *&buf[8] = v42;
    *&buf[16] = v45;
    *&buf[24] = buf;
    AVVCRecordingEngineMap::for_each_engine(v43, buf, "cleanupRecordEngines");
    std::__function::__value_func<void ()(std::shared_ptr<AVVCRecordingEngine>)>::~__value_func[abi:ne200100](buf);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  TraceMethod::~TraceMethod(v50);

  v46 = *MEMORY[0x1E69E9840];
}

void sub_1BA66B870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, char a29, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  VCLocker::~VCLocker(&a25);
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  TraceMethod::~TraceMethod(&a29);

  TraceMethod::~TraceMethod(&a11);
  _Unwind_Resume(a1);
}

void std::__function::__func<ControllerImpl::cleanupRecordEngines(AVVoiceController *)::$_0,std::allocator<ControllerImpl::cleanupRecordEngines(AVVoiceController *)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RecordLock::RecordLock(v6, v4, v5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  (*(*v3 + 112))(v3, v3[27] > 3);
  VCLocker::~VCLocker(v6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1BA66BA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  VCLocker::~VCLocker(&a9);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<ControllerImpl::cleanupRecordEngines(AVVoiceController *)::$_0,std::allocator<ControllerImpl::cleanupRecordEngines(AVVoiceController *)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<ControllerImpl::cleanupRecordEngines(AVVoiceController *)::$_0,std::allocator<ControllerImpl::cleanupRecordEngines(AVVoiceController *)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<ControllerImpl::cleanupRecordEngines(AVVoiceController *)::$_0,std::allocator<ControllerImpl::cleanupRecordEngines(AVVoiceController *)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F384DFB8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<ControllerImpl::cleanupRecordEngines(AVVoiceController *)::$_0,std::allocator<ControllerImpl::cleanupRecordEngines(AVVoiceController *)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::~__func(void *a1)
{
  *a1 = &unk_1F384DFB8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1BFAF5800);
}

void *std::__function::__func<ControllerImpl::cleanupRecordEngines(AVVoiceController *)::$_0,std::allocator<ControllerImpl::cleanupRecordEngines(AVVoiceController *)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::~__func(void *a1)
{
  *a1 = &unk_1F384DFB8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void ___ZN14ControllerImpl17destroyAlertQueueEP17AVVoiceController_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = [[AVVCAlertInformation alloc] initWithAlertType:*(a1 + 56) mode:*(a1 + 40) endTime:*(a1 + 48)];
    [WeakRetained alertPlaybackFinishedWithSettings:v3];
  }

  else
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "ControllerImpl.mm";
      v9 = 1024;
      v10 = 2413;
      v11 = 2048;
      v12 = 0;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v7, 0x1Cu);
    }
  }

LABEL_10:

  v6 = *MEMORY[0x1E69E9840];
}