void HALB_IOBufferManager_Server::Allocate(HALB_IOBufferManager_Server *this, char a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69E9AB8];
  if (*(this + 4))
  {
    goto LABEL_6;
  }

  if (atomic_load_explicit(&ShouldUsePageMaxMask(void)::checked, memory_order_acquire) != -1)
  {
    *__str = &v17;
    *buf = __str;
    std::__call_once(&ShouldUsePageMaxMask(void)::checked, buf, std::__call_once_proxy[abi:ne200100]<std::tuple<ShouldUsePageMaxMask(void)::$_0 &&>>);
  }

  if (ShouldUsePageMaxMask(void)::kernelVersion <= 19)
  {
LABEL_6:
    v4 = (*v3 + 304) & ~*v3;
  }

  else
  {
    v4 = 0x4000;
  }

  v5 = 0;
  for (i = 1; ; i = 0)
  {
    v16 = i;
    v7 = (this + 24 * v5 + 8);
    v8 = (v7[2] - *v7) & 0xFFFFFFFC;
    if (*(this + 4))
    {
      goto LABEL_13;
    }

    if (atomic_load_explicit(&ShouldUsePageMaxMask(void)::checked, memory_order_acquire) != -1)
    {
      *__str = &v17;
      *buf = __str;
      std::__call_once(&ShouldUsePageMaxMask(void)::checked, buf, std::__call_once_proxy[abi:ne200100]<std::tuple<ShouldUsePageMaxMask(void)::$_0 &&>>);
    }

    if (ShouldUsePageMaxMask(void)::kernelVersion < 20)
    {
LABEL_13:
      v9 = (v8 + 4 + *v3) & ~*v3;
    }

    else
    {
      v9 = (v8 + 16387) & 0xFFFFC000;
    }

    v4 += v9;
    v10 = *v7;
    if (*(v7 + 1) != *v7)
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = *(v10 + 4 * v11);
        if (*(this + 4))
        {
          goto LABEL_21;
        }

        if (atomic_load_explicit(&ShouldUsePageMaxMask(void)::checked, memory_order_acquire) != -1)
        {
          *__str = &v17;
          *buf = __str;
          std::__call_once(&ShouldUsePageMaxMask(void)::checked, buf, std::__call_once_proxy[abi:ne200100]<std::tuple<ShouldUsePageMaxMask(void)::$_0 &&>>);
        }

        if (ShouldUsePageMaxMask(void)::kernelVersion < 20)
        {
LABEL_21:
          v14 = (v13 + *v3) & ~*v3;
        }

        else
        {
          v14 = (v13 + 0x3FFF) & 0xFFFFC000;
        }

        v4 += v14;
        v11 = v12;
        v10 = *v7;
        ++v12;
      }

      while (v11 < (*(v7 + 1) - *v7) >> 2);
    }

    v5 = 1;
    if ((v16 & 1) == 0)
    {
      if (a2)
      {
        operator new();
      }

      snprintf(__str, 0x1FuLL, "AudioIO%X", *this);
      operator new();
    }
  }
}

void sub_1DE51F100(_Unwind_Exception *a1)
{
  caulk::mach::mach_port::~mach_port(v3);
  MEMORY[0x1E12C1730](v1, v2);
  _Unwind_Resume(a1);
}

AMCP::Log::AMCP_Scope_Registry *HALB_IOBufferManager_Server::GetIOBuffer(HALB_IOBufferManager_Server *this, unsigned int a2, unsigned int a3, unsigned int *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v34 = this + 8;
  v8 = (this + 24 * a2 + 8);
  if (a3 >= ((v8[1] - *v8) >> 2))
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALB_IOBufferManager.cpp";
      v39 = 1024;
      v40 = 238;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOBufferManager_Server::GetIOBuffer: the stream index is out of range", buf, 0x12u);
    }
  }

  if (v7 >= (v8[1] - *v8) >> 2)
  {
    result = 0;
  }

  else
  {
    v13 = *(*(this + 7) + 8);
    if (*(this + 4))
    {
      goto LABEL_16;
    }

    if (atomic_load_explicit(&ShouldUsePageMaxMask(void)::checked, memory_order_acquire) != -1)
    {
      *buf = &v36;
      v37 = buf;
      std::__call_once(&ShouldUsePageMaxMask(void)::checked, &v37, std::__call_once_proxy[abi:ne200100]<std::tuple<ShouldUsePageMaxMask(void)::$_0 &&>>);
    }

    if (ShouldUsePageMaxMask(void)::kernelVersion <= 19)
    {
LABEL_16:
      v14 = ~*MEMORY[0x1E69E9AB8] & (*MEMORY[0x1E69E9AB8] + 304);
    }

    else
    {
      v14 = 0x4000;
    }

    v16 = (v13 + v14);
    v17 = 4 * (v16[*v16 + 1] + *v16);
    if (*(this + 4))
    {
      goto LABEL_22;
    }

    if (atomic_load_explicit(&ShouldUsePageMaxMask(void)::checked, memory_order_acquire) != -1)
    {
      *buf = &v36;
      v37 = buf;
      std::__call_once(&ShouldUsePageMaxMask(void)::checked, &v37, std::__call_once_proxy[abi:ne200100]<std::tuple<ShouldUsePageMaxMask(void)::$_0 &&>>);
    }

    if (ShouldUsePageMaxMask(void)::kernelVersion < 20)
    {
LABEL_22:
      v18 = (v17 + 8 + *MEMORY[0x1E69E9AB8]) & ~*MEMORY[0x1E69E9AB8];
    }

    else
    {
      v18 = (v17 + 16391) & 0xFFFFC000;
    }

    v19 = 0;
    v20 = 0;
    result = 0;
    v21 = (v16 + v18);
    do
    {
      if (!result)
      {
        v24 = 0;
        v22 = 0;
        v25 = &v34[24 * v20];
        while (1)
        {
          v26 = v24;
          if (v24 >= ((*(v25 + 1) - *v25) >> 2))
          {
            result = 0;
            goto LABEL_26;
          }

          v27 = *(*v25 + 4 * v24);
          if (v20 == a2 && a3 == v24)
          {
            *a4 = v27;
            if (v27)
            {
              result = v21;
            }

            else
            {
              result = 0;
            }

            v22 = 1;
          }

          else
          {
            if (*(this + 4))
            {
              goto LABEL_41;
            }

            result = &ShouldUsePageMaxMask(void)::checked;
            if (atomic_load_explicit(&ShouldUsePageMaxMask(void)::checked, memory_order_acquire) != -1)
            {
              *buf = &v36;
              v37 = buf;
              std::__call_once(&ShouldUsePageMaxMask(void)::checked, &v37, std::__call_once_proxy[abi:ne200100]<std::tuple<ShouldUsePageMaxMask(void)::$_0 &&>>);
            }

            if (ShouldUsePageMaxMask(void)::kernelVersion < 20)
            {
LABEL_41:
              v28 = (v27 + *MEMORY[0x1E69E9AB8]) & ~*MEMORY[0x1E69E9AB8];
            }

            else
            {
              v28 = (v27 + 0x3FFF) & 0xFFFFC000;
            }

            v21 = (v21 + v28);
            if (v21 >= *(*(this + 7) + 8) + *(*(this + 7) + 16))
            {
              v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v29 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(result);
              }

              v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v30)
              {
                atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
                v32 = *v31;
                std::__shared_weak_count::__release_shared[abi:ne200100](v30);
              }

              else
              {
                v32 = *v31;
              }

              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALB_IOBufferManager.cpp";
                v39 = 1024;
                v40 = 270;
                _os_log_error_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOBufferManager_Server::GetIOBuffer: Buffer pointer out of bounds", buf, 0x12u);
              }
            }

            if (v21 >= *(*(this + 7) + 8) + *(*(this + 7) + 16))
            {
              result = 0;
              *a4 = 0;
              goto LABEL_56;
            }

            result = 0;
          }

          v24 = v26 + 1;
          if (result)
          {
            goto LABEL_26;
          }
        }
      }

      v22 = 0;
LABEL_26:
      v23 = v22 | v19;
      v19 = 1;
      v20 = 1;
    }

    while ((v23 & 1) == 0);
  }

LABEL_56:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

vm_address_t HALB_IOBufferManager_Server::AllocateBuffer(vm_size_t size)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!size)
  {
    result = 0;
    goto LABEL_10;
  }

  v1 = size;
  address = 0;
  v2 = MEMORY[0x1E69E9A60];
  v3 = vm_allocate(*MEMORY[0x1E69E9A60], &address, size, 1);
  if (v3)
  {
    v5 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "HALB_IOBufferManager.cpp";
      v19 = 1024;
      v20 = 313;
      v21 = 1024;
      LODWORD(v22) = v5;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  HALB_IOBufferManager_Server::AllocateBuffer: failed to allocate the buffer, Error: 0x%X";
LABEL_18:
      _os_log_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x18u);
    }

LABEL_19:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v5;
    goto LABEL_20;
  }

  if (!address)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "HALB_IOBufferManager.cpp";
      v19 = 1024;
      v20 = 314;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_IOBufferManager_Server::AllocateBuffer: vm_allocate returned nullptr", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 5;
LABEL_20:
  }

  v4 = HALB_MlockFailHandling::_mlock(address, v1);
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = address;
      v7 = *__error();
      v8 = __error();
      v9 = strerror(*v8);
      *buf = 136316418;
      v18 = "HALB_IOBufferManager.cpp";
      v19 = 1024;
      v20 = 320;
      v21 = 2048;
      v22 = v6;
      v23 = 1024;
      v24 = v1;
      v25 = 1024;
      v26 = v7;
      v27 = 2080;
      v28 = v9;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_IOBufferManager_Server::AllocateBuffer: failed to lock the buffer: addr %p, byte size %u, errno %d %s", buf, 0x32u);
    }

    v10 = atomic_load(&HALB_MlockFailHandling::mHandling);
    if (v10 == 2)
    {
      MEMORY[0x1E12C2990](*v2, address, v1);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v18 = "HALB_IOBufferManager.cpp";
        v19 = 1024;
        v20 = 324;
        v21 = 1024;
        LODWORD(v22) = v5;
        v13 = MEMORY[0x1E69E9C10];
        v14 = "%25s:%-5d  HALB_IOBufferManager_Server::AllocateBuffer: failed to lock the buffer, Error: 0x%X";
        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

  result = address;
LABEL_10:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALB_MlockFailHandling::_mlock(HALB_MlockFailHandling *this, size_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&HALB_MlockFailHandling::mHandling);
  if (v2 == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "HALB_IOBufferManager.cpp";
      v13 = 1024;
      v14 = 667;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALB_MlockFailHandling::_mlock: synthesized a failure and did not lock", buf, 0x12u);
    }

    v3 = 35;
  }

  else
  {
    v3 = mlock(this, a2);
    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "HALB_IOBufferManager.cpp";
        v13 = 1024;
        v14 = 657;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  wiredlog: mlock failure event seen.", buf, 0x12u);
      }

      if ((atomic_exchange(HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall, 1u) & 1) == 0)
      {
        v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        if (HALB_MlockFailHandling::hasReportingCooledDown(void)::sRef && (v4.__d_.__rep_ - HALB_MlockFailHandling::hasReportingCooledDown(void)::sRef) / 1000000000.0 <= 10.0)
        {
          atomic_store(0, HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall);
        }

        else
        {
          HALB_MlockFailHandling::hasReportingCooledDown(void)::sRef = std::chrono::steady_clock::now().__d_.__rep_;
          atomic_store(0, HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall);
          v9 = 19;
          if (AudioStatisticsLibraryLoader::once != -1)
          {
            dispatch_once(&AudioStatisticsLibraryLoader::once, &__block_literal_global_9853);
          }

          if (AudioStatisticsLibraryLoader::libSym)
          {
            v5 = AudioStatisticsLibraryLoader::libSym();
            v10 = v5;
            if (AudioStatisticsLibraryLoader::once != -1)
            {
              dispatch_once(&AudioStatisticsLibraryLoader::once, &__block_literal_global_9853);
            }
          }

          else
          {
            v5 = 0;
            v10 = 0;
          }

          if (AudioStatisticsLibraryLoader::libSym)
          {
            AudioStatisticsLibraryLoader::libSym(v5);
          }

          v6 = CFDictionaryCreate(0, 0, 0, 0, 0, 0);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v12 = "HALB_IOBufferManager.cpp";
            v13 = 1024;
            v14 = 640;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  wiredlog: requesting report from service.", buf, 0x12u);
            v5 = v10;
          }

          if (AudioStatisticsLibraryLoader::once != -1)
          {
            dispatch_once(&AudioStatisticsLibraryLoader::once, &__block_literal_global_9853);
          }

          if (AudioStatisticsLibraryLoader::libSym)
          {
            AudioStatisticsLibraryLoader::libSym(v5, v6, 1);
          }

          CFRelease(v6);
          HALB_MlockFailHandling::WiredLoggerSession::~WiredLoggerSession(&v9);
        }
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

void HALB_MlockFailHandling::WiredLoggerSession::~WiredLoggerSession(HALB_MlockFailHandling::WiredLoggerSession *this)
{
  v2 = *(this + 1);
  if (AudioStatisticsLibraryLoader::once != -1)
  {
    dispatch_once(&AudioStatisticsLibraryLoader::once, &__block_literal_global_9853);
  }

  if (AudioStatisticsLibraryLoader::libSym)
  {
    AudioStatisticsLibraryLoader::libSym(v2);
    v3 = *(this + 1);
    if (AudioStatisticsLibraryLoader::once != -1)
    {
      dispatch_once(&AudioStatisticsLibraryLoader::once, &__block_literal_global_9853);
    }
  }

  else
  {
    v3 = *(this + 1);
  }

  if (AudioStatisticsLibraryLoader::libSym)
  {
    AudioStatisticsLibraryLoader::libSym(v3);
  }
}

void *__AudioStatisticsLibraryLoader_block_invoke()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader::libSym = result;
  }

  return result;
}

void HALB_IOBufferManager_Server::FreeBuffer(HALB_IOBufferManager_Server *this, unsigned int a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v4 = a2;
    v5 = munlock(this, a2);
    if (!v5)
    {
      v22 = *MEMORY[0x1E69E9A60];
      v23 = *MEMORY[0x1E69E9840];

      JUMPOUT(0x1E12C2990);
    }

    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      v8 = __error();
      v9 = strerror(*v8);
      v24 = 136316418;
      v25 = "HALB_IOBufferManager.cpp";
      v26 = 1024;
      v27 = 339;
      v28 = 2048;
      v29 = this;
      v30 = 1024;
      v31 = a2;
      v32 = 1024;
      v33 = v7;
      v34 = 2080;
      v35 = v9;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_IOBufferManager_Server::FreeBuffer: munlock failed: addr %p, byte size %u, errno %d %s", &v24, 0x32u);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = MEMORY[0x1E69E3C08];
    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_19;
    }

    v13 = *(v10 + 8);
    v14 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v14 + 16) = 0;
    *(v14 + 20) = 16;
    *(v14 + 24) = "HALB_IOBufferManager.cpp";
    *(v14 + 32) = (v6 << 32) | 0x155;
    *v14 = &unk_1F5977F10;
    *(v14 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v13, v14);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    MEMORY[0x1E12C2990](*MEMORY[0x1E69E9A60], this, v4);
    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*v12)
    {
LABEL_19:
      __break(1u);
    }

    v17 = v6 << 32;
    v18 = *(v15 + 8);
    v19 = v17 | 0x159;
    v20 = caulk::rt_safe_memory_resource::rt_allocate(*v12);
    *(v20 + 16) = 0;
    *(v20 + 20) = 16;
    *(v20 + 24) = "HALB_IOBufferManager.cpp";
    *(v20 + 32) = v19;
    *v20 = &unk_1F5977F68;
    *(v20 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v18, v20);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t caulk::concurrent::details::rt_message_call<HALB_IOBufferManager_Server::FreeBuffer(unsigned char *,unsigned int)::$_1,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALB_IOBufferManager_Server::FreeBuffer: vm_deallocate failed, Error: 0x%X", &v11, 0x18u);
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

void caulk::concurrent::details::rt_message_call<HALB_IOBufferManager_Server::FreeBuffer(unsigned char *,unsigned int)::$_1,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALB_IOBufferManager_Server::FreeBuffer(unsigned char *,unsigned int)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALB_IOBufferManager_Server::FreeBuffer: munlock failed, Error: 0x%X", &v11, 0x18u);
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

void caulk::concurrent::details::rt_message_call<HALB_IOBufferManager_Server::FreeBuffer(unsigned char *,unsigned int)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_MetaStream::SetCurrentHWFormat(HALS_MetaStream *this, const AudioStreamBasicDescription *a2)
{
  if ((*(this + 80) & 1) == 0)
  {
    v4 = (*(**(this + 9) + 272))(*(this + 9));
    v5.n128_u64[0] = *&a2->mSampleRate;
    if (a2->mSampleRate != 0.0 && v5.n128_f64[0] != v4)
    {
      v7 = *(**(this + 9) + 280);

      v7(v5);
    }
  }
}

void HALS_MetaStream::GetCurrentHWFormat(HALS_MetaStream *this, AudioStreamBasicDescription *a2)
{
  if (*(this + 80) == 1)
  {
    v4 = *(this + 42);
    if (v4)
    {
      v5 = HALS_ObjectMap::CopyObjectByObjectID(v4);
      v7 = v5;
      if (v5)
      {
        v9 = *(v5 + 264);
        v8 = *(v5 + 272);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = *(v9 + 24);
          v11 = *(v9 + 40);
          *&a2->mBitsPerChannel = *(v9 + 56);
          *&a2->mSampleRate = v10;
          *&a2->mBytesPerPacket = v11;
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        else
        {
          v13 = *(v9 + 24);
          v14 = *(v9 + 40);
          *&a2->mBitsPerChannel = *(v9 + 56);
          *&a2->mSampleRate = v13;
          *&a2->mBytesPerPacket = v14;
        }
      }

      else
      {
        *&a2->mSampleRate = k_default_multitap_format;
        *&a2->mBytesPerPacket = unk_1DE7A1400;
        *&a2->mBitsPerChannel = 32;
      }

      HALS_ObjectMap::ReleaseObject(v7, v6);
    }

    else
    {
      a2->mSampleRate = (*(**(this + 9) + 272))(*(this + 9));
      *&a2->mFormatID = xmmword_1DE758120;
      *&a2->mBytesPerFrame = xmmword_1DE758130;
    }
  }

  else
  {
    a2->mSampleRate = (*(**(this + 9) + 272))(*(this + 9));
    *&a2->mFormatID = 0x96C70636DLL;
    v12 = *(this + 36);
    a2->mBytesPerPacket = 4 * v12;
    a2->mFramesPerPacket = 1;
    a2->mBytesPerFrame = 4 * v12;
    a2->mChannelsPerFrame = v12;
    a2->mBitsPerChannel = 32;
  }
}

uint64_t HALS_MetaStream::BuildFormatList(uint64_t this)
{
  *(this + 104) = *(this + 96);
  *(this + 128) = *(this + 120);
  if (!*(this + 152))
  {
    if (*(this + 80))
    {
      (*(**(this + 72) + 288))(*(this + 72));
      operator new[]();
    }

    (*(**(this + 72) + 288))(*(this + 72));
    operator new[]();
  }

  return this;
}

uint64_t HALS_MetaStream::GetRealStreamID(HALS_MetaStream *this)
{
  v2 = *(this + 19);
  if (!v2)
  {
    return 0;
  }

  v3 = HALS_IODevice::CopyStreamByIndex(v2, *(this + 52), *(this + 40));
  if (v3)
  {
    v5 = v3[4];
  }

  else
  {
    v5 = 0;
  }

  HALS_ObjectMap::ReleaseObject(v3, v4);
  return v5;
}

uint64_t HALS_MetaStream::GetRealDeviceID(HALS_MetaStream *this)
{
  v1 = *(this + 19);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t HALS_MetaStream::SetInfo(HALS_ObjectMap **this)
{
  HALS_MetaStream::RemoveRealStreamPropertyListener(this);
  HALS_MetaStream::RemoveRealTapPropertyListener(this);
  *(this + 52) = 1;
  *(this + 80) = 0;
  HALS_ObjectMap::ReleaseObject_LongTerm(this[19], v2);
  *(this + 36) = 0;
  this[19] = 0;
  this[20] = 0;
  *(this + 42) = 0;
  v3 = *(*this + 38);

  return v3(this);
}

void HALS_MetaStream::RemoveRealStreamPropertyListener(HALS_MetaStream *this)
{
  v1 = *(this + 41);
  if (v1)
  {
    v2 = *(this + 4);
    v3 = *(this + 22);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN15HALS_MetaStream32RemoveRealStreamPropertyListenerEv_block_invoke;
    block[3] = &__block_descriptor_tmp_41;
    v5 = v2;
    v6 = v1;
    AMCP::Utility::Dispatch_Queue::async(v3, block);
  }
}

void HALS_MetaStream::RemoveRealTapPropertyListener(HALS_MetaStream *this)
{
  v1 = *(this + 42);
  if (v1)
  {
    v2 = *(this + 4);
    v3 = *(this + 22);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN15HALS_MetaStream29RemoveRealTapPropertyListenerEv_block_invoke;
    block[3] = &__block_descriptor_tmp_43;
    v5 = v2;
    v6 = v1;
    AMCP::Utility::Dispatch_Queue::async(v3, block);
  }
}

void ___ZN15HALS_MetaStream29RemoveRealTapPropertyListenerEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const AudioObjectPropertyAddress *a5)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 36);
  v7[0] = 0;
  v7[1] = v6;
  v8 = 0u;
  v9 = 0u;
  HALS_NotificationManager::RemovePropertyListener(v7, v5, &qword_1DE79AFDC, a4, a5);
  HALS_Listener::~HALS_Listener(v7);
}

void sub_1DE520B10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HALS_Listener::~HALS_Listener(va);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_MetaStream32RemoveRealStreamPropertyListenerEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const AudioObjectPropertyAddress *a5)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 36);
  v7[0] = 0;
  v7[1] = v6;
  v8 = 0u;
  v9 = 0u;
  HALS_NotificationManager::RemovePropertyListener(v7, v5, &qword_1DE79AFDC, a4, a5);
  HALS_Listener::~HALS_Listener(v7);
}

void sub_1DE520B70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HALS_Listener::~HALS_Listener(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_MetaStream::SetInfo(HALS_ObjectMap **this, int a2)
{
  if (*(this + 42) != a2)
  {
    HALS_MetaStream::RemoveRealStreamPropertyListener(this);
    HALS_MetaStream::RemoveRealTapPropertyListener(this);
    *(this + 52) = 1;
    *(this + 80) = 1;
    HALS_ObjectMap::ReleaseObject_LongTerm(this[19], v4);
    this[19] = 0;
    this[20] = 0;
    *(this + 42) = a2;
    *(this + 36) = 0;
    HALS_MetaStream::AddRealTapPropertyListener(this);
  }

  v5 = *(*this + 38);

  return v5(this);
}

void HALS_MetaStream::AddRealTapPropertyListener(HALS_MetaStream *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(this + 42);
  if (v2)
  {
    v4 = HALS_ObjectMap::CopyObjectByObjectID(v2);
    if (v4)
    {
      v11 = 0x2A2A2A2A2A2A2A2ALL;
      v12 = -1;
      v5 = *(this + 4);
      v8[0] = 0;
      v8[1] = v5;
      v9 = 0u;
      v10 = 0u;
      v6 = *(this + 42);
      LOBYTE(v13) = 0;
      v14 = 0;
      HALS_NotificationManager::AddPropertyListener(v8, v6, &v11, &v13);
      HALS_Listener::~HALS_Listener(v8);
    }

    HALS_ObjectMap::ReleaseObject(v4, v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DE520CEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HALS_Listener::~HALS_Listener(va);
  HALS_ObjectMap::ReleaseObject(v2, v4);
  _Unwind_Resume(a1);
}

uint64_t HALS_MetaStream::SetInfo(HALS_ObjectMap **this, char a2, int a3)
{
  HALS_MetaStream::RemoveRealStreamPropertyListener(this);
  HALS_MetaStream::RemoveRealTapPropertyListener(this);
  *(this + 52) = a2;
  *(this + 80) = 0;
  HALS_ObjectMap::ReleaseObject_LongTerm(this[19], v6);
  this[19] = 0;
  this[20] = 0;
  *(this + 42) = 0;
  *(this + 36) = a3;
  v7 = *(*this + 38);

  return v7(this);
}

uint64_t HALS_MetaStream::SetInfo(HALS_ObjectMap **this, char a2, HALS_Device *a3, int a4)
{
  if (this[19] != a3 || *(this + 40) != a4)
  {
    HALS_MetaStream::RemoveRealStreamPropertyListener(this);
    HALS_MetaStream::RemoveRealTapPropertyListener(this);
    *(this + 52) = a2;
    *(this + 80) = 0;
    HALS_ObjectMap::ReleaseObject_LongTerm(this[19], v8);
    this[19] = a3;
    *(this + 41) = 0;
    *(this + 42) = 0;
    *(this + 40) = a4;
    *(this + 36) = 0;
    HALS_MetaStream::AddRealStreamPropertyListener(this, v9);
  }

  v10 = *(*this + 38);

  return v10(this);
}

void HALS_MetaStream::AddRealStreamPropertyListener(HALS_MetaStream *this, HALS_Object *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(this + 19);
  if (v3)
  {
    HALS_ObjectMap::RetainObject(v3, a2);
    v4 = HALS_IODevice::CopyStreamByIndex(*(this + 19), *(this + 52), *(this + 40));
    v6 = v4;
    if (v4)
    {
      v7 = *(v4 + 16);
      *(this + 41) = v7;
      v13 = 0x2A2A2A2A2A2A2A2ALL;
      v14 = -1;
      v8 = *(this + 4);
      v10[0] = 0;
      v10[1] = v8;
      v11 = 0u;
      v12 = 0u;
      AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v15, *(this + 22));
      v16 = 1;
      HALS_NotificationManager::AddPropertyListener(v10, v7, &v13, v15);
      if (v16 == 1)
      {
        AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v15);
      }

      HALS_Listener::~HALS_Listener(v10);
    }

    HALS_ObjectMap::ReleaseObject(v6, v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE520F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (a59 == 1)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&a17);
  }

  HALS_Listener::~HALS_Listener(&a10);
  HALS_ObjectMap::ReleaseObject(v59, v61);
  _Unwind_Resume(a1);
}

void HALS_MetaStream::HandleGroupObjectPropertiesChanged(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int *a5, unsigned int *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, dispatch_object_t *a11)
{
  v17 = *a11;
  if (*a11)
  {
    dispatch_retain(*a11);
    dispatch_group_enter(v17);
  }

  if (a4)
  {
    v18 = a4;
    do
    {
      v19 = *a5++;
      v21 = HALS_ObjectMap::CopyObjectByObjectID(v19);
      if (v21)
      {
        (*(*a1 + 168))(a1, v21, a3, *a6, a8);
      }

      v22 = *a6;
      HALS_ObjectMap::ReleaseObject(v21, v20);
      a8 += 12 * v22;
      ++a6;
      --v18;
    }

    while (v18);
  }

  if (v17)
  {
    dispatch_group_leave(v17);

    dispatch_release(v17);
  }
}

void sub_1DE521100(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t a10)
{
  HALS_ObjectMap::ReleaseObject(v10, a2);
  applesauce::dispatch::v1::group_session::~group_session(&a10);
  _Unwind_Resume(a1);
}

void HALS_MetaStream::HandleObjectPropertiesChanged(HALS_MetaStream *this, const HALS_Object *a2, uint64_t a3, int a4, AudioObjectPropertyAddress *a5)
{
  v6 = *(this + 19);
  if (v6)
  {
    LODWORD(v8) = a4;
    v11 = HALS_IODevice::CopyStreamByIndex(v6, *(this + 52), *(this + 40));
    v13 = v11;
    if (v11)
    {
      v14 = v11 == a2;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      memset(v17, 0, sizeof(v17));
      if (v8)
      {
        v8 = v8;
        do
        {
          if (HALS_MetaDevice::PassRealNotificationToClient(a5->mSelector, 0))
          {
            CAPropertyAddressList::AppendUniqueItem(v17, a5, v15);
          }

          ++a5;
          --v8;
        }

        while (v8);
        v16 = *&v17[0];
        if (*&v17[0] != *(&v17[0] + 1))
        {
          HALS_Object::PropertiesChanged(this, *(this + 4), a3, -1431655765 * ((*(&v17[0] + 1) - *&v17[0]) >> 2), *&v17[0]);
        }

        if (v16)
        {
          operator delete(v16);
        }
      }
    }

    HALS_ObjectMap::ReleaseObject(v13, v12);
  }
}

void sub_1DE521218(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v10)
  {
    operator delete(v10);
  }

  HALS_ObjectMap::ReleaseObject(v9, a2);
  _Unwind_Resume(a1);
}

void HALS_MetaStream::SetPropertyData(HALS_MetaStream *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, double *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v88 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v42 = 2003332927;
LABEL_51:
    exception[2] = v42;
  }

  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v16))
  {
    v17 = atomic_load((*(this + 9) + 160));
    v18 = a8 ? *(a8 + 60) : getpid();
    if (v17 != -1 && v17 != v18)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      v42 = 560492391;
      goto LABEL_51;
    }
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x3002000000;
  v80 = __Block_byref_object_copy__9924;
  v81 = __Block_byref_object_dispose__9925;
  v82 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2000000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2000000000;
  v72 = 0;
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 0x40000000;
  v68[2] = ___ZN15HALS_MetaStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
  v68[3] = &unk_1E8676778;
  v68[4] = &v77;
  v68[5] = &v69;
  v68[6] = &v73;
  v68[7] = this;
  v20 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v20, v68);
  v26 = v78[5];
  if (v26)
  {
    v27 = HALS_IODevice::CopyStreamByIndex(v26, *(v74 + 24), *(v70 + 6));
    pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  }

  else
  {
    v27 = 0;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector == 1885762592)
  {
    if (v27)
    {
      goto LABEL_34;
    }

    if (*(this + 80))
    {
      goto LABEL_35;
    }

    if (a4 <= 0x27)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      *buf = 136315394;
      *&buf[4] = "HALS_MetaStream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 698;
      v43 = MEMORY[0x1E69E9C10];
      v44 = "%25s:%-5d  HALS_MetaStream::_SetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat";
      goto LABEL_57;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x5002000000;
    v86 = __Block_byref_object_copy__31;
    v87 = __Block_byref_object_dispose__32;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 0x40000000;
    v58[2] = ___ZN15HALS_MetaStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_37;
    v58[3] = &unk_1E86767F0;
    v58[5] = this;
    v58[6] = a5;
    v58[4] = buf;
    v36 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v36, v58);
    if (*a5 == 0.0 || *a5 == *(*&buf[8] + 40))
    {
      v37 = *(a5 + 2);
      if (v37 && v37 != *(*&buf[8] + 48))
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_76;
        }

        *v83 = 136315394;
        *&v83[4] = "HALS_MetaStream.cpp";
        *&v83[12] = 1024;
        *&v83[14] = 712;
        v50 = MEMORY[0x1E69E9C10];
        v51 = "%25s:%-5d  HALS_MetaStream::_SetPropertyData: unsupported format ID for kAudioStreamPropertyPhysicalFormat";
      }

      else
      {
        v38 = *(a5 + 7);
        if (!v38 || v38 == *(*&buf[8] + 68))
        {
          v39 = *(*&buf[8] + 56);
          *v83 = *(*&buf[8] + 40);
          *&v83[16] = v39;
          v84 = *(*&buf[8] + 72);
          v63 = 0;
          v64 = &v63;
          v65 = 0x2000000000;
          v66 = 0;
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 0x40000000;
          v54[2] = ___ZN15HALS_MetaStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_39;
          v54[3] = &unk_1E8676818;
          v57 = v84;
          v55 = *v83;
          v56 = v39;
          v54[4] = &v63;
          v54[5] = this;
          v40 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v40, v54);
          if (*(v64 + 6))
          {
            v47 = __cxa_allocate_exception(4uLL);
            *v47 = *(v64 + 6);
            __cxa_throw(v47, MEMORY[0x1E69E5478], 0);
          }

          if (a8 && (*(*&buf[8] + 48) != 1819304813 || (*(*&buf[8] + 52) & 0x40) != 0))
          {
            HALS_Client::SetNonMixableFormat(a8, *(*(this + 9) + 16));
          }

          goto LABEL_49;
        }

        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
LABEL_76:
          v53 = __cxa_allocate_exception(0x10uLL);
          *v53 = off_1F5991DD8;
          v53[2] = 560226676;
        }

        *v83 = 136315394;
        *&v83[4] = "HALS_MetaStream.cpp";
        *&v83[12] = 1024;
        *&v83[14] = 715;
        v50 = MEMORY[0x1E69E9C10];
        v51 = "%25s:%-5d  HALS_MetaStream::_SetPropertyData: unsupported number of channels for kAudioStreamPropertyPhysicalFormat";
      }
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_76;
      }

      *v83 = 136315394;
      *&v83[4] = "HALS_MetaStream.cpp";
      *&v83[12] = 1024;
      *&v83[14] = 709;
      v50 = MEMORY[0x1E69E9C10];
      v51 = "%25s:%-5d  HALS_MetaStream::_SetPropertyData: unsupported sample rate for kAudioStreamPropertyPhysicalFormat";
    }

    _os_log_impl(&dword_1DE1F9000, v50, OS_LOG_TYPE_ERROR, v51, v83, 0x12u);
    goto LABEL_76;
  }

  if (mSelector != 1936092532)
  {
    if (mSelector == 1935894638)
    {
      HALS_Object::SetPropertyData(this, a2, a3, v22, v23, v24, v25, a8);
    }

    if (!v27)
    {
      HALS_Object::SetPropertyData(this, a2, a3, v22, v23, v24, v25, a8);
    }

    goto LABEL_34;
  }

  if (v27)
  {
LABEL_34:
    (*(*v27 + 128))(v27, v27[4], a3, a4, a5, a6, a7, a8);
    goto LABEL_35;
  }

  if ((*(this + 80) & 1) == 0)
  {
    if (a4 > 0x27)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x5002000000;
      v86 = __Block_byref_object_copy__31;
      v87 = __Block_byref_object_dispose__32;
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 0x40000000;
      v67[2] = ___ZN15HALS_MetaStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_33;
      v67[3] = &unk_1E86767A0;
      v67[5] = this;
      v67[6] = a5;
      v67[4] = buf;
      v29 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v29, v67);
      if (*a5 == 0.0 || *a5 == *(*&buf[8] + 40))
      {
        v30 = *(a5 + 2);
        if (v30 && v30 != *(*&buf[8] + 48))
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_72;
          }

          *v83 = 136315394;
          *&v83[4] = "HALS_MetaStream.cpp";
          *&v83[12] = 1024;
          *&v83[14] = 660;
          v48 = MEMORY[0x1E69E9C10];
          v49 = "%25s:%-5d  HALS_MetaStream::_SetPropertyData: unsupported format ID for kAudioStreamPropertyVirtualFormat";
        }

        else
        {
          v31 = *(a5 + 7);
          if (!v31 || v31 == *(*&buf[8] + 68))
          {
            v32 = *(*&buf[8] + 56);
            *v83 = *(*&buf[8] + 40);
            *&v83[16] = v32;
            v84 = *(*&buf[8] + 72);
            v63 = 0;
            v64 = &v63;
            v65 = 0x2000000000;
            v66 = 0;
            v59[0] = MEMORY[0x1E69E9820];
            v59[1] = 0x40000000;
            v59[2] = ___ZN15HALS_MetaStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_35;
            v59[3] = &unk_1E86767C8;
            v62 = v84;
            v60 = *v83;
            v61 = v32;
            v59[4] = &v63;
            v59[5] = this;
            v33 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v33, v59);
            if (*(v64 + 6))
            {
              v46 = __cxa_allocate_exception(4uLL);
              *v46 = *(v64 + 6);
              __cxa_throw(v46, MEMORY[0x1E69E5478], 0);
            }

            if (a8 && (*(*&buf[8] + 48) != 1819304813 || (*(*&buf[8] + 52) & 0x40) != 0))
            {
              HALS_Client::SetNonMixableFormat(a8, *(*(this + 9) + 16));
            }

LABEL_49:
            _Block_object_dispose(&v63, 8);
            _Block_object_dispose(buf, 8);
            goto LABEL_35;
          }

          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
LABEL_72:
            v52 = __cxa_allocate_exception(0x10uLL);
            *v52 = off_1F5991DD8;
            v52[2] = 560226676;
          }

          *v83 = 136315394;
          *&v83[4] = "HALS_MetaStream.cpp";
          *&v83[12] = 1024;
          *&v83[14] = 663;
          v48 = MEMORY[0x1E69E9C10];
          v49 = "%25s:%-5d  HALS_MetaStream::_SetPropertyData: unsupported number of channels for kAudioStreamPropertyVirtualFormat";
        }
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

        *v83 = 136315394;
        *&v83[4] = "HALS_MetaStream.cpp";
        *&v83[12] = 1024;
        *&v83[14] = 657;
        v48 = MEMORY[0x1E69E9C10];
        v49 = "%25s:%-5d  HALS_MetaStream::_SetPropertyData: unsupported sample rate for kAudioStreamPropertyVirtualFormat";
      }

      _os_log_impl(&dword_1DE1F9000, v48, OS_LOG_TYPE_ERROR, v49, v83, 0x12u);
      goto LABEL_72;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_58:
      v45 = __cxa_allocate_exception(0x10uLL);
      *v45 = off_1F5991DD8;
      v45[2] = 561211770;
    }

    *buf = 136315394;
    *&buf[4] = "HALS_MetaStream.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 646;
    v43 = MEMORY[0x1E69E9C10];
    v44 = "%25s:%-5d  HALS_MetaStream::_SetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat";
LABEL_57:
    _os_log_impl(&dword_1DE1F9000, v43, OS_LOG_TYPE_ERROR, v44, buf, 0x12u);
    goto LABEL_58;
  }

LABEL_35:
  HALS_ObjectMap::ReleaseObject(v27, v21);
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);
  HALS_ObjectMap::ReleaseObject(v82, v34);
  v35 = *MEMORY[0x1E69E9840];
}

void sub_1DE521DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v70 - 208), 8);
  HALS_ObjectMap::ReleaseObject(0, v72);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  HALS_ObjectMap::ReleaseObject(a70, v73);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9924(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN15HALS_MetaStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(void *a1, HALS_Object *a2)
{
  v3 = a1[7];
  HALS_ObjectMap::RetainObject(*(v3 + 152), a2);
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = *(v3 + 152);
  HALS_ObjectMap::ReleaseObject(v5, v6);
  *(*(a1[5] + 8) + 24) = *(v3 + 160);
  *(*(a1[6] + 8) + 24) = *(v3 + 52);
}

__n128 __Block_byref_object_copy__31(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

void ___ZN15HALS_MetaStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_33(void *a1)
{
  v2 = a1[5];
  (*(*v2 + 312))(v2, v7);
  v4 = a1[6];
  v5 = *(a1[4] + 8);
  v6 = *(v4 + 16);
  *&v8.mSampleRate = *v4;
  *&v8.mBytesPerPacket = v6;
  *&v8.mBitsPerChannel = *(v4 + 32);
  if (v8.mFormatID == 1819304813)
  {
    v8.mBitsPerChannel = 0;
    *&v8.mFramesPerPacket = 0;
    *&v8.mFormatFlags = 0;
  }

  HALB_FormatList::BestMatchForPhysicalFormat(v2 + 88, &v8, v5 + 1, v3, v7[0]);
}

void sub_1DE522038(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = v4[2];
  }

  else
  {
    v5 = 2003329396;
  }

  *(*(*(v2 + 32) + 8) + 24) = v5;

  __cxa_end_catch();
}

void ___ZN15HALS_MetaStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_37(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2 + 88;
  (*(*v2 + 312))(v2, v5);
  HALB_FormatList::BestMatchForPhysicalFormat(v3, *(a1 + 48), (*(*(a1 + 32) + 8) + 40), v4, v5[0]);
}

void sub_1DE522150(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = v4[2];
  }

  else
  {
    v5 = 2003329396;
  }

  *(*(*(v2 + 32) + 8) + 24) = v5;

  __cxa_end_catch();
}

void HALS_MetaStream::GetPropertyData(HALS_MetaStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, void *a6, uint64_t a7, void *a8, HALS_Client *a9)
{
  v120 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  if (a9)
  {
    v16 = *(a9 + 266) ^ 1;
  }

  else
  {
    v16 = 1;
  }

  v108 = 0;
  v109 = &v108;
  v110 = 0x3002000000;
  v111 = __Block_byref_object_copy__9924;
  v112 = __Block_byref_object_dispose__9925;
  v113 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x2000000000;
  v107 = 0;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2000000000;
  v103 = 0;
  v98[0] = 0;
  v98[1] = v98;
  v98[2] = 0x2000000000;
  v99 = 0;
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 0x40000000;
  v97[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
  v97[3] = &unk_1E86765C0;
  v97[8] = this;
  v97[4] = &v108;
  v97[5] = &v100;
  v97[6] = &v104;
  v97[7] = v98;
  v17 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v17, v97);
  v18 = v109[5];
  if (v18)
  {
    v19 = HALS_IODevice::CopyStreamByIndex(v18, *(v105 + 24), *(v101 + 6));
    pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  }

  else
  {
    v19 = 0;
  }

  v20 = v16 & 1;
  mSelector = a3->mSelector;
  if (a3->mSelector > 1935894637)
  {
    if (mSelector > 1936092478)
    {
      if (mSelector <= 1936092524)
      {
        if (mSelector != 1936092479)
        {
          if (mSelector == 1936092513)
          {
            if (!v19)
            {
              *v118 = 0;
              *&v118[8] = v118;
              *&v118[16] = 0x2000000000;
              v119 = 0;
              v91[0] = MEMORY[0x1E69E9820];
              v91[1] = 0x40000000;
              v91[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
              v91[3] = &unk_1E8676648;
              v93 = v20;
              v92 = a4;
              v91[5] = this;
              v91[4] = v118;
              v91[6] = a6;
              v23 = (*(*this + 64))(this);
              HALB_CommandGate::ExecuteCommand(v23, v91);
              goto LABEL_21;
            }

LABEL_85:
            (*(*v19 + 120))(v19, v19[4], a3, a4, a5, a6, a7, a8, a9);
            goto LABEL_86;
          }

          goto LABEL_84;
        }

        if (v19)
        {
          goto LABEL_85;
        }

        if (a4 > 0x27)
        {
          *a5 = 40;
          *v118 = 0;
          *&v118[8] = v118;
          *&v118[16] = 0x2000000000;
          LOBYTE(v119) = 0;
          v87[0] = MEMORY[0x1E69E9820];
          v87[1] = 0x40000000;
          v87[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_18;
          v87[3] = &unk_1E8676698;
          v87[4] = v118;
          v87[5] = this;
          v87[6] = a6;
          v31 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v31, v87);
          if ((*(*&v118[8] + 24) & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v115 = "HALS_MetaStream.cpp";
              v116 = 1024;
              v117 = 426;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaStream::_GetPropertyData: kAudioDevicePropertyStreamFormatSupported: the format is not supported", buf, 0x12u);
            }

            v32 = __cxa_allocate_exception(0x10uLL);
            *v32 = off_1F5991DD8;
            v32[2] = 560226676;
          }

          goto LABEL_34;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v118 = 136315394;
          *&v118[4] = "HALS_MetaStream.cpp";
          *&v118[12] = 1024;
          *&v118[14] = 422;
          v67 = MEMORY[0x1E69E9C10];
          v68 = "%25s:%-5d  HALS_MetaStream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatSupported";
          goto LABEL_127;
        }

LABEL_128:
        v69 = __cxa_allocate_exception(0x10uLL);
        *v69 = off_1F5991DD8;
        v69[2] = 561211770;
      }

      if (mSelector == 1936092525)
      {
        if (v19)
        {
          goto LABEL_85;
        }

        if (a4 <= 0x27)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_128;
          }

          *v118 = 136315394;
          *&v118[4] = "HALS_MetaStream.cpp";
          *&v118[12] = 1024;
          *&v118[14] = 440;
          v67 = MEMORY[0x1E69E9C10];
          v68 = "%25s:%-5d  HALS_MetaStream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatMatch";
          goto LABEL_127;
        }

        *a5 = 40;
        if (a8)
        {
          v37 = a7 == 40;
        }

        else
        {
          v37 = 0;
        }

        if (v37)
        {
          v38 = a8;
        }

        else
        {
          v38 = a6;
        }

        v39 = *v38;
        v83 = *(v38 + 1);
        v84 = v38[4];
        v85 = a6;
        v82 = v39;
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 0x40000000;
        v81[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_20;
        v81[3] = &__block_descriptor_tmp_21_9953;
        v86 = v20;
        v81[4] = this;
        v40 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v40, v81);
        goto LABEL_86;
      }

      if (mSelector != 1936092532)
      {
        goto LABEL_84;
      }

      goto LABEL_43;
    }

    switch(mSelector)
    {
      case 1935894638:
        if (a4 > 3)
        {
          v94[0] = MEMORY[0x1E69E9820];
          v94[1] = 0x40000000;
          v94[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_14;
          v94[3] = &__block_descriptor_tmp_15_9946;
          v94[4] = this;
          v94[5] = a6;
          v44 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v44, v94);
LABEL_82:
          v43 = 4;
          v42 = a5;
          goto LABEL_83;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v118 = 136315394;
          *&v118[4] = "HALS_MetaStream.cpp";
          *&v118[12] = 1024;
          *&v118[14] = 377;
          v64 = MEMORY[0x1E69E9C10];
          v65 = "%25s:%-5d  HALS_MetaStream::_GetPropertyData: bad property data size for kAudioStreamPropertyStartingChannel";
LABEL_115:
          _os_log_impl(&dword_1DE1F9000, v64, OS_LOG_TYPE_ERROR, v65, v118, 0x12u);
        }

        break;
      case 1935960434:
        if (a4 > 3)
        {
          v95[0] = MEMORY[0x1E69E9820];
          v95[1] = 0x40000000;
          v95[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_12;
          v95[3] = &__block_descriptor_tmp_13_9944;
          v95[4] = this;
          v95[5] = a6;
          v45 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v45, v95);
          goto LABEL_82;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v118 = 136315394;
          *&v118[4] = "HALS_MetaStream.cpp";
          *&v118[12] = 1024;
          *&v118[14] = 354;
          v64 = MEMORY[0x1E69E9C10];
          v65 = "%25s:%-5d  HALS_MetaStream::_GetPropertyData: bad property data size for kAudioStreamPropertyDirection";
          goto LABEL_115;
        }

        break;
      case 1936092451:
        if (v19)
        {
          goto LABEL_85;
        }

        *v118 = 0;
        *&v118[8] = v118;
        *&v118[16] = 0x2000000000;
        v119 = 0;
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 0x40000000;
        v88[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_3;
        v88[3] = &unk_1E8676670;
        v90 = v20;
        v89 = a4;
        v88[4] = v118;
        v88[5] = this;
        v88[6] = a6;
        v26 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v26, v88);
LABEL_32:
        v24 = 40 * *(*&v118[8] + 24);
        goto LABEL_33;
      default:
        goto LABEL_84;
    }

    v66 = __cxa_allocate_exception(0x10uLL);
    *v66 = off_1F5991DD8;
    v66[2] = 561211770;
  }

  if (mSelector > 1885762622)
  {
    if (mSelector <= 1885762668)
    {
      if (mSelector != 1885762623)
      {
        if (mSelector == 1885762657)
        {
          if (!v19)
          {
            *v118 = 0;
            *&v118[8] = v118;
            *&v118[16] = 0x2000000000;
            v119 = 0;
            v79[0] = MEMORY[0x1E69E9820];
            v79[1] = 0x40000000;
            v79[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_22;
            v79[3] = &unk_1E86766E0;
            v80 = a4;
            v79[4] = v118;
            v79[5] = this;
            v79[6] = a6;
            v22 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v22, v79);
LABEL_21:
            v24 = 56 * *(*&v118[8] + 24);
LABEL_33:
            *a5 = v24;
LABEL_34:
            _Block_object_dispose(v118, 8);
            goto LABEL_86;
          }

          goto LABEL_85;
        }

        goto LABEL_84;
      }

      if (v19)
      {
        goto LABEL_85;
      }

      if (a4 > 0x27)
      {
        *a5 = 40;
        *v118 = 0;
        *&v118[8] = v118;
        *&v118[16] = 0x2000000000;
        LOBYTE(v119) = 0;
        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 0x40000000;
        v76[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_26;
        v76[3] = &unk_1E8676730;
        v76[4] = v118;
        v76[5] = this;
        v76[6] = a6;
        v29 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v29, v76);
        if ((*(*&v118[8] + 24) & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v115 = "HALS_MetaStream.cpp";
            v116 = 1024;
            v117 = 557;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaStream::_GetPropertyData: kAudioStreamPropertyPhysicalFormatSupported: the format is not supported", buf, 0x12u);
          }

          v30 = __cxa_allocate_exception(0x10uLL);
          *v30 = off_1F5991DD8;
          v30[2] = 560226676;
        }

        goto LABEL_34;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v118 = 136315394;
        *&v118[4] = "HALS_MetaStream.cpp";
        *&v118[12] = 1024;
        *&v118[14] = 553;
        v67 = MEMORY[0x1E69E9C10];
        v68 = "%25s:%-5d  HALS_MetaStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatSupported";
LABEL_127:
        _os_log_impl(&dword_1DE1F9000, v67, OS_LOG_TYPE_ERROR, v68, v118, 0x12u);
        goto LABEL_128;
      }

      goto LABEL_128;
    }

    if (mSelector != 1885762669)
    {
      if (mSelector == 1935762292)
      {
        if (v19)
        {
          goto LABEL_85;
        }

        if (*(this + 80) != 1)
        {
LABEL_87:
          HALS_Stream::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
          goto LABEL_86;
        }

        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_128;
          }

          *v118 = 136315394;
          *&v118[4] = "HALS_MetaStream.cpp";
          *&v118[12] = 1024;
          *&v118[14] = 340;
          v67 = MEMORY[0x1E69E9C10];
          v68 = "%25s:%-5d  HALS_MetaStream::_GetPropertyData: bad property data size for kAudioStreamPropertyIsActive";
          goto LABEL_127;
        }

        v96[0] = MEMORY[0x1E69E9820];
        v96[1] = 0x40000000;
        v96[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_10;
        v96[3] = &__block_descriptor_tmp_11_9942;
        v96[4] = a6;
        v28 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v28, v96);
        goto LABEL_82;
      }

LABEL_84:
      if (v19)
      {
        goto LABEL_85;
      }

      goto LABEL_87;
    }

    if (v19)
    {
      goto LABEL_85;
    }

    if (a4 <= 0x27)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_128;
      }

      *v118 = 136315394;
      *&v118[4] = "HALS_MetaStream.cpp";
      *&v118[12] = 1024;
      *&v118[14] = 571;
      v67 = MEMORY[0x1E69E9C10];
      v68 = "%25s:%-5d  HALS_MetaStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatMatch";
      goto LABEL_127;
    }

    *a5 = 40;
    if (a8)
    {
      v33 = a7 == 40;
    }

    else
    {
      v33 = 0;
    }

    if (v33)
    {
      v34 = a8;
    }

    else
    {
      v34 = a6;
    }

    v35 = *(v34 + 1);
    v72 = *v34;
    v73 = v35;
    v74 = v34[4];
    v75 = a6;
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 0x40000000;
    v71[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_28;
    v71[3] = &__block_descriptor_tmp_29_9960;
    v71[4] = this;
    v36 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v36, v71);
    goto LABEL_86;
  }

  if (mSelector == 1819569763)
  {
    if (!v19)
    {
      goto LABEL_87;
    }

    (*(*v19 + 120))(v19, v19[4], a3, a4, a5, a6, a7, a8, a9);
    if (a4 < 4)
    {
      goto LABEL_86;
    }

    StreamLatencyFramesDueToHostedDSP = HALS_Stream::GetStreamLatencyFramesDueToHostedDSP(this, a9);
    v42 = a6;
    v43 = *a6 + StreamLatencyFramesDueToHostedDSP;
LABEL_83:
    *v42 = v43;
    goto LABEL_86;
  }

  if (mSelector != 1885762592)
  {
    if (mSelector != 1885762595)
    {
      goto LABEL_84;
    }

    if (v19)
    {
      goto LABEL_85;
    }

    *v118 = 0;
    *&v118[8] = v118;
    *&v118[16] = 0x2000000000;
    v119 = 0;
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 0x40000000;
    v77[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_3_24;
    v77[3] = &unk_1E8676708;
    v78 = a4;
    v77[4] = v118;
    v77[5] = this;
    v77[6] = a6;
    v25 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v25, v77);
    goto LABEL_32;
  }

LABEL_43:
  if (v19)
  {
    (*(*v19 + 120))(v19, v19[4], a3, a4, a5, a6, a7, a8, a9);
    *a6 = (*(**(this + 9) + 272))(*(this + 9));
    goto LABEL_86;
  }

  if (*(this + 80) == 1)
  {
    v48 = *(this + 42);
    if (v48)
    {
      v49 = HALS_ObjectMap::CopyObjectByObjectID(v48);
      v50 = v49;
      if (v49)
      {
        v52 = *(v49 + 264);
        v51 = *(v49 + 272);
        if (v51)
        {
          atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          v53 = *(v52 + 24);
          v54 = *(v52 + 40);
          a6[4] = *(v52 + 56);
          *a6 = v53;
          *(a6 + 1) = v54;
          std::__shared_weak_count::__release_shared[abi:ne200100](v51);
        }

        else
        {
          v58 = *(v52 + 24);
          v59 = *(v52 + 40);
          a6[4] = *(v52 + 56);
          *a6 = v58;
          *(a6 + 1) = v59;
        }
      }

      else
      {
        *a6 = k_default_multitap_format;
        *(a6 + 1) = unk_1DE7A1400;
        a6[4] = 32;
      }

      *a6 = HALS_MetaStream::GetTapSampleRate(this);
      if (*(a6 + 2) == 1819304813 && (*(a6 + 12) & 0x40) == 0)
      {
        if (v20)
        {
          v61 = 9;
        }

        else
        {
          v61 = 11;
        }

        v62 = 4 * *(a6 + 7);
        *(a6 + 3) = v61;
        *(a6 + 4) = v62;
        *(a6 + 5) = 1;
        *(a6 + 6) = v62;
        *(a6 + 8) = 32;
      }

      HALS_ObjectMap::ReleaseObject(v50, v60);
      goto LABEL_86;
    }

    *a6 = k_default_multitap_format;
    *(a6 + 1) = unk_1DE7A1400;
    a6[4] = 32;
    *a6 = HALS_MetaStream::GetTapSampleRate(this);
    if (*(a6 + 2) != 1819304813)
    {
      goto LABEL_86;
    }
  }

  else
  {
    *a6 = (*(**(this + 9) + 272))(*(this + 9));
    a6[1] = 0x96C70636DLL;
    v55 = *(this + 36);
    *(a6 + 4) = 4 * v55;
    *(a6 + 5) = 1;
    *(a6 + 6) = 4 * v55;
    *(a6 + 7) = v55;
    *(a6 + 8) = 32;
  }

  if ((*(a6 + 12) & 0x40) == 0)
  {
    if (v20)
    {
      v56 = 9;
    }

    else
    {
      v56 = 11;
    }

    v57 = 4 * *(a6 + 7);
    *(a6 + 3) = v56;
    *(a6 + 4) = v57;
    *(a6 + 5) = 1;
    *(a6 + 6) = v57;
    *(a6 + 8) = 32;
  }

LABEL_86:
  HALS_ObjectMap::ReleaseObject(v19, v27);
  _Block_object_dispose(v98, 8);
  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v108, 8);
  HALS_ObjectMap::ReleaseObject(v113, v46);
  v47 = *MEMORY[0x1E69E9840];
}

void sub_1DE52347C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(void *a1, HALS_Object *a2)
{
  v3 = a1[8];
  HALS_ObjectMap::RetainObject(*(v3 + 152), a2);
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = *(v3 + 152);
  HALS_ObjectMap::ReleaseObject(v5, v6);
  *(*(a1[5] + 8) + 24) = *(v3 + 160);
  *(*(a1[6] + 8) + 24) = *(v3 + 52);
  *(*(a1[7] + 8) + 24) = *(v3 + 144);
}

void sub_1DE52366C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

BOOL ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_18(void *a1)
{
  result = HALB_FormatList::IsVirtualFormatSupported(*(a1[5] + 96), *(a1[5] + 104), a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_20(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*v2 + 312))(v2, &v5);
  if (v6 == 1819304813 && (v7 & 0x40) == 0)
  {
    if (*(a1 + 88))
    {
      v4 = 9;
    }

    else
    {
      v4 = 11;
    }

    v7 = v4;
    v8 = 4 * v11;
    v9 = 1;
    v10 = 4 * v11;
    v12 = 32;
  }

  HALB_FormatList::BestMatchForVirtualFormat(v2 + 88, (a1 + 40), *(a1 + 80), v3, v5);
}

double HALS_MetaStream::GetTapSampleRate(HALS_MetaStream *this)
{
  v1 = 0.0;
  if (*(this + 80) == 1)
  {
    v2 = *(this + 42);
    if (v2)
    {
      v3 = HALS_ObjectMap::CopyObjectByObjectID(v2);
      v5 = v3;
      if (v3)
      {
        v7 = *(v3 + 264);
        v6 = *(v3 + 272);
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          v1 = *(v7 + 24);
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        else
        {
          v1 = *(v7 + 24);
        }
      }

      else
      {
        v1 = 48000.0;
      }

      HALS_ObjectMap::ReleaseObject(v5, v4);
    }
  }

  return v1;
}

__n128 ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_22(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 48);
  *(v3 + 24) = 0;
  if (v1 >= 0x38)
  {
    v5 = 0;
    v6 = 0;
    v7 = v1 / 0x38uLL;
    v8 = -1;
    do
    {
      v9 = *(v2 + 120);
      if (++v8 >= (0x6DB6DB6DB6DB6DB7 * ((*(v2 + 128) - v9) >> 3)))
      {
        break;
      }

      v10 = v9 + v5;
      v5 += 56;
      v11 = v4 + 56 * v6;
      result = *v10;
      v13 = *(v10 + 16);
      v14 = *(v10 + 32);
      *(v11 + 48) = *(v10 + 48);
      *(v11 + 16) = v13;
      *(v11 + 32) = v14;
      *v11 = result;
      v6 = *(v3 + 24) + 1;
      *(v3 + 24) = v6;
    }

    while (v6 < v7);
  }

  return result;
}

void sub_1DE5238F4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

BOOL ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_26(void *a1)
{
  result = HALB_FormatList::IsVirtualFormatSupported(*(a1[5] + 120), *(a1[5] + 128), a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 88;
  (*(*v2 + 312))(v2, v5);
  HALB_FormatList::BestMatchForPhysicalFormat(v3, (a1 + 40), *(a1 + 80), v4, v5[0]);
}

uint64_t HALS_MetaStream::GetPropertyDataSize(HALS_MetaStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  if (((*(*this + 96))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x2000000000;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3002000000;
  v40 = __Block_byref_object_copy__9924;
  v41 = __Block_byref_object_dispose__9925;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 0x40000000;
  v28[2] = ___ZNK15HALS_MetaStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
  v28[3] = &unk_1E86764F8;
  v28[4] = &v37;
  v28[5] = &v29;
  v28[6] = &v33;
  v28[7] = this;
  v12 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v12, v28);
  v13 = v38[5];
  if (v13)
  {
    v14 = HALS_IODevice::CopyStreamByIndex(v13, *(v34 + 24), *(v30 + 6));
    pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  }

  else
  {
    v14 = 0;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1935894637)
  {
    if (mSelector == 1885762595)
    {
      if (v14)
      {
        goto LABEL_22;
      }

      v18 = v24;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 0x40000000;
      v24[2] = ___ZNK15HALS_MetaStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_5;
      v24[3] = &unk_1E8676598;
      v24[4] = &v43;
      v24[5] = this;
      v19 = (*(*this + 64))(this);
    }

    else
    {
      if (mSelector != 1885762657)
      {
LABEL_21:
        if (!v14)
        {
          goto LABEL_9;
        }

LABEL_22:
        PropertyDataSize = (*(*v14 + 112))(v14, v14[4], a3, a4, a5, a6);
        goto LABEL_23;
      }

      if (v14)
      {
        goto LABEL_22;
      }

      v18 = v25;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 0x40000000;
      v25[2] = ___ZNK15HALS_MetaStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_4;
      v25[3] = &unk_1E8676570;
      v25[4] = &v43;
      v25[5] = this;
      v19 = (*(*this + 64))(this);
    }
  }

  else
  {
    switch(mSelector)
    {
      case 0x73666D61u:
        if (v14)
        {
          goto LABEL_22;
        }

        v18 = v27;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 0x40000000;
        v27[2] = ___ZNK15HALS_MetaStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2;
        v27[3] = &unk_1E8676520;
        v27[4] = &v43;
        v27[5] = this;
        v19 = (*(*this + 64))(this);
        break;
      case 0x73666D23u:
        if (v14)
        {
          goto LABEL_22;
        }

        v18 = v26;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 0x40000000;
        v26[2] = ___ZNK15HALS_MetaStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3;
        v26[3] = &unk_1E8676548;
        v26[4] = &v43;
        v26[5] = this;
        v19 = (*(*this + 64))(this);
        break;
      case 0x7363686Eu:
LABEL_9:
        PropertyDataSize = HALS_Stream::GetPropertyDataSize(this, a2, a3);
LABEL_23:
        v20 = PropertyDataSize;
        *(v44 + 6) = PropertyDataSize;
        goto LABEL_24;
      default:
        goto LABEL_21;
    }
  }

  HALB_CommandGate::ExecuteCommand(v19, v18);
  v20 = *(v44 + 6);
LABEL_24:
  HALS_ObjectMap::ReleaseObject(v14, v17);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  HALS_ObjectMap::ReleaseObject(v42, v21);
  _Block_object_dispose(&v43, 8);
  return v20;
}

void sub_1DE523F14(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  HALS_ObjectMap::ReleaseObject(*(v1 - 136), v3);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void ___ZNK15HALS_MetaStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke(void *a1, HALS_Object *a2)
{
  v3 = a1[7];
  HALS_ObjectMap::RetainObject(*(v3 + 152), a2);
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = *(v3 + 152);
  HALS_ObjectMap::ReleaseObject(v5, v6);
  *(*(a1[5] + 8) + 24) = *(v3 + 160);
  *(*(a1[6] + 8) + 24) = *(v3 + 52);
}

uint64_t HALS_MetaStream::IsPropertySettable(HALS_MetaStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (((*(*this + 96))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  if (a3->mSelector == 1935894638)
  {

    return HALS_Stream::IsPropertySettable(this, a2, a3);
  }

  else
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3002000000;
    v30 = __Block_byref_object_copy__9924;
    v31 = __Block_byref_object_dispose__9925;
    v32 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = ___ZNK15HALS_MetaStream18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke;
    v18[3] = &unk_1E86764D0;
    v18[4] = &v27;
    v18[5] = &v19;
    v18[6] = &v23;
    v18[7] = this;
    v9 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v9, v18);
    v10 = v28[5];
    if (v10)
    {
      v11 = HALS_IODevice::CopyStreamByIndex(v10, *(v24 + 24), *(v20 + 6));
      v12 = v11;
      if (v11)
      {
        IsPropertySettable = (*(*v11 + 104))(v11, v11[4], a3, a4);
      }

      else
      {
        IsPropertySettable = HALS_Stream::IsPropertySettable(this, a2, a3);
      }

      v15 = IsPropertySettable;
      HALS_ObjectMap::ReleaseObject(v12, v14);
    }

    else
    {
      v15 = HALS_Stream::IsPropertySettable(this, a2, a3);
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v27, 8);
    HALS_ObjectMap::ReleaseObject(v32, v16);
    return v15;
  }
}

void sub_1DE524314(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  HALS_ObjectMap::ReleaseObject(v21, a2);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose((v22 - 96), 8);
  HALS_ObjectMap::ReleaseObject(*(v22 - 56), v24);
  _Unwind_Resume(a1);
}

void ___ZNK15HALS_MetaStream18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke(void *a1, HALS_Object *a2)
{
  v3 = a1[7];
  HALS_ObjectMap::RetainObject(*(v3 + 152), a2);
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = *(v3 + 152);
  HALS_ObjectMap::ReleaseObject(v5, v6);
  *(*(a1[5] + 8) + 24) = *(v3 + 160);
  *(*(a1[6] + 8) + 24) = *(v3 + 52);
}

uint64_t HALS_MetaStream::HasProperty(HALS_MetaStream *this, unsigned int a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (!(*(*this + 184))(this, a3, a4))
  {
    return 0;
  }

  if (a3->mSelector != 1935894638)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3002000000;
    v29 = __Block_byref_object_copy__9924;
    v30 = __Block_byref_object_dispose__9925;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v25 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = ___ZNK15HALS_MetaStream11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke;
    v17[3] = &unk_1E86764A8;
    v17[4] = &v26;
    v17[5] = &v18;
    v17[6] = &v22;
    v17[7] = this;
    v10 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v10, v17);
    v11 = v27[5];
    if (v11)
    {
      v12 = HALS_IODevice::CopyStreamByIndex(v11, *(v23 + 24), *(v19 + 6));
      v13 = v12;
      if (v12)
      {
        HasProperty = (*(*v12 + 96))(v12, v12[4], a3, a4);
      }

      else
      {
        HasProperty = HALS_Stream::HasProperty(this, a2, a3, a4);
      }

      v9 = HasProperty;
      HALS_ObjectMap::ReleaseObject(v13, v15);
    }

    else
    {
      v9 = HALS_Stream::HasProperty(this, a2, a3, a4);
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
    HALS_ObjectMap::ReleaseObject(v31, v16);
    return v9;
  }

  return HALS_Stream::HasProperty(this, a2, a3, a4);
}

void sub_1DE524648(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  HALS_ObjectMap::ReleaseObject(v21, a2);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose((v22 - 96), 8);
  HALS_ObjectMap::ReleaseObject(*(v22 - 56), v24);
  _Unwind_Resume(a1);
}

void ___ZNK15HALS_MetaStream11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke(void *a1, HALS_Object *a2)
{
  v3 = a1[7];
  HALS_ObjectMap::RetainObject(*(v3 + 152), a2);
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = *(v3 + 152);
  HALS_ObjectMap::ReleaseObject(v5, v6);
  *(*(a1[5] + 8) + 24) = *(v3 + 160);
  *(*(a1[6] + 8) + 24) = *(v3 + 52);
}

void HALS_MetaStream::~HALS_MetaStream(AMCP::Utility::Dispatch_Queue **this)
{
  HALS_MetaStream::~HALS_MetaStream(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5977FC0;
  HALS_MetaStream::RemoveRealStreamPropertyListener(this);
  HALS_MetaStream::RemoveRealTapPropertyListener(this);
  v3 = this[19];
  if (v3)
  {
    HALS_ObjectMap::ReleaseObject_LongTerm(v3, v2);
  }

  if (g_static_start_options == 1)
  {
    do
    {
      AMCP::Utility::Dispatch_Queue::flush_all_work(this[22]);
      v4 = atomic_load(this[22] + 33);
    }

    while ((v4 & 1) != 0);
  }

  std::unique_ptr<AMCP::Utility::Dispatch_Queue>::~unique_ptr[abi:ne200100](this + 22);
  HALB_FormatList::~HALB_FormatList((this + 11));

  HALS_Stream::~HALS_Stream(this);
}

void HALS_MetaStream::Activate(HALS_MetaStream *this)
{
  (*(*this + 304))(this);

  HALS_Object::Activate(this, v2);
}

void sub_1DE524984(_Unwind_Exception *a1)
{
  std::unique_ptr<AMCP::Utility::Dispatch_Queue>::~unique_ptr[abi:ne200100](v1 + 22);
  HALB_FormatList::~HALB_FormatList(v2);
  HALS_Stream::~HALS_Stream(v1);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Graph::io_proc_cycle_info_to_audio_io_cycle_info(uint64_t a1, uint64_t a2)
{
  AMCP::Graph::dal_time_to_audio_time_stamp(a1, a2 + 64);
  AMCP::Graph::dal_time_to_audio_time_stamp((a1 + 40), a2 + 128);
  AMCP::Graph::dal_time_to_audio_time_stamp((a1 + 80), a2);
  result = AMCP::DAL::DAL_Time::get_host_time((a1 + 120));
  *(a2 + 192) = result;
  return result;
}

void AMCP::Graph::dal_time_to_audio_time_stamp(AMCP::DAL::DAL_Time *a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 3);
  v4 = *(a1 + 4);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (!v5)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "Client_IO_Handler.cpp";
      v25 = 1024;
      v26 = 25;
      v27 = 2080;
      v28 = "not (in.get_clock() != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Bad time passed to dal_time_to_audio_time_stamp", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Bad time passed to dal_time_to_audio_time_stamp", &v14);
    std::logic_error::logic_error(&v15, &v14);
    v15.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v16, &v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5991430;
    v17 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v16);
    v29 = "void AMCP::Graph::dal_time_to_audio_time_stamp(const AMCP::DAL::DAL_Time &, CA::TimeStamp &)";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
    v31 = 25;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v13);
  }

  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = floor(AMCP::DAL::DAL_Time::get_sample_time(a1));
  *(a2 + 8) = AMCP::DAL::DAL_Time::get_host_time(a1);
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a2 + 16) = (*(*v6 + 160))(v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *(a2 + 56) = 7;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE524D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Call_Audio_IO_Proc::reconfigure(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  os_unfair_lock_lock(a1);
  ++*(a1 + 8);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=[abi:ne200100](a1 + 16, a2);
  v10 = 0;
  v11 = 0;
  *(a1 + 192) = a3;
  *(a1 + 200) = a5;
  *(a1 + 204) = BYTE4(a5);
  v54 = a1 + 96;
  v55 = a1 + 48;
  lock = a1;
  v53 = a1 + 144;
  do
  {
    v57 = v10;
    v12 = (a6 + 24 * v11);
    v58 = *v12;
    v59 = v12[1];
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v59 - *v12) >> 4);
    v14 = (v55 + 24 * v11);
    v15 = *v14;
    v16 = v14[1];
    v17 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - *v14) >> 4);
    v18 = v13 - v17;
    if (v13 <= v17)
    {
      if (v13 >= v17)
      {
        goto LABEL_15;
      }

      v23 = v15 + 0x5555555555555570 * ((v59 - *v12) >> 4);
    }

    else
    {
      v19 = v14[2];
      if (0xCCCCCCCCCCCCCCCDLL * ((v19 - v16) >> 4) < v18)
      {
        if (v13 <= 0x333333333333333)
        {
          v20 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - v15) >> 4);
          v21 = 2 * v20;
          if (2 * v20 <= v13)
          {
            v21 = 0xAAAAAAAAAAAAAAABLL * ((v59 - *v12) >> 4);
          }

          if (v20 >= 0x199999999999999)
          {
            v22 = 0x333333333333333;
          }

          else
          {
            v22 = v21;
          }

          std::allocator<AMCP::Proc_Stream>::allocate_at_least[abi:ne200100](v22);
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      bzero(v14[1], 80 * ((80 * v18 - 80) / 0x50) + 80);
      v23 = v16 + 80 * ((80 * v18 - 80) / 0x50) + 80;
    }

    v14[1] = v23;
LABEL_15:
    v24 = (v54 + 24 * v11);
    v25 = *v24;
    v26 = v24[1];
    v27 = 0xCCCCCCCCCCCCCCCDLL * ((v26 - *v24) >> 3);
    v28 = v13 >= v27;
    v29 = v13 - v27;
    if (v29 != 0 && v28)
    {
      v30 = v24[2];
      if (0xCCCCCCCCCCCCCCCDLL * ((v30 - v26) >> 3) < v29)
      {
        if (v13 > 0x666666666666666)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v31 = 0xCCCCCCCCCCCCCCCDLL * ((v30 - v25) >> 3);
        v32 = 2 * v31;
        if (2 * v31 <= v13)
        {
          v32 = v13;
        }

        if (v31 >= 0x333333333333333)
        {
          v33 = 0x666666666666666;
        }

        else
        {
          v33 = v32;
        }

        if (v33 <= 0x666666666666666)
        {
          operator new();
        }

LABEL_60:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v34 = &v26[5 * v29];
      do
      {
        *v26 = 0;
        v26[4] = 0;
        v26 += 5;
      }

      while (v26 != v34);
      v24[1] = v34;
    }

    else if (!v28)
    {
      std::vector<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>>::__base_destruct_at_end[abi:ne200100](v54 + 24 * v11, v25 + 40 * v13);
    }

    v35 = (v53 + 24 * v11);
    v36 = *v35;
    v37 = v35[1];
    v38 = (v37 - *v35) >> 3;
    if (v13 <= v38)
    {
      v44 = v59;
      if (v13 < v38)
      {
        v45 = (v36 + 8 * v13);
        while (v37 != v45)
        {
          v47 = *--v37;
          v46 = v47;
          *v37 = 0;
          if (v47)
          {
            (*(*v46 + 8))(v46);
          }
        }

        v35[1] = v45;
      }
    }

    else
    {
      v39 = v13 - v38;
      v40 = v35[2];
      if (v39 > (v40 - v37) >> 3)
      {
        if (v13 >> 61)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v41 = v40 - v36;
        v42 = v41 >> 2;
        if (v41 >> 2 <= v13)
        {
          v42 = v13;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFF8)
        {
          v43 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v42;
        }

        if (!(v43 >> 61))
        {
          operator new();
        }

        goto LABEL_60;
      }

      bzero(v35[1], 8 * v39);
      v35[1] = &v37[v39];
      v44 = v59;
    }

    if (v44 != v58)
    {
      v48 = 0;
      v49 = 0;
      if (v13 <= 1)
      {
        v13 = 1;
      }

      do
      {
        v50 = *v35;
        if (*(*v12 + v48 + 40) == 1)
        {
          operator new();
        }

        v51 = *(v50 + 8 * v49);
        *(v50 + 8 * v49) = 0;
        if (v51)
        {
          (*(*v51 + 8))(v51);
        }

        ++v49;
        v48 += 48;
      }

      while (v13 != v49);
    }

    v10 = 1;
    v11 = 1;
  }

  while ((v57 & 1) == 0);

  os_unfair_lock_unlock(lock);
}

void std::vector<std::unique_ptr<AMCP::DAL::Fixed_Buffer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 40)
  {
    std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100]((i - 40), 0);
    result = std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](i - 32);
  }

  *(v3 + 8) = a2;
  return result;
}

void AMCP::Graph::Call_Audio_IO_Proc::update_proc(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=((a1 + 16), a2);
  ++*(a1 + 8);

  os_unfair_lock_unlock(a1);
}

void AMCP::Graph::align_buffer(AMCP::Graph *this, const AMCP::DAL::DAL_Time_Range *a2, AMCP::DAL::Fixed_Buffer *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 11);
  if (v5)
  {
    v6 = (*(*v5 + 48))(v5);
  }

  else
  {
    v6 = 0.0;
  }

  sample_time = AMCP::DAL::DAL_Time::get_sample_time(this);
  if (round(v6) < round(AMCP::DAL::DAL_Time::get_sample_time((this + 40)) - sample_time))
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
      *buf = 136315650;
      v25 = "Client_IO_Handler.cpp";
      v26 = 1024;
      v27 = 141;
      v28 = 2080;
      v29 = "not (buffer->get_capacity() >= target_range.get_range().length())";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v15);
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
    v30 = "void AMCP::Graph::align_buffer(const DAL::DAL_Time_Range &, DAL::Fixed_Buffer *)";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
    v32 = 141;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  v9 = *MEMORY[0x1E69E9840];

  AMCP::DAL::Fixed_Buffer::set_range(a2, this);
}

void sub_1DE525948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
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

void AMCP::Graph::dal_segment_to_proc_stream(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 80);
  if (v6)
  {
    AMCP::DAL::DAL_Timed_Segment::translate_range(v22, v6, a1);
    if ((v22[1] - v22[0]) != 96)
    {
      v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v14 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v9);
      }

      v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v17 = *v16;
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      else
      {
        v17 = *v16;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Client_IO_Handler.cpp";
        v38 = 1024;
        v39 = 41;
        v40 = 2080;
        v41 = "not (ranges.size() == 1)";
        _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("", &v24);
      std::logic_error::logic_error(&v25, &v24);
      v25.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
      std::logic_error::logic_error(&v27, &v25);
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = -1;
      v27.__vftable = &unk_1F5991430;
      v28 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v27);
      v42 = "void AMCP::Graph::dal_segment_to_proc_stream(const AMCP::DAL::DAL_Timed_Segment &, AMCP::Proc_Stream &, BufferListPtr &, AMCP::DAL::DAL_Time_Delta &)";
      v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
      v44 = 41;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(v34);
    }

    boost::operators_impl::operator+(buf, (v22[0] + 2), a4);
    AMCP::Graph::dal_time_to_audio_time_stamp(buf, a2);
    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    *(a2 + 64) = vcvtmd_s64_f64(v22[0][1] - *v22[0]);
    *(a2 + 68) = (*(**(a1 + 80) + 48))(*(a1 + 80));
    AMCP::DAL::DAL_Timed_Segment::translate_range(v34, *(a1 + 80), a1);
    if ((v34[1] - v34[0]) != 96)
    {
      v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v18 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v10);
      }

      v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        v21 = *v20;
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      else
      {
        v21 = *v20;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "DAL_Timed_Segment.cpp";
        v38 = 1024;
        v39 = 40;
        v40 = 2080;
        v41 = "not (ranges.size() == 1)";
        _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We don't allow AudioBufferLists from multi range buffers", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v33);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("We don't allow AudioBufferLists from multi range buffers", &v25);
      std::logic_error::logic_error(&v26, &v25);
      v26.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v27, &v26);
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = -1;
      v27.__vftable = &unk_1F5991430;
      v28 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v27);
      v42 = "BufferListPtr AMCP::DAL::DAL_Timed_Segment::get_audio_buffer_list() const";
      v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
      v44 = 40;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v23);
    }

    AMCP::DAL::DAL_Timed_Segment::get_audio_buffer_lists(buf, a1);
    v11 = *buf;
    v12 = **buf;
    **buf = 0;
    v35 = v12;
    std::__function::__value_func<void ()(AudioBufferList *)>::__value_func[abi:ne200100](v36, v11 + 8);
    v27.__vftable = buf;
    std::vector<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>,caulk::rt_allocator<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>>>::__destroy_vector::operator()[abi:ne200100](&v27);
    *buf = v34;
    std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
    std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::operator=[abi:ne200100](a3, &v35);
    std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&v35, 0);
    std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](v36);
    *(a2 + 72) = *a3;
    *buf = v22;
    std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    *(a2 + 72) = 0;
    *buf = 0;
    v42 = 0;
    std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::operator=[abi:ne200100](a3, buf);
    std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](buf, 0);
    std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&buf[8]);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1DE525FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40)
{
  *(v40 - 128) = &a39;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100]((v40 - 128));
  *(v40 - 128) = &a10;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100]((v40 - 128));
  _Unwind_Resume(a1);
}

void AMCP::Graph::create_cycle_info(AMCP::Graph *this, const AMCP::Graph::Manifest_Counter *a2, const AMCP::Graph::Manifest_Execution_Context *a3)
{
  *this = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  v7 = *(a2 + 3);
  v6 = *(a2 + 4);
  v29[0] = v7;
  v29[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Graph::Manifest_Counter::calculate_buffer_start(&v25, a2, v29, 1, a3, *(a3 + 10));
  AMCP::Graph::Manifest_Counter::calculate_buffer_start(&v21, a2, v29, 0, a3, *(a3 + 10));
  AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time(&v17, a2);
  *this = v25;
  *(this + 8) = v26;
  v9 = v27;
  v8 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(this + 3) = v9;
  *(this + 4) = v8;
  v11 = v23;
  v10 = v24;
  *(this + 10) = v21;
  *(this + 3) = v22;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(this + 8) = v11;
  *(this + 9) = v10;
  v12 = v19;
  v13 = v20;
  *(this + 20) = v17;
  *(this + 88) = v18;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(this + 13) = v12;
  *(this + 14) = v13;
  boost::operators_impl::operator+(&v14, &v17, a3);
  *(this + 120) = v14;
  *(this + 17) = v15;
  *(this + 9) = v16;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(this + 20) = v7;
  *(this + 21) = v6;
  *(this + 44) = *(a2 + 10);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1DE5262E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  v28 = *(v26 - 72);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  AMCP::Graph::IO_Proc_Cycle_Info::~IO_Proc_Cycle_Info(v24);
  _Unwind_Resume(a1);
}

void AMCP::Graph::IO_Proc_Cycle_Info::~IO_Proc_Cycle_Info(AMCP::Graph::IO_Proc_Cycle_Info *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void CASettingsStorage::CASettingsStorage(CASettingsStorage *this, const char *a2, char a3, CFPropertyListFormat a4)
{
  v4 = a4;
  *this = 0;
  *(this + 4) = 436;
  *(this + 2) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  *(this + 3) = 100;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 1;
  *(this + 49) = a3;
  *(this + 50) = v4;
  strlen(a2);
  operator new[]();
}

void CASettingsStorage::RefreshSettings(CASettingsStorage *this)
{
  if (*(this + 49) == 1 && *(this + 2) && (*(this + 4) || *(this + 5)) && *(this + 48) != 1)
  {
    return;
  }

  if (stat(*this, &v14))
  {
    goto LABEL_15;
  }

  if (*(this + 2))
  {
    v2 = *(this + 4);
    if (v2 >= v14.st_mtimespec.tv_sec && (v2 != v14.st_mtimespec.tv_sec || *(this + 5) >= v14.st_mtimespec.tv_nsec) && *(this + 48) != 1)
    {
      return;
    }
  }

  v3 = fopen(*this, "r");
  if (!v3)
  {
LABEL_15:
    if (!*(this + 2))
    {
      *(this + 2) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    }

    *(this + 4) = 0;
    *(this + 5) = 0;
    CASettingsStorage::SaveSettings(this);
    return;
  }

  v4 = v3;
  v5 = fileno(v3);
  if (flock(v5, 2) || (fseek(v4, 0, 2), v6 = MEMORY[0x1E12C1D70](v4), fseek(v4, 0, 0), !v6))
  {
    fclose(v4);
    *(this + 48) = 0;
    goto LABEL_15;
  }

  std::vector<unsigned char>::vector[abi:ne200100](__ptr, v6);
  fread(__ptr[0], v6, 1uLL, v4);
  v7 = fileno(v4);
  flock(v7, 8);
  v12 = 1;
  v8 = CFDataCreate(0, __ptr[0], v6);
  data = v8;
  v9 = *(this + 2);
  if (v9)
  {
    CFRelease(v9);
    *(this + 2) = 0;
    v8 = data;
  }

  v10 = CFPropertyListCreateWithData(0, v8, 2uLL, 0, 0);
  *(this + 2) = v10;
  if (v10)
  {
    *(this + 2) = v14.st_mtimespec;
  }

  CACFData::~CACFData(&data);
  if (__ptr[0])
  {
    __ptr[1] = __ptr[0];
    operator delete(__ptr[0]);
  }

  fclose(v4);
  *(this + 48) = 0;
  if (!v10)
  {
    goto LABEL_15;
  }
}

void sub_1DE52665C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CACFData::~CACFData(CACFData *this)
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

void CASettingsStorage::SaveSettings(CASettingsStorage *this)
{
  if ((*(this + 50) & 1) == 0)
  {
    v2 = *(this + 2);
    if (v2)
    {
      Data = CFPropertyListCreateData(0, v2, *(this + 3), 0, 0);
      v12 = 1;
      v3 = fopen(*this, "w+");
      v4 = v3;
      if (v3)
      {
        v5 = fileno(v3);
        if (flock(v5, 2))
        {
          fclose(v4);
        }

        else
        {
          if (*(this + 4))
          {
            v6 = fileno(v4);
            fchmod(v6, *(this + 4));
          }

          BytePtr = CFDataGetBytePtr(Data);
          Length = CFDataGetLength(Data);
          fwrite(BytePtr, Length, 1uLL, v4);
          fflush(v4);
          v9 = fileno(v4);
          flock(v9, 8);
          fclose(v4);
          stat(*this, &v10);
          *(this + 2) = v10.st_mtimespec;
        }
      }

      CACFData::~CACFData(&Data);
    }
  }
}

uint64_t CASettingsStorage::CopyCFTypeValue(CFDictionaryRef *this, const __CFString *a2, const void **a3, const void *a4)
{
  CASettingsStorage::RefreshSettings(this);
  result = CFDictionaryGetValueIfPresent(this[2], a2, a3);
  if (result)
  {
    result = *a3;
    if (*a3)
    {

      return CFRetain(result);
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void CASettingsStorage::SetCFTypeValue(CFMutableDictionaryRef *this, const __CFString *a2, const void *a3)
{
  CASettingsStorage::RefreshSettings(this);
  CFDictionarySetValue(this[2], a2, a3);

  CASettingsStorage::SaveSettings(this);
}

void CASettingsStorage::RemoveAllValues(CFMutableDictionaryRef *this)
{
  CASettingsStorage::RefreshSettings(this);
  CFDictionaryRemoveAllValues(this[2]);

  CASettingsStorage::SaveSettings(this);
}

uint64_t std::default_delete<AMCP::Graph::Timebase_Set>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 40);
    if (v2)
    {
      *(v1 + 48) = v2;
      operator delete(v2);
    }

    std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(v1);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::default_delete<AMCP::Graph::Manifest_Counter>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_pointer<AMCP::Graph::Timebase_Set  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteIN4AMCP5Graph12Timebase_SetEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<AMCP::Graph::Timebase_Set  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void *std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::__emplace_unique_key_args<std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase>>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void AMCP::Graph::Manifest_Inventory::set_nominal_buffer_size(void *a1, int a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    do
    {
      v6 = v5[12];
      v7 = *(v6 + 304);
      if (v7)
      {
        if (*(v6 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(v11, *(v6 + 8), *(v6 + 16));
        }

        else
        {
          v11[0] = *(v6 + 8);
        }

        v12 = a2;
        __p = *&v11[0].__r_.__value_.__l.__data_;
        v8 = v11[0].__r_.__value_.__r.__words[2];
        memset(v11, 0, 24);
        v9 = *(v6 + 40);
        v10 = *(v6 + 32);
        v14 = v8;
        v15 = v10;
        v16 = v9;
        (*(*v7 + 104))(v7, &v12, a3);
        if (SHIBYTE(v14) < 0)
        {
          operator delete(__p);
        }
      }

      v5 = *v5;
    }

    while (v5);
  }
}

void sub_1DE526D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest_Inventory::request_shared_buffer_for_connection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, uint64_t a6, void *a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!*a7 || (v7 = *a5, v7 == (*(**a7 + 152))(*a7)))
  {
    ++AMCP::Graph::Manifest_Inventory::request_shared_buffer_for_connection(std::shared_ptr<AMCP::DAL::DAL_Buffer>,AMCP::Wire_Identifier const&,CA::StreamDescription,AMCP::Graph::Manifest_Buffer::Buffer_Style,std::shared_ptr<AMCP::Graph::Timebase>,Buffer_Alignment,Drift_Correction_Status,Node_Buffer_Ownership,int)::count;
    operator new();
  }

  v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v9 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v8);
  }

  v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = *v11;
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  else
  {
    v12 = *v11;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v17 = 136315650;
    v18 = "Manifest_Inventory.cpp";
    v19 = 1024;
    v20 = 78;
    v21 = 2080;
    v22 = "not (clock == nullptr or format.mSampleRate == clock->get_sample_rate())";
    _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Unexpected sample rate for connection", &v17, 0x1Cu);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v14);
  __cxa_allocate_exception(0x40uLL);
  caulk::make_string("Unexpected sample rate for connection", &v13);
  std::logic_error::logic_error(&v16, &v13);
  v16.__vftable = (MEMORY[0x1E69E55A8] + 16);
  std::logic_error::logic_error(&v26, &v16);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = -1;
  v26.__vftable = &unk_1F5991430;
  v27 = &unk_1F5991458;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v17, &v26);
  v23 = "std::shared_ptr<Manifest_Buffer> AMCP::Graph::Manifest_Inventory::request_shared_buffer_for_connection(std::shared_ptr<DAL::DAL_Buffer>, const Manifest_Buffer::Buffer_Identifier &, CA::StreamDescription, Manifest_Buffer::Buffer_Style, Timebase_Ref, Buffer_Alignment, Drift_Correction_Status, Node_Buffer_Ownership, int32_t)";
  __p = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
  v25 = 78;
  applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
}

void sub_1DE527588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v57);
  operator delete(v59);
  _Unwind_Resume(a1);
}

void AMCP::Graph::Manifest_Inventory::add_buffer(void *a1, void *a2)
{
  v4 = *a2;
  if (*(*a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *(v4 + 8), *(v4 + 16));
  }

  else
  {
    v5 = *(v4 + 8);
    v24.__r_.__value_.__r.__words[2] = *(v4 + 24);
    *&v24.__r_.__value_.__l.__data_ = v5;
  }

  v25 = *(v4 + 32);
  v26 = *(v4 + 40);
  if (*(v4 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v4 + 48), *(v4 + 56));
  }

  else
  {
    v6 = *(v4 + 48);
    __p.__r_.__value_.__r.__words[2] = *(v4 + 64);
    *&__p.__r_.__value_.__l.__data_ = v6;
  }

  v28 = *(v4 + 72);
  v29 = *(v4 + 80);
  v7 = std::hash<AMCP::Wire_Identifier>::operator()(&v24);
  v8 = v7;
  v9 = a1[2];
  v22 = a2;
  if (!*&v9)
  {
    goto LABEL_25;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(a1[1] + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_25:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_25;
    }

LABEL_24:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_25;
    }
  }

  v33 = (v14 + 2);
  v34 = v14 + 5;
  v35 = v14 + 6;
  p_p = &v24;
  v31 = &v25;
  v32 = &v26;
  if (!std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v33, &p_p))
  {
    goto LABEL_24;
  }

  v33 = (v14 + 7);
  v34 = v14 + 10;
  v35 = v14 + 11;
  p_p = &__p;
  v31 = &v28;
  v32 = &v29;
  if (!std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v33, &p_p))
  {
    goto LABEL_24;
  }

  v17 = *v22;
  v16 = v22[1];
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = v14[13];
  v14[12] = v17;
  v14[13] = v16;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v19 = a1[10];
  v20 = *(*v22 + 128);
  v21 = *(*v22 + 136);
  v23 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::__emplace_unique_key_args<std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase>>(v19, v20);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

void sub_1DE527D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest_Buffer>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 172) == 2)
  {
    v2 = *(a1 + 336);
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  v3 = *(a1 + 360);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 336);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 304);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 264);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a1 + 224);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(a1 + 160);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 55) < 0)
  {
    v9 = *(a1 + 32);

    operator delete(v9);
  }
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest_Buffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5978168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t *std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>>>::find<AMCP::Wire_Identifier>(void *a1, uint64_t a2)
{
  v4 = std::hash<AMCP::Wire_Identifier>::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      v17 = (i + 2);
      v18 = i + 5;
      v19 = i + 6;
      v14 = a2;
      v15 = a2 + 24;
      v16 = a2 + 32;
      if (std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v17, &v14))
      {
        v17 = (i + 7);
        v18 = i + 10;
        v19 = i + 11;
        v14 = a2 + 40;
        v15 = a2 + 64;
        v16 = a2 + 72;
        if (std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v17, &v14))
        {
          return i;
        }
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void AMCP::Graph::Manifest_Inventory::take_power_assertions(AMCP::Graph::Manifest_Inventory *this)
{
  if ((*this & 1) == 0)
  {
    v1 = *(this + 10);
    v2 = *(this + 11);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    for (i = *(v1 + 16); i; i = *i)
    {
      (*(*i[2] + 232))(i[2]);
    }

    if (v2)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }
}

void AMCP::Graph::Manifest_Inventory::begin_processing(AMCP::Graph::Manifest_Inventory *this, int a2)
{
  if (this)
  {
    v3 = this;
    do
    {
      v4 = *(v3 + 12);
      v5 = *(v4 + 304);
      if (v5)
      {
        if (*(v4 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(v9, *(v4 + 8), *(v4 + 16));
        }

        else
        {
          v9[0] = *(v4 + 8);
        }

        v10 = a2;
        __p = *&v9[0].__r_.__value_.__l.__data_;
        v6 = v9[0].__r_.__value_.__r.__words[2];
        memset(v9, 0, 24);
        v7 = *(v4 + 40);
        v8 = *(v4 + 32);
        v12 = v6;
        v13 = v8;
        v14 = v7;
        (*(*v5 + 184))(v5, &v10, *(v4 + 156));
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p);
        }
      }

      v3 = *v3;
    }

    while (v3);
  }
}

void sub_1DE528194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest_Inventory::begin_cycle(void *a1, uint64_t *a2, float *a3)
{
  for (i = *(a1[10] + 16); i; i = *i)
  {
    (*(*i[2] + 88))(i[2]);
  }

  for (j = a1[3]; j; j = *j)
  {
    v8 = j[12];
    v9 = *(v8 + 136);
    v22[0] = *(v8 + 128);
    v22[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::DAL_Time_Delta::translate_time_delta(v20, a3, v22);
    AMCP::Graph::Manifest_Counter::calculate_buffer_start(v18, a1[8], v22, *(j[12] + 156), v20, a3[10]);
    v10 = *a2;
    if (*a2)
    {
      v11 = *j[12];
      vcvtmd_s64_f64(AMCP::DAL::DAL_Time::get_sample_time(v18));
      v17 = j[12];
      AMCP::Graph::Manifest_Log::add_message(v10, 4, "Manifest_Buffer(%zu)::begin_cycle: cycle anchor: %lld  %p", v12, v13, v14, v15, v16, v11);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1DE5282FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

double AMCP::Graph::Manifest_Inventory::end_cycle(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2, double *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 14);
  v6 = *(a1 + 15);
  while (v5 != v6)
  {
    v8 = *v5;
    v5 += 2;
    AMCP::IO_Core::Device_Connection::end_cycle(v8, a2, a3);
  }

  for (i = *(a1 + 3); i; i = *i)
  {
    AMCP::Graph::Manifest_Buffer::advance(i[12]);
  }

  v10 = *(a1 + 10);
  if (!*(v10 + 24))
  {
    v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v33 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v35 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v34 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      v36 = *v35;
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    else
    {
      v36 = *v35;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Timebase_Set.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 32;
      *&buf[18] = 2080;
      *&buf[20] = "not (not m_timebases.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v36, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to run an manifest with no timebases", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v46);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Attempt to run an manifest with no timebases", &v38);
    std::logic_error::logic_error(&v39, &v38);
    v39.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v40, &v39);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = -1;
    v40.__vftable = &unk_1F5991430;
    v41 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v40);
    *&buf[32] = "void AMCP::Graph::Timebase_Set::end_cycle(const DAL::DAL_Time_Delta &) const";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Timebase_Set.cpp";
    v49 = 32;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
  }

  v11 = *(v10 + 16);
  if (v11)
  {
    while (1)
    {
      *buf = *a3;
      v12 = *(a3 + 3);
      *&buf[16] = a3[2];
      *&buf[24] = v12;
      v13 = *(a3 + 4);
      *&buf[32] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v11[2];
      v16 = (v15 | v12) == 0;
      if (!v15 || !v12)
      {
        goto LABEL_25;
      }

      v17 = (*(*v15 + 16))(v15);
      v18 = (*(*v12 + 16))(v12);
      v19 = *(v17 + 23);
      if (v19 >= 0)
      {
        v20 = *(v17 + 23);
      }

      else
      {
        v20 = *(v17 + 8);
      }

      v21 = *(v18 + 23);
      v22 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(v18 + 8);
      }

      if (v20 == v21)
      {
        break;
      }

      v16 = 0;
      if (v13)
      {
        goto LABEL_26;
      }

LABEL_27:
      if (v16)
      {
        v25 = v11[2];
        if ((buf[0] & 2) != 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if ((*a3 & 1) == 0)
        {
          AMCP::DAL::DAL_Time_Delta::validate(a3);
        }

        v26 = *(a3 + 2);
        v27 = *(v11 + 1);
        v28 = v11[3];
        if (v28)
        {
          atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
        }

        *buf = 1;
        *&buf[8] = 0;
        *&buf[16] = v26;
        *&buf[24] = v27;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        v25 = v11[2];
      }

      AMCP::DAL::DAL_Time_Delta::validate(buf);
LABEL_38:
      (*(*v25 + 96))(v25, *&buf[8]);
      if (*&buf[32])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_44;
      }
    }

    if (v19 >= 0)
    {
      v23 = v17;
    }

    else
    {
      v23 = *v17;
    }

    if (v22 >= 0)
    {
      v24 = v18;
    }

    else
    {
      v24 = *v18;
    }

    v16 = memcmp(v23, v24, v20) == 0;
LABEL_25:
    if (!v13)
    {
      goto LABEL_27;
    }

LABEL_26:
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    goto LABEL_27;
  }

LABEL_44:
  v29 = *(a1 + 8);
  if ((*a3 & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(a3);
  }

  v30 = a3[1];
  v31 = *MEMORY[0x1E69E9840];

  return AMCP::Graph::Manifest_Counter::advance(v29, v30);
}

void sub_1DE5287F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest_Inventory::release_power_assertions(AMCP::Graph::Manifest_Inventory *this)
{
  if ((*this & 1) == 0)
  {
    v1 = *(this + 10);
    v2 = *(this + 11);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    for (i = *(v1 + 16); i; i = *i)
    {
      (*(*i[2] + 240))(i[2]);
    }

    if (v2)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }
}

void AMCP::Graph::Manifest_Inventory::anchor_time(AMCP::Graph::Manifest_Inventory *this, int a2, const AMCP::Graph::Manifest_Execution_Context *a3, const AMCP::DAL::DAL_Time *a4)
{
  v89 = *MEMORY[0x1E69E9840];
  if (!*(*(this + 10) + 24))
  {
    v63 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v63 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v65 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v64 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v64)
    {
      atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      v66 = *v65;
      std::__shared_weak_count::__release_shared[abi:ne200100](v64);
    }

    else
    {
      v66 = *v65;
    }

    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      *v81 = 136315650;
      *&v81[4] = "Manifest_Inventory.cpp";
      *&v81[12] = 1024;
      *&v81[14] = 291;
      *&v81[18] = 2080;
      *&v81[20] = "not (m_timebases->size() != 0)";
      _os_log_error_impl(&dword_1DE1F9000, v66, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to run an manifest with no timebases", v81, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v74);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Attempt to run an manifest with no timebases", &v73);
    std::logic_error::logic_error(&__src, &v73);
    __src.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v75, &__src);
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = -1;
    v75.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v75.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v81, &v75);
    p_src = "void AMCP::Graph::Manifest_Inventory::anchor_time(Object_ID, const Manifest_Execution_Context &, const DAL::DAL_Time &) const";
    v83 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
    v84 = 291;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v72);
  }

  v6 = *(this + 8);
  if ((*v6 & 1) == 0)
  {
    AMCP::Graph::Manifest_Counter::start(v6, a4);
  }

  __src.__vftable = 0;
  __src.__imp_.__imp_ = 0;
  v71 = 0;
  v7 = *(this + 3);
  v67 = a3;
  v69 = this;
  if (v7)
  {
    imp = 0;
    do
    {
      v9 = *(v7 + 6);
      if (*(&v9 + 1))
      {
        atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
        imp = __src.__imp_.__imp_;
      }

      if (imp >= v71)
      {
        v10 = __src.__vftable;
        v11 = imp - __src.__vftable;
        v12 = (imp - __src.__vftable) >> 4;
        v13 = v12 + 1;
        if ((v12 + 1) >> 60)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v14 = v71 - __src.__vftable;
        if ((v71 - __src.__vftable) >> 3 > v13)
        {
          v13 = v14 >> 3;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        p_src = &__src;
        if (v15)
        {
          std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = v12;
        v17 = (16 * v12);
        v18 = &v17[-v16];
        *v17 = v9;
        imp = (v17 + 1);
        memcpy(v18, v10, v11);
        v19 = __src.__vftable;
        v20 = v71;
        __src.__vftable = v18;
        __src.__imp_.__imp_ = imp;
        v71 = 0;
        *&v81[16] = v19;
        *&v81[24] = v20;
        *v81 = v19;
        *&v81[8] = v19;
        v6 = std::__split_buffer<std::shared_ptr<DSP_Host_Types::FormatDescription>>::~__split_buffer(v81);
      }

      else
      {
        *imp = v9;
        imp += 16;
      }

      __src.__imp_.__imp_ = imp;
      v7 = *v7;
    }

    while (v7);
    v21 = __src.__vftable;
    if (__src.__vftable != imp)
    {
LABEL_21:
      while (1)
      {
        v22 = v21->~logic_error;
        if (!*(v21->~logic_error + 37))
        {
          break;
        }

        v21 = (v21 + 16);
        if (v21 == imp)
        {
          v21 = imp;
          goto LABEL_30;
        }
      }

      v23 = imp - 16;
      while (v23 != v21)
      {
        imp = v23;
        v25 = *v23;
        v23 -= 16;
        v24 = v25;
        if (*(v25 + 296))
        {
          v21->~logic_error = v24;
          *(v23 + 2) = v22;
          v26 = v21->~logic_error_0;
          v21->~logic_error_0 = *(v23 + 3);
          *(v23 + 3) = v26;
          v21 = (v21 + 16);
          if (v21 != imp)
          {
            goto LABEL_21;
          }

          break;
        }
      }
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_30:
  if (v21 != __src.__imp_.__imp_)
  {
    v27 = v21;
    do
    {
      for (i = __src.__vftable; i != v21; i = (i + 16))
      {
        v29 = i->~logic_error;
        if (!*(i->~logic_error + 37))
        {
          v51 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v51 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v6);
          }

          v53 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v52 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
            v54 = *v53;
            std::__shared_weak_count::__release_shared[abi:ne200100](v52);
          }

          else
          {
            v54 = *v53;
          }

          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            *v81 = 136315650;
            *&v81[4] = "Manifest_Inventory.cpp";
            *&v81[12] = 1024;
            *&v81[14] = 226;
            *&v81[18] = 2080;
            *&v81[20] = "not ((*i)->is_processing())";
            _os_log_error_impl(&dword_1DE1F9000, v54, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s All peers must be running", v81, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v80);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("All peers must be running", &v73);
          std::logic_error::logic_error(&v74, &v73);
          v74.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v75, &v74);
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = -1;
          v75.__r_.__value_.__r.__words[0] = &unk_1F5991430;
          v75.__r_.__value_.__r.__words[2] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v81, &v75);
          p_src = "std::vector<std::shared_ptr<Manifest_Buffer>>::iterator AMCP::Graph::find_peer(const std::shared_ptr<Manifest_Buffer> &, std::vector<std::shared_ptr<Manifest_Buffer>>::iterator, std::vector<std::shared_ptr<Manifest_Buffer>>::iterator)";
          v83 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
          v84 = 226;
          std::vector<void *>::vector[abi:ne200100](&v72);
        }

        if (*(v29 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(v81, *(v29 + 1), *(v29 + 2));
        }

        else
        {
          v30 = *(v29 + 8);
          *&v81[16] = *(v29 + 3);
          *v81 = v30;
        }

        *&v81[24] = *(v29 + 4);
        LODWORD(p_src) = *(v29 + 10);
        v31 = *v27;
        if (*(*v27 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v75, *(v31 + 8), *(v31 + 16));
        }

        else
        {
          v32 = *(v31 + 8);
          v75.__r_.__value_.__r.__words[2] = *(v31 + 24);
          *&v75.__r_.__value_.__l.__data_ = v32;
        }

        v76 = *(v31 + 32);
        LODWORD(v77) = *(v31 + 40);
        v85 = v81;
        v86 = &v81[24];
        p_p_src = &p_src;
        v73.__r_.__value_.__r.__words[0] = &v75;
        v73.__r_.__value_.__l.__size_ = &v76;
        v73.__r_.__value_.__r.__words[2] = &v77;
        v6 = std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v85, &v73);
        v33 = v6;
        if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v75.__r_.__value_.__l.__data_);
        }

        if ((v81[23] & 0x80000000) != 0)
        {
          operator delete(*v81);
        }

        if (v33)
        {
          if (i != v21)
          {
            v34 = *v27;
            v35 = i->~logic_error;
            v36 = i->~logic_error_0;
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (*(v34 + 37))
            {
              v59 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v59 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v34);
              }

              v61 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v60 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v60)
              {
                atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
                v62 = *v61;
                std::__shared_weak_count::__release_shared[abi:ne200100](v60);
              }

              else
              {
                v62 = *v61;
              }

              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                *v81 = 136315650;
                *&v81[4] = "Manifest_Buffer.cpp";
                *&v81[12] = 1024;
                *&v81[14] = 125;
                *&v81[18] = 2080;
                *&v81[20] = "not (not is_processing())";
                _os_log_error_impl(&dword_1DE1F9000, v62, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Don't call anchor_to_timebase_anchor on buffers that are currently processing", v81, 0x1Cu);
              }

              AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v80);
              __cxa_allocate_exception(0x40uLL);
              caulk::make_string("Don't call anchor_to_timebase_anchor on buffers that are currently processing", &v73);
              std::logic_error::logic_error(&v74, &v73);
              v74.__vftable = (MEMORY[0x1E69E55A8] + 16);
              std::logic_error::logic_error(&v75, &v74);
              v76 = 0;
              v77 = 0;
              v78 = 0;
              v79 = -1;
              v75.__r_.__value_.__r.__words[0] = &unk_1F5991430;
              v75.__r_.__value_.__r.__words[2] = &unk_1F5991458;
              boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v81, &v75);
              p_src = "void AMCP::Graph::Manifest_Buffer::anchor_to_peer(std::shared_ptr<Manifest_Buffer>, AMCP::Object_ID, Manifest_Counter &, const Manifest_Execution_Context &)";
              v83 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
              v84 = 125;
              applesauce::backtrace::snapshot_N<64>::snapshot_N(&v72);
            }

            v37 = *(v69 + 8);
            *v81 = *(v35 + 13);
            v38 = *(v35 + 29);
            *&v81[16] = *(v35 + 28);
            *&v81[24] = v38;
            v39 = *(v35 + 30);
            p_src = v39;
            if (v39)
            {
              atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            AMCP::Graph::Manifest_Buffer::anchor_time(v34, v81, a2, v37, a3);
            goto LABEL_59;
          }

          break;
        }
      }

      v40 = *v27;
      if (*(*v27 + 296))
      {
        v55 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v55 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v57 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v56 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
          v58 = *v57;
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }

        else
        {
          v58 = *v57;
        }

        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          *v81 = 136315650;
          *&v81[4] = "Manifest_Buffer.cpp";
          *&v81[12] = 1024;
          *&v81[14] = 135;
          *&v81[18] = 2080;
          *&v81[20] = "not (not is_processing())";
          _os_log_error_impl(&dword_1DE1F9000, v58, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Don't call anchor_to_timebase_anchor on buffers that are currently processing", v81, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v80);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Don't call anchor_to_timebase_anchor on buffers that are currently processing", &v73);
        std::logic_error::logic_error(&v74, &v73);
        v74.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v75, &v74);
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v79 = -1;
        v75.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v75.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v81, &v75);
        p_src = "void AMCP::Graph::Manifest_Buffer::anchor_to_timebase_anchor(AMCP::Object_ID, Manifest_Counter &, const Manifest_Execution_Context &)";
        v83 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v84 = 135;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v72);
      }

      v41 = *(v69 + 8);
      v36 = *(v40 + 17);
      v85 = *(v40 + 16);
      v86 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      a3 = v67;
      AMCP::DAL::DAL_Time_Delta::translate_time_delta(v81, v67, &v85);
      AMCP::Graph::Manifest_Counter::calculate_buffer_start(&v75, v41, &v85, *(v40 + 39), v81, *(v67 + 10));
      AMCP::Graph::Manifest_Buffer::anchor_time(v40, &v75, a2, v41, v67);
      if (v77)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v77);
      }

LABEL_59:
      v6 = p_src;
      if (p_src)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](p_src);
      }

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      v27 += 16;
    }

    while (v27 != __src.__imp_.__imp_);
  }

  for (j = *(v69 + 3); j; j = *j)
  {
    ++*(j[12] + 296);
  }

  *v81 = &__src;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](v81);
  v43 = *(v69 + 14);
  for (k = *(v69 + 15); v43 != k; v43 += 2)
  {
    AMCP::IO_Core::Device_Connection::get_timebase(&v75, *v43);
    AMCP::DAL::DAL_Time_Delta::translate_time_delta(v81, a3, &v75);
    if (v75.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v75.__r_.__value_.__l.__size_);
    }

    v45 = *(v69 + 8);
    AMCP::IO_Core::Device_Connection::get_timebase(&v85, *v43);
    AMCP::Graph::Manifest_Counter::calculate_buffer_start(&v75, v45, &v85, 1, v81, *(a3 + 10));
    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    v46 = *v43;
    v47 = std::__shared_weak_count::lock((*v43)[1]);
    v48 = *v46;
    os_unfair_lock_lock(v48 + 1);
    sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v75);
    v85 = &unk_1F5966538;
    v86 = *&sample_time;
    v88 = &v85;
    AMCP::IO_Core::Device_Node_State::for_each_stream_connection(v48, 1u, &v85);
    std::__function::__value_func<BOOL ()(AMCP::IO_Core::Stream_Connection &)>::~__value_func[abi:ne200100](&v85);
    os_unfair_lock_unlock(v48 + 1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    if (v77)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    }

    if (p_src)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](p_src);
    }
  }

  v50 = *MEMORY[0x1E69E9840];
}

void sub_1DE52974C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, char *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, std::__shared_weak_count *a48)
{
  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a48);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  a30 = &a16;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a30);
  _Unwind_Resume(a1);
}

void AMCP::Graph::Manifest_Inventory::cross_check_buffer(AMCP::Log::AMCP_Scope_Registry *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1 + 24;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (**(v2 + 12) == *a2)
    {
      goto LABEL_12;
    }
  }

  v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v3 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v5;
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315394;
    v9 = "Manifest_Inventory.cpp";
    v10 = 1024;
    v11 = 324;
    _os_log_debug_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_DEBUG, "%32s:%-5d Found a manifest buffer that is not in the buffer map", &v8, 0x12u);
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
}

void std::__shared_ptr_emplace<AMCP::Graph::Converter>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 144);
  v3 = *(a1 + 136);
  v10 = *(a1 + 128);
  v11 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 120))(v2, &v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v4 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a1 + 152);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(a1 + 136);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table((a1 + 72));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void std::__shared_ptr_emplace<AMCP::Graph::Converter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59781B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void *AMCP::Graph::Manifest_Inventory::get_buffer_alignments(void *this, uint64_t a2)
{
  this[1] = 0;
  this[2] = 0;
  *this = this + 1;
  if (a2)
  {
    v2 = *(*(a2 + 96) + 156);
    operator new();
  }

  return this;
}

uint64_t AMCP::Graph::Manifest_Inventory::report_thread_error(uint64_t this)
{
  v2 = *MEMORY[0x1E69E9840];
  if (this)
  {
    this = (*(*this + 48))(this);
  }

  v1 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t HALS_DSPHostModifierStorage<AHAL_DSP::IHostModifier_HostPrivateReferenceStreamDeviceUID,std::string>::set_requested(uint64_t a1, const void **a2)
{
  std::mutex::lock((a1 + 72));
  if (*(a1 + 64) != 1)
  {
    v4 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v5 = 24;
      goto LABEL_7;
    }

LABEL_5:
    __p = *v4;
    goto LABEL_8;
  }

  v4 = (a1 + 40);
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v5 = 48;
  v4 = (a1 + 40);
LABEL_7:
  std::string::__init_copy_ctor_external(&__p, *v4, *(a1 + v5));
LABEL_8:
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v9 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v7 == size)
  {
    if (v6 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v12 = memcmp(v10, p_p, v7) == 0;
    if (v9 < 0)
    {
LABEL_25:
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v12)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v12 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_25;
    }
  }

  if (!v12)
  {
LABEL_26:
    std::optional<std::string>::operator=[abi:ne200100]<std::string const&,void>((a1 + 40), a2);
    atomic_exchange((a1 + 8), 1u);
  }

LABEL_27:
  std::mutex::unlock((a1 + 72));
  v13 = *(*a1 + 64);

  return v13(a1);
}

void HALS_DSPHostPrivateReferenceStreamProxy::LocalDefaultOuputDeviceChangedListener::decouple(HALS_DSPHostPrivateReferenceStreamProxy::LocalDefaultOuputDeviceChangedListener *this)
{
  std::mutex::lock((this + 56));
  v2 = *(this + 6);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 5);
      if (v5)
      {
        std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(__p, *(this + 1), *(this + 2));
        v21 = __p[1];
        __p[0] = 0;
        __p[1] = 0;
        std::mutex::lock((v5 + 16));
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v7 = (v5 + 88);
        v6 = *(v5 + 88);
        if (!v6)
        {
          goto LABEL_14;
        }

        v8 = (v5 + 88);
        do
        {
          v9 = v6[5];
          v10 = v9 >= v21;
          v11 = v9 < v21;
          if (v10)
          {
            v8 = v6;
          }

          v6 = v6[v11];
        }

        while (v6);
        if (v8 == v7 || v21 < v8[5])
        {
LABEL_14:
          v8 = (v5 + 88);
        }

        if (v21)
        {
          std::__shared_weak_count::__release_weak(v21);
        }

        if (v7 != v8)
        {
          v12 = v8[1];
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            v14 = v8;
            do
            {
              v13 = v14[2];
              v15 = *v13 == v14;
              v14 = v13;
            }

            while (!v15);
          }

          if (*(v5 + 80) == v8)
          {
            *(v5 + 80) = v13;
          }

          v16 = *(v5 + 88);
          --*(v5 + 96);
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v16, v8);
          v17 = v8[5];
          if (v17)
          {
            std::__shared_weak_count::__release_weak(v17);
          }

          operator delete(v8);
        }

        std::mutex::unlock((v5 + 16));
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        if (__p[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v18 = *(this + 6);
    *(this + 5) = 0;
    *(this + 6) = 0;
    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }
  }

  else
  {
    *(this + 5) = 0;
    *(this + 6) = 0;
  }

  v19 = *(this + 3);
  if (v19)
  {
    v23 = 0;
    LOBYTE(__p[0]) = 0;
    HALS_DSPHostModifierStorage<AHAL_DSP::IHostModifier_HostPrivateReferenceStreamDeviceUID,std::string>::set_requested(v19, __p);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v20 = *(this + 4);
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::mutex::unlock((this + 56));
}

void sub_1DE52A3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(&a9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&a9 + 1));
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  std::mutex::unlock((v15 + 56));
  _Unwind_Resume(a1);
}

void HALS_DSPHostPrivateReferenceStreamProxy::~HALS_DSPHostPrivateReferenceStreamProxy(HALS_DSPHostPrivateReferenceStreamProxy *this)
{
  HALS_DSPHostPrivateReferenceStreamProxy::~HALS_DSPHostPrivateReferenceStreamProxy(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5978220;
  v2 = *(this + 18);
  if (v2)
  {
    v3 = *(this + 19);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_DSPHostPrivateReferenceStreamProxy::LocalDefaultOuputDeviceChangedListener::decouple(v2);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v4 = *(this + 19);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  HALS_DSPHostAudioStream::~HALS_DSPHostAudioStream(this, &off_1F5978288);
}

void non-virtual thunk toADS_DeviceManager::~ADS_DeviceManager(ADS_DeviceManager *this)
{
  HALS_PlugIn::~HALS_PlugIn((this - 336));

  JUMPOUT(0x1E12C1730);
}

{
  HALS_PlugIn::~HALS_PlugIn((this - 336));
}

void ADS_DeviceManager::~ADS_DeviceManager(ADS_DeviceManager *this)
{
  HALS_PlugIn::~HALS_PlugIn(this);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_UCPlugIn>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5978CA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void ADSLoader::~ADSLoader(ADSLoader *this)
{
  *this = &unk_1F59785F8;
  CACFString::~CACFString((this + 8));

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59785F8;
  CACFString::~CACFString((this + 8));
}

void non-virtual thunk toHALS_IOUABox::~HALS_IOUABox(HALS_IOUABox *this, HALS_Object *a2)
{
  HALS_IOUABox::~HALS_IOUABox((this - 344), a2);

  JUMPOUT(0x1E12C1730);
}

{
  HALS_IOUABox::~HALS_IOUABox((this - 344), a2);
}

void HALS_IOUABox::~HALS_IOUABox(HALS_IOUABox *this, HALS_Object *a2)
{
  *this = &unk_1F5978630;
  v3 = (this + 344);
  *(this + 43) = &unk_1F5978730;
  v4 = *(this + 49);
  if (v4)
  {
    *(this + 50) = v4;
    operator delete(v4);
  }

  HALS_IOUAObject::~HALS_IOUAObject(v3, a2);

  HALS_Box::~HALS_Box(this);
}

{
  HALS_IOUABox::~HALS_IOUABox(this, a2);

  JUMPOUT(0x1E12C1730);
}

HALS_ObjectMap *HALS_IOUABox::_CopyControlByDescription(HALS_IOUABox *this, HALS_Object *a2, int a3, int a4)
{
  v4 = *(this + 49);
  v5 = *(this + 50);
  if (v4 != v5)
  {
    while (1)
    {
      v6 = *v4;
      if (*v4)
      {
        if (*(v6 + 5) == a2 && *(v6 + 12) == a3 && *(v6 + 13) == a4)
        {
          break;
        }
      }

      if (++v4 == v5)
      {
        return 0;
      }
    }
  }

  if (v4 == v5)
  {
    return 0;
  }

  v7 = *v4;
  HALS_ObjectMap::RetainObject(*v4, a2);
  return v7;
}

HALS_ObjectMap *HALS_IOUABox::_CopyControlByIndex(HALS_IOUABox *this, HALS_Object *a2)
{
  v2 = *(this + 49);
  if (a2 >= ((*(this + 50) - v2) >> 3))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 8 * a2);
  }

  HALS_ObjectMap::RetainObject(v3, a2);
  return v3;
}

void HALS_IOUABox::_CopyControls(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 392);
  for (i = *(a1 + 400); v2 != i; ++v2)
  {
    HALS_ObjectMap::RetainObject(*v2, a2);
    v5 = *v2;
    v7 = *(a2 + 1);
    v6 = *(a2 + 2);
    if (v7 >= v6)
    {
      v9 = (v7 - *a2) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v6 - *a2;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
      }

      v13 = (8 * v9);
      *v13 = v5;
      v8 = 8 * v9 + 8;
      v14 = *(a2 + 1) - *a2;
      v15 = v13 - v14;
      memcpy(v13 - v14, *a2, v14);
      v16 = *a2;
      *a2 = v15;
      *(a2 + 1) = v8;
      *(a2 + 2) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    *(a2 + 1) = v8;
  }
}

void HALS_IOUABox::SetPropertyData(HALS_IOUABox *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, const AudioObjectPropertyAddress *a5, unsigned int a6, void *a7, HALS_Client *a8)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a3->mSelector == 1652060014)
  {
    if (a4 <= 3)
    {
      v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v25 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        v28 = *v27;
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      else
      {
        v28 = *v27;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v39 = "HALS_IOUABox.cpp";
        v40 = 1024;
        v41 = 349;
        v42 = 2080;
        v43 = "inDataSize < SizeOf32(UInt32)";
        _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s bad property data size for kAudioBoxPropertyAcquired", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v37);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v30, "kAudioHardwareBadPropertySizeError");
      std::runtime_error::runtime_error(&v31, &v30);
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = -1;
      v31.__vftable = &unk_1F5992170;
      v32 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v31);
      v44 = "virtual void HALS_IOUABox::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
      v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUABox.cpp";
      v46 = 349;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v29);
    }

    v12 = *(this + 44);
    v13 = *(v12 + 736);
    v14 = *(v12 + 744);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOUAUCDriver::SetPropertyData(v13, a3, *(this + 90), a7, a6, a5, a4);
    if (v14)
    {
      v15 = *MEMORY[0x1E69E9840];

      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v24 = *MEMORY[0x1E69E9840];
    }
  }

  else
  {
    if (HALS_Box::HasProperty(this, a2, a3))
    {
      HALS_Object::SetPropertyData(this, a2, a3, v18, v19, v20, v21, a8);
    }

    v23 = *MEMORY[0x1E69E9840];

    HALS_IOUAObject::SetPropertyData((this + 344), &a3->mSelector, a5, a7, v19, v20, v21, v22);
  }
}

void sub_1DE52ACE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE52B6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUABox::GetPropertyDataSize(HALS_IOUABox *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, const void *a5, HALS_Client *a6)
{
  mSelector = a3->mSelector;
  PropertySize = 8;
  if (a3->mSelector <= 1768777572)
  {
    if (mSelector > 1652060013)
    {
      if (mSelector <= 1751412336)
      {
        if (mSelector != 1652060014)
        {
          if (mSelector != 1668641652)
          {
            goto LABEL_35;
          }

          return (*(this + 94) - *(this + 92)) & 0xFFFFFFFC;
        }

LABEL_27:
        v16 = *(this + 44);
        v17 = *(v16 + 736);
        v18 = *(v16 + 744);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v17 + 4), a3, *(this + 90), a5, a4);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        return PropertySize;
      }

      if (mSelector == 1751412337 || mSelector == 1751737454)
      {
        goto LABEL_27;
      }

      v15 = 1768124270;
LABEL_26:
      if (mSelector != v15)
      {
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    if (mSelector <= 1650751010)
    {
      if (mSelector == 1634429294)
      {
        goto LABEL_27;
      }

      v15 = 1650682915;
      goto LABEL_26;
    }

    if (mSelector == 1650751011)
    {
      goto LABEL_27;
    }

    v14 = 1651861860;
  }

  else
  {
    if (mSelector <= 1819173228)
    {
      if (mSelector > 1818850161)
      {
        if (mSelector != 1818850162)
        {
          if (mSelector != 1819107691)
          {
            v14 = 1819111268;
            goto LABEL_33;
          }

          return PropertySize;
        }

        goto LABEL_27;
      }

      if (mSelector == 1768777573)
      {
        goto LABEL_27;
      }

      v15 = 1818850145;
      goto LABEL_26;
    }

    if (mSelector > 1851878763)
    {
      if (mSelector == 1851878764)
      {
        return PropertySize;
      }

      if (mSelector == 1953653102)
      {
        goto LABEL_27;
      }

      v15 = 1920168547;
      goto LABEL_26;
    }

    if (mSelector == 1819173229)
    {
      return PropertySize;
    }

    v14 = 1836411236;
  }

LABEL_33:
  if (mSelector == v14)
  {
    return PropertySize;
  }

LABEL_35:
  if (HALS_Box::HasProperty(this, a2, a3))
  {

    return HALS_Box::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
  }

  else
  {

    return HALS_IOUAObject::GetPropertyDataSize((this + 344), a3, v20, v21, v22, v23);
  }
}

void sub_1DE52BA4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUABox::IsPropertySettable(HALS_IOUABox *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector > 1768777572)
  {
    if (mSelector > 1819173228)
    {
      if (mSelector <= 1851878763)
      {
        v8 = mSelector == 1819173229;
        v9 = 1836411236;
      }

      else
      {
        v8 = mSelector == 1851878764 || mSelector == 1953653102;
        v9 = 1920168547;
      }
    }

    else if (mSelector <= 1818850161)
    {
      v8 = mSelector == 1768777573;
      v9 = 1818850145;
    }

    else
    {
      v8 = mSelector == 1818850162 || mSelector == 1819107691;
      v9 = 1819111268;
    }

    goto LABEL_31;
  }

  IsPropertySettable = 0;
  if (mSelector <= 1652060013)
  {
    if (mSelector > 1650751010)
    {
      if (mSelector != 1650751011)
      {
        if (mSelector != 1651861860)
        {
          goto LABEL_41;
        }

        goto LABEL_36;
      }

      return IsPropertySettable;
    }

    if (mSelector != 1634429294)
    {
      v11 = 1650682915;
      goto LABEL_27;
    }

LABEL_36:
    v13 = *(this + 44);
    v14 = *(v13 + 736);
    v15 = *(v13 + 744);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IsPropertySettable = HALS_IOUAUCDriver::GetIsPropertySettable(*(v14 + 4), a3, *(this + 90));
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    return IsPropertySettable;
  }

  if (mSelector <= 1751412336)
  {
    if (mSelector != 1652060014)
    {
      v11 = 1668641652;
LABEL_27:
      if (mSelector != v11)
      {
        goto LABEL_41;
      }

      return IsPropertySettable;
    }

    goto LABEL_36;
  }

  v8 = mSelector == 1751412337 || mSelector == 1751737454;
  v9 = 1768124270;
LABEL_31:
  if (v8 || mSelector == v9)
  {
    goto LABEL_36;
  }

LABEL_41:
  if (HALS_Box::HasProperty(this, a2, a3))
  {

    return HALS_Box::IsPropertySettable(this, a2, a3);
  }

  else
  {

    return HALS_IOUAObject::IsPropertySettable((this + 344), a3, v17, v18);
  }
}

void sub_1DE52BCD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUABox::HasProperty(HALS_IOUABox *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector > 1768777572)
  {
    if (mSelector <= 1819173228)
    {
      v6 = mSelector == 1768777573 || mSelector == 1819107691;
      v7 = 1819111268;
    }

    else if (mSelector > 1920168546)
    {
      v6 = mSelector == 1953653102;
      v7 = 1920168547;
    }

    else
    {
      v6 = mSelector == 1819173229;
      v7 = 1851878764;
    }

    goto LABEL_20;
  }

  if (mSelector <= 1651861859)
  {
    v6 = mSelector == 1634429294 || mSelector == 1650682915;
    v7 = 1650751011;
LABEL_20:
    if (!v6 && mSelector != v7)
    {
      goto LABEL_17;
    }

LABEL_25:
    v10 = *(this + 44);
    v11 = *(v10 + 736);
    v12 = *(v10 + 744);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HasProperty = HALS_IOUAUCDriver::GetHasProperty(*(v11 + 4), a3, *(this + 90));
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    return HasProperty;
  }

  switch(mSelector)
  {
    case 1651861860:
      goto LABEL_25;
    case 1668641652:
      return *(this + 47) != *(this + 46);
    case 1768124270:
      goto LABEL_25;
  }

LABEL_17:
  if (HALS_Box::HasProperty(this, a2, a3))
  {
    return 1;
  }

  v14 = *(*(this + 43) + 16);

  return v14();
}

void sub_1DE52BEA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUABox::_Deactivate(HALS_IOUABox *this)
{
  v2 = *(this + 49);
  v3 = *(this + 50);
  if (v2 != v3)
  {
    do
    {
      (*(**v2 + 8))();
      v4 = *v2++;
      HALS_ObjectMap::ObjectIsDead(v4, v5);
    }

    while (v2 != v3);
    v2 = *(this + 49);
  }

  *(this + 50) = v2;
  *(this + 2) = 0;
}

void HALS_IOUABox::Activate(HALS_IOUABox *this)
{
  HALS_IOUABox::UpdateControls(this);
  (*(*(this + 43) + 24))();

  HALS_Object::Activate(this, v2);
}

void HALS_IOUABox::UpdateControls(HALS_IOUABox *this)
{
  v46 = 0;
  v47 = &v46;
  v48 = 0x2000000000;
  v49 = 0;
  v2 = *(this + 44);
  v3 = *(v2 + 736);
  v4 = *(v2 + 744);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v3 + 4), "lrtcbolg", *(this + 90), 0, 0);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (PropertySize >= 4)
  {
    std::vector<unsigned int>::vector[abi:ne200100](&v43, PropertySize >> 2);
    v8 = v43;
    v35 = v44 - v43;
    v9 = *(this + 44);
    v10 = *(v9 + 736);
    v11 = *(v9 + 744);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOUAUCDriver::GetPropertyData(*(v10 + 4), "lrtcbolg", *(this + 90), 0, 0, v8, &v35);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v7 = v43;
    v6 = v44;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x4002000000;
  v38 = __Block_byref_object_copy__10209;
  v39 = __Block_byref_object_dispose__10210;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x4002000000;
  v30 = __Block_byref_object_copy__10209;
  v31 = __Block_byref_object_dispose__10210;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1174405120;
  v23[2] = ___ZN12HALS_IOUABox14UpdateControlsEv_block_invoke;
  v23[3] = &unk_1F5978758;
  v23[7] = this;
  __p = 0;
  v23[4] = &v46;
  v25 = 0;
  v26 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v7, v6, (v6 - v7) >> 2);
  v23[5] = &v35;
  v23[6] = &v27;
  v12 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v12, v23);
  v17 = v36[5];
  v18 = v36[6];
  while (v17 != v18)
  {
    (***v17)(*v17, v13, v14, v15, v16);
    ++v17;
  }

  v19 = v28[5];
  for (i = v28[6]; v19 != i; ++v19)
  {
    v21 = *v19;
    if (HALS_IOUAControl::RefreshCache(*v19))
    {
      *(v47 + 24) = 1;
    }

    HALS_ObjectMap::ReleaseObject(v21, v22);
  }

  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v27, 8);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  _Block_object_dispose(&v35, 8);
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  _Block_object_dispose(&v46, 8);
}

void sub_1DE52C2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v37 = *(v35 - 104);
  if (v37)
  {
    *(v35 - 96) = v37;
    operator delete(v37);
  }

  _Block_object_dispose((v35 - 80), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__10209(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__10210(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN12HALS_IOUABox14UpdateControlsEv_block_invoke(void *a1, HALS_Object *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = a1[8];
  v3 = a1[7];
  v4 = a1[9] - v2;
  v40 = *(a1[5] + 8);
  v5 = *(v3 + 392);
  v6 = *(v3 + 400);
  if (v5 != v6)
  {
    v7 = *(v3 + 392);
    do
    {
      v8 = *v7++;
      *(v8 + 13) = 0;
    }

    while (v7 != v6);
  }

  if ((v4 & 0x3FFFFFFFCLL) != 0)
  {
    v9 = 0;
    v10 = (v4 >> 2);
    while (1)
    {
      *buf = 0;
      v11 = *(v3 + 392);
      v12 = *(v3 + 400);
      if (v11 != v12)
      {
        while (!*v11 || *(*v11 + 88) != *(v2 + 4 * v9))
        {
          v11 += 8;
          if (v11 == v12)
          {
            goto LABEL_13;
          }
        }
      }

      if (v11 == v12)
      {
LABEL_13:
        v13 = *(v2 + 4 * v9);
        if (v13)
        {
          v14 = *(v3 + 352);
          v15 = *(v14 + 736);
          v16 = *(v14 + 744);
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          outputStruct = 0;
          v41 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v15 + 4), "salcbolg", v13, 0, 0, &outputStruct, &v41);
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          v17 = *(v3 + 352);
          v18 = *(v17 + 736);
          v19 = *(v17 + 744);
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v44 = 0;
          v43 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v18 + 4), "slcbbolg", v13, 0, 0, &v44, &v43);
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          v20 = *(v3 + 352);
          v21 = *(v20 + 736);
          v22 = *(v20 + 744);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v46 = 0;
          v45 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v21 + 4), "pcscbolg", v13, 0, 0, &v46, &v45);
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          v23 = *(v3 + 352);
          v24 = *(v23 + 736);
          v25 = *(v23 + 744);
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v48 = 0;
          v47 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v24 + 4), "mlecbolg", v13, 0, 0, &v48, &v47);
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          operator new();
        }
      }

      else
      {
        *(*v11 + 13) = 1;
      }

      if (++v9 == v10)
      {
        v5 = *(v3 + 392);
        v6 = *(v3 + 400);
        goto LABEL_36;
      }
    }
  }

  while (1)
  {
LABEL_36:
    if (v5 == v6)
    {
      v27 = 0;
      goto LABEL_47;
    }

    v26 = *v5;
    if (*v5)
    {
      if (*(v26 + 13) != 1)
      {
        break;
      }
    }

    ++v5;
  }

  (*(*v26 + 8))(v26);
  HALS_ObjectMap::ObjectIsDead(*v5, v28);
  v27 = 1;
  if (v5 != v6)
  {
    v29 = v5 + 1;
    if (v5 + 1 != v6)
    {
      do
      {
        v30 = *v29;
        if (*v29 && (*(v30 + 13) & 1) == 0)
        {
          (*(*v30 + 8))(v30);
          HALS_ObjectMap::ObjectIsDead(*v29, v31);
        }

        else
        {
          *v5++ = v30;
        }

        ++v29;
      }

      while (v29 != v6);
      v27 = 1;
    }
  }

  v6 = v5;
LABEL_47:
  if (v6 != *(v3 + 400))
  {
    a2 = *(v3 + 400);
    *(v3 + 400) = v6;
  }

  v33 = *(v40 + 40);
  v32 = *(v40 + 48);
  if (v32 != v33)
  {
    do
    {
      *buf = *v33;
      std::vector<HALS_Device *>::push_back[abi:ne200100](v3 + 392, buf);
      ++v33;
    }

    while (v33 != v32);
    v27 = 1;
  }

  *(*(a1[4] + 8) + 24) = v27;
  v34 = *(a1[6] + 8);
  if (v3 + 392 != v34 + 40)
  {
    std::vector<HALS_IOUAControl *>::__assign_with_size[abi:ne200100]<HALS_IOUAControl **,HALS_IOUAControl **>((v34 + 40), *(v3 + 392), *(v3 + 400), (*(v3 + 400) - *(v3 + 392)) >> 3);
  }

  v35 = *(v34 + 40);
  v36 = *(v34 + 48);
  while (v35 != v36)
  {
    v37 = *v35++;
    HALS_ObjectMap::RetainObject(v37, a2);
  }

  v38 = *MEMORY[0x1E69E9840];
}

void sub_1DE52C958(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const void **AMCP::Graph::Synchronized_Mixer_Manager::get_mixer(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v56 = *MEMORY[0x1E69E9840];
  result = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>(a2, a3);
  if (!result)
  {
    goto LABEL_18;
  }

  v11 = result[7];
  v12 = v11[11];
  if (v12)
  {
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 32);
    v16 = *(v12 + 36);
    LODWORD(v12) = *(v12 + 40);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v14 = 0uLL;
    v13 = 0.0;
  }

  v17 = v15 == *(a4 + 24);
  v18 = v16 == *(a4 + 28);
  v19 = ~vaddvq_s32(vandq_s8(vceqq_s32(v14, *(a4 + 8)), xmmword_1DE758110)) & 0xF;
  v20 = v13 == *a4 && v19 == 0;
  v21 = !v20 || !v17;
  v22 = v21 || !v18;
  if (v22 || v12 != *(a4 + 32))
  {
LABEL_18:
    v24 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a2 + 5, a3);
    if (v24)
    {
      v25 = v24;
      v26 = v24[5];
      v27 = *(v26 + 48);
      v28 = *(v26 + 56);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = *(a5 + 24);
      v29 = *(a5 + 32);
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v27 != v30)
      {
        v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v31 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v29);
        }

        v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          v34 = *v33;
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        else
        {
          v34 = *v33;
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v52[0] = 136315650;
          *&v52[1] = "Synchronized_Mixer_Manager.cpp";
          LOWORD(v52[3]) = 1024;
          *(&v52[3] + 2) = 54;
          HIWORD(v52[4]) = 2080;
          *&v52[5] = "not ((*found).second->get_timebase() == buffer_size.get_clock())";
          _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Wrong time base for synchronizer", v52, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v51);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Wrong time base for synchronizer", &v43);
        std::logic_error::logic_error(&v44, &v43);
        v44.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v45, &v44);
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = -1;
        v45.__vftable = &unk_1F5991430;
        v46 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v52, &v45);
        v53 = "Synchronizer_Ref AMCP::Graph::Synchronized_Mixer_Manager::get_synchronizer_for_node(const Graph_Node_UID &, const DAL::DAL_Time_Delta &)";
        v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Synchronized_Mixer_Manager.cpp";
        v55 = 54;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v40);
      }

      v36 = v25[6];
      v39 = v25[5];
      if (v36)
      {
        atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    v35 = *(a5 + 32);
    v41 = *(a5 + 24);
    *&v42 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v37 = result[8];
  *a1 = v11;
  a1[1] = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(v37 + 1, 1uLL, memory_order_relaxed);
  }

  v38 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE52D73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, char a31)
{
  if (*(&a11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&a11 + 1));
    v31 = __p;
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::shared_ptr<AMCP::DAL::Synchronized_Mixer>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::shared_ptr<AMCP::DAL::Synchronized_Mixer>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<AMCP::Terminal_Identifier const,std::shared_ptr<AMCP::DAL::Synchronized_Mixer>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<AMCP::DAL::Synchronized_Mixer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59787E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__split_buffer<AMCP::Terminal_Identifier>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AMCP::DAL::DAL_Time::validate(AMCP::DAL::DAL_Time *this)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (!v2)
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = *v17;
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      v18 = *v17;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v30 = "DAL_Time.cpp";
      v31 = 1024;
      v32 = 96;
      v33 = 2080;
      v34 = "not (m_timebase != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to translate times with an invalid clock", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Attempt to translate times with an invalid clock", &v20);
    std::logic_error::logic_error(&v21, &v20);
    v21.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v22, &v21);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -1;
    v22.__vftable = &unk_1F5991430;
    v23 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v22);
    v35 = "void AMCP::DAL::DAL_Time::validate() const";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v37 = 96;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  v3 = *this;
  if (*this == 1)
  {
    *(this + 1) = (*(*v2 + 64))(v2, *(this + 2));
    v8 = (*(**(this + 3) + 136))(*(this + 3));
    if ((v9 & 1) != 0 && round(*(this + 1)) < round(*&v8) && *(this + 2))
    {
      v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v10 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
        *buf = 136315394;
        v30 = "DAL_Time.cpp";
        v31 = 1024;
        v32 = 107;
        _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d We somehow are dealing with a time before the timebase's valid time region", buf, 0x12u);
      }
    }
  }

  else if (v3 == 2)
  {
    *(this + 2) = (*(*v2 + 56))(v2, *(this + 1));
  }

  else if (!v3)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v30 = "DAL_Time.cpp";
      v31 = 1024;
      v32 = 97;
      v33 = 2080;
      v34 = "not (m_valid_types != Valid_Types::Invalid)";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to validate time with an invalid clock", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Attempt to validate time with an invalid clock", &v20);
    std::logic_error::logic_error(&v21, &v20);
    v21.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v22, &v21);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -1;
    v22.__vftable = &unk_1F5991430;
    v23 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v22);
    v35 = "void AMCP::DAL::DAL_Time::validate() const";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v37 = 97;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  *this = 3;
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1DE52DFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::DAL_Time::get_host_time(AMCP::DAL::DAL_Time *this)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!*this)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "DAL_Time.cpp";
      v20 = 1024;
      v21 = 71;
      v22 = 2080;
      v23 = "not (m_valid_types != Valid_Types::Invalid)";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to get host time with an invalid clock", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Attempt to get host time with an invalid clock", &v9);
    std::logic_error::logic_error(&v10, &v9);
    v10.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5991430;
    v12 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v11);
    v24 = "uint64_t AMCP::DAL::DAL_Time::get_host_time() const";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v26 = 71;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  if ((*this & 1) == 0)
  {
    AMCP::DAL::DAL_Time::validate(this);
  }

  result = *(this + 2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE52E2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

double AMCP::DAL::DAL_Time::get_sample_time(AMCP::DAL::DAL_Time *this)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!*this)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "DAL_Time.cpp";
      v20 = 1024;
      v21 = 84;
      v22 = 2080;
      v23 = "not (m_valid_types != Valid_Types::Invalid)";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to get sample time with an invalid clock", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Attempt to get sample time with an invalid clock", &v9);
    std::logic_error::logic_error(&v10, &v9);
    v10.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5991430;
    v12 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v11);
    v24 = "Sample_Time AMCP::DAL::DAL_Time::get_sample_time() const";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v26 = 84;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  if ((*this & 2) == 0)
  {
    AMCP::DAL::DAL_Time::validate(this);
  }

  result = *(this + 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE52E61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

BOOL AMCP::DAL::DAL_Time::operator==(AMCP::DAL::DAL_Time *this, AMCP::DAL::DAL_Time *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*this)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v37 = "DAL_Time.cpp";
      v38 = 1024;
      v39 = 149;
      v40 = 2080;
      v41 = "not (not (m_valid_types == Valid_Types::Invalid or t.m_valid_types == Valid_Types::Invalid))";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v27);
    std::logic_error::logic_error(&v28, &v27);
    v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v29, &v28);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    v29.__vftable = &unk_1F5991430;
    v30 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v29);
    v42 = "BOOL AMCP::DAL::DAL_Time::operator==(const DAL_Time &) const";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v44 = 149;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v26);
  }

  v6 = *(this + 3);
  v7 = *(a2 + 3);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (!(v6 | v7))
    {
      if ((v2 & 2) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_35:
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v37 = "DAL_Time.cpp";
      v38 = 1024;
      v39 = 150;
      v40 = 2080;
      v41 = "not (is_same_timebase(m_timebase, t.m_timebase))";
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time comparisions must be source from the same timebase", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("DAL_Time comparisions must be source from the same timebase", &v27);
    std::logic_error::logic_error(&v28, &v27);
    v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v29, &v28);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    v29.__vftable = &unk_1F5991430;
    v30 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v29);
    v42 = "BOOL AMCP::DAL::DAL_Time::operator==(const DAL_Time &) const";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v44 = 150;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v26);
  }

  v11 = (*(*v6 + 16))(v6);
  v6 = (*(**(a2 + 3) + 16))(*(a2 + 3));
  v12 = *(v11 + 23);
  if (v12 >= 0)
  {
    v13 = *(v11 + 23);
  }

  else
  {
    v13 = *(v11 + 8);
  }

  v14 = *(v6 + 23);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(v6 + 8);
  }

  if (v13 != v14)
  {
    goto LABEL_35;
  }

  v16 = v12 >= 0 ? v11 : *v11;
  v17 = v15 >= 0 ? v6 : *v6;
  v6 = memcmp(v16, v17, v13);
  if (v6)
  {
    goto LABEL_35;
  }

  if ((*this & 2) == 0)
  {
LABEL_12:
    AMCP::DAL::DAL_Time::validate(this);
  }

LABEL_13:
  if ((*a2 & 2) == 0)
  {
    AMCP::DAL::DAL_Time::validate(a2);
  }

  result = round(*(this + 1)) == round(*(a2 + 1));
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE52EC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v26 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v25)
  {
    __cxa_free_exception(v24);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v26 - 129));
  _Unwind_Resume(a1);
}

BOOL AMCP::DAL::DAL_Time::operator<(AMCP::DAL::DAL_Time *this, AMCP::DAL::DAL_Time *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*this)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v37 = "DAL_Time.cpp";
      v38 = 1024;
      v39 = 159;
      v40 = 2080;
      v41 = "not (not (m_valid_types == Valid_Types::Invalid or t.m_valid_types == Valid_Types::Invalid))";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v27);
    std::logic_error::logic_error(&v28, &v27);
    v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v29, &v28);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    v29.__vftable = &unk_1F5991430;
    v30 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v29);
    v42 = "BOOL AMCP::DAL::DAL_Time::operator<(const DAL_Time &) const";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v44 = 159;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v26);
  }

  v6 = *(this + 3);
  v7 = *(a2 + 3);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (!(v6 | v7))
    {
      if ((v2 & 2) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_35:
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v37 = "DAL_Time.cpp";
      v38 = 1024;
      v39 = 160;
      v40 = 2080;
      v41 = "not (is_same_timebase(m_timebase, t.m_timebase))";
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time comparisions must be source from the same timebase", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("DAL_Time comparisions must be source from the same timebase", &v27);
    std::logic_error::logic_error(&v28, &v27);
    v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v29, &v28);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    v29.__vftable = &unk_1F5991430;
    v30 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v29);
    v42 = "BOOL AMCP::DAL::DAL_Time::operator<(const DAL_Time &) const";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v44 = 160;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v26);
  }

  v11 = (*(*v6 + 16))(v6);
  v6 = (*(**(a2 + 3) + 16))(*(a2 + 3));
  v12 = *(v11 + 23);
  if (v12 >= 0)
  {
    v13 = *(v11 + 23);
  }

  else
  {
    v13 = *(v11 + 8);
  }

  v14 = *(v6 + 23);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(v6 + 8);
  }

  if (v13 != v14)
  {
    goto LABEL_35;
  }

  v16 = v12 >= 0 ? v11 : *v11;
  v17 = v15 >= 0 ? v6 : *v6;
  v6 = memcmp(v16, v17, v13);
  if (v6)
  {
    goto LABEL_35;
  }

  if ((*this & 2) == 0)
  {
LABEL_12:
    AMCP::DAL::DAL_Time::validate(this);
  }

LABEL_13:
  if ((*a2 & 2) == 0)
  {
    AMCP::DAL::DAL_Time::validate(a2);
  }

  result = round(*(this + 1)) < round(*(a2 + 1));
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE52F274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v26 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v25)
  {
    __cxa_free_exception(v24);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v26 - 129));
  _Unwind_Resume(a1);
}

AMCP::DAL::DAL_Time *AMCP::DAL::DAL_Time::operator+=(AMCP::DAL::DAL_Time *this, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*this)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v37 = "DAL_Time.cpp";
      v38 = 1024;
      v39 = 170;
      v40 = 2080;
      v41 = "not (not (m_valid_types == Valid_Types::Invalid or t.m_valid_types == Valid_Types::Invalid))";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v27);
    std::logic_error::logic_error(&v28, &v27);
    v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v29, &v28);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    v29.__vftable = &unk_1F5991430;
    v30 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v29);
    v42 = "DAL_Time &AMCP::DAL::DAL_Time::operator+=(const DAL_Time_Delta &)";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v44 = 170;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v26);
  }

  v6 = *(this + 3);
  v7 = *(a2 + 24);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (!(v6 | v7))
    {
      if ((v2 & 2) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_35:
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v37 = "DAL_Time.cpp";
      v38 = 1024;
      v39 = 171;
      v40 = 2080;
      v41 = "not (is_same_timebase(m_timebase, t.m_timebase))";
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time comparisions must be source from the same timebase", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("DAL_Time comparisions must be source from the same timebase", &v27);
    std::logic_error::logic_error(&v28, &v27);
    v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v29, &v28);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    v29.__vftable = &unk_1F5991430;
    v30 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v29);
    v42 = "DAL_Time &AMCP::DAL::DAL_Time::operator+=(const DAL_Time_Delta &)";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v44 = 171;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v26);
  }

  v11 = (*(*v6 + 16))(v6);
  v6 = (*(**(a2 + 24) + 16))(*(a2 + 24));
  v12 = *(v11 + 23);
  if (v12 >= 0)
  {
    v13 = *(v11 + 23);
  }

  else
  {
    v13 = *(v11 + 8);
  }

  v14 = *(v6 + 23);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(v6 + 8);
  }

  if (v13 != v14)
  {
    goto LABEL_35;
  }

  v16 = v12 >= 0 ? v11 : *v11;
  v17 = v15 >= 0 ? v6 : *v6;
  v6 = memcmp(v16, v17, v13);
  if (v6)
  {
    goto LABEL_35;
  }

  if ((*this & 2) == 0)
  {
LABEL_12:
    AMCP::DAL::DAL_Time::validate(this);
  }

LABEL_13:
  if ((*a2 & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(a2);
  }

  *this = 2;
  *(this + 2) = 0;
  *(this + 1) = *(a2 + 8) + *(this + 1);
  v9 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE52F8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v26 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v25)
  {
    __cxa_free_exception(v24);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v26 - 129));
  _Unwind_Resume(a1);
}

void AMCP::DAL::DAL_Time_Delta::validate(AMCP::DAL::DAL_Time_Delta *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (!v2)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "DAL_Time.cpp";
      v23 = 1024;
      v24 = 415;
      v25 = 2080;
      v26 = "not (m_timebase != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to translate times with an invalid clock", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Attempt to translate times with an invalid clock", &v12);
    std::logic_error::logic_error(&v13, &v12);
    v13.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v14, &v13);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = -1;
    v14.__vftable = &unk_1F5991430;
    v15 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v14);
    v27 = "void AMCP::DAL::DAL_Time_Delta::validate() const";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v29 = 415;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  v3 = *this;
  if (*this == 1)
  {
    v4 = *(this + 2);
    *(this + 1) = v4 / (*(*v2 + 72))(v2);
    v3 = *this;
  }

  if (v3 == 2)
  {
    v5 = *(this + 1);
    *(this + 2) = (v5 * (*(**(this + 3) + 72))(*(this + 3)));
  }

  *this = 3;
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1DE52FC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
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

AMCP::DAL::DAL_Time *AMCP::DAL::DAL_Time::operator-=(AMCP::DAL::DAL_Time *this, AMCP::DAL::DAL_Time_Delta *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*this)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v37 = "DAL_Time.cpp";
      v38 = 1024;
      v39 = 182;
      v40 = 2080;
      v41 = "not (not (m_valid_types == Valid_Types::Invalid or t.m_valid_types == Valid_Types::Invalid))";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v27);
    std::logic_error::logic_error(&v28, &v27);
    v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v29, &v28);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    v29.__vftable = &unk_1F5991430;
    v30 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v29);
    v42 = "DAL_Time &AMCP::DAL::DAL_Time::operator-=(const DAL_Time_Delta &)";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v44 = 182;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v26);
  }

  v6 = *(this + 3);
  v7 = *(a2 + 3);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (!(v6 | v7))
    {
      if ((v2 & 2) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_35:
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v37 = "DAL_Time.cpp";
      v38 = 1024;
      v39 = 183;
      v40 = 2080;
      v41 = "not (is_same_timebase(m_timebase, t.m_timebase))";
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time comparisions must be source from the same timebase", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("DAL_Time comparisions must be source from the same timebase", &v27);
    std::logic_error::logic_error(&v28, &v27);
    v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v29, &v28);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    v29.__vftable = &unk_1F5991430;
    v30 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v29);
    v42 = "DAL_Time &AMCP::DAL::DAL_Time::operator-=(const DAL_Time_Delta &)";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v44 = 183;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v26);
  }

  v11 = (*(*v6 + 16))(v6);
  v6 = (*(**(a2 + 3) + 16))(*(a2 + 3));
  v12 = *(v11 + 23);
  if (v12 >= 0)
  {
    v13 = *(v11 + 23);
  }

  else
  {
    v13 = *(v11 + 8);
  }

  v14 = *(v6 + 23);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(v6 + 8);
  }

  if (v13 != v14)
  {
    goto LABEL_35;
  }

  v16 = v12 >= 0 ? v11 : *v11;
  v17 = v15 >= 0 ? v6 : *v6;
  v6 = memcmp(v16, v17, v13);
  if (v6)
  {
    goto LABEL_35;
  }

  if ((*this & 2) == 0)
  {
LABEL_12:
    AMCP::DAL::DAL_Time::validate(this);
  }

LABEL_13:
  if ((*a2 & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(a2);
  }

  *this = 2;
  *(this + 2) = 0;
  *(this + 1) = *(this + 1) - *(a2 + 1);
  v9 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE530288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v26 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v25)
  {
    __cxa_free_exception(v24);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v26 - 129));
  _Unwind_Resume(a1);
}

double AMCP::DAL::DAL_Time::operator-(uint64_t a1, AMCP::DAL::DAL_Time *this, AMCP::DAL::DAL_Time *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    v3 = *a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v23 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      v26 = *v25;
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    else
    {
      v26 = *v25;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v42 = "DAL_Time.cpp";
      v43 = 1024;
      v44 = 193;
      v45 = 2080;
      v46 = "not (not (m_valid_types == Valid_Types::Invalid or t.m_valid_types == Valid_Types::Invalid))";
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v32);
    std::logic_error::logic_error(&v33, &v32);
    v33.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v34, &v33);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = -1;
    v34.__vftable = &unk_1F5991430;
    v35 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v34);
    v47 = "DAL_Time_Delta AMCP::DAL::DAL_Time::operator-(const DAL_Time &) const";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v49 = 193;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
  }

  v7 = *(this + 3);
  v8 = *(a3 + 3);
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (!(v7 | v8))
    {
      if ((*this & 2) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_37:
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      v30 = *v29;
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    else
    {
      v30 = *v29;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v42 = "DAL_Time.cpp";
      v43 = 1024;
      v44 = 194;
      v45 = 2080;
      v46 = "not (is_same_timebase(m_timebase, t.m_timebase))";
      _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time comparisions must be source from the same timebase", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("DAL_Time comparisions must be source from the same timebase", &v32);
    std::logic_error::logic_error(&v33, &v32);
    v33.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v34, &v33);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = -1;
    v34.__vftable = &unk_1F5991430;
    v35 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v34);
    v47 = "DAL_Time_Delta AMCP::DAL::DAL_Time::operator-(const DAL_Time &) const";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v49 = 194;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
  }

  v16 = (*(*v7 + 16))(v7);
  v7 = (*(**(a3 + 3) + 16))(*(a3 + 3));
  v17 = *(v16 + 23);
  if (v17 >= 0)
  {
    v18 = *(v16 + 23);
  }

  else
  {
    v18 = *(v16 + 8);
  }

  v19 = *(v7 + 23);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v7 + 8);
  }

  if (v18 != v19)
  {
    goto LABEL_37;
  }

  v21 = v17 >= 0 ? v16 : *v16;
  v22 = v20 >= 0 ? v7 : *v7;
  v7 = memcmp(v21, v22, v18);
  if (v7)
  {
    goto LABEL_37;
  }

  if ((*this & 2) == 0)
  {
LABEL_12:
    AMCP::DAL::DAL_Time::validate(this);
  }

LABEL_13:
  if ((*a3 & 2) == 0)
  {
    AMCP::DAL::DAL_Time::validate(a3);
  }

  v10 = *(this + 1);
  v11 = *(a3 + 1);
  v13 = *(this + 3);
  v12 = *(this + 4);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  result = v10 - v11;
  *a1 = 2;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = v13;
  *(a1 + 32) = v12;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE5308D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v26 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v25)
  {
    __cxa_free_exception(v24);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v26 - 129));
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::DAL_Time::translate_time(uint64_t a1, AMCP::DAL::DAL_Time *this, uint64_t *a3)
{
  result = *a3;
  v7 = *(this + 3);
  if (*a3)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = result | v7;
    if (v9)
    {
LABEL_21:
      result = AMCP::DAL::DAL_Time::get_host_time(this);
      v19 = *a3;
      v18 = a3[1];
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      *a1 = 1;
      *(a1 + 8) = 0;
      *(a1 + 16) = result;
      *(a1 + 24) = v19;
      *(a1 + 32) = v18;
      return result;
    }
  }

  else
  {
    v10 = (*(*result + 16))(result);
    v11 = (*(**(this + 3) + 16))(*(this + 3));
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = *(v10 + 23);
    }

    else
    {
      v13 = *(v10 + 8);
    }

    v14 = *(v11 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v11 + 8);
    }

    if (v13 != v14)
    {
      goto LABEL_21;
    }

    v16 = v12 >= 0 ? v10 : *v10;
    v17 = v15 >= 0 ? v11 : *v11;
    result = memcmp(v16, v17, v13);
    if (result)
    {
      goto LABEL_21;
    }

    v9 = *(this + 3);
  }

  *a1 = *this;
  *(a1 + 16) = *(this + 2);
  *(a1 + 24) = v9;
  v20 = *(this + 4);
  *(a1 + 32) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t AMCP::DAL::DAL_Time_Range::DAL_Time_Range(uint64_t a1, uint64_t *a2, double a3, double a4)
{
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *a2;
    v7 = a2[1];
  }

  else
  {
    v7 = 0;
    v8 = *a2;
  }

  *a2 = 0;
  a2[1] = 0;
  *a1 = 2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 2;
  *(a1 + 48) = a4;
  *(a1 + 56) = 0;
  *(a1 + 64) = v8;
  *(a1 + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

uint64_t AMCP::DAL::DAL_Time_Range::DAL_Time_Range(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a2;
    v5 = a2[1];
  }

  else
  {
    v5 = 0;
    v6 = *a2;
  }

  *a2 = 0;
  a2[1] = 0;
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v6;
  *(a1 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a1 = 2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v3;
    *(a1 + 32) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 40) = 2;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = v6;
    *(a1 + 72) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    *a1 = 2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v3;
    *(a1 + 32) = 0;
    *(a1 + 40) = 2;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = v3;
    *(a1 + 72) = 0;
  }

  return a1;
}

AMCP::DAL::DAL_Time_Range *AMCP::DAL::DAL_Time_Range::DAL_Time_Range(AMCP::DAL::DAL_Time_Range *this, const AMCP::DAL::DAL_Time *a2, const AMCP::DAL::DAL_Time *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  *(this + 2) = *(a2 + 2);
  *this = v4;
  *(this + 3) = *(a2 + 3);
  v5 = *(a2 + 4);
  *(this + 4) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *a3;
  *(this + 7) = *(a3 + 2);
  *(this + 40) = v6;
  *(this + 8) = *(a3 + 3);
  v7 = *(a3 + 4);
  *(this + 9) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 3);
  v9 = *(a2 + 4);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a3 + 3);
  v10 = *(a3 + 4);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = (v8 | v11) == 0;
  if (!v8 || !v11)
  {
LABEL_24:
    if (!v10)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v13 = (*(*v8 + 16))(v8);
  v8 = (*(*v11 + 16))(v11);
  v14 = *(v13 + 23);
  if (v14 >= 0)
  {
    v15 = *(v13 + 23);
  }

  else
  {
    v15 = *(v13 + 8);
  }

  v16 = *(v8 + 23);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v8 + 8);
  }

  if (v15 == v16)
  {
    if (v14 >= 0)
    {
      v18 = v13;
    }

    else
    {
      v18 = *v13;
    }

    if (v17 >= 0)
    {
      v19 = v8;
    }

    else
    {
      v19 = *v8;
    }

    v8 = memcmp(v18, v19, v15);
    v12 = v8 == 0;
    goto LABEL_24;
  }

  v12 = 0;
  if (v10)
  {
LABEL_25:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

LABEL_26:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (!v12)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v37 = "DAL_Time.cpp";
      v38 = 1024;
      v39 = 266;
      v40 = 2080;
      v41 = "not (is_same_timebase(start.get_clock(), end.get_clock()))";
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time_Interval requires time from the same clock", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("DAL_Time_Interval requires time from the same clock", &v27);
    std::logic_error::logic_error(&v28, &v27);
    v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v29, &v28);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    v29.__vftable = &unk_1F5991430;
    v30 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v29);
    v42 = "AMCP::DAL::DAL_Time_Range::DAL_Time_Range(const DAL_Time &, const DAL_Time &)";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v44 = 266;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v26);
  }

  v20 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE530FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  v27 = v26;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(v24);
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::DAL_Time_Range::DAL_Time_Range(uint64_t a1, __int128 *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a1 + 24) = *(a2 + 3);
  v4 = *(a2 + 4);
  *(a1 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 40) = v5;
  *(a1 + 64) = *(a2 + 8);
  v6 = *(a2 + 9);
  *(a1 + 72) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 3);
  v8 = *(a2 + 4);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 8);
  v9 = *(a2 + 9);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = (v7 | v10) == 0;
  if (!v7 || !v10)
  {
LABEL_24:
    if (!v9)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v12 = (*(*v7 + 16))(v7);
  v7 = (*(*v10 + 16))(v10);
  v13 = *(v12 + 23);
  if (v13 >= 0)
  {
    v14 = *(v12 + 23);
  }

  else
  {
    v14 = *(v12 + 8);
  }

  v15 = *(v7 + 23);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(v7 + 8);
  }

  if (v14 == v15)
  {
    if (v13 >= 0)
    {
      v17 = v12;
    }

    else
    {
      v17 = *v12;
    }

    if (v16 >= 0)
    {
      v18 = v7;
    }

    else
    {
      v18 = *v7;
    }

    v7 = memcmp(v17, v18, v14);
    v11 = v7 == 0;
    goto LABEL_24;
  }

  v11 = 0;
  if (v9)
  {
LABEL_25:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_26:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (!v11)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v24 = *v23;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "DAL_Time.cpp";
      v37 = 1024;
      v38 = 279;
      v39 = 2080;
      v40 = "not (is_same_timebase(other.start().get_clock(), other.end().get_clock()))";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time_Interval requires time from the same clock", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("DAL_Time_Interval requires time from the same clock", &v26);
    std::logic_error::logic_error(&v27, &v26);
    v27.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v28, &v27);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    v28.__vftable = &unk_1F5991430;
    v29 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v28);
    v41 = "AMCP::DAL::DAL_Time_Range::DAL_Time_Range(const time_range<DAL_Time, DAL_Time_Delta> &)";
    v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v43 = 279;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v25);
  }

  v19 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE53147C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  v27 = v26;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(v24);
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::DAL_Time_Range::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 32);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  v8 = *(a2 + 72);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 72);
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return a1;
}

double AMCP::DAL::DAL_Time_Range::get_range(AMCP::DAL::DAL_Time_Range *this)
{
  sample_time = AMCP::DAL::DAL_Time::get_sample_time(this);
  AMCP::DAL::DAL_Time::get_sample_time((this + 40));
  return sample_time;
}

BOOL AMCP::DAL::DAL_Time_Delta::operator==(AMCP::DAL::DAL_Time_Delta *this, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*this)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = *v21;
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    else
    {
      v22 = *v21;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v38 = "DAL_Time.cpp";
      v39 = 1024;
      v40 = 320;
      v41 = 2080;
      v42 = "not (not (m_valid_types == DAL_Time::Valid_Types::Invalid or t.m_valid_types == DAL_Time::Valid_Types::Invalid))";
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v28);
    std::logic_error::logic_error(&v29, &v28);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v30, &v29);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    v30.__vftable = &unk_1F5991430;
    v31 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
    v43 = "BOOL AMCP::DAL::DAL_Time_Delta::operator==(const DAL_Time_Delta &) const";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v45 = 320;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  v6 = *(this + 3);
  v7 = *(a2 + 24);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = (*(*v6 + 16))(v6);
    v6 = (*(**(a2 + 24) + 16))(*(a2 + 24));
    v10 = *(v9 + 23);
    if (v10 >= 0)
    {
      v11 = *(v9 + 23);
    }

    else
    {
      v11 = *(v9 + 8);
    }

    v12 = *(v6 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v6 + 8);
    }

    if (v11 == v12)
    {
      v14 = v10 >= 0 ? v9 : *v9;
      v15 = v13 >= 0 ? v6 : *v6;
      v6 = memcmp(v14, v15, v11);
      if (!v6)
      {
        v2 = *this;
        if ((*this & 2) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }

LABEL_44:
    v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v23 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      v26 = *v25;
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    else
    {
      v26 = *v25;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v38 = "DAL_Time.cpp";
      v39 = 1024;
      v40 = 321;
      v41 = 2080;
      v42 = "not (is_same_timebase(m_timebase, t.m_timebase))";
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time_Delta comparisions must be source from the same timebase", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("DAL_Time_Delta comparisions must be source from the same timebase", &v28);
    std::logic_error::logic_error(&v29, &v28);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v30, &v29);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    v30.__vftable = &unk_1F5991430;
    v31 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
    v43 = "BOOL AMCP::DAL::DAL_Time_Delta::operator==(const DAL_Time_Delta &) const";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v45 = 321;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  if (v6 | v7)
  {
    goto LABEL_44;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_29;
  }

LABEL_27:
  if ((*a2 & 2) != 0 && (v2 & *a2 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_29:
  AMCP::DAL::DAL_Time_Delta::validate(this);
  if ((*this & 2) != 0 && (*a2 & 2) != 0)
  {
LABEL_34:
    v17 = round(*(this + 1)) == round(*(a2 + 8));
    goto LABEL_36;
  }

  if ((*this & 1) == 0 || (*a2 & 1) == 0)
  {
    result = 0;
    goto LABEL_39;
  }

  v17 = *(this + 2) == *(a2 + 16);
LABEL_36:
  result = v17;
LABEL_39:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE531C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v26 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v25)
  {
    __cxa_free_exception(v24);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v26 - 129));
  _Unwind_Resume(a1);
}

BOOL AMCP::DAL::DAL_Time_Delta::operator<(AMCP::DAL::DAL_Time_Delta *this, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*this)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v37 = "DAL_Time.cpp";
      v38 = 1024;
      v39 = 343;
      v40 = 2080;
      v41 = "not (not (m_valid_types == DAL_Time::Valid_Types::Invalid or t.m_valid_types == DAL_Time::Valid_Types::Invalid))";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v27);
    std::logic_error::logic_error(&v28, &v27);
    v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v29, &v28);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    v29.__vftable = &unk_1F5991430;
    v30 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v29);
    v42 = "BOOL AMCP::DAL::DAL_Time_Delta::operator<(const DAL_Time_Delta &) const";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v44 = 343;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v26);
  }

  v6 = *(this + 3);
  v7 = *(a2 + 24);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = (*(*v6 + 16))(v6);
    v6 = (*(**(a2 + 24) + 16))(*(a2 + 24));
    v10 = *(v9 + 23);
    if (v10 >= 0)
    {
      v11 = *(v9 + 23);
    }

    else
    {
      v11 = *(v9 + 8);
    }

    v12 = *(v6 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v6 + 8);
    }

    if (v11 == v12)
    {
      v14 = v10 >= 0 ? v9 : *v9;
      v15 = v13 >= 0 ? v6 : *v6;
      v6 = memcmp(v14, v15, v11);
      if (!v6)
      {
        v2 = *this;
        if ((*this & 2) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }

LABEL_41:
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v37 = "DAL_Time.cpp";
      v38 = 1024;
      v39 = 344;
      v40 = 2080;
      v41 = "not (is_same_timebase(m_timebase, t.m_timebase))";
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time_Delta comparisions must be source from the same timebase", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("DAL_Time_Delta comparisions must be source from the same timebase", &v27);
    std::logic_error::logic_error(&v28, &v27);
    v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v29, &v28);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    v29.__vftable = &unk_1F5991430;
    v30 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v29);
    v42 = "BOOL AMCP::DAL::DAL_Time_Delta::operator<(const DAL_Time_Delta &) const";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v44 = 344;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v26);
  }

  if (v6 | v7)
  {
    goto LABEL_41;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_29;
  }

LABEL_27:
  if ((*a2 & 2) != 0 && (v2 & *a2 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_29:
  AMCP::DAL::DAL_Time_Delta::validate(this);
  if ((*this & 2) != 0 && (*a2 & 2) != 0)
  {
LABEL_34:
    result = round(*(this + 1)) < round(*(a2 + 8));
    goto LABEL_36;
  }

  result = (*this & 1) != 0 && (*a2 & 1) != 0 && *(this + 2) < *(a2 + 16);
LABEL_36:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}