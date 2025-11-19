void sub_1DE443934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, std::runtime_error a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, std::runtime_error a28, void *a29, uint64_t a30)
{
  std::runtime_error::~runtime_error(v30);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  a29 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a30);
  std::runtime_error::~runtime_error(&a28);
  a19 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v31 + 24));
  std::runtime_error::~runtime_error(&a18);
  std::runtime_error::~runtime_error(&a17);
  __cxa_free_exception(v30);
  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a27);
  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOUAEngine::_ReadFromStream_Read(unsigned int,HALS_IOEngine2_StreamInfo &,AudioServerPlugInIOCycleInfo const&,unsigned int,HALS_BufferInfo const&)::$_0,std::tuple<char const*,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Timed out signalling event link", &v10, 0x12u);
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

void caulk::concurrent::details::rt_message_call<HALS_IOUAEngine::_ReadFromStream_Read(unsigned int,HALS_IOEngine2_StreamInfo &,AudioServerPlugInIOCycleInfo const&,unsigned int,HALS_BufferInfo const&)::$_0,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

AMCP::Log::AMCP_Scope_Registry *HALS_IOUAEngine::_TellHardwareToStop(uint64_t a1)
{
  input[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1144);
  input[0] = *(a1 + 1136);
  input[1] = 0;
  result = IOConnectCallMethod(*(v1 + 4), 0xAu, input, 2u, 0, 0, 0, 0, 0, 0);
  v3 = result;
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
      *buf = 136315906;
      v19 = "HALS_IOUAUCDriver.cpp";
      v20 = 1024;
      v21 = 488;
      v22 = 2080;
      v23 = "ret != kIOReturnSuccess";
      v24 = 1024;
      *v25 = v3;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to stop device %d", buf, 0x22u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v10, "Failed to stop device");
    std::runtime_error::runtime_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5992170;
    v12 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v11);
    *&v25[2] = "void HALS_IOUAUCDriver::stop_io(AudioObjectID, AudioDriverKit::IOUserAudioStartStopFlags)";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v27 = 488;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE443DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, std::runtime_error a19, char a20)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a11)
    {
      operator delete(a11);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v22 - 144);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a20);
    std::runtime_error::~runtime_error(&a19);
    if (v21)
    {
      __cxa_free_exception(v20);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v22 - 145));
    v24 = __cxa_begin_catch(exception_object);
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v24);
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
      *(v22 - 144) = 136315394;
      *(v22 - 140) = "HALS_IOUAEngine.cpp";
      *(v22 - 132) = 1024;
      *(v22 - 130) = 221;
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception while stopping IO!", (v22 - 144), 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE443BDCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUAEngine::_TellHardwareToStart(uint64_t a1)
{
  input[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1144);
  input[0] = *(a1 + 1136);
  input[1] = 0;
  v2 = IOConnectCallMethod(*(v1 + 4), 9u, input, 2u, 0, 0, 0, 0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v20 = "HALS_IOUAUCDriver.cpp";
      v21 = 1024;
      v22 = 481;
      v23 = 2080;
      v24 = "ret != kIOReturnSuccess";
      v25 = 1024;
      *v26 = v3;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to start device %d", buf, 0x22u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v11, "Failed to start device");
    std::runtime_error::runtime_error(&v12, &v11);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    v12.__vftable = &unk_1F5992170;
    v13 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v12);
    *&v26[2] = "void HALS_IOUAUCDriver::start_io(AudioObjectID, AudioDriverKit::IOUserAudioStartStopFlags)";
    v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v28 = 481;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v10);
  }

  result = 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE4441EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, std::runtime_error a19, char a20)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a11)
    {
      operator delete(a11);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v22 - 144);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a20);
    std::runtime_error::~runtime_error(&a19);
    if (v21)
    {
      __cxa_free_exception(v20);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v22 - 145));
    v24 = __cxa_begin_catch(exception_object);
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v24);
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
      *(v22 - 144) = 136315394;
      *(v22 - 140) = "HALS_IOUAEngine.cpp";
      *(v22 - 132) = 1024;
      *(v22 - 130) = 206;
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception while starting IO!", (v22 - 144), 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE443FCCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUAEngine::Unregister_IOThread(HALS_IOUAEngine *this, unsigned int a2, unsigned int a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v4 = *(this + 152);
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = this + 1216;
  do
  {
    v6 = *(v4 + 8);
    v7 = v6 >= a3;
    v8 = v6 < a3;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * v8];
  }

  while (v4);
  if (v5 == this + 1216 || *(v5 + 8) > a3)
  {
LABEL_24:
    v33 = this + 1216;
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
      *buf = 136315906;
      v36 = "HALS_IOUAEngine.cpp";
      v37 = 1024;
      v38 = 173;
      v39 = 2080;
      v40 = "io_ipc_info_iter == m_io_ipc_info_map.end()";
      v41 = 2048;
      *v42 = a3;
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to unregister IOThread, io ipc info not found, client id %lu", buf, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v23, "Failed to unregister IOThread, io ipc info not found");
    std::runtime_error::runtime_error(&v27, &v23);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = -1;
    v27.__vftable = &unk_1F5992170;
    v28 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v27);
    *&v42[2] = "virtual OSStatus HALS_IOUAEngine::Unregister_IOThread(AudioObjectID, UInt32)";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAEngine.cpp";
    v44 = 173;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v26);
  }

  v33 = v5;
  v26[0] = this;
  v26[1] = &v33;
  v26[2] = &v34;
  v9 = *(v5 + 5);
  v10 = *(v5 + 6);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*v9)
  {
    v11 = caulk::mach::os_eventlink::dissociate(v9);
    if (v11)
    {
      v14 = v11;
      v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v15 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
        *buf = 136315906;
        v36 = "HALS_IOUAEngine.cpp";
        v37 = 1024;
        v38 = 185;
        v39 = 2080;
        v40 = "error != 0";
        v41 = 2048;
        *v42 = v14;
        _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to disassociate event link %li", buf, 0x26u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v24, "Failed to disassociate event link");
      std::runtime_error::runtime_error(&v27, &v24);
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = -1;
      v27.__vftable = &unk_1F5992170;
      v28 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v27);
      *&v42[2] = "virtual OSStatus HALS_IOUAEngine::Unregister_IOThread(AudioObjectID, UInt32)";
      v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAEngine.cpp";
      v44 = 185;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v23);
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  applesauce::raii::v1::detail::ScopeGuard<HALS_IOUAEngine::Unregister_IOThread(unsigned int,unsigned int)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v26);
  result = 0;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE444858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, uint64_t a10, std::runtime_error a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    if (__p)
    {
      a21 = __p;
      operator delete(__p);
    }

    if (a16)
    {
      a17 = a16;
      operator delete(a16);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v26 - 144);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
    std::runtime_error::~runtime_error(&a9);
    if (v24)
    {
      __cxa_free_exception(v23);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a11);
    v28 = __cxa_begin_catch(exception_object);
    v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v29 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v28);
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
      *(v26 - 144) = 136315394;
      *(v25 + 4) = "HALS_IOUAEngine.cpp";
      *(v26 - 132) = 1024;
      *(v25 + 14) = 190;
      _os_log_error_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_ERROR, "%32s:%-5d Failed to unregister io thread!", (v26 - 144), 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE444434);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *applesauce::raii::v1::detail::ScopeGuard<HALS_IOUAEngine::Unregister_IOThread(unsigned int,unsigned int)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(uint64_t *a1)
{
  input[2] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  v5 = (*v2)[1];
  if (v5)
  {
    do
    {
      v6 = v5;
      v5 = *v5;
    }

    while (v5);
  }

  else
  {
    v7 = *v2;
    do
    {
      v6 = v7[2];
      v8 = *v6 == v7;
      v7 = v6;
    }

    while (!v8);
  }

  if (*(v3 + 1208) == v4)
  {
    *(v3 + 1208) = v6;
  }

  --*(v3 + 1224);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(*(v3 + 1216), v4);
  v9 = v4[6];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  operator delete(v4);
  v10 = *(v3 + 1144);
  v11 = *a1[2];
  input[0] = *(v3 + 1136);
  input[1] = v11;
  v12 = IOConnectCallMethod(*(v10 + 4), 0x12u, input, 2u, 0, 0, 0, 0, 0, 0);
  v13 = v12;
  if (v12)
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
    }

    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v18;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v30 = "HALS_IOUAUCDriver.cpp";
      v31 = 1024;
      v32 = 527;
      v33 = 2080;
      v34 = "ret != kIOReturnSuccess";
      v35 = 1024;
      *v36 = v13;
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to unregister io thread %d", buf, 0x22u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v21, "Failed to unregister io thread");
    std::runtime_error::runtime_error(&v22, &v21);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -1;
    v22.__vftable = &unk_1F5992170;
    v23 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v22);
    *&v36[2] = "void HALS_IOUAUCDriver::unregister_io_thread(AudioObjectID, AudioObjectID)";
    v37 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v38 = 527;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v20);
  }

  v14 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE444D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, std::runtime_error a19, char a20)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a11)
    {
      operator delete(a11);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v22 - 144);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a20);
    std::runtime_error::~runtime_error(&a19);
    if (v21)
    {
      __cxa_free_exception(v20);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v22 - 145));
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE444DF0(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE444DF4);
  }

  __clang_call_terminate(a1);
}

void HALS_IOUAEngine::Register_IOThread(HALS_IOUAEngine *this, unsigned int a2, uint64_t a3, double a4, unsigned int a5, int a6)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a4 > 0.0)
  {
    v8 = *(this + 152);
    if (v8)
    {
      v9 = (this + 1216);
      do
      {
        v10 = v8[8];
        v11 = v10 >= a3;
        v12 = v10 < a3;
        if (v11)
        {
          v9 = v8;
        }

        v8 = *&v8[2 * v12];
      }

      while (v8);
      if (v9 != (this + 1216) && v9[8] <= a3)
      {
        v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v17 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(this);
        }

        v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          v20 = *v19;
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        else
        {
          v20 = *v19;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v34[0] = 136315906;
          *&v34[1] = "HALS_IOUAEngine.cpp";
          LOWORD(v34[3]) = 1024;
          *(&v34[3] + 2) = 134;
          HIWORD(v34[4]) = 2080;
          *&v34[5] = "io_ipc_info_iter != m_io_ipc_info_map.end()";
          v35 = 2048;
          *v36 = a3;
          _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IOContext %lu is already registered", v34, 0x26u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v26);
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(&v27, "IOContext is already registered");
        std::runtime_error::runtime_error(&v28, &v27);
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = -1;
        v28.__r_.__value_.__r.__words[0] = &unk_1F5992170;
        v28.__r_.__value_.__r.__words[2] = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v34, &v28);
        *&v36[2] = "virtual OSStatus HALS_IOUAEngine::Register_IOThread(AudioObjectID, UInt32, Float64, UInt32, mach_port_t)";
        v37 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAEngine.cpp";
        v38 = 134;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }
    }

    if (a6)
    {
      caulk::make_string("eventlink-%u-%u", v26, *(this + 284), a3);
      caulk::make_string("workgroup-%u-%u", __p, *(this + 284), a3);
      operator new();
    }

    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
      v34[0] = 136315906;
      *&v34[1] = "HALS_IOUAEngine.cpp";
      LOWORD(v34[3]) = 1024;
      *(&v34[3] + 2) = 137;
      HIWORD(v34[4]) = 2080;
      *&v34[5] = "error || (ioc_workgroup_mach_port == MACH_PORT_NULL)";
      v35 = 2048;
      *v36 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to copy workgroup mach port %li", v34, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v26);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v27, "Failed to copy workgroup mach port");
    std::runtime_error::runtime_error(&v28, &v27);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = -1;
    v28.__r_.__value_.__r.__words[0] = &unk_1F5992170;
    v28.__r_.__value_.__r.__words[2] = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v34, &v28);
    *&v36[2] = "virtual OSStatus HALS_IOUAEngine::Register_IOThread(AudioObjectID, UInt32, Float64, UInt32, mach_port_t)";
    v37 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAEngine.cpp";
    v38 = 137;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v13 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
    v34[0] = 136315650;
    *&v34[1] = "HALS_IOUAEngine.cpp";
    LOWORD(v34[3]) = 1024;
    *(&v34[3] + 2) = 129;
    HIWORD(v34[4]) = 2080;
    *&v34[5] = "inNominalSampleRate <= 0.0";
    _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Invalid nominal sample rate", v34, 0x1Cu);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v26);
  __cxa_allocate_exception(0x40uLL);
  std::runtime_error::runtime_error(&v27, "Invalid nominal sample rate");
  std::runtime_error::runtime_error(&v28, &v27);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = -1;
  v28.__r_.__value_.__r.__words[0] = &unk_1F5992170;
  v28.__r_.__value_.__r.__words[2] = &unk_1F5992198;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v34, &v28);
  *&v36[2] = "virtual OSStatus HALS_IOUAEngine::Register_IOThread(AudioObjectID, UInt32, Float64, UInt32, mach_port_t)";
  v37 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAEngine.cpp";
  v38 = 129;
  applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
}

void sub_1DE446530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::runtime_error a25, uint64_t a26, uint64_t a27, std::runtime_error a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t buf, int a41, __int16 a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a2)
  {
    if (a50 < 0)
    {
      operator delete(__p);
    }

    std::__shared_weak_count::~__shared_weak_count(v50);
    operator delete(v53);
    if (a18 < 0)
    {
      operator delete(a13);
    }

    if (a24 < 0)
    {
      operator delete(a19);
    }

    v54 = __cxa_begin_catch(exception_object);
    v55 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v55 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v54);
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
      LODWORD(buf) = 136315394;
      *(v51 + 4) = "HALS_IOUAEngine.cpp";
      a42 = 1024;
      *(v51 + 14) = 159;
      _os_log_error_impl(&dword_1DE1F9000, v58, OS_LOG_TYPE_ERROR, "%32s:%-5d Failed to register io thread!", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE4451C8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_emplace<HALS_IOUAEngine::io_ipc_info_t>::__on_zero_shared(uint64_t a1)
{
  caulk::mach::os_workgroup_managed::~os_workgroup_managed((a1 + 32));
  v3 = *(a1 + 24);

  return caulk::mach::details::release_os_object(v3, v2);
}

void std::__shared_ptr_emplace<HALS_IOUAEngine::io_ipc_info_t>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596F6D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOUAEngine::GetZeroTimeStamp(HALS_IOUAEngine *this, unsigned int a2, double *a3, unint64_t *a4, unint64_t *a5)
{
  _X4 = 0;
  _X5 = 0;
  v7 = *(this + 146);
  __asm { CASP            X4, X5, X4, X5, [X8] }

  *a3 = _X4;
  *a4 = 0;
  return 0;
}

void HALS_IOUAEngine::~HALS_IOUAEngine(HALS_IOUAEngine *this)
{
  HALS_IOUAEngine::~HALS_IOUAEngine(this);

  JUMPOUT(0x1E12C1730);
}

{
  v10 = *MEMORY[0x1E69E9840];
  *this = &unk_1F596F148;
  v2 = *(this + 145);
  if (v2)
  {
    v3 = *(this + 146);
    if (v3)
    {
      HALS_IOUAUCDriver::unmap_memory(*(*(this + 143) + 4), v2, v3);
    }
  }

  v4 = *(this + 147);
  if (v4)
  {
    v5 = *(this + 148);
    if (v5)
    {
      HALS_IOUAUCDriver::unmap_memory(*(*(this + 143) + 4), v4, v5);
    }
  }

  v6 = *(this + 149);
  if (v6)
  {
    v7 = *(this + 150);
    if (v7)
    {
      HALS_IOUAUCDriver::unmap_memory(*(*(this + 143) + 4), v6, v7);
    }
  }

  *(this + 1176) = 0u;
  *(this + 1192) = 0u;
  *(this + 1160) = 0u;
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>>>::destroy(*(this + 152));
  *(this + 151) = this + 1216;
  *(this + 76) = 0u;
  v8 = *(this + 144);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  HALS_IOEngine2::~HALS_IOEngine2(this);
  v9 = *MEMORY[0x1E69E9840];
}

void std::__tree<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

void AMCP::IO_Core::Node::update_core(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2.__r_.__value_.__r.__words[0] = 0x676C6F6269646E74;
  LODWORD(v2.__r_.__value_.__r.__words[1]) = 0;
  LODWORD(v1.__r_.__value_.__l.__data_) = *(a1 + 8);
  AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>();
}

void sub_1DE448F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  if (a15)
  {
    a16 = a15;
    operator delete(a15);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v24 - 240);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&STACK[0x200]);
  MEMORY[0x1E12C0F00](&a13);
  if (*(v24 - 137) < 0)
  {
    operator delete(*(v24 - 160));
  }

  if (v23)
  {
    __cxa_free_exception(v22);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a11);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a4 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, *(a4 + 24), *(a4 + 32));
  }

  else
  {
    v4 = *(a4 + 24);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
}

void sub_1DE449858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a2)
  {
    operator delete(v29);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a4 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, *(a4 + 24), *(a4 + 32));
  }

  else
  {
    v4 = *(a4 + 24);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
}

void sub_1DE449E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a2)
  {
    operator delete(v29);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<AMCP::Node_Description ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<AMCP::Node_Description ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Type ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[295];
}

uint64_t std::__function::__value_func<AMCP::Node_Type ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<AMCP::Node_Type ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[315];
}

uint64_t std::__function::__value_func<std::optional<CA::TimeStamp> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::optional<CA::TimeStamp> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_18,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_18>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_18"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_18,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_18>,unsigned int ()(void)>::operator()(uint64_t a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  first_object_id_if = *(a1 + 8);
  v2 = *(first_object_id_if + 24);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(first_object_id_if + 16);
    if (!v5)
    {
      goto LABEL_13;
    }

    v7 = *(v5 + 144);
    v6 = *(v5 + 152);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      (*(*v7 + 24))(__p, v7);
      v8 = (*(**(first_object_id_if + 32) + 16))(*(first_object_id_if + 32));
      v13[0] = &unk_1F596F818;
      v13[1] = __p;
      v13[3] = v13;
      first_object_id_if = AMCP::Core::Broker::fetch_first_object_id_if (v8, v13);
      std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](v13);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (!v7)
    {
LABEL_13:
      first_object_id_if = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    first_object_id_if = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return first_object_id_if;
}

void sub_1DE44A73C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::get_clock_id(void)::$_0,std::allocator<AMCP::IO_Core::Node::get_clock_id(void)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP7IO_Core4Node12get_clock_idEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::IO_Core::Node::get_clock_id(void)::$_0,std::allocator<AMCP::IO_Core::Node::get_clock_id(void)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  if (AMCP::is_base_of(0x61636C6B, simple_required))
  {
    AMCP::Core::Core::get_simple_required_property<1969841184u>(&v18, *a2);
    v5 = v18;
    if (!v18)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = *(a1 + 8);
    applesauce::CF::convert_to<std::string,0>(__p, v18);
    v7 = *(v6 + 23);
    if (v7 >= 0)
    {
      v8 = *(v6 + 23);
    }

    else
    {
      v8 = v6[1];
    }

    v9 = v17;
    v10 = v17;
    if ((v17 & 0x80u) != 0)
    {
      v9 = __p[1];
    }

    if (v8 == v9)
    {
      if (v7 >= 0)
      {
        v11 = v6;
      }

      else
      {
        v11 = *v6;
      }

      if ((v17 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      v13 = memcmp(v11, v12, v8) == 0;
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = 0;
      if ((v17 & 0x80000000) == 0)
      {
LABEL_20:
        CFRelease(v5);
        return v13;
      }
    }

    operator delete(__p[0]);
    goto LABEL_20;
  }

  return 0;
}

void sub_1DE44A8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  __cxa_free_exception(v12);
  applesauce::CF::StringRef::~StringRef(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::get_clock_id(void)::$_0,std::allocator<AMCP::IO_Core::Node::get_clock_id(void)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596F818;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_18,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_18>,unsigned int ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5970B28;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_17,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_17>,std::optional<CA::TimeStamp> ()(CA::TimeStamp)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_17"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_17,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_17>,std::optional<CA::TimeStamp> ()(CA::TimeStamp)>::operator()(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 24);
  if (!v5 || (v6 = *a2, v7 = a2[1], v8 = *(a2 + 14), (v9 = std::__shared_weak_count::lock(v5)) == 0))
  {
    *a3 = 0;
    *(a3 + 64) = 0;
    return;
  }

  v10 = v9;
  v11 = *(v4 + 16);
  if (!v11)
  {
    *a3 = 0;
    *(a3 + 64) = 0;
    goto LABEL_28;
  }

  v12 = v11[9];
  v13 = v11[9].n128_u64[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12.n128_u64[0])
  {
    goto LABEL_25;
  }

  v21 = v12;
  if (!(*(*v12.n128_u64[0] + 120))(v12.n128_u64[0], v12))
  {
    goto LABEL_25;
  }

  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = v21;
  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      v14 = 0;
      v27 = 0u;
      v28 = 0u;
      v15 = 0;
      v16 = 0.0;
      v17 = v13;
      v18 = 0;
      goto LABEL_21;
    }

    v19 = 1;
    goto LABEL_19;
  }

  v24 = v6;
  v23 = 2;
  if ((v8 & 2) != 0)
  {
    v19 = 3;
LABEL_19:
    v25 = v7;
    v23 = v19;
  }

  AMCP::DAL::DAL_Time::validate(&v23);
  v18 = v24;
  v14 = v25;
  v16 = (*(*v26.n128_u64[0] + 160))(v26.n128_u64[0]);
  v27 = 0u;
  v28 = 0u;
  v15 = 7;
  v17 = v26.n128_u64[1];
LABEL_21:
  if (v17)
  {
    v22 = v15;
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    v15 = v22;
  }

  if (!v15)
  {
LABEL_25:
    *a3 = 0;
    *(a3 + 64) = 0;
    goto LABEL_26;
  }

  *a3 = v18;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16;
  v20 = v28;
  *(a3 + 24) = v27;
  *(a3 + 40) = v20;
  *(a3 + 56) = v15;
  *(a3 + 64) = 1;
LABEL_26:
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  if (!v13)
  {
    return;
  }

  v9 = v13;
LABEL_28:

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
}

void sub_1DE44AE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_17,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_17>,std::optional<CA::TimeStamp> ()(CA::TimeStamp)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5970A98;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::optional<CA::TimeStamp> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::optional<CA::TimeStamp> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::optional<CA::TimeStamp> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::optional<CA::TimeStamp> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::optional<CA::TimeStamp> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_16,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_16>,std::optional<CA::TimeStamp> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_16"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_16,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_16>,std::optional<CA::TimeStamp> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 24);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(v3 + 16);
    if (v7)
    {
      v9 = *(v7 + 144);
      v8 = *(v7 + 152);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v9 && (*(*v9 + 120))(v9) && ((*(*v9 + 32))(v12, v9), *(&v12[0] + 1)))
      {
        v10 = v12[1];
        *a2 = v12[0];
        *(a2 + 16) = v10;
        v11 = v12[3];
        *(a2 + 32) = v12[2];
        *(a2 + 48) = v11;
        *(a2 + 64) = 1;
      }

      else
      {
        *a2 = 0;
        *(a2 + 64) = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 64) = 0;

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }
}

void sub_1DE44B228(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_16,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_16>,std::optional<CA::TimeStamp> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5970A08;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_15"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(v4 + 104) != 0;
  }

  else
  {
    v5 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v5;
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5970988;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5970988;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5970988;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterINS_9Node_TypeEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = AMCP::Core::Operation::call_function<AMCP::Node_Type>((a1 + 8));
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = v3;
  *(a2 + 32) = AMCP::Implementation::In_Place_Storage<AMCP::Node_Type>::dispatch;
  return result;
}

uint64_t AMCP::Core::Operation::call_function<AMCP::Node_Type>(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Type ()(void)>>();
  v3 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, v2);
  if (!v3)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v27 = 1024;
      v28 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v17);
    std::runtime_error::runtime_error(&v18, &v17);
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Node_Type, Argument_Types = <>]";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v31 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v4 = v3;
  if (!*(v3 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Type ()(void)>>(), (v3 = (*(v4 + 7))(4, v4 + 24, 0, buf)) == 0))
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v27 = 1024;
      v28 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v17);
    std::runtime_error::runtime_error(&v18, &v17);
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Node_Type, Argument_Types = <>]";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v31 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v5 = *(v3 + 3);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v5 + 48))(v5);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE44BA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::In_Place_Storage<AMCP::Node_Type>::dispatch(uint64_t result, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 1) = 0u;
        *a3 = *a2;
        *(a3 + 4) = AMCP::Implementation::In_Place_Storage<AMCP::Node_Type>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 1) = 0u;
      *a3 = *a2;
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<AMCP::Node_Type>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      v15 = 0;
      memset(v14, 0, sizeof(v14));
      AMCP::swap(v14, a3, a3);
      if (v15)
      {
        v15(0, v14, 0, 0);
      }

      return 0;
    }

    v9 = AMCP::Implementation::get_type_marker<AMCP::Node_Type>();
    v10 = *(a2 + 32);
    *&v14[0] = 0;
    if (v10)
    {
      v10(3, a2, 0, v14);
      v10 = *&v14[0];
    }

    if (v10 != v9)
    {
      goto LABEL_27;
    }

    v11 = *(a3 + 4);
    v16 = 0;
    if (v11)
    {
      v11(3, a3, 0, &v16);
      v11 = v16;
    }

    if (v11 == v9)
    {
      if (*(a2 + 32))
      {
        *&v14[0] = AMCP::Implementation::get_type_marker<AMCP::Node_Type>();
        v12 = (*(a2 + 32))(4, a2, 0, v14);
      }

      else
      {
        v12 = 0;
      }

      *&v14[0] = AMCP::Implementation::get_type_marker<AMCP::Node_Type>();
      if (*v12 == *(*(a3 + 4))(4, a3, 0, v14))
      {
        return 1;
      }
    }

    else
    {
LABEL_27:
      v13 = AMCP::Thing::convert_to<AMCP::Node_Type>(a2);
      if (v13 == AMCP::Thing::convert_to<AMCP::Node_Type>(a3))
      {
        return 1;
      }
    }

    return 0;
  }

  if (result == 3)
  {
    v8 = AMCP::Implementation::get_type_marker<AMCP::Node_Type>();
    result = 0;
    *a4 = v8;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Node_Type>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t AMCP::Implementation::get_type_marker<AMCP::Node_Type>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[297];
}

uint64_t AMCP::Thing::convert_to<AMCP::Node_Type>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  v2 = AMCP::Implementation::get_type_marker<AMCP::Node_Type>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == v2)
  {
    *&v15[0] = v2;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<AMCP::Node_Type>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = v2;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE44BF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5970908;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5970908;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5970908;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<AMCP::Node_Type ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Type ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Type ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<AMCP::Node_Type ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<AMCP::Node_Type ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Node_Type ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Node_Type ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_14,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_14>,AMCP::Node_Type ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_14"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_14,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_14>,AMCP::Node_Type ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5970878;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterINS_16Node_DescriptionEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AMCP::Core::Operation::call_function<AMCP::Node_Description>(&v3, (a1 + 8));
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  AMCP::Implementation::Outboard_Storage<AMCP::Node_Description>::construct<AMCP::Node_Description&>(a2);
}

void AMCP::Implementation::Outboard_Storage<AMCP::Node_Description>::construct<AMCP::Node_Description&>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = AMCP::Implementation::Outboard_Storage<AMCP::Node_Description>::dispatch;
  operator new();
}

uint64_t AMCP::Implementation::Outboard_Storage<AMCP::Node_Description>::dispatch(uint64_t result, uint64_t *a2, AMCP::Thing *a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        AMCP::Implementation::Outboard_Storage<AMCP::Node_Description>::construct<AMCP::Node_Description&>(a3, *a2);
        return 0;
      }

      if (result != 2)
      {
        return result;
      }

      v7 = *a2;
      *a2 = 0;
      std::unique_ptr<AMCP::Node_Description>::reset[abi:ne200100](a3, v7);
      *(a3 + 4) = AMCP::Implementation::Outboard_Storage<AMCP::Node_Description>::dispatch;
    }

    std::unique_ptr<AMCP::Node_Description>::reset[abi:ne200100](a2, 0);
    result = 0;
    a2[4] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    return result;
  }

  if (result > 4)
  {
    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      v30 = 0;
      *v28 = 0u;
      v29 = 0u;
      AMCP::swap(v28, a3, a3);
      if (v30)
      {
        v30(0, v28, 0, 0);
      }

      return 0;
    }

    v9 = AMCP::Implementation::get_type_marker<AMCP::Node_Description>();
    v10 = a2[4];
    v28[0] = 0;
    if (v10)
    {
      v10(3, a2, 0, v28);
      v10 = v28[0];
    }

    if (v10 != v9)
    {
      goto LABEL_26;
    }

    v11 = *(a3 + 4);
    v20 = 0;
    if (v11)
    {
      (v11)(3, a3, 0, &v20);
      v11 = v20;
    }

    if (v11 != v9)
    {
LABEL_26:
      AMCP::Thing::convert_to<AMCP::Node_Description>(v28, a2);
      AMCP::Thing::convert_to<AMCP::Node_Description>(&v20, a3);
      v36[0] = v28;
      v36[1] = &v28[1];
      v36[2] = &v30;
      v36[3] = (&v30 + 4);
      v36[4] = v31;
      v36[5] = &v33;
      v36[6] = &v34;
      v36[7] = (&v33 + 4);
      v35[0] = &v20;
      v35[1] = v21;
      v35[2] = &v23;
      v35[3] = &v23 + 4;
      v35[4] = __p;
      v35[5] = &v26;
      v35[6] = &v27;
      v35[7] = &v26 + 4;
      v13 = std::__tuple_equal<7ul>::operator()[abi:ne200100]<std::tuple<AMCP::Node_Type const&,std::string const&,AMCP::Node_Thread_Policy const&,AMCP::Node_Buffer_Size_Change_Policy const&,std::string const&,AMCP::Node_Clock_Policy const&,AMCP::Index_Group<std::vector<AMCP::Terminal_Description>,AMCP::Direction> const&,unsigned int const&>,std::tuple<AMCP::Node_Type const&,std::string const&,AMCP::Node_Thread_Policy const&,AMCP::Node_Buffer_Size_Change_Policy const&,std::string const&,AMCP::Node_Clock_Policy const&,AMCP::Index_Group<std::vector<AMCP::Terminal_Description>,AMCP::Direction> const&,unsigned int const&>>(v36, v35);
      v14 = HIDWORD(v33) == HIDWORD(v26) && v13;
      for (i = 12; i != 6; i -= 3)
      {
        v36[0] = &v21[i - 1];
        std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](v36);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v22) < 0)
      {
        operator delete(v21[0]);
      }

      for (j = 12; j != 6; j -= 3)
      {
        v20 = &v28[j];
        std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v20);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31[0]);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28[1]);
        if (!v14)
        {
          return 0;
        }
      }

      else if (!v14)
      {
        return 0;
      }

      return 1;
    }

    if (a2[4])
    {
      v28[0] = AMCP::Implementation::get_type_marker<AMCP::Node_Description>();
      v12 = (a2[4])(4, a2, 0, v28);
    }

    else
    {
      v12 = 0;
    }

    if (*(a3 + 4))
    {
      v28[0] = AMCP::Implementation::get_type_marker<AMCP::Node_Description>();
      v17 = (*(a3 + 4))(4, a3, 0, v28);
    }

    else
    {
      v17 = 0;
    }

    v28[0] = v12;
    v28[1] = (v12 + 8);
    v18 = (v12 + 68);
    *&v29 = v12 + 32;
    *(&v29 + 1) = v12 + 36;
    v30 = (v12 + 40);
    v31[0] = (v12 + 64);
    v31[1] = (v12 + 72);
    v32 = v12 + 68;
    v19 = v17 + 17;
    v20 = v17;
    v21[0] = v17 + 1;
    v21[1] = v17 + 4;
    v22 = v17 + 36;
    v23 = v17 + 5;
    __p[0] = v17 + 8;
    __p[1] = v17 + 9;
    v25 = v17 + 68;
    return std::__tuple_equal<7ul>::operator()[abi:ne200100]<std::tuple<AMCP::Node_Type const&,std::string const&,AMCP::Node_Thread_Policy const&,AMCP::Node_Buffer_Size_Change_Policy const&,std::string const&,AMCP::Node_Clock_Policy const&,AMCP::Index_Group<std::vector<AMCP::Terminal_Description>,AMCP::Direction> const&,unsigned int const&>,std::tuple<AMCP::Node_Type const&,std::string const&,AMCP::Node_Thread_Policy const&,AMCP::Node_Buffer_Size_Change_Policy const&,std::string const&,AMCP::Node_Clock_Policy const&,AMCP::Index_Group<std::vector<AMCP::Terminal_Description>,AMCP::Direction> const&,unsigned int const&>>(v28, &v20) && *v18 == *v19;
  }

  if (result == 3)
  {
    v8 = AMCP::Implementation::get_type_marker<AMCP::Node_Description>();
    result = 0;
    *a4 = v8;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Node_Description>())
  {
    return *a2;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t *std::unique_ptr<AMCP::Node_Description>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    for (i = 96; i != 48; i -= 24)
    {
      v4 = (v2 + i);
      std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v4);
    }

    if (*(v2 + 63) < 0)
    {
      operator delete(*(v2 + 40));
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

BOOL std::__tuple_equal<7ul>::operator()[abi:ne200100]<std::tuple<AMCP::Node_Type const&,std::string const&,AMCP::Node_Thread_Policy const&,AMCP::Node_Buffer_Size_Change_Policy const&,std::string const&,AMCP::Node_Clock_Policy const&,AMCP::Index_Group<std::vector<AMCP::Terminal_Description>,AMCP::Direction> const&,unsigned int const&>,std::tuple<AMCP::Node_Type const&,std::string const&,AMCP::Node_Thread_Policy const&,AMCP::Node_Buffer_Size_Change_Policy const&,std::string const&,AMCP::Node_Clock_Policy const&,AMCP::Index_Group<std::vector<AMCP::Terminal_Description>,AMCP::Direction> const&,unsigned int const&>>(uint64_t a1, uint64_t a2)
{
  if (**a1 != **a2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v6 = *(v4 + 23);
  if (v6 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = *(v5 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v5 + 8);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v10 = v6 >= 0 ? *(a1 + 8) : *v4;
  v11 = v9 >= 0 ? *(a2 + 8) : *v5;
  if (memcmp(v10, v11, v7) || **(a1 + 16) != **(a2 + 16) || **(a1 + 24) != **(a2 + 24))
  {
    return 0;
  }

  v12 = *(a1 + 32);
  v13 = *(a2 + 32);
  v14 = *(v12 + 23);
  if (v14 >= 0)
  {
    v15 = *(v12 + 23);
  }

  else
  {
    v15 = *(v12 + 8);
  }

  v16 = *(v13 + 23);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v13 + 8);
  }

  if (v15 != v16)
  {
    return 0;
  }

  v18 = v14 >= 0 ? *(a1 + 32) : *v12;
  v19 = v17 >= 0 ? *(a2 + 32) : *v13;
  if (memcmp(v18, v19, v15) || **(a1 + 40) != **(a2 + 40))
  {
    return 0;
  }

  v20 = 0;
  v21 = *(a1 + 48);
  v22 = *(a2 + 48);
  do
  {
    v24 = *(v21 + v20);
    v23 = *(v21 + v20 + 8);
    v25 = *v22;
    v26 = v22[1] - *v22;
    result = v23 - v24 == v26;
    if (v23 - v24 != v26)
    {
      break;
    }

    if (v24 != v23)
    {
      v34 = v22;
      v35 = v21;
LABEL_35:
      v28 = v24 + 40;
      v29 = v25 + 40;
      if (*v24 == *v25 && *(v24 + 8) == *(v25 + 8) && *(v24 + 12) == *(v25 + 12) && *(v24 + 16) == *(v25 + 16) && *(v24 + 20) == *(v25 + 20) && *(v24 + 24) == *(v25 + 24) && *(v24 + 28) == *(v25 + 28) && *(v24 + 32) == *(v25 + 32))
      {
        v30 = 0;
        while (1)
        {
          v31 = *(v28 + v30);
          v32 = *(v28 + v30 + 8);
          v33 = *v29;
          if (v32 - v31 != *(v29 + 8) - *v29)
          {
            break;
          }

          if (v31 == v32)
          {
            result = 1;
          }

          else
          {
            do
            {
              result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v31, v33);
              if (!result)
              {
                break;
              }

              v31 += 24;
              v33 += 3;
            }

            while (v31 != v32);
          }

          if (result)
          {
            v30 += 24;
            v29 += 24;
            if (v30 != 48)
            {
              continue;
            }
          }

          if (!result)
          {
            return result;
          }

          v22 = v34;
          v21 = v35;
          if (*(v24 + 88) != *(v25 + 88) || *(v24 + 92) != *(v25 + 92) || *(v24 + 96) != *(v25 + 96))
          {
            return 0;
          }

          v24 += 104;
          v25 += 104;
          if (v24 != v23)
          {
            goto LABEL_35;
          }

          goto LABEL_57;
        }
      }

      return 0;
    }

LABEL_57:
    v20 += 24;
    v22 += 3;
    result = 1;
  }

  while (v20 != 48);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59707F8;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59707F8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59707F8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<AMCP::Node_Description ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Description ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Description ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<AMCP::Node_Description ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<AMCP::Node_Description ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Node_Description ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Node_Description ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13>,AMCP::Node_Description ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_13"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13>,AMCP::Node_Description ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 && (v25 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = *(v5 + 16);
      if (*(v5 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v5 + 24), *(v5 + 32));
      }

      else
      {
        v31 = *(v5 + 24);
      }

      *a2 = v6;
      *(a2 + 8) = v31;
      memset(&v31, 0, sizeof(v31));
      *(a2 + 36) = 1;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *(a2 + 88) = 0u;
      *(a2 + 104) = 0u;
      if ((v6 & 0xFFFFFFFE) == 2)
      {
        *(a2 + 64) = 2;
      }

      *(a2 + 32) = *(v5 + 48);
      std::string::operator=((a2 + 40), (v5 + 112));
      v8 = 0;
      v9 = 0;
      *(a2 + 64) = *(v5 + 136);
      *(a2 + 68) = *(v5 + 160);
      v10 = v5 + 56;
      do
      {
        v11 = v8;
        v12 = (v10 + 24 * v9);
        v14 = *v12;
        v13 = v12[1];
        if (*v12 != v13)
        {
          v15 = a2 + 72 + 24 * v9;
          do
          {
            AMCP::Graph::Terminal::get_description(&v26, v14);
            v16 = *(v15 + 8);
            if (v16 >= *(v15 + 16))
            {
              v23 = std::vector<AMCP::Terminal_Description>::__emplace_back_slow_path<AMCP::Terminal_Description>(v15, &v26);
            }

            else
            {
              v17 = v26;
              v18 = v27;
              *(v16 + 32) = v28;
              *v16 = v17;
              *(v16 + 16) = v18;
              v19 = (v16 + 40);
              v20 = v29;
              v21 = 2;
              do
              {
                *v19 = 0;
                v19[1] = 0;
                v19[2] = 0;
                *v19 = *v20;
                v19[2] = v20[2];
                *v20 = 0;
                v20[1] = 0;
                v20[2] = 0;
                v20 += 3;
                v19 += 3;
                --v21;
              }

              while (v21);
              v22 = v29[6];
              *(v16 + 96) = v30;
              *(v16 + 88) = v22;
              v23 = v16 + 104;
            }

            *(v15 + 8) = v23;
            for (i = 64; i != 16; i -= 24)
            {
              v32 = (&v26 + i);
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v32);
            }

            v14 += 112;
          }

          while (v14 != v13);
        }

        v8 = 1;
        v9 = 1;
      }

      while ((v11 & 1) == 0);
      v7 = v25;
      goto LABEL_25;
    }
  }

  else
  {
    v25 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "");
  *a2 = 0;
  *(a2 + 8) = v26;
  *(a2 + 24) = v27;
  v26 = 0uLL;
  *&v27 = 0;
  *(a2 + 32) = 0x100000000;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  v7 = v25;
  if (v25)
  {
LABEL_25:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13>,AMCP::Node_Description ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13>,AMCP::Node_Description ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13>,AMCP::Node_Description ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5970768;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13>,AMCP::Node_Description ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5970768;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13>,AMCP::Node_Description ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5970768;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[309];
}

uint64_t std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFyyRyEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSD_4NodeEEENS3_IFRT_RNSD_9Node_ProcEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 64) + 16))(&v6);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v6);
  std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::__value_func[abi:ne200100](a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE44D9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5970648;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  result = std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100]((a2 + 4), a1 + 32);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_1DE44DB78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970648;
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970648;
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[285];
}

uint64_t std::__function::__value_func<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFyyRyEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSD_4NodeEEENS3_IFRT_RNSD_9Node_ProcEEEEEUlRKS6_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 64) + 16))(&v10);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v10);
  v6 = v5[3];
  v5[3] = 0;
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  std::function<unsigned long long ()(unsigned long long,unsigned long long &)>::operator=(v5, a2);
  v7 = *(a1 + 72);
  if (v7 == 1852074351)
  {
    v8 = *(v10 + 576);
    if (v8)
    {
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v12, v10 + 224);
      AMCP::Graph::Call_Audio_IO_Proc::update_proc(v8, v12);
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v12);
    }
  }

  else if (v7 == 1919247212)
  {
    std::function<void ()>::operator()(*(v10 + 152), 0);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE44E22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  _Unwind_Resume(a1);
}

void *std::function<unsigned long long ()(unsigned long long,unsigned long long &)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void *std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE44E528(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::destroy[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

double std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59705B8;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](a2 + 32, a1 + 32);
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_1DE44E6E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59705B8;
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59705B8;
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_11,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_11>,std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_11"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long)> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[307];
}

uint64_t std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::function<unsigned long long ()(unsigned long long)> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long)> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long)> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<unsigned long long ()(unsigned long long)> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<unsigned long long ()(unsigned long long)> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long)> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFyyEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSC_4NodeEEENS3_IFRT_RNSC_9Node_ProcEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long)> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 64) + 16))(&v6);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v6);
  std::__function::__value_func<unsigned long long ()(unsigned long long)>::__value_func[abi:ne200100](a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE44EE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<unsigned long long ()(unsigned long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long)> ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long)> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5970498;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  result = std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100]((a2 + 4), a1 + 32);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_1DE44F014(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970498;
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970498;
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long)>)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[283];
}

uint64_t std::__function::__value_func<void ()(std::function<unsigned long long ()(unsigned long long)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::function<unsigned long long ()(unsigned long long)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<unsigned long long ()(unsigned long long)>)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long)>)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long)>)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(std::function<unsigned long long ()(unsigned long long)>)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(std::function<unsigned long long ()(unsigned long long)>)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<unsigned long long ()(unsigned long long)>)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<unsigned long long ()(unsigned long long)>)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFyyEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSC_4NodeEEENS3_IFRT_RNSC_9Node_ProcEEEEEUlRKS5_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 64) + 16))(&v10);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v10);
  v6 = v5[3];
  v5[3] = 0;
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  std::function<unsigned long long ()(unsigned long long)>::operator=(v5, a2);
  v7 = *(a1 + 72);
  if (v7 == 1852074351)
  {
    v8 = *(v10 + 576);
    if (v8)
    {
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v12, v10 + 224);
      AMCP::Graph::Call_Audio_IO_Proc::update_proc(v8, v12);
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v12);
    }
  }

  else if (v7 == 1919247212)
  {
    std::function<void ()>::operator()(*(v10 + 152), 0);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE44F6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  _Unwind_Resume(a1);
}

void *std::function<unsigned long long ()(unsigned long long)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<unsigned long long ()(unsigned long long)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<unsigned long long ()(unsigned long long)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void *std::__function::__value_func<unsigned long long ()(unsigned long long)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE44F9C4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::destroy[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

double std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5970408;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](a2 + 32, a1 + 32);
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_1DE44FB7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970408;
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970408;
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_10,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_10>,std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_10"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::function<long long ()(void)> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[313];
}

uint64_t std::__function::__value_func<std::function<long long ()(void)> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::function<long long ()(void)> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::function<long long ()(void)> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::function<long long ()(void)> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::function<long long ()(void)> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::function<long long ()(void)> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::function<long long ()(void)> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<long long ()(void)> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<long long ()(void)> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<long long ()(void)> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFxvEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSC_4NodeEEENS3_IFRT_RNSC_9Node_ProcEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<long long ()(void)> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 64) + 16))(&v6);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v6);
  std::__function::__value_func<long long ()(void)>::__value_func[abi:ne200100](a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE450334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<long long ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<long long ()(void)> ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<long long ()(void)> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F59702E8;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  result = std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100]((a2 + 4), a1 + 32);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_1DE4504B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<long long ()(void)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59702E8;
  std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<long long ()(void)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59702E8;
  std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(std::function<long long ()(void)>)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[289];
}

uint64_t std::__function::__value_func<void ()(std::function<long long ()(void)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::function<long long ()(void)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<long long ()(void)>)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<long long ()(void)>)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(std::function<long long ()(void)>)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(std::function<long long ()(void)>)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(std::function<long long ()(void)>)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<long long ()(void)>)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<long long ()(void)>)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFxvEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSC_4NodeEEENS3_IFRT_RNSC_9Node_ProcEEEEEUlRKS5_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 64) + 16))(&v10);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v10);
  v6 = v5[3];
  v5[3] = 0;
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  std::function<long long ()(void)>::operator=(v5, a2);
  v7 = *(a1 + 72);
  if (v7 == 1852074351)
  {
    v8 = *(v10 + 576);
    if (v8)
    {
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v12, v10 + 224);
      AMCP::Graph::Call_Audio_IO_Proc::update_proc(v8, v12);
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v12);
    }
  }

  else if (v7 == 1919247212)
  {
    std::function<void ()>::operator()(*(v10 + 152), 0);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE450B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  _Unwind_Resume(a1);
}

void *std::function<long long ()(void)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<long long ()(void)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<long long ()(void)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void *std::__function::__value_func<long long ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE450E60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::destroy[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

double std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5970258;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](a2 + 32, a1 + 32);
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_1DE451018(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970258;
  std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970258;
  std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_9,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_9>,std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_9"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_8,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_8>,std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_8"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_7>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_7"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[311];
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFvjRKNS_15Proc_Cycle_InfoEEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSF_4NodeEEENS3_IFRT_RNSF_9Node_ProcEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 64) + 16))(&v6);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v6);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__value_func[abi:ne200100](a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE451980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5970038;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  result = std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100]((a2 + 4), a1 + 32);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_1DE451AFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970038;
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970038;
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[287];
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFvjRKNS_15Proc_Cycle_InfoEEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSF_4NodeEEENS3_IFRT_RNSF_9Node_ProcEEEEEUlRKS8_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 64) + 16))(&v10);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v10);
  v6 = v5[3];
  v5[3] = 0;
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::operator=(v5, a2);
  v7 = *(a1 + 72);
  if (v7 == 1852074351)
  {
    v8 = *(v10 + 576);
    if (v8)
    {
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v12, v10 + 224);
      AMCP::Graph::Call_Audio_IO_Proc::update_proc(v8, v12);
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v12);
    }
  }

  else if (v7 == 1919247212)
  {
    std::function<void ()>::operator()(*(v10 + 152), 0);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE4521B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  _Unwind_Resume(a1);
}

void *std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void *std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE4524AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::destroy[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

double std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596FFA8;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](a2 + 32, a1 + 32);
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_1DE452664(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FFA8;
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FFA8;
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_6,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_6>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_6"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_5,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_5>,std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_5"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_4,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_4>,std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_3>,std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::function<void ()(void)> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[319];
}

uint64_t std::__function::__value_func<std::function<void ()(void)> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::function<void ()(void)> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(void)> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(void)> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::function<void ()(void)> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::function<void ()(void)> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::function<void ()(void)> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(void)> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(void)> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(void)> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFvvEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSC_4NodeEEENS3_IFRT_RNSC_9Node_ProcEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(void)> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 64) + 16))(&v6);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v6);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE4530A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(void)> ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(void)> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F596FD08;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  result = std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100]((a2 + 4), a1 + 32);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_1DE453188(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(void)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FD08;
  std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(void)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FD08;
  std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(void)>)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[301];
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(void)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::function<void ()(void)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(void)>)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(void)>)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(void)>)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(std::function<void ()(void)>)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(std::function<void ()(void)>)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(void)>)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(void)>)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFvvEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSC_4NodeEEENS3_IFRT_RNSC_9Node_ProcEEEEEUlRKS5_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 64) + 16))(&v10);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v10);
  v6 = std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v5);
  std::function<void ()(void)>::operator=(v6, a2);
  v7 = *(a1 + 72);
  if (v7 == 1852074351)
  {
    v8 = *(v10 + 576);
    if (v8)
    {
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v12, v10 + 224);
      AMCP::Graph::Call_Audio_IO_Proc::update_proc(v8, v12);
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v12);
    }
  }

  else if (v7 == 1919247212)
  {
    std::function<void ()>::operator()(*(v10 + 152), 0);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE4537D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::destroy[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

double std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596FC78;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](a2 + 32, a1 + 32);
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_1DE4539B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FC78;
  std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FC78;
  std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_2>,std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int)> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[305];
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int)> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::function<void ()(unsigned int)> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(unsigned int)> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::function<void ()> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::function<void ()> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::function<void ()> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::function<void ()> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int)> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFvjEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSC_4NodeEEENS3_IFRT_RNSC_9Node_ProcEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int)> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 64) + 16))(&v6);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v6);
  std::__function::__value_func<void ()>::__value_func[abi:ne200100](a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE454168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int)> ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()> const&)#1}>,void ()(std::function<void ()>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int)> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F596FB58;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  result = std::__function::__value_func<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100]((a2 + 4), a1 + 32);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_1DE45424C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FB58;
  std::__function::__value_func<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FB58;
  std::__function::__value_func<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(unsigned int)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::function<void ()(unsigned int)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(unsigned int)>)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()>)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()>)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(std::function<void ()>)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(std::function<void ()>)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()>)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()>)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1}>,void ()(std::function<void ()(unsigned int)>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFvjEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSC_4NodeEEENS3_IFRT_RNSC_9Node_ProcEEEEEUlRKS5_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1}>,void ()(std::function<void ()(unsigned int)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 64) + 16))(&v10);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v10);
  v6 = std::__function::__value_func<void ()>::operator=[abi:ne200100](v5);
  std::function<void ()>::operator=(v6, a2);
  v7 = *(a1 + 72);
  if (v7 == 1852074351)
  {
    v8 = *(v10 + 576);
    if (v8)
    {
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v12, v10 + 224);
      AMCP::Graph::Call_Audio_IO_Proc::update_proc(v8, v12);
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v12);
    }
  }

  else if (v7 == 1919247212)
  {
    std::function<void ()>::operator()(*(v10 + 152), 0);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE454828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1}>,void ()(std::function<void ()(unsigned int)>)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()> const&)#1}>,void ()(std::function<void ()>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1}>,void ()(std::function<void ()(unsigned int)>)>::destroy[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

double std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1}>,void ()(std::function<void ()(unsigned int)>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596FAC8;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  std::__function::__value_func<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](a2 + 32, a1 + 32);
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_1DE454984(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1}>,void ()(std::function<void ()(unsigned int)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FAC8;
  std::__function::__value_func<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1}>,void ()(std::function<void ()(unsigned int)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FAC8;
  std::__function::__value_func<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_1>,std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[303];
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFvjRKNS_15Proc_Cycle_InfoEmPNS_11Proc_StreamEmS8_EEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSH_4NodeEEENS3_IFRT_RNSH_9Node_ProcEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 64) + 16))(&v6);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v6);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE45513C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F596F9A8;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  result = std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100]((a2 + 4), a1 + 32);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_1DE455220(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596F9A8;
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596F9A8;
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFvjRKNS_15Proc_Cycle_InfoEmPNS_11Proc_StreamEmS8_EEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSH_4NodeEEENS3_IFRT_RNSH_9Node_ProcEEEEEUlRKSA_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 64) + 16))(&v10);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v10);
  v6 = std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=[abi:ne200100](v5);
  std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=(v6, a2);
  v7 = *(a1 + 72);
  if (v7 == 1852074351)
  {
    v8 = *(v10 + 576);
    if (v8)
    {
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v12, v10 + 224);
      AMCP::Graph::Call_Audio_IO_Proc::update_proc(v8, v12);
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v12);
    }
  }

  else if (v7 == 1919247212)
  {
    std::function<void ()>::operator()(*(v10 + 152), 0);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE4557FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::destroy[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

double std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596F918;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](a2 + 32, a1 + 32);
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_1DE455958(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596F918;
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596F918;
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_0>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_12"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

CFStringRef std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::operator()@<X0>(CFStringRef result@<X0>, CFStringRef *a2@<X8>)
{
  length_high = SHIBYTE(result->length);
  if (length_high < 0)
  {
    info = result->info;
    if (!info)
    {
      *a2 = 0;
      return result;
    }

    length_high = result->data;
  }

  else
  {
    info = &result->info;
  }

  result = CFStringCreateWithBytes(0, info, length_high, 0x8000100u, 0);
  *a2 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::destroy_deallocate(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F596F898;
  v2 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v3 = *(a1 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a1 + 24);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596F898;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596F898;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void AMCP::IO_Core::Node::~Node(AMCP::IO_Core::Node *this)
{
  *this = &unk_1F596F7D8;
  v2 = (*(**(this + 4) + 16))(*(this + 4));
  AMCP::Core::Broker::destroy_core(v2, *(this + 2));
  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

void AMCP::IO_Core::Node::build_core(AMCP::IO_Core::Node *this)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = (*(**(this + 4) + 16))(*(this + 4));
  *(this + 2) = AMCP::Core::Broker::reserve_id(v2);
  *__p = 0u;
  *v14 = 0u;
  v15 = 1065353216;
  (*(*this + 32))(this, __p);
  v3 = (*(**(this + 4) + 16))(*(this + 4));
  AMCP::Core::Broker::make_core(&v11, v3, __p, *(this + 2));
  if (!v11)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      v17 = "Node.cpp";
      v18 = 1024;
      v19 = 74;
      v20 = 2080;
      v21 = "core_ptr.operator BOOL() == true";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s failed to allocate the Core", buf, 0x1Cu);
    }

    abort();
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(v14[0]);
  v5 = __p[0];
  __p[0] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1DE456240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_32c127_ZTSKZ112__Core_Audio_Driver_Host_get_property_data_qualifier_data_size_qualifier_data_data_size_out_data_size_out_data__E4__41(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

__n128 __copy_helper_block_ea8_32c107_ZTSKZ93__Core_Audio_Driver_Host_get_property_data_size_qualifier_data_size_qualifier_data_out_size__E4__39(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

__n128 __copy_helper_block_ea8_32c74_ZTSKZ60__Core_Audio_Driver_Host_is_property_settable_out_settable__E4__37(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void sub_1DE458EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_32c80_ZTSKZ66__Core_Audio_Driver_Host_create_device_client_info_out_object_id__E4__15(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void sub_1DE45A440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1DE45B0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = Core_Audio_Driver_Host;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<Property_Type_Info>::__on_zero_shared(uint64_t a1)
{
  std::mutex::~mutex((a1 + 48));
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 48;
        std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v3 - 40);
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<Property_Type_Info>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986C90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Feature_Flags::access_run_new_hal(AMCP::Feature_Flags *this, const BOOL *a2)
{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::access_run_new_hal(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::access_run_new_hal(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_run_new_hal(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::access_run_new_hal(BOOL const*)::s_run_new_hal;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_run_new_hal(BOOL const*)::$_0 &&>>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::access_run_new_hal(BOOL const*)::s_run_new_hal = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::access_run_new_hal(BOOL const*)::s_run_new_hal = a1;
    if (a1)
    {
LABEL_3:
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

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v22 = 136315394;
        v23 = "Configuration.cpp";
        v24 = 1024;
        v25 = 224;
        v11 = "%32s:%-5d MCP Engaged";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v22, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v22 = 136315394;
    v23 = "Configuration.cpp";
    v24 = 1024;
    v25 = 228;
    v11 = "%32s:%-5d MCP Disengaged";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::access_run_new_hal(BOOL const*)::s_run_new_hal)
    {
      v20 = "true";
    }

    else
    {
      v20 = "false";
    }

    v22 = 136315138;
    v23 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Use_New_HAL_State", "AMCP Turned on: %s", &v22, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t AMCP::Feature_Flags::run_hybrid_hal(AMCP::Feature_Flags *this, const BOOL *a2)
{
  result = AMCP::Feature_Flags::access_run_hybrid_hal(0, a2);
  if (result)
  {
    return AMCP::Feature_Flags::access_run_new_hal(0, v3) ^ 1;
  }

  return result;
}

uint64_t AMCP::Feature_Flags::access_run_hybrid_hal(AMCP::Feature_Flags *this, const BOOL *a2)
{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::access_run_hybrid_hal(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::access_run_hybrid_hal(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_run_hybrid_hal(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::access_run_hybrid_hal(BOOL const*)::s_run_hybrid_hal;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_run_hybrid_hal(BOOL const*)::$_0 &&>>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::access_run_hybrid_hal(BOOL const*)::s_run_hybrid_hal = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::access_run_hybrid_hal(BOOL const*)::s_run_hybrid_hal = a1;
    if (a1)
    {
LABEL_3:
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

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v22 = 136315394;
        v23 = "Configuration.cpp";
        v24 = 1024;
        v25 = 188;
        v11 = "%32s:%-5d Hybrid HAL Engaged";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v22, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v22 = 136315394;
    v23 = "Configuration.cpp";
    v24 = 1024;
    v25 = 196;
    v11 = "%32s:%-5d Vintage HAL Engaged";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::access_run_hybrid_hal(BOOL const*)::s_run_hybrid_hal)
    {
      v20 = "true";
    }

    else
    {
      v20 = "false";
    }

    v22 = 136315138;
    v23 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Use_Hybrid_HAL_State", "Hybrid HAL turned on: %s", &v22, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t AMCP::Feature_Flags::access_host_asp_oop(AMCP::Feature_Flags *this, const BOOL *a2)
{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::access_host_asp_oop(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::access_host_asp_oop(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_host_asp_oop(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::access_host_asp_oop(BOOL const*)::s_host_asp_oop;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_host_asp_oop(BOOL const*)::$_0 &&>>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::access_host_asp_oop(BOOL const*)::s_host_asp_oop = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::access_host_asp_oop(BOOL const*)::s_host_asp_oop = a1;
    if (a1)
    {
LABEL_3:
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

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v22 = 136315394;
        v23 = "Configuration.cpp";
        v24 = 1024;
        v25 = 287;
        v11 = "%32s:%-5d Hosting ASPs Out of Process";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v22, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v22 = 136315394;
    v23 = "Configuration.cpp";
    v24 = 1024;
    v25 = 291;
    v11 = "%32s:%-5d Loading ASPs directly";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::access_host_asp_oop(BOOL const*)::s_host_asp_oop)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v22 = 136315138;
    v23 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Host_ASP_OoP_State", "Hosting ASPs Out of Process: %s", &v22, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t AMCP::Feature_Flags::access_internal_drivers_oop(AMCP::Feature_Flags *this, const BOOL *a2)
{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::access_internal_drivers_oop(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::access_internal_drivers_oop(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_internal_drivers_oop(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::access_internal_drivers_oop(BOOL const*)::s_force_internal_drivers_oop;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_internal_drivers_oop(BOOL const*)::$_0 &&>>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::access_internal_drivers_oop(BOOL const*)::s_force_internal_drivers_oop = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::access_internal_drivers_oop(BOOL const*)::s_force_internal_drivers_oop = a1;
    if (a1)
    {
LABEL_3:
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

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v22 = 136315394;
        v23 = "Configuration.cpp";
        v24 = 1024;
        v25 = 256;
        v11 = "%32s:%-5d Forcing Internal Drivers Out of Process";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v22, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v22 = 136315394;
    v23 = "Configuration.cpp";
    v24 = 1024;
    v25 = 260;
    v11 = "%32s:%-5d Internal Drivers will be loaded on the Server";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::access_internal_drivers_oop(BOOL const*)::s_force_internal_drivers_oop)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v22 = 136315138;
    v23 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Load_Internal_Drivers_OoP", "Forcing Internal Drivers Out of Process: %s", &v22, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(AMCP::Feature_Flags *this, const BOOL *a2)
{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(BOOL const*)::s_allow_mcp_and_hal_coex;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(BOOL const*)::$_0 &&>>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(BOOL const*)::s_allow_mcp_and_hal_coex = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(BOOL const*)::s_allow_mcp_and_hal_coex = a1;
    if (a1)
    {
LABEL_3:
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

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v22 = 136315394;
        v23 = "Configuration.cpp";
        v24 = 1024;
        v25 = 318;
        v11 = "%32s:%-5d MCP and HAL Can Coexist in coreaudiod";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v22, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v22 = 136315394;
    v23 = "Configuration.cpp";
    v24 = 1024;
    v25 = 322;
    v11 = "%32s:%-5d MCP and HAL Cannot Coexist in coreaudiod";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(BOOL const*)::s_allow_mcp_and_hal_coex)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v22 = 136315138;
    v23 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Allow_MCP_HAL_Coex", "MCP and HAL Can Coexist in coreaudiod: %s", &v22, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t AMCP::Feature_Flags::access_event_link_oop_io(AMCP::Feature_Flags *this, const BOOL *a2)
{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::access_event_link_oop_io(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::access_event_link_oop_io(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_event_link_oop_io(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::access_event_link_oop_io(BOOL const*)::s_event_link_oop_io;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_event_link_oop_io(BOOL const*)::$_0 &&>>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::access_event_link_oop_io(BOOL const*)::s_event_link_oop_io = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::access_event_link_oop_io(BOOL const*)::s_event_link_oop_io = a1;
    if (a1)
    {
LABEL_3:
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

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v22 = 136315394;
        v23 = "Configuration.cpp";
        v24 = 1024;
        v25 = 350;
        v11 = "%32s:%-5d Using EventLink for OoP I/O.";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v22, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v22 = 136315394;
    v23 = "Configuration.cpp";
    v24 = 1024;
    v25 = 354;
    v11 = "%32s:%-5d Using Mach Semaphores for OoP I/O.";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::access_event_link_oop_io(BOOL const*)::s_event_link_oop_io)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v22 = 136315138;
    v23 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Allow_Event_Link_OoP_IO", "Use EventLink for OoP I/O: %s", &v22, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t AMCP::Feature_Flags::access_collect_io_perfdata(AMCP::Feature_Flags *this, const BOOL *a2)
{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::access_collect_io_perfdata(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::access_collect_io_perfdata(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_collect_io_perfdata(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::access_collect_io_perfdata(BOOL const*)::s_collect_io_perfdata;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_collect_io_perfdata(BOOL const*)::$_0 &&>>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::access_collect_io_perfdata(BOOL const*)::s_collect_io_perfdata = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::access_collect_io_perfdata(BOOL const*)::s_collect_io_perfdata = a1;
    if (a1)
    {
LABEL_3:
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

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v22 = 136315394;
        v23 = "Configuration.cpp";
        v24 = 1024;
        v25 = 383;
        v11 = "%32s:%-5d Collecting perfdata for OoP I/O.";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v22, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v22 = 136315394;
    v23 = "Configuration.cpp";
    v24 = 1024;
    v25 = 387;
    v11 = "%32s:%-5d Not collecting perfdata for OoP I/O.";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::access_collect_io_perfdata(BOOL const*)::s_collect_io_perfdata)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v22 = 136315138;
    v23 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Allow_Collect_IO_perfdata", "Collect IO perfdata: %s", &v22, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t AMCP::Feature_Flags::allow_adm_dsp_spatial(AMCP::Feature_Flags *this, const BOOL *a2)
{
  return AMCP::Feature_Flags::allow_adm_dsp_spatial(0, a2);
}

{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::allow_adm_dsp_spatial(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::allow_adm_dsp_spatial(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::allow_adm_dsp_spatial(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::allow_adm_dsp_spatial(BOOL const*)::s_allow_adm_dsp_spatial;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::allow_adm_dsp_spatial(BOOL const*)::$_0 &&>>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::allow_adm_dsp_spatial(BOOL const*)::s_allow_adm_dsp_spatial = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::allow_adm_dsp_spatial(BOOL const*)::s_allow_adm_dsp_spatial = a1;
    if (a1)
    {
LABEL_3:
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

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v22 = 136315394;
        v23 = "Configuration.cpp";
        v24 = 1024;
        v25 = 416;
        v11 = "%32s:%-5d Allow ADM DSP Spatial.";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v22, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v22 = 136315394;
    v23 = "Configuration.cpp";
    v24 = 1024;
    v25 = 420;
    v11 = "%32s:%-5d Do not allow ADM DSP Spatial.";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::allow_adm_dsp_spatial(BOOL const*)::s_allow_adm_dsp_spatial)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v22 = 136315138;
    v23 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Allow_ADM_DSP_Spatial", "Allow ADM DSP Spatial: %s", &v22, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}