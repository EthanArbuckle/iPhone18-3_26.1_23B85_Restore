void AVVCPluginRecordingEngine::setHWSampleRate(AVVCPluginRecordingEngine *this, double a2)
{
  v19 = *MEMORY[0x1E69E9840];
  *(this + 39) = a2;
  *(this + 320) = 0;
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
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
    v5 = *(this + 33);
    v6 = *(this + 39);
    v7 = *(this + 320);
    v9 = 136316162;
    v10 = "AVVCPluginRecordingEngine.mm";
    v11 = 1024;
    v12 = 92;
    v13 = 2048;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setHWSampleRate() streamID(%lu) sr(%.2f) upSamp(%d)", &v9, 0x2Cu);
  }

LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t AVVCPluginRecordingEngine::Initialize(AVVCPluginRecordingEngine *this)
{
  TraceMethod::TraceMethod(v2, "Initialize");
  TraceMethod::~TraceMethod(v2);
  return 0;
}

uint64_t AVVCPluginRecordingEngine::createRecordQueue(AVVCPluginRecordingEngine *this, NSDictionary *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v33 = 4102;
  v34 = 1;
  v35 = 0u;
  v36 = 0u;
  kdebug_trace();
  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v4 = *kAVVCScope;
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(v37, *(this + 1), *(this + 2));
          *buf = 136315650;
          *&buf[4] = "AVVCPluginRecordingEngine.mm";
          *&buf[12] = 1024;
          *&buf[14] = 430;
          *&buf[18] = 2048;
          *&buf[20] = *v37;
          _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCPluginRecordingEngine(%p)::createRecordQueue -->", buf, 0x1Cu);
          if (*&v37[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&v37[8]);
          }
        }
      }
    }
  }

  v6 = AVVCPluginRecordingEngine::getCurrentDeviceFromActivationContext(this);
  if (!v6)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_27:
        v10 = 2;
        goto LABEL_63;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AVVCPluginRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 437;
      *&buf[18] = 1024;
      *&buf[20] = 2;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCPluginRecordingEngine::createRecordQueue : no matching device found, error : %d", buf, 0x18u);
    }

    goto LABEL_27;
  }

  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "AVVCPluginRecordingEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 441;
    *&buf[18] = 2048;
    *&buf[20] = v6;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d createRecordQueue : using device %p", buf, 0x1Cu);
  }

LABEL_19:
  v43 = 0;
  memset(buf, 0, sizeof(buf));
  v10 = (*(*this + 352))(this, v6, v3, buf);
  if (v10)
  {
    goto LABEL_63;
  }

  v11 = [[AVAudioFormat alloc] initWithStreamDescription:buf];
  [v6 setFormat:v11];
  if (kAVVCScope)
  {
    v12 = *kAVVCScope;
    if (!v12)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  v15 = v12;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v6 format];
    v17 = [v16 debugDescription];
    *v37 = 136315906;
    *&v37[4] = "AVVCPluginRecordingEngine.mm";
    *&v37[12] = 1024;
    *&v37[14] = 453;
    v38 = 2048;
    v39 = v6;
    v40 = 2112;
    v41 = v17;
    _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d createRecordQueue : setting format on active device(%p), format:%@", v37, 0x26u);
  }

LABEL_32:
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v31, *(this + 1), *(this + 2));
  v18 = [v6 audioInputBlock];
  v19 = v18 == 0;

  if (v19)
  {
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(v37, *(this + 1), *(this + 2));
    v21 = *v37;
    v10 = *&v37[8];
    if (*&v37[8])
    {
      atomic_fetch_add_explicit((*&v37[8] + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3321888768;
    v29[2] = ___ZN25AVVCPluginRecordingEngine17createRecordQueueEP12NSDictionary_block_invoke;
    v29[3] = &__block_descriptor_56_ea8_40c44_ZTSNSt3__18weak_ptrI19AVVCRecordingEngineEE_e56_v32__0__AVAudioBuffer_8__AVAudioTime_16__NSDictionary_24l;
    v29[4] = this;
    v29[5] = v21;
    v30 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
    }

    [v6 setAudioInputBlock:v29];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(v37, v6);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3321888768;
      v26[2] = ___ZN25AVVCPluginRecordingEngine17createRecordQueueEP12NSDictionary_block_invoke_135;
      v26[3] = &unk_1F3848CA0;
      v27[1] = v21;
      v28 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
      }

      objc_copyWeak(v27, v37);
      [v6 setStatusChangeBlock:v26];
      objc_destroyWeak(v27);
      if (v28)
      {
        std::__shared_weak_count::__release_weak(v28);
      }

      objc_destroyWeak(v37);
    }

    *(this + 62) = (*(this + 3) / 320.0);
    v22 = *(this + 16);
    if (v22)
    {
      (*(v22 + 16))(v22, *(this + 33), *&buf[8]);
    }

    AVVCRecordingEngine::populateRecordSettings(this);
    AVVCRecordingEngine::setStreamState(this, 2);
    if (v30)
    {
      std::__shared_weak_count::__release_weak(v30);
    }

    if (!v10)
    {
      goto LABEL_60;
    }

    std::__shared_weak_count::__release_weak(v10);
  }

  else
  {
    if (*(this + 27) <= 1)
    {
      if (kAVVCScope)
      {
        v20 = *kAVVCScope;
        if (!v20)
        {
LABEL_59:
          v10 = 4294955515;
          goto LABEL_60;
        }
      }

      else
      {
        v20 = MEMORY[0x1E69E9C10];
        v23 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v37 = 136315394;
        *&v37[4] = "AVVCPluginRecordingEngine.mm";
        *&v37[12] = 1024;
        *&v37[14] = 461;
        _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Record queue state does not match queue (previously assertion failure)", v37, 0x12u);
      }

      goto LABEL_59;
    }

    (*(*v31 + 136))(v31);
  }

  v10 = 0;
LABEL_60:
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

LABEL_63:
  TraceWrapper::~TraceWrapper(&v33);

  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1BA5E5884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v35 + 32));
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  objc_destroyWeak(&location);
  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_weak(v34);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  TraceWrapper::~TraceWrapper(&a26);
  _Unwind_Resume(a1);
}

void ___ZN25AVVCPluginRecordingEngine17createRecordQueueEP12NSDictionary_block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1[6];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v11 = a1[4];
  v12 = std::__shared_weak_count::lock(v10);
  if (!v12 || (v13 = a1[5]) == 0)
  {
LABEL_12:
    if (kAVVCScope)
    {
      v18 = *kAVVCScope;
      if (!v18)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AVVCPluginRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 477;
      *&buf[18] = 2048;
      *&buf[20] = 0;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d audioInputBlock: nil object encountered (eng: %p). Bailing", buf, 0x1Cu);
    }

LABEL_19:
    if (!v12)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  if (!v7)
  {
    if (kAVVCScope)
    {
      v20 = *kAVVCScope;
      if (!v20)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
LABEL_45:

      goto LABEL_46;
    }

    *buf = 136315394;
    *&buf[4] = "AVVCPluginRecordingEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 493;
    v23 = "%25s:%-5d audioInputBlock called";
    v24 = v20;
    v25 = OS_LOG_TYPE_DEBUG;
    v26 = 18;
LABEL_44:
    _os_log_impl(&dword_1BA5AC000, v24, v25, v23, buf, v26);
    goto LABEL_45;
  }

  v14 = [v7 format];
  v15 = [v14 streamDescription];

  v16 = *(v15 + 8);
  if (v16 == 1936745848 || v16 == 1869641075)
  {
    if (kAVVCScope)
    {
      v21 = *kAVVCScope;
      if (!v21)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    v20 = v21;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "AVVCPluginRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 486;
      *&buf[18] = 1024;
      *&buf[20] = [v7 packetCount];
      _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d audioInputBlock (opus / speex) called with packetcount : %d", buf, 0x18u);
    }

LABEL_36:

    goto LABEL_45;
  }

  if (v16 == 1819304813)
  {
    if (kAVVCScope)
    {
      v17 = *kAVVCScope;
      if (!v17)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    v20 = v17;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "AVVCPluginRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 484;
      *&buf[18] = 1024;
      *&buf[20] = [v7 frameLength];
      _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d audioInputBlock (lpcm) called with frameLength : %d", buf, 0x18u);
    }

    goto LABEL_36;
  }

  if (!kAVVCScope)
  {
    v20 = MEMORY[0x1E69E9C10];
    v29 = MEMORY[0x1E69E9C10];
    goto LABEL_42;
  }

  v20 = *kAVVCScope;
  if (v20)
  {
LABEL_42:
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    v30 = *(v15 + 8);
    *buf = 136315650;
    *&buf[4] = "AVVCPluginRecordingEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 488;
    *&buf[18] = 2048;
    *&buf[20] = v30;
    v23 = "%25s:%-5d audioInputBlock called with an unsupported audio format ID (%lu).";
    v24 = v20;
    v25 = OS_LOG_TYPE_ERROR;
    v26 = 28;
    goto LABEL_44;
  }

LABEL_46:
  v60 = 0u;
  v61 = 0u;
  memset(buf, 0, sizeof(buf));
  if (v8)
  {
    [v8 audioTimeStamp];
  }

  if (kAVVCScope)
  {
    if ((*(kAVVCScope + 12) & 0x20) != 0)
    {
      v31 = *kAVVCScope;
      if (v31)
      {
        v32 = v31;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *v53 = 136315650;
          v54 = "AVVCPluginRecordingEngine.mm";
          v55 = 1024;
          v56 = 498;
          v57 = 2048;
          v58 = *buf;
          _os_log_impl(&dword_1BA5AC000, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCPluginRecordingEngine::audioInputBlock: timeStamp : %f", v53, 0x1Cu);
        }
      }
    }
  }

  v33 = [v9 objectForKey:@"Gain"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v33;
    if (v34)
    {
      v35 = v34;
      [v34 getBytes:v13 + 644 range:{0, 1}];
      [v35 getBytes:v13 + 645 range:{1, 1}];
      *(v13 + 646) = 1;
      *(v13 + 636) = *(v11 + 645);
LABEL_83:

      goto LABEL_84;
    }

    if (kAVVCScope)
    {
      v42 = *kAVVCScope;
      if (!v42)
      {
LABEL_82:
        *(v13 + 646) = 0;
        goto LABEL_83;
      }
    }

    else
    {
      v42 = MEMORY[0x1E69E9C10];
      v45 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *v53 = 136315394;
      v54 = "AVVCPluginRecordingEngine.mm";
      v55 = 1024;
      v56 = 514;
      _os_log_impl(&dword_1BA5AC000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCPluginRecordingEngine::audioInputBlock: Nil VoiceActivity NSData", v53, 0x12u);
    }

    goto LABEL_82;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = v33;
    if (v36)
    {
      [v36 doubleValue];
      v38 = v37;
      if (kAVVCScope)
      {
        if ((*(kAVVCScope + 12) & 0x20) != 0)
        {
          v39 = *kAVVCScope;
          if (v39)
          {
            v40 = v39;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              *v53 = 136315650;
              v54 = "AVVCPluginRecordingEngine.mm";
              v55 = 1024;
              v56 = 523;
              v57 = 2048;
              v58 = v38;
              _os_log_impl(&dword_1BA5AC000, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCPluginRecordingEngine::audioInputBlock: inGain : %f", v53, 0x1Cu);
            }
          }
        }
      }

      if (v38 <= 0.0)
      {
        v41 = -120.0;
      }

      else
      {
        v41 = log10f(v38) * 20.0;
      }
    }

    else
    {
      v41 = 0.0;
      if (kAVVCScope)
      {
        if ((*(kAVVCScope + 12) & 0x20) != 0)
        {
          v43 = *kAVVCScope;
          if (v43)
          {
            v44 = v43;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              *v53 = 136315394;
              v54 = "AVVCPluginRecordingEngine.mm";
              v55 = 1024;
              v56 = 526;
              _os_log_impl(&dword_1BA5AC000, v44, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCPluginRecordingEngine::audioInputBlock: No Gain Value", v53, 0x12u);
            }
          }
        }
      }
    }

    *(v13 + 636) = v41;
    goto LABEL_82;
  }

LABEL_84:
  v52 = 0;
  if (*(v13 + 32) == 1936745848)
  {
    v46 = [v9 objectForKey:@"Frame Qualities"];
    v47 = v46;
    if (v46)
    {
      [v46 doubleValue];
      *&v48 = v48;
      v52 = LODWORD(v48);
    }

    else if (kAVVCScope)
    {
      if ((*(kAVVCScope + 12) & 0x20) != 0)
      {
        v50 = *kAVVCScope;
        if (v50)
        {
          v51 = v50;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            *v53 = 136315394;
            v54 = "AVVCPluginRecordingEngine.mm";
            v55 = 1024;
            v56 = 541;
            _os_log_impl(&dword_1BA5AC000, v51, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCPluginRecordingEngine::audioInputBlock: No frame qualities.", v53, 0x12u);
          }
        }
      }
    }
  }

  (*(*v13 + 256))(v13, v7, 1, &v52, buf);

LABEL_89:
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_90:

  v49 = *MEMORY[0x1E69E9840];
}

void sub_1BA5E61AC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);

  _Unwind_Resume(a1);
}

void ___ZN25AVVCPluginRecordingEngine17createRecordQueueEP12NSDictionary_block_invoke_135(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 != 1919115630)
  {
    goto LABEL_17;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    v8 = v7;
    if (v7)
    {
      v9 = *(a1 + 40);
      if (v9)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3321888768;
        v13[2] = ___ZN25AVVCPluginRecordingEngine17createRecordQueueEP12NSDictionary_block_invoke_136;
        v13[3] = &unk_1F3847C10;
        v14[1] = v9;
        v15 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v16 = 1919115630;
        objc_copyWeak(v14, (a1 + 32));
        (*(*v9 + 336))(v9, v13, "createRecordQueue_block_invoke");
        objc_destroyWeak(v14);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  if (kAVVCScope)
  {
    v10 = *kAVVCScope;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v18 = "AVVCPluginRecordingEngine.mm";
    v19 = 1024;
    v20 = 556;
    v21 = 2048;
    v22 = 0;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d statusChangeBlock: nil object encountered (eng: %p). Bailing", buf, 0x1Cu);
  }

LABEL_15:
  if (v8)
  {
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

LABEL_17:

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1BA5E6438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  objc_destroyWeak((v17 + 32));
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);

  _Unwind_Resume(a1);
}

void ___ZN25AVVCPluginRecordingEngine17createRecordQueueEP12NSDictionary_block_invoke_136(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
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
    v4 = *(a1 + 40);
    v8 = 136315650;
    v9 = "AVVCPluginRecordingEngine.mm";
    v10 = 1024;
    v11 = 561;
    v12 = 2048;
    v13 = v4;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d statusChangeBlock: Recording cancelled by plugin device. Calling didStop recording and setting audioInputBlock to nil. strong_this(%p)", &v8, 0x1Cu);
  }

LABEL_8:
  AVVCRecordingEngine::setStreamState(*(a1 + 40), 6);
  v5 = *(a1 + 40);
  *(v5 + 244) = 1;
  AVVCRecordingEngine::setRecordErrorStatus(v5, *(a1 + 56), "createRecordQueue_block_invoke");
  AVVCRecordingEngine::doneRecording(*(a1 + 40));
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAudioInputBlock:0];
  [WeakRetained setStatusChangeBlock:0];

  v7 = *MEMORY[0x1E69E9840];
}

void __destroy_helper_block_ea8_40c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_40c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(uint64_t result, uint64_t a2)
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

uint64_t AVVCPluginRecordingEngine::asbdForClientSettings(AVVCPluginRecordingEngine *this, NSDictionary *a2, CAStreamBasicDescription *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = AVVCPluginRecordingEngine::getCurrentDeviceFromActivationContext(this);
  if (!v6)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_10:
        v7 = 2;
        goto LABEL_11;
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
      v13 = "AVVCPluginRecordingEngine.mm";
      v14 = 1024;
      v15 = 374;
      v16 = 1024;
      v17 = 2;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCPluginRecordingEngine::createRecordQueue : no matching device found, error : %d", &v12, 0x18u);
    }

    goto LABEL_10;
  }

  v7 = (*(*this + 352))(this, v6, v5, a3);
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

void AVVCPluginRecordingEngine::~AVVCPluginRecordingEngine(id *this)
{
  AVVCPluginRecordingEngine::~AVVCPluginRecordingEngine(this);

  JUMPOUT(0x1BFAF5800);
}

{
  v9 = *MEMORY[0x1E69E9840];
  *this = &unk_1F3849F08;
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

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "AVVCPluginRecordingEngine.mm";
    v7 = 1024;
    v8 = 52;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ~AVVCPluginRecordingEngine()", &v5, 0x12u);
  }

LABEL_8:
  AVVCRecordingEngine::~AVVCRecordingEngine(this);
  v4 = *MEMORY[0x1E69E9840];
}

void AVVCPluginRecordingEngine::AVVCPluginRecordingEngine(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a3;
  AVVCRecordingEngine::AVVCRecordingEngine(a1, a2);
}

void sub_1BA5E7004(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5E71B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5E7438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Block_object_dispose(&a21, 8);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  ElapsedTime::~ElapsedTime(&a28);
  _Unwind_Resume(a1);
}

void sub_1BA5E76C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Block_object_dispose(&a11, 8);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_40c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_40c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t result, uint64_t a2)
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

void sub_1BA5E7994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  if (a8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a8);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  ElapsedTime::~ElapsedTime(va);

  _Unwind_Resume(a1);
}

void sub_1BA5E7DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5E8068(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  ElapsedTime::~ElapsedTime(va);

  _Unwind_Resume(a1);
}

void sub_1BA5E8288(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  ElapsedTime::~ElapsedTime(va);

  _Unwind_Resume(a1);
}

void sub_1BA5E85BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5E880C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  if (a8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a8);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  ElapsedTime::~ElapsedTime(va);

  _Unwind_Resume(a1);
}

void sub_1BA5E8A3C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  ElapsedTime::~ElapsedTime(va);

  _Unwind_Resume(a1);
}

void sub_1BA5E8CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  ElapsedTime::~ElapsedTime(va);
  _Unwind_Resume(a1);
}

void sub_1BA5E8F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  ElapsedTime::~ElapsedTime(va);

  _Unwind_Resume(a1);
}

void sub_1BA5E9124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5E9360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5E9568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5E9838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);
  _Unwind_Resume(a1);
}

void sub_1BA5E9AE0(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  ElapsedTime::~ElapsedTime(va);
  _Unwind_Resume(a1);
}

void sub_1BA5E9CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5E9E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5E9FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5EA150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5EA2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5EA438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5EA5A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5EA8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);
  _Unwind_Resume(a1);
}

void sub_1BA5EAB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);

  _Unwind_Resume(a1);
}

void sub_1BA5EAED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  ElapsedTime::~ElapsedTime(&a26);
  TraceWrapper::~TraceWrapper(&a12);

  _Unwind_Resume(a1);
}

void sub_1BA5EB084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5EB308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);
  _Unwind_Resume(a1);
}

void sub_1BA5EB5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);

  _Unwind_Resume(a1);
}

void sub_1BA5EB84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);
  _Unwind_Resume(a1);
}

void sub_1BA5EBB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);
  _Unwind_Resume(a1);
}

void sub_1BA5EBE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);
  _Unwind_Resume(a1);
}

void sub_1BA5EC098(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  ElapsedTime::~ElapsedTime(va);
  _Unwind_Resume(a1);
}

void sub_1BA5EC2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5EC648(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  ElapsedTime::~ElapsedTime(va);
  _Unwind_Resume(a1);
}

void sub_1BA5EC878(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, std::__shared_weak_count *);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);

  _Unwind_Resume(a1);
}

void sub_1BA5ECBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);

  _Unwind_Resume(a1);
}

void sub_1BA5ECE74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, std::__shared_weak_count *);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);

  _Unwind_Resume(a1);
}

void sub_1BA5ED220(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  ElapsedTime::~ElapsedTime(va);

  _Unwind_Resume(a1);
}

void sub_1BA5ED524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  ElapsedTime::~ElapsedTime(&a26);
  TraceWrapper::~TraceWrapper(&a10);

  _Unwind_Resume(a1);
}

void sub_1BA5ED83C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, std::__shared_weak_count *);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);

  _Unwind_Resume(a1);
}

void sub_1BA5EDBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  ElapsedTime::~ElapsedTime(&a26);
  TraceWrapper::~TraceWrapper(&a12);

  _Unwind_Resume(a1);
}

void sub_1BA5EDE68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, std::__shared_weak_count *);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);

  _Unwind_Resume(a1);
}

void sub_1BA5EE1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);

  _Unwind_Resume(a1);
}

void sub_1BA5EE530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);

  _Unwind_Resume(a1);
}

void sub_1BA5EE7E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);

  _Unwind_Resume(a1);
}

void sub_1BA5EEB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ControllerImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F3849350;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFAF5800);
}

void sub_1BA5EF414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);

  _Unwind_Resume(a1);
}

id GetAVVCSingleInstanceSemaphore(void)
{
  if (GetAVVCSingleInstanceSemaphore(void)::once != -1)
  {
    dispatch_once(&GetAVVCSingleInstanceSemaphore(void)::once, &__block_literal_global_189);
  }

  v1 = gsAVVCSingleInstanceSemaphore;

  return v1;
}

void ___ZL30GetAVVCSingleInstanceSemaphorev_block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = dispatch_semaphore_create(1);
  v1 = gsAVVCSingleInstanceSemaphore;
  gsAVVCSingleInstanceSemaphore = v0;

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

  v4 = v2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [gsAVVCSingleInstanceSemaphore debugDescription];
    v7 = 136315650;
    v8 = "AVVoiceController.mm";
    v9 = 1024;
    v10 = 117;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [enforce 1 avvc] created gsAVVCSingleInstanceSemaphore %@", &v7, 0x1Cu);
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1BA5EF7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  v23 = v22;
  objc_sync_exit(v23);

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__192(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BA5EFD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5EFE48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_32c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t result, uint64_t a2)
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

_BYTE *AlertLock::AlertLock(_BYTE *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  VCLocker::VCLocker(a1, a2, 0);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  return a1;
}

void sub_1BA5EFEEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5F00BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5F01A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5F0420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, std::__shared_weak_count *a11, ...)
{
  va_start(va, a11);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  _Block_object_dispose(va, 8);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F0624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5F0708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5F0988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, std::__shared_weak_count *a11, ...)
{
  va_start(va, a11);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  _Block_object_dispose(va, 8);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F0C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5F0D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5F0F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, std::__shared_weak_count *a11, ...)
{
  va_start(va, a11);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  _Block_object_dispose(va, 8);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F1218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5F1300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5F156C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, std::__shared_weak_count *a11, ...)
{
  va_start(va, a11);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  _Block_object_dispose(va, 8);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F1804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F1A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1BA5F1CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F1DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F2030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1BA5F2380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F2730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5F2E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, char a12, int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v22 = v21;

  ElapsedTime::~ElapsedTime(&a19);
  TraceMethod::~TraceMethod(&a12);
  TraceWrapper::~TraceWrapper(&a14);
  a9.super_class = AVVoiceController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BA5F3060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA5F35AC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  VCLocker::~VCLocker(va);
  _Unwind_Resume(a1);
}

void sub_1BA5F39BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F3AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F3DE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, std::__shared_weak_count *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  ElapsedTime::~ElapsedTime(va1);
  TraceWrapper::~TraceWrapper(va);
  _Unwind_Resume(a1);
}

void sub_1BA5F4808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F49AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F4B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F4E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F50D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F531C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F5618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F58C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F5C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F5F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F6238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F65E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F69FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F6C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F6F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F7208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BA5F7588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, ...)
{
  va_start(va, a12);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  TraceWrapper::~TraceWrapper(va);

  _Unwind_Resume(a1);
}

void sub_1BA5F76B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F79E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, ...)
{
  va_start(va, a12);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  TraceWrapper::~TraceWrapper(va);

  _Unwind_Resume(a1);
}

void sub_1BA5F7B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_48c39_ZTSNSt3__18weak_ptrI14ControllerImplEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_ea8_48c39_ZTSNSt3__18weak_ptrI14ControllerImplEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1BA5F7FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F8704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F8B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F8F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1BA5F90C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  objc_destroyWeak((v13 + 32));
  objc_destroyWeak((v12 + 32));
  objc_destroyWeak((v14 - 72));
  _Unwind_Resume(a1);
}

BOOL AVVCTestPropertyIsSet()
{
  if (_createTestPropertyArrayIfNeeded(void)::onceToken != -1)
  {
    dispatch_once(&_createTestPropertyArrayIfNeeded(void)::onceToken, &__block_literal_global_762);
  }

  v0 = [sTestProperties objectAtIndex:0];
  v1 = [MEMORY[0x1E695DFB0] null];

  return v0 != v1;
}

void ___ZL32_createTestPropertyArrayIfNeededv_block_invoke()
{
  v0 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v1 = sTestProperties;
  sTestProperties = v0;

  v2 = sTestProperties;
  v3 = [MEMORY[0x1E695DFB0] null];
  [v2 addObject:?];
}

NSObject *AVVCTestPropertyGetError()
{
  v19 = *MEMORY[0x1E69E9840];
  if (_createTestPropertyArrayIfNeeded(void)::onceToken != -1)
  {
    dispatch_once(&_createTestPropertyArrayIfNeeded(void)::onceToken, &__block_literal_global_762);
  }

  v0 = [sTestProperties objectAtIndex:0];
  v1 = [MEMORY[0x1E695DFB0] null];

  if (v1 == v0)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      v4 = v0;
      if (!v3)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "AVVoiceController.mm";
      v13 = 1024;
      v14 = 2137;
      v15 = 1024;
      LODWORD(v16) = 0;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Test value is NSNull at index: %d", &v11, 0x18u);
    }

    v4 = v0;
  }

  else
  {

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v2 = v0;
      goto LABEL_23;
    }

    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    v3 = v5;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315906;
      v12 = "AVVoiceController.mm";
      v13 = 1024;
      v14 = 2176;
      v15 = 2112;
      v16 = objc_opt_class();
      v17 = 1024;
      v18 = 0;
      v8 = v16;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Expecting property of type NSError but got type %@ at index: %d", &v11, 0x22u);
    }

    v4 = v3;
  }

LABEL_21:
LABEL_22:

  v2 = 0;
LABEL_23:

  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

void AVAudioUnitComponentImpl::~AVAudioUnitComponentImpl(AVAudioUnitComponentImpl *this)
{
  AVAudioUnitComponentImpl::~AVAudioUnitComponentImpl(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F384A080;
  v2 = *(this + 13);
  if (v2)
  {
    CFRelease(v2);
    *(this + 13) = 0;
  }

  v3 = *(this + 12);
  if (v3)
  {
    CFRelease(v3);
    *(this + 12) = 0;
  }

  v4 = *(this + 6);
  if (v4)
  {
    CFRelease(v4);
    *(this + 6) = 0;
  }

  v5 = *(this + 7);
  if (v5)
  {
    CFRelease(v5);
    *(this + 7) = 0;
  }

  v6 = *(this + 5);
  if (v6)
  {
    CFRelease(v6);
    *(this + 5) = 0;
  }

  v7 = *(this + 10);
  if (v7)
  {
    CFRelease(v7);
    *(this + 10) = 0;
  }

  v8 = *(this + 11);
  if (v8)
  {
    CFRelease(v8);
    *(this + 11) = 0;
  }

  v9 = *(this + 19);
  if (v9)
  {
    CFRelease(v9);
    *(this + 19) = 0;
  }

  v10 = *(this + 17);
  if (v10)
  {
    CFRelease(v10);
    *(this + 17) = 0;
  }

  v11 = *(this + 8);
  if (v11)
  {
    CFRelease(v11);
    *(this + 8) = 0;
  }

  dispatch_release(*(this + 14));
}

const __CFDictionary *AVAudioUnitComponentImpl::FetchConfigurationDictionary(AudioComponent *this)
{
  result = AudioComponentCopyConfigurationInfo(this[1], this + 17);
  if (!result)
  {
    result = this[17];
    if (result)
    {
      Value = CFDictionaryGetValue(result, @"HasCustomView");
      if (Value)
      {
        v4 = Value;
        v5 = CFGetTypeID(Value);
        if (v5 == CFBooleanGetTypeID())
        {
          *(this + 144) = CFBooleanGetValue(v4) != 0;
        }
      }

      result = CFDictionaryGetValue(this[17], @"IconURL");
      if (result)
      {
        result = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], result, kCFURLPOSIXPathStyle, 0);
        this[19] = result;
      }
    }
  }

  *(this + 132) = 1;
  return result;
}

void AVAudioUnitComponentImpl::FetchLocalizedStandardTags(id *this)
{
  [this[10] removeAllObjects];
  if (!this[10])
  {
    this[10] = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v2 = this[1];
  AudioComponentCopyTagsInfo();
}

void AVAudioUnitComponentImpl::AVAudioUnitComponentImpl(AVAudioUnitComponentImpl *this, AudioComponentDescription *a2, AVAudioUnitComponentManagerImpl *a3)
{
  *this = &unk_1F384A080;
  *(this + 1) = 0;
  v4 = *&a2->componentType;
  componentFlagsMask = a2->componentFlagsMask;
  *(this + 36) = 0u;
  v6 = (this + 36);
  *(this + 8) = componentFlagsMask;
  *(this + 1) = v4;
  *(this + 52) = 0u;
  *(this + 65) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 15) = a3;
  *(this + 32) = 0;
  *(this + 132) = 0;
  *(this + 17) = 0;
  *(this + 144) = 0;
  *(this + 19) = 0;
  *(this + 14) = dispatch_queue_create("AVAudioUnitComponentImplementation", 0);
  if (__PAIR64__(*(this + 5), *(v6 - 5)) || *(this + 6) || *(this + 7))
  {
    Next = AudioComponentFindNext(0, v6 - 1);
    *(this + 1) = Next;
    if (Next)
    {
      AudioComponentGetDescription(Next, v6 - 1);
      if ((*(this + 28) & 2) != 0)
      {
        *(this + 72) = 1;
      }

      outName = 0;
      AudioComponentCopyName(*(this + 1), &outName);
      v8 = [MEMORY[0x1E696AEC0] stringWithString:outName];
      v9 = [v8 rangeOfString:@":"];
      if (v10)
      {
        v11 = v9;
        v12 = [v8 substringToIndex:v9];
        *(this + 7) = [objc_msgSend(v12 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceCharacterSet")), "copy"}];
        v13 = [v8 substringFromIndex:v11 + 1];
        v8 = [v13 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceCharacterSet")}];
      }

      else
      {
        *(this + 7) = [&stru_1F384E730 copy];
      }

      *(this + 6) = [v8 copy];
      CFRelease(outName);
      if (!AudioComponentGetVersion(*(this + 1), v6))
      {
        *(this + 5) = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d.%d.%d", (*(this + 9) >> 16), BYTE1(*(this + 9)), *(this + 9));
      }

      AVAudioUnitComponentImpl::FetchLocalizedStandardTags(this);
    }
  }
}

void QualityDetectorDestroy(uint64_t *a1)
{
  v1 = *a1;
  if (v1)
  {
    MEMORY[0x1BFAF57D0](v1, 0x1000C8052888210);
  }

  JUMPOUT(0x1BFAF5800);
}

uint64_t anonymous namespace::QualityDetector::getSummedFrameQuality(uint64_t this, unsigned int a2)
{
  v2 = *(this + 8);
  if (v2 < a2)
  {
    CAVerboseAbort();
    return CAIsDebuggerAttached();
  }

  else if (a2)
  {
    v3 = this;
    LODWORD(this) = 0;
    v4 = *(v3 + 44);
    v5 = *v3;
    do
    {
      this = (*(v5 + 4 * v4) + this);
      if (!v4)
      {
        v4 = v2;
      }

      --v4;
      --a2;
    }

    while (a2);
  }

  else
  {
    return 0;
  }

  return this;
}

uint64_t CAIsDebuggerAttached(void)
{
  v8 = *MEMORY[0x1E69E9840];
  *v5 = 0xE00000001;
  v6 = 1;
  v7 = getpid();
  v2 = 648;
  v4 = 0;
  sysctl(v5, 4u, v3, &v2, 0, 0);
  v0 = *MEMORY[0x1E69E9840];
  return (v4 >> 11) & 1;
}

uint64_t anonymous namespace::fsort(_anonymous_namespace_ *this, float *a2, const void *a3)
{
  if (*this < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *this > *a2;
  }
}

char *CAStringForOSType(unsigned int a1, char *__dst, int8x8_t a3)
{
  a3.i32[0] = bswap32(a1);
  v4 = vzip1_s8(a3, a3);
  v5.i64[0] = 0x1F0000001FLL;
  v5.i64[1] = 0x1F0000001FLL;
  v6.i64[0] = 0x5F0000005FLL;
  v6.i64[1] = 0x5F0000005FLL;
  v7 = vbsl_s8(vmovn_s32(vcgtq_u32(v6, vsraq_n_s32(v5, vshlq_n_s32(vmovl_u16(v4), 0x18uLL), 0x18uLL))), v4, 0x2E002E002E002ELL);
  v10 = 4;
  *__source = vuzp1_s8(v7, v7).u32[0];
  __source[4] = 0;
  strlcpy(__dst, __source, 0x18uLL);
  if (v10 < 0)
  {
    operator delete(*__source);
  }

  return __dst;
}

void sub_1BA5FC3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CA::Implementation::EquivalentFormatFlags(CA::Implementation *this, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  v3 = *(this + 3);
  if (*(this + 2) != 1819304813)
  {
    return v3 == a2->mFormatFlags;
  }

  v4 = v3 & 0x7FFFFFFF;
  if ((v3 & 0x7FFFFFFF) == 0)
  {
    v4 = *(this + 3);
  }

  v5 = v4 & 0xFFFFFFBF;
  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(this + 7);
    if ((v3 & 0x20) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(this + 7);
    }

    if (v8)
    {
      v6 = 8 * (v6 / v8);
      v9 = *(this + 8);
      v10 = v5 | 8;
      v11 = v6 == v9;
      goto LABEL_14;
    }

    v6 = 0;
    v9 = *(this + 8);
    v10 = v5 | 8;
  }

  else
  {
    v10 = v4 & 0xFFFFFFB7 | 8;
    v7 = *(this + 7);
    v9 = *(this + 8);
  }

  v11 = v9 == 0;
LABEL_14:
  if (v11)
  {
    v5 = v10;
  }

  v13 = (v9 & 7) == 0 && v6 == v9;
  v14 = v5 & 0xFFFFFFEF;
  if (!v13)
  {
    v14 = v5;
  }

  if (v14)
  {
    v14 &= ~4u;
  }

  v15 = (v14 & 8) == 0 || v9 > 8;
  v16 = v14 & 2;
  if (v15)
  {
    v16 = v14;
  }

  if (v7 == 1)
  {
    v17 = v16 & 0xFFFFFFDF;
  }

  else
  {
    v17 = v16;
  }

  if (!v17)
  {
    v17 = 0x80000000;
  }

  mFormatFlags = a2->mFormatFlags;
  if (a2->mFormatID != 1819304813)
  {
    return v17 == mFormatFlags;
  }

  v19 = mFormatFlags & 0x7FFFFFFF;
  if ((mFormatFlags & 0x7FFFFFFF) == 0)
  {
    v19 = a2->mFormatFlags;
  }

  v20 = v19 & 0xFFFFFFBF;
  mBytesPerFrame = a2->mBytesPerFrame;
  if (!mBytesPerFrame)
  {
    v25 = v19 & 0xFFFFFFB7 | 8;
    mChannelsPerFrame = a2->mChannelsPerFrame;
    mBitsPerChannel = a2->mBitsPerChannel;
LABEL_44:
    v26 = mBitsPerChannel == 0;
    goto LABEL_45;
  }

  mChannelsPerFrame = a2->mChannelsPerFrame;
  if ((mFormatFlags & 0x20) != 0)
  {
    v23 = 1;
  }

  else
  {
    v23 = a2->mChannelsPerFrame;
  }

  if (!v23)
  {
    mBytesPerFrame = 0;
    mBitsPerChannel = a2->mBitsPerChannel;
    v25 = v20 | 8;
    goto LABEL_44;
  }

  mBytesPerFrame = 8 * (mBytesPerFrame / v23);
  mBitsPerChannel = a2->mBitsPerChannel;
  v25 = v20 | 8;
  v26 = mBytesPerFrame == mBitsPerChannel;
LABEL_45:
  if (v26)
  {
    v20 = v25;
  }

  v27 = (mBitsPerChannel & 7) == 0 && mBytesPerFrame == mBitsPerChannel;
  v28 = v20 & 0xFFFFFFEF;
  if (!v27)
  {
    v28 = v20;
  }

  if (v28)
  {
    v28 &= ~4u;
  }

  v29 = (v28 & 8) == 0 || mBitsPerChannel > 8;
  v30 = v28 & 2;
  if (v29)
  {
    v30 = v28;
  }

  if (mChannelsPerFrame == 1)
  {
    v31 = v30 & 0xFFFFFFDF;
  }

  else
  {
    v31 = v30;
  }

  if (v31)
  {
    mFormatFlags = v31;
  }

  else
  {
    mFormatFlags = 0x80000000;
  }

  return v17 == mFormatFlags;
}

void sub_1BA5FC61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA5FC6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void XPC_Object::~XPC_Object(XPC_Object *this)
{
  XPC_Object::~XPC_Object(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F384CD30;
  if (*(this + 1))
  {
    v1 = atomic_load(this + 16);
    if (v1)
    {
      xpc_release(*(this + 1));
    }
  }
}

void AVAudioUnitComponentManagerImpl::~AVAudioUnitComponentManagerImpl(AVAudioUnitComponentManagerImpl *this)
{
  AVAudioUnitComponentManagerImpl::~AVAudioUnitComponentManagerImpl(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F3849900;
  std::mutex::~mutex((this + 32));
}

void sub_1BA5FCDE8(_Unwind_Exception *a1)
{
  std::mutex::unlock((v5 + 32));

  _Unwind_Resume(a1);
}

void sub_1BA5FCEAC(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 32));

  _Unwind_Resume(a1);
}

void sub_1BA5FD3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, id a12)
{
  std::mutex::unlock((v14 + 32));

  _Unwind_Resume(a1);
}

void CADeprecated::AVVCGenericRunLoopThread::Start(CADeprecated::AVVCGenericRunLoopThread *this)
{
  *(this + 20) = dispatch_semaphore_create(0);
  CADeprecated::CAPThread::Start(this);
  dispatch_semaphore_wait(*(this + 20), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(*(this + 20));
  *(this + 20) = 0;
}

void CADeprecated::AVVCGenericRunLoopThread::~AVVCGenericRunLoopThread(CADeprecated::AVVCGenericRunLoopThread *this)
{
  CADeprecated::AVVCGenericRunLoopThread::~AVVCGenericRunLoopThread(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F3849638;
  v1 = *(this + 17);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t CADeprecated::CAMutex::Try(CADeprecated::CAMutex *this, BOOL *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  v4 = pthread_self();
  if (pthread_equal(v4, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    v5 = 0;
  }

  else
  {
    v6 = pthread_mutex_trylock((this + 24));
    if (v6 == 16)
    {
      v5 = 0;
      result = 0;
      goto LABEL_7;
    }

    if (v6)
    {
      v11[0] = HIBYTE(v6);
      v11[1] = BYTE2(v6);
      v11[2] = BYTE1(v6);
      v9 = v6;
      v11[3] = v6;
      v11[4] = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v13 = "CAMutex.cpp";
        v14 = 1024;
        v15 = 224;
        v16 = 1024;
        v17 = v9;
        v18 = 2080;
        v19 = v11;
        _os_log_impl(&dword_1BA5AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Try: call to pthread_mutex_trylock failed, Error: %d (%s)", buf, 0x22u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_1F384CD08;
      exception[2] = v9;
    }

    atomic_store(v4, this + 2);
    v5 = 1;
  }

  result = 1;
LABEL_7:
  *a2 = v5;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void CADeprecated::CAMutex::Unlock(CADeprecated::CAMutex *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = pthread_self();
  if (pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    atomic_store(0, this + 2);
    v3 = pthread_mutex_unlock((this + 24));
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "CAMutex.cpp";
        v9 = 1024;
        v10 = 152;
        _os_log_impl(&dword_1BA5AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Unlock: Could not unlock the mutex", &v7, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_1F384CD08;
      exception[2] = v4;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "CAMutex.cpp";
    v9 = 1024;
    v10 = 160;
    _os_log_impl(&dword_1BA5AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  CAMutex::Unlock: A thread is attempting to unlock a Mutex it doesn't own", &v7, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

BOOL CADeprecated::CAMutex::Lock(CADeprecated::CAMutex *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = pthread_self();
  v3 = pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire));
  if (!v3)
  {
    v4 = pthread_mutex_lock((this + 24));
    if (v4)
    {
      v7 = v4;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "CAMutex.cpp";
        v11 = 1024;
        v12 = 106;
        _os_log_impl(&dword_1BA5AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Lock: Could not lock the mutex", &v9, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_1F384CD08;
      exception[2] = v7;
    }

    atomic_store(v2, this + 2);
  }

  result = v3 == 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void CADeprecated::CAMutex::~CAMutex(CADeprecated::CAMutex *this)
{
  CADeprecated::CAMutex::~CAMutex(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F3849580;
  pthread_mutex_destroy((this + 24));
}

CADeprecated::CAMutex *CADeprecated::CAMutex::CAMutex(CADeprecated::CAMutex *this, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *this = &unk_1F3849580;
  *(this + 1) = a2;
  *(this + 2) = 0;
  v3 = pthread_mutex_init((this + 24), 0);
  if (v3)
  {
    v6 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "CAMutex.cpp";
      v10 = 1024;
      v11 = 56;
      _os_log_impl(&dword_1BA5AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::CAMutex: Could not init the mutex", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F384CD08;
    exception[2] = v6;
  }

  v4 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t CADeprecated::CAPThread::Start(uint64_t this)
{
  v19 = *MEMORY[0x1E69E9840];
  if (atomic_load((this + 8)))
  {
    CAVerboseAbort();
  }

  if (!atomic_load((this + 8)))
  {
    v3 = this;
    v4 = pthread_attr_init(&v18);
    if (v4)
    {
      v8 = v4;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 136315394;
      v15 = "CAPThread.cpp";
      v16 = 1024;
      v17 = 255;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "%25s:%-5d  CAPThread::Start: Thread attributes could not be created.";
    }

    else
    {
      v5 = pthread_attr_setdetachstate(&v18, 2);
      if (v5)
      {
        v8 = v5;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 136315394;
        v15 = "CAPThread.cpp";
        v16 = 1024;
        v17 = 258;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "%25s:%-5d  CAPThread::Start: A thread could not be created in the detached state.";
      }

      else
      {
        pthread_attr_getschedparam(&v18, &v13);
        v13.sched_priority = *(v3 + 104);
        pthread_attr_setschedparam(&v18, &v13);
        if (*(v3 + 122) == 1)
        {
          pthread_attr_setschedpolicy(&v18, 4);
        }

        v12 = 0;
        v6 = pthread_create(&v12, &v18, CADeprecated::CAPThread::Entry, v3);
        if (!v6 && v12)
        {
          atomic_store(v12, (v3 + 8));
          this = pthread_attr_destroy(&v18);
          goto LABEL_10;
        }

        v8 = v6;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
LABEL_19:
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &unk_1F384CD08;
          exception[2] = v8;
        }

        *buf = 136315394;
        v15 = "CAPThread.cpp";
        v16 = 1024;
        v17 = 272;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "%25s:%-5d  CAPThread::Start: Could not create a thread.";
      }
    }

    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
    goto LABEL_19;
  }

LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t CADeprecated::CAPThread::Entry(CADeprecated::CAPThread *this, void *a2)
{
  atomic_store(pthread_self(), this + 1);
  if (*(this + 40))
  {
    pthread_setname_np(this + 40);
  }

  if (*(this + 121) != 1)
  {
    goto LABEL_6;
  }

  *(this + 121) = 1;
  if (!atomic_load(this + 1))
  {
    goto LABEL_6;
  }

  *policy_info = *(this + 108);
  v4 = *(this + 120);
  v12 = *(this + 29);
  v13 = v4;
  v5 = atomic_load(this + 1);
  v6 = pthread_mach_thread_np(v5);
  if (thread_policy_set(v6, 2u, policy_info, 4u))
  {
    v9 = CAVerboseAbort();
    __cxa_begin_catch(v9);
    __cxa_end_catch();
  }

  else
  {
LABEL_6:
    v7 = *(this + 3);
    if (v7)
    {
      v8 = v7(*(this + 4));
      goto LABEL_10;
    }
  }

  v8 = 0;
LABEL_10:
  atomic_store(0, this + 1);
  if (*(this + 123) == 1)
  {
    (*(*this + 8))(this);
  }

  return v8;
}

_opaque_pthread_t *CADeprecated::CAPThread::getScheduledPriority(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  if (this)
  {
    v2 = this;
    thread_info_outCnt = 10;
    v3 = pthread_mach_thread_np(this);
    thread_info(v3, 3u, thread_info_out, &thread_info_outCnt);
    switch(v12)
    {
      case 4:
        thread_info_outCnt = 4;
        v6 = pthread_mach_thread_np(v2);
        thread_info(v6, 0xCu, v10, &thread_info_outCnt);
        return v10[1];
      case 2:
        thread_info_outCnt = 5;
        v5 = pthread_mach_thread_np(v2);
        thread_info(v5, 0xBu, v9, &thread_info_outCnt);
        return v9[1];
      case 1:
        thread_info_outCnt = 5;
        v4 = pthread_mach_thread_np(v2);
        thread_info(v4, 0xAu, v8, &thread_info_outCnt);
        return v8[1];
      default:
        return 0;
    }
  }

  return this;
}

void AVVCRecordingEngine::cacheRecordRoute(AVVCRecordingEngine *this, NSString *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [(NSString *)v3 copy];
  v5 = *(this + 38);
  *(this + 38) = v4;

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(this + 38);
    v10 = 136315650;
    v11 = "AVVCRecordingEngine.mm";
    v12 = 1024;
    v13 = 554;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCRecordingEngine::cacheRecordRoute : %@", &v10, 0x1Cu);
  }

LABEL_8:
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t AVVCRecordingEngine::reconfigure(AVVCRecordingEngine *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = (*(*this + 112))(this, *(this + 27) > 3);
  if (v2)
  {
    v3 = v2;
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(this + 33);
      v13 = 136315906;
      v14 = "AVVCRecordingEngine.mm";
      v15 = 1024;
      v16 = 134;
      v17 = 2048;
      v18 = v6;
      v19 = 1024;
      v20 = v3;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d reconfigure for streamID(%lu) failed to destroy engine (%d)", &v13, 0x22u);
    }
  }

LABEL_9:
  v7 = (*(*this + 88))(this, *(this + 8));
  if (v7)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(this + 33);
      v13 = 136315906;
      v14 = "AVVCRecordingEngine.mm";
      v15 = 1024;
      v16 = 139;
      v17 = 2048;
      v18 = v10;
      v19 = 1024;
      v20 = v7;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d reconfigure for streamID(%lu) failed to prepareRecording (%d)", &v13, 0x22u);
    }
  }

LABEL_17:
  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __Block_byref_object_copy__721(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN19AVVCRecordingEngine14sessionManagerEPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = [AVVCContextSettings alloc];
  v4 = *(v2 + 272);
  v5 = AVVCRouteManager::getRecordDeviceUID(*(v2 + 368));
  v6 = [(AVVCContextSettings *)v3 initWithMode:v4 deviceUID:v5];

  v7 = +[AVVCSessionFactory sharedInstance];
  v8 = *(v2 + 504);
  v9 = *(*(a1 + 32) + 8);
  obj = *(v9 + 40);
  v10 = [v7 sessionManagerForContext:v6 clientType:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  v11 = *(v2 + 360);
  *(v2 + 360) = v10;

  if (kAVVCScope)
  {
    v12 = *kAVVCScope;
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(v2 + 360);
    v15 = *(v2 + 264);
    *buf = 136316162;
    v19 = "AVVCRecordingEngine.mm";
    v20 = 1024;
    v21 = 222;
    v22 = 2048;
    v23 = v14;
    v24 = 1024;
    v25 = v15;
    v26 = 2048;
    v27 = v2;
    _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cached session manager pointer (%p) for engine(%d, %p)", buf, 0x2Cu);
  }

LABEL_8:
  v16 = *MEMORY[0x1E69E9840];
}

void ___ZN19AVVCRecordingEngine12audioSessionEPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = [AVVCContextSettings alloc];
  v4 = *(v2 + 272);
  v5 = AVVCRouteManager::getRecordDeviceUID(*(v2 + 368));
  v6 = [(AVVCContextSettings *)v3 initWithMode:v4 deviceUID:v5];

  v7 = +[AVVCSessionFactory sharedInstance];
  v8 = *(v2 + 504);
  v9 = *(*(a1 + 32) + 8);
  obj = *(v9 + 40);
  v10 = [v7 sessionForContext:v6 clientType:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  v11 = *(v2 + 344);
  *(v2 + 344) = v10;

  if (kAVVCScope)
  {
    v12 = *kAVVCScope;
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(v2 + 344);
    v15 = *(v2 + 264);
    *buf = 136316162;
    v19 = "AVVCRecordingEngine.mm";
    v20 = 1024;
    v21 = 207;
    v22 = 2048;
    v23 = v14;
    v24 = 1024;
    v25 = v15;
    v26 = 2048;
    v27 = v2;
    _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cached session pointer (%p) for engine(%d, %p)", buf, 0x2Cu);
  }

LABEL_8:
  v16 = *MEMORY[0x1E69E9840];
}

void AVVCRecordingEngine::AVVCRecordingEngine(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F384ADB0;
  *(a1 + 201) = 0;
  *(a1 + 224) = 0;
  *(a1 + 240) = 0;
  *(a1 + 280) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 376) = 850045863;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 440) = 850045863;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  MEMORY[0x1BFAF5690](a1 + 528);
  *(a1 + 592) = 512;
  *(a1 + 256) = 0x3FC999999999999ALL;
  v4 = *(a1 + 280);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;

  v5 = *(a1 + 64);
  *(a1 + 64) = 0;

  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  v6 = *(a1 + 88);
  *(a1 + 88) = 0;

  v7 = *(a1 + 96);
  *(a1 + 96) = 0;

  v8 = *(a1 + 112);
  *(a1 + 112) = 0;

  v9 = *(a1 + 104);
  *(a1 + 104) = 0;

  v10 = *(a1 + 120);
  *(a1 + 120) = 0;

  v11 = *(a1 + 128);
  *(a1 + 128) = 0;

  v12 = *(a1 + 136);
  *(a1 + 136) = 0;

  v13 = *(a1 + 144);
  *(a1 + 144) = 0;

  v14 = *(a1 + 152);
  *(a1 + 152) = 0;

  v15 = *(a1 + 160);
  *(a1 + 160) = 0;

  v16 = *(a1 + 168);
  *(a1 + 168) = 0;

  v17 = *(a1 + 176);
  *(a1 + 176) = 0;

  v18 = *(a1 + 184);
  *(a1 + 184) = 0;

  v19 = *(a1 + 192);
  *(a1 + 192) = 0;

  *(a1 + 244) = 0;
  *(a1 + 248) = 0;
  *(a1 + 288) = 0;
  v20 = *(a1 + 304);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;

  *(a1 + 72) = 0;
  *(a1 + 328) = 0;
  *(a1 + 80) = 0;
  *(a1 + 200) = 0;
  *(a1 + 504) = a2;
  *(a1 + 24) = 0;
  *(a1 + 56) = 16;
  *(a1 + 48) = 0x100000002;
  *(a1 + 32) = xmmword_1BA6CF350;
  operator new();
}

void sub_1BA5FF658(_Unwind_Exception *a1)
{
  std::recursive_mutex::~recursive_mutex((v1 + 528));

  std::mutex::~mutex((v1 + 440));
  std::mutex::~mutex((v1 + 376));

  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void AVVCRecordingEngine::~AVVCRecordingEngine(AVVCRecordingEngine *this)
{
  v46 = *MEMORY[0x1E69E9840];
  *this = &unk_1F384ADB0;
  v2 = [AVVCContextSettings alloc];
  v3 = *(this + 34);
  v4 = AVVCRouteManager::getRecordDeviceUID(*(this + 46));
  v5 = [(AVVCContextSettings *)v2 initWithMode:v3 deviceUID:v4];

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    CAX4CCString::CAX4CCString(v37, [(AVVCContextSettings *)v5 activationMode]);
    v9 = [(AVVCContextSettings *)v5 activationDeviceUID];
    *buf = 136315906;
    v39 = "AVVCRecordingEngine.mm";
    v40 = 1024;
    v41 = 93;
    v42 = 2080;
    v43 = v37;
    v44 = 2112;
    v45 = v9;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Trigger clean up of context(%s, %@)", buf, 0x26u);
  }

LABEL_8:
  v10 = +[AVVCSessionFactory sharedInstance];
  [v10 cleanupContext:v5];

  v11 = *(this + 8);
  *(this + 8) = 0;

  free(*(this + 37));
  v12 = *(this + 38);
  *(this + 37) = 0;
  *(this + 38) = 0;

  v13 = *(this + 11);
  *(this + 11) = 0;

  v14 = *(this + 12);
  *(this + 12) = 0;

  v15 = *(this + 14);
  *(this + 14) = 0;

  v16 = *(this + 15);
  *(this + 15) = 0;

  v17 = *(this + 16);
  *(this + 16) = 0;

  v18 = *(this + 17);
  *(this + 17) = 0;

  v19 = *(this + 13);
  *(this + 13) = 0;

  v20 = *(this + 18);
  *(this + 18) = 0;

  v21 = *(this + 19);
  *(this + 19) = 0;

  v22 = *(this + 20);
  *(this + 20) = 0;

  v23 = *(this + 21);
  *(this + 21) = 0;

  v24 = *(this + 22);
  *(this + 22) = 0;

  v25 = *(this + 23);
  *(this + 23) = 0;

  v26 = *(this + 24);
  *(this + 24) = 0;

  v27 = *(this + 35);
  *(this + 35) = 0;

  v28 = *(this + 46);
  if (v28)
  {
    v29 = *v28;
    *v28 = 0;

    v30 = *(v28 + 16);
    *(v28 + 16) = 0;

    v31 = *(v28 + 32);
    *(v28 + 32) = 0;

    v32 = *(v28 + 40);
    *(v28 + 40) = 0;

    std::mutex::~mutex((v28 + 56));
    MEMORY[0x1BFAF5800](v28, 0x1080C40D98F9877);
  }

  *(this + 46) = 0;
  if (kAVVCScope)
  {
    v33 = *kAVVCScope;
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v33 = MEMORY[0x1E69E9C10];
    v34 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "AVVCRecordingEngine.mm";
    v40 = 1024;
    v41 = 122;
    _os_log_impl(&dword_1BA5AC000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCRecordingEngine():~AVVCRecordingEngine() called", buf, 0x12u);
  }

LABEL_17:
  std::recursive_mutex::~recursive_mutex((this + 528));

  std::mutex::~mutex((this + 440));
  std::mutex::~mutex((this + 376));

  v35 = *(this + 2);
  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  v36 = *MEMORY[0x1E69E9840];
}

void sub_1BA5FFB9C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AVVCRecordingEngine::destroyRecordEngineWithRecordLock(AVVCRecordingEngine *this)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_12:
        v5 = *MEMORY[0x1E69E9840];
        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "AVVCRecordingEngine.mm";
      v8 = 1024;
      v9 = 1073;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d destroyRecordEngineWithRecordLockBlock is nil !", &v6, 0x12u);
    }

    goto LABEL_12;
  }

  v1 = *(this + 2);
  v2 = *MEMORY[0x1E69E9840];

  v1(this, 0);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void AVVCRecordingEngine::setRecordDeviceUID(AVVCRecordingEngine *this, NSString *a2)
{
  v7 = a2;
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::mutex::lock((this + 56));
  }

  v4 = *(this + 2);
  *(this + 2) = 0;

  v5 = [(NSString *)v7 copy];
  v6 = *(this + 2);
  *(this + 2) = v5;

  if ((v3 & 1) == 0)
  {
    std::mutex::unlock((this + 56));
  }
}

void AVVCRecordingEngine::populateRecordSettings(AVVCRecordingEngine *this)
{
  v77[27] = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v51, "populateRecordSettings");
  memset(v77, 0, 216);
  v76 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v2 = @"AVFormatIDKey";
  v74 = @"AVFormatIDKey";
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:*(this + 8)];
  v4 = v58;
  *&v58 = v3;

  objc_storeStrong(&v75, @"AVSampleRateKey");
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:*(this + 3)];
  v6 = *(&v58 + 1);
  *(&v58 + 1) = v5;

  objc_storeStrong(&v75 + 1, @"AVNumberOfChannelsKey");
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:*(this + 13)];
  v8 = v59;
  *&v59 = v7;

  if (*(this + 8) == 1819304813)
  {
    objc_storeStrong(&v76, @"AVLinearPCMBitDepthKey");
    v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:*(this + 14)];
    v10 = *(&v59 + 1);
    *(&v59 + 1) = v9;

    objc_storeStrong(&v76 + 1, @"AVLinearPCMIsFloatKey");
    v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:*(this + 9) & 1];
    v12 = v60;
    *&v60 = v11;

    objc_storeStrong(v77, @"AVLinearPCMIsBigEndianKey");
    v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:(*(this + 9) >> 1) & 1];
    v14 = *(&v60 + 1);
    *(&v60 + 1) = v13;

    objc_storeStrong(&v77[1], @"AVLinearPCMIsNonInterleaved");
    v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:(*(this + 9) >> 5) & 1];
    v16 = v61;
    *&v61 = v15;

    v17 = 7;
  }

  else
  {
    v17 = 3;
  }

  v50 = 0;
  v18 = (*(*this + 192))(this, 1936876401, &v50);
  if (!v18)
  {
    objc_storeStrong(&v74 + v17, @"AVSampleRateConverterQualityKey");
    v20 = objc_alloc(MEMORY[0x1E696AD98]);
    v21 = [v20 initWithUnsignedInteger:v50];
    v22 = *(&v58 + v17);
    *(&v58 + v17) = v21;

    ++v17;
    goto LABEL_13;
  }

  if (kAVVCScope)
  {
    v19 = *kAVVCScope;
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v53 = "AVVCRecordingEngine.mm";
    v54 = 1024;
    v55 = 301;
    v56 = 1024;
    LODWORD(v57) = v18;
    _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioQueueGetProperty kAudioConverterSampleRateConverterQuality failed: %d", buf, 0x18u);
  }

LABEL_13:
  v24 = (*(*this + 192))(this, 1633903204, &v50);
  if (v24)
  {
    if (kAVVCScope)
    {
      v25 = *kAVVCScope;
      if (!v25)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v53 = "AVVCRecordingEngine.mm";
      v54 = 1024;
      v55 = 311;
      v56 = 1024;
      LODWORD(v57) = v24;
      _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioQueueGetProperty kAudioConverterPropertyBitDepthHint failed: %d", buf, 0x18u);
    }
  }

  else
  {
    objc_storeStrong(&v74 + v17, @"AVEncoderBitDepthHintKey");
    v26 = objc_alloc(MEMORY[0x1E696AD98]);
    v27 = [v26 initWithUnsignedInteger:v50];
    v28 = *(&v58 + v17);
    *(&v58 + v17) = v27;

    ++v17;
  }

LABEL_22:
  v49 = 0;
  v30 = (*(*this + 224))(this, 1634820972, &v49);
  if (!v30)
  {
    v31 = v49;
    if (v49)
    {
      if (kAVVCScope)
      {
        v32 = *kAVVCScope;
        if (!v32)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v32 = MEMORY[0x1E69E9C10];
        v35 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v53 = "AVVCRecordingEngine.mm";
        v54 = 1024;
        v55 = 323;
        v56 = 1024;
        LODWORD(v57) = v31;
        _os_log_impl(&dword_1BA5AC000, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioQueueGetProperty returned %d for kAudioQueueProperty_ChannelLayout property size", buf, 0x18u);
      }

LABEL_37:
      v36 = objc_alloc(MEMORY[0x1E695DF88]);
      v33 = [v36 initWithCapacity:v49];
      v37 = v33;
      v38 = [v33 mutableBytes];
      v39 = (*(*this + 232))(this, 1634820972, v38, &v49);
      if (v39)
      {
        if (kAVVCScope)
        {
          v40 = *kAVVCScope;
          if (!v40)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v40 = MEMORY[0x1E69E9C10];
          v42 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v53 = "AVVCRecordingEngine.mm";
          v54 = 1024;
          v55 = 331;
          v56 = 1024;
          LODWORD(v57) = v39;
          _os_log_impl(&dword_1BA5AC000, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioQueueGetProperty kAudioQueueProperty_ChannelLayout failed: %d", buf, 0x18u);
        }

        goto LABEL_54;
      }

      if (kAVVCScope)
      {
        v41 = *kAVVCScope;
        if (!v41)
        {
LABEL_52:
          if (v33)
          {
            objc_storeStrong(&v74 + v17, @"AVChannelLayoutKey");
            objc_storeStrong(&v58 + v17++, v33);
          }

          goto LABEL_54;
        }
      }

      else
      {
        v41 = MEMORY[0x1E69E9C10];
        v43 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v53 = "AVVCRecordingEngine.mm";
        v54 = 1024;
        v55 = 334;
        v56 = 2048;
        v57 = v38;
        _os_log_impl(&dword_1BA5AC000, v41, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioQueueGetProperty returned (%p) for kAudioQueueProperty_ChannelLayout bytes", buf, 0x1Cu);
      }

      goto LABEL_52;
    }
  }

  if (kAVVCScope)
  {
    v33 = *kAVVCScope;
    if (!v33)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v33 = MEMORY[0x1E69E9C10];
    v34 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v53 = "AVVCRecordingEngine.mm";
    v54 = 1024;
    v55 = 319;
    v56 = 1024;
    LODWORD(v57) = v30;
    _os_log_impl(&dword_1BA5AC000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioQueueGetProperty property size of kAudioQueueProperty_ChannelLayout failed: %d OR property size is 0", buf, 0x18u);
  }

LABEL_54:

LABEL_55:
  v44 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:&v58 forKeys:&v74 count:v17];
  v45 = *(this + 8);
  *(this + 8) = v44;

  for (i = 248; i != -8; i -= 8)
  {
  }

  for (j = 248; j != -8; j -= 8)
  {
  }

  TraceMethod::~TraceMethod(v51);
  v48 = *MEMORY[0x1E69E9840];
}

void sub_1BA60064C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  for (i = 248; i != -8; i -= 8)
  {
  }

  for (j = 248; j != -8; j -= 8)
  {
  }

  TraceMethod::~TraceMethod(&a10);
  _Unwind_Resume(a1);
}

void AVVCRecordingEngine::setRecordMode(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 328);
    if (v6 > 2)
    {
      v7 = "ILLEGAL";
    }

    else
    {
      v7 = off_1E7EF5398[v6];
    }

    if (a2 > 2)
    {
      v8 = "ILLEGAL";
    }

    else
    {
      v8 = off_1E7EF5398[a2];
    }

    v10 = 136315906;
    v11 = "AVVCRecordingEngine.mm";
    v12 = 1024;
    v13 = 577;
    v14 = 2080;
    v15 = v7;
    v16 = 2080;
    v17 = v8;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set mRecordMode %s > %s", &v10, 0x26u);
  }

LABEL_14:
  *(a1 + 328) = a2;
  v9 = *MEMORY[0x1E69E9840];
}

void AVVCRecordingEngine::setStartRecordCompletionAndAudioCallbackBlocks(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 copy];
  v8 = *(a1 + 88);
  *(a1 + 88) = v7;

  v9 = [v6 copy];
  v10 = *(a1 + 104);
  *(a1 + 104) = v9;

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
    v14 = _Block_copy(*(a1 + 88));
    v15 = _Block_copy(*(a1 + 104));
    v17 = 136315906;
    v18 = "AVVCRecordingEngine.mm";
    v19 = 1024;
    v20 = 621;
    v21 = 2048;
    v22 = v14;
    v23 = 2048;
    v24 = v15;
    _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setStartRecordCompletionAndAudioCallbackBlocks: startCompletionBlock(%p). audioCallbackBlock(%p)", &v17, 0x26u);
  }

LABEL_8:
  v16 = *MEMORY[0x1E69E9840];
}

void AVVCRecordingEngine::setStopRecordCompletionBlock(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(a1 + 96);
  *(a1 + 96) = v4;

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _Block_copy(*(a1 + 96));
    v11 = 136315650;
    v12 = "AVVCRecordingEngine.mm";
    v13 = 1024;
    v14 = 627;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setStopRecordCompletionBlock: stopCompletionBlock(%p).", &v11, 0x1Cu);
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
}

void AVVCRecordingEngine::setDidStopDelegateCompletionBlock(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(a1 + 112);
  *(a1 + 112) = v4;

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _Block_copy(*(a1 + 112));
    v11 = 136315650;
    v12 = "AVVCRecordingEngine.mm";
    v13 = 1024;
    v14 = 633;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setDidStopDelegateCompletionBlock: didStopCompletionBlock(%p).", &v11, 0x1Cu);
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
}

void AVVCRecordingEngine::setEncoderErrorBlock(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(a1 + 120);
  *(a1 + 120) = v4;

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _Block_copy(*(a1 + 120));
    v11 = 136315650;
    v12 = "AVVCRecordingEngine.mm";
    v13 = 1024;
    v14 = 639;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setEncoderErrorBlock: encoderErrorBlock(%p).", &v11, 0x1Cu);
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
}

void AVVCRecordingEngine::setSetupEndpointerBlock(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(a1 + 128);
  *(a1 + 128) = v4;

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _Block_copy(*(a1 + 128));
    v11 = 136315650;
    v12 = "AVVCRecordingEngine.mm";
    v13 = 1024;
    v14 = 645;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setSetupEndpointerBlock: setupEndpointerBlock(%p).", &v11, 0x1Cu);
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
}

void AVVCRecordingEngine::setCheckForEndpointBlock(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(a1 + 136);
  *(a1 + 136) = v4;

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _Block_copy(*(a1 + 136));
    v11 = 136315650;
    v12 = "AVVCRecordingEngine.mm";
    v13 = 1024;
    v14 = 651;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setCheckForEndpointBlock: checkForEndpointBlock(%p).", &v11, 0x1Cu);
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
}

void AVVCRecordingEngine::setStopRecordWithRecordLockBlock(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(a1 + 152);
  *(a1 + 152) = v4;

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _Block_copy(*(a1 + 152));
    v11 = 136315650;
    v12 = "AVVCRecordingEngine.mm";
    v13 = 1024;
    v14 = 657;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setStopRecordWithRecordLockBlock: stopRecordWithRecordLockBlock(%p).", &v11, 0x1Cu);
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
}

void AVVCRecordingEngine::setDestroyRecordEngineWithRecordLockBlock(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(a1 + 144);
  *(a1 + 144) = v4;

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _Block_copy(*(a1 + 144));
    v11 = 136315650;
    v12 = "AVVCRecordingEngine.mm";
    v13 = 1024;
    v14 = 663;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setDestroyRecordEngineWithRecordLockBlock: destroyRecordEngineWithRecordLockBlock(%p).", &v11, 0x1Cu);
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
}

void AVVCRecordingEngine::setReconfigureWithRecordLockBlock(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(a1 + 160);
  *(a1 + 160) = v4;

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _Block_copy(*(a1 + 160));
    v11 = 136315650;
    v12 = "AVVCRecordingEngine.mm";
    v13 = 1024;
    v14 = 669;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setReconfigureWithRecordLockBlock: reconfigureWithRecordLockBlock(%p).", &v11, 0x1Cu);
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
}

void AVVCRecordingEngine::setStreamInvalidatedBlock(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(a1 + 168);
  *(a1 + 168) = v4;

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _Block_copy(*(a1 + 168));
    v11 = 136315650;
    v12 = "AVVCRecordingEngine.mm";
    v13 = 1024;
    v14 = 675;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setStreamInvalidatedBlock: streamInvalidatedBlock(%p).", &v11, 0x1Cu);
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
}

void AVVCRecordingEngine::setHardwareConfigChangedBlock(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(a1 + 176);
  *(a1 + 176) = v4;

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _Block_copy(*(a1 + 176));
    v11 = 136315650;
    v12 = "AVVCRecordingEngine.mm";
    v13 = 1024;
    v14 = 681;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setHardwareConfigChangedBlock: hardwareConfigChangedBlock(%p).", &v11, 0x1Cu);
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
}

void AVVCRecordingEngine::setBeginSessionActivateBlock(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(a1 + 184);
  *(a1 + 184) = v4;

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _Block_copy(*(a1 + 184));
    v11 = 136315650;
    v12 = "AVVCRecordingEngine.mm";
    v13 = 1024;
    v14 = 687;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setBeginSessionActivateBlock: beginSessionActivateBlock(%p).", &v11, 0x1Cu);
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
}

void AVVCRecordingEngine::setEndSessionActivateBlock(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(a1 + 192);
  *(a1 + 192) = v4;

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _Block_copy(*(a1 + 192));
    v11 = 136315650;
    v12 = "AVVCRecordingEngine.mm";
    v13 = 1024;
    v14 = 693;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setEndSessionActivateBlock: endSessionActivateBlock(%p).", &v11, 0x1Cu);
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
}

void AVVCRecordingEngine::resetCompletionBlocks(AVVCRecordingEngine *this, std::__shared_weak_count *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v12, this, a2);
  AVVCRecordingEngine::setStartRecordCompletionAndAudioCallbackBlocks(v12, 0, 0);
  AVVCRecordingEngine::setStopRecordCompletionBlock(v12, 0);
  AVVCRecordingEngine::setEncoderErrorBlock(v12, 0);
  AVVCRecordingEngine::setSetupEndpointerBlock(v12, 0);
  AVVCRecordingEngine::setCheckForEndpointBlock(v12, 0);
  AVVCRecordingEngine::setStopRecordWithRecordLockBlock(v12, 0);
  AVVCRecordingEngine::setDestroyRecordEngineWithRecordLockBlock(v12, 0);
  AVVCRecordingEngine::setReconfigureWithRecordLockBlock(v12, 0);
  AVVCRecordingEngine::setStreamInvalidatedBlock(v12, 0);
  AVVCRecordingEngine::setHardwareConfigChangedBlock(v12, 0);
  AVVCRecordingEngine::setBeginSessionActivateBlock(v12, 0);
  AVVCRecordingEngine::setEndSessionActivateBlock(v12, 0);
  if (!kAVVCScope)
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
LABEL_5:
    v4 = v2;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
LABEL_16:

      goto LABEL_17;
    }

    v5 = v12;
    v6 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v5)
      {
        v7 = MEMORY[0x1E696AEC0];
        v8 = *(v5 + 264);
        v9 = v6->__shared_owners_ + 1;
LABEL_11:
        v10 = [v7 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v5, v8, v9];
LABEL_13:
        *buf = 136315650;
        v15 = "AVVCRecordingEngine.mm";
        v16 = 1024;
        v17 = 711;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Reset completion blocks to nil for engine[%@]", buf, 0x1Cu);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        goto LABEL_16;
      }
    }

    else if (v12)
    {
      v9 = 0;
      v7 = MEMORY[0x1E696AEC0];
      v8 = *(v12 + 264);
      goto LABEL_11;
    }

    v10 = @"(0x0) use_count:0";
    goto LABEL_13;
  }

  v2 = *kAVVCScope;
  if (v2)
  {
    goto LABEL_5;
  }

LABEL_17:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1BA601AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void AVVCRecordingEngine::myAudioQueueBufferReceived(AVVCRecordingEngine *this, MyAudioQueueBuffer *a2, uint64_t a3)
{
  a2->var11 = *(this + 320);
  v4 = [[AVVCAudioBuffer alloc] initWithAudioQueueBuffer:a2 channels:*(this + 13) timeStamp:a3];
  AVVCRecordingEngine::avvcAudioBufferReceived(this, v4, 0, 1);
}

uint64_t AVVCRecordingEngine::stopRecord(AVVCRecordingEngine *this, char a2)
{
  v4 = 0;
  v31 = *MEMORY[0x1E69E9840];
  v5 = *(this + 27);
  if (v5 <= 3)
  {
    v6 = v5 >= 2;
    v7 = v5 - 2;
    if (!v6)
    {
      if (kAVVCScope)
      {
        v9 = *kAVVCScope;
        if (!v9)
        {
LABEL_37:
          v8 = 4294955515;
          goto LABEL_61;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v16 = *(this + 27);
        if (v16 > 6)
        {
          v17 = "ILLEGAL";
        }

        else
        {
          v17 = off_1E7EF6338[v16];
        }

        v25 = 136315650;
        v26 = "AVVCRecordingEngine.mm";
        v27 = 1024;
        v28 = 876;
        v29 = 2080;
        v30 = v17;
        _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d stopRecordForStream: Attempt to stop on an %s stream.", &v25, 0x1Cu);
      }

      goto LABEL_37;
    }

    if (v7 >= 2)
    {
      goto LABEL_49;
    }

LABEL_9:
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(this + 27);
      if (v11 > 6)
      {
        v12 = "ILLEGAL";
      }

      else
      {
        v12 = off_1E7EF6338[v11];
      }

      v25 = 136315650;
      v26 = "AVVCRecordingEngine.mm";
      v27 = 1024;
      v28 = 883;
      v29 = 2080;
      v30 = v12;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d stopRecordForStream: Attempt to stop while stream is already %s. No-op.", &v25, 0x1Cu);
    }

    goto LABEL_33;
  }

  switch(v5)
  {
    case 4:
      if (kAVVCScope)
      {
        v13 = *kAVVCScope;
        if (!v13)
        {
LABEL_42:
          v4 = 1;
          *(this + 80) = 1;
          break;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136315394;
        v26 = "AVVCRecordingEngine.mm";
        v27 = 1024;
        v28 = 897;
        _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d stopRecordForStream: Attempt to stop while stream is about to start. NotifyStartBeforeStop", &v25, 0x12u);
      }

      goto LABEL_42;
    case 5:
      if (!*(this + 56))
      {
        v4 = 0;
        break;
      }

      if (kAVVCScope)
      {
        v14 = *kAVVCScope;
        if (!v14)
        {
LABEL_48:
          v4 = 1;
          break;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v19 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(this + 56);
        v25 = 136315650;
        v26 = "AVVCRecordingEngine.mm";
        v27 = 1024;
        v28 = 890;
        v29 = 1024;
        LODWORD(v30) = v20;
        _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d stopRecordForStream: an error : %d  occurred while recording and we need to synthesize doneRecording", &v25, 0x18u);
      }

      goto LABEL_48;
    case 6:
      goto LABEL_9;
  }

LABEL_49:
  *(this + 245) = a2;
  v8 = (*(*this + 104))(this);
  if (v8)
  {
    if (kAVVCScope)
    {
      v21 = *kAVVCScope;
      if (!v21)
      {
LABEL_59:
        AVVCRecordingEngine::setRecordErrorStatus(this, v8, "stopRecord");
LABEL_60:
        AVVCRecordingEngine::doneRecording(this);
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
      v25 = 136315650;
      v26 = "AVVCRecordingEngine.mm";
      v27 = 1024;
      v28 = 912;
      v29 = 1024;
      LODWORD(v30) = v8;
      _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d stopRecordForStream: Error stopping record engine: %d", &v25, 0x18u);
    }

    goto LABEL_59;
  }

  if (v4)
  {
    goto LABEL_60;
  }

LABEL_33:
  v8 = 0;
LABEL_61:
  v23 = *MEMORY[0x1E69E9840];
  return v8;
}

void AVVCRecordingEngine::stopRecordWithRecordLock(AVVCRecordingEngine *this)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_12:
        v5 = *MEMORY[0x1E69E9840];
        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "AVVCRecordingEngine.mm";
      v8 = 1024;
      v9 = 1061;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d stopRecordWithRecordLockBlock is nil !", &v6, 0x12u);
    }

    goto LABEL_12;
  }

  v1 = *(this + 2);
  v2 = *MEMORY[0x1E69E9840];

  v1();
}

uint64_t AVVCRecordingEngine::reconfigureWithRecordLock(AVVCRecordingEngine *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
LABEL_12:
        v6 = *MEMORY[0x1E69E9840];
        return 0;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "AVVCRecordingEngine.mm";
      v9 = 1024;
      v10 = 1085;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d reconfigureWithRecordLockBlock is nil !", &v7, 0x12u);
    }

    goto LABEL_12;
  }

  v1 = *(this + 2);
  v2 = *MEMORY[0x1E69E9840];

  return v1(this, 0);
}

void sub_1BA602618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void CADeprecated::CAMutex::Locker::~Locker(CADeprecated::CAMutex::Locker *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    (*(**this + 24))();
  }
}

void CADeprecated::XMachPortServicer::DispatchImpl::~DispatchImpl(dispatch_source_t *this)
{
  CADeprecated::XMachPortServicer::DispatchImpl::~DispatchImpl(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F3849660;
  dispatch_source_cancel(this[2]);
  dispatch_barrier_sync(this[1], &__block_literal_global_952);
  v2 = this[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = this[1];
  if (v3)
  {
    dispatch_release(v3);
  }
}

atomic_uint *CADeprecated::XMachReceivePort::SetMachPort(atomic_uint *this)
{
  v1 = atomic_exchange(this, 0);
  if (v1)
  {
    v2 = MEMORY[0x1E69E9A60];
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], v1, 1u, -1);
    v3 = *v2;

    return mach_port_deallocate(v3, v1);
  }

  return this;
}

BOOL AVAudioMixingImpl::SetOcclusion(AVAudioMixingImpl *this, float a2)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    a2 = -100.0;
  }

  var11 = this->var11;
  if (var11 != a2)
  {
    v3 = 0.0;
    if (a2 < 0.0)
    {
      v3 = a2;
    }

    if (a2 <= -100.0)
    {
      v3 = -100.0;
    }

    this->var11 = v3;
  }

  return var11 != a2;
}

BOOL AVAudioMixingImpl::SetObstruction(AVAudioMixingImpl *this, float a2)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    a2 = -100.0;
  }

  var10 = this->var10;
  if (var10 != a2)
  {
    v3 = 0.0;
    if (a2 < 0.0)
    {
      v3 = a2;
    }

    if (a2 <= -100.0)
    {
      v3 = -100.0;
    }

    this->var10 = v3;
  }

  return var10 != a2;
}

uint64_t AVAudioMixingImpl::SetPosition(AVAudioMixingImpl *this, AVAudio3DPoint a2)
{
  if (this->var9.x == a2.x && this->var9.y == a2.y && this->var9.z == a2.z)
  {
    return 0;
  }

  this->var9 = a2;
  return 1;
}

BOOL AVAudioMixingImpl::SetReverbBlend(AVAudioMixingImpl *this, float a2)
{
  v2 = 0.0;
  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    a2 = 0.0;
  }

  var8 = this->var8;
  if (var8 != a2)
  {
    v4 = 1.0;
    if (a2 < 1.0)
    {
      v4 = a2;
    }

    if (a2 > 0.0)
    {
      v2 = v4;
    }

    this->var8 = v2;
  }

  return var8 != a2;
}

BOOL AVAudioMixingImpl::SetRate(AVAudioMixingImpl *this, float a2)
{
  v2 = 0.5;
  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    a2 = 0.5;
  }

  var7 = this->var7;
  if (var7 != a2)
  {
    v4 = 2.0;
    if (a2 < 2.0)
    {
      v4 = a2;
    }

    if (a2 > 0.5)
    {
      v2 = v4;
    }

    this->var7 = v2;
  }

  return var7 != a2;
}

uint64_t AVAudioMixingImpl::SetPointSourceInHeadMode(AVAudioMixingImpl *this, unsigned int a2)
{
  v2 = a2 >= 2 || this->var6 == a2;
  v3 = !v2;
  if (!v2)
  {
    this->var6 = a2;
  }

  return v3;
}

uint64_t AVAudioMixingImpl::SetSourceMode(AVAudioMixingImpl *this, unsigned int a2)
{
  v2 = a2 >= 4 || this->var5 == a2;
  v3 = !v2;
  if (!v2)
  {
    this->var5 = a2;
  }

  return v3;
}

uint64_t AVAudioMixingImpl::SetRenderingAlgorithm(AVAudioMixingImpl *this, unsigned int a2)
{
  v2 = a2 >= 8 || this->var4 == a2;
  v3 = !v2;
  if (!v2)
  {
    this->var4 = a2;
  }

  return v3;
}

BOOL AVAudioMixingImpl::SetPan(AVAudioMixingImpl *this, float a2)
{
  v2 = -1.0;
  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    a2 = -1.0;
  }

  var3 = this->var3;
  if (var3 != a2)
  {
    v4 = 1.0;
    if (a2 < 1.0)
    {
      v4 = a2;
    }

    if (a2 > -1.0)
    {
      v2 = v4;
    }

    this->var3 = v2;
  }

  return var3 != a2;
}

BOOL AVAudioMixingImpl::SetGain(AVAudioMixingImpl *this, float a2)
{
  v2 = 0.0;
  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    a2 = 0.0;
  }

  var2 = this->var2;
  if (var2 != a2)
  {
    v4 = 100000.0;
    if (a2 < 100000.0)
    {
      v4 = a2;
    }

    if (a2 > 0.0)
    {
      v2 = v4;
    }

    this->var2 = v2;
  }

  return var2 != a2;
}

void sub_1BA60318C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

double AudioPlayerImpl_GetProperty<double>(AVAudioPlayerCpp *a1, int a2, void *a3)
{
  v5 = 0;
  v6 = 0;
  if (!AVAudioPlayerCpp::GetProperty(a1, a2, &v5, &v6) && v5 == 8)
  {
    result = *v6;
    *a3 = *v6;
  }

  return result;
}

void sub_1BA603B8C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1BA603B74);
}

void sub_1BA603BC8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1BA603C14(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1BA603C74(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1BA603C68);
}

void sub_1BA603CBC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1BA603CB4);
}

void sub_1BA603D04(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1BA603CFCLL);
}

void LocalPlayerHandleCallback(AVAudioPlayer *a1, int a2, uint64_t a3, unsigned int *a4)
{
  if (a2 <= 1685024356)
  {
    if (a2 == 1651076724)
    {
      v9 = objc_autoreleasePoolPush();
      [(AVAudioPlayer *)a1 delegate];
      if (objc_opt_respondsToSelector())
      {
        v11 = sel_beginInterruption;
LABEL_25:
        [(AVAudioPlayer *)a1 performSelectorOnMainThread:v11 withObject:0 waitUntilDone:0];
      }

LABEL_26:

      objc_autoreleasePoolPop(v9);
      return;
    }

    if (a2 != 1684370034 || a3 != 4)
    {
      return;
    }

    v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*a4];
    v12 = v7;
    v8 = sel_decodeError_;
  }

  else
  {
    if (a2 != 1685024357)
    {
      if (a2 != 1701408372)
      {
        if (a2 == 1953723244)
        {

          tryToSetPlayerSessionListener(a1);
        }

        return;
      }

      v9 = objc_autoreleasePoolPush();
      if (![(AVAudioPlayer *)a1 delegate])
      {
        goto LABEL_26;
      }

      if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
      {
        if (a3 == 8)
        {
          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*a4];
          [(AVAudioPlayer *)a1 performSelectorOnMainThread:sel_endInterruptionWithFlags_ withObject:v10 waitUntilDone:0];
        }

        goto LABEL_26;
      }

      if (objc_opt_respondsToSelector())
      {
        v11 = sel_endInterruption;
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    if (a3 != 1)
    {
      return;
    }

    v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:*a4 & 1];
    v12 = v7;
    v8 = sel_finishedPlaying_;
  }

  [(AVAudioPlayer *)a1 performSelectorOnMainThread:v8 withObject:v7 waitUntilDone:0];
}

uint64_t FileTypeConstant(NSString *a1)
{
  if (gAVFDylib)
  {
    v2 = gFileTypeNames;
  }

  else
  {
    gAVFDylib = dlopen("/System/Library/Frameworks/AVFoundation.framework/AVFoundation", 1);
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    gFileTypeNames = v2;
  }

  v3 = [v2 objectForKey:a1];
  if (!v3)
  {
    v4 = dlsym(gAVFDylib, [(NSString *)a1 UTF8String]);
    v3 = *v4;
    [gFileTypeNames setObject:*v4 forKey:a1];
  }

  return v3;
}

uint64_t caulk::numeric::exceptional_add<unsigned long>(uint64_t a1, uint64_t a2)
{
  v2 = __CFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception);
  }

  return result;
}

const void **applesauce::CF::ObjectRef<__IOSurface *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

std::runtime_error *std::overflow_error::overflow_error[abi:ne200100](std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "arithmetic addition overflow");
  result->__vftable = (MEMORY[0x1E69E55C0] + 16);
  return result;
}

void caulk::mach::mach_port::~mach_port(mach_port_name_t *this)
{
  if (*this)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *this);
  }
}

void unilaterally_billed_shared_memory::~unilaterally_billed_shared_memory(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_1BA604B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA604C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void __Synchronously_block_invoke(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

uint64_t __Block_byref_object_copy__1283(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t closeFile(uint64_t result, AudioRecorderImpl *a2)
{
  if (*(result + 104))
  {
    v2 = result;
    outDataSize = 0;
    if (!AudioQueueGetPropertySize(*(result + 112), 0x61716D63u, &outDataSize))
    {
      v3 = malloc_type_malloc(outDataSize, 0x100004077774924uLL);
      if (!AudioQueueGetProperty(*(v2 + 112), 0x61716D63u, v3, &outDataSize))
      {
        AudioFileSetProperty(*(v2 + 104), 0x6D676963u, outDataSize, v3);
      }

      free(v3);
    }

    result = AudioFileClose(*(v2 + 104));
    *(v2 + 104) = 0;
  }

  return result;
}

uint64_t stopAndDisposeRecordQueue(AVAudioRecorder *a1, AudioRecorderImpl *a2)
{
  if (!a1[7].super.isa)
  {
    return 0;
  }

  if (BYTE3(a1[11]._impl))
  {
    return 0;
  }

  v4 = a2;
  BYTE3(a1[11]._impl) = 1;
  __dmb(0xBu);
  AudioQueueStop(a1[7].super.isa, 1u);
  if (v4)
  {
    closeFile(a1, v5);
  }

  AudioQueueDispose(a1[7].super.isa, 0);
  a1[7].super.isa = 0;
  a1[9].super.isa = 0;
  a1[9]._impl = 0;
  LODWORD(a1[11]._impl) = 0;
  result = 1;
  __dmb(0xBu);
  return result;
}

uint64_t tryToSetRecorderSessionListener(uint64_t result, AudioRecorderImpl *a2)
{
  if (!a2->var30)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = [MEMORY[0x1E696AD88] defaultCenter];
      result = [v4 addObserver:v3 selector:sel_handleInterruption_ name:*MEMORY[0x1E698D550] object:a2->var33];
      a2->var30 = 1;
    }
  }

  return result;
}

void makeChannelAssignments(AudioRecorderImpl *a1)
{
  if (a1->var10)
  {
    var6 = a1->var6;
    if (var6)
    {
      v3 = [var6 count];
      if (v3)
      {
        v4 = v3;
        v5 = 16 * v3;
        v6 = malloc_type_malloc(16 * v3, 0x1060040ADAFC7CAuLL);
        v7 = 0;
        v8 = v6 + 2;
        do
        {
          v9 = [a1->var6 objectAtIndex:v7];
          *(v8 - 1) = [v9 owningPortUID];
          *v8 = [v9 channelNumber];
          v8 += 4;
          ++v7;
        }

        while (v4 != v7);
        AudioQueueSetProperty(a1->var10, 0x61716361u, v6, v5);

        free(v6);
      }
    }
  }
}

uint64_t recordQueue(AVAudioRecorder *a1, AudioFileID *a2, double a3, const AudioTimeStamp *a4)
{
  if (*(a2 + 186))
  {
    return 0;
  }

  v21 = v7;
  v22 = v6;
  v23 = v4;
  v24 = v5;
  result = prepareToRecordQueue(a1, a2);
  if (!result)
  {
    *(a2 + 185) = 257;
    if (a3 <= 0.0)
    {
      v13 = 0;
    }

    else
    {
      LODWORD(v12) = *(a2 + 21);
      v12 = *&v12;
      v13 = vcvtpd_s64_f64(*(a2 + 8) / v12 * a3);
    }

    a2[17] = v13;
    v14 = *(a2 + 20);
    if (v14)
    {
      LODWORD(v12) = *(a2 + 21);
      v15 = v14 * vcvtpd_u64_f64(*(a2 + 8) / *&v12 * 0.333);
    }

    else
    {
      ioDataSize = 4;
      outData = 0;
      if (AudioQueueGetProperty(a2[14], 0x786F7073u, &outData, &ioDataSize))
      {
        v15 = 0x10000;
      }

      else if (outData > 0x10000)
      {
        v15 = (outData + 63) & 0xFFFFFFC0;
      }

      else
      {
        v15 = 0x10000;
      }
    }

    v16 = (a2 + 25);
    v17 = 4;
    while (1)
    {
      result = AudioQueueAllocateBuffer(a2[14], v15, v16);
      if (result)
      {
        break;
      }

      v18 = *v16++;
      AudioQueueEnqueueBuffer(a2[14], v18, 0, 0);
      if (!--v17)
      {
        result = AudioQueueStart(a2[14], a4);
        if (result)
        {
          *(a2 + 185) = 0;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t prepareToRecordQueue(AVAudioRecorder *a1, AudioFileID *outAudioFile)
{
  inData[32] = *MEMORY[0x1E69E9840];
  if (outAudioFile[23])
  {
    Property = 0;
    goto LABEL_85;
  }

  v4 = outAudioFile + 14;
  if (!outAudioFile[14])
  {
    inData[0] = 0;
    if (([(OpaqueAudioFileID *)outAudioFile[31] setActive:1 error:inData]& 1) != 0)
    {
      v14 = asbdFromSettingsAndFileType2(outAudioFile[2], outAudioFile[6], *(outAudioFile + 14), (outAudioFile + 8));
      if (v14)
      {
        goto LABEL_50;
      }

      v15 = *(outAudioFile + 61) != 0;
      [(OpaqueAudioFileID *)outAudioFile[31] opaqueSessionID];
      v14 = AudioQueueNewInputWithAudioSession();
      if (v14)
      {
        goto LABEL_50;
      }

      if (*(outAudioFile + 61))
      {
        AudioQueueSetProperty(*v4, 0x71747070u, outAudioFile + 244, 4u);
      }

      makeChannelAssignments(outAudioFile);
      ioDataSize[0] = 40;
      Property = AudioQueueGetProperty(outAudioFile[14], 0x61716674u, outAudioFile + 8, ioDataSize);
      if (*(outAudioFile + 190) == 1)
      {
        outDataSize = 1;
        AudioQueueSetProperty(*v4, 0x61716D65u, &outDataSize, 4u);
      }

      if (*(outAudioFile + 191) == 1)
      {
        outDataSize = 1;
        AudioQueueSetProperty(*v4, 0x71696E6Du, &outDataSize, 4u);
      }

      v16 = [(OpaqueAudioFileID *)outAudioFile[2] objectForKey:@"AVChannelLayoutKey"];
      if (v16)
      {
        AudioQueueSetProperty(*v4, 0x6171636Cu, [v16 bytes], objc_msgSend(v16, "length"));
      }

      tryToSetRecorderSessionListener(a1, outAudioFile);
    }

    else
    {
      Property = [(NSString *)inData[0] code];
    }

    if (Property)
    {
      goto LABEL_85;
    }
  }

  if (!outAudioFile[13])
  {
    v14 = AudioFileCreateWithURL(outAudioFile[5], *(outAudioFile + 14), (outAudioFile + 8), 1u, outAudioFile + 13);
    if (v14 || (*(outAudioFile + 189) = 1, (v17 = -[OpaqueAudioFileID objectForKey:](outAudioFile[2], "objectForKey:", @"AVChannelLayoutKey")) != 0) && (v14 = AudioFileSetProperty(outAudioFile[13], 0x636D6170u, [v17 length], objc_msgSend(v17, "bytes")), v14))
    {
LABEL_50:
      Property = v14;
      goto LABEL_85;
    }
  }

  v5 = outAudioFile[2];
  if (v5 && *v4)
  {
    v6 = [(OpaqueAudioFileID *)outAudioFile[2] objectForKey:@"AVSampleRateConverterQualityKey"];
    if (v6)
    {
      v7 = v6;
      if (objc_opt_respondsToSelector())
      {
        v8 = [v7 unsignedIntegerValue];
        v9 = *v4;
        LODWORD(inData[0]) = v8;
        AudioQueueSetProperty(v9, 0x73726371u, inData, 4u);
      }
    }

    *ioDataSize = 0;
    if (getStringForKey(v5, &cfstr_Avsamplerateco.isa, ioDataSize, &outDataSize))
    {
      v10 = *ioDataSize;
      if ([*ioDataSize compare:@"AVSampleRateConverterAlgorithm_Mastering"])
      {
        if ([v10 compare:@"AVSampleRateConverterAlgorithm_Normal"])
        {
          if ([v10 compare:@"AVSampleRateConverterAlgorithm_MinimumPhase"])
          {
            goto LABEL_37;
          }

          v11 = *v4;
          v12 = 1835626096;
        }

        else
        {
          v11 = *v4;
          v12 = 1852797549;
        }
      }

      else
      {
        v11 = *v4;
        v12 = 1650553971;
      }

      LODWORD(inData[0]) = v12;
      AudioQueueSetProperty(v11, 0x73726361u, inData, 4u);
    }

LABEL_37:
    inData[0] = 0;
    if (getStringForKey(v5, &cfstr_Avencoderbitra.isa, inData, &outDataSize))
    {
      v18 = inData[0];
      if ([(NSString *)inData[0] compare:@"AVAudioBitRateStrategy_Constant"])
      {
        if ([(NSString *)v18 compare:@"AVAudioBitRateStrategy_LongTermAverage"])
        {
          if ([(NSString *)v18 compare:@"AVAudioBitRateStrategy_VariableConstrained"])
          {
            if ([(NSString *)v18 compare:@"AVAudioBitRateStrategy_Variable"]== NSOrderedSame)
            {
              v19 = *v4;
              LODWORD(inData[0]) = 3;
              AudioQueueSetProperty(v19, 0x61636266u, inData, 4u);
              v20 = [(NSDictionary *)v5 objectForKey:@"AVEncoderQualityForVBRKey"];
              if (v20)
              {
                v21 = v20;
                if (objc_opt_respondsToSelector())
                {
                  v22 = [v21 unsignedIntegerValue];
                  v23 = *v4;
                  LODWORD(inData[0]) = v22;
                  AudioQueueSetProperty(v23, 0x76627271u, inData, 4u);
                }
              }

              goto LABEL_51;
            }

            goto LABEL_49;
          }

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

      v25 = outAudioFile[14];
      LODWORD(inData[0]) = v24;
      AudioQueueSetProperty(v25, 0x61636266u, inData, 4u);
    }

LABEL_49:
    v14 = setBitRate(outAudioFile);
    if (!v14)
    {
LABEL_51:
      Property = 4294900621;
      v26 = [(NSDictionary *)v5 objectForKey:@"AVEncoderQualityKey"];
      if (v26)
      {
        v27 = v26;
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_85;
        }

        v28 = [v27 unsignedIntegerValue];
        v29 = *v4;
        LODWORD(inData[0]) = v28;
        AudioQueueSetProperty(v29, 0x63647175u, inData, 4u);
      }

      v30 = [(NSDictionary *)v5 objectForKey:@"AVEncoderBitDepthHintKey"];
      if (v30)
      {
        v31 = v30;
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_85;
        }

        v32 = [v31 unsignedIntegerValue];
        if (v32 >= 0x40)
        {
          v33 = 64;
        }

        else
        {
          v33 = v32;
        }

        v34 = *v4;
        LODWORD(inData[0]) = v33;
        AudioQueueSetProperty(v34, 0x61636264u, inData, 4u);
      }

      goto LABEL_60;
    }

    goto LABEL_50;
  }

LABEL_60:
  outAudioFile[15] = 0;
  outAudioFile[16] = 0;
  outAudioFile[17] = 0;
  *(outAudioFile + 184) = 1;
  *(outAudioFile + 188) = 1;
  inData[0] = @"AVFormatIDKey";
  *ioDataSize = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:*(outAudioFile + 18)];
  inData[1] = @"AVSampleRateKey";
  v55 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:*(outAudioFile + 8)];
  inData[2] = @"AVNumberOfChannelsKey";
  v56 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:*(outAudioFile + 23)];
  if (*(outAudioFile + 18) == 1819304813)
  {
    inData[3] = @"AVLinearPCMBitDepthKey";
    v57 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:*(outAudioFile + 24)];
    inData[4] = @"AVLinearPCMIsFloatKey";
    v58 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:*(outAudioFile + 19) & 1];
    inData[5] = @"AVLinearPCMIsBigEndianKey";
    v59 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:(*(outAudioFile + 19) >> 1) & 1];
    inData[6] = @"AVLinearPCMIsNonInterleaved";
    v60 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:(*(outAudioFile + 19) >> 5) & 1];
    v35 = 7;
  }

  else
  {
    v35 = 3;
  }

  if (*(outAudioFile + 14))
  {
    inData[v35] = @"AVAudioFileTypeKey";
    *&ioDataSize[2 * v35++] = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:*(outAudioFile + 14)];
  }

  v36 = *v4;
  if (*v4)
  {
    v52 = 0;
    outDataSize = 4;
    if (!AudioQueueGetProperty(v36, 0x73726371u, &v52, &outDataSize))
    {
      inData[v35] = @"AVSampleRateConverterQualityKey";
      v37 = objc_alloc(MEMORY[0x1E696AD98]);
      *&ioDataSize[2 * v35++] = [v37 initWithUnsignedInteger:v52];
    }

    v38 = *v4;
    outDataSize = 4;
    if (!AudioQueueGetProperty(v38, 0x62726174u, &v52, &outDataSize))
    {
      inData[v35] = @"AVEncoderBitRateKey";
      v39 = objc_alloc(MEMORY[0x1E696AD98]);
      *&ioDataSize[2 * v35++] = [v39 initWithUnsignedInteger:v52];
    }

    v40 = *v4;
    outDataSize = 4;
    if (!AudioQueueGetProperty(v40, 0x61636264u, &v52, &outDataSize))
    {
      inData[v35] = @"AVEncoderBitDepthHintKey";
      v41 = objc_alloc(MEMORY[0x1E696AD98]);
      *&ioDataSize[2 * v35++] = [v41 initWithUnsignedInteger:v52];
    }

    v42 = *v4;
    outDataSize = 4;
    if (!AudioQueueGetProperty(v42, 0x63647175u, &v52, &outDataSize))
    {
      inData[v35] = @"AVEncoderQualityKey";
      v43 = objc_alloc(MEMORY[0x1E696AD98]);
      *&ioDataSize[2 * v35++] = [v43 initWithUnsignedInteger:v52];
    }

    outDataSize = 0;
    if (!AudioQueueGetPropertySize(*v4, 0x6171636Cu, &outDataSize))
    {
      v44 = objc_alloc(MEMORY[0x1E695DF88]);
      v45 = [v44 initWithLength:outDataSize];
      if (AudioQueueGetProperty(*v4, 0x6171636Cu, [v45 mutableBytes], &outDataSize))
      {
      }

      else
      {
        inData[v35] = @"AVChannelLayoutKey";
        *&ioDataSize[2 * v35++] = v45;
      }
    }
  }

  v46 = outAudioFile[3];
  if (v46)
  {
  }

  v47 = 0;
  outAudioFile[3] = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:ioDataSize forKeys:inData count:v35];
  v48 = 8 * v35;
  do
  {

    v47 += 8;
  }

  while (v48 != v47);
  v49 = outAudioFile[4];
  if (v49)
  {
  }

  Property = 0;
  outAudioFile[4] = [[AVAudioFormat alloc] initWithSettings:outAudioFile[3]];
LABEL_85:
  v50 = *MEMORY[0x1E69E9840];
  return Property;
}

uint64_t getStringForKey(NSDictionary *a1, NSString *a2, NSString **a3, int *a4)
{
  *a4 = 0;
  result = [(NSDictionary *)a1 objectForKey:a2];
  *a3 = result;
  if (result)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return 1;
    }

    else
    {
      result = 0;
      *a3 = 0;
      *a4 = -66675;
    }
  }

  return result;
}

uint64_t setBitRate(AudioRecorderImpl *a1)
{
  var2 = a1->var2;
  v3 = [var2 objectForKey:@"AVEncoderBitRateKey"];
  if (v3)
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 unsignedIntegerValue];
      var10 = a1->var10;
      inData = v5;
      LODWORD(result) = AudioQueueSetProperty(var10, 0x62726174u, &inData, 4u);
      if (result == -66684 || result == 2003332927 || result == 1886547824)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }

    return 4294900621;
  }

  result = [var2 objectForKey:@"AVEncoderBitRatePerChannelKey"];
  if (!result)
  {
    return result;
  }

  v10 = result;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 4294900621;
  }

  v11 = [v10 unsignedIntegerValue];
  v12 = a1->var10;
  v14 = a1->var8.mChannelsPerFrame * v11;
  result = AudioQueueSetProperty(v12, 0x62726174u, &v14, 4u);
  if (result == -66684 || result == 2003332927 || result == 1886547824)
  {
    return 0;
  }

  return result;
}

void AudioRecorderAQInputCallback(id *a1, OpaqueAudioQueue *a2, AudioQueueBuffer *a3, const AudioTimeStamp *a4, UInt32 a5, const AudioStreamPacketDescription *a6)
{
  v11 = objc_autoreleasePoolPush();
  Weak = objc_loadWeak(a1);
  if (Weak)
  {
    v13 = Weak;
    v14 = [Weak impl];
    v15 = *(v14 + 104);
    if (!v15)
    {
LABEL_14:
      [v13 performSelectorOnMainThread:sel_stop withObject:0 waitUntilDone:0];
      goto LABEL_15;
    }

    mAudioDataByteSize = a3->mAudioDataByteSize;
    v17 = *(v14 + 80);
    if (v17)
    {
      a5 = mAudioDataByteSize / v17;
    }

    ioNumPackets = a5;
    v18 = *(v14 + 136);
    if (v18)
    {
      v19 = v18 - *(v14 + 120);
      if (v19 < a5)
      {
        ioNumPackets = v19;
        a5 = v19;
      }
    }

    if (a5)
    {
      if (AudioFileWritePackets(v15, 0, mAudioDataByteSize, a6, *(v14 + 120), &ioNumPackets, a3->mAudioData))
      {
        *(v14 + 188) = 0;
        goto LABEL_14;
      }

      v20 = *(v14 + 120) + ioNumPackets;
      *(v14 + 120) = v20;
      v21 = *(v14 + 136);
      if (v21 && v21 <= v20)
      {
        *(v14 + 188) = 1;
        goto LABEL_14;
      }
    }

    if ((*(v14 + 187) & 1) == 0)
    {
      AudioQueueEnqueueBuffer(a2, a3, 0, 0);
    }
  }

LABEL_15:
  objc_autoreleasePoolPop(v11);
}

void CallbackMessenger::CallbackMessenger(CallbackMessenger *this)
{
  *this = 0;
  *(this + 1) = 0;
  operator new();
}

void sub_1BA609854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v18);
  if ((a15 & 1) != 0 && a14 < 0)
  {
    operator delete(__p);
  }

  v19 = *(v15 + 8);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

CallbackMessenger **std::unique_ptr<CallbackMessenger>::~unique_ptr[abi:ne200100](CallbackMessenger **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CallbackMessenger::~CallbackMessenger(v2);
    MEMORY[0x1BFAF5800]();
  }

  return a1;
}

BOOL _AVAE_CheckNoErr(char *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v12 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      if (a1)
      {
        v13 = strrchr(a1, 47);
        if (v13)
        {
          v14 = v13 + 1;
        }

        else
        {
          v14 = a1;
        }
      }

      else
      {
        v14 = 0;
      }

      *buf = 136316674;
      v22 = "AVAEInternal.h";
      v23 = 1024;
      v24 = 104;
      v25 = 2080;
      v26 = v14;
      v27 = 1024;
      v28 = a2;
      v29 = 2080;
      v30 = a3;
      v31 = 2080;
      v32 = a4;
      v33 = 1024;
      v34 = a5;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    if (a6)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = MEMORY[0x1E695DF20];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
      v18 = [v16 dictionaryWithObjectsAndKeys:{v17, @"failed call", 0}];
      *a6 = [v15 errorWithDomain:@"com.apple.coreaudio.avfaudio" code:a5 userInfo:v18];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", a5}];
    }
  }

  result = a5 == 0;
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void CallbackMessenger::~CallbackMessenger(CallbackMessenger *this)
{
  v2 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    v3 = *(this + 1);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

CallbackMessenger *std::__shared_ptr_pointer<CallbackMessenger  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    CallbackMessenger::~CallbackMessenger(result);

    JUMPOUT(0x1BFAF5800);
  }

  return result;
}

void std::__shared_ptr_pointer<CallbackMessenger  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFAF5800);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__shared_ptr_emplace<caulk::concurrent::messenger>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F3849238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFAF5800);
}

uint64_t *std::unique_ptr<AVAudioSequencerImpl::~AVAudioSequencerImpl()::$_0,std::default_delete<AVAudioSequencerImpl::~AVAudioSequencerImpl()::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x1BFAF5800](v2, 0x20C40A4A59CD2);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<AVAudioSequencerImpl::~AVAudioSequencerImpl()::$_0>(NSObject  {objcproto17OS_dispatch_queue}*,AVAudioSequencerImpl::~AVAudioSequencerImpl()::$_0 &&)::{lambda(void *)#1}::__invoke(caulk::concurrent::messenger ***a1)
{
  v2 = a1;
  caulk::concurrent::messenger::drain(**a1);
  return std::unique_ptr<AVAudioSequencerImpl::~AVAudioSequencerImpl()::$_0,std::default_delete<AVAudioSequencerImpl::~AVAudioSequencerImpl()::$_0>>::~unique_ptr[abi:ne200100](&v2);
}

void sub_1BA609E00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<AVAudioSequencerImpl::~AVAudioSequencerImpl()::$_0,std::default_delete<AVAudioSequencerImpl::~AVAudioSequencerImpl()::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AVAudioSequencerImpl::~AVAudioSequencerImpl(AVAudioSequencerImpl *this)
{
  v13 = *MEMORY[0x1E69E9840];
  if (kAVASScope)
  {
    v2 = *kAVASScope;
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

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 136315650;
    *&v8[1] = "AVAudioSequencerImpl.mm";
    v9 = 1024;
    v10 = 92;
    v11 = 2048;
    v12 = this;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ---> this = %p", v8, 0x1Cu);
  }

LABEL_8:
  v4 = dispatch_get_global_queue(0, 0);
  v5 = *(this + 5);
  v6 = *(this + 6);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4;
  operator new();
}

void sub_1BA60A074(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

MusicTimeStamp AVAudioSequencerImpl::CurrentPosition(AVAudioSequencerImpl *this)
{
  outTime = 0.0;
  Time = MusicPlayerGetTime(this, &outTime);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 109, "CurrentPosition", "MusicPlayerGetTime(mPlayer, &theTime)", Time, 0);
  return outTime;
}

uint64_t *applesauce::dispatch::v1::async<AVAudioSequencerImpl::Stop(void)::$_0>(NSObject  {objcproto17OS_dispatch_queue}*,AVAudioSequencerImpl::Stop(void)::$_0 &&)::{lambda(void *)#1}::__invoke(caulk::concurrent::messenger ***a1)
{
  v2 = a1;
  caulk::concurrent::messenger::drain(**a1);
  return std::unique_ptr<AVAudioSequencerImpl::~AVAudioSequencerImpl()::$_0,std::default_delete<AVAudioSequencerImpl::~AVAudioSequencerImpl()::$_0>>::~unique_ptr[abi:ne200100](&v2);
}

void sub_1BA60A118(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<AVAudioSequencerImpl::~AVAudioSequencerImpl()::$_0,std::default_delete<AVAudioSequencerImpl::~AVAudioSequencerImpl()::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

MusicTrack AVAudioSequencerImpl::GetTempoTrack(AVAudioSequencerImpl *this)
{
  outTrack = 0;
  TempoTrack = MusicSequenceGetTempoTrack(this, &outTrack);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 249, "GetTempoTrack", "MusicSequenceGetTempoTrack(mSequence, &tempoTrack)", TempoTrack, 0);
  return outTrack;
}

Float64 AVAudioSequencerImpl::GetSecondsForBeats(AVAudioSequencerImpl *this, float a2)
{
  outSeconds = 0.0;
  SecondsForBeats = MusicSequenceGetSecondsForBeats(this, a2, &outSeconds);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 261, "GetSecondsForBeats", "MusicSequenceGetSecondsForBeats(mSequence, inBeats, &theSeconds)", SecondsForBeats, 0);
  return outSeconds;
}

float AVAudioSequencerImpl::GetBeatsForSeconds(AVAudioSequencerImpl *this, Float64 a2)
{
  outBeats = 0.0;
  BeatsForSeconds = MusicSequenceGetBeatsForSeconds(this, a2, &outBeats);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 268, "GetBeatsForSeconds", "MusicSequenceGetBeatsForSeconds(mSequence, inSeconds, &theBeats)", BeatsForSeconds, 0);
  return outBeats;
}

void AVAudioSequencerImpl::UserCallback(id *this, void *a2, MusicTrack inTrack, OpaqueMusicTrack *a4, double a5, const MusicEventUserData *a6, double a7, double a8)
{
  if (this[4])
  {
    outSequence = 0;
    outTrackIndex = 0;
    MusicTrackGetSequence(inTrack, &outSequence);
    if (outSequence)
    {
      if (!MusicSequenceGetTrackIndex(outSequence, inTrack, &outTrackIndex))
      {
        v12 = outTrackIndex;
        if ([this[2] count] > v12)
        {
          v13 = [this[2] objectAtIndexedSubscript:outTrackIndex];
          v14 = [MEMORY[0x1E695DEF0] dataWithBytes:a4 + 4 length:*a4];
          v15 = this[5];
          v16 = v13;
          v17 = v14;
          if (*MEMORY[0x1E69E3C08])
          {
            v18 = *v15;
            v19 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
            *(v19 + 16) = 0;
            *(v19 + 24) = this;
            *(v19 + 32) = v16;
            *(v19 + 40) = v17;
            *(v19 + 48) = a5;
            *v19 = &unk_1F384D0C8;
            *(v19 + 8) = 0;
            v20 = v17;
            v21 = v16;
            caulk::concurrent::messenger::enqueue(v18, v19);
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AVAudioSequencerImpl::UserCallback(void *,OpaqueMusicSequence *,OpaqueMusicTrack *,double,MusicEventUserData const*,double,double)::$_0 &>::perform(uint64_t a1)
{
  v2 = a1;
  (*(*(*(a1 + 24) + 32) + 16))(*(*(a1 + 24) + 32), *(a1 + 32), *(a1 + 40), *(a1 + 48));
  return caulk::concurrent::details::rt_message_call<AVAudioSequencerImpl::UserCallback(void *,OpaqueMusicSequence *,OpaqueMusicTrack *,double,MusicEventUserData const*,double,double)::$_0 &>::rt_cleanup::~rt_cleanup(&v2);
}

void sub_1BA60A3E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::concurrent::details::rt_message_call<AVAudioSequencerImpl::UserCallback(void *,OpaqueMusicSequence *,OpaqueMusicTrack *,double,MusicEventUserData const*,double,double)::$_0 &>::rt_cleanup::~rt_cleanup(va);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AVAudioSequencerImpl::UserCallback(void *,OpaqueMusicSequence *,OpaqueMusicTrack *,double,MusicEventUserData const*,double,double)::$_0 &>::rt_cleanup::~rt_cleanup(id **a1)
{
  v2 = *a1;

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

void caulk::concurrent::details::rt_message_call<AVAudioSequencerImpl::UserCallback(void *,OpaqueMusicSequence *,OpaqueMusicTrack *,double,MusicEventUserData const*,double,double)::$_0 &>::~rt_message_call(id *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1BFAF5800);
}

{

  caulk::concurrent::message::~message(a1);
}

void MusicTrackImpl::MusicTrackImpl(MusicTrackImpl *this, MusicTrack inTrack)
{
  this->var0 = inTrack;
  this->var1 = 0;
  ioLength = 24;
  Property = MusicTrackGetProperty(inTrack, 7u, outData, &ioLength);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 320, "MusicTrackImpl", "MusicTrackGetProperty(inTrack, kSequenceTrackProperty_LoopRegion, &region, &pLen)", Property, 0);
  v4 = v8;
  v5 = v8 == -1;
  this->var2 = v8 != -1;
  if (v5)
  {
    v4 = 0;
  }

  this->var3 = v4;
}

void MusicTrackImpl::~MusicTrackImpl(MusicTrackImpl *this)
{
  v21 = *MEMORY[0x1E69E9840];
  if (kAVASScope)
  {
    v2 = *kAVASScope;
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

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "AVAudioSequencerImpl.mm";
    v17 = 1024;
    v18 = 327;
    v19 = 2048;
    v20 = this;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ---> this = %p", buf, 0x1Cu);
  }

LABEL_8:
  outSequence = 0;
  var0 = this->var0;
  if (!MusicTrackIsValid())
  {
    if (kAVASScope)
    {
      v5 = *kAVASScope;
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v16 = "AVAudioSequencerImpl.mm";
      v17 = 1024;
      v18 = 339;
      v7 = "%25s:%-5d Underlying track already destroyed";
      v8 = v5;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_23:
      _os_log_impl(&dword_1BA5AC000, v8, v9, v7, buf, 0x12u);
    }

LABEL_24:

    goto LABEL_25;
  }

  MusicTrackGetSequence(this->var0, &outSequence);
  if (outSequence)
  {
    MusicSequenceDisposeTrack(outSequence, this->var0);
    goto LABEL_25;
  }

  if (!kAVASScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
LABEL_21:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "AVAudioSequencerImpl.mm";
      v17 = 1024;
      v18 = 335;
      v7 = "%25s:%-5d Track's sequence was NULL";
      v8 = v5;
      v9 = OS_LOG_TYPE_INFO;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v5 = *kAVASScope;
  if (v5)
  {
    goto LABEL_21;
  }

LABEL_25:
  if (kAVASScope)
  {
    v11 = *kAVASScope;
    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v16 = "AVAudioSequencerImpl.mm";
    v17 = 1024;
    v18 = 341;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d <---", buf, 0x12u);
  }

LABEL_32:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1BA60A85C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

BOOL MusicTrackImpl::DoSetLengthInBeats(MusicTrackImpl *this, double a2)
{
  inData = a2;
  v2 = MusicTrackSetProperty(this, 5u, &inData, 8u);
  return _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 376, "DoSetLengthInBeats", "MusicTrackSetProperty(mTrack, kSequenceTrackProperty_TrackLength, &inLength, sizeof(inLength))", v2, 0);
}

double MusicTrackImpl::DoGetLengthInBeats(MusicTrackImpl *this)
{
  outData = 0.0;
  ioLength = 8;
  Property = MusicTrackGetProperty(this, 5u, &outData, &ioLength);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 383, "DoGetLengthInBeats", "MusicTrackGetProperty(mTrack, kSequenceTrackProperty_TrackLength, &length, &pLen)", Property, 0);
  return outData;
}

double MusicTrackImpl::GetLoopStart(MusicTrackImpl *this)
{
  ioLength = 24;
  Property = MusicTrackGetProperty(this, 7u, outData, &ioLength);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 482, "GetLoopStart", "MusicTrackGetProperty(mTrack, kSequenceTrackProperty_LoopRegion, &region, &pLen)", Property, 0);
  return outData[0];
}

BOOL MusicTrackImpl::UseAutomatedParams(MusicTrackImpl *this, int a2)
{
  inData = a2;
  v2 = MusicTrackSetProperty(this, 4u, &inData, 4u);
  return _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 564, "UseAutomatedParams", "MusicTrackSetProperty(mTrack, kSequenceTrackProperty_AutomatedParameters, &useAuto, pLen)", v2, 0);
}

BOOL MusicTrackImpl::UsesAutomatedParams(MusicTrackImpl *this)
{
  outData = 0;
  ioLength = 4;
  Property = MusicTrackGetProperty(this, 4u, &outData, &ioLength);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 571, "UsesAutomatedParams", "MusicTrackGetProperty(mTrack, kSequenceTrackProperty_AutomatedParameters, &useAuto, &pLen)", Property, 0);
  return outData != 0;
}

BOOL MusicTrackEventIteratorImpl::HasCurrentEvent(MusicTrackEventIteratorImpl *this)
{
  outHasCurEvent = 0;
  HasCurrentEvent = MusicEventIteratorHasCurrentEvent(this, &outHasCurEvent);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 768, "HasCurrentEvent", "MusicEventIteratorHasCurrentEvent(mIter, &has)", HasCurrentEvent, 0);
  return outHasCurEvent != 0;
}

void CADeprecated::RealtimeMessenger::~RealtimeMessenger(CADeprecated::RealtimeMessenger *this)
{
  CADeprecated::RealtimeMessenger::~RealtimeMessenger(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F384D0F0;
  std::recursive_mutex::~recursive_mutex((this + 72));
  v2 = *(this + 3);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  atomic_load(this + 2);
  CADeprecated::XMachReceivePort::SetMachPort(this + 2);
}

void CADeprecated::RealtimeMessenger::RealtimeMessenger(uint64_t a1, dispatch_queue_t *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F384D0F0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 8;
  *(a1 + 64) = 0;
  MEMORY[0x1BFAF5690](a1 + 72);
  CADeprecated::XMachReceivePort::SetMachPort(v4);
  name = 0;
  v5 = MEMORY[0x1E69E9A60];
  v6 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v18 = "XMachServer.cpp";
      v19 = 1024;
      v20 = 149;
      v21 = 2080;
      v22 = "ret = mach_port_allocate(mach_task_self(), MACH_PORT_RIGHT_RECEIVE, &port)";
      v23 = 1024;
      v24 = v6;
      _os_log_impl(&dword_1BA5AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_verify_noerr: [%s, %d]", buf, 0x22u);
    }
  }

  else
  {
    inserted = mach_port_insert_right(*v5, name, name, 0x14u);
    if (inserted)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v18 = "XMachServer.cpp";
        v19 = 1024;
        v20 = 153;
        v21 = 2080;
        v22 = "ret = mach_port_insert_right(mach_task_self(), port, port, MACH_MSG_TYPE_MAKE_SEND)";
        v23 = 1024;
        v24 = inserted;
        _os_log_impl(&dword_1BA5AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_verify_noerr: [%s, %d]", buf, 0x22u);
      }

      mach_port_mod_refs(*v5, name, 1u, -1);
    }

    else
    {
      atomic_store(name, v4);
    }
  }

  if (!*a2)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    if (global_queue)
    {
      v13 = global_queue;
      dispatch_retain(global_queue);
      v14 = *a2;
      *a2 = v13;
      if (v14)
      {
        dispatch_release(v14);
      }
    }

    else
    {
      *a2 = 0;
    }
  }

  v8 = dispatch_queue_create("RealtimeMessenger.mServiceQueue", 0);
  v9 = *(a1 + 24);
  *(a1 + 24) = v8;
  if (v9)
  {
    dispatch_release(v9);
    v8 = *(a1 + 24);
  }

  dispatch_set_target_queue(v8, *a2);
  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  v11 = dispatch_source_create(MEMORY[0x1E69E96D8], explicit, 0, *(a1 + 24));
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZN12CADeprecated17RealtimeMessengerC2EN10applesauce8dispatch2v15queueE_block_invoke;
  v15[3] = &__block_descriptor_tmp_1502;
  v15[4] = a1;
  dispatch_source_set_event_handler(v11, v15);
  operator new();
}

void sub_1BA60AF1C(_Unwind_Exception *a1)
{
  if (v3)
  {
    dispatch_release(v3);
  }

  std::recursive_mutex::~recursive_mutex((v1 + 72));
  v6 = *(v1 + 24);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *v4;
  *v4 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  CADeprecated::XMachReceivePort::~XMachReceivePort(v2);
  _Unwind_Resume(a1);
}

void ___ZN12CADeprecated17RealtimeMessengerC2EN10applesauce8dispatch2v15queueE_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  msg.msgh_bits = 0;
  explicit = atomic_load_explicit((v1 + 8), memory_order_acquire);
  msg.msgh_remote_port = 0;
  msg.msgh_local_port = explicit;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 0;
  mach_msg(&msg, 2, 0, 0x2Cu, atomic_load_explicit((v1 + 8), memory_order_acquire), 0, 0);
  atomic_store(0, (v1 + 64));
  CADeprecated::RealtimeMessenger::_PerformPendingMessages(v1);
  v3 = *MEMORY[0x1E69E9840];
}

void CADeprecated::RealtimeMessenger::_PerformPendingMessages(CADeprecated::RealtimeMessenger *this)
{
  std::recursive_mutex::lock((this + 72));
  while (1)
  {
    v2 = OSAtomicDequeue(this + 2, *(this + 6));
    if (!v2)
    {
      break;
    }

    v2[16] = 0;
    (*(*v2 + 16))(v2);
  }

  std::recursive_mutex::unlock((this + 72));
}

void CADeprecated::RealtimeMessenger::PerformAsync(uint64_t a1, _BYTE *__new)
{
  v8 = *MEMORY[0x1E69E9840];
  if (__new[16] == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v5 = 136315650;
      *&v5[4] = "RealtimeMessenger.cpp";
      v6 = 0x800000000490400;
      v7 = __new;
      _os_log_impl(&dword_1BA5AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d RealtimeMessenger: trying to enqueue duplicate invocation on message %p", v5, 0x1Cu);
    }
  }

  else
  {
    __new[16] = 1;
    OSAtomicEnqueue((a1 + 32), __new, *(a1 + 48));
    if ((atomic_exchange((a1 + 64), 1u) & 1) == 0)
    {
      *v5 = 0x1C00000013;
      *&v5[8] = atomic_load_explicit((a1 + 8), memory_order_acquire);
      v7 = 0;
      v6 = 0;
      mach_msg(v5, 1, 0x1Cu, 0, 0, 0, 0);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1BA60B200(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t XPC_Connection::ProcessMessage(XPC_Connection *this, void *a2)
{
  if (MEMORY[0x1BFAF66E0](a2) == MEMORY[0x1E69E9E98])
  {
    result = *(this + 5);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(this + 3);
    if (!result)
    {
      return result;
    }
  }

  v4 = *(result + 16);

  return v4();
}

void XPC_Connection::~XPC_Connection(XPC_Connection *this)
{
  XPC_Connection::~XPC_Connection(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F384C940;
  v2 = *(this + 3);
  if (v2)
  {
    _Block_release(v2);
    *(this + 3) = 0;
  }

  v3 = *(this + 5);
  if (v3)
  {
    _Block_release(v3);
    *(this + 5) = 0;
  }

  XPC_Object::~XPC_Object(this);
}

void sub_1BA60B36C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t XPC_Connection::Finalize(uint64_t this, XPC_Connection *a2)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

void AVAudioSinkNodeImpl::SetInputFormat(AVAudioSinkNodeImpl *this, unint64_t a2, AVAudioFormat *a3)
{
  caulk::pooled_semaphore_mutex::_lock((this + 216));
  *(this + 46) = [(AVAudioFormat *)a3 channelCount];
  *(this + 47) = [(AVAudioFormat *)a3 streamDescription][24];
  v5 = *(this + 46);
  AVAEInputCallbackClient::SetRenderABL((this + 192));
}

void sub_1BA60B54C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AVAudioSinkNodeImpl::SetOutputFormat(AVAudioSinkNodeImpl *this, unint64_t a2, AVAudioFormat *a3)
{
  caulk::pooled_semaphore_mutex::_lock((this + 216));
  if (!a3)
  {
    a3 = (*(*this + 48))(this, 0);
  }

  *(this + 46) = [(AVAudioFormat *)a3 channelCount];
  *(this + 47) = [(AVAudioFormat *)a3 streamDescription][24];
  v5 = *(this + 46);
  AVAEInputCallbackClient::SetRenderABL((this + 192));
}

void AVAudioSinkNodeImpl::~AVAudioSinkNodeImpl(AVAudioSinkNodeImpl *this)
{
  AVAudioSinkNodeImpl::~AVAudioSinkNodeImpl(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F384AF20;
  (*(**(this + 21) + 64))(*(this + 21), 0, 0, 0);
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  std::unique_ptr<AVAEBlock<int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *)>>::~unique_ptr[abi:ne200100](this + 22);

  AVAudioUnitImpl::~AVAudioUnitImpl(this);
}

const void ***std::unique_ptr<AVAEBlock<int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *)>>::~unique_ptr[abi:ne200100](const void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = AVAEBlock<int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *)>::~AVAEBlock(v2);
    MEMORY[0x1BFAF5800](v3, 0x80C40B8603338);
  }

  return a1;
}

const void **AVAEBlock<int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *)>::~AVAEBlock(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
    *a1 = 0;
  }

  return a1;
}

void sub_1BA60BA34(_Unwind_Exception *a1)
{
  v5 = *(v2 + 192);
  if (v5)
  {
    *(v2 + 200) = v5;
    operator delete(v5);
  }

  std::unique_ptr<AVAEBlock<int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *)>>::~unique_ptr[abi:ne200100](v3);
  AVAudioUnitImpl::~AVAudioUnitImpl(v2);
  MEMORY[0x1BFAF5800](v2, v1);
  _Unwind_Resume(a1);
}

void AVAEBlock<int({block_pointer})(unsigned int *,AudioTimeStamp const*,unsigned int,long,AudioBufferList *)>::Set(const void **a1, void *aBlock)
{
  v3 = *a1;
  if (v3 != aBlock)
  {
    if (v3)
    {
      _Block_release(v3);
      *a1 = 0;
    }

    if (aBlock)
    {
      *a1 = _Block_copy(aBlock);
    }
  }
}

void AVAudioNodeTap::TapMessage::RealtimeMessenger_Perform(AVAudioNodeTap::TapMessage *this)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = *(this + 3);
  if ((*(v3 + 54) & 1) == 0)
  {
    if (*(v3 + 52) != 1)
    {
      goto LABEL_66;
    }

    v5 = v3 + 208;
    while (1)
    {
      v6 = *(v3 + 976);
      v7 = (v5 + 24 * (v6 & 0x1F));
      v8 = 8;
      while (1)
      {
        v9 = *v7;
        if (*(v7 + 4) == v6)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_66;
        }
      }

      v10 = atomic_load((v3 + 64));
      v11 = v7[1] - v10;
      v12 = *(v3 + 56);
      if (v12 == 1)
      {
        *(v3 + 56) = 2;
        if (!v11)
        {
          goto LABEL_66;
        }
      }

      else if (v12 || *(v3 + 1352) > v11)
      {
        goto LABEL_66;
      }

      v63 = v2;
      v13 = *(v3 + 1344);
      if (v13)
      {
        v14 = [v13 retainCount];
        v15 = *(v3 + 1344);
        if (v14 < 2)
        {
          if (v15)
          {
            goto LABEL_21;
          }
        }

        else
        {

          *(v3 + 1344) = 0;
        }
      }

      v15 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:*(v3 + 40) frameCapacity:*(v3 + 1352)];
      *(v3 + 1344) = v15;
LABEL_21:
      v16 = [(AVAudioPCMBuffer *)v15 frameCapacity];
      if (v16 >= v11)
      {
        v17 = v11;
      }

      else
      {
        v17 = v16;
      }

      [*(v3 + 1344) setFrameLength:v17];
      v18 = [*(v3 + 1344) mutableAudioBufferList];
      v19 = [*(v3 + 1344) frameLength];
      v20 = v10 + v19;
      v21 = CADeprecated::AudioRingBuffer::CheckTimeBounds((v3 + 72), v10, v20);
      if (v21)
      {
        goto LABEL_25;
      }

      if (v19)
      {
        v23 = *(v3 + 176);
        v24 = *(v3 + 188);
        v25 = *(v3 + 192);
        v26 = ((((v10 % v25) >> 63) & v25) + v10 % v25) * v24;
        v27 = ((((v20 % v25) >> 63) & v25) + v20 % v25) * v24;
        v19 = v27 - v26;
        if (v27 <= v26)
        {
          v58 = v5;
          v61 = *(v3 + 196) - v26;
          if (*v18 >= 1)
          {
            v60 = v20;
            v35 = v26;
            v36 = *v18 + 1;
            v37 = 4;
            v38 = *(v3 + 176);
            do
            {
              v39 = *v38++;
              memcpy(*&v18[v37], (v39 + v35), v61);
              v37 += 4;
              --v36;
            }

            while (v36 > 1);
            v20 = v60;
            if (*v18 >= 1)
            {
              v40 = (v18 + 4);
              v41 = *v18 + 1;
              do
              {
                v43 = *v40;
                v40 += 2;
                v42 = v43;
                v44 = *v23++;
                memcpy((v42 + v61), v44, v27);
                --v41;
              }

              while (v41 > 1);
            }
          }

          v19 = v61 + v27;
          v5 = v58;
        }

        else
        {
          if (*v18 < 1)
          {
            goto LABEL_51;
          }

          v59 = v20;
          v28 = v5;
          v29 = v26;
          v30 = (v18 + 4);
          v31 = *v18 + 1;
          do
          {
            v33 = *v30;
            v30 += 2;
            v32 = v33;
            v34 = *v23++;
            memcpy(v32, (v34 + v29), v19);
            --v31;
          }

          while (v31 > 1);
          v5 = v28;
          v20 = v59;
        }
      }

      v45 = *v18;
      if (v45 >= 1)
      {
        v46 = 0;
        v47 = (v45 + 3) & 0xFFFFFFFC;
        v48 = vdupq_n_s64(v45 - 1);
        v49 = v18 + 11;
        do
        {
          v50 = vdupq_n_s64(v46);
          v51 = vmovn_s64(vcgeq_u64(v48, vorrq_s8(v50, xmmword_1BA6CF310)));
          if (vuzp1_s16(v51, *v48.i8).u8[0])
          {
            *(v49 - 8) = v19;
          }

          if (vuzp1_s16(v51, *&v48).i8[2])
          {
            *(v49 - 4) = v19;
          }

          if (vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, vorrq_s8(v50, xmmword_1BA6CF300)))).i32[1])
          {
            *v49 = v19;
            v49[4] = v19;
          }

          v46 += 4;
          v49 += 16;
        }

        while (v47 != v46);
      }

LABEL_51:
      v21 = CADeprecated::AudioRingBuffer::CheckTimeBounds((v3 + 72), v10, v20);
      if (!v21)
      {
        v69 = 0u;
        memset(buf, 0, sizeof(buf));
        caulk::concurrent::atomic_value<AudioTimeStamp,2,6>::load(buf, (v3 + 1024));
        v67 = 1;
        v64 = v10;
        [*(v3 + 40) sampleRate];
        v54 = v67;
        if ((~v67 & 7) != 0 && (v67 & 3) != 0 && (BYTE8(v69) & 3) == 3)
        {
          if ((v67 & 4) != 0)
          {
            v55 = v66;
          }

          else
          {
            v55 = 1.0;
            if ((BYTE8(v69) & 4) != 0)
            {
              v54 = v67 | 4;
              v55 = *&buf[16];
              v66 = *&buf[16];
            }
          }

          v53 = v55 * 24000000.0;
          if ((v54 & 2) == 0)
          {
            v65 = (*&buf[8] + (v64 - *buf) * (v53 / v52));
          }

          if ((v54 & 1) == 0)
          {
            v53 = *buf + round(v52 / v53 * (v65 - *&buf[8]));
            v64 = v53;
          }

          v67 = v54 | 3;
        }

        [AVAudioTime timeWithAudioTimeStamp:&v64 sampleRate:v52, v53];
        v56 = *(v3 + 1344);
        (*(*(v3 + 16) + 16))();
        goto LABEL_65;
      }

LABEL_25:
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v22 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "AVAudioNodeTap.mm";
        *&buf[12] = 1024;
        *&buf[14] = 268;
        *&buf[18] = 2048;
        *&buf[20] = v3;
        *&buf[28] = 1024;
        *&buf[30] = v21;
        _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d Error fetching from ring buffer, this = %p, err = %d", buf, 0x22u);
      }

LABEL_65:
      atomic_store(v10 + [*(v3 + 1344) frameLength], (v3 + 64));
      v2 = v63;
      if ((*(v3 + 52) & 1) == 0)
      {
        goto LABEL_66;
      }
    }
  }

  v62 = v2;
  _Block_release(*(v3 + 16));

  v4 = *(v3 + 1488);
  if (v4)
  {
    *(v3 + 1496) = v4;
    operator delete(v4);
  }

  CADeprecated::AudioRingBuffer::~AudioRingBuffer((v3 + 72));
  MEMORY[0x1BFAF57F0](v3, 64);
  v2 = v62;
LABEL_66:
  v57 = *MEMORY[0x1E69E9840];
}

void sub_1BA60C174(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

double caulk::concurrent::atomic_value<AudioTimeStamp,2,6>::load(_OWORD *a1, unsigned int *a2)
{
  v13 = 0;
  v3 = atomic_load(a2);
  if ((v3 & 2) != 0)
  {
    v5 = a2 + 16;
    while (1)
    {
      v6 = (v3 >> 2) & 1;
      v7 = &v5[32 * ((v3 & 4) == 0)];
      explicit = atomic_load_explicit(v7, memory_order_acquire);
      if ((explicit & 1) == 0 || (v7 = &v5[32 * v6], explicit = atomic_load_explicit(v7, memory_order_acquire), (explicit & 1) == 0))
      {
        __dmb(9u);
        v9 = *(v7 + 6);
        *a1 = *(v7 + 2);
        a1[1] = v9;
        v10 = *(v7 + 10);
        v11 = *(v7 + 14);
        a1[2] = v10;
        a1[3] = v11;
        __dmb(9u);
        if (explicit == atomic_load_explicit(v7, memory_order_acquire))
        {
          break;
        }
      }

      caulk::concurrent::details::spinloop::spin(&v13);
      v3 = atomic_load(a2);
      if ((v3 & 2) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    *&v10 = 0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return *&v10;
}

uint64_t caulk::concurrent::details::spinloop::spin(uint64_t this)
{
  v1 = *this + 1;
  *this = v1;
  if (v1 == 100)
  {
    v2 = this;
    this = sched_yield();
    *v2 = 0;
  }

  return this;
}

__n128 caulk::concurrent::atomic_value<AudioTimeStamp,2,6>::store(unsigned int *a1, uint64_t a2)
{
  for (i = 0; ; caulk::concurrent::details::spinloop::spin(&i))
  {
    v4 = atomic_load(a1);
    if ((v4 & 1) == 0)
    {
      v5 = v4;
      atomic_compare_exchange_strong(a1, &v5, v4 | 1);
      if (v5 == v4)
      {
        break;
      }
    }
  }

  v6 = v4 >> 2;
  v7 = v4 & 0xFFFFFFFC;
  v8 = &a1[32 * ((v4 >> 2) & 1)];
  atomic_store((2 * (v6 & 0x3FFFFFFF)) | 1, v8 + 16);
  result = *a2;
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  *(v8 + 30) = *(a2 + 48);
  *(v8 + 26) = v11;
  *(v8 + 22) = v10;
  *(v8 + 18) = result;
  __dmb(0xBu);
  atomic_store(2 * v6, v8 + 16);
  atomic_store((v7 + 5) & 0xFFFFFFFC | 2, a1);
  return result;
}

void AVAudioNodeTap::AVAudioNodeTap(uint64_t a1, uint64_t a2, int a3, int a4, void *aBlock)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = _Block_copy(aBlock);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((a1 + 36));
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 256;
  *(a1 + 54) = 0;
  *(a1 + 56) = 2;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_1F3849680;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 172) = 0u;
  bzero((a1 + 192), 0x314uLL);
  *(a1 + 980) = 1;
  *(a1 + 1024) = 0;
  *(a1 + 1088) = 1;
  *(a1 + 1216) = 1;
  caulk::concurrent::atomic_value<AudioTimeStamp,2,6>::store((a1 + 1024), &CAAudioTimeStamp::kZero);
  *(a1 + 1344) = 0;
  *(a1 + 1352) = a4;
  *(a1 + 1424) = 0;
  *(a1 + 1432) = 1;
  *(a1 + 1416) = 0;
  *(a1 + 1440) = 0;
  *(a1 + 1464) = 0;
  *(a1 + 1472) = 0;
  *(a1 + 1456) = &unk_1F3849530;
  *(a1 + 1480) = a1;
  std::vector<char>::vector[abi:ne200100]((a1 + 1488));
}

void sub_1BA60C474(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 1496) = v5;
    operator delete(v5);
  }

  CADeprecated::AudioRingBuffer::~AudioRingBuffer(v2);
  _Unwind_Resume(a1);
}

uint64_t AVAudioNodeTap::Uninitialize(uint64_t this)
{
  if (*(this + 52) == 1)
  {
    v1 = this;
    while (1)
    {
      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock((v1 + 6));
      if (caulk::pooled_semaphore_mutex::try_lock((v1 + 378)))
      {
        break;
      }

      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock((v1 + 6));
      sched_yield();
      caulk::pooled_semaphore_mutex::_lock((v1 + 378));
      if (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock((v1 + 6)))
      {
        break;
      }

      caulk::pooled_semaphore_mutex::_unlock((v1 + 378));
      sched_yield();
    }

    CADeprecated::RealtimeMessenger::_PerformPendingMessages(AVAudioEngineImpl::sMessenger);
    v1[14] = 1;
    AVAEInputCallbackClient::SetRenderABL((v1 + 372));
  }

  return this;
}

void sub_1BA60C57C(_Unwind_Exception *a1)
{
  caulk::pooled_semaphore_mutex::_unlock((v1 + 1512));
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 24);
  _Unwind_Resume(a1);
}

pthread_t caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(uint64_t a1)
{
  result = pthread_self();
  if (atomic_load_explicit(a1, memory_order_acquire) == result && (v3 = *(a1 + 8), v3 > 0))
  {
    v4 = v3 - 1;
    *(a1 + 8) = v4;
    if (!v4)
    {
      atomic_store(0, a1);

      return caulk::pooled_semaphore_mutex::_unlock((a1 + 12));
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

pthread_t caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(uint64_t a1)
{
  result = pthread_self();
  v3 = result;
  if (atomic_load_explicit(a1, memory_order_acquire) == result)
  {
    v4 = *(a1 + 8) + 1;
  }

  else
  {
    result = caulk::pooled_semaphore_mutex::_lock((a1 + 12));
    atomic_store(v3, a1);
    v4 = 1;
  }

  *(a1 + 8) = v4;
  return result;
}

uint64_t caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(uint64_t a1)
{
  v2 = pthread_self();
  if (atomic_load_explicit(a1, memory_order_acquire) == v2)
  {
    ++*(a1 + 8);
    return 1;
  }

  else
  {
    result = caulk::pooled_semaphore_mutex::try_lock((a1 + 12));
    if (result)
    {
      atomic_store(v2, a1);
      result = 1;
      *(a1 + 8) = 1;
    }
  }

  return result;
}

uint64_t AVAudioNodeTap::Initialize(uint64_t this)
{
  v40 = *MEMORY[0x1E69E9840];
  if ((*(this + 52) & 1) == 0)
  {
    v1 = this;
    caulk::pooled_semaphore_mutex::_lock((this + 1512));
    v2 = (*(**v1 + 40))(*v1, 0, *(v1 + 2));
    v1[5] = v2;
    if (!v2)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v3 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v29 = "AVAEInternal.h";
        v30 = 1024;
        v31 = 71;
        v32 = 2080;
        v33 = "AVAudioNodeTap.mm";
        v34 = 1024;
        v35 = 58;
        v36 = 2080;
        v37 = "Initialize";
        v38 = 2080;
        v39 = "nil != _format";
        _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nil != _format"}];
      v2 = v1[5];
    }

    *(v1 + 12) = [v2 channelCount];
    v4 = v1[5];
    v5 = *[v1[5] streamDescription];
    v6 = [v1[5] streamDescription];
    v7 = (v5 * 0.1);
    v8 = *v6 * 0.4;
    v9 = v8;
    v10 = *(v1 + 338);
    if (v10 < v7 || (v7 = v8, v10 > v9))
    {
      *(v1 + 338) = v7;
    }

    if ([v1[5] isInterleaved])
    {
      v11 = 1;
    }

    else
    {
      v11 = [v1[5] channelCount];
    }

    v12 = *([v1[5] streamDescription] + 24);
    CADeprecated::AudioRingBuffer::Deallocate((v1 + 9));
    *(v1 + 46) = v11;
    *(v1 + 47) = v12;
    v13 = 4 * v9 * v12;
    *(v1 + 48) = 4 * v9;
    *(v1 + 49) = v13;
    v14 = ((v13 + 8) * v11);
    v15 = malloc_type_malloc(v14, 0xA6B618C8uLL);
    v16 = v15;
    if (v14)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      bzero(v15, v14);
      v1[22] = v16;
      if (v11 >= 1)
      {
        v18 = 0;
        v19 = *(v1 + 49);
        v20 = &v16[8 * v11];
        do
        {
          *(v1[22] + 8 * v18) = v20;
          v20 += v19;
          ++v18;
        }

        while (v11 != v18);
      }

      v21 = v1 + 28;
      v22 = 32;
      do
      {
        *(v21 - 2) = 0;
        *(v21 - 1) = 0;
        *v21 = 0;
        v21 += 6;
        --v22;
      }

      while (v22);
      *(v1 + 244) = 0;
      *(v1 + 980) = 1;
      v23 = v1 + 28;
      v24 = 32;
      do
      {
        *(v23 - 2) = 0;
        *(v23 - 1) = 0;
        *v23 = 0;
        v23 += 6;
        --v24;
      }

      while (v24);
      *(v1 + 244) = 0;
      *(v1 + 980) = 1;
      v1[168] = 0;
      *(v1 + 14) = 0;
      *(v1 + 26) = 257;
      *(v1 + 1432) = 1;
      *(v1 + 354) = 0;
      v1[180] = 0;
      v1[178] = *[v1[5] streamDescription];
      [v1[5] channelCount];
      AVAEInputCallbackClient::SetRenderABL((v1 + 186));
    }

    exception = __cxa_allocate_exception(8uLL);
    v27 = std::bad_alloc::bad_alloc(exception);
  }

  v25 = *MEMORY[0x1E69E9840];
  return this;
}

pthread_t AVAudioNodeTap::RenderCallback(AVAudioNodeTap *this, _DWORD *a2, unsigned int *a3, const AudioTimeStamp *a4, unsigned int a5, const AudioBufferList *a6, AudioBufferList *a7)
{
  v11 = a4;
  if (a3)
  {
    v15 = a3[14];
    v16 = v15 & 6;
    DWORD2(v110) = v16;
    v17 = *(a3 + 1);
    *(&v107 + 1) = v17;
    v18 = *(a3 + 2);
    *&v108 = v18;
    if (*(this + 1432) == 1)
    {
      *(this + 180) = 0;
      *(this + 1432) = 0;
    }

    else
    {
      v19 = *(this + 354);
      if (v19)
      {
        v20 = *(this + 170);
        v21 = vabdd_f64(*a3 + *(this + 180), v20 + *(this + 362));
        v22 = 1.0;
        if (v21 >= 1.0)
        {
          v22 = v21;
        }

        if (v21 > v22 * 2.22044605e-16)
        {
          if ((v15 & 2) != 0 && (*(this + 354) & 3) == 3)
          {
            v23 = *(this + 178);
            if ((v15 & 4) == 0 && (v18 = 1.0, (v19 & 4) != 0))
            {
              v18 = *(this + 172);
              *&v108 = v18;
              v16 = 7;
            }

            else
            {
              v16 = v15 & 4 | 3;
            }

            v8 = v20 + round(v23 / (v18 * 24000000.0) * (v17 - *(this + 171)));
            *&v107 = v8;
            DWORD2(v110) = v16;
          }

          else if (CAIsDebuggerAttached())
          {
            __asm { SVC             0 }
          }

          *(this + 180) = v8 - *a3;
        }
      }
    }

    if ((v16 & 1) == 0)
    {
      v8 = *a3 + *(this + 180);
      *&v107 = v8;
      DWORD2(v110) = v16 | 1;
    }

    v24 = v108;
    *(this + 85) = v107;
    *(this + 86) = v24;
    v25 = v110;
    *(this + 87) = v109;
    *(this + 88) = v25;
    *(this + 362) = a5;
    v7 = v8;
  }

  result = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 24);
  if (result)
  {
    if ((*(this + 14) - 1) < 2 || (*a2 & 0x108) != 8 || *(this + 2) != v11 || *(this + 52) != 1)
    {
LABEL_77:

      return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 24);
    }

    if (*(this + 53) == 1)
    {
      atomic_store(v7, this + 8);
      *(this + 53) = 0;
      if (*(this + 338) <= a5)
      {
        *(this + 338) = 2 * a5;
      }
    }

    if (!a5 || (v27 = *(this + 48), v27 < a5))
    {
LABEL_65:
      caulk::concurrent::atomic_value<AudioTimeStamp,2,6>::store(this + 256, &v107);
      v76 = *(this + 338);
      v77 = *(this + 244);
      v78 = this + 24 * (v77 & 0x1F);
      v79 = 8;
      while (1)
      {
        v80 = *(v78 + 26);
        v81 = *(v78 + 27);
        if (*(v78 + 56) == v77)
        {
          break;
        }

        if (!--v79)
        {
          goto LABEL_77;
        }
      }

      v82 = atomic_load(this + 8);
      if (v82 + v76 < v80 || v82 > v81)
      {
        atomic_store(v80, this + 8);
        v82 = v80;
      }

      if (v81 - v82 >= v76 && (*(this + 1472) & 1) == 0)
      {
        CADeprecated::RealtimeMessenger::PerformAsync(AVAudioEngineImpl::sMessenger, this + 1456);
      }

      goto LABEL_77;
    }

    v28 = v7 + a5;
    v29 = this + 208;
    v30 = *(this + 244);
    v31 = this + 24 * (v30 & 0x1F) + 208;
    v33 = *(v31 + 1);
    v32 = (v31 + 8);
    if (v33 > v7 || *(this + 980) == 1 && *(this + 981) == 1)
    {
      v34 = &v29[24 * ((v30 + 1) & 0x1F)];
      *v34 = v7;
      *(v34 + 1) = v7;
      *(v34 + 4) = v30 + 1;
      v35 = v30;
      atomic_compare_exchange_strong(this + 244, &v35, v30 + 1);
      if (v35 != v30)
      {
        *(this + 244) = v35;
      }

      *(this + 980) = 0;
    }

    else if (v28 - *&v29[24 * (v30 & 0x1F)] > v27)
    {
      v40 = v28 - v27;
      v41 = *v32;
      if (v40 > v41)
      {
        v41 = v40;
      }

      v42 = &v29[24 * ((v30 + 1) & 0x1F)];
      *v42 = v40;
      *(v42 + 1) = v41;
      *(v42 + 4) = v30 + 1;
      v43 = v30;
      atomic_compare_exchange_strong(this + 244, &v43, v30 + 1);
      if (v43 != v30)
      {
        *(this + 244) = v43;
      }
    }

    v44 = *(this + 22);
    v45 = *&v29[24 * (*(this + 244) & 0x1F) + 8];
    v46 = *(this + 48);
    v48 = *(this + 46);
    v47 = *(this + 47);
    if (v45 >= v7)
    {
      v50 = ((((v7 % v46) >> 63) & v46) + v7 % v46) * v47;
      goto LABEL_57;
    }

    v49 = ((((v45 % v46) >> 63) & v46) + v45 % v46) * v47;
    v50 = ((((v7 % v46) >> 63) & v46) + v7 % v46) * v47;
    if (v50 <= v49)
    {
      if (v48 < 1)
      {
        goto LABEL_57;
      }

      v105 = this + 208;
      v56 = v49;
      v57 = *(this + 49) - v49;
      v104 = *(this + 46);
      v58 = v48 + 1;
      v59 = *(this + 22);
      do
      {
        v60 = *v59++;
        bzero((v60 + v56), v57);
        --v58;
      }

      while (v58 > 1);
      v61 = v104 + 1;
      v62 = v44;
      v28 = v7 + a5;
      do
      {
        v63 = *v62++;
        bzero(v63, v50);
        --v61;
      }

      while (v61 > 1);
    }

    else
    {
      if (v48 < 1)
      {
        goto LABEL_57;
      }

      v105 = this + 208;
      v51 = v49;
      v52 = v50 - v49;
      v53 = v48 + 1;
      v54 = *(this + 22);
      do
      {
        v55 = *v54++;
        bzero((v55 + v51), v52);
        --v53;
      }

      while (v53 > 1);
      v28 = v7 + a5;
    }

    v29 = v105;
LABEL_57:
    v64 = *(this + 48);
    v65 = ((((v28 % v64) >> 63) & v64) + v28 % v64) * *(this + 47);
    v66 = *(this + 25);
    if (v65 <= v50)
    {
      if (!v66)
      {
        if (a6->mNumberBuffers >= 1)
        {
          v106 = v29;
          v91 = v50;
          v92 = *(this + 49) - v50;
          v93 = a6->mNumberBuffers + 1;
          v94 = 16;
          v95 = v44;
          do
          {
            v96 = *v95++;
            memcpy((v96 + v91), *(&a6->mNumberBuffers + v94), v92);
            v94 += 16;
            --v93;
          }

          while (v93 > 1);
          mNumberBuffers = a6->mNumberBuffers;
          v29 = v106;
          if (a6->mNumberBuffers >= 1)
          {
            v98 = v65;
            p_mData = &a6->mBuffers[0].mData;
            v100 = mNumberBuffers + 1;
            do
            {
              v102 = *v44++;
              v101 = v102;
              v103 = *p_mData;
              p_mData += 2;
              memcpy(v101, &v103[v92], v98);
              --v100;
            }

            while (v100 > 1);
          }
        }

        goto LABEL_63;
      }

      v72 = v64 - v7 % v64 - (((v7 % v64) >> 63) & v64);
      CADeprecated::AudioRingBuffer::ConvertAndStore(this + 72, v50, a6, 0, v72);
      v70 = v72 * *(this + 36);
      v67 = this + 72;
      v71 = (((v28 % *(this + 48)) >> 63) & *(this + 48)) + v28 % *(this + 48);
      v68 = 0;
      v69 = a6;
    }

    else
    {
      if (!v66)
      {
        v84 = a6->mNumberBuffers;
        if (a6->mNumberBuffers >= 1)
        {
          v85 = v65 - v50;
          v86 = &a6->mBuffers[0].mData;
          v87 = v84 + 1;
          do
          {
            v89 = *v44++;
            v88 = v89;
            v90 = *v86;
            v86 += 2;
            memcpy((v88 + v50), v90, v85);
            --v87;
          }

          while (v87 > 1);
        }

        goto LABEL_63;
      }

      v67 = this + 72;
      v68 = v50;
      v69 = a6;
      v70 = 0;
      v71 = a5;
    }

    CADeprecated::AudioRingBuffer::ConvertAndStore(v67, v68, v69, v70, v71);
LABEL_63:
    v73 = *(this + 244);
    v74 = &v29[24 * ((v73 + 1) & 0x1F)];
    *v74 = *&v29[24 * (v73 & 0x1F)];
    *(v74 + 1) = v28;
    *(v74 + 4) = v73 + 1;
    v75 = v73;
    atomic_compare_exchange_strong(this + 244, &v75, v73 + 1);
    if (v75 != v73)
    {
      *(this + 244) = v75;
    }

    goto LABEL_65;
  }

  return result;
}

void *GetAudioFormatGetPropertyProc(void)
{
  result = GetAudioFormatGetPropertyProc(void)::proc;
  if (!GetAudioFormatGetPropertyProc(void)::proc)
  {
    v1 = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioToolbox", 1);
    if (v1)
    {
      result = dlsym(v1, "AudioFormatGetProperty");
      GetAudioFormatGetPropertyProc(void)::proc = result;
    }

    else
    {
      return GetAudioFormatGetPropertyProc(void)::proc;
    }
  }

  return result;
}

uint64_t AVVCExternalDeviceRecordingEngine::getRecordRoute(uint64_t a1, void **a2)
{
  v4 = *(a1 + 368);
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::mutex::lock((v4 + 56));
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithString:@"ExternalDeviceInput"];
  v7 = *(v4 + 32);
  *(v4 + 32) = v6;

  if ((v5 & 1) == 0)
  {
    std::mutex::unlock((v4 + 56));
  }

  AVVCRouteManager::getRecordRoute(*(a1 + 368), a2);
  return 0;
}

void sub_1BA60D8E0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::mutex::unlock((v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AVVCExternalDeviceRecordingEngine::setSessionIsRecordingFlag(AVVCExternalDeviceRecordingEngine *this)
{
  TraceMethod::TraceMethod(v2, "setSessionIsRecordingFlag");
  TraceMethod::~TraceMethod(v2);
  return 0;
}

__n128 AVVCExternalDeviceRecordingEngine::getRecordQueueFormat@<Q0>(AVVCExternalDeviceRecordingEngine *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 24);
  v3 = *(this + 40);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(this + 7);
  return result;
}

uint64_t AVVCExternalDeviceRecordingEngine::destroyRecordEngine(AVVCExternalDeviceRecordingEngine *this)
{
  TraceMethod::TraceMethod(v2, "destroyRecordingEngine");
  TraceMethod::~TraceMethod(v2);
  return 0;
}

uint64_t AVVCExternalDeviceRecordingEngine::stopRecording(AVVCExternalDeviceRecordingEngine *this)
{
  TraceMethod::TraceMethod(v2, "stopRecording");
  TraceMethod::~TraceMethod(v2);
  return 0;
}

uint64_t AVVCExternalDeviceRecordingEngine::startRecording(AVVCExternalDeviceRecordingEngine *this)
{
  TraceMethod::TraceMethod(v2, "startRecording");
  TraceMethod::~TraceMethod(v2);
  return 0;
}

uint64_t AVVCExternalDeviceRecordingEngine::prepareRecording(AVVCExternalDeviceRecordingEngine *this, NSDictionary *a2)
{
  TraceMethod::TraceMethod(v4, "prepareRecoding");
  AVVCRecordingEngine::setStreamState(this, 2);
  TraceMethod::~TraceMethod(v4);
  return 0;
}

uint64_t AVVCExternalDeviceRecordingEngine::Initialize(AVVCExternalDeviceRecordingEngine *this)
{
  TraceMethod::TraceMethod(v2, "Initialize");
  TraceMethod::~TraceMethod(v2);
  return 0;
}

void AVVCExternalDeviceRecordingEngine::~AVVCExternalDeviceRecordingEngine(AVVCRecordingEngine *this)
{
  AVVCExternalDeviceRecordingEngine::~AVVCExternalDeviceRecordingEngine(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F3849790;
  TraceMethod::TraceMethod(v2, "~AVVCExternalDeviceRecordingEngine");
  TraceMethod::~TraceMethod(v2);
  AVVCRecordingEngine::~AVVCRecordingEngine(this);
}

void std::__tree<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

void AVVCRecordingEngineMap::AVVCRecordingEngineMap(AVVCRecordingEngineMap *this)
{
  v8 = *MEMORY[0x1E69E9840];
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = this + 8;
  MEMORY[0x1BFAF5690](this + 24);
  if (kAVVCScope)
  {
    v1 = *kAVVCScope;
    if (!v1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "AVVCRecordingEngineMap.mm";
    v6 = 1024;
    v7 = 14;
    _os_log_impl(&dword_1BA5AC000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCRecordingEngineMap::AVVCRecordingEngineMap() Created new Engine Map", &v4, 0x12u);
  }

LABEL_8:
  v3 = *MEMORY[0x1E69E9840];
}

void AVVCRecordingEngineMap::~AVVCRecordingEngineMap(AVVCRecordingEngineMap *this)
{
  v9 = *MEMORY[0x1E69E9840];
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
    v5 = 136315394;
    v6 = "AVVCRecordingEngineMap.mm";
    v7 = 1024;
    v8 = 19;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCRecordingEngineMap::~AVVCRecordingEngineMap() Destroyed Engine Map", &v5, 0x12u);
  }

LABEL_8:
  std::recursive_mutex::~recursive_mutex((this + 24));
  std::__tree<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>>>::destroy(*(this + 1));
  v4 = *MEMORY[0x1E69E9840];
}

void AVVCRecordingEngineMap::insertEngine(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v6 = IsSerializationEnabled(void)::enable;
  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::recursive_mutex::lock((a1 + 24));
  }

  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = (a1 + 8);
    do
    {
      v10 = v7[4];
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v7;
      }

      v7 = v7[v12];
    }

    while (v7);
    if (v9 != v8 && v9[4] <= a2)
    {
      if (kAVVCScope)
      {
        v13 = *kAVVCScope;
        if (!v13)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      v15 = v13;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_28:

LABEL_29:
        std::__tree<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>>>::erase(a1, v9);
        goto LABEL_30;
      }

      v16 = v9[5];
      v17 = v9[6];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v16)
        {
          v18 = MEMORY[0x1E696AEC0];
          v19 = *(v16 + 264);
          v20 = v17->__shared_owners_ + 1;
LABEL_23:
          v21 = [v18 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v16, v19, v20];
LABEL_25:
          *buf = 136315906;
          v38 = "AVVCRecordingEngineMap.mm";
          v39 = 1024;
          v40 = 77;
          v41 = 2112;
          v42 = v21;
          v43 = 2048;
          v44 = a2;
          _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing engine[%@] for stream(%llu) from the map", buf, 0x26u);
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          goto LABEL_28;
        }
      }

      else if (v16)
      {
        v20 = 0;
        v18 = MEMORY[0x1E696AEC0];
        v19 = *(v16 + 264);
        goto LABEL_23;
      }

      v21 = @"(0x0) use_count:0";
      goto LABEL_25;
    }
  }

LABEL_30:
  v36 = *a3;
  if (*(a3 + 1))
  {
    atomic_fetch_add_explicit(((*(a3 + 8) >> 64) + 8), 1uLL, memory_order_relaxed);
  }

  v22 = *v8;
  if (!*v8)
  {
LABEL_38:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v23 = v22;
      v24 = v22[4];
      if (v24 <= a2)
      {
        break;
      }

      v22 = *v23;
      if (!*v23)
      {
        goto LABEL_38;
      }
    }

    if (v24 >= a2)
    {
      break;
    }

    v22 = v23[1];
    if (!v22)
    {
      goto LABEL_38;
    }
  }

  if (*(&v36 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v36 + 1));
  }

  if (!kAVVCScope)
  {
    v25 = MEMORY[0x1E69E9C10];
    v26 = MEMORY[0x1E69E9C10];
LABEL_45:
    v27 = v25;
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
LABEL_56:

      goto LABEL_57;
    }

    v28 = *a3;
    v29 = *(a3 + 1);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v28)
      {
        v30 = MEMORY[0x1E696AEC0];
        v31 = *(v28 + 264);
        v32 = v29->__shared_owners_ + 1;
LABEL_51:
        v33 = [v30 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v28, v31, v32];
LABEL_53:
        v34 = *(a1 + 16);
        *buf = 136316162;
        v38 = "AVVCRecordingEngineMap.mm";
        v39 = 1024;
        v40 = 81;
        v41 = 2112;
        v42 = v33;
        v43 = 2048;
        v44 = a2;
        v45 = 2048;
        v46 = v34;
        _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Added engine[%@] for stream(%llu) to the map of size %ld", buf, 0x30u);
        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        goto LABEL_56;
      }
    }

    else if (v28)
    {
      v32 = 0;
      v30 = MEMORY[0x1E696AEC0];
      v31 = *(v28 + 264);
      goto LABEL_51;
    }

    v33 = @"(0x0) use_count:0";
    goto LABEL_53;
  }

  v25 = *kAVVCScope;
  if (v25)
  {
    goto LABEL_45;
  }

LABEL_57:
  if ((v6 & 1) == 0)
  {
    std::recursive_mutex::unlock((a1 + 24));
  }

  v35 = *MEMORY[0x1E69E9840];
}

void sub_1BA60E268(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if ((v4 & 1) == 0)
  {
    std::recursive_mutex::unlock((v1 + 24));
  }

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, a2);
  v8 = a2[6];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  operator delete(a2);
}

void AVVCRecordingEngineMap::removeEngine(AVVCRecordingEngineMap *this, unint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v4 = IsSerializationEnabled(void)::enable;
  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::recursive_mutex::lock((this + 24));
  }

  v5 = *(this + 1);
  if (v5)
  {
    v6 = (this + 8);
    do
    {
      v7 = v5[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v5;
      }

      v5 = v5[v9];
    }

    while (v5);
    if (v6 != (this + 8) && v6[4] <= a2)
    {
      v14 = v6[5];
      v13 = v6[6];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (kAVVCScope)
      {
        v15 = *kAVVCScope;
        if (!v15)
        {
LABEL_41:
          std::__tree<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>>>::erase(this, v6);
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          goto LABEL_20;
        }
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      v17 = v15;
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
LABEL_40:

        goto LABEL_41;
      }

      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v14)
        {
          v18 = MEMORY[0x1E696AEC0];
          v19 = *(v14 + 264);
          v20 = v13->__shared_owners_ + 1;
LABEL_35:
          v21 = [v18 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v14, v19, v20];
LABEL_37:
          *buf = 136315906;
          v23 = "AVVCRecordingEngineMap.mm";
          v24 = 1024;
          v25 = 91;
          v26 = 2112;
          v27 = v21;
          v28 = 2048;
          v29 = a2;
          _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing engine[%@] for stream(%llu) from the map", buf, 0x26u);
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          goto LABEL_40;
        }
      }

      else if (v14)
      {
        v20 = 0;
        v18 = MEMORY[0x1E696AEC0];
        v19 = *(v14 + 264);
        goto LABEL_35;
      }

      v21 = @"(0x0) use_count:0";
      goto LABEL_37;
    }
  }

  if (kAVVCScope)
  {
    v10 = *kAVVCScope;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v23 = "AVVCRecordingEngineMap.mm";
    v24 = 1024;
    v25 = 95;
    v26 = 2048;
    v27 = a2;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Engine for streamID(%llu) not found", buf, 0x1Cu);
  }

LABEL_20:
  if ((v4 & 1) == 0)
  {
    std::recursive_mutex::unlock((this + 24));
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1BA60E644(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
  }

  if ((v4 & 1) == 0)
  {
    std::recursive_mutex::unlock((v1 + 24));
  }

  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_ea8_40c65_ZTSNSt3__18functionIFvNS_10shared_ptrI19AVVCRecordingEngineEEEEE72c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return std::__function::__value_func<void ()(std::shared_ptr<AVVCRecordingEngine>)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t __copy_helper_block_ea8_40c65_ZTSNSt3__18functionIFvNS_10shared_ptrI19AVVCRecordingEngineEEEEE72c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(uint64_t a1, uint64_t a2)
{
  result = std::__function::__value_func<void ()(std::shared_ptr<AVVCRecordingEngine>)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t AUGraphParser::TraverseGraphNodes(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  result = std::function<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(*(a5 + 24), a3, a4);
  if (!result)
  {
    v10 = 72;
    v11 = 80;
    if (a1 == 1)
    {
      v11 = 56;
    }

    v12 = *(a3 + v11);
    if (a1 == 1)
    {
      v10 = 48;
    }

    v13 = (v12 - *(a3 + v10)) >> 3;
    if (v13 < 1)
    {
      result = 0;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = (*(*a3 + 24))(a3, a1, v14);
        if (v16)
        {
          v20 = 0;
          v21 = -1;
          v22 = 0;
          v23 = -1;
          if (((*(*a3 + 32))(a3, a1, v14, &v20) & 1) == 0)
          {
            if (AVAudioEngineLogCategory(void)::once != -1)
            {
              dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
            }

            v17 = *AVAudioEngineLogCategory(void)::category;
            if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              v25 = "AVAEInternal.h";
              v26 = 1024;
              v27 = 71;
              v28 = 2080;
              v29 = "AVAudioEngineGraph.mm";
              v30 = 1024;
              v31 = 89;
              v32 = 2080;
              v33 = "TraverseGraphNodes";
              v34 = 2080;
              v35 = "inCurrNode.GetConnection(inDirection, bus, conn)";
              _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
            }

            [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inCurrNode.GetConnection(inDirection, bus, conn)"}];
          }

          v18 = a2 ? AUGraphParser::TraverseGraphNodes(a1, 1, v16, &v20, a5) : std::function<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(*(a5 + 24), v16, &v20);
          if (v18 == 1)
          {
            break;
          }
        }

        v14 = (v14 + 1);
        v15 = v14 < v13;
      }

      while (v13 != v14);
      result = v15;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::function<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, a2, &v4);
}

uint64_t AUGraphParser::TraverseGraphNodesBFS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = std::function<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(*(a4 + 24), a2, a3);
  if (!v7)
  {
    v29 = &v29;
    v30 = &v29;
    v31 = 0;
    AUGraphNodeBase::GetValidConnections(a2, a1, &v29);
    if (v31 == 1)
    {
      v8 = v30;
      v9 = 4;
      if (a1 == 1)
      {
        v9 = 2;
      }

      v10 = v30[v9];
      if (!v10)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v11 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v33 = "AVAEInternal.h";
          v34 = 1024;
          v35 = 71;
          v36 = 2080;
          v37 = "AVAudioEngineGraph.mm";
          v38 = 1024;
          v39 = 123;
          v40 = 2080;
          v41 = "TraverseGraphNodesBFS";
          v42 = 2080;
          v43 = "connNode";
          _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "connNode"}];
        v8 = v30;
      }

      v7 = AUGraphParser::TraverseGraphNodesBFS(a1, v10, v8 + 2, a4);
    }

    else
    {
      v12 = v30;
      if (v30 == &v29)
      {
LABEL_25:
        if (v12 == &v29)
        {
          v7 = 0;
        }

        else
        {
          if (a1 == 1)
          {
            v16 = 16;
          }

          else
          {
            v16 = 32;
          }

          v25 = v16;
          while (2)
          {
            v17 = *(v12 + v25);
            if (!v17)
            {
              if (AVAudioEngineLogCategory(void)::once != -1)
              {
                dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
              }

              v18 = *AVAudioEngineLogCategory(void)::category;
              if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
              {
                *buf = 136316418;
                v33 = "AVAEInternal.h";
                v34 = 1024;
                v35 = 71;
                v36 = 2080;
                v37 = "AVAudioEngineGraph.mm";
                v38 = 1024;
                v39 = 144;
                v40 = 2080;
                v41 = "TraverseGraphNodesBFS";
                v42 = 2080;
                v43 = "connNodeFirst";
                _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
              }

              [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "connNodeFirst"}];
            }

            v26 = &v26;
            v27 = &v26;
            v28 = 0;
            AUGraphNodeBase::GetValidConnections(v17, a1, &v26);
            for (i = v27; i != &v26; i = i[1])
            {
              if (a1 == 1)
              {
                v20 = 2;
              }

              else
              {
                v20 = 4;
              }

              v21 = i[v20];
              if (!v21)
              {
                if (AVAudioEngineLogCategory(void)::once != -1)
                {
                  dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
                }

                v22 = *AVAudioEngineLogCategory(void)::category;
                if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316418;
                  v33 = "AVAEInternal.h";
                  v34 = 1024;
                  v35 = 71;
                  v36 = 2080;
                  v37 = "AVAudioEngineGraph.mm";
                  v38 = 1024;
                  v39 = 151;
                  v40 = 2080;
                  v41 = "TraverseGraphNodesBFS";
                  v42 = 2080;
                  v43 = "connNodeSecond";
                  _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
                }

                [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "connNodeSecond"}];
              }

              if (AUGraphParser::TraverseGraphNodesBFS(a1, v21, i + 2, a4) == 1)
              {
                std::__list_imp<AUGraphConnection>::clear(&v26);
                goto LABEL_52;
              }
            }

            std::__list_imp<AUGraphConnection>::clear(&v26);
            v7 = 0;
            v12 = v12[1];
            if (v12 != &v29)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        while (1)
        {
          if (a1 == 1)
          {
            v13 = 2;
          }

          else
          {
            v13 = 4;
          }

          v14 = v12[v13];
          if (!v14)
          {
            if (AVAudioEngineLogCategory(void)::once != -1)
            {
              dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
            }

            v15 = *AVAudioEngineLogCategory(void)::category;
            if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              v33 = "AVAEInternal.h";
              v34 = 1024;
              v35 = 71;
              v36 = 2080;
              v37 = "AVAudioEngineGraph.mm";
              v38 = 1024;
              v39 = 131;
              v40 = 2080;
              v41 = "TraverseGraphNodesBFS";
              v42 = 2080;
              v43 = "connNode";
              _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
            }

            [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "connNode"}];
          }

          if (std::function<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(*(a4 + 24), v14, (v12 + 2)) == 1)
          {
            break;
          }

          v12 = v12[1];
          if (v12 == &v29)
          {
            v12 = v30;
            goto LABEL_25;
          }
        }

LABEL_52:
        v7 = 1;
      }
    }

    std::__list_imp<AUGraphConnection>::clear(&v29);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v7;
}