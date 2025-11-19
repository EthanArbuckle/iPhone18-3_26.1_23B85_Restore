void sub_1DE40A484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE40A4F8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ADS::ChangeInfoData<AudioStreamBasicDescription>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<AudioStreamBasicDescription>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

uint64_t ADS::Stream::GetPropertyData(uint64_t this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6, unsigned int a7, unsigned int *a8, _OWORD *a9)
{
  v41 = *MEMORY[0x1E69E9840];
  mSelector = a4->mSelector;
  if (a4->mSelector <= 1935894637)
  {
    if (mSelector <= 1885762591)
    {
      switch(mSelector)
      {
        case 1650682995:
          if (a7 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v37 = 136315394;
              v38 = "ADS_Stream.cpp";
              v39 = 1024;
              v40 = 156;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Stream_GetPropertyData: not enough space for the return value of kAudioObjectPropertyBaseClass for the volume control", &v37, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            *exception = off_1F5991DD8;
            exception[2] = 561211770;
          }

          v11 = *(this + 16);
          goto LABEL_53;
        case 1668047219:
          if (a7 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v37 = 136315394;
              v38 = "ADS_Stream.cpp";
              v39 = 1024;
              v40 = 163;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Stream_GetPropertyData: not enough space for the return value of kAudioObjectPropertyClass for the volume control", &v37, 0x12u);
            }

            v36 = __cxa_allocate_exception(0x10uLL);
            *v36 = off_1F5991DD8;
            v36[2] = 561211770;
          }

          v11 = *(this + 12);
          goto LABEL_53;
        case 1819569763:
          if (a7 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v37 = 136315394;
              v38 = "ADS_Stream.cpp";
              v39 = 1024;
              v40 = 228;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Stream_GetPropertyData: not enough space for the return value of kAudioStreamPropertyStartingChannel for the stream", &v37, 0x12u);
            }

            v29 = __cxa_allocate_exception(0x10uLL);
            *v29 = off_1F5991DD8;
            v29[2] = 561211770;
          }

          v11 = *(this + 192);
          goto LABEL_53;
      }

      goto LABEL_55;
    }

    if (mSelector == 1885762592)
    {
LABEL_28:
      if (a7 <= 0x27)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v37 = 136315394;
          v38 = "ADS_Stream.cpp";
          v39 = 1024;
          v40 = 239;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Stream_GetPropertyData: not enough space for the return value of kAudioStreamPropertyVirtualFormat for the stream", &v37, 0x12u);
        }

        v27 = __cxa_allocate_exception(0x10uLL);
        *v27 = off_1F5991DD8;
        v27[2] = 561211770;
      }

      v12 = this + 200;
      this = (*(*(this + 200) + 16))(this + 200);
      v13 = *(v12 - 48);
      v14 = *(v12 - 64);
      *a9 = *(v12 - 80);
      a9[1] = v14;
      *(a9 + 4) = v13;
      *a8 = 40;
      if (!this)
      {
        goto LABEL_54;
      }

      goto LABEL_23;
    }

    if (mSelector != 1885762657)
    {
      if (mSelector != 1935762292)
      {
        goto LABEL_55;
      }

      if (a7 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v37 = 136315394;
          v38 = "ADS_Stream.cpp";
          v39 = 1024;
          v40 = 180;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Stream_GetPropertyData: not enough space for the return value of kAudioStreamPropertyIsActive for the stream", &v37, 0x12u);
        }

        v30 = __cxa_allocate_exception(0x10uLL);
        *v30 = off_1F5991DD8;
        v30[2] = 561211770;
      }

      v12 = this + 200;
      this = (*(*(this + 200) + 16))(this + 200);
      *a9 = *(v12 - 88);
      *a8 = 4;
      if (!this)
      {
        goto LABEL_54;
      }

LABEL_23:
      this = (*(*v12 + 24))(v12);
LABEL_54:
      v25 = *MEMORY[0x1E69E9840];
      return this;
    }

LABEL_31:
    v15 = 0;
    if (a7 >= 0x38)
    {
      v16 = *(this + 168);
      if (v16 != (this + 176))
      {
        v17 = 0;
        do
        {
          v18 = a9 + 56 * v17;
          v19 = *(v16 + 2);
          v20 = *(v16 + 3);
          v21 = *(v16 + 4);
          *(v18 + 6) = v16[10];
          *(v18 + 1) = v20;
          *(v18 + 2) = v21;
          *v18 = v19;
          v22 = v16[1];
          v23 = v16;
          if (v22)
          {
            do
            {
              v16 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v16 = v23[2];
              v24 = *v16 == v23;
              v23 = v16;
            }

            while (!v24);
          }

          ++v17;
        }

        while (v17 < a7 / 0x38uLL && v16 != (this + 176));
        v15 = 56 * v17;
      }
    }

    *a8 = v15;
    goto LABEL_54;
  }

  if (mSelector <= 1936092531)
  {
    if (mSelector == 1935894638)
    {
      if (a7 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v37 = 136315394;
          v38 = "ADS_Stream.cpp";
          v39 = 1024;
          v40 = 221;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Stream_GetPropertyData: not enough space for the return value of kAudioStreamPropertyStartingChannel for the stream", &v37, 0x12u);
        }

        v33 = __cxa_allocate_exception(0x10uLL);
        *v33 = off_1F5991DD8;
        v33[2] = 561211770;
      }

      v11 = *(this + 160);
      goto LABEL_53;
    }

    if (mSelector == 1935960434)
    {
      if (a7 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v37 = 136315394;
          v38 = "ADS_Stream.cpp";
          v39 = 1024;
          v40 = 202;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Stream_GetPropertyData: not enough space for the return value of kAudioStreamPropertyDirection for the stream", &v37, 0x12u);
        }

        v34 = __cxa_allocate_exception(0x10uLL);
        *v34 = off_1F5991DD8;
        v34[2] = 561211770;
      }

      v11 = *(this + 113);
      goto LABEL_53;
    }

    if (mSelector != 1936092513)
    {
      goto LABEL_55;
    }

    goto LABEL_31;
  }

  if (mSelector <= 1952542834)
  {
    if (mSelector != 1936092532)
    {
      if (mSelector == 1937007734)
      {
        if (a7 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v37 = 136315394;
            v38 = "ADS_Stream.cpp";
            v39 = 1024;
            v40 = 170;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Stream_GetPropertyData: not enough space for the return value of kAudioObjectPropertyOwner for the volume control", &v37, 0x12u);
          }

          v28 = __cxa_allocate_exception(0x10uLL);
          *v28 = off_1F5991DD8;
          v28[2] = 561211770;
        }

        v11 = *(this + 20);
LABEL_53:
        *a9 = v11;
        *a8 = 4;
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    goto LABEL_28;
  }

  if (mSelector == 1952542835)
  {
    if (a7 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v37 = 136315394;
        v38 = "ADS_Stream.cpp";
        v39 = 1024;
        v40 = 193;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Stream_GetPropertyData: not enough space for the return value of kAudioStreamPropertyIsReferenceStream for the stream", &v37, 0x12u);
      }

      v32 = __cxa_allocate_exception(0x10uLL);
      *v32 = off_1F5991DD8;
      v32[2] = 561211770;
    }

    v11 = *(this + 196);
    goto LABEL_53;
  }

  if (mSelector == 1952805485)
  {
    if (a7 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v37 = 136315394;
        v38 = "ADS_Stream.cpp";
        v39 = 1024;
        v40 = 211;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Stream_GetPropertyData: not enough space for the return value of kAudioStreamPropertyTerminalType for the stream", &v37, 0x12u);
      }

      v31 = __cxa_allocate_exception(0x10uLL);
      *v31 = off_1F5991DD8;
      v31[2] = 561211770;
    }

    v11 = *(this + 116);
    goto LABEL_53;
  }

LABEL_55:
  v26 = *MEMORY[0x1E69E9840];

  return ADS::BaseObject::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_1DE40B0A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ADS::Stream::GetPropertyDataSize(ADS::Stream *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6)
{
  mSelector = a4->mSelector;
  v7 = 4;
  if (a4->mSelector <= 1935960433)
  {
    if (mSelector > 1885762656)
    {
      if (mSelector != 1885762657)
      {
        if (mSelector != 1935762292 && mSelector != 1935894638)
        {
          return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
        }

        return v7;
      }

      return (56 * *(this + 46));
    }

    if (mSelector == 1819569763)
    {
      return v7;
    }

    v9 = 1885762592;
    goto LABEL_15;
  }

  if (mSelector > 1936092531)
  {
    if (mSelector == 1952805485 || mSelector == 1952542835)
    {
      return v7;
    }

    v9 = 1936092532;
LABEL_15:
    if (mSelector == v9)
    {
      return 40;
    }

    return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
  }

  if (mSelector == 1935960434)
  {
    return v7;
  }

  if (mSelector == 1936092513)
  {
    return (56 * *(this + 46));
  }

  return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
}

uint64_t ADS::Stream::IsPropertySettable(ADS::Stream *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  v4 = 0;
  mSelector = a4->mSelector;
  if (a4->mSelector > 1935960433)
  {
    if (mSelector <= 1936092531)
    {
      if (mSelector != 1935960434 && mSelector != 1936092513)
      {
        return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
      }

      return v4;
    }

    if (mSelector == 1952805485 || mSelector == 1952542835)
    {
      return v4;
    }

    v7 = 1936092532;
  }

  else
  {
    if (mSelector > 1885762656)
    {
      if (mSelector == 1885762657)
      {
        return v4;
      }

      if (mSelector != 1935762292)
      {
        if (mSelector != 1935894638)
        {
          return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
        }

        return v4;
      }

      return 1;
    }

    if (mSelector == 1819569763)
    {
      return v4;
    }

    v7 = 1885762592;
  }

  if (mSelector == v7)
  {
    return 1;
  }

  return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
}

uint64_t ADS::Stream::HasProperty(ADS::Stream *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  mSelector = a4->mSelector;
  if (a4->mSelector > 1935960433)
  {
    if (mSelector <= 1936092531)
    {
      v5 = mSelector == 1935960434;
      v6 = 1936092513;
    }

    else
    {
      v5 = mSelector == 1936092532 || mSelector == 1952542835;
      v6 = 1952805485;
    }
  }

  else if (mSelector <= 1885762656)
  {
    v5 = mSelector == 1819569763;
    v6 = 1885762592;
  }

  else
  {
    v5 = mSelector == 1885762657 || mSelector == 1935762292;
    v6 = 1935894638;
  }

  if (v5 || mSelector == v6)
  {
    return 1;
  }

  else
  {
    return ADS::BaseObject::HasProperty(this, a2, a3, a4);
  }
}

void ADS::Stream::~Stream(ADS::Stream *this)
{
  *this = &unk_1F596D630;
  CADeprecated::CAMutex::~CAMutex((this + 200));
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 22));
  ADS::BaseObject::~BaseObject(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596D630;
  CADeprecated::CAMutex::~CAMutex((this + 200));
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 22));

  ADS::BaseObject::~BaseObject(this);
}

uint64_t ADS::Stream::Stream(uint64_t a1, int a2, const AudioStreamRangedDescription *a3, void *a4, __int128 *a5, char a6, int a7, int a8, int a9, char a10)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = 0x616F626A61737472;
  *(a1 + 20) = a3;
  *(a1 + 24) = 850045863;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *a1 = &unk_1F596D630;
  *(a1 + 113) = a6;
  *(a1 + 116) = a7;
  v11 = *a5;
  v12 = a5[1];
  *(a1 + 152) = *(a5 + 4);
  *(a1 + 136) = v12;
  *(a1 + 120) = v11;
  *(a1 + 160) = a8;
  std::set<CAStreamRangedDescription,CAStreamRangedDescription_ReverseSort,std::allocator<CAStreamRangedDescription>>::set[abi:ne200100]((a1 + 168), a4, a3);
  *(a1 + 192) = a9;
  *(a1 + 196) = a10;
  CADeprecated::CAMutex::CAMutex((a1 + 200), "Stream State");
  return a1;
}

void sub_1DE40B4D4(_Unwind_Exception *a1)
{
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(v1 + 22));
  ADS::BaseObject::~BaseObject(v1);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3ADS6Stream16UpdateSampleRateEjd_block_invoke(uint64_t result)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  v5 = *"tmfsbolg";
  v6 = 1735159650;
  if (ADS::Simulator::sHost)
  {
    v2 = *(v1 + 8);
    v3 = *ADS::Simulator::sHost;
    pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
    result = v3(ADS::Simulator::sHost, v2, 2, &v5);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE40B5B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE40B584);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Graph::Timebase_Set::stop(AMCP::Graph::Timebase_Set *this)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = *(this + 40);
  v2 = *(this + 6);
  v3 = *(this + 5);
  if (v3 == v2)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "Timebase_Set.cpp";
      v24 = 1024;
      v25 = 104;
      v26 = 2080;
      v27 = "not (not m_state.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v21);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v13);
    std::logic_error::logic_error(&v14, &v13);
    v14.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v15, &v14);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = -1;
    v15.__vftable = &unk_1F5991430;
    v16 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v15);
    v28 = "Start_Stop_Result AMCP::Graph::Timebase_Set::stop() const";
    v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Timebase_Set.cpp";
    v30 = 104;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v12);
  }

  do
  {
    for (i = *(this + 2); i; i = *i)
    {
      (*(*i[2] + 112))(i[2], *v3);
    }

    ++v3;
  }

  while (v3 != v2);
  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE40B8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 129));
  _Unwind_Resume(a1);
}

std::string *AMCP::Graph::Timebase_Set::wait_for_time_to_start(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 3))
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v22;
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      v23 = *v22;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Timebase_Set.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 126;
      *&buf[18] = 2080;
      *&buf[20] = "not (not m_timebases.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to run an manifest with no timebases", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v33);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Attempt to run an manifest with no timebases", &__p);
    std::logic_error::logic_error(&v27, &__p);
    v27.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v28, &v27);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = -1;
    v28.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v28.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v28);
    v35 = "Start_Stop_Result AMCP::Graph::Timebase_Set::wait_for_time_to_start(const std::atomic_uint32_t &) const";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Timebase_Set.cpp";
    v37 = 126;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
  }

  v3 = (*(**(*(a1 + 2) + 16) + 200))(*(*(a1 + 2) + 16), a1, a2);
  v4 = v3;
  if (v3 == 1)
  {
    memset(&v28, 0, sizeof(v28));
    v5 = *(a1 + 2);
    if (v5)
    {
      v6 = 0;
      do
      {
        if (v6)
        {
          std::string::basic_string[abi:ne200100]<0>(&v25, ", ");
        }

        else
        {
          memset(&v25, 0, sizeof(v25));
        }

        (*(*v5[2] + 24))(&__p);
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

        v9 = std::string::append(&v25, p_p, size);
        v10 = *&v9->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v9->__r_.__value_.__l + 2);
        *buf = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        if (buf[23] >= 0)
        {
          v11 = buf;
        }

        else
        {
          v11 = *buf;
        }

        if (buf[23] >= 0)
        {
          v12 = buf[23];
        }

        else
        {
          v12 = *&buf[8];
        }

        v3 = std::string::append(&v28, v11, v12);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        v5 = *v5;
        --v6;
      }

      while (v5);
    }

    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = &v28;
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v28.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "Timebase_Set.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 139;
      *&buf[18] = 2080;
      *&buf[20] = v19;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Failure to start hardware: %s", buf, 0x1Cu);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1DE40BDF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Graph::Timebase_Set::for_each(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::__value_func[abi:ne200100](v8, a2);
  for (; a1; a1 = *a1)
  {
    v3 = a1[3];
    v6 = a1[2];
    v7 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v9 + 48))(v9, &v6);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::__value_func[abi:ne200100](v10, v8);
  std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::~__value_func[abi:ne200100](v10);
  result = std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::~__value_func[abi:ne200100](v8);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE40BFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void std::vector<AMCP::Utility::Dispatch_Queue::Event_Source>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *(v4 - 2);
        v4 -= 2;
        v6 = v7;
        if (v7)
        {
          dispatch_release(v6);
          *v4 = 0;
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(AMCP::Utility::Dispatch_Queue *this)
{
  dispatch_release(*(this + 39));
  if (*(this + 328) == 1)
  {
    v2 = *(this + 40);
    if (v2)
    {
      dispatch_release(v2);
    }
  }

  std::mutex::~mutex((this + 240));
  v5 = (this + 216);
  std::vector<AMCP::Utility::Dispatch_Queue::Event_Source>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::mutex::~mutex((this + 152));
  v5 = (this + 128);
  std::vector<AMCP::Utility::Dispatch_Queue::Event_Source>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::mutex::~mutex(this + 1);
  v5 = (this + 40);
  std::vector<AMCP::Utility::Dispatch_Queue::Event_Source>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (*this)
  {
    dispatch_release(*this);
  }
}

void AMCP::Utility::Dispatch_Queue::create_serial_with_workloop(uint64_t a1, char *label)
{
  inactive = dispatch_workloop_create_inactive(label);
  if (inactive)
  {
    dispatch_workloop_set_scheduler_priority();
    dispatch_activate(inactive);
  }

  v5 = dispatch_queue_create_with_target_V2(label, 0, inactive);
  AMCP::Utility::Dispatch_Queue::Dispatch_Queue(a1, v5);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 24);
  *(a1 + 24) = inactive;
  if (v6)
  {

    dispatch_release(v6);
  }
}

void AMCP::Utility::Dispatch_Queue::create_concurrent_with_workloop(uint64_t a1, char *label)
{
  inactive = dispatch_workloop_create_inactive(label);
  if (inactive)
  {
    dispatch_workloop_set_scheduler_priority();
    dispatch_activate(inactive);
  }

  v5 = dispatch_queue_create_with_target_V2(label, MEMORY[0x1E69E96A8], inactive);
  AMCP::Utility::Dispatch_Queue::Dispatch_Queue(a1, v5);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 24);
  *(a1 + 24) = inactive;
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = dispatch_group_create();
  if (*(a1 + 328) == 1)
  {
    v8 = *(a1 + 320);
    *(a1 + 320) = v7;
    if (v8)
    {

      dispatch_release(v8);
    }
  }

  else
  {
    *(a1 + 320) = v7;
    *(a1 + 328) = 1;
  }
}

void AMCP::Utility::Dispatch_Queue::after(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load((a1 + 32));
  if (v4)
  {
    atomic_store(1u, (a1 + 33));
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    v7 = v6;
    if (v6)
    {
      v8 = *(a1 + 8);
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  if (*(a1 + 328) == 1)
  {
    dispatch_group_enter(*(a1 + 320));
  }

  atomic_fetch_add((a1 + 304), 1uLL);
  v9 = dispatch_time(0, 500000);
  v10 = *a1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1174405120;
  v11[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5afterExU13block_pointerFvvE_block_invoke;
  v11[3] = &unk_1F596D710;
  v11[5] = a1;
  v11[6] = v8;
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11[4] = a2;
  dispatch_after(v9, v10, v11);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void ___ZNK4AMCP7Utility14Dispatch_Queue5afterExU13block_pointerFvvE_block_invoke(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[5];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[6];
      if (v6)
      {
        v7 = atomic_load((v6 + 32));
        if ((v7 & 1) == 0)
        {
          (*(a1[4] + 16))();
        }

        atomic_fetch_add((v3 + 304), 0xFFFFFFFFFFFFFFFFLL);
        if (*(v3 + 328) == 1)
        {
          v8 = *(v3 + 320);
          if (v8)
          {
            dispatch_retain(*(v3 + 320));
            dispatch_group_leave(v8);
            dispatch_release(v8);
          }

          else
          {
            dispatch_group_leave(0);
          }
        }

        dispatch_semaphore_signal(*(v3 + 312));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void __destroy_helper_block_e8_48c55_ZTSNSt3__18weak_ptrIKN4AMCP7Utility14Dispatch_QueueEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_e8_48c55_ZTSNSt3__18weak_ptrIKN4AMCP7Utility14Dispatch_QueueEEE(uint64_t result, uint64_t a2)
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

void AMCP::Utility::Dispatch_Queue::async(uint64_t a1, dispatch_block_t block)
{
  v2 = atomic_load((a1 + 32));
  if (v2)
  {
    atomic_store(1u, (a1 + 33));
  }

  if (*(a1 + 328) == 1)
  {
    dispatch_group_async(*(a1 + 320), *a1, block);
  }

  else
  {
    dispatch_async(*a1, block);
  }
}

void AMCP::Utility::Dispatch_Queue::flush_all_work(AMCP::Utility::Dispatch_Queue *this)
{
  if (*this)
  {
    atomic_store(0, this + 33);
    atomic_store(1u, this + 32);
    if (*(this + 328))
    {
      v2 = *(this + 40);

      dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v3 = atomic_load(this + 38);
      if (v3 >= 1)
      {
        do
        {
          dispatch_semaphore_wait(*(this + 39), 0xFFFFFFFFFFFFFFFFLL);
          v4 = atomic_load(this + 38);
        }

        while (v4 > 0);
      }

      v5 = *this;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___ZN10applesauce8dispatch2v19sync_implIZNK4AMCP7Utility14Dispatch_Queue14flush_all_workEvE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
      block[3] = &__block_descriptor_tmp_9_5468;
      block[4] = &v6;
      dispatch_sync(v5, block);
    }
  }
}

void ___ZN4AMCP7Utility14Dispatch_Queue26install_mach_port_receiverEjU13block_pointerFvvEbb_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!v1)
  {
    goto LABEL_24;
  }

  v2 = *(a1 + 36);
  v3 = *(a1 + 37);
  if (v2 & 1) != 0 || (v3)
  {
    goto LABEL_10;
  }

  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *v6;
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v7 = *v6;
  }

  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
LABEL_10:
    if (!v2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v21 = 136315394;
    v22 = "Dispatch_Queue.cpp";
    v23 = 1024;
    v24 = 176;
    _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d AMCP::Utility::Destroy_Port: not going to destroy anything this way", &v21, 0x12u);
    if (!v2)
    {
      goto LABEL_17;
    }
  }

  v8 = mach_port_deallocate(*MEMORY[0x1E69E9A60], v1);
  if (v8)
  {
    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_27;
    }

    v11 = *(v9 + 8);
    v12 = (v8 << 32) | 0xB8;
    v13 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v13 + 16) = 0;
    *(v13 + 20) = 16;
    *(v13 + 24) = "Dispatch_Queue.cpp";
    *(v13 + 32) = v12;
    *v13 = &unk_1F596D750;
    *(v13 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v11, v13);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

LABEL_17:
  if (!v3)
  {
    goto LABEL_24;
  }

  v14 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], v1, 1u, -1);
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*MEMORY[0x1E69E3C08])
  {
LABEL_27:
    __break(1u);
  }

  v17 = *(v15 + 8);
  v18 = (v14 << 32) | 0xC2;
  v19 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *(v19 + 16) = 0;
  *(v19 + 20) = 16;
  *(v19 + 24) = "Dispatch_Queue.cpp";
  *(v19 + 32) = v18;
  *v19 = &unk_1F596D7A8;
  *(v19 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v17, v19);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

LABEL_24:
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Utility::Destroy_Port(unsigned int,BOOL,BOOL)::{lambda(std::tuple<char const*,int,unsigned int> &)#2},std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d AMCP::Utility::Destroy_Port: deallocating the receive right failed, Error: 0x%X", &v11, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<AMCP::Utility::Destroy_Port(unsigned int,BOOL,BOOL)::{lambda(std::tuple<char const*,int,unsigned int> &)#2},std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Utility::Destroy_Port(unsigned int,BOOL,BOOL)::{lambda(std::tuple<char const*,int,unsigned int> &)#1},std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d AMCP::Utility::Destroy_Port: deallocating the send right failed, Error: 0x%X", &v11, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<AMCP::Utility::Destroy_Port(unsigned int,BOOL,BOOL)::{lambda(std::tuple<char const*,int,unsigned int> &)#1},std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Utility::Dispatch_Queue::remove_mach_port_receiver(AMCP::Utility::Dispatch_Queue *this, int a2)
{
  std::mutex::lock((this + 152));
  v4 = *(this + 16);
  v5 = *(this + 17);
  if (v4 != v5)
  {
    while (*(v4 + 8) != a2)
    {
      v4 += 16;
      if (v4 == v5)
      {
        goto LABEL_19;
      }
    }
  }

  if (v4 != v5)
  {
    if (*v4)
    {
      dispatch_source_cancel(*v4);
      v5 = *(this + 17);
    }

    if ((v4 + 16) != v5)
    {
      do
      {
        if (*v4)
        {
          dispatch_release(*v4);
        }

        v6 = *(v4 + 16);
        *v4 = v6;
        *(v4 + 8) = *(v4 + 24);
        if (v6)
        {
          dispatch_retain(v6);
        }

        v7 = v4 + 16;
        v8 = (v4 + 32);
        v4 += 16;
      }

      while (v8 != v5);
      v5 = *(this + 17);
      v4 = v7;
    }

    while (v5 != v4)
    {
      v10 = *(v5 - 2);
      v5 -= 2;
      v9 = v10;
      if (v10)
      {
        dispatch_release(v9);
        *v5 = 0;
      }
    }

    *(this + 17) = v4;
  }

LABEL_19:

  std::mutex::unlock((this + 152));
}

void HALS_PDPlugIn::ObjectPropertiesChanged(HALS_PDPlugIn *this, HALS_ObjectMap *a2, uint64_t a3, const AudioObjectPropertyAddress *a4, HALS_Client *a5)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZN13HALS_PDPlugIn23ObjectPropertiesChangedEjjPK26AudioObjectPropertyAddressP11HALS_Client_block_invoke;
  v15[3] = &unk_1E86742F0;
  v16 = a2;
  v15[4] = &v17;
  v15[5] = this;
  v10 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v10, v15);
  if (*(v18 + 24) == 1)
  {
    v11 = HALS_ObjectMap::CopyObjectByObjectID(a2);
    v13 = v11;
    if (v11)
    {
      if (a5)
      {
        v14 = *(a5 + 4);
      }

      else
      {
        v14 = 0;
      }

      HALS_Object::PropertiesChanged(this, *(v11 + 16), v14, a3, a4);
    }

    HALS_ObjectMap::ReleaseObject(v13, v12);
  }

  _Block_object_dispose(&v17, 8);
}

void sub_1DE40CE3C(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  HALS_ObjectMap::ReleaseObject(v17, a2);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN13HALS_PDPlugIn23ObjectPropertiesChangedEjjPK26AudioObjectPropertyAddressP11HALS_Client_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 560);
  v3 = *(v1 + 568);
  if (v2 != v3)
  {
    while (*v2 != *(result + 48))
    {
      if (++v2 == v3)
      {
        v2 = v3;
        break;
      }
    }
  }

  *(*(*(result + 32) + 8) + 24) = v2 != v3;
  return result;
}

void HALS_PDPlugIn::ObjectsPublishedAndDied(HALS_PDPlugIn *this, HALS_ObjectMap *a2, uint64_t a3, const unsigned int *a4, uint64_t a5, const unsigned int *a6, HALS_Client *a7)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = ___ZN13HALS_PDPlugIn23ObjectsPublishedAndDiedEjjPKjjS1_P11HALS_Client_block_invoke;
  v18[3] = &unk_1E86742C8;
  v18[4] = &v21;
  v18[5] = this;
  v19 = a5;
  v20 = a3;
  v18[6] = a6;
  v18[7] = a4;
  v13 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v13, v18);
  if (a2 == 1)
  {
    HALS_ObjectMap::RetainObject(this, v14);
    v15 = this;
  }

  else
  {
    v15 = HALS_ObjectMap::CopyObjectByObjectID(a2);
    if (!v15)
    {
      goto LABEL_5;
    }
  }

  (*(*v15 + 200))(v15, a3, a4, a5, a6);
LABEL_5:
  if (*(v22 + 24) == 1)
  {
    v17 = *(this + 4);
    *&v25.mSelector = 0x676C6F6264657623;
    v25.mElement = 0;
    HALS_Object::PropertiesChanged(this, v17, 0, 1, &v25);
  }

  HALS_ObjectMap::ReleaseObject(v15, v16);
  _Block_object_dispose(&v21, 8);
}

void sub_1DE40D054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN13HALS_PDPlugIn23ObjectsPublishedAndDiedEjjPKjjS1_P11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 64))
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 48) + 4 * v3);
      v5 = v2[76];
      v6 = v2[77];
      if (v5 != v6)
      {
        while (*v5 != v4)
        {
          v5 += 4;
          if (v5 == v6)
          {
            v5 = v2[77];
            break;
          }
        }
      }

      if (v6 != v5)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        v7 = v6 - (v5 + 4);
        if (v6 != v5 + 4)
        {
          memmove(v5, v5 + 4, v6 - (v5 + 4));
        }

        v2[77] = &v5[v7];
      }

      v8 = v2[73];
      v9 = v2[74];
      if (v8 != v9)
      {
        while (*v8 != v4)
        {
          v8 += 4;
          if (v8 == v9)
          {
            v8 = v2[74];
            break;
          }
        }
      }

      if (v9 != v8)
      {
        v10 = v9 - (v8 + 4);
        if (v9 != v8 + 4)
        {
          memmove(v8, v8 + 4, v9 - (v8 + 4));
        }

        v2[74] = &v8[v10];
      }

      v11 = v2[70];
      v12 = v2[71];
      if (v11 != v12)
      {
        while (*v11 != v4)
        {
          v11 += 4;
          if (v11 == v12)
          {
            v11 = v2[71];
            break;
          }
        }
      }

      if (v12 != v11)
      {
        v13 = v12 - (v11 + 4);
        if (v12 != v11 + 4)
        {
          memmove(v11, v11 + 4, v12 - (v11 + 4));
        }

        v2[71] = &v11[v13];
      }

      v14 = HALS_ObjectMap::CopyObjectByObjectID(v4);
      v15 = v14;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      HALS_ObjectMap::ObjectIsDead(v4);
      HALS_ObjectMap::ReleaseObject(v15, v16);
      ++v3;
    }

    while (v3 < *(a1 + 64));
  }

  v17 = *(a1 + 68);
  if (v17)
  {
    v18 = 0;
    while (1)
    {
      v19 = *(*(a1 + 56) + 4 * v18);
      v34 = *(*(a1 + 56) + 4 * v18);
      v20 = v2[73];
      v21 = v2[74];
      if (v20 != v21)
      {
        while (*v20 != v19)
        {
          v20 += 4;
          if (v20 == v21)
          {
            v20 = v2[74];
            break;
          }
        }
      }

      if (v21 == v20)
      {
        goto LABEL_56;
      }

      v22 = v21 - (v20 + 4);
      if (v21 != v20 + 4)
      {
        memmove(v20, v20 + 4, v21 - (v20 + 4));
      }

      v2[74] = &v20[v22];
      v23 = HALS_ObjectMap::CopyObjectByObjectID(v19);
      v25 = v23;
      if (v23)
      {
        break;
      }

LABEL_55:
      HALS_ObjectMap::ReleaseObject(v25, v24);
      v17 = *(a1 + 68);
LABEL_56:
      if (++v18 >= v17)
      {
        return;
      }
    }

    v26 = *(v23 + 20);
    if (v26 <= 1701078389)
    {
      if (v26 != 1633773415 && v26 != 1633969526)
      {
LABEL_58:
        v30 = *(v23 + 24);
        if (v26 == v30)
        {
          goto LABEL_59;
        }

        if (v30 <= 1701078389)
        {
          if (v30 != 1633773415 && v30 != 1633969526)
          {
LABEL_59:
            (**v23)(v23);
            goto LABEL_55;
          }
        }

        else if (v30 != 1701078390 && v30 != 1919182198 && v30 != 1701733488)
        {
          goto LABEL_59;
        }
      }
    }

    else if (v26 != 1701078390 && v26 != 1701733488 && v26 != 1919182198)
    {
      goto LABEL_58;
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    std::vector<unsigned int>::push_back[abi:ne200100]((v2 + 76), &v34);
    (**v25)(v25);
    HALS_Device::UpdateInternalIOContext(v25);
    goto LABEL_55;
  }
}

void HALS_PDPlugIn::CreateObject(HALS_PDPlugIn *this, HALS_Object *a2, HALS_ObjectMap *a3, HALS_Client *a4)
{
  if (a3 == 1)
  {
    HALS_ObjectMap::RetainObject(this, a2);
  }

  else
  {
    HALS_ObjectMap::CopyObjectByObjectID(a3);
  }

  if (a2 > 1701078389)
  {
    if (a2 != 1701078390 && a2 != 1919182198 && a2 != 1701733488)
    {
      goto LABEL_13;
    }
  }

  else if (a2 != 1633773415 && a2 != 1633969526)
  {
    if (a2 == 1634956402)
    {
      operator new();
    }

LABEL_13:
    if (HALB_Info::IsSubClass(a2, 1633907820))
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1DE40D784(_Unwind_Exception *a1)
{
  MEMORY[0x1E12C1730](v2, 0x10E1C4000EA2748);
  HALS_ObjectMap::ReleaseObject(v1, v4);
  _Unwind_Resume(a1);
}

void ___ZN13HALS_PDPlugIn12CreateObjectEjjP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::vector<unsigned int>::push_back[abi:ne200100](v2 + 560, (a1 + 40));

  std::vector<unsigned int>::push_back[abi:ne200100](v2 + 584, (a1 + 40));
}

void HALS_PDPlugIn::_CopyDeviceList(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 608);
  for (i = *(a1 + 616); v2 != i; ++v2)
  {
    v5 = HALS_ObjectMap::CopyObjectByObjectID(*v2);
    v7 = v5;
    if (v5)
    {
      HALS_ObjectMap::RetainObject(v5, v6);
      v9 = *(a2 + 8);
      v8 = *(a2 + 16);
      if (v9 >= v8)
      {
        v11 = (v9 - *a2) >> 3;
        if ((v11 + 1) >> 61)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - *a2;
        v13 = v12 >> 2;
        if (v12 >> 2 <= (v11 + 1))
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v14);
        }

        *(8 * v11) = v7;
        v10 = 8 * v11 + 8;
        v15 = *(a2 + 8) - *a2;
        v16 = (8 * v11 - v15);
        memcpy(v16, *a2, v15);
        v17 = *a2;
        *a2 = v16;
        *(a2 + 8) = v10;
        *(a2 + 16) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v9 = v7;
        v10 = (v9 + 1);
      }

      *(a2 + 8) = v10;
    }

    HALS_ObjectMap::ReleaseObject(v7, v6);
  }
}

uint64_t HALS_PDPlugIn::GetMIGDispatchQueue(HALS_PDPlugIn *this)
{
  return *(this + 44);
}

{
  return *(this + 44);
}

uint64_t HALS_PDPlugIn::GetCommandGate(HALS_PDPlugIn *this)
{
  return *(this + 42);
}

{
  return *(this + 42);
}

uint64_t HALS_PDPlugIn::_Deactivate(uint64_t (**this)(void))
{
  v14 = *MEMORY[0x1E69E9840];
  result = this[49]();
  if (result)
  {
    v5[0] = BYTE3(result);
    v5[1] = BYTE2(result);
    v5[2] = BYTE1(result);
    v4 = result;
    v5[3] = result;
    v5[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v7 = "HALS_PDPUCPlugIn.cpp";
      v8 = 1024;
      v9 = 118;
      v10 = 1024;
      v11 = v4;
      v12 = 2080;
      v13 = v5;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPUCPlugIn::Teardown: got an error from the plug-in, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v4;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void HALS_PDPlugIn::~HALS_PDPlugIn(HALS_PDPlugIn *this)
{
  HALS_PDPlugIn::~HALS_PDPlugIn(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596D800;
  v2 = *(this + 43);
  *(this + 42) = 0;
  *(this + 43) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 44);
  if (v3)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v3);
    MEMORY[0x1E12C1730]();
  }

  v4 = *(this + 76);
  if (v4)
  {
    *(this + 77) = v4;
    operator delete(v4);
  }

  v5 = *(this + 73);
  if (v5)
  {
    *(this + 74) = v5;
    operator delete(v5);
  }

  v6 = *(this + 70);
  if (v6)
  {
    *(this + 71) = v6;
    operator delete(v6);
  }

  HALB_CFBundle::~HALB_CFBundle((this + 360));
  v7 = *(this + 43);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *this = &unk_1F597A098;
  CACFString::~CACFString((this + 48));

  HALS_Object::~HALS_Object(this);
}

uint64_t HALS_PDPlugIn::Activate(HALS_PDPlugIn *this, HALS_Object *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  HALS_Object::Activate(this, a2);
  result = (*(this + 48))(this + 504);
  if (result)
  {
    v7[0] = BYTE3(result);
    v7[1] = BYTE2(result);
    v7[2] = BYTE1(result);
    v5 = result;
    v7[3] = result;
    v7[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v9 = "HALS_PDPUCPlugIn.cpp";
      v10 = 1024;
      v11 = 112;
      v12 = 1024;
      v13 = v5;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPUCPlugIn::Initialize: got an error from the plug-in, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v5;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void HALS_PDPlugIn::HALS_PDPlugIn(HALS_PDPlugIn *this, HALS_System *a2, const __CFURL *a3, uint64_t a4, HALS_Object *a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = HALS_DeviceManager::HALS_DeviceManager(this, a2, @"temporary", 5, a5);
  v7->isa = &unk_1F596D800;
  v7[10].data = 0;
  v7[10].length = 0;
  if (a3)
  {
    CFRetain(a3);
  }

  v53[0] = &unk_1F596D950;
  v53[1] = a3;
  *(this + 45) = &unk_1F5967B10;
  v8 = CFBundleCreate(0, a3);
  *(this + 46) = v8;
  *(this + 376) = 1;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 62) = 0;
  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_PDPUCPlugIn.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 48;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: failed to create the bundle", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  if (CFBundlePreflightExecutable(v8, 0))
  {
    v9 = *(this + 46);
    if (v9 && CFBundleLoadExecutableAndReturnError(v9, 0))
    {
      v10 = *(this + 46);
      if (v10)
      {
        FunctionPointerForName = CFBundleGetFunctionPointerForName(v10, @"PhysicalDevicePlugIn_Initialize");
        *(this + 48) = FunctionPointerForName;
        if (FunctionPointerForName)
        {
          v12 = *(this + 46);
          if (v12)
          {
            v13 = CFBundleGetFunctionPointerForName(v12, @"PhysicalDevicePlugIn_Teardown");
            *(this + 49) = v13;
            if (v13)
            {
              v14 = *(this + 46);
              if (v14)
              {
                v15 = CFBundleGetFunctionPointerForName(v14, @"PhysicalDevicePlugIn_ObjectHasProperty");
                *(this + 51) = v15;
                if (v15)
                {
                  v16 = *(this + 46);
                  if (v16)
                  {
                    v17 = CFBundleGetFunctionPointerForName(v16, @"PhysicalDevicePlugIn_ObjectIsPropertySettable");
                    *(this + 52) = v17;
                    if (v17)
                    {
                      v18 = *(this + 46);
                      if (v18)
                      {
                        v19 = CFBundleGetFunctionPointerForName(v18, @"PhysicalDevicePlugIn_ObjectGetPropertyDataSize");
                        *(this + 53) = v19;
                        if (v19)
                        {
                          v20 = *(this + 46);
                          if (v20)
                          {
                            v21 = CFBundleGetFunctionPointerForName(v20, @"PhysicalDevicePlugIn_ObjectGetPropertyData");
                            *(this + 54) = v21;
                            if (v21)
                            {
                              v22 = *(this + 46);
                              if (v22)
                              {
                                v23 = CFBundleGetFunctionPointerForName(v22, @"PhysicalDevicePlugIn_ObjectSetPropertyData");
                                *(this + 55) = v23;
                                if (v23)
                                {
                                  v24 = *(this + 46);
                                  if (v24)
                                  {
                                    v25 = CFBundleGetFunctionPointerForName(v24, @"PhysicalDevicePlugIn_GetZeroTimeStamp");
                                    *(this + 56) = v25;
                                    if (v25)
                                    {
                                      v26 = *(this + 46);
                                      if (v26)
                                      {
                                        v27 = CFBundleGetFunctionPointerForName(v26, @"PhysicalDevicePlugIn_BeginIOCycle");
                                        *(this + 57) = v27;
                                        if (v27)
                                        {
                                          v28 = *(this + 46);
                                          if (v28)
                                          {
                                            v29 = CFBundleGetFunctionPointerForName(v28, @"PhysicalDevicePlugIn_AcquireIOBufferForStream");
                                            *(this + 58) = v29;
                                            if (v29)
                                            {
                                              v30 = *(this + 46);
                                              if (v30)
                                              {
                                                v31 = CFBundleGetFunctionPointerForName(v30, @"PhysicalDevicePlugIn_ReadFromStream");
                                                *(this + 59) = v31;
                                                if (v31)
                                                {
                                                  v32 = *(this + 46);
                                                  if (v32)
                                                  {
                                                    v33 = CFBundleGetFunctionPointerForName(v32, @"PhysicalDevicePlugIn_WriteToStream");
                                                    *(this + 60) = v33;
                                                    if (v33)
                                                    {
                                                      v34 = *(this + 46);
                                                      if (v34)
                                                      {
                                                        v35 = CFBundleGetFunctionPointerForName(v34, @"PhysicalDevicePlugIn_ReleaseIOBufferForStream");
                                                        *(this + 61) = v35;
                                                        if (v35)
                                                        {
                                                          v36 = *(this + 46);
                                                          if (v36)
                                                          {
                                                            v37 = CFBundleGetFunctionPointerForName(v36, @"PhysicalDevicePlugIn_EndIOCycle");
                                                            *(this + 62) = v37;
                                                            if (v37)
                                                            {
                                                              v38 = *(this + 46);
                                                              if (v38)
                                                              {
                                                                v39 = CFBundleGetFunctionPointerForName(v38, @"PhysicalDevicePlugIn_PerformDeviceConfigChange");
                                                                *(this + 50) = v39;
                                                                if (v39)
                                                                {
                                                                  OS::CF::UntypedObject::~UntypedObject(v53);
                                                                  *(this + 63) = HALS_PDPlugIn::Host_ObjectPropertyChanged;
                                                                  *(this + 64) = HALS_PDPlugIn::Host_PhysicalDevicesCreated;
                                                                  *(this + 65) = HALS_PDPlugIn::Host_PhysicalDevicesDestroyed;
                                                                  *(this + 66) = HALS_PDPlugIn::Host_RequestDeviceConfigChange;
                                                                  *(this + 67) = this;
                                                                  *(this + 68) = *(this + 4);
                                                                  *(this + 69) = HALS_PDPlugIn::Host_ObjectsCreatedAndDestroyed;
                                                                  *(this + 35) = 0u;
                                                                  *(this + 36) = 0u;
                                                                  *(this + 37) = 0u;
                                                                  *(this + 38) = 0u;
                                                                  *(this + 78) = 0;
                                                                  v40 = *(this + 46);
                                                                  if (v40)
                                                                  {
                                                                    Identifier = CFBundleGetIdentifier(v40);
                                                                  }

                                                                  else
                                                                  {
                                                                    Identifier = 0;
                                                                  }

                                                                  *buf = &unk_1F5991188;
                                                                  *&buf[8] = Identifier;
                                                                  CACFString::operator=(this + 48, Identifier);
                                                                  v42 = OS::CF::String::AsCString(buf, this + 64, 256);
                                                                  MEMORY[0x1EEE9AC00](v42);
                                                                  snprintf(v51, 0x11FuLL, "com.apple.audio.manager.%s", this + 64);
                                                                  HALB_CommandGate::make(&v52, v43);
                                                                }
                                                              }

                                                              else
                                                              {
                                                                *(this + 50) = 0;
                                                              }

                                                              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                                                              {
                                                                goto LABEL_96;
                                                              }

                                                              *buf = 136315394;
                                                              *&buf[4] = "HALS_PDPUCPlugIn.cpp";
                                                              *&buf[12] = 1024;
                                                              *&buf[14] = 102;
                                                              v48 = MEMORY[0x1E69E9C10];
                                                              v49 = "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: Can't get a pointer to the PerformDeviceConfigChange routine";
                                                              goto LABEL_95;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            *(this + 62) = 0;
                                                          }

                                                          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                                                          {
                                                            *buf = 136315394;
                                                            *&buf[4] = "HALS_PDPUCPlugIn.cpp";
                                                            *&buf[12] = 1024;
                                                            *&buf[14] = 99;
                                                            v48 = MEMORY[0x1E69E9C10];
                                                            v49 = "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: Can't get a pointer to the EndIOCycle routine";
                                                            goto LABEL_95;
                                                          }

LABEL_96:
                                                          v47 = 2003329396;
LABEL_97:
                                                          v50 = __cxa_allocate_exception(0x10uLL);
                                                          *v50 = off_1F5991DD8;
                                                          v50[2] = v47;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        *(this + 61) = 0;
                                                      }

                                                      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                                                      {
                                                        goto LABEL_96;
                                                      }

                                                      *buf = 136315394;
                                                      *&buf[4] = "HALS_PDPUCPlugIn.cpp";
                                                      *&buf[12] = 1024;
                                                      *&buf[14] = 96;
                                                      v48 = MEMORY[0x1E69E9C10];
                                                      v49 = "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: Can't get a pointer to the ReleaseIOBufferForStream routine";
LABEL_95:
                                                      _os_log_impl(&dword_1DE1F9000, v48, OS_LOG_TYPE_ERROR, v49, buf, 0x12u);
                                                      goto LABEL_96;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    *(this + 60) = 0;
                                                  }

                                                  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                                                  {
                                                    goto LABEL_96;
                                                  }

                                                  *buf = 136315394;
                                                  *&buf[4] = "HALS_PDPUCPlugIn.cpp";
                                                  *&buf[12] = 1024;
                                                  *&buf[14] = 93;
                                                  v48 = MEMORY[0x1E69E9C10];
                                                  v49 = "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: Can't get a pointer to the WriteToStream routine";
                                                  goto LABEL_95;
                                                }
                                              }

                                              else
                                              {
                                                *(this + 59) = 0;
                                              }

                                              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                                              {
                                                goto LABEL_96;
                                              }

                                              *buf = 136315394;
                                              *&buf[4] = "HALS_PDPUCPlugIn.cpp";
                                              *&buf[12] = 1024;
                                              *&buf[14] = 90;
                                              v48 = MEMORY[0x1E69E9C10];
                                              v49 = "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: Can't get a pointer to the ReadFromStream routine";
                                              goto LABEL_95;
                                            }
                                          }

                                          else
                                          {
                                            *(this + 58) = 0;
                                          }

                                          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                                          {
                                            goto LABEL_96;
                                          }

                                          *buf = 136315394;
                                          *&buf[4] = "HALS_PDPUCPlugIn.cpp";
                                          *&buf[12] = 1024;
                                          *&buf[14] = 87;
                                          v48 = MEMORY[0x1E69E9C10];
                                          v49 = "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: Can't get a pointer to the AcquireIOBufferForStream routine";
                                          goto LABEL_95;
                                        }
                                      }

                                      else
                                      {
                                        *(this + 57) = 0;
                                      }

                                      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                                      {
                                        goto LABEL_96;
                                      }

                                      *buf = 136315394;
                                      *&buf[4] = "HALS_PDPUCPlugIn.cpp";
                                      *&buf[12] = 1024;
                                      *&buf[14] = 84;
                                      v48 = MEMORY[0x1E69E9C10];
                                      v49 = "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: Can't get a pointer to the BeginIOCycle routine";
                                      goto LABEL_95;
                                    }
                                  }

                                  else
                                  {
                                    *(this + 56) = 0;
                                  }

                                  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                                  {
                                    goto LABEL_96;
                                  }

                                  *buf = 136315394;
                                  *&buf[4] = "HALS_PDPUCPlugIn.cpp";
                                  *&buf[12] = 1024;
                                  *&buf[14] = 81;
                                  v48 = MEMORY[0x1E69E9C10];
                                  v49 = "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: Can't get a pointer to the GetZeroTimeStamp routine";
                                  goto LABEL_95;
                                }
                              }

                              else
                              {
                                *(this + 55) = 0;
                              }

                              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_96;
                              }

                              *buf = 136315394;
                              *&buf[4] = "HALS_PDPUCPlugIn.cpp";
                              *&buf[12] = 1024;
                              *&buf[14] = 78;
                              v48 = MEMORY[0x1E69E9C10];
                              v49 = "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: Can't get a pointer to the ObjectSetPropertyData routine";
                              goto LABEL_95;
                            }
                          }

                          else
                          {
                            *(this + 54) = 0;
                          }

                          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_96;
                          }

                          *buf = 136315394;
                          *&buf[4] = "HALS_PDPUCPlugIn.cpp";
                          *&buf[12] = 1024;
                          *&buf[14] = 75;
                          v48 = MEMORY[0x1E69E9C10];
                          v49 = "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: Can't get a pointer to the ObjectGetPropertyData routine";
                          goto LABEL_95;
                        }
                      }

                      else
                      {
                        *(this + 53) = 0;
                      }

                      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_96;
                      }

                      *buf = 136315394;
                      *&buf[4] = "HALS_PDPUCPlugIn.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 72;
                      v48 = MEMORY[0x1E69E9C10];
                      v49 = "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: Can't get a pointer to the ObjectGetPropertyDataSize routine";
                      goto LABEL_95;
                    }
                  }

                  else
                  {
                    *(this + 52) = 0;
                  }

                  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_96;
                  }

                  *buf = 136315394;
                  *&buf[4] = "HALS_PDPUCPlugIn.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 69;
                  v48 = MEMORY[0x1E69E9C10];
                  v49 = "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: Can't get a pointer to the ObjectIsPropertySettable routine";
                  goto LABEL_95;
                }
              }

              else
              {
                *(this + 51) = 0;
              }

              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_96;
              }

              *buf = 136315394;
              *&buf[4] = "HALS_PDPUCPlugIn.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 66;
              v48 = MEMORY[0x1E69E9C10];
              v49 = "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: Can't get a pointer to the ObjectHasProperty routine";
              goto LABEL_95;
            }
          }

          else
          {
            *(this + 49) = 0;
          }

          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_96;
          }

          *buf = 136315394;
          *&buf[4] = "HALS_PDPUCPlugIn.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 63;
          v48 = MEMORY[0x1E69E9C10];
          v49 = "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: Can't get a pointer to the Teardown routine";
          goto LABEL_95;
        }
      }

      else
      {
        *(this + 48) = 0;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_96;
      }

      *buf = 136315394;
      *&buf[4] = "HALS_PDPUCPlugIn.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 60;
      v48 = MEMORY[0x1E69E9C10];
      v49 = "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: Can't get a pointer to the Initialize routine";
      goto LABEL_95;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_PDPUCPlugIn.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 56;
      v44 = MEMORY[0x1E69E9C10];
      v45 = "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: loading the bundle's executable failed";
LABEL_48:
      _os_log_impl(&dword_1DE1F9000, v44, OS_LOG_TYPE_ERROR, v45, buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "HALS_PDPUCPlugIn.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 52;
    v44 = MEMORY[0x1E69E9C10];
    v45 = "%25s:%-5d  HALS_PDPUCPlugIn::HALS_PDPUCPlugIn: preflighting the bundle failed";
    goto LABEL_48;
  }

  v47 = 1852797029;
  goto LABEL_97;
}

void sub_1DE40E944(_Unwind_Exception *a1)
{
  v4 = v1[76];
  if (v4)
  {
    v1[77] = v4;
    operator delete(v4);
  }

  v5 = v1 + 70;
  v6 = v1[73];
  if (v6)
  {
    v1[74] = v6;
    operator delete(v6);
  }

  v7 = *v5;
  if (*v5)
  {
    v1[71] = v7;
    operator delete(v7);
  }

  HALB_CFBundle::~HALB_CFBundle(v2);
  v8 = v1[43];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  HALS_DeviceManager::~HALS_DeviceManager(v1);
  _Unwind_Resume(a1);
}

uint64_t HALS_PDPlugIn::Host_ObjectsCreatedAndDestroyed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v11 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 40));
  v12 = v11;
  if (!v11)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "HALS_PDPlugIn.cpp";
      v19 = 1024;
      v20 = 586;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPlugIn::Host_ObjectsCreatedAndDestroyed: no plug-in", &v17, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  (*(*v11 + 280))(v11, a2, a3, a4, a5, a6, 0);
  HALS_ObjectMap::ReleaseObject(v12, v13);
  v14 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE40EB90(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE40EBA8(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE40EAA4);
  }

  JUMPOUT(0x1DE40EB98);
}

uint64_t HALS_PDPlugIn::Host_RequestDeviceConfigChange(uint64_t a1, HALS_ObjectMap *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 40));
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *block = 136315394;
      *&block[4] = "HALS_PDPlugIn.cpp";
      *&block[12] = 1024;
      *&block[14] = 556;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPlugIn::Host_RequestDeviceConfigChange: no plug-in", block, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v6 = HALS_ObjectMap::CopyObjectByObjectID(a2);
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *block = 136315394;
      *&block[4] = "HALS_PDPlugIn.cpp";
      *&block[12] = 1024;
      *&block[14] = 560;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPlugIn::Host_RequestDeviceConfigChange: no device", block, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    *v14 = off_1F5991DD8;
    v14[2] = 560947818;
  }

  kdebug_trace();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  *block = MEMORY[0x1E69E9820];
  *&block[8] = 0x40000000;
  *&block[16] = ___ZN14HALS_PDPDevice32HandlePlugIn_RequestConfigChangeEPv_block_invoke;
  v20 = &unk_1E8674028;
  v21 = &v15;
  v22 = v6;
  v23 = a3;
  v7 = atomic_load((v6 + 1528));
  if (v7)
  {
    atomic_store(1u, (v6 + 1529));
  }

  dispatch_sync(*(v6 + 1496), block);
  kdebug_trace();
  v8 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  HALS_ObjectMap::ReleaseObject(v6, v9);
  HALS_ObjectMap::ReleaseObject(v5, v10);
  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE40EED0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE40EEEC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    _Block_object_dispose(&a9, 8);
    HALS_ObjectMap::ReleaseObject(v10, v13);
    HALS_ObjectMap::ReleaseObject(v9, v14);
    v15 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v16 = v15[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE40ED34);
  }

  JUMPOUT(0x1DE40EEDCLL);
}

uint64_t HALS_PDPlugIn::Host_PhysicalDevicesDestroyed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 40));
  v6 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "HALS_PDPlugIn.cpp";
      v13 = 1024;
      v14 = 538;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPlugIn::Host_PhysicalDevicesDestroyed: no plug-in", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  (*(*v5 + 280))(v5, 1, 0, 0, a2, a3, 0);
  HALS_ObjectMap::ReleaseObject(v6, v7);
  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE40F0F8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE40F110(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE40F010);
  }

  JUMPOUT(0x1DE40F100);
}

uint64_t HALS_PDPlugIn::Host_PhysicalDevicesCreated(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 40));
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "HALS_PDPlugIn.cpp";
      v27 = 1024;
      v28 = 462;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPlugIn::Host_PhysicalDevicesCreated: no plug-in", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  BYTE1(buf.mElement) = 0;
  HIWORD(buf.mElement) = 0;
  strcpy(&buf, "#mtsbolg");
  if (a2)
  {
    v6 = a2;
    v7 = a3;
    do
    {
      PropertyDataSize = HALS_PDPUCPlugIn::ObjectGetPropertyDataSize(v5[53], *v7, &buf, 0, 0);
      v9 = MEMORY[0x1EEE9AC00]();
      v11 = &v24[-v10];
      v25 = 4 * v9;
      HALS_PDPUCPlugIn::ObjectGetPropertyData(v5[54], *v7, &buf, 0, 0, &v25, &v24[-v10]);
      (*(*v5 + 35))(v5, *v7, PropertyDataSize, v11, 0, 0, 0);
      if (!PropertyDataSize)
      {
        strcpy(&buf, "#mtstpni");
        BYTE1(buf.mElement) = 0;
        HIWORD(buf.mElement) = 0;
        v12 = HALS_PDPUCPlugIn::ObjectGetPropertyDataSize(v5[53], *v7, &buf, 0, 0);
        v13 = MEMORY[0x1EEE9AC00]();
        v15 = &v24[-v14];
        v25 = 4 * v13;
        HALS_PDPUCPlugIn::ObjectGetPropertyData(v5[54], *v7, &buf, 0, 0, &v25, &v24[-v14]);
        (*(*v5 + 35))(v5, *v7, v12, v15, 0, 0, 0);
        strcpy(&buf, "#mtsptuo");
        BYTE1(buf.mElement) = 0;
        HIWORD(buf.mElement) = 0;
        v16 = HALS_PDPUCPlugIn::ObjectGetPropertyDataSize(v5[53], *v7, &buf, 0, 0);
        v17 = MEMORY[0x1EEE9AC00]();
        v19 = &v24[-v18];
        v25 = 4 * v17;
        HALS_PDPUCPlugIn::ObjectGetPropertyData(v5[54], *v7, &buf, 0, 0, &v25, &v24[-v18]);
        (*(*v5 + 35))(v5, *v7, v16, v19, 0, 0, 0);
      }

      ++v7;
      --v6;
    }

    while (v6);
  }

  (*(*v5 + 35))(v5, 1, a2, a3, 0, 0, 0);
  HALS_ObjectMap::ReleaseObject(v5, v20);
  v21 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE40F560(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE40F578(void *a1, HALS_Object *a2)
{
  if (a2)
  {
    v4 = a2;
    HALS_ObjectMap::ReleaseObject(v2, a2);
    v5 = __cxa_begin_catch(a1);
    if (v4 == 2)
    {
      v6 = v5[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE40F468);
  }

  JUMPOUT(0x1DE40F568);
}

uint64_t HALS_PDPlugIn::Host_ObjectPropertyChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 40));
  v8 = v7;
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "HALS_PDPlugIn.cpp";
      v15 = 1024;
      v16 = 444;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPlugIn::Host_ObjectPropertyChanged: no plug-in", &v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  (*(*v7 + 288))(v7, a2, a3, a4, 0);
  HALS_ObjectMap::ReleaseObject(v8, v9);
  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE40F764(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE40F77C(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE40F67CLL);
  }

  JUMPOUT(0x1DE40F76CLL);
}

void OS::CF::URL::~URL(OS::CF::URL *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x1E12C1730);
}

OS::CF::MutableArray *OS::CF::MutableArray::MutableArray(OS::CF::MutableArray *this)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  *this = &unk_1F5987290;
  *(this + 1) = Mutable;
  return this;
}

void OS::CF::MutableArray::AppendValue<OS::CF::String>(__CFArray *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      CFArrayAppendValue(a1, a2);
    }
  }
}

const __CFArray *OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::String>(const __CFArray *result, uint64_t a2, CFIndex a3)
{
  *result = &unk_1F5991188;
  *(result + 1) = 0;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = result;
    result = *(a2 + 8);
    if (result)
    {
      result = CFArrayGetCount(result);
      if (result > a3)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 8), a3);
        v7 = ValueAtIndex;
        v8 = ValueAtIndex ? CFGetTypeID(ValueAtIndex) : 0;
        result = CFStringGetTypeID();
        if (v8 == result)
        {
          if (v7)
          {
            CFRetain(v7);
            v9 = v4;
            v10 = v7;
          }

          else
          {
            v9 = v4;
            v10 = 0;
          }

          return OS::CF::UntypedObject::operator=(v9, v10);
        }
      }
    }
  }

  return result;
}

void OS::CF::MutableArray::~MutableArray(OS::CF::MutableArray *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t Resampler2::SetPrimeMethod(uint64_t this, int a2)
{
  if (*(this + 108) == 1818848869)
  {
    *(this + 64) = 1;
  }

  else
  {
    *(this + 112) = a2;
    if (a2)
    {
      if (a2 == 2)
      {
        a2 = *(*(this + 48) + 12) - 1;
      }

      else
      {
        a2 = *(*(this + 48) + 20);
      }
    }

    *(this + 64) = a2;
    *(this + 184) = 0;
    *(this + 192) = 1;
    v2 = *(this + 136);
    *(this + 152) = v2;
    if (v2 != 0.0)
    {
      *(this + 125) = 0;
      if (*(this + 256))
      {
        v3 = Resampler2::ConvertSIMD<Resampler2::RampedRate>;
      }

      else
      {
        v3 = Resampler2::ConvertSIMD<Resampler2::FixedRate>;
      }

      v4 = Resampler2::ConvertScalar<Resampler2::FixedRate>;
      if (*(this + 256))
      {
        v4 = Resampler2::ConvertScalar<Resampler2::RampedRate>;
      }

      if (*(this + 120) > 0)
      {
        v4 = v3;
      }

      *this = v4;
      *(this + 8) = 0;
    }
  }

  return this;
}

double Resampler2::ConvertSIMD_SmallIntegerRatio(Resampler2 *this, float *a2, float *a3, int a4, int a5)
{
  v8 = a2;
  v96 = *MEMORY[0x1E69E9840];
  v10 = *(this + 6);
  v11 = *(this + 27);
  if (v11 == 1818848869)
  {
    v12 = 2;
    if (!a4)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v12 = *(v10 + 12);
    if (!a4)
    {
      goto LABEL_38;
    }
  }

  v13 = *(v10 + 16);
  v15 = *(this + 24);
  v14 = *(this + 25);
  v16 = *(this + 17) * v13;
  if (v15 + v14 * a4 <= v16)
  {
    v17 = *v10;
    v18 = v14 / v13;
    v19 = v14 % v13;
    v20 = v15 / v13;
    v21 = v15 % v13;
    if (v11 == 1650553971)
    {
      v22 = *(this + 9);
      v23 = (4 * v12) & 0x3FFFFFFF0;
      if (a3)
      {
        v24 = *(this + 10);
        v25 = a4;
        do
        {
          v26 = v17 + 4 * v21 * v12;
          v27 = (v22 + 4 * v20);
          v28 = (v24 + 4 * v20);
          v29 = *(v26 + 16);
          v30 = vmulq_f32(v27[1], v29);
          v31 = vmulq_f32(*v27, *v26);
          v32 = vmulq_f32(v28[1], v29);
          v33 = vmulq_f32(*v28, *v26);
          v34 = *(v26 + 32);
          v35 = *(v26 + 48);
          v36 = v28[2];
          v37 = v28[3];
          v38 = v27[2];
          v39 = v27[3];
          v40 = 0uLL;
          if (v23 == 64)
          {
            v41 = 0uLL;
            v42 = 0uLL;
            v43 = 0uLL;
          }

          else
          {
            v44 = (v26 + v23);
            v45 = (v26 + 64);
            v46 = v28 + 4;
            v47 = v27 + 4;
            v42 = 0uLL;
            v43 = 0uLL;
            v41 = 0uLL;
            do
            {
              v41 = vaddq_f64(v41, vaddq_f64(vcvt_hight_f64_f32(v30), vcvt_hight_f64_f32(v31)));
              v40 = vaddq_f64(v40, vaddq_f64(vcvtq_f64_f32(*v30.f32), vcvtq_f64_f32(*v31.f32)));
              v48 = vaddq_f64(vcvtq_f64_f32(*v32.f32), vcvtq_f64_f32(*v33.f32));
              v43 = vaddq_f64(v43, vaddq_f64(vcvt_hight_f64_f32(v32), vcvt_hight_f64_f32(v33)));
              v31 = vmulq_f32(v38, v34);
              v30 = vmulq_f32(v39, v35);
              v33 = vmulq_f32(v36, v34);
              v32 = vmulq_f32(v37, v35);
              v38 = *v47;
              v39 = v47[1];
              v47 += 2;
              v36 = *v46;
              v37 = v46[1];
              v46 += 2;
              v34 = *v45;
              v35 = v45[1];
              v42 = vaddq_f64(v42, v48);
              v45 += 2;
            }

            while (v45 != v44);
          }

          v49 = vmulq_f32(v35, v39);
          v50 = vmulq_f32(v34, v38);
          v51 = vmulq_f32(v35, v37);
          v52 = vmulq_f32(v34, v36);
          v53 = vaddq_f64(vaddq_f64(v43, vaddq_f64(vcvt_hight_f64_f32(v32), vcvt_hight_f64_f32(v33))), vaddq_f64(vcvt_hight_f64_f32(v51), vcvt_hight_f64_f32(v52)));
          v54 = vaddq_f64(vaddq_f64(v42, vaddq_f64(vcvtq_f64_f32(*v32.f32), vcvtq_f64_f32(*v33.f32))), vaddq_f64(vcvtq_f64_f32(*v51.f32), vcvtq_f64_f32(*v52.f32)));
          v51.f32[0] = vaddvq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v40, vaddq_f64(vcvtq_f64_f32(*v30.f32), vcvtq_f64_f32(*v31.f32))), vaddq_f64(vcvtq_f64_f32(*v49.f32), vcvtq_f64_f32(*v50.f32))), vaddq_f64(vaddq_f64(v41, vaddq_f64(vcvt_hight_f64_f32(v30), vcvt_hight_f64_f32(v31))), vaddq_f64(vcvt_hight_f64_f32(v49), vcvt_hight_f64_f32(v50)))));
          *v8 = v51.f32[0];
          *v54.f64 = vaddvq_f64(vaddq_f64(v54, v53));
          *a3 = *v54.f64;
          v8 += a5;
          a3 += a5;
          v20 += v18;
          v55 = v21 + v19;
          if (v21 + v19 < v13)
          {
            v56 = 0;
          }

          else
          {
            v56 = v13;
          }

          if (v55 >= v13)
          {
            ++v20;
          }

          v21 = v55 - v56;
          --v25;
        }

        while (v25);
      }

      else
      {
        v57 = a4;
        do
        {
          v58 = v17 + 4 * v21 * v12;
          v59 = (v22 + 4 * v20);
          v60 = vmulq_f32(v59[1], *(v58 + 16));
          v61 = vmulq_f32(*v59, *v58);
          v62 = *(v58 + 32);
          v63 = *(v58 + 48);
          v64 = v59[2];
          v65 = v59[3];
          v66 = 0uLL;
          if (v23 == 64)
          {
            v67 = 0uLL;
          }

          else
          {
            v68 = (v58 + v23);
            v69 = (v58 + 64);
            v70 = v59 + 4;
            v67 = 0uLL;
            do
            {
              v67 = vaddq_f64(v67, vaddq_f64(vcvt_hight_f64_f32(v60), vcvt_hight_f64_f32(v61)));
              v66 = vaddq_f64(v66, vaddq_f64(vcvtq_f64_f32(*v60.f32), vcvtq_f64_f32(*v61.f32)));
              v61 = vmulq_f32(v64, v62);
              v60 = vmulq_f32(v65, v63);
              v64 = *v70;
              v65 = v70[1];
              v70 += 2;
              v62 = *v69;
              v63 = v69[1];
              v69 += 2;
            }

            while (v69 != v68);
          }

          v71 = vmulq_f32(v63, v65);
          v72 = vmulq_f32(v62, v64);
          v72.f32[0] = vaddvq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v66, vaddq_f64(vcvtq_f64_f32(*v60.f32), vcvtq_f64_f32(*v61.f32))), vaddq_f64(vcvtq_f64_f32(*v71.f32), vcvtq_f64_f32(*v72.f32))), vaddq_f64(vaddq_f64(v67, vaddq_f64(vcvt_hight_f64_f32(v60), vcvt_hight_f64_f32(v61))), vaddq_f64(vcvt_hight_f64_f32(v71), vcvt_hight_f64_f32(v72)))));
          *v8 = v72.f32[0];
          v8 += a5;
          v20 += v18;
          v73 = v21 + v19;
          if (v21 + v19 < v13)
          {
            v74 = 0;
          }

          else
          {
            v74 = v13;
          }

          if (v73 >= v13)
          {
            ++v20;
          }

          v21 = v73 - v74;
          --v57;
        }

        while (v57);
      }
    }

    else if (a3)
    {
      StereoMultiCoefsSRC_Neon((*(this + 9) + 4 * v20), (*(this + 10) + 4 * v20), v17, a2, a3, a4, a5, v18 | (v19 << 16), v21, v13, v12);
    }

    else if ((v12 & 3) == 0)
    {
      MonoMultiCoefsSRC_Neon((*(this + 9) + 4 * v20), v17, a2, a4, a5, v18 | (v19 << 16), v21, v13, v12);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 136317186;
    v79 = "Resampler2.cpp";
    v80 = 1024;
    v81 = 2300;
    v82 = 2080;
    v83 = "ConvertSIMD_SmallIntegerRatio";
    v84 = 1024;
    v85 = 2300;
    v86 = 1024;
    v87 = v16;
    v88 = 1024;
    v89 = v15;
    v90 = 1024;
    v91 = v15 + v13 * a4;
    v92 = 1024;
    v93 = v14;
    v94 = 1024;
    v95 = v13;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%25s:%-5d CADSPUtility:%s:%d: input buffer ticks %u but would read from %u to %u (tick rate %u, offsets %u)!", buf, 0x40u);
  }

LABEL_38:
  v75 = *(this + 24) + *(this + 25) * a4;
  *(this + 24) = v75;
  result = *(this + 18) * v75;
  *(this + 19) = result;
  v77 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE40FF50(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t Resampler2::ConvertLinear(uint64_t this, float *a2, float *a3, int a4, unsigned int a5)
{
  v5 = *(this + 152);
  v6 = *(this + 160);
  v7 = *(this + 72) + 4 * v5;
  if (a3)
  {
    if (a4)
    {
      v8 = 0;
      v9 = *(this + 80) + 4 * v5;
      do
      {
        v10 = *(v7 + 4 * v5);
        v11 = *(v9 + 4 * v5);
        v12 = 4 * v5 + 4;
        v13 = *(v9 + v12);
        v14 = v5 - v5;
        a2[v8] = v10 + (v14 * (*(v7 + v12) - v10));
        a3[v8] = v11 + (v14 * (v13 - v11));
        v5 = v6 + v5;
        v8 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else
  {
    for (; a4; --a4)
    {
      v15 = v5 - v5;
      *a2 = *(v7 + 4 * v5) + (v15 * (*(v7 + 4 * v5 + 4) - *(v7 + 4 * v5)));
      v5 = v6 + v5;
      a2 += a5;
    }
  }

  *(this + 128) = *(this + 128) + v5;
  *(this + 152) = v5;
  return this;
}

uint64_t Resampler2::ConvertScalar<Resampler2::FixedRate>(uint64_t result, float *a2, _DWORD *a3, int a4, int a5)
{
  v5 = *(result + 48);
  if (*(result + 108) == 1818848869)
  {
    v6 = 2;
  }

  else
  {
    v6 = *(v5 + 3);
  }

  v7 = *(result + 72);
  v8 = *(result + 152);
  v9 = *(result + 160);
  v10 = *(v5 + 4);
  if (a3)
  {
    if (a4 >= 1)
    {
      v11 = 0;
      v12 = *(result + 80);
      v13 = *v5;
      v14 = a5;
      do
      {
        v15 = (v8 - v8) * v10;
        v16 = (v13 + 4 * v6 * v15);
        v17 = &v16[v6];
        v18 = (v7 + 4 * v8);
        v19 = (v12 + 4 * v8);
        if (v6 < 32)
        {
          v25 = 0.0;
          v24 = 0.0;
          v23 = 0.0;
          v22 = v6;
          v21 = 0.0;
        }

        else
        {
          v20 = 0;
          v21 = 0.0;
          v22 = v6;
          v23 = 0.0;
          v24 = 0.0;
          v25 = 0.0;
          do
          {
            v26 = v18[v20];
            v27 = v18[v20 + 1];
            v28 = v16[v20];
            v29 = v16[v20 + 1];
            v30 = v21 + (v26 * v28);
            v31 = v17[v20];
            v32 = v17[v20 + 1];
            v33 = v25 + (v26 * v31);
            v34 = v19[v20];
            v35 = v19[v20 + 1];
            v36 = v30 + (v27 * v29);
            v37 = v33 + (v27 * v32);
            v38 = (v24 + (v34 * v28)) + (v35 * v29);
            v39 = (v23 + (v34 * v31)) + (v35 * v32);
            v40 = v18[v20 + 2];
            v41 = v18[v20 + 3];
            v42 = v16[v20 + 2];
            v43 = v16[v20 + 3];
            v44 = v17[v20 + 2];
            v45 = v17[v20 + 3];
            v46 = v19[v20 + 2];
            v47 = v19[v20 + 3];
            v48 = (v36 + (v40 * v42)) + (v41 * v43);
            v49 = (v37 + (v40 * v44)) + (v41 * v45);
            v50 = (v38 + (v46 * v42)) + (v47 * v43);
            v51 = (v39 + (v46 * v44)) + (v47 * v45);
            v52 = v18[v20 + 4];
            v53 = v18[v20 + 5];
            v54 = v16[v20 + 4];
            v55 = v16[v20 + 5];
            v56 = v17[v20 + 4];
            v57 = v17[v20 + 5];
            v58 = v48 + (v52 * v54);
            v59 = v49 + (v52 * v56);
            v60 = v19[v20 + 4];
            v61 = v19[v20 + 5];
            v62 = v58 + (v53 * v55);
            v63 = v59 + (v53 * v57);
            v64 = (v50 + (v60 * v54)) + (v61 * v55);
            v65 = (v51 + (v60 * v56)) + (v61 * v57);
            v66 = v18[v20 + 6];
            v67 = v18[v20 + 7];
            v68 = v16[v20 + 6];
            v69 = v16[v20 + 7];
            v70 = v62 + (v66 * v68);
            v71 = v17[v20 + 6];
            v72 = v17[v20 + 7];
            v73 = v63 + (v66 * v71);
            v74 = v19[v20 + 6];
            v75 = v19[v20 + 7];
            v76 = v70 + (v67 * v69);
            v77 = v73 + (v67 * v72);
            v78 = (v64 + (v74 * v68)) + (v75 * v69);
            v79 = (v65 + (v74 * v71)) + (v75 * v72);
            v80 = v18[v20 + 8];
            v81 = v18[v20 + 9];
            v82 = v16[v20 + 8];
            v83 = v16[v20 + 9];
            v84 = v17[v20 + 8];
            v85 = v17[v20 + 9];
            v86 = v19[v20 + 8];
            v87 = v19[v20 + 9];
            v88 = (v76 + (v80 * v82)) + (v81 * v83);
            v89 = (v77 + (v80 * v84)) + (v81 * v85);
            v90 = (v78 + (v86 * v82)) + (v87 * v83);
            v91 = (v79 + (v86 * v84)) + (v87 * v85);
            v92 = v18[v20 + 10];
            v93 = v18[v20 + 11];
            v94 = v16[v20 + 10];
            v95 = v16[v20 + 11];
            v96 = v17[v20 + 10];
            v97 = v17[v20 + 11];
            v98 = v88 + (v92 * v94);
            v99 = v89 + (v92 * v96);
            v100 = v19[v20 + 10];
            v101 = v19[v20 + 11];
            v102 = v98 + (v93 * v95);
            v103 = v99 + (v93 * v97);
            v104 = (v90 + (v100 * v94)) + (v101 * v95);
            v105 = (v91 + (v100 * v96)) + (v101 * v97);
            v106 = v18[v20 + 12];
            v107 = v18[v20 + 13];
            v108 = v16[v20 + 12];
            v109 = v16[v20 + 13];
            v110 = v102 + (v106 * v108);
            v111 = v17[v20 + 12];
            v112 = v17[v20 + 13];
            v113 = v103 + (v106 * v111);
            v114 = v19[v20 + 12];
            v115 = v19[v20 + 13];
            v116 = v110 + (v107 * v109);
            v117 = v113 + (v107 * v112);
            v118 = (v104 + (v114 * v108)) + (v115 * v109);
            v119 = (v105 + (v114 * v111)) + (v115 * v112);
            v120 = v18[v20 + 14];
            v121 = v18[v20 + 15];
            v122 = v16[v20 + 14];
            v123 = v16[v20 + 15];
            v124 = v17[v20 + 14];
            v125 = v17[v20 + 15];
            v126 = v19[v20 + 14];
            v127 = v19[v20 + 15];
            v128 = (v116 + (v120 * v122)) + (v121 * v123);
            v129 = (v117 + (v120 * v124)) + (v121 * v125);
            v130 = (v118 + (v126 * v122)) + (v127 * v123);
            v131 = (v119 + (v126 * v124)) + (v127 * v125);
            v132 = v18[v20 + 16];
            v133 = v18[v20 + 17];
            v134 = v16[v20 + 16];
            v135 = v16[v20 + 17];
            v136 = v17[v20 + 16];
            v137 = v17[v20 + 17];
            v138 = v128 + (v132 * v134);
            v139 = v129 + (v132 * v136);
            v140 = v19[v20 + 16];
            v141 = v19[v20 + 17];
            v142 = v138 + (v133 * v135);
            v143 = v139 + (v133 * v137);
            v144 = (v130 + (v140 * v134)) + (v141 * v135);
            v145 = (v131 + (v140 * v136)) + (v141 * v137);
            v146 = v18[v20 + 18];
            v147 = v18[v20 + 19];
            v148 = v16[v20 + 18];
            v149 = v16[v20 + 19];
            v150 = v142 + (v146 * v148);
            v151 = v17[v20 + 18];
            v152 = v17[v20 + 19];
            v153 = v143 + (v146 * v151);
            v154 = v19[v20 + 18];
            v155 = v19[v20 + 19];
            v156 = v150 + (v147 * v149);
            v157 = v153 + (v147 * v152);
            v158 = (v144 + (v154 * v148)) + (v155 * v149);
            v159 = (v145 + (v154 * v151)) + (v155 * v152);
            v160 = v18[v20 + 20];
            v161 = v18[v20 + 21];
            v162 = v16[v20 + 20];
            v163 = v16[v20 + 21];
            v164 = v17[v20 + 20];
            v165 = v17[v20 + 21];
            v166 = v19[v20 + 20];
            v167 = v19[v20 + 21];
            v168 = (v156 + (v160 * v162)) + (v161 * v163);
            v169 = (v157 + (v160 * v164)) + (v161 * v165);
            v170 = (v158 + (v166 * v162)) + (v167 * v163);
            v171 = (v159 + (v166 * v164)) + (v167 * v165);
            v172 = v18[v20 + 22];
            v173 = v18[v20 + 23];
            v174 = v16[v20 + 22];
            v175 = v16[v20 + 23];
            v176 = v17[v20 + 22];
            v177 = v17[v20 + 23];
            v178 = v168 + (v172 * v174);
            v179 = v169 + (v172 * v176);
            v180 = v19[v20 + 22];
            v181 = v19[v20 + 23];
            v182 = v178 + (v173 * v175);
            v183 = v179 + (v173 * v177);
            v184 = (v170 + (v180 * v174)) + (v181 * v175);
            v185 = (v171 + (v180 * v176)) + (v181 * v177);
            v186 = v18[v20 + 24];
            v187 = v18[v20 + 25];
            v188 = v16[v20 + 24];
            v189 = v16[v20 + 25];
            v190 = v182 + (v186 * v188);
            v191 = v17[v20 + 24];
            v192 = v17[v20 + 25];
            v193 = v183 + (v186 * v191);
            v194 = v19[v20 + 24];
            v195 = v19[v20 + 25];
            v196 = v190 + (v187 * v189);
            v197 = v193 + (v187 * v192);
            v198 = (v184 + (v194 * v188)) + (v195 * v189);
            v199 = (v185 + (v194 * v191)) + (v195 * v192);
            v200 = v18[v20 + 26];
            v201 = v18[v20 + 27];
            v202 = v16[v20 + 26];
            v203 = v16[v20 + 27];
            v204 = v17[v20 + 26];
            v205 = v17[v20 + 27];
            v206 = v19[v20 + 26];
            v207 = v19[v20 + 27];
            v208 = (v196 + (v200 * v202)) + (v201 * v203);
            v209 = (v197 + (v200 * v204)) + (v201 * v205);
            v210 = (v198 + (v206 * v202)) + (v207 * v203);
            v211 = (v199 + (v206 * v204)) + (v207 * v205);
            v212 = v18[v20 + 28];
            v213 = v18[v20 + 29];
            v214 = v16[v20 + 28];
            v215 = v16[v20 + 29];
            v216 = v17[v20 + 28];
            v217 = v17[v20 + 29];
            v218 = v208 + (v212 * v214);
            v219 = v209 + (v212 * v216);
            v220 = v19[v20 + 28];
            v221 = v19[v20 + 29];
            v222 = v218 + (v213 * v215);
            v223 = v219 + (v213 * v217);
            v224 = (v210 + (v220 * v214)) + (v221 * v215);
            v225 = (v211 + (v220 * v216)) + (v221 * v217);
            v226 = v18[v20 + 30];
            v227 = v18[v20 + 31];
            v228 = v16[v20 + 30];
            v229 = v16[v20 + 31];
            v230 = v222 + (v226 * v228);
            v231 = v17[v20 + 30];
            v232 = v17[v20 + 31];
            v233 = v223 + (v226 * v231);
            v234 = v19[v20 + 30];
            v235 = v19[v20 + 31];
            v21 = v230 + (v227 * v229);
            v25 = v233 + (v227 * v232);
            v236 = v22;
            v24 = (v224 + (v234 * v228)) + (v235 * v229);
            v23 = (v225 + (v234 * v231)) + (v235 * v232);
            v22 -= 32;
            v20 += 32;
          }

          while (v236 > 0x3F);
          v16 = (v16 + v20 * 4);
          v19 = (v19 + v20 * 4);
          v18 = (v18 + v20 * 4);
          v17 = (v17 + v20 * 4);
        }

        if (v22 >= 16)
        {
          v237 = v22 + 16;
          do
          {
            v238 = v18[1];
            v239 = v16[1];
            v240 = v17[1];
            v241 = v19[1];
            v242 = (v21 + (*v18 * *v16)) + (v238 * v239);
            v243 = (v25 + (*v18 * *v17)) + (v238 * v240);
            v244 = (v24 + (*v19 * *v16)) + (v241 * v239);
            v245 = (v23 + (*v19 * *v17)) + (v241 * v240);
            v246 = v18[2];
            v247 = v18[3];
            v248 = v16[2];
            v249 = v16[3];
            v250 = v242 + (v246 * v248);
            v251 = v17[2];
            v252 = v17[3];
            v253 = v243 + (v246 * v251);
            v254 = v19[2];
            v255 = v19[3];
            v256 = v250 + (v247 * v249);
            v257 = v253 + (v247 * v252);
            v258 = (v244 + (v254 * v248)) + (v255 * v249);
            v259 = (v245 + (v254 * v251)) + (v255 * v252);
            v260 = v18[4];
            v261 = v18[5];
            v262 = v16[4];
            v263 = v16[5];
            v264 = v256 + (v260 * v262);
            v265 = v17[4];
            v266 = v17[5];
            v267 = v257 + (v260 * v265);
            v268 = v19[4];
            v269 = v19[5];
            v270 = v264 + (v261 * v263);
            v271 = v267 + (v261 * v266);
            v272 = (v258 + (v268 * v262)) + (v269 * v263);
            v273 = (v259 + (v268 * v265)) + (v269 * v266);
            v274 = v18[6];
            v275 = v18[7];
            v276 = v16[6];
            v277 = v16[7];
            v278 = v270 + (v274 * v276);
            v279 = v17[6];
            v280 = v17[7];
            v281 = v271 + (v274 * v279);
            v282 = v19[6];
            v283 = v19[7];
            v284 = v278 + (v275 * v277);
            v285 = v281 + (v275 * v280);
            v286 = (v272 + (v282 * v276)) + (v283 * v277);
            v287 = (v273 + (v282 * v279)) + (v283 * v280);
            v288 = v18[8];
            v289 = v18[9];
            v290 = v16[8];
            v291 = v16[9];
            v292 = v284 + (v288 * v290);
            v293 = v17[8];
            v294 = v17[9];
            v295 = v285 + (v288 * v293);
            v296 = v19[8];
            v297 = v19[9];
            v298 = v292 + (v289 * v291);
            v299 = v295 + (v289 * v294);
            v300 = (v286 + (v296 * v290)) + (v297 * v291);
            v301 = (v287 + (v296 * v293)) + (v297 * v294);
            v302 = v18[10];
            v303 = v18[11];
            v304 = v16[10];
            v305 = v16[11];
            v306 = v298 + (v302 * v304);
            v307 = v17[10];
            v308 = v17[11];
            v309 = v299 + (v302 * v307);
            v310 = v19[10];
            v311 = v19[11];
            v312 = v306 + (v303 * v305);
            v313 = v309 + (v303 * v308);
            v314 = (v300 + (v310 * v304)) + (v311 * v305);
            v315 = (v301 + (v310 * v307)) + (v311 * v308);
            v316 = v18[12];
            v317 = v18[13];
            v318 = v16[12];
            v319 = v16[13];
            v320 = v312 + (v316 * v318);
            v321 = v17[12];
            v322 = v17[13];
            v323 = v313 + (v316 * v321);
            v324 = v19[12];
            v325 = v19[13];
            v326 = v320 + (v317 * v319);
            v327 = v323 + (v317 * v322);
            v328 = (v314 + (v324 * v318)) + (v325 * v319);
            v329 = (v315 + (v324 * v321)) + (v325 * v322);
            v330 = v18[14];
            v331 = v18[15];
            v332 = v16[14];
            v333 = v16[15];
            v334 = v326 + (v330 * v332);
            v335 = v17[14];
            v336 = v17[15];
            v337 = v327 + (v330 * v335);
            v338 = v19[14];
            v339 = v19[15];
            v21 = v334 + (v331 * v333);
            v25 = v337 + (v331 * v336);
            v24 = (v328 + (v338 * v332)) + (v339 * v333);
            v23 = (v329 + (v338 * v335)) + (v339 * v336);
            v16 += 16;
            v17 += 16;
            v237 -= 16;
            v18 += 16;
            v19 += 16;
          }

          while (v237 > 0x1F);
        }

        v340 = v15 - v15;
        v341 = v21 + v340 * (v25 - v21);
        *a2 = v341;
        a2 += v14;
        *&v340 = v24 + v340 * (v23 - v24);
        *a3 = LODWORD(v340);
        a3 += v14;
        v8 = v9 + v8;
        ++v11;
      }

      while (v11 != a4);
    }
  }

  else if (a4 >= 1)
  {
    v342 = 0;
    v343 = *v5;
    v344 = a5;
    do
    {
      v345 = (v8 - v8) * v10;
      v346 = (v343 + 4 * v6 * v345);
      v347 = &v346[v6];
      v348 = (v7 + 4 * v8);
      if (v6 < 32)
      {
        v352 = 0.0;
        v350 = 0.0;
        v351 = v6;
      }

      else
      {
        v349 = 0;
        v350 = 0.0;
        v351 = v6;
        v352 = 0.0;
        do
        {
          v353 = v348[v349];
          v354 = v348[v349 + 1];
          v355 = (v352 + (v353 * v346[v349])) + (v354 * v346[v349 + 1]);
          v356 = (v350 + (v353 * v347[v349])) + (v354 * v347[v349 + 1]);
          v357 = v348[v349 + 2];
          v358 = v348[v349 + 3];
          v359 = (v355 + (v357 * v346[v349 + 2])) + (v358 * v346[v349 + 3]);
          v360 = (v356 + (v357 * v347[v349 + 2])) + (v358 * v347[v349 + 3]);
          v361 = v348[v349 + 4];
          v362 = v348[v349 + 5];
          v363 = (v359 + (v361 * v346[v349 + 4])) + (v362 * v346[v349 + 5]);
          v364 = (v360 + (v361 * v347[v349 + 4])) + (v362 * v347[v349 + 5]);
          v365 = v348[v349 + 6];
          v366 = v348[v349 + 7];
          v367 = (v363 + (v365 * v346[v349 + 6])) + (v366 * v346[v349 + 7]);
          v368 = (v364 + (v365 * v347[v349 + 6])) + (v366 * v347[v349 + 7]);
          v369 = v348[v349 + 8];
          v370 = v348[v349 + 9];
          v371 = (v367 + (v369 * v346[v349 + 8])) + (v370 * v346[v349 + 9]);
          v372 = (v368 + (v369 * v347[v349 + 8])) + (v370 * v347[v349 + 9]);
          v373 = v348[v349 + 10];
          v374 = v348[v349 + 11];
          v375 = (v371 + (v373 * v346[v349 + 10])) + (v374 * v346[v349 + 11]);
          v376 = (v372 + (v373 * v347[v349 + 10])) + (v374 * v347[v349 + 11]);
          v377 = v348[v349 + 12];
          v378 = v348[v349 + 13];
          v379 = (v375 + (v377 * v346[v349 + 12])) + (v378 * v346[v349 + 13]);
          v380 = (v376 + (v377 * v347[v349 + 12])) + (v378 * v347[v349 + 13]);
          v381 = v348[v349 + 14];
          v382 = v348[v349 + 15];
          v383 = (v379 + (v381 * v346[v349 + 14])) + (v382 * v346[v349 + 15]);
          v384 = (v380 + (v381 * v347[v349 + 14])) + (v382 * v347[v349 + 15]);
          v385 = v348[v349 + 16];
          v386 = v348[v349 + 17];
          v387 = (v383 + (v385 * v346[v349 + 16])) + (v386 * v346[v349 + 17]);
          v388 = (v384 + (v385 * v347[v349 + 16])) + (v386 * v347[v349 + 17]);
          v389 = v348[v349 + 18];
          v390 = v348[v349 + 19];
          v391 = (v387 + (v389 * v346[v349 + 18])) + (v390 * v346[v349 + 19]);
          v392 = (v388 + (v389 * v347[v349 + 18])) + (v390 * v347[v349 + 19]);
          v393 = v348[v349 + 20];
          v394 = v348[v349 + 21];
          v395 = (v391 + (v393 * v346[v349 + 20])) + (v394 * v346[v349 + 21]);
          v396 = (v392 + (v393 * v347[v349 + 20])) + (v394 * v347[v349 + 21]);
          v397 = v348[v349 + 22];
          v398 = v348[v349 + 23];
          v399 = (v395 + (v397 * v346[v349 + 22])) + (v398 * v346[v349 + 23]);
          v400 = (v396 + (v397 * v347[v349 + 22])) + (v398 * v347[v349 + 23]);
          v401 = v348[v349 + 24];
          v402 = v348[v349 + 25];
          v403 = (v399 + (v401 * v346[v349 + 24])) + (v402 * v346[v349 + 25]);
          v404 = (v400 + (v401 * v347[v349 + 24])) + (v402 * v347[v349 + 25]);
          v405 = v348[v349 + 26];
          v406 = v348[v349 + 27];
          v407 = (v403 + (v405 * v346[v349 + 26])) + (v406 * v346[v349 + 27]);
          v408 = (v404 + (v405 * v347[v349 + 26])) + (v406 * v347[v349 + 27]);
          v409 = v348[v349 + 28];
          v410 = v348[v349 + 29];
          v411 = (v407 + (v409 * v346[v349 + 28])) + (v410 * v346[v349 + 29]);
          v412 = (v408 + (v409 * v347[v349 + 28])) + (v410 * v347[v349 + 29]);
          v413 = v348[v349 + 30];
          v414 = v348[v349 + 31];
          v352 = (v411 + (v413 * v346[v349 + 30])) + (v414 * v346[v349 + 31]);
          v415 = v351;
          v350 = (v412 + (v413 * v347[v349 + 30])) + (v414 * v347[v349 + 31]);
          v351 -= 32;
          v349 += 32;
        }

        while (v415 > 0x3F);
        v348 = (v348 + v349 * 4);
        v347 = (v347 + v349 * 4);
        v346 = (v346 + v349 * 4);
      }

      if (v351 >= 16)
      {
        v416 = v351 + 16;
        do
        {
          v417 = v348[1];
          v418 = (v352 + (*v348 * *v346)) + (v417 * v346[1]);
          v419 = (v350 + (*v348 * *v347)) + (v417 * v347[1]);
          v420 = v348[2];
          v421 = v348[3];
          v422 = (v418 + (v420 * v346[2])) + (v421 * v346[3]);
          v423 = (v419 + (v420 * v347[2])) + (v421 * v347[3]);
          v424 = v348[4];
          v425 = v348[5];
          v426 = (v422 + (v424 * v346[4])) + (v425 * v346[5]);
          v427 = (v423 + (v424 * v347[4])) + (v425 * v347[5]);
          v428 = v348[6];
          v429 = v348[7];
          v430 = (v426 + (v428 * v346[6])) + (v429 * v346[7]);
          v431 = (v427 + (v428 * v347[6])) + (v429 * v347[7]);
          v432 = v348[8];
          v433 = v348[9];
          v434 = (v430 + (v432 * v346[8])) + (v433 * v346[9]);
          v435 = (v431 + (v432 * v347[8])) + (v433 * v347[9]);
          v436 = v348[10];
          v437 = v348[11];
          v438 = (v434 + (v436 * v346[10])) + (v437 * v346[11]);
          v439 = (v435 + (v436 * v347[10])) + (v437 * v347[11]);
          v440 = v348[12];
          v441 = v348[13];
          v442 = (v438 + (v440 * v346[12])) + (v441 * v346[13]);
          v443 = (v439 + (v440 * v347[12])) + (v441 * v347[13]);
          v444 = v348[14];
          v445 = v348[15];
          v352 = (v442 + (v444 * v346[14])) + (v445 * v346[15]);
          v350 = (v443 + (v444 * v347[14])) + (v445 * v347[15]);
          v348 += 16;
          v346 += 16;
          v347 += 16;
          v416 -= 16;
        }

        while (v416 > 0x1F);
      }

      v446 = v345 - v345;
      *a2 = v352 + (v446 * (v350 - v352));
      a2 += v344;
      v8 = v9 + v8;
      ++v342;
    }

    while (v342 != a4);
  }

  *(result + 152) = v8;
  return result;
}

float *Resampler2::ConvertScalar<Resampler2::RampedRate>(float *this, float *a2, _DWORD *a3, int a4, int a5)
{
  v6 = a3;
  v8 = this;
  v9 = vdupq_lane_s64(COERCE__INT64(-*(this + 16)), 0);
  v10 = vdupq_lane_s64(COERCE__INT64(-*(this + 33)), 0);
  v11 = *(this + 6);
  if (*(this + 27) == 1818848869)
  {
    v12 = 2;
  }

  else
  {
    v12 = *(v11 + 12);
  }

  v13 = *(this + 25);
  v14 = *(this + 26);
  v15 = *(this + 31);
  v463 = vaddq_f64(*(this + 54), v9);
  v16 = vaddq_f64(*(this + 58), v10);
  v17 = *(this + 16);
  v18 = *(this + 9);
  v19 = *(this + 19);
  v20 = *(v11 + 16);
  if (a3)
  {
    if (a4 >= 1)
    {
      v21 = 0;
      v22 = *(this + 10);
      v23 = a5;
      v24 = v16.f64[1];
      v25 = 0.0;
      v464 = v16.f64[0];
      do
      {
        if (v24 <= v25)
        {
          v26 = v14;
        }

        else
        {
          v26 = v13 + v15 * (v25 - v16.f64[0]);
        }

        *(v8 + 160) = v26;
        this = Resampler2::SetVarispeedSinc(v8, v26);
        if (v24 <= v25)
        {
          v27 = (v25 - v24) * v14 + v463.f64[1];
        }

        else
        {
          v27 = v463.f64[0] + (v25 - v464) * (v13 + v15 * 0.5 * (v25 - v464));
        }

        v16.f64[0] = v464;
        v19 = fmax(v27, 0.0);
        if (v19 >= v17)
        {
          v19 = v17;
        }

        v28 = (v19 - v19) * v20;
        v29 = (**(v8 + 48) + 4 * v12 * v28);
        v30 = &v29[v12];
        v31 = (v18 + 4 * v19);
        v32 = (v22 + 4 * v19);
        if (v12 < 32)
        {
          v38 = 0.0;
          v37 = 0.0;
          v36 = 0.0;
          v35 = v12;
          v34 = 0.0;
        }

        else
        {
          v33 = 0;
          v34 = 0.0;
          v35 = v12;
          v36 = 0.0;
          v37 = 0.0;
          v38 = 0.0;
          do
          {
            this = &v31[v33];
            v39 = v31[v33];
            v40 = v31[v33 + 1];
            v41 = v29[v33];
            v42 = v29[v33 + 1];
            v43 = v34 + (v39 * v41);
            v44 = v30[v33];
            v45 = v30[v33 + 1];
            v46 = v38 + (v39 * v44);
            v47 = v32[v33];
            v48 = v32[v33 + 1];
            v49 = v43 + (v40 * v42);
            v50 = v46 + (v40 * v45);
            v51 = (v37 + (v47 * v41)) + (v48 * v42);
            v52 = (v36 + (v47 * v44)) + (v48 * v45);
            v53 = v31[v33 + 2];
            v54 = v31[v33 + 3];
            v55 = v29[v33 + 2];
            v56 = v29[v33 + 3];
            v57 = v30[v33 + 2];
            v58 = v30[v33 + 3];
            v59 = v32[v33 + 2];
            v60 = v32[v33 + 3];
            v61 = (v49 + (v53 * v55)) + (v54 * v56);
            v62 = (v50 + (v53 * v57)) + (v54 * v58);
            v63 = (v51 + (v59 * v55)) + (v60 * v56);
            v64 = (v52 + (v59 * v57)) + (v60 * v58);
            v65 = v31[v33 + 4];
            v66 = v31[v33 + 5];
            v67 = v29[v33 + 4];
            v68 = v29[v33 + 5];
            v69 = v30[v33 + 4];
            v70 = v30[v33 + 5];
            v71 = v61 + (v65 * v67);
            v72 = v62 + (v65 * v69);
            v73 = v32[v33 + 4];
            v74 = v32[v33 + 5];
            v75 = v71 + (v66 * v68);
            v76 = v72 + (v66 * v70);
            v77 = (v63 + (v73 * v67)) + (v74 * v68);
            v78 = (v64 + (v73 * v69)) + (v74 * v70);
            v79 = v31[v33 + 6];
            v80 = v31[v33 + 7];
            v81 = v29[v33 + 6];
            v82 = v29[v33 + 7];
            v83 = v75 + (v79 * v81);
            v84 = v30[v33 + 6];
            v85 = v30[v33 + 7];
            v86 = v76 + (v79 * v84);
            v87 = v32[v33 + 6];
            v88 = v32[v33 + 7];
            v89 = v83 + (v80 * v82);
            v90 = v86 + (v80 * v85);
            v91 = (v77 + (v87 * v81)) + (v88 * v82);
            v92 = (v78 + (v87 * v84)) + (v88 * v85);
            v93 = v31[v33 + 8];
            v94 = v31[v33 + 9];
            v95 = v29[v33 + 8];
            v96 = v29[v33 + 9];
            v97 = v30[v33 + 8];
            v98 = v30[v33 + 9];
            v99 = v32[v33 + 8];
            v100 = v32[v33 + 9];
            v101 = (v89 + (v93 * v95)) + (v94 * v96);
            v102 = (v90 + (v93 * v97)) + (v94 * v98);
            v103 = (v91 + (v99 * v95)) + (v100 * v96);
            v104 = (v92 + (v99 * v97)) + (v100 * v98);
            v105 = v31[v33 + 10];
            v106 = v31[v33 + 11];
            v107 = v29[v33 + 10];
            v108 = v29[v33 + 11];
            v109 = v30[v33 + 10];
            v110 = v30[v33 + 11];
            v111 = v101 + (v105 * v107);
            v112 = v102 + (v105 * v109);
            v113 = v32[v33 + 10];
            v114 = v32[v33 + 11];
            v115 = v111 + (v106 * v108);
            v116 = v112 + (v106 * v110);
            v117 = (v103 + (v113 * v107)) + (v114 * v108);
            v118 = (v104 + (v113 * v109)) + (v114 * v110);
            v119 = v31[v33 + 12];
            v120 = v31[v33 + 13];
            v121 = v29[v33 + 12];
            v122 = v29[v33 + 13];
            v123 = v115 + (v119 * v121);
            v124 = v30[v33 + 12];
            v125 = v30[v33 + 13];
            v126 = v116 + (v119 * v124);
            v127 = v32[v33 + 12];
            v128 = v32[v33 + 13];
            v129 = v123 + (v120 * v122);
            v130 = v126 + (v120 * v125);
            v131 = (v117 + (v127 * v121)) + (v128 * v122);
            v132 = (v118 + (v127 * v124)) + (v128 * v125);
            v133 = v31[v33 + 14];
            v134 = v31[v33 + 15];
            v135 = v29[v33 + 14];
            v136 = v29[v33 + 15];
            v137 = v30[v33 + 14];
            v138 = v30[v33 + 15];
            v139 = v32[v33 + 14];
            v140 = v32[v33 + 15];
            v141 = (v129 + (v133 * v135)) + (v134 * v136);
            v142 = (v130 + (v133 * v137)) + (v134 * v138);
            v143 = (v131 + (v139 * v135)) + (v140 * v136);
            v144 = (v132 + (v139 * v137)) + (v140 * v138);
            v145 = v31[v33 + 16];
            v146 = v31[v33 + 17];
            v147 = v29[v33 + 16];
            v148 = v29[v33 + 17];
            v149 = v30[v33 + 16];
            v150 = v30[v33 + 17];
            v151 = v141 + (v145 * v147);
            v152 = v142 + (v145 * v149);
            v153 = v32[v33 + 16];
            v154 = v32[v33 + 17];
            v155 = v151 + (v146 * v148);
            v156 = v152 + (v146 * v150);
            v157 = (v143 + (v153 * v147)) + (v154 * v148);
            v158 = (v144 + (v153 * v149)) + (v154 * v150);
            v159 = v31[v33 + 18];
            v160 = v31[v33 + 19];
            v161 = v29[v33 + 18];
            v162 = v29[v33 + 19];
            v163 = v155 + (v159 * v161);
            v164 = v30[v33 + 18];
            v165 = v30[v33 + 19];
            v166 = v156 + (v159 * v164);
            v167 = v32[v33 + 18];
            v168 = v32[v33 + 19];
            v169 = v163 + (v160 * v162);
            v170 = v166 + (v160 * v165);
            v171 = (v157 + (v167 * v161)) + (v168 * v162);
            v172 = (v158 + (v167 * v164)) + (v168 * v165);
            v173 = v31[v33 + 20];
            v174 = v31[v33 + 21];
            v175 = v29[v33 + 20];
            v176 = v29[v33 + 21];
            v177 = v30[v33 + 20];
            v178 = v30[v33 + 21];
            v179 = v32[v33 + 20];
            v180 = v32[v33 + 21];
            v181 = (v169 + (v173 * v175)) + (v174 * v176);
            v182 = (v170 + (v173 * v177)) + (v174 * v178);
            v183 = (v171 + (v179 * v175)) + (v180 * v176);
            v184 = (v172 + (v179 * v177)) + (v180 * v178);
            v185 = v31[v33 + 22];
            v186 = v31[v33 + 23];
            v187 = v29[v33 + 22];
            v188 = v29[v33 + 23];
            v189 = v30[v33 + 22];
            v190 = v30[v33 + 23];
            v191 = v181 + (v185 * v187);
            v192 = v182 + (v185 * v189);
            v193 = v32[v33 + 22];
            v194 = v32[v33 + 23];
            v195 = v191 + (v186 * v188);
            v196 = v192 + (v186 * v190);
            v197 = (v183 + (v193 * v187)) + (v194 * v188);
            v198 = (v184 + (v193 * v189)) + (v194 * v190);
            v199 = v31[v33 + 24];
            v200 = v31[v33 + 25];
            v201 = v29[v33 + 24];
            v202 = v29[v33 + 25];
            v203 = v195 + (v199 * v201);
            v204 = v30[v33 + 24];
            v205 = v30[v33 + 25];
            v206 = v196 + (v199 * v204);
            v207 = v32[v33 + 24];
            v208 = v32[v33 + 25];
            v209 = v203 + (v200 * v202);
            v210 = v206 + (v200 * v205);
            v211 = (v197 + (v207 * v201)) + (v208 * v202);
            v212 = (v198 + (v207 * v204)) + (v208 * v205);
            v213 = v31[v33 + 26];
            v214 = v31[v33 + 27];
            v215 = v29[v33 + 26];
            v216 = v29[v33 + 27];
            v217 = v30[v33 + 26];
            v218 = v30[v33 + 27];
            v219 = v32[v33 + 26];
            v220 = v32[v33 + 27];
            v221 = (v209 + (v213 * v215)) + (v214 * v216);
            v222 = (v210 + (v213 * v217)) + (v214 * v218);
            v223 = (v211 + (v219 * v215)) + (v220 * v216);
            v224 = (v212 + (v219 * v217)) + (v220 * v218);
            v225 = v31[v33 + 28];
            v226 = v31[v33 + 29];
            v227 = v29[v33 + 28];
            v228 = v29[v33 + 29];
            v229 = v30[v33 + 28];
            v230 = v30[v33 + 29];
            v231 = v221 + (v225 * v227);
            v232 = v222 + (v225 * v229);
            v233 = v32[v33 + 28];
            v234 = v32[v33 + 29];
            v235 = v231 + (v226 * v228);
            v236 = v232 + (v226 * v230);
            v237 = (v223 + (v233 * v227)) + (v234 * v228);
            v238 = (v224 + (v233 * v229)) + (v234 * v230);
            v239 = v31[v33 + 30];
            v240 = v31[v33 + 31];
            v241 = v29[v33 + 30];
            v242 = v29[v33 + 31];
            v243 = v235 + (v239 * v241);
            v244 = v30[v33 + 30];
            v245 = v30[v33 + 31];
            v246 = v236 + (v239 * v244);
            v247 = v32[v33 + 30];
            v248 = v32[v33 + 31];
            v34 = v243 + (v240 * v242);
            v38 = v246 + (v240 * v245);
            v249 = v35;
            v37 = (v237 + (v247 * v241)) + (v248 * v242);
            v36 = (v238 + (v247 * v244)) + (v248 * v245);
            v35 -= 32;
            v33 += 32;
          }

          while (v249 > 0x3F);
          v29 = (v29 + v33 * 4);
          v32 = (v32 + v33 * 4);
          v31 = (v31 + v33 * 4);
          v30 = (v30 + v33 * 4);
        }

        if (v35 >= 16)
        {
          v250 = v35 + 16;
          do
          {
            v251 = v31[1];
            v252 = v29[1];
            v253 = v30[1];
            v254 = v32[1];
            v255 = (v34 + (*v31 * *v29)) + (v251 * v252);
            v256 = (v38 + (*v31 * *v30)) + (v251 * v253);
            v257 = (v37 + (*v32 * *v29)) + (v254 * v252);
            v258 = (v36 + (*v32 * *v30)) + (v254 * v253);
            v259 = v31[2];
            v260 = v31[3];
            v261 = v29[2];
            v262 = v29[3];
            v263 = v255 + (v259 * v261);
            v264 = v30[2];
            v265 = v30[3];
            v266 = v256 + (v259 * v264);
            v267 = v32[2];
            v268 = v32[3];
            v269 = v263 + (v260 * v262);
            v270 = v266 + (v260 * v265);
            v271 = (v257 + (v267 * v261)) + (v268 * v262);
            v272 = (v258 + (v267 * v264)) + (v268 * v265);
            v273 = v31[4];
            v274 = v31[5];
            v275 = v29[4];
            v276 = v29[5];
            v277 = v269 + (v273 * v275);
            v278 = v30[4];
            v279 = v30[5];
            v280 = v270 + (v273 * v278);
            v281 = v32[4];
            v282 = v32[5];
            v283 = v277 + (v274 * v276);
            v284 = v280 + (v274 * v279);
            v285 = (v271 + (v281 * v275)) + (v282 * v276);
            v286 = (v272 + (v281 * v278)) + (v282 * v279);
            v287 = v31[6];
            v288 = v31[7];
            v289 = v29[6];
            v290 = v29[7];
            v291 = v283 + (v287 * v289);
            v292 = v30[6];
            v293 = v30[7];
            v294 = v284 + (v287 * v292);
            v295 = v32[6];
            v296 = v32[7];
            v297 = v291 + (v288 * v290);
            v298 = v294 + (v288 * v293);
            v299 = (v285 + (v295 * v289)) + (v296 * v290);
            v300 = (v286 + (v295 * v292)) + (v296 * v293);
            v301 = v31[8];
            v302 = v31[9];
            v303 = v29[8];
            v304 = v29[9];
            v305 = v297 + (v301 * v303);
            v306 = v30[8];
            v307 = v30[9];
            v308 = v298 + (v301 * v306);
            v309 = v32[8];
            v310 = v32[9];
            v311 = v305 + (v302 * v304);
            v312 = v308 + (v302 * v307);
            v313 = (v299 + (v309 * v303)) + (v310 * v304);
            v314 = (v300 + (v309 * v306)) + (v310 * v307);
            v315 = v31[10];
            v316 = v31[11];
            v317 = v29[10];
            v318 = v29[11];
            v319 = v311 + (v315 * v317);
            v320 = v30[10];
            v321 = v30[11];
            v322 = v312 + (v315 * v320);
            v323 = v32[10];
            v324 = v32[11];
            v325 = v319 + (v316 * v318);
            v326 = v322 + (v316 * v321);
            v327 = (v313 + (v323 * v317)) + (v324 * v318);
            v328 = (v314 + (v323 * v320)) + (v324 * v321);
            v329 = v31[12];
            v330 = v31[13];
            v331 = v29[12];
            v332 = v29[13];
            v333 = v325 + (v329 * v331);
            v334 = v30[12];
            v335 = v30[13];
            v336 = v326 + (v329 * v334);
            v337 = v32[12];
            v338 = v32[13];
            v339 = v333 + (v330 * v332);
            v340 = v336 + (v330 * v335);
            v341 = (v327 + (v337 * v331)) + (v338 * v332);
            v342 = (v328 + (v337 * v334)) + (v338 * v335);
            v343 = v31[14];
            v344 = v31[15];
            v345 = v29[14];
            v346 = v29[15];
            v347 = v339 + (v343 * v345);
            v348 = v30[14];
            v349 = v30[15];
            v350 = v340 + (v343 * v348);
            v351 = v32[14];
            v352 = v32[15];
            v34 = v347 + (v344 * v346);
            v38 = v350 + (v344 * v349);
            v37 = (v341 + (v351 * v345)) + (v352 * v346);
            v36 = (v342 + (v351 * v348)) + (v352 * v349);
            v29 += 16;
            v30 += 16;
            v250 -= 16;
            v31 += 16;
            v32 += 16;
          }

          while (v250 > 0x1F);
        }

        v353 = v28 - v28;
        v354 = v34 + v353 * (v38 - v34);
        *a2 = v354;
        a2 += v23;
        *&v353 = v37 + v353 * (v36 - v37);
        *v6 = LODWORD(v353);
        v6 += v23;
        ++v21;
        v25 = v25 + 1.0;
      }

      while (v21 != a4);
    }
  }

  else if (a4 >= 1)
  {
    v355 = 0;
    v356 = a5;
    v357 = v16.f64[1];
    v358 = 0.0;
    v465 = v16.f64[0];
    do
    {
      if (v357 <= v358)
      {
        v359 = v14;
      }

      else
      {
        v359 = v13 + v15 * (v358 - v16.f64[0]);
      }

      *(v8 + 160) = v359;
      this = Resampler2::SetVarispeedSinc(v8, v359);
      if (v357 <= v358)
      {
        v360 = (v358 - v357) * v14 + v463.f64[1];
      }

      else
      {
        v360 = v463.f64[0] + (v358 - v465) * (v13 + v15 * 0.5 * (v358 - v465));
      }

      v16.f64[0] = v465;
      v19 = fmax(v360, 0.0);
      if (v19 >= v17)
      {
        v19 = v17;
      }

      v361 = (v19 - v19) * v20;
      v362 = (**(v8 + 48) + 4 * v12 * v361);
      v363 = &v362[v12];
      v364 = (v18 + 4 * v19);
      if (v12 < 32)
      {
        v368 = 0.0;
        v366 = 0.0;
        v367 = v12;
      }

      else
      {
        v365 = 0;
        v366 = 0.0;
        v367 = v12;
        v368 = 0.0;
        do
        {
          v369 = v364[v365];
          v370 = v364[v365 + 1];
          v371 = (v368 + (v369 * v362[v365])) + (v370 * v362[v365 + 1]);
          v372 = (v366 + (v369 * v363[v365])) + (v370 * v363[v365 + 1]);
          v373 = v364[v365 + 2];
          v374 = v364[v365 + 3];
          v375 = (v371 + (v373 * v362[v365 + 2])) + (v374 * v362[v365 + 3]);
          v376 = (v372 + (v373 * v363[v365 + 2])) + (v374 * v363[v365 + 3]);
          v377 = v364[v365 + 4];
          v378 = v364[v365 + 5];
          v379 = (v375 + (v377 * v362[v365 + 4])) + (v378 * v362[v365 + 5]);
          v380 = (v376 + (v377 * v363[v365 + 4])) + (v378 * v363[v365 + 5]);
          v381 = v364[v365 + 6];
          v382 = v364[v365 + 7];
          v383 = (v379 + (v381 * v362[v365 + 6])) + (v382 * v362[v365 + 7]);
          v384 = (v380 + (v381 * v363[v365 + 6])) + (v382 * v363[v365 + 7]);
          v385 = v364[v365 + 8];
          v386 = v364[v365 + 9];
          v387 = (v383 + (v385 * v362[v365 + 8])) + (v386 * v362[v365 + 9]);
          v388 = (v384 + (v385 * v363[v365 + 8])) + (v386 * v363[v365 + 9]);
          v389 = v364[v365 + 10];
          v390 = v364[v365 + 11];
          v391 = (v387 + (v389 * v362[v365 + 10])) + (v390 * v362[v365 + 11]);
          v392 = (v388 + (v389 * v363[v365 + 10])) + (v390 * v363[v365 + 11]);
          v393 = v364[v365 + 12];
          v394 = v364[v365 + 13];
          v395 = (v391 + (v393 * v362[v365 + 12])) + (v394 * v362[v365 + 13]);
          v396 = (v392 + (v393 * v363[v365 + 12])) + (v394 * v363[v365 + 13]);
          v397 = v364[v365 + 14];
          v398 = v364[v365 + 15];
          v399 = (v395 + (v397 * v362[v365 + 14])) + (v398 * v362[v365 + 15]);
          v400 = (v396 + (v397 * v363[v365 + 14])) + (v398 * v363[v365 + 15]);
          v401 = v364[v365 + 16];
          v402 = v364[v365 + 17];
          v403 = (v399 + (v401 * v362[v365 + 16])) + (v402 * v362[v365 + 17]);
          v404 = (v400 + (v401 * v363[v365 + 16])) + (v402 * v363[v365 + 17]);
          v405 = v364[v365 + 18];
          v406 = v364[v365 + 19];
          v407 = (v403 + (v405 * v362[v365 + 18])) + (v406 * v362[v365 + 19]);
          v408 = (v404 + (v405 * v363[v365 + 18])) + (v406 * v363[v365 + 19]);
          v409 = v364[v365 + 20];
          v410 = v364[v365 + 21];
          v411 = (v407 + (v409 * v362[v365 + 20])) + (v410 * v362[v365 + 21]);
          v412 = (v408 + (v409 * v363[v365 + 20])) + (v410 * v363[v365 + 21]);
          v413 = v364[v365 + 22];
          v414 = v364[v365 + 23];
          v415 = (v411 + (v413 * v362[v365 + 22])) + (v414 * v362[v365 + 23]);
          v416 = (v412 + (v413 * v363[v365 + 22])) + (v414 * v363[v365 + 23]);
          v417 = v364[v365 + 24];
          v418 = v364[v365 + 25];
          v419 = (v415 + (v417 * v362[v365 + 24])) + (v418 * v362[v365 + 25]);
          v420 = (v416 + (v417 * v363[v365 + 24])) + (v418 * v363[v365 + 25]);
          v421 = v364[v365 + 26];
          v422 = v364[v365 + 27];
          v423 = (v419 + (v421 * v362[v365 + 26])) + (v422 * v362[v365 + 27]);
          v424 = (v420 + (v421 * v363[v365 + 26])) + (v422 * v363[v365 + 27]);
          v425 = v364[v365 + 28];
          v426 = v364[v365 + 29];
          v427 = (v423 + (v425 * v362[v365 + 28])) + (v426 * v362[v365 + 29]);
          v428 = (v424 + (v425 * v363[v365 + 28])) + (v426 * v363[v365 + 29]);
          v429 = v364[v365 + 30];
          v430 = v364[v365 + 31];
          v368 = (v427 + (v429 * v362[v365 + 30])) + (v430 * v362[v365 + 31]);
          v431 = v367;
          v366 = (v428 + (v429 * v363[v365 + 30])) + (v430 * v363[v365 + 31]);
          v367 -= 32;
          v365 += 32;
        }

        while (v431 > 0x3F);
        v364 = (v364 + v365 * 4);
        v363 = (v363 + v365 * 4);
        v362 = (v362 + v365 * 4);
      }

      if (v367 >= 16)
      {
        v432 = v367 + 16;
        do
        {
          v433 = v364[1];
          v434 = (v368 + (*v364 * *v362)) + (v433 * v362[1]);
          v435 = (v366 + (*v364 * *v363)) + (v433 * v363[1]);
          v436 = v364[2];
          v437 = v364[3];
          v438 = (v434 + (v436 * v362[2])) + (v437 * v362[3]);
          v439 = (v435 + (v436 * v363[2])) + (v437 * v363[3]);
          v440 = v364[4];
          v441 = v364[5];
          v442 = (v438 + (v440 * v362[4])) + (v441 * v362[5]);
          v443 = (v439 + (v440 * v363[4])) + (v441 * v363[5]);
          v444 = v364[6];
          v445 = v364[7];
          v446 = (v442 + (v444 * v362[6])) + (v445 * v362[7]);
          v447 = (v443 + (v444 * v363[6])) + (v445 * v363[7]);
          v448 = v364[8];
          v449 = v364[9];
          v450 = (v446 + (v448 * v362[8])) + (v449 * v362[9]);
          v451 = (v447 + (v448 * v363[8])) + (v449 * v363[9]);
          v452 = v364[10];
          v453 = v364[11];
          v454 = (v450 + (v452 * v362[10])) + (v453 * v362[11]);
          v455 = (v451 + (v452 * v363[10])) + (v453 * v363[11]);
          v456 = v364[12];
          v457 = v364[13];
          v458 = (v454 + (v456 * v362[12])) + (v457 * v362[13]);
          v459 = (v455 + (v456 * v363[12])) + (v457 * v363[13]);
          v460 = v364[14];
          v461 = v364[15];
          v368 = (v458 + (v460 * v362[14])) + (v461 * v362[15]);
          v366 = (v459 + (v460 * v363[14])) + (v461 * v363[15]);
          v364 += 16;
          v362 += 16;
          v363 += 16;
          v432 -= 16;
        }

        while (v432 > 0x1F);
      }

      v462 = v361 - v361;
      *a2 = v368 + (v462 * (v366 - v368));
      a2 += v356;
      ++v355;
      v358 = v358 + 1.0;
    }

    while (v355 != a4);
  }

  *(v8 + 152) = v19;
  return this;
}

uint64_t Resampler2::SetVarispeedSinc(uint64_t this, double a2)
{
  if (a2 <= 1.0)
  {
    v2 = 0;
  }

  else if (a2 <= 7.98)
  {
    v2 = *(&sVarispeedRateTable + vcvtpd_s64_f64(a2 * 100.0) - 100);
  }

  else
  {
    v2 = 35;
  }

  v3 = *(this + 104) + 1;
  if (v3 >= 0x20)
  {
    v4 = (v3 >> 5) - 1;
  }

  else
  {
    v4 = 0;
  }

  *(this + 48) = *(**(&sVarispeedSincKernels + v4) + 8 * v2);
  return this;
}

void Resampler2::ConvertSIMD<Resampler2::FixedRate>(uint64_t a1, float *a2, float *a3, int a4, int a5)
{
  v6 = a3;
  v9 = *(a1 + 108);
  v10 = *(a1 + 48);
  if (v9 == 1818848869)
  {
    v11 = 2;
  }

  else
  {
    v11 = *(v10 + 3);
  }

  v12 = 4 * v11;
  v13 = *(a1 + 72);
  v14 = *(v10 + 4);
  v15 = *(a1 + 152);
  v16 = *(a1 + 160);
  if (a3)
  {
    if (a4 >= 1)
    {
      v17 = 0;
      v18 = *(a1 + 80);
      v259 = v12;
      v19 = a5;
      v258 = v12 + 32;
      do
      {
        v20 = **(a1 + 48);
        v21 = (v15 - v15) * v14;
        v22 = v11 * v21;
        v23 = (v20 + 4 * v22);
        v24 = (v13 + 4 * v15);
        v25 = (v18 + 4 * v15);
        v26 = v21;
        if (v9 == 1650553971)
        {
          vdotprD2i(v24->f32, v25->f32, v23, &v23[v11], v21 - v26, a2, v6, v11);
        }

        else
        {
          v27 = 0uLL;
          v28 = v11;
          v29 = 0uLL;
          v30 = 0uLL;
          v31 = 0uLL;
          if (v11 >= 64)
          {
            v32 = 0;
            v33 = v20 + v259 + 4 * v22;
            v28 = v11;
            do
            {
              v34 = v24[v32 / 0x10];
              v35 = v24[v32 / 0x10 + 1];
              v36 = *&v23[v32 / 4];
              v37 = *&v23[v32 / 4 + 4];
              v38 = vmlaq_f32(v31, v36, v34);
              v39 = *(v33 + v32);
              v40 = *(v33 + v32 + 16);
              v41 = vmlaq_f32(v30, v39, v34);
              v42 = v25[v32 / 0x10];
              v43 = v25[v32 / 0x10 + 1];
              v44 = vmlaq_f32(v38, v37, v35);
              v45 = vmlaq_f32(v41, v40, v35);
              v46 = vmlaq_f32(vmlaq_f32(v29, v36, v42), v37, v43);
              v47 = vmlaq_f32(vmlaq_f32(v27, v39, v42), v40, v43);
              v48 = v24[v32 / 0x10 + 2];
              v49 = v24[v32 / 0x10 + 3];
              v50 = *&v23[v32 / 4 + 8];
              v51 = *&v23[v32 / 4 + 12];
              v52 = vmlaq_f32(v44, v50, v48);
              v53 = *(v33 + v32 + 32);
              v54 = *(v33 + v32 + 48);
              v55 = vmlaq_f32(v45, v53, v48);
              v56 = v25[v32 / 0x10 + 2];
              v57 = v25[v32 / 0x10 + 3];
              v58 = vmlaq_f32(v52, v51, v49);
              v59 = vmlaq_f32(v55, v54, v49);
              v60 = vmlaq_f32(vmlaq_f32(v46, v50, v56), v51, v57);
              v61 = vmlaq_f32(vmlaq_f32(v47, v53, v56), v54, v57);
              v62 = v24[v32 / 0x10 + 4];
              v63 = v24[v32 / 0x10 + 5];
              v64 = *&v23[v32 / 4 + 16];
              v65 = *&v23[v32 / 4 + 20];
              v66 = vmlaq_f32(v58, v64, v62);
              v67 = *(v33 + v32 + 64);
              v68 = *(v33 + v32 + 80);
              v69 = vmlaq_f32(v59, v67, v62);
              v70 = v25[v32 / 0x10 + 4];
              v71 = v25[v32 / 0x10 + 5];
              v72 = vmlaq_f32(v66, v65, v63);
              v73 = vmlaq_f32(v69, v68, v63);
              v74 = vmlaq_f32(vmlaq_f32(v60, v64, v70), v65, v71);
              v75 = vmlaq_f32(vmlaq_f32(v61, v67, v70), v68, v71);
              v76 = v24[v32 / 0x10 + 6];
              v77 = v24[v32 / 0x10 + 7];
              v78 = *&v23[v32 / 4 + 24];
              v79 = *&v23[v32 / 4 + 28];
              v80 = vmlaq_f32(v72, v78, v76);
              v81 = *(v33 + v32 + 96);
              v82 = *(v33 + v32 + 112);
              v83 = vmlaq_f32(v73, v81, v76);
              v84 = v25[v32 / 0x10 + 6];
              v85 = v25[v32 / 0x10 + 7];
              v86 = vmlaq_f32(v80, v79, v77);
              v87 = vmlaq_f32(v83, v82, v77);
              v88 = vmlaq_f32(vmlaq_f32(v74, v78, v84), v79, v85);
              v89 = vmlaq_f32(vmlaq_f32(v75, v81, v84), v82, v85);
              v90 = v24[v32 / 0x10 + 8];
              v91 = v24[v32 / 0x10 + 9];
              v92 = *&v23[v32 / 4 + 32];
              v93 = *&v23[v32 / 4 + 36];
              v94 = vmlaq_f32(v86, v92, v90);
              v95 = *(v33 + v32 + 128);
              v96 = *(v33 + v32 + 144);
              v97 = vmlaq_f32(v87, v95, v90);
              v98 = v25[v32 / 0x10 + 8];
              v99 = v25[v32 / 0x10 + 9];
              v100 = vmlaq_f32(v94, v93, v91);
              v101 = vmlaq_f32(v97, v96, v91);
              v102 = vmlaq_f32(vmlaq_f32(v88, v92, v98), v93, v99);
              v103 = vmlaq_f32(vmlaq_f32(v89, v95, v98), v96, v99);
              v104 = v24[v32 / 0x10 + 10];
              v105 = v24[v32 / 0x10 + 11];
              v106 = *&v23[v32 / 4 + 40];
              v107 = *&v23[v32 / 4 + 44];
              v108 = vmlaq_f32(v100, v106, v104);
              v109 = *(v33 + v32 + 160);
              v110 = *(v33 + v32 + 176);
              v111 = vmlaq_f32(v101, v109, v104);
              v112 = v25[v32 / 0x10 + 10];
              v113 = v25[v32 / 0x10 + 11];
              v114 = vmlaq_f32(v108, v107, v105);
              v115 = vmlaq_f32(v111, v110, v105);
              v116 = vmlaq_f32(vmlaq_f32(v102, v106, v112), v107, v113);
              v117 = vmlaq_f32(vmlaq_f32(v103, v109, v112), v110, v113);
              v118 = v24[v32 / 0x10 + 12];
              v119 = v24[v32 / 0x10 + 13];
              v120 = *&v23[v32 / 4 + 48];
              v121 = *&v23[v32 / 4 + 52];
              v122 = vmlaq_f32(v114, v120, v118);
              v123 = *(v33 + v32 + 192);
              v124 = *(v33 + v32 + 208);
              v125 = vmlaq_f32(v115, v123, v118);
              v126 = v25[v32 / 0x10 + 12];
              v127 = v25[v32 / 0x10 + 13];
              v128 = vmlaq_f32(v122, v121, v119);
              v129 = vmlaq_f32(v125, v124, v119);
              v130 = vmlaq_f32(vmlaq_f32(v116, v120, v126), v121, v127);
              v131 = vmlaq_f32(vmlaq_f32(v117, v123, v126), v124, v127);
              v132 = v24[v32 / 0x10 + 14];
              v133 = v24[v32 / 0x10 + 15];
              v134 = *&v23[v32 / 4 + 56];
              v135 = *&v23[v32 / 4 + 60];
              v136 = vmlaq_f32(v128, v134, v132);
              v137 = *(v33 + v32 + 224);
              v138 = *(v33 + v32 + 240);
              v139 = vmlaq_f32(v129, v137, v132);
              v140 = v25[v32 / 0x10 + 14];
              v141 = v25[v32 / 0x10 + 15];
              v142 = v28;
              v31 = vmlaq_f32(v136, v135, v133);
              v30 = vmlaq_f32(v139, v138, v133);
              v29 = vmlaq_f32(vmlaq_f32(v130, v134, v140), v135, v141);
              v27 = vmlaq_f32(vmlaq_f32(v131, v137, v140), v138, v141);
              v28 -= 64;
              v32 += 256;
            }

            while (v142 > 0x7F);
            v23 = (v23 + v32);
            v25 = (v25 + v32);
            v24 = (v24 + v32);
          }

          if (v28 >= 16)
          {
            v143 = v28 + 16;
            v144 = (v23 + 8);
            v145 = (v23 + v258);
            do
            {
              v146 = v24[1];
              v147 = v144[-2];
              v148 = v144[-1];
              v149 = v145[-2];
              v150 = v145[-1];
              v151 = v25[1];
              v152 = vmlaq_f32(vmlaq_f32(v31, v147, *v24), v148, v146);
              v153 = vmlaq_f32(vmlaq_f32(v30, v149, *v24), v150, v146);
              v154 = vmlaq_f32(vmlaq_f32(v29, v147, *v25), v148, v151);
              v155 = vmlaq_f32(vmlaq_f32(v27, v149, *v25), v150, v151);
              v156 = v24[2];
              v157 = v24[3];
              v158 = *v144;
              v159 = v144[1];
              v144 += 4;
              v160 = vmlaq_f32(v152, v158, v156);
              v161 = *v145;
              v162 = v145[1];
              v145 += 4;
              v163 = vmlaq_f32(v153, v161, v156);
              v164 = v25[2];
              v165 = v25[3];
              v31 = vmlaq_f32(v160, v159, v157);
              v30 = vmlaq_f32(v163, v162, v157);
              v29 = vmlaq_f32(vmlaq_f32(v154, v158, v164), v159, v165);
              v143 -= 16;
              v27 = vmlaq_f32(vmlaq_f32(v155, v161, v164), v162, v165);
              v24 += 4;
              v25 += 4;
            }

            while (v143 > 0x1F);
          }

          v166 = v21 - v26;
          v167 = vmlaq_n_f32(v31, vsubq_f32(v30, v31), v166);
          v168 = vmlaq_n_f32(v29, vsubq_f32(v27, v29), v166);
          *a2 = vaddv_f32(vadd_f32(*v167.i8, *&vextq_s8(v167, v167, 8uLL)));
          *v6 = vaddv_f32(vadd_f32(*v168.i8, *&vextq_s8(v168, v168, 8uLL)));
        }

        a2 += v19;
        v6 += v19;
        v15 = v16 + v15;
        ++v17;
      }

      while (v17 != a4);
    }
  }

  else if (a4 >= 1)
  {
    v169 = 0;
    v170 = v12;
    v171 = *v10;
    v172 = (4 * v11) & 0x7FFFFFFFFFFFFFF0;
    v173 = v171 + v12;
    v174 = a5;
    v175 = v170 + 32;
    do
    {
      v176 = (v15 - v15) * v14;
      v177 = v11 * v176;
      v178 = (v171 + 4 * v177);
      v179 = (v13 + 4 * v15);
      v180 = v176;
      if (v9 == 1650553971)
      {
        v181 = (v178 + 4 * v11);
        v182 = v179[1];
        v183 = vmulq_f32(v182, v178[1]);
        v184 = vmulq_f32(*v179, *v178);
        v185 = vmulq_f32(v182, v181[1]);
        v186 = vmulq_f32(*v179, *v181);
        v187 = v178[2];
        v188 = v178[3];
        v189 = v181[2];
        v190 = v181[3];
        v191 = v179[2];
        v192 = v179[3];
        v193 = 0uLL;
        if (v172 == 64)
        {
          v194 = 0uLL;
          v195 = 0uLL;
          v196 = 0uLL;
        }

        else
        {
          v249 = v179 + 4;
          v250 = (v171 + 80 + 4 * v177);
          v195 = 0uLL;
          v251 = v172 - 64;
          v196 = 0uLL;
          v194 = 0uLL;
          do
          {
            v194 = vaddq_f64(v194, vaddq_f64(vcvt_hight_f64_f32(v183), vcvt_hight_f64_f32(v184)));
            v193 = vaddq_f64(v193, vaddq_f64(vcvtq_f64_f32(*v183.f32), vcvtq_f64_f32(*v184.f32)));
            v196 = vaddq_f64(v196, vaddq_f64(vcvt_hight_f64_f32(v185), vcvt_hight_f64_f32(v186)));
            v195 = vaddq_f64(v195, vaddq_f64(vcvtq_f64_f32(*v185.f32), vcvtq_f64_f32(*v186.f32)));
            v184 = vmulq_f32(v191, v187);
            v183 = vmulq_f32(v192, v188);
            v186 = vmulq_f32(v191, v189);
            v185 = vmulq_f32(v192, v190);
            v191 = *v249;
            v192 = v249[1];
            v249 += 2;
            v187 = v250[-1];
            v188 = *v250;
            v189 = v181[4];
            v190 = v181[5];
            v181 += 2;
            v250 += 2;
            v251 -= 32;
          }

          while (v251);
        }

        v252 = v176 - v180;
        v253 = vmulq_f32(v188, v192);
        v254 = vmulq_f32(v187, v191);
        v255 = vmulq_f32(v190, v192);
        v256 = vmulq_f32(v189, v191);
        v257 = vpaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v185.f32), vcvtq_f64_f32(*v186.f32)), v195), vaddq_f64(vcvtq_f64_f32(*v255.f32), vcvtq_f64_f32(*v256.f32))), vaddq_f64(vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v185), vcvt_hight_f64_f32(v186)), v196), vaddq_f64(vcvt_hight_f64_f32(v255), vcvt_hight_f64_f32(v256)))), vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v183.f32), vcvtq_f64_f32(*v184.f32)), v193), vaddq_f64(vcvtq_f64_f32(*v253.f32), vcvtq_f64_f32(*v254.f32))), vaddq_f64(vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v183), vcvt_hight_f64_f32(v184)), v194), vaddq_f64(vcvt_hight_f64_f32(v253), vcvt_hight_f64_f32(v254)))));
        v248 = v257.f64[1] + v252 * (v257.f64[0] - v257.f64[1]);
      }

      else
      {
        v197 = 0uLL;
        v198 = 0uLL;
        v199 = v11;
        if (v11 >= 64)
        {
          v200 = 0;
          v201 = v173 + 4 * v177;
          v199 = v11;
          do
          {
            v202 = v179[v200];
            v203 = v179[v200 + 1];
            v204 = vmlaq_f32(vmlaq_f32(v197, v178[v200], v202), v178[v200 + 1], v203);
            v205 = vmlaq_f32(vmlaq_f32(v198, *(v201 + v200 * 16), v202), *(v201 + v200 * 16 + 16), v203);
            v206 = v179[v200 + 2];
            v207 = v179[v200 + 3];
            v208 = vmlaq_f32(vmlaq_f32(v204, v178[v200 + 2], v206), v178[v200 + 3], v207);
            v209 = vmlaq_f32(vmlaq_f32(v205, *(v201 + v200 * 16 + 32), v206), *(v201 + v200 * 16 + 48), v207);
            v210 = v179[v200 + 4];
            v211 = v179[v200 + 5];
            v212 = vmlaq_f32(vmlaq_f32(v208, v178[v200 + 4], v210), v178[v200 + 5], v211);
            v213 = vmlaq_f32(vmlaq_f32(v209, *(v201 + v200 * 16 + 64), v210), *(v201 + v200 * 16 + 80), v211);
            v214 = v179[v200 + 6];
            v215 = v179[v200 + 7];
            v216 = vmlaq_f32(vmlaq_f32(v212, v178[v200 + 6], v214), v178[v200 + 7], v215);
            v217 = vmlaq_f32(vmlaq_f32(v213, *(v201 + v200 * 16 + 96), v214), *(v201 + v200 * 16 + 112), v215);
            v218 = v179[v200 + 8];
            v219 = v179[v200 + 9];
            v220 = vmlaq_f32(vmlaq_f32(v216, v178[v200 + 8], v218), v178[v200 + 9], v219);
            v221 = vmlaq_f32(vmlaq_f32(v217, *(v201 + v200 * 16 + 128), v218), *(v201 + v200 * 16 + 144), v219);
            v222 = v179[v200 + 10];
            v223 = v179[v200 + 11];
            v224 = vmlaq_f32(vmlaq_f32(v220, v178[v200 + 10], v222), v178[v200 + 11], v223);
            v225 = vmlaq_f32(vmlaq_f32(v221, *(v201 + v200 * 16 + 160), v222), *(v201 + v200 * 16 + 176), v223);
            v226 = v179[v200 + 12];
            v227 = v179[v200 + 13];
            v228 = vmlaq_f32(vmlaq_f32(v224, v178[v200 + 12], v226), v178[v200 + 13], v227);
            v229 = vmlaq_f32(vmlaq_f32(v225, *(v201 + v200 * 16 + 192), v226), *(v201 + v200 * 16 + 208), v227);
            v230 = v179[v200 + 14];
            v231 = v179[v200 + 15];
            v232 = v199;
            v197 = vmlaq_f32(vmlaq_f32(v228, v178[v200 + 14], v230), v178[v200 + 15], v231);
            v198 = vmlaq_f32(vmlaq_f32(v229, *(v201 + v200 * 16 + 224), v230), *(v201 + v200 * 16 + 240), v231);
            v199 -= 64;
            v200 += 16;
          }

          while (v232 > 0x7F);
          v179 = (v179 + v200 * 16);
          v178 = (v178 + v200 * 16);
        }

        if (v199 >= 16)
        {
          v233 = v199 + 16;
          v234 = (v178 + v175);
          v235 = v178 + 2;
          do
          {
            v236 = v179[1];
            v237 = vmlaq_f32(vmlaq_f32(v197, v235[-2], *v179), v235[-1], v236);
            v238 = vmlaq_f32(vmlaq_f32(v198, v234[-2], *v179), v234[-1], v236);
            v239 = v179[2];
            v240 = v179[3];
            v241 = *v235;
            v242 = v235[1];
            v235 += 4;
            v243 = vmlaq_f32(v237, v241, v239);
            v244 = *v234;
            v245 = v234[1];
            v234 += 4;
            v197 = vmlaq_f32(v243, v242, v240);
            v233 -= 16;
            v198 = vmlaq_f32(vmlaq_f32(v238, v244, v239), v245, v240);
            v179 += 4;
          }

          while (v233 > 0x1F);
        }

        v246 = v176 - v180;
        v247 = vmlaq_n_f32(v197, vsubq_f32(v198, v197), v246);
        v248 = vaddv_f32(vadd_f32(*v247.i8, *&vextq_s8(v247, v247, 8uLL)));
      }

      *a2 = v248;
      a2 += v174;
      v15 = v16 + v15;
      ++v169;
    }

    while (v169 != a4);
  }

  *(a1 + 152) = v15;
}

float vdotprD2i(const float *a1, const float *a2, const float *a3, const float *a4, double a5, float *a6, float *a7, uint64_t a8)
{
  v8 = *(a1 + 4);
  v9 = *(a2 + 4);
  v10 = (4 * a8) & 0x7FFFFFFFFFFFFFF0;
  v11 = *(a3 + 4);
  v12 = *(a4 + 4);
  v13 = vmulq_f32(v8, v11);
  v14 = vmulq_f32(*a1, *a3);
  v15 = vmulq_f32(v9, v11);
  v16 = vmulq_f32(*a2, *a3);
  v17 = vmulq_f32(v8, v12);
  v18 = vmulq_f32(*a1, *a4);
  v19 = vmulq_f32(v9, v12);
  v20 = *(a3 + 8);
  v21 = *(a3 + 12);
  v22 = *(a4 + 8);
  v23 = *(a4 + 12);
  v24 = *(a2 + 8);
  v25 = *(a2 + 12);
  v26 = 0uLL;
  v27 = *(a1 + 8);
  v28 = *(a1 + 12);
  if (v10 == 64)
  {
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
  }

  else
  {
    v36 = (a3 + v10);
    v37 = vmulq_f32(*a2, *a4);
    v34 = 0uLL;
    v38 = a4 + 16;
    v35 = 0uLL;
    v39 = a3 + 16;
    v40 = a2 + 16;
    v41 = a1 + 16;
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v29 = 0uLL;
    do
    {
      v29 = vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v13), vcvt_hight_f64_f32(v14)), v29);
      v26 = vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v13.f32), vcvtq_f64_f32(*v14.f32)), v26);
      v31 = vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v15), vcvt_hight_f64_f32(v16)), v31);
      v30 = vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v15.f32), vcvtq_f64_f32(*v16.f32)), v30);
      v42 = vaddq_f64(vcvtq_f64_f32(*v17.f32), vcvtq_f64_f32(*v18.f32));
      v43 = vaddq_f64(vcvt_hight_f64_f32(v17), vcvt_hight_f64_f32(v18));
      v44 = vcvt_hight_f64_f32(v19);
      v45 = vcvtq_f64_f32(*v19.f32);
      v46 = vcvt_hight_f64_f32(v37);
      v47 = vcvtq_f64_f32(*v37.f32);
      v14 = vmulq_f32(v20, v27);
      v13 = vmulq_f32(v21, v28);
      v18 = vmulq_f32(v22, v27);
      v17 = vmulq_f32(v23, v28);
      v27 = *v41;
      v28 = *(v41 + 4);
      v41 += 8;
      v16 = vmulq_f32(v20, v24);
      v15 = vmulq_f32(v21, v25);
      v37 = vmulq_f32(v22, v24);
      v19 = vmulq_f32(v23, v25);
      v24 = *v40;
      v25 = *(v40 + 4);
      v40 += 8;
      v33 = vaddq_f64(v43, v33);
      v32 = vaddq_f64(v42, v32);
      v20 = *v39;
      v21 = *(v39 + 4);
      v39 += 8;
      v22 = *v38;
      v23 = *(v38 + 4);
      v38 += 8;
      v35 = vaddq_f64(vaddq_f64(v44, v46), v35);
      v34 = vaddq_f64(vaddq_f64(v45, v47), v34);
    }

    while (v39 != v36);
  }

  v48 = vcvtq_f64_f32(*v14.f32);
  v49 = vaddq_f64(vcvt_hight_f64_f32(v13), vcvt_hight_f64_f32(v14));
  v50 = vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v13.f32), v48), v26);
  v51 = vaddq_f64(v49, v29);
  v52 = vcvtq_f64_f32(*v15.f32);
  v53 = vcvtq_f64_f32(*v16.f32);
  v54 = vcvt_hight_f64_f32(v16);
  v55 = vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v15), v54), v31);
  v56 = vcvtq_f64_f32(*v18.f32);
  v57 = vaddq_f64(vcvt_hight_f64_f32(v17), vcvt_hight_f64_f32(v18));
  v58 = vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v17.f32), v56), v32);
  v59 = vaddq_f64(vaddq_f64(v53, vcvtq_f64_f32(*v19.f32)), v34);
  v60 = vaddq_f64(vaddq_f64(v54, vcvt_hight_f64_f32(v19)), v35);
  v61 = vmulq_f32(v21, v28);
  v62 = vmulq_f32(v20, v27);
  v63 = vmulq_f32(v21, v25);
  v64 = vmulq_f32(v20, v24);
  v65 = vmulq_f32(v23, v28);
  v66 = vmulq_f32(v22, v27);
  v67 = vmulq_f32(v23, v25);
  v68 = vmulq_f32(v22, v24);
  v69 = vcvt_hight_f64_f32(v68);
  v70 = vaddq_f64(vcvtq_f64_f32(*v67.f32), vcvtq_f64_f32(*v68.f32));
  v71 = vaddq_f64(v60, vaddq_f64(vcvt_hight_f64_f32(v67), v69));
  v72 = vpaddq_f64(vaddq_f64(vaddq_f64(v58, vaddq_f64(vcvtq_f64_f32(*v65.f32), vcvtq_f64_f32(*v66.f32))), vaddq_f64(vaddq_f64(v57, v33), vaddq_f64(vcvt_hight_f64_f32(v65), vcvt_hight_f64_f32(v66)))), vaddq_f64(vaddq_f64(v50, vaddq_f64(vcvtq_f64_f32(*v61.f32), vcvtq_f64_f32(*v62.f32))), vaddq_f64(v51, vaddq_f64(vcvt_hight_f64_f32(v61), vcvt_hight_f64_f32(v62)))));
  v73 = vpaddq_f64(vaddq_f64(vaddq_f64(v59, v70), v71), vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v52, v53), v30), vaddq_f64(vcvtq_f64_f32(*v63.f32), vcvtq_f64_f32(*v64.f32))), vaddq_f64(v55, vaddq_f64(vcvt_hight_f64_f32(v63), vcvt_hight_f64_f32(v64)))));
  *v71.f64 = v72.f64[1] + a5 * (v72.f64[0] - v72.f64[1]);
  *a6 = *v71.f64;
  result = v73.f64[1] + a5 * (v73.f64[0] - v73.f64[1]);
  *a7 = result;
  return result;
}

void Resampler2::ConvertSIMD<Resampler2::RampedRate>(Resampler2 *this, float *a2, float *a3, int a4, int a5)
{
  v6 = a3;
  v9 = vdupq_lane_s64(COERCE__INT64(-*(this + 16)), 0);
  v10 = vdupq_lane_s64(COERCE__INT64(-*(this + 33)), 0);
  v11 = *(this + 27);
  v12 = *(this + 6);
  if (v11 == 1818848869)
  {
    v13 = 2;
  }

  else
  {
    v13 = *(v12 + 12);
  }

  v14 = *(this + 25);
  v15 = *(this + 26);
  v16 = *(this + 31);
  v274 = vaddq_f64(*(this + 216), v9);
  v17 = vaddq_f64(*(this + 232), v10);
  v18 = *(this + 16);
  v19 = 4 * v13;
  v275 = *(this + 9);
  v20 = *(v12 + 16);
  v21 = *(this + 19);
  if (a3)
  {
    if (a4 >= 1)
    {
      v22 = 0;
      v23 = *(this + 10);
      v24 = a5;
      v25 = v17.f64[1];
      v272 = v19;
      v271 = v19 + 32;
      v26 = 0.0;
      v276 = v17.f64[0];
      do
      {
        if (v25 <= v26)
        {
          v27 = v15;
        }

        else
        {
          v27 = v14 + v16 * (v26 - v17.f64[0]);
        }

        *(this + 20) = v27;
        Resampler2::SetVarispeedSinc(this, v27);
        if (v25 <= v26)
        {
          v28 = (v26 - v25) * v15 + v274.f64[1];
        }

        else
        {
          v28 = v274.f64[0] + (v26 - v276) * (v14 + v16 * 0.5 * (v26 - v276));
        }

        v17.f64[0] = v276;
        v29 = fmax(v28, 0.0);
        if (v29 >= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v29;
        }

        v30 = **(this + 6);
        v31 = (v21 - v21) * v20;
        v32 = v13 * v31;
        v33 = (v30 + 4 * v32);
        v34 = (v275 + 4 * v21);
        v35 = (v23 + 4 * v21);
        v36 = v31;
        if (v11 == 1650553971)
        {
          vdotprD2i(v34->f32, v35->f32, v33, &v33[v13], v31 - v36, a2, v6, v13);
          v17.f64[0] = v276;
        }

        else
        {
          v37 = 0uLL;
          v38 = v13;
          v39 = 0uLL;
          v40 = 0uLL;
          v41 = 0uLL;
          if (v13 >= 64)
          {
            v42 = 0;
            v43 = v30 + v272 + 4 * v32;
            v38 = v13;
            do
            {
              v44 = v34[v42 / 0x10];
              v45 = v34[v42 / 0x10 + 1];
              v46 = *&v33[v42 / 4];
              v47 = *&v33[v42 / 4 + 4];
              v48 = vmlaq_f32(v41, v46, v44);
              v49 = *(v43 + v42);
              v50 = *(v43 + v42 + 16);
              v51 = vmlaq_f32(v40, v49, v44);
              v52 = v35[v42 / 0x10];
              v53 = v35[v42 / 0x10 + 1];
              v54 = vmlaq_f32(v48, v47, v45);
              v55 = vmlaq_f32(v51, v50, v45);
              v56 = vmlaq_f32(vmlaq_f32(v39, v46, v52), v47, v53);
              v57 = vmlaq_f32(vmlaq_f32(v37, v49, v52), v50, v53);
              v58 = v34[v42 / 0x10 + 2];
              v59 = v34[v42 / 0x10 + 3];
              v60 = *&v33[v42 / 4 + 8];
              v61 = *&v33[v42 / 4 + 12];
              v62 = vmlaq_f32(v54, v60, v58);
              v63 = *(v43 + v42 + 32);
              v64 = *(v43 + v42 + 48);
              v65 = vmlaq_f32(v55, v63, v58);
              v66 = v35[v42 / 0x10 + 2];
              v67 = v35[v42 / 0x10 + 3];
              v68 = vmlaq_f32(v62, v61, v59);
              v69 = vmlaq_f32(v65, v64, v59);
              v70 = vmlaq_f32(vmlaq_f32(v56, v60, v66), v61, v67);
              v71 = vmlaq_f32(vmlaq_f32(v57, v63, v66), v64, v67);
              v72 = v34[v42 / 0x10 + 4];
              v73 = v34[v42 / 0x10 + 5];
              v74 = *&v33[v42 / 4 + 16];
              v75 = *&v33[v42 / 4 + 20];
              v76 = vmlaq_f32(v68, v74, v72);
              v77 = *(v43 + v42 + 64);
              v78 = *(v43 + v42 + 80);
              v79 = vmlaq_f32(v69, v77, v72);
              v80 = v35[v42 / 0x10 + 4];
              v81 = v35[v42 / 0x10 + 5];
              v82 = vmlaq_f32(v76, v75, v73);
              v83 = vmlaq_f32(v79, v78, v73);
              v84 = vmlaq_f32(vmlaq_f32(v70, v74, v80), v75, v81);
              v85 = vmlaq_f32(vmlaq_f32(v71, v77, v80), v78, v81);
              v86 = v34[v42 / 0x10 + 6];
              v87 = v34[v42 / 0x10 + 7];
              v88 = *&v33[v42 / 4 + 24];
              v89 = *&v33[v42 / 4 + 28];
              v90 = vmlaq_f32(v82, v88, v86);
              v91 = *(v43 + v42 + 96);
              v92 = *(v43 + v42 + 112);
              v93 = vmlaq_f32(v83, v91, v86);
              v94 = v35[v42 / 0x10 + 6];
              v95 = v35[v42 / 0x10 + 7];
              v96 = vmlaq_f32(v90, v89, v87);
              v97 = vmlaq_f32(v93, v92, v87);
              v98 = vmlaq_f32(vmlaq_f32(v84, v88, v94), v89, v95);
              v99 = vmlaq_f32(vmlaq_f32(v85, v91, v94), v92, v95);
              v100 = v34[v42 / 0x10 + 8];
              v101 = v34[v42 / 0x10 + 9];
              v102 = *&v33[v42 / 4 + 32];
              v103 = *&v33[v42 / 4 + 36];
              v104 = vmlaq_f32(v96, v102, v100);
              v105 = *(v43 + v42 + 128);
              v106 = *(v43 + v42 + 144);
              v107 = vmlaq_f32(v97, v105, v100);
              v108 = v35[v42 / 0x10 + 8];
              v109 = v35[v42 / 0x10 + 9];
              v110 = vmlaq_f32(v104, v103, v101);
              v111 = vmlaq_f32(v107, v106, v101);
              v112 = vmlaq_f32(vmlaq_f32(v98, v102, v108), v103, v109);
              v113 = vmlaq_f32(vmlaq_f32(v99, v105, v108), v106, v109);
              v114 = v34[v42 / 0x10 + 10];
              v115 = v34[v42 / 0x10 + 11];
              v116 = *&v33[v42 / 4 + 40];
              v117 = *&v33[v42 / 4 + 44];
              v118 = vmlaq_f32(v110, v116, v114);
              v119 = *(v43 + v42 + 160);
              v120 = *(v43 + v42 + 176);
              v121 = vmlaq_f32(v111, v119, v114);
              v122 = v35[v42 / 0x10 + 10];
              v123 = v35[v42 / 0x10 + 11];
              v124 = vmlaq_f32(v118, v117, v115);
              v125 = vmlaq_f32(v121, v120, v115);
              v126 = vmlaq_f32(vmlaq_f32(v112, v116, v122), v117, v123);
              v127 = vmlaq_f32(vmlaq_f32(v113, v119, v122), v120, v123);
              v128 = v34[v42 / 0x10 + 12];
              v129 = v34[v42 / 0x10 + 13];
              v130 = *&v33[v42 / 4 + 48];
              v131 = *&v33[v42 / 4 + 52];
              v132 = vmlaq_f32(v124, v130, v128);
              v133 = *(v43 + v42 + 192);
              v134 = *(v43 + v42 + 208);
              v135 = vmlaq_f32(v125, v133, v128);
              v136 = v35[v42 / 0x10 + 12];
              v137 = v35[v42 / 0x10 + 13];
              v138 = vmlaq_f32(v132, v131, v129);
              v139 = vmlaq_f32(v135, v134, v129);
              v140 = vmlaq_f32(vmlaq_f32(v126, v130, v136), v131, v137);
              v141 = vmlaq_f32(vmlaq_f32(v127, v133, v136), v134, v137);
              v142 = v34[v42 / 0x10 + 14];
              v143 = v34[v42 / 0x10 + 15];
              v144 = *&v33[v42 / 4 + 56];
              v145 = *&v33[v42 / 4 + 60];
              v146 = vmlaq_f32(v138, v144, v142);
              v147 = *(v43 + v42 + 224);
              v148 = *(v43 + v42 + 240);
              v149 = vmlaq_f32(v139, v147, v142);
              v150 = v35[v42 / 0x10 + 14];
              v151 = v35[v42 / 0x10 + 15];
              v152 = v38;
              v41 = vmlaq_f32(v146, v145, v143);
              v40 = vmlaq_f32(v149, v148, v143);
              v39 = vmlaq_f32(vmlaq_f32(v140, v144, v150), v145, v151);
              v37 = vmlaq_f32(vmlaq_f32(v141, v147, v150), v148, v151);
              v38 -= 64;
              v42 += 256;
            }

            while (v152 > 0x7F);
            v33 = (v33 + v42);
            v35 = (v35 + v42);
            v34 = (v34 + v42);
          }

          if (v38 >= 16)
          {
            v153 = v38 + 16;
            v154 = (v33 + 8);
            v155 = (v33 + v271);
            do
            {
              v156 = v34[1];
              v157 = v154[-2];
              v158 = v154[-1];
              v159 = v155[-2];
              v160 = v155[-1];
              v161 = v35[1];
              v162 = vmlaq_f32(vmlaq_f32(v41, v157, *v34), v158, v156);
              v163 = vmlaq_f32(vmlaq_f32(v40, v159, *v34), v160, v156);
              v164 = vmlaq_f32(vmlaq_f32(v39, v157, *v35), v158, v161);
              v165 = vmlaq_f32(vmlaq_f32(v37, v159, *v35), v160, v161);
              v166 = v34[2];
              v167 = v34[3];
              v168 = *v154;
              v169 = v154[1];
              v154 += 4;
              v170 = vmlaq_f32(v162, v168, v166);
              v171 = *v155;
              v172 = v155[1];
              v155 += 4;
              v173 = vmlaq_f32(v163, v171, v166);
              v174 = v35[2];
              v175 = v35[3];
              v41 = vmlaq_f32(v170, v169, v167);
              v40 = vmlaq_f32(v173, v172, v167);
              v39 = vmlaq_f32(vmlaq_f32(v164, v168, v174), v169, v175);
              v153 -= 16;
              v37 = vmlaq_f32(vmlaq_f32(v165, v171, v174), v172, v175);
              v34 += 4;
              v35 += 4;
            }

            while (v153 > 0x1F);
          }

          v176 = v31 - v36;
          v177 = vmlaq_n_f32(v41, vsubq_f32(v40, v41), v176);
          v178 = vmlaq_n_f32(v39, vsubq_f32(v37, v39), v176);
          *a2 = vaddv_f32(vadd_f32(*v177.i8, *&vextq_s8(v177, v177, 8uLL)));
          *v6 = vaddv_f32(vadd_f32(*v178.i8, *&vextq_s8(v178, v178, 8uLL)));
        }

        a2 += v24;
        v6 += v24;
        ++v22;
        v26 = v26 + 1.0;
      }

      while (v22 != a4);
    }
  }

  else if (a4 >= 1)
  {
    v179 = 0;
    v180 = v19;
    v181 = (4 * v13) & 0x7FFFFFFFFFFFFFF0;
    v182 = a5;
    v183 = v17.f64[1];
    v273 = v19 + 32;
    v184 = 0.0;
    v277 = v17.f64[0];
    do
    {
      if (v183 <= v184)
      {
        v185 = v15;
      }

      else
      {
        v185 = v14 + v16 * (v184 - v17.f64[0]);
      }

      *(this + 20) = v185;
      Resampler2::SetVarispeedSinc(this, v185);
      if (v183 <= v184)
      {
        v186 = (v184 - v183) * v15 + v274.f64[1];
      }

      else
      {
        v186 = v274.f64[0] + (v184 - v277) * (v14 + v16 * 0.5 * (v184 - v277));
      }

      v17.f64[0] = v277;
      v187 = fmax(v186, 0.0);
      if (v187 >= v18)
      {
        v21 = v18;
      }

      else
      {
        v21 = v187;
      }

      v188 = **(this + 6);
      v189 = (v21 - v21) * v20;
      v190 = v13 * v189;
      v191 = (v188 + 4 * v190);
      v192 = (v275 + 4 * v21);
      v193 = v189;
      if (v11 == 1650553971)
      {
        v194 = (v191 + 4 * v13);
        v195 = v192[1];
        v196 = vmulq_f32(v195, v191[1]);
        v197 = vmulq_f32(*v192, *v191);
        v198 = vmulq_f32(v195, v194[1]);
        v199 = vmulq_f32(*v192, *v194);
        v200 = v191[2];
        v201 = v191[3];
        v202 = v194[2];
        v203 = v194[3];
        v204 = v192[2];
        v205 = v192[3];
        v206 = 0uLL;
        if (v181 == 64)
        {
          v207 = 0uLL;
          v208 = 0uLL;
          v209 = 0uLL;
        }

        else
        {
          v262 = v192 + 4;
          v263 = (v188 + 4 * v190 + 80);
          v208 = 0uLL;
          v264 = v181 - 64;
          v209 = 0uLL;
          v207 = 0uLL;
          do
          {
            v207 = vaddq_f64(v207, vaddq_f64(vcvt_hight_f64_f32(v196), vcvt_hight_f64_f32(v197)));
            v206 = vaddq_f64(v206, vaddq_f64(vcvtq_f64_f32(*v196.f32), vcvtq_f64_f32(*v197.f32)));
            v209 = vaddq_f64(v209, vaddq_f64(vcvt_hight_f64_f32(v198), vcvt_hight_f64_f32(v199)));
            v208 = vaddq_f64(v208, vaddq_f64(vcvtq_f64_f32(*v198.f32), vcvtq_f64_f32(*v199.f32)));
            v197 = vmulq_f32(v204, v200);
            v196 = vmulq_f32(v205, v201);
            v199 = vmulq_f32(v204, v202);
            v198 = vmulq_f32(v205, v203);
            v204 = *v262;
            v205 = v262[1];
            v262 += 2;
            v200 = v263[-1];
            v201 = *v263;
            v202 = v194[4];
            v203 = v194[5];
            v194 += 2;
            v263 += 2;
            v264 -= 32;
          }

          while (v264);
        }

        v265 = v189 - v193;
        v266 = vmulq_f32(v201, v205);
        v267 = vmulq_f32(v200, v204);
        v268 = vmulq_f32(v203, v205);
        v269 = vmulq_f32(v202, v204);
        v270 = vpaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v198.f32), vcvtq_f64_f32(*v199.f32)), v208), vaddq_f64(vcvtq_f64_f32(*v268.f32), vcvtq_f64_f32(*v269.f32))), vaddq_f64(vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v198), vcvt_hight_f64_f32(v199)), v209), vaddq_f64(vcvt_hight_f64_f32(v268), vcvt_hight_f64_f32(v269)))), vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v196.f32), vcvtq_f64_f32(*v197.f32)), v206), vaddq_f64(vcvtq_f64_f32(*v266.f32), vcvtq_f64_f32(*v267.f32))), vaddq_f64(vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v196), vcvt_hight_f64_f32(v197)), v207), vaddq_f64(vcvt_hight_f64_f32(v266), vcvt_hight_f64_f32(v267)))));
        v261 = v270.f64[1] + v265 * (v270.f64[0] - v270.f64[1]);
      }

      else
      {
        v210 = 0uLL;
        v211 = 0uLL;
        v212 = v13;
        if (v13 >= 64)
        {
          v213 = 0;
          v214 = v188 + v180 + 4 * v190;
          v212 = v13;
          do
          {
            v215 = v192[v213];
            v216 = v192[v213 + 1];
            v217 = vmlaq_f32(vmlaq_f32(v210, v191[v213], v215), v191[v213 + 1], v216);
            v218 = vmlaq_f32(vmlaq_f32(v211, *(v214 + v213 * 16), v215), *(v214 + v213 * 16 + 16), v216);
            v219 = v192[v213 + 2];
            v220 = v192[v213 + 3];
            v221 = vmlaq_f32(vmlaq_f32(v217, v191[v213 + 2], v219), v191[v213 + 3], v220);
            v222 = vmlaq_f32(vmlaq_f32(v218, *(v214 + v213 * 16 + 32), v219), *(v214 + v213 * 16 + 48), v220);
            v223 = v192[v213 + 4];
            v224 = v192[v213 + 5];
            v225 = vmlaq_f32(vmlaq_f32(v221, v191[v213 + 4], v223), v191[v213 + 5], v224);
            v226 = vmlaq_f32(vmlaq_f32(v222, *(v214 + v213 * 16 + 64), v223), *(v214 + v213 * 16 + 80), v224);
            v227 = v192[v213 + 6];
            v228 = v192[v213 + 7];
            v229 = vmlaq_f32(vmlaq_f32(v225, v191[v213 + 6], v227), v191[v213 + 7], v228);
            v230 = vmlaq_f32(vmlaq_f32(v226, *(v214 + v213 * 16 + 96), v227), *(v214 + v213 * 16 + 112), v228);
            v231 = v192[v213 + 8];
            v232 = v192[v213 + 9];
            v233 = vmlaq_f32(vmlaq_f32(v229, v191[v213 + 8], v231), v191[v213 + 9], v232);
            v234 = vmlaq_f32(vmlaq_f32(v230, *(v214 + v213 * 16 + 128), v231), *(v214 + v213 * 16 + 144), v232);
            v235 = v192[v213 + 10];
            v236 = v192[v213 + 11];
            v237 = vmlaq_f32(vmlaq_f32(v233, v191[v213 + 10], v235), v191[v213 + 11], v236);
            v238 = vmlaq_f32(vmlaq_f32(v234, *(v214 + v213 * 16 + 160), v235), *(v214 + v213 * 16 + 176), v236);
            v239 = v192[v213 + 12];
            v240 = v192[v213 + 13];
            v241 = vmlaq_f32(vmlaq_f32(v237, v191[v213 + 12], v239), v191[v213 + 13], v240);
            v242 = vmlaq_f32(vmlaq_f32(v238, *(v214 + v213 * 16 + 192), v239), *(v214 + v213 * 16 + 208), v240);
            v243 = v192[v213 + 14];
            v244 = v192[v213 + 15];
            v245 = v212;
            v210 = vmlaq_f32(vmlaq_f32(v241, v191[v213 + 14], v243), v191[v213 + 15], v244);
            v211 = vmlaq_f32(vmlaq_f32(v242, *(v214 + v213 * 16 + 224), v243), *(v214 + v213 * 16 + 240), v244);
            v212 -= 64;
            v213 += 16;
          }

          while (v245 > 0x7F);
          v192 = (v192 + v213 * 16);
          v191 = (v191 + v213 * 16);
        }

        if (v212 >= 16)
        {
          v246 = v212 + 16;
          v247 = (v191 + v273);
          v248 = v191 + 2;
          do
          {
            v249 = v192[1];
            v250 = vmlaq_f32(vmlaq_f32(v210, v248[-2], *v192), v248[-1], v249);
            v251 = vmlaq_f32(vmlaq_f32(v211, v247[-2], *v192), v247[-1], v249);
            v252 = v192[2];
            v253 = v192[3];
            v254 = *v248;
            v255 = v248[1];
            v248 += 4;
            v256 = vmlaq_f32(v250, v254, v252);
            v257 = *v247;
            v258 = v247[1];
            v247 += 4;
            v210 = vmlaq_f32(v256, v255, v253);
            v246 -= 16;
            v211 = vmlaq_f32(vmlaq_f32(v251, v257, v252), v258, v253);
            v192 += 4;
          }

          while (v246 > 0x1F);
        }

        v259 = v189 - v193;
        v260 = vmlaq_n_f32(v210, vsubq_f32(v211, v210), v259);
        v261 = vaddv_f32(vadd_f32(*v260.i8, *&vextq_s8(v260, v260, 8uLL)));
      }

      *a2 = v261;
      a2 += v182;
      ++v179;
      v184 = v184 + 1.0;
    }

    while (v179 != a4);
  }

  *(this + 19) = v21;
}

void *std::vector<SincKernel *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    v2 = result[1] - *result;
    std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](a2);
  }

  return result;
}

void Resampler2::Resampler2(Resampler2 *this, double a2, double a3, int a4, double a5)
{
  v5 = a3;
  v6 = a2;
  v62 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = a2;
  *(this + 12) = 0;
  *(this + 26) = a4;
  *(this + 27) = 1852797549;
  *(this + 29) = 0;
  *(this + 62) = 0;
  *(this + 17) = 0;
  *(this + 19) = 0;
  v8 = a2 / a3;
  *(this + 20) = v8;
  *(this + 21) = 1.0 / v8;
  *(this + 88) = 1;
  *(this + 23) = 0;
  *(this + 192) = 1;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 200) = _Q0;
  *(this + 27) = 0;
  *(this + 14) = xmmword_1DE758070;
  *(this + 15) = xmmword_1DE758070;
  *(this + 256) = 0;
  *(this + 33) = 0;
  if (v6 <= 0.0 || a3 <= 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v54 = 136315906;
      v55 = "Resampler2.cpp";
      v56 = 1024;
      v57 = 260;
      v58 = 2048;
      v59 = v6;
      v60 = 2048;
      v61 = v5;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Resampler2 bad sample rate(s) : %11.2f %11.2f", &v54, 0x26u);
    }

    if (v6 > 0.0 || v5 > 0.0)
    {
      v13 = v5 <= 0.0 && v6 > 0.0;
      if (v13)
      {
        v14 = v6;
      }

      else
      {
        v14 = v5;
      }

      if (v6 <= 0.0)
      {
        v6 = v5;
      }

      v5 = v14;
    }

    else
    {
      v5 = 44100.0;
      v6 = 44100.0;
    }
  }

  v15 = *(this + 27);
  if (v15 == 1818848869)
  {
    *(this + 8) = 0x200200000001;
    *(this + 23) = 1;
    v16 = 8194;
    goto LABEL_73;
  }

  v17 = vcvtmd_s64_f64(v6);
  v18 = vcvtmd_s64_f64(v5);
  if (v6 != v17 || v5 != v18)
  {
    goto LABEL_41;
  }

  if (v17 >= 0)
  {
    v20 = v17;
  }

  else
  {
    v20 = -v17;
  }

  if (v18 >= 0)
  {
    v21 = v18;
  }

  else
  {
    v21 = -v18;
  }

  v22 = 1;
  if (v20 >= 2 && v21 >= 2)
  {
    v22 = v21;
    do
    {
      if (v20 <= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v20;
      }

      if (v20 < v22)
      {
        v22 = v20;
      }

      v20 = v23 % v22;
    }

    while (v23 % v22);
  }

  v24 = v18 / v22;
  if (v18 / v22 <= 640)
  {
    *(this + 125) = 1;
    *(this + 25) = v17 / v22;
    *(this + 29) = v24;
    *(this + 18) = 1.0 / v24;
  }

  else
  {
LABEL_41:
    if (v15 == 1650553971)
    {
      v24 = 512;
    }

    else
    {
      v24 = 128;
    }
  }

  v25 = *(this + 26);
  v26 = *(this + 20);
  v27 = fmax(v26, 1.0);
  if (v15 != 1650553971)
  {
    if (v25 < 0x7F)
    {
      v29 = 0.9;
      if (v25 <= 0x5F)
      {
        if (v25 <= 0x3F)
        {
          v30 = 80.0;
        }

        else
        {
          v30 = 90.0;
        }

        if (v25 <= 0x3F)
        {
          v31 = 16;
        }

        else
        {
          v31 = 32;
        }
      }

      else
      {
        v31 = 64;
        v30 = 100.0;
      }
    }

    else
    {
      v30 = dbl_1DE758080[v26 < 1.09];
      v31 = 96;
      v29 = 0.9;
    }

    goto LABEL_54;
  }

  if (v25 > 0x7E)
  {
    v28 = 1152.0;
    v29 = 0.99;
LABEL_51:
    *&v32 = 160.0;
    goto LABEL_52;
  }

  if (v25 > 0x5F)
  {
    v28 = 555.0;
    v29 = 0.98;
    goto LABEL_51;
  }

  if (v25 <= 0x3F)
  {
    v29 = dbl_1DE758090[v25 > 0x1F];
    if (v25 <= 0x1F)
    {
      v30 = 120.0;
    }

    else
    {
      v30 = 144.0;
    }

    v28 = 88.2;
    if (v25 > 0x1F)
    {
      v28 = 192.0;
    }

    goto LABEL_53;
  }

  v28 = 323.4;
  v29 = 0.97;
  *&v32 = 144.0;
LABEL_52:
  v30 = *&v32;
LABEL_53:
  v31 = (vcvtpd_s64_f64(v27 * v28) + 15) & 0xFFFFFFF0;
LABEL_54:
  if (v31 <= 96)
  {
    v33 = 96;
  }

  else
  {
    v33 = v31;
  }

  pthread_mutex_lock(&sInitLocker);
  if (sIsInitialized != 1)
  {
    operator new();
  }

  v34 = *(sSincKernelFactory + 8) - *sSincKernelFactory;
  if (!v34)
  {
LABEL_66:
    operator new();
  }

  v35 = 0;
  v36 = v34 >> 3;
  v37 = 1;
  while (1)
  {
    v38 = *(*sSincKernelFactory + 8 * v35);
    if (*(v38 + 32) == 1.0 / v27 * v29 && *(v38 + 24) == v30 && *(v38 + 12) == v31 && *(v38 + 16) == v24)
    {
      break;
    }

    v35 = v37;
    v13 = v36 > v37++;
    if (!v13)
    {
      goto LABEL_66;
    }
  }

  ++*(v38 + 8);
  *(this + 6) = v38;
  pthread_mutex_unlock(&sInitLocker);
  *(this + 5) = *(this + 6);
  if (*(this + 176) == 1)
  {
    v39 = v33 + 0x2000;
  }

  else
  {
    v39 = vcvtpd_u64_f64(v33 + *(this + 20) * 1024.0);
  }

  *(this + 17) = v39;
  Resampler2::SetPrimeMethod(this, 1);
  v16 = *(this + 17);
LABEL_73:
  v40 = malloc_type_malloc(4 * v16, 0xD58845EBuLL);
  v41 = v40;
  if (v16 && !v40)
  {
    exception = __cxa_allocate_exception(8uLL);
    v51 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v51, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  bzero(v40, 4 * v16);
  *(this + 9) = v41;
  v42 = *(this + 17);
  v43 = malloc_type_malloc(4 * v42, 0xB9652933uLL);
  v44 = v43;
  if (v42 && !v43)
  {
    v52 = __cxa_allocate_exception(8uLL);
    v53 = std::bad_alloc::bad_alloc(v52);
    __cxa_throw(v53, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  bzero(v43, 4 * v42);
  *(this + 10) = v44;
  if (gCAVectorUnitType)
  {
    v45 = 200;
  }

  else
  {
    v45 = -1;
  }

  if ((gCAVectorUnitType & 1) == 0)
  {
    if (getenv("CA_NoVector"))
    {
      fwrite("CA_NoVector set; Vector unit optimized routines will be bypassed\n", 0x41uLL, 1uLL, *MEMORY[0x1E69E9848]);
      *(this + 30) = 0;
      v46 = Resampler2::ConvertLinear;
      if (*(this + 27) == 1818848869)
      {
        goto LABEL_93;
      }

      goto LABEL_89;
    }

    gCAVectorUnitType = 1;
    v45 = 200;
  }

  *(this + 30) = v45;
  v46 = Resampler2::ConvertLinear;
  if (*(this + 27) == 1818848869)
  {
    goto LABEL_93;
  }

  if (v45 >= 1)
  {
    v46 = Resampler2::ConvertSIMD_SmallIntegerRatio;
    if (*(this + 125))
    {
      goto LABEL_93;
    }

    v47 = *(this + 256) == 0;
    v48 = Resampler2::ConvertSIMD<Resampler2::FixedRate>;
    v46 = Resampler2::ConvertSIMD<Resampler2::RampedRate>;
    goto LABEL_90;
  }

LABEL_89:
  v47 = *(this + 256) == 0;
  v48 = Resampler2::ConvertScalar<Resampler2::FixedRate>;
  v46 = Resampler2::ConvertScalar<Resampler2::RampedRate>;
LABEL_90:
  if (v47)
  {
    v46 = v48;
  }

LABEL_93:
  *this = v46;
  *(this + 1) = 0;
  v49 = *MEMORY[0x1E69E9840];
}

void sub_1DE413178(_Unwind_Exception *a1)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  v4 = MEMORY[0x1E12C1730](v1, 0x80C40D6874129);
  ResamplerInitLocker::~ResamplerInitLocker(v4);
  _Unwind_Resume(a1);
}

void Resampler2::~Resampler2(Resampler2 *this)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(this + 16) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = 136315394;
    v16 = "Resampler2.cpp";
    v17 = 1024;
    v18 = 363;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Someone is deleting a Resampler while it is in use.\n", &v15, 0x12u);
  }

  v2 = *(this + 9);
  if (v2)
  {
    free(v2);
    *(this + 9) = 0;
  }

  v3 = *(this + 10);
  if (v3)
  {
    free(v3);
    *(this + 10) = 0;
  }

  pthread_mutex_lock(&sInitLocker);
  v4 = *(this + 5);
  if (v4)
  {
    v5 = sSincKernelFactory;
    v6 = *(v4 + 8) - 1;
    *(v4 + 8) = v6;
    if (!v6)
    {
      v9 = *v5;
      v8 = v5[1];
      if (v8 != *v5)
      {
        v10 = 0;
        v11 = 1;
        while (*(v9 + 8 * v10) != v4)
        {
          v10 = v11;
          if ((v8 - *v5) >> 3 <= v11++)
          {
            goto LABEL_10;
          }
        }

        v13 = v9 + 8 * v10;
        v14 = v8 - (v13 + 8);
        if (v8 != v13 + 8)
        {
          memmove((v9 + 8 * v10), (v13 + 8), v8 - (v13 + 8));
        }

        v5[1] = v13 + v14;
        free(*v4);
        MEMORY[0x1E12C1730](v4, 0x1080C4003DAF236);
      }
    }
  }

LABEL_10:
  pthread_mutex_unlock(&sInitLocker);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DE41339C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t Resampler2::InitializeVarispeedMode(Resampler2 *this)
{
  if ((this + 1) >= 0x20)
  {
    v1 = ((this + 1) >> 5) - 1;
  }

  else
  {
    v1 = 0;
  }

  pthread_mutex_lock(&sInitLocker);
  if (!sVarispeedRefCount[v1])
  {
    v2 = sVarispeedSincKernels[v1];
    if (!v2)
    {
      operator new();
    }

    std::vector<SincKernel *>::reserve(v2, 0x24uLL);
    v3 = vcvtpd_s64_f64(exp2(0 / 36.0 / 1200.0) * 100.0);
    if (v3 - 100 > 0)
    {
      v4 = 0;
      v5 = vdupq_n_s64(v3 - 101);
      v6 = &dword_1EE012638;
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1DE757E30)));
        if (vuzp1_s16(v8, *v5.i8).u8[0])
        {
          *(v6 - 2) = 0;
        }

        if (vuzp1_s16(v8, *&v5).i8[2])
        {
          *(v6 - 1) = 0;
        }

        if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1DE757E20)))).i32[1])
        {
          *v6 = 0;
          v6[1] = 0;
        }

        v4 += 4;
        v6 += 4;
      }

      while (((v3 - 97) & 0xFFFFFFFFFFFFFFFCLL) != v4);
    }

    operator new();
  }

  ++sVarispeedRefCount[v1];
  return pthread_mutex_unlock(&sInitLocker);
}

uint64_t Resampler2::ShutdownVarispeedMode(Resampler2 *this)
{
  v1 = this;
  pthread_mutex_lock(&sInitLocker);
  if ((v1 + 1) >= 0x20)
  {
    v2 = ((v1 + 1) >> 5) - 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sVarispeedRefCount[v2];
  if (v3 >= 1)
  {
    sVarispeedRefCount[v2] = --v3;
  }

  if (!v3)
  {
    v4 = sVarispeedSincKernels[v2];
    if (v4)
    {
      v5 = *v4;
      if (v4[1] != *v4)
      {
        v6 = 0;
        v7 = 1;
        do
        {
          v8 = *(v5 + 8 * v6);
          if (v8)
          {
            free(*v8);
            MEMORY[0x1E12C1730](v8, 0x1080C4003DAF236);
            v4 = sVarispeedSincKernels[v2];
            v5 = *v4;
          }

          v6 = v7++;
        }

        while (v6 < (v4[1] - v5) >> 3);
      }

      v4[1] = v5;
    }
  }

  return pthread_mutex_unlock(&sInitLocker);
}

uint64_t Resampler2::SetVarispeedRate(uint64_t this, double a2)
{
  if (*(this + 176) == 1)
  {
    *(this + 256) = 0;
    *(this + 160) = a2;
    *(this + 168) = 1.0 / a2;
    *(this + 125) = 0;
    v2 = Resampler2::ConvertLinear;
    if (*(this + 108) != 1818848869)
    {
      v2 = Resampler2::ConvertSIMD<Resampler2::FixedRate>;
      if (*(this + 120) <= 0)
      {
        v2 = Resampler2::ConvertScalar<Resampler2::FixedRate>;
      }
    }

    *this = v2;
    *(this + 8) = 0;
    return Resampler2::SetVarispeedSinc(this, a2);
  }

  return this;
}

uint64_t Resampler2::GetNumberOfSourceFrames(Resampler2 *this, unsigned int a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  if ((*(this + 125) & 1) == 0)
  {
    if ((*(this + 124) & 1) == 0)
    {
      v8 = a2;
      if (*(this + 256) == 1)
      {
        v9 = *(this + 29);
        v10 = *(this + 30);
        v11 = v9 + a3;
        if (v8 <= 1000000000.0)
        {
          v12 = a2;
        }

        else
        {
          v12 = 1000000000.0;
        }

        if (v10 <= v11)
        {
          v15 = *(this + 26);
          v16 = (v11 - v10) * v15;
          v17 = *(this + 28);
          v18 = floor(v10 + (v16 + 1000000000.0) / v15);
          v19 = v12 + v11;
          if (v19 >= v18)
          {
            v19 = v18;
          }

          if (v10 <= v19)
          {
            v13 = v17 + v15 * (v19 - v10);
          }

          else
          {
            v13 = *(this + 27) + (v19 - v9) * (*(this + 25) + *(this + 31) * 0.5 * (v19 - v9));
          }

          v14 = v16 + v17;
        }

        else if (v9 <= v11)
        {
          v20 = *(this + 31);
          v21 = *(this + 25);
          v22 = *(this + 27);
          v23 = *(this + 28);
          v14 = v22 + (v11 - v9) * (v21 + v20 * 0.5 * (v11 - v9));
          v24 = v14 + 1000000000.0;
          if (v23 <= v14 + 1000000000.0)
          {
            v26 = 40;
            v27 = (v24 - v23) / *(this + 26);
          }

          else
          {
            v25 = v24 - v22;
            if (v20 == 0.0)
            {
              v26 = 32;
              v27 = v25 / v21;
            }

            else
            {
              v27 = (sqrt(v21 * v21 + (v20 + v20) * v25) - v21) / v20;
              v26 = 32;
            }
          }

          v28 = floor(v27 + *(this + v26 + 200));
          v29 = v12 + v11;
          if (v10 < v28)
          {
            v28 = *(this + 30);
          }

          if (v29 >= v28)
          {
            v29 = v28;
          }

          if (v10 <= v29)
          {
            v13 = (v29 - v10) * *(this + 26) + v23;
          }

          else
          {
            v13 = v22 + (v29 - v9) * (v21 + v20 * 0.5 * (v29 - v9));
          }
        }

        else
        {
          v13 = 1.79769313e308;
          v14 = 0.0;
        }

        v5 = vcvtpd_u64_f64(v13 - v14);
      }

      else
      {
        v5 = *(this + 20) * v8;
      }

      goto LABEL_9;
    }

LABEL_8:
    v5 = a2;
LABEL_9:
    v6 = 1.0;
    if (*(this + 27) != 1818848869)
    {
      LODWORD(v6) = *(*(this + 6) + 12);
      v6 = *&v6 + -1.0;
    }

    v7 = vcvtpd_s64_f64(v6 + *(this + 19) + v5 + -0.0001 - *(this + 16));
    return v7 & ~(v7 >> 31);
  }

  if (*(this + 124))
  {
    goto LABEL_8;
  }

  if (*(this + 27) == 1818848869)
  {
    v3 = 2;
  }

  else
  {
    v3 = *(*(this + 6) + 12);
  }

  v7 = v3 + ~*(this + 16) + (*(this + 25) * a2 + *(this + 24) + *(this + 29) - 1) / *(this + 29);
  return v7 & ~(v7 >> 31);
}

uint64_t Resampler2::PreFlight(Resampler2 *this, unsigned int *a2, unsigned int *a3)
{
  v6 = *a3;
  result = Resampler2::GetNumberOfSourceFrames(this, *a3, 0);
  v8 = *a2;
  if (*(this + 125) == 1 && (*(this + 124) & 1) == 0)
  {
    if (*(this + 27) == 1818848869)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1 - *(*(this + 6) + 12);
    }

    v13 = ((v12 + v8 + *(this + 16)) * *(this + 29) - *(this + 24)) / *(this + 25);
    v11 = v13 & ~(v13 >> 31);
  }

  else
  {
    v9 = 1.0;
    if (*(this + 27) != 1818848869)
    {
      LODWORD(v9) = *(*(this + 6) + 12);
      v9 = *&v9 + -1.0;
    }

    v10 = (*(this + 16) + v8) - v9 - *(this + 19);
    if ((*(this + 124) & 1) == 0)
    {
      v10 = v10 * *(this + 21);
    }

    if (v10 < 0.0)
    {
      v10 = 0.0;
    }

    v11 = vcvtmd_u64_f64(v10 + 0.0001);
  }

  if (result >= v8)
  {
    if (v11 < v6)
    {
      *a3 = v11;
    }
  }

  else
  {
    *a2 = result;
  }

  return result;
}

void *Resampler2::PushConvert(Resampler2 *this, const float *a2, const float *a3, float *a4, float *a5, unsigned int *a6, unsigned int *a7, int a8, unsigned int a9, unsigned int a10)
{
  *(this + 16) = 1;
  v62 = *a6;
  v61 = *a7;
  Resampler2::PreFlight(this, &v62, &v61);
  v16 = v61;
  v50 = a6;
  v51 = a7;
  if (v61)
  {
    v17 = 0;
    v18 = 0;
    v19 = v62;
    v56 = a5;
    v20 = *(this + 16);
    v53 = a3;
    do
    {
      v21 = *(this + 17) - v20;
      if (v21 >= v19)
      {
        v21 = v19;
      }

      v59 = v16;
      v60 = v21;
      v55 = v16;
      Resampler2::PreFlight(this, &v60, &v59);
      v22 = v59;
      v23 = v60;
      v24 = (*(this + 9) + 4 * v20);
      v57 = v17;
      if (a8 == 1)
      {
        v52 = v60;
        v25 = 4 * v60;
        memcpy(v24, &a2[v17], v25);
        v20 = *(this + 16);
        if (a3)
        {
          memcpy((*(this + 10) + 4 * v20), &a3[v17], v25);
          v20 = *(this + 16);
        }

        v23 = v52;
      }

      else if (a3)
      {
        if (v60)
        {
          v26 = (*(this + 10) + 4 * v20);
          v27 = v17 * a8;
          v28 = v60;
          do
          {
            *v24++ = a2[v27];
            *v26++ = a3[v27];
            v27 += a8;
            --v28;
          }

          while (v28);
        }
      }

      else if (v60)
      {
        v29 = v17 * a8;
        v30 = v60;
        do
        {
          *v24++ = a2[v29];
          v29 += a8;
          --v30;
        }

        while (v30);
      }

      *(this + 192) = 0;
      *(this + 16) = v20 + v23;
      if (!v22)
      {
        break;
      }

      v31 = *this;
      v32 = *(this + 1);
      v33 = (this + (v32 >> 1));
      if (v32)
      {
        v31 = *(*v33 + v31);
      }

      v31(v33, a4, v56, v22, a9);
      v34 = &v56[v22 * a9];
      if (!v56)
      {
        v34 = 0;
      }

      v56 = v34;
      *(this + 33) = *(this + 33) + v22;
      v35 = *(this + 19);
      v36 = v35;
      v37 = 4 * (*(this + 16) - v35);
      memmove(*(this + 9), (*(this + 9) + 4 * v35), v37);
      if (a5)
      {
        memmove(*(this + 10), (*(this + 10) + 4 * v36), v37);
      }

      *(this + 19) = *(this + 19) - v36;
      v20 = *(this + 16) - v36;
      *(this + 16) = v20;
      *(this + 23) -= v36;
      *(this + 16) = *(this + 16) + v36;
      if (*(this + 125) == 1)
      {
        *(this + 24) -= *(*(this + 6) + 16) * v36;
      }

      v19 -= v23;
      a4 += v22 * a9;
      v17 = v23 + v57;
      v18 += v22;
      v16 = v55 - v22;
      a3 = v53;
    }

    while (v55 != v22);
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v38 = v17;
  v39 = *v50;
  result = Resampler2::GetNumberOfSourceFrames(this, 1u, v18);
  v41 = v39 - v38;
  if (v39 != v38 && v41 <= result)
  {
    if (a8 == 1)
    {
      result = memcpy((*(this + 9) + 4 * *(this + 16)), &a2[v38], 4 * (v39 - v38));
      if (a3)
      {
        result = memcpy((*(this + 10) + 4 * *(this + 16)), &a3[v38], 4 * (v39 - v38));
      }
    }

    else
    {
      v43 = *(this + 16);
      v44 = (*(this + 9) + 4 * v43);
      if (a3)
      {
        v45 = (*(this + 10) + 4 * v43);
        v46 = v38 * a8;
        v47 = v39 - v38;
        do
        {
          *v44++ = a2[v46];
          *v45++ = a3[v46];
          v46 += a8;
          --v47;
        }

        while (v47);
      }

      else
      {
        v48 = v38 * a8;
        v49 = v39 - v38;
        do
        {
          *v44++ = a2[v48];
          v48 += a8;
          --v49;
        }

        while (v49);
      }
    }

    *(this + 16) += v41;
  }

  *v51 = v18;
  *(this + 16) = 0;
  return result;
}

const __CFString *CACFString::GetCString(const __CFString *theString, __CFString *a2, char *a3, unsigned int *a4)
{
  if (*a3)
  {
    v6 = theString;
    if (theString)
    {
      usedBufLen = 0;
      v10.length = CFStringGetLength(theString);
      v10.location = 0;
      theString = CFStringGetBytes(v6, v10, 0x8000100u, 0, 0, a2, (*a3 - 1), &usedBufLen);
      v7 = usedBufLen;
      *(&a2->isa + usedBufLen) = 0;
      v8 = v7 + 1;
    }

    else
    {
      LOBYTE(a2->isa) = 0;
      v8 = 1;
    }

    *a3 = v8;
  }

  return theString;
}

void AMCP::Graph::Manifest_Log::get_queue(AMCP::Graph::Manifest_Log *this)
{
  v2[42] = *MEMORY[0x1E69E9840];
  {
    AMCP::Utility::Dispatch_Queue::create_serial_with_workloop(v2, "Manifest Log Queue");
    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(AMCP::Graph::Manifest_Log::get_queue(void)::s_instance, v2);
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v2);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void AMCP::Graph::Manifest_Log::add_message(uint64_t a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  std::mutex::lock((a1 + 48));
  v37 = &a9;
  vsnprintf(AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::temp_buffer, 0x7D0uLL, a3, &a9);
  v12 = strlen(AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::temp_buffer);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v31) = v12;
  if (v12)
  {
    memcpy(&__dst, AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::temp_buffer, v12);
  }

  *(&__dst + v13) = 0;
  v14 = __dst;
  v15 = v30;
  v28[0] = v31;
  *(v28 + 3) = *(&v31 + 3);
  v16 = SHIBYTE(v31);
  std::mutex::unlock((a1 + 48));
  AMCP::Graph::Manifest_Log::get_queue(v17);
  std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v24, *a1, *(a1 + 8));
  v26 = a2;
  if (v16 < 0)
  {
    std::string::__init_copy_ctor_external(&v27, v14, v15);
  }

  else
  {
    v27.__r_.__value_.__r.__words[0] = v14;
    v27.__r_.__value_.__l.__size_ = v15;
    LODWORD(v27.__r_.__value_.__r.__words[2]) = v28[0];
    *(&v27.__r_.__value_.__r.__words[2] + 3) = *(v28 + 3);
    *(&v27.__r_.__value_.__s + 23) = v16;
  }

  v18 = atomic_load(&unk_1ECDAB3F8);
  if (v18)
  {
    atomic_store(1u, byte_1ECDAB3F9);
  }

  if (byte_1ECDAB520 != 1)
  {
    operator new();
  }

  v19 = v24;
  v20 = v25;
  v37 = v24;
  v38 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = v26;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
    v19 = v37;
    v20 = v38;
  }

  else
  {
    v40 = v27;
  }

  v21 = qword_1ECDAB518;
  v22 = AMCP::Graph::Manifest_Log::get_queue(void)::s_instance[0];
  __dst = MEMORY[0x1E69E9820];
  v30 = 1174405120;
  v31 = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZNS_5Graph12Manifest_Log11add_messageENS3_21Manifest_Message_TypeEPKczE3__0EEvOT__block_invoke;
  v32 = &__block_descriptor_tmp_5570;
  v33 = v19;
  v34 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v35 = v39;
  v23 = SHIBYTE(v40.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v40;
  }

  dispatch_group_async(v21, v22, &__dst);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v23 < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v16 < 0)
  {
    operator delete(v14);
  }
}

void sub_1DE41453C(void *a1)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::$_0,std::default_delete<AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x1E12C1730](v2, 0x1032C4046F781F9);
  }

  return a1;
}

void applesauce::dispatch::v1::async<AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::$_0 &>(dispatch_queue_s *,AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::$_0 &)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = a1;
  v1 = *a1;
  std::__list_imp<std::pair<AMCP::Graph::Manifest_Message_Type,std::string>>::__create_node[abi:ne200100]<AMCP::Graph::Manifest_Message_Type const&,std::string const&>();
}

void sub_1DE414790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::$_0,std::default_delete<AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__list_imp<std::pair<AMCP::Graph::Manifest_Message_Type,std::string>>::__delete_node[abi:ne200100](void **__p)
{
  if (*(__p + 47) < 0)
  {
    operator delete(__p[3]);
  }

  operator delete(__p);
}

void __destroy_helper_block_e8_32c82_ZTSZN4AMCP5Graph12Manifest_Log11add_messageENS0_21Manifest_Message_TypeEPKczE3__0(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void __copy_helper_block_e8_32c82_ZTSZN4AMCP5Graph12Manifest_Log11add_messageENS0_21Manifest_Message_TypeEPKczE3__0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a2 + 48);
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v3 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v3;
  }
}

void sub_1DE41493C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10applesauce8dispatch2v19sync_implIRZN4AMCP5Graph12Manifest_Log4dumpEvE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke(_BOOL8 a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = **(a1 + 32);
  v2 = v1 + 16;
  v3 = *(v1 + 24);
  if (v3 != v1 + 16)
  {
    do
    {
      v13 = 0;
      __p = 0uLL;
      v4 = *(v3 + 16);
      if (v4 > 3)
      {
        if (v4 <= 5)
        {
          if (v4 == 4)
          {
            HIBYTE(v13) = 6;
            qmemcpy(&__p, "Buffer", 6);
          }

          else
          {
            HIBYTE(v13) = 13;
            qmemcpy(&__p, "Swap Manifest", 13);
          }

          goto LABEL_20;
        }

        if (v4 == 6)
        {
          HIBYTE(v13) = 11;
          *(&__p + 7) = 1701669204;
          v5 = *"Anchor Time";
          goto LABEL_19;
        }

        if (v4 == 7)
        {
          HIBYTE(v13) = 11;
          *(&__p + 7) = 1702521171;
          v5 = *"Change Size";
LABEL_19:
          *&__p = v5;
        }
      }

      else
      {
        if (v4 <= 1)
        {
          if (v4)
          {
            if (v4 == 1)
            {
              HIBYTE(v13) = 4;
              LODWORD(__p) = 1886352467;
            }
          }

          else
          {
            HIBYTE(v13) = 5;
            qmemcpy(&__p, "Start", 5);
          }

          goto LABEL_20;
        }

        if (v4 == 2)
        {
          HIBYTE(v13) = 8;
          v5 = 0x64616F6C7265764FLL;
          goto LABEL_19;
        }

        HIBYTE(v13) = 7;
        qmemcpy(&__p, "Enqueue", 7);
      }

LABEL_20:
      v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v6 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      else
      {
        v9 = *v8;
      }

      a1 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (a1)
      {
        v10 = v3 + 24;
        if (*(v3 + 47) < 0)
        {
          v10 = *(v3 + 24);
        }

        *buf = 136316162;
        v15 = "Manifest_Log.cpp";
        v16 = 1024;
        v17 = 93;
        v18 = 1040;
        v19 = 14;
        v20 = 2080;
        p_p = &__p;
        v22 = 2080;
        v23 = v10;
        _os_log_debug_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_DEBUG, "%32s:%-5d %14.14s: %s", buf, 0x2Cu);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p);
        }
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t AMCP::get_control_property_traits_list(AMCP *this)
{
  {
    AMCP::get_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_control_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_control_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_control_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_control_property_traits_list(void)::$_0 &&>>()
{
  v20[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1668506480, 1, 0, 0, &AMCP::Property_Traits<1668506480u>::k_valid_scopes, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, 0, 1668506480, 18);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1667591277, 1, 0, 0, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, 0, 1667591277, 9);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v20, 1668441199, 1, 0, 0, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, &AMCP::Property_Traits<1935962742u>::k_valid_scopes, 0, 0, 2);
  operator new();
}

void sub_1DE415294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9);
  v15 = 1008;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t AMCP::get_slider_control_property_traits_list(AMCP *this)
{
  {
    AMCP::get_slider_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_slider_control_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_slider_control_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_slider_control_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_slider_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_slider_control_property_traits_list(void)::$_0 &&>>()
{
  v22[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1668506480, 1, 0, 0, &AMCP::Property_Traits<1668506480u>::k_valid_scopes, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, 0, 1668506480, 18);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1667591277, 1, 0, 0, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, 0, 1667591277, 9);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1668441199, 1, 0, 0, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, &AMCP::Property_Traits<1935962742u>::k_valid_scopes, 0, 0, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v21, 1935962742, 1, 0, 1, &AMCP::Property_Traits<1935962742u>::k_valid_scopes, &AMCP::Property_Traits<1935962738u>::k_valid_scopes, 0, 1935962742, 24);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v22, 1935962738, 1, 0, 0, &AMCP::Property_Traits<1935962738u>::k_valid_scopes, &AMCP::Property_Traits<1818456950u>::k_valid_scopes, 0, 1935962738, 13);
  operator new();
}

void sub_1DE4159AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9);
  v15 = 1104;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t AMCP::get_level_control_property_traits_list(AMCP *this)
{
  {
    AMCP::get_level_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_level_control_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_level_control_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_level_control_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_level_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_level_control_property_traits_list(void)::$_0 &&>>()
{
  v23[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1668506480, 1, 0, 0, &AMCP::Property_Traits<1668506480u>::k_valid_scopes, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, 0, 1668506480, 18);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1667591277, 1, 0, 0, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, 0, 1667591277, 9);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1668441199, 1, 0, 0, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, &AMCP::Property_Traits<1935962742u>::k_valid_scopes, 0, 0, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v21, 1818456950, 1, 0, 1, &AMCP::Property_Traits<1818456950u>::k_valid_scopes, &AMCP::Property_Traits<1818453110u>::k_valid_scopes, 0, 1818456950, 10);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v22, 1818453110, 1, 0, 1, &AMCP::Property_Traits<1818453110u>::k_valid_scopes, &AMCP::Property_Traits<1818453106u>::k_valid_scopes, 0, 1818453110, 10);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v23, 1818453106, 1, 0, 0, &AMCP::Property_Traits<1818453106u>::k_valid_scopes, &AMCP::Property_Traits<1650685548u>::k_valid_scopes, 0, 1818453106, 26);
  operator new();
}

void sub_1DE4160EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9);
  v15 = 1152;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t AMCP::get_BOOLean_control_property_traits_list(AMCP *this)
{
  {
    AMCP::get_BOOLean_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_BOOLean_control_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_BOOLean_control_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_BOOLean_control_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_BOOLean_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_BOOLean_control_property_traits_list(void)::$_0 &&>>()
{
  v21[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1668506480, 1, 0, 0, &AMCP::Property_Traits<1668506480u>::k_valid_scopes, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, 0, 1668506480, 18);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1667591277, 1, 0, 0, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, 0, 1667591277, 9);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1668441199, 1, 0, 0, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, &AMCP::Property_Traits<1935962742u>::k_valid_scopes, 0, 0, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v21, 1650685548, 1, 0, 1, &AMCP::Property_Traits<1650685548u>::k_valid_scopes, &AMCP::Property_Traits<1935893353u>::k_valid_scopes, 0, 1650685548, 2);
  operator new();
}

void sub_1DE4167D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9);
  v15 = 1056;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t AMCP::get_selector_control_property_traits_list(AMCP *this)
{
  {
    AMCP::get_selector_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_selector_control_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_selector_control_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_selector_control_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_selector_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_selector_control_property_traits_list(void)::$_0 &&>>()
{
  v23[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1668506480, 1, 0, 0, &AMCP::Property_Traits<1668506480u>::k_valid_scopes, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, 0, 1668506480, 18);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1667591277, 1, 0, 0, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, 0, 1667591277, 9);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1668441199, 1, 0, 0, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, &AMCP::Property_Traits<1935962742u>::k_valid_scopes, 0, 0, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v21, 1935893353, 1, 0, 1, &AMCP::Property_Traits<1935893353u>::k_valid_scopes, &AMCP::Property_Traits<1935893357u>::k_valid_scopes, 0, 1935893353, 20);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v22, 1935893357, 1, 0, 0, &AMCP::Property_Traits<1935893357u>::k_valid_scopes, &AMCP::Property_Traits<1935892841u>::k_valid_scopes, 0, 0, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v23, 1935892841, 1, 0, 0, &AMCP::Property_Traits<1935892841u>::k_valid_scopes, &AMCP::Property_Traits<1936745334u>::k_valid_scopes, 0, 0, 19);
  operator new();
}

void sub_1DE416F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9);
  v15 = 1152;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t AMCP::get_stereo_pan_control_property_traits_list(AMCP *this)
{
  {
    AMCP::get_stereo_pan_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_stereo_pan_control_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_stereo_pan_control_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_stereo_pan_control_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_stereo_pan_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_stereo_pan_control_property_traits_list(void)::$_0 &&>>()
{
  v22[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1668506480, 1, 0, 0, &AMCP::Property_Traits<1668506480u>::k_valid_scopes, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, 0, 1668506480, 18);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1667591277, 1, 0, 0, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, 0, 1667591277, 9);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1668441199, 1, 0, 0, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, &AMCP::Property_Traits<1935962742u>::k_valid_scopes, 0, 0, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v21, 1936745334, 1, 0, 1, &AMCP::Property_Traits<1936745334u>::k_valid_scopes, &AMCP::Property_Traits<1936745315u>::k_valid_scopes, 0, 1936745334, 10);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v22, 1936745315, 1, 0, 0, &AMCP::Property_Traits<1936745315u>::k_valid_scopes, &AMCP::Property_Traits<1853188452u>::k_valid_scopes, 0, 1936745315, 21);
  operator new();
}

void sub_1DE41762C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9);
  v15 = 1104;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

AMCP::Log::AMCP_Scope_Registry *AMCP::Utility::configure_thread_for_realtime(_opaque_pthread_t *this, _opaque_pthread_t *a2, int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a2 <= 0x4B0)
  {
    v4 = 1200;
  }

  else
  {
    v4 = a2;
  }

  if (v4 >= 0x124F80)
  {
    v5 = 1200000;
  }

  else
  {
    v5 = v4;
  }

  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  *policy_info = v6 | (v5 << 32);
  v25 = v4 | 0x100000000;
  v7 = pthread_mach_thread_np(this);
  result = thread_policy_set(v7, 2u, policy_info, 4u);
  if (result)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316930;
      v27 = "Thread_Utilities.cpp";
      v28 = 1024;
      v29 = 90;
      v30 = 2080;
      v31 = "not (kernel_error == 0)";
      v32 = 2048;
      *v33 = a2;
      *&v33[8] = 1024;
      *v34 = policy_info[0];
      *&v34[4] = 1024;
      *&v34[6] = policy_info[1];
      *&v34[10] = 1024;
      v35 = v25;
      v36 = 1024;
      v37 = HIDWORD(v25);
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s AMCP::Utility::Thread_Utilities::configure_thread_for_realtime - thread_policy_set failed. \tCycle Size: %llu \tThread Parameters: \t%u \t%u \t%u \t%d", buf, 0x3Eu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("AMCP::Utility::Thread_Utilities::configure_thread_for_realtime - thread_policy_set failed. \tCycle Size: %llu \tThread Parameters: \t%u \t%u \t%u \t%d", &v15, a2, policy_info[0], policy_info[1], v25, HIDWORD(v25));
    std::logic_error::logic_error(&v16, &v15);
    v16.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5991430;
    v18 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v17);
    *&v33[2] = "kern_return_t AMCP::Utility::configure_thread_for_realtime(pthread_t, uint64_t, BOOL)";
    *v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Utility/Thread_Utilities.cpp";
    *&v34[8] = 90;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE417984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v32 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a30);
  MEMORY[0x1E12C0F00](&a28);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (v30)
  {
    __cxa_free_exception(v31);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v32 - 145));
  _Unwind_Resume(a1);
}

AMCP::Log::AMCP_Scope_Registry *AMCP::Utility::configure_thread_for_normal_priority(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  policy_info = 1;
  v2 = pthread_mach_thread_np(this);
  result = thread_policy_set(v2, 1u, &policy_info, 1u);
  if (result)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "Thread_Utilities.cpp";
      v22 = 1024;
      v23 = 103;
      v24 = 2080;
      v25 = "not (kernel_error == 0)";
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s AMCP::Utility::Thread_Utilities::configure_thread_for_normal_priority - thread_policy_set failed.", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("AMCP::Utility::Thread_Utilities::configure_thread_for_normal_priority - thread_policy_set failed.", &v10);
    std::logic_error::logic_error(&v11, &v10);
    v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v12, &v11);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    v12.__vftable = &unk_1F5991430;
    v13 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v12);
    v26 = "kern_return_t AMCP::Utility::configure_thread_for_normal_priority(pthread_t)";
    v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Utility/Thread_Utilities.cpp";
    v28 = 103;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE417CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 117));
  _Unwind_Resume(a1);
}

BOOL AMCP::Utility::is_thread_configured_for_realtime(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = pthread_self();
  if (v3 != this)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      buf = 136315650;
      v30 = "Thread_Utilities.cpp";
      v31 = 1024;
      v32 = 112;
      v33 = 2080;
      v34 = "not (in_thread == pthread_self())";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s is_thread_configured_for_realtime only works when in_thread == pthread_self()", &buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&get_default);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("is_thread_configured_for_realtime only works when in_thread == pthread_self()", &v21);
    std::logic_error::logic_error(&v22, &v21);
    v22.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v23, &v22);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = -1;
    v23.__vftable = &unk_1F5991430;
    v24 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&buf, &v23);
    v35 = "BOOL AMCP::Utility::is_thread_configured_for_realtime(pthread_t)";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Utility/Thread_Utilities.cpp";
    v37 = 112;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v20);
  }

  policy_infoCnt = 1;
  get_default = 0;
  v4 = pthread_mach_thread_np(this);
  v5 = thread_policy_get(v4, 1u, &policy_info, &policy_infoCnt, &get_default);
  if (v5)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      buf = 136315650;
      v30 = "Thread_Utilities.cpp";
      v31 = 1024;
      v32 = 121;
      v33 = 2080;
      v34 = "not (the_error == 0)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", &buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v16);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v21);
    std::logic_error::logic_error(&v22, &v21);
    v22.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v23, &v22);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = -1;
    v23.__vftable = &unk_1F5991430;
    v24 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&buf, &v23);
    v35 = "BOOL AMCP::Utility::is_thread_configured_for_realtime(pthread_t)";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Utility/Thread_Utilities.cpp";
    v37 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v20);
  }

  result = get_default != 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE41820C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, __int16 a12, char a13, char a14, int a15, int a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, char a34)
{
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v35 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a34);
  MEMORY[0x1E12C0F00](&a32);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a11)
  {
    __cxa_free_exception(v34);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a14);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *AMCP::Utility::configure_syscall_mask_for_realtime_priority(AMCP::Utility *this)
{
  v1 = debug_syscall_reject();
  if (!v1)
  {
    return v1;
  }

  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v5 = *(v2 + 8);
    v6 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v6 + 16) = 0;
    *(v6 + 20) = 1;
    *(v6 + 24) = "Thread_Utilities.cpp";
    *(v6 + 32) = 156;
    *v6 = &unk_1F596D9D0;
    *(v6 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v5, v6);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Utility::configure_syscall_mask_for_realtime_priority(void)::$_0,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v10 = 136315394;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d AMCP::Utility::Thread_Utilities::configure_syscall_mask_for_realtime_priority - syscall set mask for real time priority failed", &v10, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<AMCP::Utility::configure_syscall_mask_for_realtime_priority(void)::$_0,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *AMCP::Utility::configure_syscall_mask_for_normal_priority(AMCP::Utility *this)
{
  v1 = debug_syscall_reject();
  if (!v1)
  {
    return v1;
  }

  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v5 = *(v2 + 8);
    v6 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v6 + 16) = 0;
    *(v6 + 20) = 1;
    *(v6 + 24) = "Thread_Utilities.cpp";
    *(v6 + 32) = 181;
    *v6 = &unk_1F596DA28;
    *(v6 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v5, v6);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Utility::configure_syscall_mask_for_normal_priority(void)::$_0,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v10 = 136315394;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d AMCP::Utility::Thread_Utilities::configure_syscall_mask_for_normal_priority - syscall set mask for normal priority failed", &v10, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<AMCP::Utility::configure_syscall_mask_for_normal_priority(void)::$_0,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_AHPDevice::GetNearestStartTime(HALS_AHPDevice *this, AudioTimeStamp *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 160))(*(*(this + 182) + 32), *(this + 4), a2, a3);
  if (result)
  {
    v7[0] = BYTE3(result);
    v7[1] = BYTE2(result);
    v7[2] = BYTE1(result);
    v6 = result;
    v7[3] = result;
    v7[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v9 = "HALS_AHPPlugIn.cpp";
      v10 = 1024;
      v11 = 210;
      v12 = 1024;
      v13 = v6;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::GetNearestStartTime: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v6;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_AHPDevice::TranslateTime(HALS_AHPDevice *this, const AudioTimeStamp *a2, AudioTimeStamp *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 96))(*(*(this + 182) + 32), *(this + 4), a2, a3);
  if (result)
  {
    v7[0] = BYTE3(result);
    v7[1] = BYTE2(result);
    v7[2] = BYTE1(result);
    v6 = result;
    v7[3] = result;
    v7[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v9 = "HALS_AHPPlugIn.cpp";
      v10 = 1024;
      v11 = 204;
      v12 = 1024;
      v13 = v6;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::TranslateTime: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v6;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_AHPDevice::GetCurrentTime(HALS_AHPDevice *this, AudioTimeStamp *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 88))(*(*(this + 182) + 32), *(this + 4), a2);
  if (result)
  {
    v6[0] = BYTE3(result);
    v6[1] = BYTE2(result);
    v6[2] = BYTE1(result);
    v5 = result;
    v6[3] = result;
    v6[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v8 = "HALS_AHPPlugIn.cpp";
      v9 = 1024;
      v10 = 198;
      v11 = 1024;
      v12 = v5;
      v13 = 2080;
      v14 = v6;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::DeviceGetCurrentTime: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v5;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_AHPDevice::Server_Internal_StopIOProcID(HALS_AHPDevice *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v15 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 72))(*(*(this + 182) + 32), *(this + 4), a2);
  if (result)
  {
    v6[0] = BYTE3(result);
    v6[1] = BYTE2(result);
    v6[2] = BYTE1(result);
    v5 = result;
    v6[3] = result;
    v6[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v8 = "HALS_AHPPlugIn.cpp";
      v9 = 1024;
      v10 = 186;
      v11 = 1024;
      v12 = v5;
      v13 = 2080;
      v14 = v6;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::StopIOProc: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v5;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_AHPDevice::Server_Internal_StartIOProcIDAtTime(HALS_AHPDevice *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), AudioTimeStamp *a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 152))(*(*(this + 182) + 32), *(this + 4), a2, a3, a4);
  if (result)
  {
    v8[0] = BYTE3(result);
    v8[1] = BYTE2(result);
    v8[2] = BYTE1(result);
    v7 = result;
    v8[3] = result;
    v8[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v10 = "HALS_AHPPlugIn.cpp";
      v11 = 1024;
      v12 = 180;
      v13 = 1024;
      v14 = v7;
      v15 = 2080;
      v16 = v8;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::StartIOProcAtTime: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v7;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_AHPDevice::Server_Internal_StartIOProcID(HALS_AHPDevice *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v15 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 64))(*(*(this + 182) + 32), *(this + 4), a2);
  if (result)
  {
    v6[0] = BYTE3(result);
    v6[1] = BYTE2(result);
    v6[2] = BYTE1(result);
    v5 = result;
    v6[3] = result;
    v6[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v8 = "HALS_AHPPlugIn.cpp";
      v9 = 1024;
      v10 = 174;
      v11 = 1024;
      v12 = v5;
      v13 = 2080;
      v14 = v6;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::StartIOProc: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v5;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_AHPDevice::Server_Internal_RemoveIOProc(HALS_AHPDevice *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v15 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 56))(*(*(this + 182) + 32), *(this + 4), a2);
  if (result)
  {
    v6[0] = BYTE3(result);
    v6[1] = BYTE2(result);
    v6[2] = BYTE1(result);
    v5 = result;
    v6[3] = result;
    v6[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v8 = "HALS_AHPPlugIn.cpp";
      v9 = 1024;
      v10 = 168;
      v11 = 1024;
      v12 = v5;
      v13 = 2080;
      v14 = v6;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::RemoveIOProc: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v5;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_AHPDevice::Server_Internal_AddIOProc(HALS_AHPDevice *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 48))(*(*(this + 182) + 32), *(this + 4), a2, a3);
  if (result)
  {
    v7[0] = BYTE3(result);
    v7[1] = BYTE2(result);
    v7[2] = BYTE1(result);
    v6 = result;
    v7[3] = result;
    v7[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v9 = "HALS_AHPPlugIn.cpp";
      v10 = 1024;
      v11 = 162;
      v12 = 1024;
      v13 = v6;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::AddIOProc: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v6;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_AHPDevice::Server_Internal_DestroyIOProcID(HALS_AHPDevice *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v15 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 232))(*(*(this + 182) + 32), *(this + 4), a2);
  if (result)
  {
    v6[0] = BYTE3(result);
    v6[1] = BYTE2(result);
    v6[2] = BYTE1(result);
    v5 = result;
    v6[3] = result;
    v6[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v8 = "HALS_AHPPlugIn.cpp";
      v9 = 1024;
      v10 = 156;
      v11 = 1024;
      v12 = v5;
      v13 = 2080;
      v14 = v6;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::DeviceCreateIOProcID: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v5;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_AHPDevice::Server_Internal_CreateIOProcIDWithBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = (*(**(*(a1 + 1456) + 32) + 240))(*(*(a1 + 1456) + 32), &v8, *(a1 + 16), a2, a3);
  if (v3)
  {
    v9[0] = HIBYTE(v3);
    v9[1] = BYTE2(v3);
    v9[2] = BYTE1(v3);
    v7 = v3;
    v9[3] = v3;
    v9[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v11 = "HALS_AHPPlugIn.cpp";
      v12 = 1024;
      v13 = 138;
      v14 = 1024;
      v15 = v7;
      v16 = 2080;
      v17 = v9;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::DeviceCreateIOProcIDWithBlock: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v7;
  }

  result = v8;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_AHPDevice::Server_Internal_CreateIOProcID(HALS_AHPDevice *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = (*(**(*(this + 182) + 32) + 224))(*(*(this + 182) + 32), *(this + 4), a2, a3, &v8);
  if (v3)
  {
    v9[0] = HIBYTE(v3);
    v9[1] = BYTE2(v3);
    v9[2] = BYTE1(v3);
    v7 = v3;
    v9[3] = v3;
    v9[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v11 = "HALS_AHPPlugIn.cpp";
      v12 = 1024;
      v13 = 132;
      v14 = 1024;
      v15 = v7;
      v16 = 2080;
      v17 = v9;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::DeviceCreateIOProcID: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v7;
  }

  result = v8;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_AHPDevice::SetPropertyData(HALS_AHPDevice *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v23 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "HALS_AHPDevice.cpp";
      v21 = 1024;
      v22 = 231;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPDevice::SetPropertyData: the property is not settable", &v19, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v15 = *(*(this + 182) + 32);
  v16 = *MEMORY[0x1E69E9840];

  return HALS_AHPPlugIn::ObjectSetPropertyData(v15, a2, a3, a6, a7, a4, a5);
}

void HALS_AHPDevice::GetPropertyData(HALS_AHPDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, uint64_t a7, int *a8, AudioObjectPropertyAddress *a9)
{
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1869638758)
  {
    v18 = mSelector == 1650682995;
    v19 = 1668047219;
  }

  else
  {
    v18 = mSelector == 1869638759 || mSelector == 1937007734;
    v19 = 1870098020;
  }

  if (v18 || mSelector == v19)
  {

    HALS_Device::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    *a5 = a4;
    v21 = *(*(this + 182) + 32);

    HALS_AHPPlugIn::ObjectGetPropertyData(v21, a2, a3, a7, a8, a5, a6);
  }
}

uint64_t HALS_AHPDevice::GetPropertyDataSize(HALS_Device_HostedDSP **this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, _DWORD *a5, AudioObjectPropertyAddress *a6)
{
  if (((*(*this + 12))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1869638758)
  {
    v14 = mSelector == 1650682995;
    v15 = 1668047219;
  }

  else
  {
    v14 = mSelector == 1869638759 || mSelector == 1937007734;
    v15 = 1870098020;
  }

  if (v14 || mSelector == v15)
  {

    return HALS_Device::GetPropertyDataSize(this, v12, a3, a4, a5, a6);
  }

  else
  {
    v18 = *(this[182] + 4);

    return HALS_AHPPlugIn::ObjectGetPropertyDataSize(v18, a2, a3, a4, a5);
  }
}

uint64_t HALS_AHPDevice::IsPropertySettable(HALS_AHPDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, const AudioObjectPropertyAddress *a4)
{
  if (((*(*this + 96))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1869638758)
  {
    v10 = mSelector == 1650682995;
    v11 = 1668047219;
  }

  else
  {
    v10 = mSelector == 1869638759 || mSelector == 1937007734;
    v11 = 1870098020;
  }

  if (v10 || mSelector == v11)
  {

    return HALS_Device::IsPropertySettable(this, v8, a3, a4);
  }

  else
  {
    v14 = *(*(this + 182) + 32);

    return HALS_AHPPlugIn::ObjectIsPropertySettable(v14, a2, a3);
  }
}

uint64_t HALS_AHPDevice::HasProperty(HALS_AHPDevice *this, unsigned int a2, AudioObjectPropertyAddress *a3, AudioObjectPropertyAddress *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1869638758)
  {
    v6 = mSelector == 1650682995;
    v7 = 1668047219;
  }

  else
  {
    v6 = mSelector == 1869638759 || mSelector == 1937007734;
    v7 = 1870098020;
  }

  if (!v6 && mSelector != v7)
  {
    return (*(**(*(this + 182) + 32) + 184))(*(*(this + 182) + 32)) != 0;
  }

  return HALS_Device::HasProperty(this, a2, a3, a4);
}

void HALS_AHPDevice::~HALS_AHPDevice(HALS_AHPDevice *this)
{
  HALS_Device::~HALS_Device(this);

  JUMPOUT(0x1E12C1730);
}

void HALS_AHPDevice::Activate(const __CFString **this)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = *" diubolg";
  v11 = 0;
  v2 = *(this + 4);
  *buf = 0;
  ((*this)[3].length)(this, v2, &v10, 8, &v11 + 4, buf, 0, 0, 0);
  v8 = *buf;
  v9 = 1;
  if (!*buf)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_AHPDevice.cpp";
      v13 = 1024;
      v14 = 44;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPDevice::Activate: no UID", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  CACFString::operator=((this + 13), &v8);
  v4 = this[13];
  if (v4)
  {
    v5 = CFStringGetLength(v4) + 1;
    v4 = this[13];
  }

  else
  {
    v5 = 1;
  }

  *buf = v5;
  CACFString::GetCString(v4, (this + 164), buf, v3);
  HALS_Device::Activate(this);
  CACFString::~CACFString(&v8);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t HALS_AHPStream::SetPropertyData(HALS_AHPStream *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v21 = mSelector == 1937007734;
    v22 = 1869638759;
  }

  else
  {
    v21 = mSelector == 1650682995;
    v22 = 1668047219;
  }

  if (v21 || mSelector == v22)
  {
    HALS_Object::SetPropertyData(this, a2, a3, v16, v17, v18, v19, a8);
  }

  v24 = *(*(this + 9) + 32);

  return HALS_AHPPlugIn::ObjectSetPropertyData(v24, a2, a3, a6, a7, a4, a5);
}

uint64_t HALS_AHPStream::GetPropertyData(HALS_AHPStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v19 = mSelector == 1937007734;
    v20 = 1869638759;
  }

  else
  {
    v19 = mSelector == 1650682995;
    v20 = 1668047219;
  }

  if (v19 || mSelector == v20)
  {

    return HALS_Object::GetPropertyData(this, v17, a3, a4, a5, a6);
  }

  else
  {
    *a5 = a4;
    v23 = *(*(this + 9) + 32);

    return HALS_AHPPlugIn::ObjectGetPropertyData(v23, a2, a3, a7, a8, a5, a6);
  }
}

uint64_t HALS_AHPStream::GetPropertyDataSize(HALS_AHPStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  v11 = (*(*this + 96))(this, a2, a3, a6);
  if ((v11 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v14 = mSelector == 1937007734;
    v15 = 1869638759;
  }

  else
  {
    v14 = mSelector == 1650682995;
    v15 = 1668047219;
  }

  if (v14 || mSelector == v15)
  {

    return HALS_Object::GetPropertyDataSize(v11, v12, a3);
  }

  else
  {
    v18 = *(*(this + 9) + 32);

    return HALS_AHPPlugIn::ObjectGetPropertyDataSize(v18, a2, a3, a4, a5);
  }
}

uint64_t HALS_AHPStream::IsPropertySettable(HALS_AHPStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  v7 = (*(*this + 96))(this, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v10 = mSelector == 1937007734;
    v11 = 1869638759;
  }

  else
  {
    v10 = mSelector == 1650682995;
    v11 = 1668047219;
  }

  if (v10 || mSelector == v11)
  {

    return HALS_Object::IsPropertySettable(v7, v8, a3);
  }

  else
  {
    v14 = *(*(this + 9) + 32);

    return HALS_AHPPlugIn::ObjectIsPropertySettable(v14, a2, a3);
  }
}

BOOL HALS_AHPStream::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *a3;
  result = 1;
  if (*a3 > 1869638758)
  {
    v6 = v4 == 1869638759;
    v7 = 1937007734;
  }

  else
  {
    v6 = v4 == 1650682995;
    v7 = 1668047219;
  }

  if (!v6 && v4 != v7)
  {
    return (*(**(*(a1 + 72) + 32) + 184))(*(*(a1 + 72) + 32)) != 0;
  }

  return result;
}

void HALS_AHPStream::~HALS_AHPStream(HALS_AHPStream *this)
{
  HALS_Stream::~HALS_Stream(this);

  JUMPOUT(0x1E12C1730);
}

void HALS_AHPStream::Activate(HALS_AHPStream *this)
{
  v5.mElement = 0;
  *&v5.mSelector = *"ridsbolg";
  v3 = 4;
  v4 = 0;
  HALS_AHPPlugIn::ObjectGetPropertyData(*(*(this + 9) + 32), *(this + 4), &v5, 0, 0, &v3, &v4);
  *(this + 52) = v4 != 0;
  HALS_Object::Activate(this, v2);
}

uint64_t HALS_AHPControl::SetPropertyData(HALS_AHPControl *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v15 = *(this + 5);
  if (v15 == 1986817381 || v15 == 1836414053)
  {
    operator new();
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    if (mSelector == 1937007734)
    {
      goto LABEL_15;
    }

    v18 = 1869638759;
  }

  else
  {
    if (mSelector == 1650682995)
    {
      goto LABEL_15;
    }

    v18 = 1668047219;
  }

  if (mSelector == v18)
  {
LABEL_15:
    v20 = *(this + 4);
    mScope = a3->mScope;
    mElement = a3->mElement;
    kdebug_trace();
    HALS_Object::SetPropertyData(this, a2, a3, v23, v24, v25, v26, a8);
  }

  return HALS_AHPPlugIn::ObjectSetPropertyData(*(*(this + 9) + 32), a2, a3, a6, a7, a4, a5);
}

void sub_1DE41A87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  operator delete(v22);
  _Unwind_Resume(a1);
}

uint64_t HALS_AHPControl::GetPropertyData(HALS_AHPControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v19 = mSelector == 1937007734;
    v20 = 1869638759;
  }

  else
  {
    v19 = mSelector == 1650682995;
    v20 = 1668047219;
  }

  if (v19 || mSelector == v20)
  {

    return HALS_Object::GetPropertyData(this, v17, a3, a4, a5, a6);
  }

  else
  {
    *a5 = a4;
    v23 = *(*(this + 9) + 32);

    return HALS_AHPPlugIn::ObjectGetPropertyData(v23, a2, a3, a7, a8, a5, a6);
  }
}

uint64_t HALS_AHPControl::GetPropertyDataSize(HALS_AHPControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  v11 = (*(*this + 96))(this, a2, a3, a6);
  if ((v11 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v14 = mSelector == 1937007734;
    v15 = 1869638759;
  }

  else
  {
    v14 = mSelector == 1650682995;
    v15 = 1668047219;
  }

  if (v14 || mSelector == v15)
  {

    return HALS_Object::GetPropertyDataSize(v11, v12, a3);
  }

  else
  {
    v18 = *(*(this + 9) + 32);

    return HALS_AHPPlugIn::ObjectGetPropertyDataSize(v18, a2, a3, a4, a5);
  }
}

uint64_t HALS_AHPControl::IsPropertySettable(HALS_AHPControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  v7 = (*(*this + 96))(this, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v10 = mSelector == 1937007734;
    v11 = 1869638759;
  }

  else
  {
    v10 = mSelector == 1650682995;
    v11 = 1668047219;
  }

  if (v10 || mSelector == v11)
  {

    return HALS_Object::IsPropertySettable(v7, v8, a3);
  }

  else
  {
    v14 = *(*(this + 9) + 32);

    return HALS_AHPPlugIn::ObjectIsPropertySettable(v14, a2, a3);
  }
}

BOOL HALS_AHPControl::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *a3;
  result = 1;
  if (*a3 > 1869638758)
  {
    v6 = v4 == 1869638759;
    v7 = 1937007734;
  }

  else
  {
    v6 = v4 == 1650682995;
    v7 = 1668047219;
  }

  if (!v6 && v4 != v7)
  {
    return (*(**(*(a1 + 72) + 32) + 184))(*(*(a1 + 72) + 32)) != 0;
  }

  return result;
}

void HALS_AHPControl::~HALS_AHPControl(HALS_AHPControl *this)
{
  HALS_Control::~HALS_Control(this);

  JUMPOUT(0x1E12C1730);
}

void HALS_AHPControl::Activate(HALS_AHPControl *this)
{
  v6.mElement = 0;
  *&v6.mSelector = *"pcscbolg";
  v5 = 4;
  HALS_AHPPlugIn::ObjectGetPropertyData(*(*(this + 9) + 32), *(this + 4), &v6, 0, 0, &v5, this + 48);
  *&v4.mSelector = *"mlecbolg";
  v4.mElement = 0;
  v3 = 4;
  HALS_AHPPlugIn::ObjectGetPropertyData(*(*(this + 9) + 32), *(this + 4), &v4, 0, 0, &v3, this + 52);
  HALS_Object::Activate(this, v2);
}

void HALS_IOA2Device::PerformNonDriverConfigChange(HALS_IOA2Device *this, int a2, int a3)
{
  if (a2)
  {
    memset(v8, 0, sizeof(v8));
    HALS_IOA2Device::HandleConfigChange(this, v8, a3);
  }

  else
  {
    v5 = (*(*this + 72))(this);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN15HALS_IOA2Device28PerformNonDriverConfigChangeEbj_block_invoke;
    v6[3] = &__block_descriptor_tmp_118;
    v6[4] = this;
    v7 = a3;
    AMCP::Utility::Dispatch_Queue::async(v5, v6);
  }
}

void sub_1DE41AEE4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE41AED4);
}

void HALS_IOA2Device::HandleConfigChange(unsigned int *a1, uint64_t a2, int a3)
{
  v73 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    *buf = 136315906;
    *&buf[4] = "HALS_IOA2Device.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1847;
    *&buf[18] = 2080;
    *&buf[20] = a1 + 41;
    *&buf[28] = 1024;
    *&buf[30] = v6;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOA2Device::HandleConfigChange: %s|%d: begin --->", buf, 0x22u);
  }

  v62 = 0;
  v63 = 0;
  v64 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2000000000;
  v61 = 0;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 0x40000000;
  v57[2] = ___ZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2Notificationj_block_invoke;
  v57[3] = &unk_1E8674950;
  v57[4] = &v58;
  v57[5] = a1;
  v7 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v7, v57);
  v56[0] = 0;
  v56[1] = 0;
  HALS_System::GetInstance(buf, 0, v56);
  v8 = *buf;
  v9 = (*(*a1 + 208))(a1);
  v10 = v9;
  if (v9)
  {
    CFRetain(v9);
    cf = v10;
    v11 = CFGetTypeID(v10);
    if (v11 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf = 0;
  }

  HALS_System::GetRawDeviceListUsingClockDevice(v8, &v62, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v14 = v59[3];
  if (v14)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4802000000;
    *&buf[24] = __Block_byref_object_copy__110;
    *&buf[32] = __Block_byref_object_dispose__111;
    v71 = 0u;
    v72 = 0u;
    v49 = 0;
    v50 = &v49;
    v51 = 0x4002000000;
    v52 = __Block_byref_object_copy__112;
    v53 = __Block_byref_object_dispose__113;
    memset(v54, 0, sizeof(v54));
    v15 = a1[4];
    strcpy(v65, "bgfcbolg");
    v65[9] = 0;
    *&v65[10] = 0;
    HALS_NotificationManager::PropertiesChanged_Sync(v15, 0, 1, v65, v13);
    __p = 0;
    v47 = 0;
    v48 = 0;
    (*(*v14 + 224))(v14, &__p);
    v45[0] = 0;
    v45[1] = 0;
    HALS_System::GetInstance(v65, 0, v45);
    HALS_IOContext_Manager::pause_contexts_for_device(*(*v65 + 1744), a1);
    if (*&v65[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v65[8]);
    }

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 1174405120;
    v42[2] = ___ZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2Notificationj_block_invoke_114;
    v42[3] = &unk_1F596E4F0;
    v44 = a3;
    v42[6] = a1;
    v42[7] = a2;
    v42[4] = buf;
    v42[5] = &v49;
    v43 = v14;
    HALS_ObjectMap::RetainObject(v14, v16);
    v17 = (*(*a1 + 64))(a1);
    HALB_CommandGate::ExecuteCommand(v17, v42);
    v41[0] = 0;
    v41[1] = 0;
    HALS_System::GetInstance(v65, 0, v41);
    HALS_IOContext_Manager::rebuild_engine_for_device(*(*v65 + 1744), a1);
    if (*&v65[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v65[8]);
    }

    if ((*(*a1 + 448))(a1) && ((*(*a1 + 440))(a1) & 1) == 0)
    {
      *v65 = 0x676C6F6268647370;
      *&v65[4] = (*(*a1 + 456))(a1);
      *&v65[8] = 0;
      CAPropertyAddressList::AppendUniqueItem((*&buf[8] + 40), v65, v18);
    }

    kdebug_trace();
    (*(*v14 + 248))(v14, *&buf[8] + 40);
    v19 = *(*&buf[8] + 40);
    v20 = *(*&buf[8] + 48);
    if (v19 != v20)
    {
      HALS_Object::PropertiesChanged_Sync(a1, a1[4], 0, -1431655765 * ((v20 - v19) >> 2), v19);
      v21 = v62;
      v22 = v63;
      if (v62 != v63)
      {
        do
        {
          HALS_Object::PropertiesChanged_Sync(a1, *v21++, 0, -1431655765 * ((*(*&buf[8] + 48) - *(*&buf[8] + 40)) >> 2), *(*&buf[8] + 40));
        }

        while (v21 != v22);
      }
    }

    v23 = v50;
    v24 = v50[5];
    v25 = v50[6] - v24;
    if ((v25 & 0x1FFFFFFFE0) != 0)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        if (v27 >= v25 >> 5)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v28 = v24 + v26;
        if (*(v24 + v26) != *(v24 + v26 + 8))
        {
          v29 = *(v28 + 24);
          v31 = HALS_ObjectMap::CopyObjectByObjectID(v29);
          if (v31)
          {
            HALS_Object::PropertiesChanged_Sync(a1, v29, 0, -1431655765 * ((*(v28 + 8) - *v28) >> 2), *v28);
          }

          HALS_ObjectMap::ReleaseObject(v31, v30);
          v23 = v50;
        }

        ++v27;
        v24 = v23[5];
        v25 = v23[6] - v24;
        v26 += 32;
      }

      while (v27 < (v25 >> 5));
    }

    kdebug_trace();
    (*(*v14 + 240))(v14);
    (*(*v14 + 232))(v14, &__p);
    v40[0] = 0;
    v40[1] = 0;
    HALS_System::GetInstance(v65, 0, v40);
    v32 = *(*v65 + 1744);
    os_unfair_lock_lock(v32 + 4);
    os_unfair_lock_unlock(v32 + 4);
    if (*&v65[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v65[8]);
    }

    v39[0] = 0;
    v39[1] = 0;
    HALS_System::GetInstance(v65, 0, v39);
    HALS_IOContext_Manager::resume_contexts_for_device(*(*v65 + 1744), a1);
    if (*&v65[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v65[8]);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v34 = a1[4];
      *v65 = 136315906;
      *&v65[4] = "HALS_IOA2Device.cpp";
      *&v65[12] = 1024;
      *&v65[14] = 2155;
      v66 = 2080;
      v67 = a1 + 41;
      v68 = 1024;
      v69 = v34;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOA2Device::_HandleConfigChange: %s|%d:   end <---", v65, 0x22u);
    }

    HALS_ObjectMap::ReleaseObject(v43, v33);
    if (__p)
    {
      v47 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v49, 8);
    *v65 = v54;
    std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](v65);
    _Block_object_dispose(buf, 8);
    if (v71)
    {
      *(&v71 + 1) = v71;
      operator delete(v71);
    }
  }

  else
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 0x40000000;
    v38[2] = ___ZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2Notificationj_block_invoke_116;
    v38[3] = &__block_descriptor_tmp_117;
    v38[4] = a1;
    v38[5] = a2;
    v35 = (*(*a1 + 64))(a1);
    HALB_CommandGate::ExecuteCommand(v35, v38);
  }

  kdebug_trace();
  HALS_ObjectMap::ReleaseObject(v14, v36);
  _Block_object_dispose(&v58, 8);
  if (v62)
  {
    operator delete(v62);
  }

  v37 = *MEMORY[0x1E69E9840];
}

void sub_1DE41B7D4(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, HALS_ObjectMap *a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  HALS_ObjectMap::ReleaseObject(a30, a2);
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a37, 8);
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Block_object_dispose((v59 - 192), 8);
  v62 = *(v59 - 152);
  if (v62)
  {
    *(v59 - 144) = v62;
    operator delete(v62);
  }

  HALS_ObjectMap::ReleaseObject(v58, v61);
  _Block_object_dispose(&a54, 8);
  if (a58)
  {
    operator delete(a58);
  }

  _Unwind_Resume(a1);
}

void ___ZN15HALS_IOA2Device28PerformNonDriverConfigChangeEbj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  memset(v2, 0, sizeof(v2));
  HALS_IOA2Device::HandleConfigChange(v1, v2, *(a1 + 40));
}

void sub_1DE41B994(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE41B988);
}

void ___ZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2Notificationj_block_invoke(uint64_t a1, HALS_Object *a2)
{
  v2 = *(*(a1 + 40) + 1944);
  if (v2)
  {
    *(*(*(a1 + 32) + 8) + 24) = v2;
    HALS_ObjectMap::RetainObject(*(*(*(a1 + 32) + 8) + 24), a2);
  }
}

uint64_t __Block_byref_object_copy__110(void *a1, uint64_t *a2)
{
  a1[5] = 0;
  a1[6] = 0;
  v3 = a1 + 5;
  a1[7] = 0;
  result = std::vector<CAPropertyAddress>::__init_with_size[abi:ne200100]<CAPropertyAddress*,CAPropertyAddress*>((a1 + 5), a2[5], a2[6], 0xAAAAAAAAAAAAAAABLL * ((a2[6] - a2[5]) >> 2));
  v3[3] = a2[8];
  return result;
}

void __Block_byref_object_dispose__111(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void __Block_byref_object_copy__112(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  std::vector<CAPropertyAddressList>::__init_with_size[abi:ne200100]<CAPropertyAddressList*,CAPropertyAddressList*>(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 5);
}

void ___ZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2Notificationj_block_invoke_114(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v6[0] = 0;
  v6[1] = 0;
  HALS_System::GetInstance(&v8, 0, v6);
  v4 = HALS_System::CopyClientByObjectID(v8, *(a1 + 72));
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  HALS_ObjectMap::RetainObject(v4, v3);
  HALS_ObjectMap::RetainObject(v4, v5);
  v7 = 0;
  operator new();
}

void sub_1DE41C050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE41C0B0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a2)
  {
    std::__function::__value_func<HALS_Client * ()(AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](&a34);
    HALS_ObjectMap::ReleaseObject(0, v34);
    JUMPOUT(0x1DE41C150);
  }

  JUMPOUT(0x1DE41C0A0);
}

void sub_1DE41C0E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE41C0A0);
  }

  JUMPOUT(0x1DE41C150);
}

void sub_1DE41C0EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE41C0A0);
  }

  JUMPOUT(0x1DE41C158);
}

void sub_1DE41C0F8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(v2 - 176);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    JUMPOUT(0x1DE41C160);
  }

  JUMPOUT(0x1DE41C0A0);
}

void sub_1DE41C110(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE41C0A0);
  }

  JUMPOUT(0x1DE41C160);
}

void sub_1DE41C128(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a2)
  {
    HALS_DeviceState::~HALS_DeviceState(va);
    HALS_DeviceState::~HALS_DeviceState((v17 - 184));
    HALS_ObjectMap::ReleaseObject(v16, v19);
    HALS_ObjectMap::ReleaseObject(v16, v20);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE41C014);
  }

  JUMPOUT(0x1DE41C0A0);
}

void sub_1DE41C140(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE41C148);
  }

  JUMPOUT(0x1DE41C0A0);
}

void __copy_helper_block_e8_64c39_ZTS13HALS_ReleaserI16HALS_IOA2Engine2E(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a2 + 8);
  *(a1 + 64) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

double HALS_IOA2Device::_UnmapDataExchangeBlocks(HALS_IOA2Device *this)
{
  v2 = *(this + 258);
  v3 = (this + 2072);
  if (v2 != (this + 2072))
  {
    v4 = MEMORY[0x1E69E9A60];
    do
    {
      if (v2[5])
      {
        v5 = *(this + 497) == 0;
      }

      else
      {
        v5 = 1;
      }

      if (!v5)
      {
        v6 = *(v2 + 8);
        v7 = *v4;
        MEMORY[0x1E12C0830]();
      }

      v8 = v2[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v2[2];
          v5 = *v9 == v2;
          v2 = v9;
        }

        while (!v5);
      }

      v2 = v9;
    }

    while (v9 != v3);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 259));
  *(this + 258) = v3;
  result = 0.0;
  *v3 = 0u;
  return result;
}

void HALS_IOA2Device::_UnmapBlockControlBuffers(HALS_IOA2Device *this, HALS_IOA2Device *a2)
{
  if (this != a2)
  {
    v3 = this;
    v4 = MEMORY[0x1E69E9A60];
    do
    {
      v5 = *v3;
      v6 = *(*v3 + 20);
      v7 = *(*v3 + 24);
      if (v6 == v7)
      {
        if (v6 != 1936028002 && v6 != 1651273579)
        {
          goto LABEL_45;
        }
      }

      else if (v6 != 1651273579 && v6 != 1936028002 && v7 != 1651273579 && v7 != 1936028002)
      {
        goto LABEL_45;
      }

      v12 = HALS_ObjectMap::CopyObjectByObjectID(*(v5 + 56));
      v14 = v12;
      v15 = *(v5 + 20);
      v16 = *(v5 + 24);
      if (v15 == v16)
      {
        if (v15 == 1936028002 || v15 == 1651273579)
        {
          goto LABEL_37;
        }
      }

      else if (v15 == 1651273579 || v15 == 1936028002 || v16 == 1651273579 || v16 == 1936028002)
      {
LABEL_37:
        if (*(v5 + 104))
        {
          v21 = v12 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          v22 = *(v12 + 1988);
          if (v22)
          {
            MEMORY[0x1E12C0830](v22, *(v5 + 72) & 0xFFFFFFF | 0x30000000u, *v4);
          }

          *(v5 + 104) = 0;
          *(v5 + 112) = 0;
        }
      }

      HALS_ObjectMap::ReleaseObject(v14, v13);
LABEL_45:
      v3 = (v3 + 8);
    }

    while (v3 != a2);
  }
}