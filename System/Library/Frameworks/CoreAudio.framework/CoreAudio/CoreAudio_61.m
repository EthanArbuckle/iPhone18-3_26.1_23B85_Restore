BOOL HALS_DSPHostModifierStorage<AHAL_DSP::IHostModifier_StreamLatencyFrames,unsigned int>::set_state_if (uint64_t a1, int a2, unsigned int a3)
{
  v3 = a2;
  atomic_compare_exchange_strong((a1 + 8), &v3, a3);
  return v3 == a2;
}

void HALS_DSPHostModifier_StreamLatencyFrames::on_set_requested(HALS_DSPHostModifier_StreamLatencyFrames *this)
{
  v24 = *MEMORY[0x1E69E9840];
  std::mutex::lock((this + 24));
  v2 = *(this + 2);
  std::mutex::unlock((this + 24));
  if ((v2 & 0x100000000) != 0)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 0;
      v10 = 0;
      v11 = 47;
      do
      {
        v12 = &aLibraryCachesC_210[v9];
        if (v11 == 47)
        {
          v10 = &aLibraryCachesC_210[v9];
        }

        v11 = v12[1];
        if (!v12[1])
        {
          break;
        }
      }

      while (v9++ < 0xFFF);
      v14 = atomic_load(this + 2);
      if (v10)
      {
        v15 = v10 + 1;
      }

      else
      {
        v15 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostModifier_StreamLatencyFrames.cpp";
      }

      v16 = 136315906;
      v17 = v15;
      v18 = 1024;
      v19 = 34;
      v20 = 1024;
      v21 = v14;
      v22 = 1024;
      v23 = v2;
      _os_log_debug_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] (State: %d) Latency change requested with %d", &v16, 0x1Eu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t HALS_DSPHostModifierStorage<AHAL_DSP::IHostModifier_StreamLatencyFrames,unsigned int>::get_current(uint64_t a1)
{
  v2 = atomic_load((a1 + 8));
  if (v2 == 3)
  {
    std::mutex::lock((a1 + 24));
    v3 = *(a1 + 16);
    std::mutex::unlock((a1 + 24));
  }

  else
  {
    v3 = *(a1 + 12) | 0x100000000;
  }

  return v3 & 0xFFFFFFFFFFLL;
}

void HALS_DSPHostModifierStorage<AHAL_DSP::IHostModifier_StreamLatencyFrames,unsigned int>::clear_requested(uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  atomic_exchange((a1 + 8), 0);
  if (*(a1 + 20) == 1)
  {
    *(a1 + 20) = 0;
  }

  std::mutex::unlock((a1 + 24));
}

uint64_t HALS_DSPHostModifierStorage<AHAL_DSP::IHostModifier_StreamLatencyFrames,unsigned int>::get_requested(uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 16);
  std::mutex::unlock((a1 + 24));
  return v2;
}

void HALS_DSPHostModifier_StreamLatencyFrames::~HALS_DSPHostModifier_StreamLatencyFrames(HALS_DSPHostModifier_StreamLatencyFrames *this)
{
  *this = &unk_1F598C108;
  std::mutex::~mutex((this + 24));

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F598C108;
  std::mutex::~mutex((this + 24));
}

void HALS_DSPHostModifierStorage<AHAL_DSP::IHostModifier_StreamLatencyFrames,unsigned int>::~HALS_DSPHostModifierStorage(uint64_t a1)
{
  *a1 = &unk_1F598C108;
  std::mutex::~mutex((a1 + 24));

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_DSPHostModifierStorage<AHAL_DSP::IHostModifier_StreamLatencyFrames,unsigned int>::~HALS_DSPHostModifierStorage(uint64_t a1)
{
  *a1 = &unk_1F598C108;
  std::mutex::~mutex((a1 + 24));
  return a1;
}

void HALS_DSPHostEventListener_Device::dsp_processing_type_change(HALS_DSPHostEventListener_Device *this)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *v4;
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 0;
    v8 = 0;
    v9 = 47;
    do
    {
      v10 = &aLibraryCachesC_211[v7];
      if (v9 == 47)
      {
        v8 = &aLibraryCachesC_211[v7];
      }

      v9 = v10[1];
      if (!v10[1])
      {
        break;
      }
    }

    while (v7++ < 0xFFF);
    if (v8)
    {
      v12 = v8 + 1;
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostEventListener_Device.cpp";
    }

    v13 = *(this + 2);
    v14 = *(this + 3);
    v15 = 136315906;
    v16 = v12;
    v17 = 1024;
    v18 = 19;
    v19 = 1024;
    v20 = v13;
    v21 = 1024;
    v22 = v14;
    _os_log_debug_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] DSP processing type changed (Device ID: %d) (Client ID: %d)", &v15, 0x1Eu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void HALS_DSPHostEventListener_Device::on_dsp_event(_DWORD *a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*a2)
  {
    v5 = **v3;
    if (v6)
    {
      v7 = v6;
      v8 = *(a2 + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v9 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v18 = 0;
        v19 = 0;
        v20 = 47;
        do
        {
          v21 = &aLibraryCachesC_211[v18];
          if (v20 == 47)
          {
            v19 = &aLibraryCachesC_211[v18];
          }

          v20 = v21[1];
          if (!v21[1])
          {
            break;
          }
        }

        while (v18++ < 0xFFF);
        if (v19)
        {
          v23 = v19 + 1;
        }

        else
        {
          v23 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostEventListener_Device.cpp";
        }

        caulk::string_from_4cc(&__p, *(v7 + 2));
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v25 = a1[2];
        v26 = a1[3];
        *buf = 136316162;
        v29 = v23;
        v30 = 1024;
        v31 = 28;
        v32 = 2080;
        v33 = p_p;
        v34 = 1024;
        v35 = v25;
        v36 = 1024;
        v37 = v26;
        _os_log_debug_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] DSP property changed %s (Device ID: %d) (Client ID: %d)", buf, 0x28u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v13 = *a2;
    if (*a2)
    {
      v14 = **v13;
      if (v15)
      {
        v16 = *(a2 + 8);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v15[2] == 2)
        {
          (*(*a1 + 32))(a1);
        }

        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }
      }
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1DE6BC310(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mock_Power_Manager_System_Interface::PMConnectionRelease(AMCP::Log::AMCP_Scope_Registry *a1, AMCP::Log::AMCP_Scope_Registry *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a2 != a1)
  {
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 0;
      v9 = 0;
      v10 = 47;
      do
      {
        v11 = &aLibraryCachesC_212[v8];
        if (v10 == 47)
        {
          v9 = &aLibraryCachesC_212[v8];
        }

        v10 = v11[1];
        if (!v11[1])
        {
          break;
        }
      }

      while (v8++ < 0xFFF);
      if (v9)
      {
        v13 = v9 + 1;
      }

      else
      {
        v13 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/Test/AHAL/Utility/Mock_Power_Manager_System_Interface.cpp";
      }

      *buf = 136315650;
      v25 = v13;
      v26 = 1024;
      v27 = 232;
      v28 = 2080;
      v29 = "connection != reinterpret_cast<__IOPMConnection*>(this)";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v15);
    std::runtime_error::runtime_error(&v16, &v15);
    std::runtime_error::runtime_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5992170;
    v18 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v17);
    v30 = "virtual IOReturn Mock_Power_Manager_System_Interface::PMConnectionRelease(IOPMConnection)";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/Test/AHAL/Utility/Mock_Power_Manager_System_Interface.cpp";
    v32 = 232;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  v2 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE6BC5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::runtime_error a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a26);
  std::runtime_error::~runtime_error(&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 113));
  _Unwind_Resume(a1);
}

AMCP::Log::AMCP_Scope_Registry *Mock_Power_Manager_System_Interface::PMConnectionSetDispatchQueue(AMCP::Log::AMCP_Scope_Registry *result, AMCP::Log::AMCP_Scope_Registry *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      v8 = 0;
      v9 = 0;
      v10 = 47;
      do
      {
        v11 = &aLibraryCachesC_212[v8];
        if (v10 == 47)
        {
          v9 = &aLibraryCachesC_212[v8];
        }

        v10 = v11[1];
        if (!v11[1])
        {
          break;
        }
      }

      while (v8++ < 0xFFF);
      if (v9)
      {
        v13 = v9 + 1;
      }

      else
      {
        v13 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/Test/AHAL/Utility/Mock_Power_Manager_System_Interface.cpp";
      }

      *buf = 136315650;
      v25 = v13;
      v26 = 1024;
      v27 = 224;
      v28 = 2080;
      v29 = "connection != reinterpret_cast<__IOPMConnection*>(this)";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v15);
    std::runtime_error::runtime_error(&v16, &v15);
    std::runtime_error::runtime_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5992170;
    v18 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v17);
    v30 = "virtual void Mock_Power_Manager_System_Interface::PMConnectionSetDispatchQueue(IOPMConnection, dispatch_queue_t)";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/Test/AHAL/Utility/Mock_Power_Manager_System_Interface.cpp";
    v32 = 224;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  *(result + 5) = a3;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE6BC8EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::runtime_error a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a26);
  std::runtime_error::~runtime_error(&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 113));
  _Unwind_Resume(a1);
}

uint64_t Mock_Power_Manager_System_Interface::PMConnectionSetNotification(AMCP::Log::AMCP_Scope_Registry *a1, AMCP::Log::AMCP_Scope_Registry *a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2 != a1)
  {
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

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v11 = 0;
      v12 = 47;
      do
      {
        v13 = &aLibraryCachesC_212[v10];
        if (v12 == 47)
        {
          v11 = &aLibraryCachesC_212[v10];
        }

        v12 = v13[1];
        if (!v13[1])
        {
          break;
        }
      }

      while (v10++ < 0xFFF);
      if (v11)
      {
        v15 = v11 + 1;
      }

      else
      {
        v15 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/Test/AHAL/Utility/Mock_Power_Manager_System_Interface.cpp";
      }

      *buf = 136315650;
      v27 = v15;
      v28 = 1024;
      v29 = 215;
      v30 = 2080;
      v31 = "connection != reinterpret_cast<__IOPMConnection*>(this)";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v17);
    std::runtime_error::runtime_error(&v18, &v17);
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v32 = "virtual IOReturn Mock_Power_Manager_System_Interface::PMConnectionSetNotification(IOPMConnection, void *, IOPMEventHandlerType)";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/Test/AHAL/Utility/Mock_Power_Manager_System_Interface.cpp";
    v34 = 215;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  *(a1 + 7) = a4;
  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE6BCC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::runtime_error a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a26);
  std::runtime_error::~runtime_error(&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 113));
  _Unwind_Resume(a1);
}

uint64_t Mock_Power_Manager_System_Interface::PMConnectionAcknowledgeEvent(AMCP::Log::AMCP_Scope_Registry *a1, AMCP::Log::AMCP_Scope_Registry *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a2 != a1)
  {
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 0;
      v9 = 0;
      v10 = 47;
      do
      {
        v11 = &aLibraryCachesC_212[v8];
        if (v10 == 47)
        {
          v9 = &aLibraryCachesC_212[v8];
        }

        v10 = v11[1];
        if (!v11[1])
        {
          break;
        }
      }

      while (v8++ < 0xFFF);
      if (v9)
      {
        v13 = v9 + 1;
      }

      else
      {
        v13 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/Test/AHAL/Utility/Mock_Power_Manager_System_Interface.cpp";
      }

      *buf = 136315650;
      v25 = v13;
      v26 = 1024;
      v27 = 207;
      v28 = 2080;
      v29 = "connection != reinterpret_cast<__IOPMConnection*>(this)";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v15);
    std::runtime_error::runtime_error(&v16, &v15);
    std::runtime_error::runtime_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5992170;
    v18 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v17);
    v30 = "virtual IOReturn Mock_Power_Manager_System_Interface::PMConnectionAcknowledgeEvent(IOPMConnection, IOPMConnectionMessageToken)";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/Test/AHAL/Utility/Mock_Power_Manager_System_Interface.cpp";
    v32 = 207;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  v2 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE6BCF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::runtime_error a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a26);
  std::runtime_error::~runtime_error(&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 113));
  _Unwind_Resume(a1);
}

uint64_t Mock_Power_Manager_System_Interface::PMConnectionCreate(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2, uint64_t a3, AMCP::Log::AMCP_Scope_Registry **a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
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

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v11 = 0;
      v12 = 47;
      do
      {
        v13 = &aLibraryCachesC_212[v10];
        if (v12 == 47)
        {
          v11 = &aLibraryCachesC_212[v10];
        }

        v12 = v13[1];
        if (!v13[1])
        {
          break;
        }
      }

      while (v10++ < 0xFFF);
      if (v11)
      {
        v15 = v11 + 1;
      }

      else
      {
        v15 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/Test/AHAL/Utility/Mock_Power_Manager_System_Interface.cpp";
      }

      *buf = 136315650;
      v27 = v15;
      v28 = 1024;
      v29 = 198;
      v30 = 2080;
      v31 = "(connection) == nullptr";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v17);
    std::runtime_error::runtime_error(&v18, &v17);
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v32 = "virtual IOReturn Mock_Power_Manager_System_Interface::PMConnectionCreate(CFStringRef, IOPMCapabilityBits, IOPMConnection *)";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/Test/AHAL/Utility/Mock_Power_Manager_System_Interface.cpp";
    v34 = 198;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  *a4 = a1;
  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE6BD250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::runtime_error a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a26);
  std::runtime_error::~runtime_error(&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 113));
  _Unwind_Resume(a1);
}

uint64_t Mock_Power_Manager_System_Interface::RegisterForSystemPower(Mock_Power_Manager_System_Interface *this, void *a2, IONotificationPort **a3, void (*a4)(void *, unsigned int, unsigned int, void *), unsigned int *a5)
{
  *(this + 4) = a4;
  *a3 = &Mock_Power_Manager_System_Interface::RegisterForSystemPower(void *,IONotificationPort **,void (*)(void *,unsigned int,unsigned int,void *),unsigned int *)::dummy;
  *a5 = 1;
  return 1;
}

AMCP::Log::AMCP_Scope_Registry *Mock_Power_Manager_System_Interface::PMUnregisterNotification(AMCP::Log::AMCP_Scope_Registry *this, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2 != 1)
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 0;
      v8 = 0;
      v9 = 47;
      do
      {
        v10 = &aLibraryCachesC_212[v7];
        if (v9 == 47)
        {
          v8 = &aLibraryCachesC_212[v7];
        }

        v9 = v10[1];
        if (!v10[1])
        {
          break;
        }
      }

      while (v7++ < 0xFFF);
      if (v8)
      {
        v12 = v8 + 1;
      }

      else
      {
        v12 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/Test/AHAL/Utility/Mock_Power_Manager_System_Interface.cpp";
      }

      *buf = 136315650;
      v24 = v12;
      v25 = 1024;
      v26 = 128;
      v27 = 2080;
      v28 = "(handle == 1) == false";
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s FAILURE: Expected NotificationHandle with value of 1", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("FAILURE: Expected NotificationHandle with value of 1", &v14);
    std::runtime_error::runtime_error(&v15, &v14);
    std::runtime_error::runtime_error(&v16, &v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5992170;
    v17 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v16);
    v29 = "virtual void Mock_Power_Manager_System_Interface::PMUnregisterNotification(IOPMNotificationHandle)";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/Test/AHAL/Utility/Mock_Power_Manager_System_Interface.cpp";
    v31 = 128;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v13);
  }

  v2 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE6BD5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::runtime_error a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a26);
  std::runtime_error::~runtime_error(&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 113));
  _Unwind_Resume(a1);
}

uint64_t Mock_Power_Manager_System_Interface::PMScheduleUserActivityLevelNotification(uint64_t a1, uint64_t a2, void *aBlock)
{
  *(a1 + 48) = a2;
  *(a1 + 24) = _Block_copy(aBlock);
  return 1;
}

uint64_t Mock_Power_Manager_System_Interface::PMGetUserActivityLevel(Mock_Power_Manager_System_Interface *this, unint64_t *a2, unint64_t *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
      v14 = 0;
      v15 = 0;
      v16 = 47;
      do
      {
        v17 = &aLibraryCachesC_212[v14];
        if (v16 == 47)
        {
          v15 = &aLibraryCachesC_212[v14];
        }

        v16 = v17[1];
        if (!v17[1])
        {
          break;
        }

        v18 = v14++ >= 0xFFF;
      }

      while (!v18);
      if (v15)
      {
        v19 = v15 + 1;
      }

      else
      {
        v19 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/Test/AHAL/Utility/Mock_Power_Manager_System_Interface.cpp";
      }

      *buf = 136315650;
      v36 = v19;
      v37 = 1024;
      v38 = 105;
      v39 = 2080;
      v40 = "(outUserActive) == nullptr";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v26);
    std::runtime_error::runtime_error(&v27, &v26);
    std::runtime_error::runtime_error(&v28, &v27);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    v28.__vftable = &unk_1F5992170;
    v29 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v28);
    v41 = "virtual IOReturn Mock_Power_Manager_System_Interface::PMGetUserActivityLevel(uint64_t *, uint64_t *)";
    v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/Test/AHAL/Utility/Mock_Power_Manager_System_Interface.cpp";
    v43 = 105;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v25);
  }

  if (!a3)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
      v20 = 0;
      v21 = 0;
      v22 = 47;
      do
      {
        v23 = &aLibraryCachesC_212[v20];
        if (v22 == 47)
        {
          v21 = &aLibraryCachesC_212[v20];
        }

        v22 = v23[1];
        if (!v23[1])
        {
          break;
        }

        v18 = v20++ >= 0xFFF;
      }

      while (!v18);
      if (v21)
      {
        v24 = v21 + 1;
      }

      else
      {
        v24 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/Test/AHAL/Utility/Mock_Power_Manager_System_Interface.cpp";
      }

      *buf = 136315650;
      v36 = v24;
      v37 = 1024;
      v38 = 106;
      v39 = 2080;
      v40 = "(mostSignificantActivity) == nullptr";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v26);
    std::runtime_error::runtime_error(&v27, &v26);
    std::runtime_error::runtime_error(&v28, &v27);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    v28.__vftable = &unk_1F5992170;
    v29 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v28);
    v41 = "virtual IOReturn Mock_Power_Manager_System_Interface::PMGetUserActivityLevel(uint64_t *, uint64_t *)";
    v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/Test/AHAL/Utility/Mock_Power_Manager_System_Interface.cpp";
    v43 = 106;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v25);
  }

  v3 = *(this + 2);
  *a2 = v3;
  *a3 = v3;
  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE6BDB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::runtime_error a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a26);
  std::runtime_error::~runtime_error(&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 113));
  _Unwind_Resume(a1);
}

void Mock_Power_Manager_System_Interface::~Mock_Power_Manager_System_Interface(const void **this)
{
  Mock_Power_Manager_System_Interface::~Mock_Power_Manager_System_Interface(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F598C1B8;
  _Block_release(this[3]);
}

unint64_t HALS_DSPHostIntegrationPoint_IOContextUtilities::ISystemProperties::create_default(void)::DefaultProperties::default_output_device()
{
  v3[0] = 0;
  v3[1] = 0;
  HALS_System::GetInstance(&v4, 0, v3);
  v0 = *(v4 + 1616);
  v6 = v0;
  v7 = HALB_Mutex::Lock(v0);
  v1 = v0[54];
  HALB_Mutex::Locker::~Locker(&v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1 | ((v1 != 0) << 32);
}

void sub_1DE6BDCF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_DSPHostIntegrationPoint_IOContextUtilities::ISystemProperties::create_default(void)::DefaultProperties::find_stream@<X0>(HALS_ObjectMap *this@<X1>, void *a2@<X8>)
{
  result = HALS_ObjectMap::CopyObjectByObjectID(this);
  *a2 = result;
  return result;
}

void HALS_DSPHostIntegrationPoint_IOContextUtilities::ISystemProperties::create_default(void)::DefaultProperties::find_stream(int a1@<W1>, char a2@<W2>, int a3@<W3>, uint64_t *a4@<X8>)
{
  HALS_DSPHostIntegrationPoint_IOContextUtilities::ISystemProperties::create_default(void)::DefaultProperties::find_device(a1, &v10);
  v8 = v10;
  if (v10)
  {
    v9 = HALS_IODevice::CopyStreamByIndex(v10, a2, a3);
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  HALS_ObjectMap::ReleaseObject(v8, v7);
}

void HALS_DSPHostIntegrationPoint_IOContextUtilities::ISystemProperties::create_default(void)::DefaultProperties::find_device(int a1@<W1>, HALS_ObjectMap **a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  HALS_System::GetInstance(&v6, 0, v5);
  *a2 = HALS_System::CopyDeviceByObjectID(v6, a1, 0);
  v4 = v7;
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1DE6BDE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<HALS_DSPHostIntegrationPoint_IOContextUtilities::ISystemProperties::create_default(void)::DefaultProperties,std::allocator<HALS_DSPHostIntegrationPoint_IOContextUtilities::ISystemProperties::create_default(void)::DefaultProperties>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F598C2D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE6BE114(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, HALS_ObjectMap *a10)
{
  HALS_ObjectMap::ReleaseObject(a10, a2);
  HALS_ObjectMap::ReleaseObject(v11, v13);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t HALS_DSPHostIntegrationPoint_IOContextUtilities::populate_from_stream_info(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2)
  {
    for (i = *(v1 + 112); ; i += 32)
    {
      if (i == *(v1 + 120))
      {
        goto LABEL_32;
      }

      v4 = i[25];
      if (v2 == 3)
      {
        if (v4 == 1)
        {
          goto LABEL_17;
        }
      }

      else if (!v4)
      {
LABEL_17:
        v7 = i[2];
        v8 = i + 24;
        goto LABEL_31;
      }
    }
  }

  if (!*(v1 + 108))
  {
    if (!*(v1 + 456))
    {
      goto LABEL_32;
    }

LABEL_26:
    v9 = v1 + 456;
    goto LABEL_27;
  }

  v5 = *(v1 + 112);
  if (*(v1 + 120) == v5 || v5 == 0)
  {
    if (!*(v1 + 456))
    {
      goto LABEL_32;
    }
  }

  else if (!*v5)
  {
    goto LABEL_32;
  }

  v9 = *(v1 + 112);
  if (*(v1 + 120) == v9 || v9 == 0)
  {
    goto LABEL_26;
  }

LABEL_27:
  v11 = *(*v9 + 88);
  if (v11 && (*(*v11 + 336))(v11) && *((*(*v11 + 336))(v11) + 16))
  {
    v8 = (v1 + 12);
LABEL_31:
    v12 = *v8;
    operator new();
  }

LABEL_32:
  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE6BED9C(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  HALS_ObjectMap::ReleaseObject(v18, a2);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  HALS_ObjectMap::ReleaseObject(v17, v20);
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<HALS_DSPAudioStream_IOBufferReference_Context>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F598C378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_DSPHostIntegrationPoint_IOContextUtilities::populate_reference_stream_proxy()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = 0;
  v1 = 0;
  v2 = 0;
  v3 = 0uLL;
  v4 = 0;
  v5 = 0x22A2A2A2ALL;
  v6 = 0;
  LOBYTE(v7) = 0;
  v8 = 0;
  operator new();
}

void sub_1DE6BF424(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, HALS_ObjectMap *a10, HALS_ObjectMap *a11, uint64_t a12, uint64_t a13, HALS_ObjectMap *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  HALS_ObjectMap::ReleaseObject(a14, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void HALS_IOA2Manager::_CopyDeviceList(HALS_IOA2Manager *this, HALS_DeviceManager::BasicDeviceList *a2)
{
  v2 = *(this + 86);
  for (i = *(this + 87); v2 != i; v2 += 2)
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

void HALS_IOA2Manager::_CopyIODeviceList(HALS_IOA2Manager *this, HALS_DeviceManager::BasicIODeviceList *a2)
{
  v2 = *(this + 86);
  for (i = *(this + 87); v2 != i; v2 += 2)
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

uint64_t HALS_IOA2Manager::GetMIGDispatchQueue(HALS_IOA2Manager *this)
{
  return this + 352;
}

{
  return this + 352;
}

uint64_t HALS_IOA2Manager::GetCommandGate(HALS_IOA2Manager *this)
{
  return *(this + 42);
}

{
  return *(this + 42);
}

void HALS_IOA2Manager::_Deactivate(HALS_IOA2Manager *this)
{
  *(this + 2) = 0;
  v2 = *(this + 180);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 180) = 0;
  }

  v3 = *(this + 89);
  if (v3)
  {
    IONotificationPortDestroy(v3);
    *(this + 89) = 0;
  }
}

void HALS_IOA2Manager::~HALS_IOA2Manager(HALS_IOA2Manager *this)
{
  HALS_IOA2Manager::~HALS_IOA2Manager(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F598C3C8;
  v2 = *(this + 86);
  if (v2)
  {
    *(this + 87) = v2;
    operator delete(v2);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 352));
  v3 = *(this + 43);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_1F597A098;
  CACFString::~CACFString((this + 48));

  HALS_Object::~HALS_Object(this);
}

void HALS_IOA2Manager::Activate(io_iterator_t *this, HALS_Object *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  HALS_Object::Activate(this, a2);
  mainPort = 0;
  v3 = MEMORY[0x1E12C0860](*MEMORY[0x1E69E99F8], &mainPort);
  if (v3)
  {
    v12 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "HALS_IOA2Manager.cpp";
      v22 = 1024;
      v23 = 71;
      v24 = 1024;
      v25 = v12;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Manager::Activate: IOMainPort failed, Error: 0x%X", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v12;
  }

  v4 = IONotificationPortCreate(mainPort);
  *(this + 89) = v4;
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "HALS_IOA2Manager.cpp";
      v22 = 1024;
      v23 = 75;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Manager::Activate: IONotificationPortCreate failed", buf, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    *v14 = off_1F5991DD8;
    v14[2] = 2003329396;
  }

  v5 = IOServiceMatching("IOAudio2Device");
  v17 = v5;
  v18 = 257;
  v6 = *(this + 89);
  if (v5)
  {
    CFRetain(v5);
    v7 = v17;
  }

  else
  {
    v7 = 0;
  }

  v8 = IOServiceAddMatchingNotification(v6, "IOServiceFirstPublish", v7, HALS_IOA2Manager::IOServiceMatchingHandler, this[4], this + 180);
  if (v8)
  {
    v15 = v8;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "HALS_IOA2Manager.cpp";
      v22 = 1024;
      v23 = 82;
      v24 = 1024;
      v25 = v15;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Manager::Activate: IOServiceAddMatchingNotification failed, Error: 0x%X", buf, 0x18u);
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    *v16 = off_1F5991DD8;
    v16[2] = v15;
  }

  HALS_IOA2Manager::IOServiceMatchingHandler(this[4], this[180]);
  v9 = *(this + 89);
  v10 = (*(*this + 72))(this);
  IONotificationPortSetDispatchQueue(v9, *v10);
  CACFDictionary::~CACFDictionary(&v17);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1DE6BFB54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

void HALS_IOA2Manager::IOServiceMatchingHandler(HALS_IOA2Manager *this, void *a2)
{
  v2 = a2;
  v34 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v25 = HALS_ObjectMap::CopyObjectByObjectID(this);
  if (!v25)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = 136315394;
      v30 = "HALS_IOA2Manager.cpp";
      v31 = 1024;
      v32 = 244;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Manager::IOServiceMatchingHandler: no device manager object", &v29, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  iterator = v2;
  v24 = 0;
  v16 = &unk_1F59797D0;
  object = IOIteratorNext(v2);
  connect = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v20 = 257;
  v21 = 1;
  v22 = 1;
  for (i = object; i; LOBYTE(v21) = 1)
  {
    if (IOObjectConformsTo(i, "IOAudio2Device"))
    {
      v14 = HALS_IOA2UCDevice::CopyDeviceUID(object);
      v15 = 1;
      v6 = HALS_DeviceManager::CopyDeviceByUID(v25, v14, 0);
      if (v6)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v7 = (*(*v6 + 224))(v6);
          LODWORD(buf.isa) = 136315650;
          *(&buf.isa + 4) = "HALS_IOA2Manager.cpp";
          WORD2(buf.info) = 1024;
          *(&buf.info + 6) = 259;
          WORD1(buf.data) = 2082;
          *(&buf.data + 4) = v7;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOA2Manager::IOServiceMatchingHandler: device already exists for uid: %{public}s", &buf, 0x1Cu);
        }

        *(v6 + 2010) = 0;
        HALS_System::DeviceDied(*(v25 + 40), v6);
        (*(*v6 + 464))(v6);
        (*(*v6 + 8))(v6);
        HALS_IOA2Manager::RemoveDevice(v25, v6);
        HALS_ObjectMap::ObjectIsDead(v6, v8);
      }

      LOBYTE(buf.isa) = 0;
      HALB_UCObject::CopyProperty_BOOL(object, @"is private", &buf, v5);
      if ((buf.isa & 1) == 0)
      {
        operator new();
      }

      CACFString::~CACFString(&v14);
    }

    i = IOIteratorNext(iterator);
    if (connect)
    {
      IOServiceClose(connect);
      connect = 0;
    }

    v16[5](&v16);
    object = i;
    v22 = 1;
  }

  v9 = v26;
  if (v26 != v27)
  {
    v10 = *(v25 + 4);
    strcpy(&buf, "#vedbolg");
    BYTE1(buf.info) = 0;
    WORD1(buf.info) = 0;
    HALS_NotificationManager::PropertiesChanged(v10, 0, 1, &buf, v3);
    HALS_System::CheckForDefaultDeviceChanges(*(v25 + 40), &v26);
  }

  HALB_UCObject::~HALB_UCObject(&v16);
  HALB_UCIterator::~HALB_UCIterator(&iterator);
  HALS_ObjectMap::ReleaseObject(v25, v11);
  if (v9)
  {
    operator delete(v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DE6C07C4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6C07CCLL);
  }

  __clang_call_terminate(a1);
}

void sub_1DE6C07DC(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, HALS_ObjectMap *a26, void *__p)
{
  if (a2)
  {
    HALS_ObjectMap::ReleaseObject(a26, a2);
    if (__p)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE6C06CCLL);
  }

  _Unwind_Resume(v27);
}

void HALS_IOA2Manager::RemoveDevice(HALS_IOA2Manager *this, HALS_IOA2Device *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN16HALS_IOA2Manager12RemoveDeviceEP15HALS_IOA2Device_block_invoke;
  v3[3] = &__block_descriptor_tmp_7_18850;
  v3[4] = this;
  v3[5] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Manager::IOServiceMatchingHandler(void *,unsigned int)::$_3,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    HALS_System::DeviceDied(*(**(a1 + 8) + 320), **(a1 + 16));
  }

  return a1;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Manager::IOServiceMatchingHandler(void *,unsigned int)::$_2,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    HALS_IOA2Manager::RemoveDevice(**(a1 + 8), **(a1 + 16));
  }

  return a1;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Manager::IOServiceMatchingHandler(void *,unsigned int)::$_1,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    (*(***(a1 + 8) + 8))(**(a1 + 8));
  }

  return a1;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Manager::IOServiceMatchingHandler(void *,unsigned int)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    HALS_ObjectMap::ReleaseObject(**(a1 + 8), v2);
  }

  return a1;
}

void ___ZN16HALS_IOA2Manager9AddDeviceEP15HALS_IOA2Device_block_invoke(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = a1[6];
  v27 = (*(*v3 + 216))(v3);
  v28 = 1;
  v4 = HALS_DeviceManager::CopyDeviceByUID(v2, v27, 0);
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "HALS_IOA2Manager.cpp";
      v31 = 1024;
      v32 = 187;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOA2Manager::_AddDevice: there is already a device with this UID", buf, 0x12u);
    }

    HALS_ObjectMap::ReleaseObject(v4, v5);
    v6 = 1852797029;
  }

  else
  {
    *&v26 = v3;
    DWORD2(v26) = 0;
    v7 = IOServiceAddInterestNotification(*(v2 + 712), v3[496], "IOGeneralInterest", HALS_IOA2Manager::IOServiceInterestHandler, *(v2 + 16), &v26 + 2);
    if (v7)
    {
      v24 = v7;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v30 = "HALS_IOA2Manager.cpp";
        v31 = 1024;
        v32 = 177;
        v33 = 1024;
        v34 = v24;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Manager::_AddDevice: Cannot add an interest callback., Error: 0x%X", buf, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v24;
    }

    v8 = *(v2 + 712);
    v9 = (*(*v2 + 72))(v2);
    IONotificationPortSetDispatchQueue(v8, *v9);
    v10 = *(v2 + 696);
    v11 = *(v2 + 704);
    if (v10 >= v11)
    {
      v13 = *(v2 + 688);
      v14 = (v10 - v13) >> 4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 60)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - v13;
      if (v16 >> 3 > v15)
      {
        v15 = v16 >> 3;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF0)
      {
        v17 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        std::allocator<HALS_IOA2Manager::DeviceInfo>::allocate_at_least[abi:ne200100](v17);
      }

      v18 = (16 * v14);
      *v18 = v26;
      v12 = 16 * v14 + 16;
      v19 = *(v2 + 688);
      v20 = *(v2 + 696) - v19;
      v21 = 16 * v14 - v20;
      memcpy(v18 - v20, v19, v20);
      v22 = *(v2 + 688);
      *(v2 + 688) = v21;
      *(v2 + 696) = v12;
      *(v2 + 704) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v10 = v26;
      v12 = (v10 + 1);
    }

    v6 = 0;
    *(v2 + 696) = v12;
  }

  CACFString::~CACFString(&v27);
  *(*(a1[4] + 8) + 24) = v6;
  v23 = *MEMORY[0x1E69E9840];
}

void sub_1DE6C0D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    CACFString::~CACFString(&a11);
    v13 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v14 = v13[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE6C0C7CLL);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<HALS_IOA2Manager::DeviceInfo>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void HALS_IOA2Manager::IOServiceInterestHandler(HALS_IOA2Manager *this, HALS_IOA2UCDevice *a2, int a3, unsigned int a4, void *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((a2 - 1) <= 0xFFFFFFFD && a3 == -536870896)
  {
    v7 = HALS_ObjectMap::CopyObjectByObjectID(this);
    if (!v7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15.mSelector = 136315394;
        *&v15.mScope = "HALS_IOA2Manager.cpp";
        v16 = 1024;
        v17 = 342;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Manager::IOServiceInterestHandler: no device manager object", &v15, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    *&v15.mSelector = HALS_IOA2UCDevice::CopyDeviceUID(a2);
    LOBYTE(v15.mElement) = 1;
    v8 = HALS_DeviceManager::CopyDeviceByUID(v7, *&v15.mSelector, 0);
    CACFString::~CACFString(&v15);
    if (v8)
    {
      *(v8 + 2010) = 0;
      HALS_System::DeviceDied(*(v7 + 320), v8);
      (*(*v8 + 464))(v8);
      (*(*v8 + 8))(v8);
      HALS_IOA2Manager::RemoveDevice(v7, v8);
      v10 = *(v7 + 16);
      *&v15.mSelector = 0x676C6F6264657623;
      v15.mElement = 0;
      HALS_NotificationManager::PropertiesChanged(v10, 0, 1, &v15, v11);
      HALS_System::CheckForDefaultDeviceChanges(*(v7 + 320));
    }

    HALS_ObjectMap::ReleaseObject(v8, v9);
    HALS_ObjectMap::ReleaseObject(v7, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1DE6C1054(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE6C1070(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    CACFString::~CACFString(&a9);
    HALS_ObjectMap::ReleaseObject(v9, v11);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE6C0F70);
  }

  JUMPOUT(0x1DE6C1060);
}

void ___ZN16HALS_IOA2Manager12RemoveDeviceEP15HALS_IOA2Device_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[86];
  v3 = v1[87];
  if (v2 != v3)
  {
    v4 = *(a1 + 40);
    while (*v2 != v4)
    {
      v2 += 16;
      if (v2 == v3)
      {
        return;
      }
    }

    IOObjectRelease(*(v2 + 8));
    *(v2 + 8) = 0;
    *v2 = 0;
    v5 = v1[87];
    v6 = v5 - (v2 + 16);
    if (v5 != v2 + 16)
    {
      memmove(v2, (v2 + 16), v6 - 4);
    }

    v7 = v1[86];
    v8 = (v2 + v6);
    v1[87] = v2 + v6;
    v9 = v1[88];
    if (((v2 + v6 - v7) >> 4) + 20 < ((v9 - v7) >> 4))
    {
      v10 = v9 - v7;
      if (v10 > (v8 - v7))
      {
        v11 = (v8 - v7) >> 4;
        if (v8 != v7)
        {
          std::allocator<HALS_IOA2Manager::DeviceInfo>::allocate_at_least[abi:ne200100]((v8 - v7) >> 4);
        }

        v12 = 0;
        if (v10 >> 4)
        {
          v13 = 16 * v11;
          v14 = v1[87] - v7;
          v15 = 16 * v11 - v14;
          memcpy((v13 - v14), v7, v14);
          v12 = v1[86];
          v1[86] = v15;
          v1[87] = v13;
          v1[88] = 0;
        }

        if (v12)
        {
          operator delete(v12);
        }
      }
    }

    HALS_ObjectMap::ReleaseObject(v4, v7);
  }
}

void sub_1DE6C122C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6C1204);
}

void AMCP::get_enum_string_bimap<AMCP::Wire_Connection_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE520 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_ConnectionRequired");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE4F8 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_ConnectionTransient");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE4F8 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C1654(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

unint64_t *boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::link(unint64_t *result, int a2, unint64_t *a3, unint64_t *a4)
{
  v5 = result;
  if (a2)
  {
    a3[2] = result;
    v6 = a4 + 2;
    v7 = a4[2];
    goto LABEL_5;
  }

  a3[1] = result;
  if (a3 != a4)
  {
    v6 = a4 + 1;
    v7 = a4[1];
LABEL_5:
    if (v7 != a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *a4 = *a4 & 1 | result;
  v6 = a4 + 2;
LABEL_8:
  *v6 = result;
LABEL_9:
  result[1] = 0;
  result[2] = 0;
  v8 = (a3 & 0xFFFFFFFFFFFFFFFELL);
  *result = a3 & 0xFFFFFFFFFFFFFFFELL;
  v9 = (*a4 & 0xFFFFFFFFFFFFFFFELL);
  if (v9 != result)
  {
    while (1)
    {
      v10 = *v8;
      if (*v8)
      {
        break;
      }

      v11 = *(v10 + 8);
      if (v11 == v8)
      {
        v11 = *(v10 + 16);
        if (v11 && (*v11 & 1) == 0)
        {
LABEL_18:
          *v8 = v10 | 1;
          *v11 |= 1uLL;
          *(*(*v5 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
          v5 = (*(*v5 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL);
          goto LABEL_25;
        }

        if (v5 == v8[2])
        {
          v16 = a4;
          boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_left(v8, &v16);
          v13 = (*v8 & 0xFFFFFFFFFFFFFFFELL);
          v10 = *v13;
          v5 = v8;
        }

        else
        {
          v13 = v8;
          v8 = v5;
        }

        *v13 = v10 | 1;
        *(*(*v8 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
        v15 = *(*v8 & 0xFFFFFFFFFFFFFFFELL);
        v16 = a4;
        result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_right((v15 & 0xFFFFFFFFFFFFFFFELL), &v16);
      }

      else
      {
        if (v11 && (*v11 & 1) == 0)
        {
          goto LABEL_18;
        }

        if (v5 == v8[1])
        {
          v16 = a4;
          boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_right(v8, &v16);
          v12 = (*v8 & 0xFFFFFFFFFFFFFFFELL);
          v10 = *v12;
          v5 = v8;
        }

        else
        {
          v12 = v8;
          v8 = v5;
        }

        *v12 = v10 | 1;
        *(*(*v8 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
        v14 = *(*v8 & 0xFFFFFFFFFFFFFFFELL);
        v16 = a4;
        result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_left((v14 & 0xFFFFFFFFFFFFFFFELL), &v16);
      }

LABEL_25:
      v9 = (*a4 & 0xFFFFFFFFFFFFFFFELL);
      if (v5 == v9)
      {
        break;
      }

      v8 = (*v5 & 0xFFFFFFFFFFFFFFFELL);
    }
  }

  *v9 |= 1uLL;
  return result;
}

unint64_t *boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_left(unint64_t *result, unint64_t **a2)
{
  v2 = result[2];
  v3 = *(v2 + 8);
  result[2] = v3;
  if (v3)
  {
    *v3 = *v3 & 1 | result;
  }

  *v2 = *result & 0xFFFFFFFFFFFFFFFELL | *v2 & 1;
  if ((**a2 & 0xFFFFFFFFFFFFFFFELL) == result)
  {
    **a2 = **a2 & 1 | v2;
    v4 = *result;
  }

  else
  {
    v4 = *result;
    v5 = *result & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 8) == result)
    {
      *(v5 + 8) = v2;
    }

    else
    {
      *(v5 + 16) = v2;
    }
  }

  *(v2 + 8) = result;
  *result = v4 & 1 | v2;
  return result;
}

unint64_t *boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_right(unint64_t *result, unint64_t **a2)
{
  v2 = result[1];
  v3 = *(v2 + 16);
  result[1] = v3;
  if (v3)
  {
    *v3 = *v3 & 1 | result;
  }

  *v2 = *result & 0xFFFFFFFFFFFFFFFELL | *v2 & 1;
  if ((**a2 & 0xFFFFFFFFFFFFFFFELL) == result)
  {
    **a2 = **a2 & 1 | v2;
    v4 = *result;
  }

  else
  {
    v4 = *result;
    v5 = *result & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 16) == result)
    {
      *(v5 + 16) = v2;
    }

    else
    {
      *(v5 + 8) = v2;
    }
  }

  *(v2 + 16) = result;
  *result = v4 & 1 | v2;
  return result;
}

unint64_t **boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(unint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if ((v2 & 1) == 0 && v1 == (*v2 & 0xFFFFFFFFFFFFFFFELL))
  {
    v4 = v1[2];
  }

  else
  {
    v3 = v1[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = v3[2];
      }

      while (v3);
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFFFELL;
      if (v1 == *(v4 + 8))
      {
        v5 = v4;
        do
        {
          *result = v5;
          v4 = *v5 & 0xFFFFFFFFFFFFFFFELL;
          v6 = v5 == *(v4 + 8);
          v5 = v4;
        }

        while (v6);
      }
    }
  }

  *result = v4;
  return result;
}

void AMCP::get_enum_string_bimap<AMCP::Wire_Resampler_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Wire_Resampler_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE568 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_NeverResample");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Resampler_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Resampler_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Resampler_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE540 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_ResampleIfRequired");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Resampler_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Resampler_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Resampler_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE540 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Resampler_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Resampler_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Resampler_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C1E4C(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Wire_Format_Conversion_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Wire_Format_Conversion_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE5B0 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_NeverConvertFormat");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Format_Conversion_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Format_Conversion_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Format_Conversion_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE588 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_ConvertFormatIfRequired");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Format_Conversion_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Format_Conversion_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Format_Conversion_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE588 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Format_Conversion_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Format_Conversion_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Format_Conversion_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C228C(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Wire_Drift_Correction_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Wire_Drift_Correction_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE5F8 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_NeverDriftCorrect");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Drift_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Drift_Correction_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Drift_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE5D0 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_ShouldDriftCorrect");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Drift_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Drift_Correction_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Drift_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE5D0 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Drift_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Drift_Correction_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Drift_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C26CC(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Wire_Latency_Correction_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Wire_Latency_Correction_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE640 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_NeverLatencyCorrect");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Latency_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Latency_Correction_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Latency_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE618 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_ShouldLatencyCorrect");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Latency_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Latency_Correction_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Latency_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE618 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Latency_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Latency_Correction_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Latency_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C2B0C(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Node_Clock_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Node_Clock_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE688 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "IsCalculatedFromTerminals");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Clock_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Clock_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Clock_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE660 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "IsSetFromClockUID");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Clock_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Clock_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Clock_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE660 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "IsAClockSource");
    v1 = 2;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Clock_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Clock_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Clock_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE660 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Clock_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Clock_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Clock_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C2FC8(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Node_Thread_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Node_Thread_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE6D0 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Node_Is_Used_By_One_Thread");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Thread_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Thread_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Thread_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE6A8 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Node_Is_Shared_Across_Threads");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Thread_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Thread_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Thread_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE6A8 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Thread_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Thread_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Thread_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C3408(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Node_Buffer_Size_Change_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Node_Buffer_Size_Change_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE718 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Favor_Input_Buffer_Alignment");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Buffer_Size_Change_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Buffer_Size_Change_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Buffer_Size_Change_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE6F0 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Favor_Output_Buffer_Alignment");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Buffer_Size_Change_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Buffer_Size_Change_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Buffer_Size_Change_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE6F0 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Buffer_Size_Change_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Buffer_Size_Change_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Buffer_Size_Change_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C3848(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Direction>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Direction,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE760 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Out");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Direction,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE738 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "In");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Direction,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE738 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Direction,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C3C88(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Node_Type>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Node_Type,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE7A8 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "IOContextNode");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE780 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "DSPNode");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE780 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "ReflectorNode");
    v1 = 2;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE780 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "DeviceNode");
    v1 = 3;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE780 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C41C0(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Terminal_Source_Mix_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Terminal_Source_Mix_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE7F0 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_SingleSource");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Terminal_Source_Mix_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Terminal_Source_Mix_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Terminal_Source_Mix_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE7C8 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_MultiSource");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Terminal_Source_Mix_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Terminal_Source_Mix_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Terminal_Source_Mix_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE7C8 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Terminal_Source_Mix_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Terminal_Source_Mix_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Terminal_Source_Mix_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C4600(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Resampler_Type>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Resampler_Type,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE838 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "RamstadSRC");
    v1 = 2;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE810 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Resampler2");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE810 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "STLI");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE810 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C4ABC(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Resampler_Quality>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Resampler_Quality,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE880 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Min");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Quality,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE858 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Low");
    v1 = 32;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Quality,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE858 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Medium");
    v1 = 64;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Quality,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE858 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "High");
    v1 = 96;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Quality,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE858 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Max");
    v1 = 127;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Quality,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE858 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Quality,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C5070(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

uint64_t minijson::writer::write_helper<std::string,minijson::default_value_writer<std::string,void>>(uint64_t result, char *a2, _BYTE *a3)
{
  if (*(result + 4) != 2)
  {
    v6 = result;
    minijson::writer::next_field(v6);
    if (a2)
    {
      minijson::writer::write_field_name(v6, a2);
    }

    v7 = *(v6 + 1);
    if (a3[23] >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }
  }

  return result;
}

void sub_1DE6C57FC(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6C5824);
}

uint64_t boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::increment(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2)
  {
    do
    {
      *result = v2;
      v2 = *(v2 + 8);
    }

    while (v2);
  }

  else
  {
    v3 = (*v1 & 0xFFFFFFFFFFFFFFFELL);
    if (v1 == v3[2])
    {
      do
      {
        v5 = v3;
        *result = v3;
        v3 = (*v3 & 0xFFFFFFFFFFFFFFFELL);
      }

      while (v5 == v3[2]);
      v4 = v5[2];
    }

    else
    {
      v4 = 0;
    }

    if (v4 != v3)
    {
      *result = v3;
    }
  }

  return result;
}

uint64_t boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0 && *(a1 + 40))
  {
    v2 = 0;
    v3 = 8;
    do
    {
      v4 = *(*(a1 + 32) + v3);
      if (*(v4 + 31) < 0)
      {
        operator delete(*(v4 + 8));
        v4 = *(*(a1 + 32) + v3);
      }

      operator delete(v4);
      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 40));
  }

  if (*(a1 + 24))
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,false>(unint64_t *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  n128_u64 = a1;
  while (1)
  {
    a1 = n128_u64;
    v13 = (a2 - n128_u64) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if (v9->n128_u64[0] >= *n128_u64)
        {
          return result;
        }

LABEL_106:
        v127 = *n128_u64;
        *n128_u64 = *v9;
        result = v127;
LABEL_107:
        *v9 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v59 = (n128_u64 + 16);
      v62 = *(n128_u64 + 16);
      v63 = (n128_u64 + 32);
      v64 = *(n128_u64 + 32);
      if (v62 >= *n128_u64)
      {
        if (v64 < v62)
        {
          result = *v59;
          *v59 = *v63;
          *v63 = result;
          if (*(n128_u64 + 16) < *n128_u64)
          {
            v130 = *n128_u64;
            *n128_u64 = *v59;
            result = v130;
            *v59 = v130;
          }
        }
      }

      else
      {
        if (v64 < v62)
        {
          v128 = *n128_u64;
          *n128_u64 = *v63;
          result = v128;
          goto LABEL_185;
        }

        v132 = *n128_u64;
        *n128_u64 = *v59;
        result = v132;
        *v59 = v132;
        if (v64 < *(n128_u64 + 16))
        {
          result = *v59;
          *v59 = *v63;
LABEL_185:
          *v63 = result;
        }
      }

      if (v9->n128_u64[0] >= v63->n128_u64[0])
      {
        return result;
      }

      result = *v63;
      *v63 = *v9;
      *v9 = result;
      if (v63->n128_u64[0] >= v59->n128_u64[0])
      {
        return result;
      }

      result = *v59;
      *v59 = *v63;
      *v63 = result;
LABEL_189:
      if (*(n128_u64 + 16) < *n128_u64)
      {
        v133 = *n128_u64;
        *n128_u64 = *v59;
        result = v133;
        *v59 = v133;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,0>(n128_u64, (n128_u64 + 16), (n128_u64 + 32), (n128_u64 + 48), a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v65 = (n128_u64 + 16);
      v67 = n128_u64 == a2 || v65 == a2;
      if (a4)
      {
        if (!v67)
        {
          v68 = 0;
          v69 = n128_u64;
          do
          {
            v70 = v65;
            v71 = v69[2];
            if (v71 < *v69)
            {
              v72 = v69[3];
              v73 = v68;
              while (1)
              {
                result = *(n128_u64 + v73);
                *(n128_u64 + v73 + 16) = result;
                if (!v73)
                {
                  break;
                }

                v74 = *(n128_u64 + v73 - 16);
                v73 -= 16;
                if (v71 >= v74)
                {
                  v75 = (n128_u64 + v73 + 16);
                  goto LABEL_126;
                }
              }

              v75 = n128_u64;
LABEL_126:
              *v75 = v71;
              v75[1] = v72;
            }

            v65 = v70 + 1;
            v68 += 16;
            v69 = v70;
          }

          while (&v70[1] != a2);
        }
      }

      else if (!v67)
      {
        do
        {
          v104 = v65;
          v105 = a1[2];
          if (v105 < *a1)
          {
            v106 = a1[3];
            v107 = v104;
            do
            {
              result = v107[-1];
              *v107 = result;
              v108 = v107[-2].n128_u64[0];
              --v107;
            }

            while (v105 < v108);
            v107->n128_u64[0] = v105;
            v107->n128_u64[1] = v106;
          }

          v65 = v104 + 1;
          a1 = v104;
        }

        while (&v104[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (n128_u64 != a2)
      {
        v76 = (v13 - 2) >> 1;
        v77 = v76;
        do
        {
          v78 = v77;
          if (v76 >= v77)
          {
            v79 = (2 * v77) | 1;
            v80 = (n128_u64 + 16 * v79);
            if (2 * v78 + 2 >= v13)
            {
              v81 = *v80;
            }

            else
            {
              v81 = v80[2];
              v82 = *v80 >= v81;
              if (*v80 < v81)
              {
                v80 += 2;
              }

              else
              {
                v81 = *v80;
              }

              if (!v82)
              {
                v79 = 2 * v78 + 2;
              }
            }

            v83 = (n128_u64 + 16 * v78);
            v84 = *v83;
            if (v81 >= *v83)
            {
              v85 = v83[1];
              do
              {
                v86 = v83;
                v83 = v80;
                *v86 = *v80;
                if (v76 < v79)
                {
                  break;
                }

                v87 = (2 * v79) | 1;
                v80 = (n128_u64 + 16 * v87);
                v79 = 2 * v79 + 2;
                if (v79 >= v13)
                {
                  v88 = *v80;
                  v79 = v87;
                }

                else
                {
                  v88 = *v80;
                  if (*v80 >= v80[2])
                  {
                    v79 = v87;
                  }

                  else
                  {
                    v88 = v80[2];
                    v80 += 2;
                  }
                }
              }

              while (v88 >= v84);
              *v83 = v84;
              v83[1] = v85;
            }
          }

          v77 = v78 - 1;
        }

        while (v78);
        do
        {
          v89 = 0;
          v129 = *n128_u64;
          v90 = n128_u64;
          do
          {
            v91 = &v90[v89];
            v92 = v91 + 1;
            v93 = (2 * v89) | 1;
            v89 = 2 * v89 + 2;
            if (v89 >= v13)
            {
              v89 = v93;
            }

            else
            {
              v95 = v91[2].n128_u64[0];
              v94 = v91 + 2;
              if (v94[-1].n128_u64[0] >= v95)
              {
                v89 = v93;
              }

              else
              {
                v92 = v94;
              }
            }

            *v90 = *v92;
            v90 = v92;
          }

          while (v89 <= ((v13 - 2) >> 1));
          if (v92 == --a2)
          {
            result = v129;
            *v92 = v129;
          }

          else
          {
            *v92 = *a2;
            result = v129;
            *a2 = v129;
            v96 = (&v92[1] - n128_u64) >> 4;
            v97 = v96 < 2;
            v98 = v96 - 2;
            if (!v97)
            {
              v99 = v98 >> 1;
              v100 = (n128_u64 + 16 * v99);
              v101 = v92->n128_u64[0];
              if (v100->n128_u64[0] < v92->n128_u64[0])
              {
                v102 = v92->n128_u64[1];
                do
                {
                  v103 = v92;
                  v92 = v100;
                  result = *v100;
                  *v103 = *v100;
                  if (!v99)
                  {
                    break;
                  }

                  v99 = (v99 - 1) >> 1;
                  v100 = (n128_u64 + 16 * v99);
                }

                while (v100->n128_u64[0] < v101);
                v92->n128_u64[0] = v101;
                v92->n128_u64[1] = v102;
              }
            }
          }

          v97 = v13-- <= 2;
        }

        while (!v97);
      }

      return result;
    }

    v14 = (n128_u64 + 16 * (v13 >> 1));
    v15 = v14;
    v16 = v9->n128_u64[0];
    if (v13 >= 0x81)
    {
      v17 = v14->n128_u64[0];
      if (v14->n128_u64[0] >= *n128_u64)
      {
        if (v16 < v17)
        {
          v111 = *v14;
          *v14 = *v9;
          *v9 = v111;
          if (v14->n128_u64[0] < *n128_u64)
          {
            v112 = *n128_u64;
            *n128_u64 = *v14;
            *v14 = v112;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v109 = *n128_u64;
          *n128_u64 = *v9;
          goto LABEL_26;
        }

        v115 = *n128_u64;
        *n128_u64 = *v14;
        *v14 = v115;
        if (v9->n128_u64[0] < v14->n128_u64[0])
        {
          v109 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v109;
        }
      }

      v19 = (n128_u64 + 16);
      v20 = v14 - 1;
      v21 = v14[-1].n128_u64[0];
      v22 = v10->n128_u64[0];
      if (v21 >= *(n128_u64 + 16))
      {
        if (v22 < v21)
        {
          v116 = *v20;
          *v20 = *v10;
          *v10 = v116;
          if (v20->n128_u64[0] < v19->n128_u64[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (v10->n128_u64[0] < v20->n128_u64[0])
        {
          v118 = *v20;
          *v20 = *v10;
          v23 = v118;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = (n128_u64 + 32);
      v29 = v14[1].n128_u64[0];
      v27 = v14 + 1;
      v28 = v29;
      v30 = v11->n128_u64[0];
      if (v29 >= *(n128_u64 + 32))
      {
        if (v30 < v28)
        {
          v119 = *v27;
          *v27 = *v11;
          *v11 = v119;
          if (v27->n128_u64[0] < v26->n128_u64[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v28)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (v11->n128_u64[0] < v27->n128_u64[0])
        {
          v120 = *v27;
          *v27 = *v11;
          v31 = v120;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = v15->n128_u64[0];
      v35 = v27->n128_u64[0];
      if (v15->n128_u64[0] >= v20->n128_u64[0])
      {
        if (v35 < v34)
        {
          v122 = *v15;
          *v15 = *v27;
          *v27 = v122;
          if (v15->n128_u64[0] < v20->n128_u64[0])
          {
            v123 = *v20;
            *v20 = *v15;
            *v15 = v123;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v121 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v124 = *v20;
        *v20 = *v15;
        *v15 = v124;
        if (v27->n128_u64[0] < v15->n128_u64[0])
        {
          v121 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v121;
        }
      }

      v125 = *n128_u64;
      *n128_u64 = *v15;
      *v15 = v125;
      goto LABEL_58;
    }

    v18 = *n128_u64;
    if (*n128_u64 >= v14->n128_u64[0])
    {
      if (v16 < v18)
      {
        v113 = *n128_u64;
        *n128_u64 = *v9;
        *v9 = v113;
        if (*n128_u64 < v14->n128_u64[0])
        {
          v114 = *v14;
          *v14 = *n128_u64;
          *n128_u64 = v114;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v117 = *v14;
      *v14 = *n128_u64;
      *n128_u64 = v117;
      if (v9->n128_u64[0] >= *n128_u64)
      {
        goto LABEL_58;
      }

      v110 = *n128_u64;
      *n128_u64 = *v9;
    }

    else
    {
      v110 = *v14;
      *v14 = *v9;
    }

    *v9 = v110;
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || *(n128_u64 - 16) < *n128_u64)
    {
      v36 = *n128_u64;
      v37 = *n128_u64;
      v38 = n128_u64;
      do
      {
        v39 = v38;
        v40 = v38[1].n128_u64[0];
        ++v38;
      }

      while (v40 < v37);
      v41 = a2;
      if (v39 == n128_u64)
      {
        v41 = a2;
        do
        {
          if (v38 >= v41)
          {
            break;
          }

          v43 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v43 >= v37);
      }

      else
      {
        do
        {
          v42 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v42 >= v37);
      }

      if (v38 < v41)
      {
        v44 = v38;
        v45 = v41;
        do
        {
          v46 = *v44;
          *v44 = *v45;
          *v45 = v46;
          do
          {
            v39 = v44;
            v47 = v44[1].n128_u64[0];
            ++v44;
          }

          while (v47 < v37);
          do
          {
            v48 = v45[-1].n128_u64[0];
            --v45;
          }

          while (v48 >= v37);
        }

        while (v44 < v45);
      }

      if (v39 != n128_u64)
      {
        *n128_u64 = *v39;
      }

      *v39 = v36;
      if (v38 < v41)
      {
        goto LABEL_79;
      }

      v49 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *>(n128_u64, v39, v36);
      n128_u64 = v39[1].n128_u64;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *>(&v39[1], a2, v50))
      {
        a2 = v39;
        if (!v49)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v49)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,false>(a1, v39, a3, a4 & 1);
        a4 = 0;
        n128_u64 = v39[1].n128_u64;
      }
    }

    else
    {
      result = *n128_u64;
      v51 = *n128_u64;
      if (*n128_u64 >= v9->n128_u64[0])
      {
        v53 = n128_u64 + 16;
        do
        {
          n128_u64 = v53;
          if (v53 >= a2)
          {
            break;
          }

          v53 += 16;
        }

        while (v51 >= *n128_u64);
      }

      else
      {
        do
        {
          v52 = *(n128_u64 + 16);
          n128_u64 += 16;
        }

        while (v51 >= v52);
      }

      v54 = a2;
      if (n128_u64 < a2)
      {
        v54 = a2;
        do
        {
          v55 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v51 < v55);
      }

      while (n128_u64 < v54)
      {
        v126 = *n128_u64;
        *n128_u64 = *v54;
        *v54 = v126;
        do
        {
          v56 = *(n128_u64 + 16);
          n128_u64 += 16;
        }

        while (v51 >= v56);
        do
        {
          v57 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v51 < v57);
      }

      v58 = (n128_u64 - 16);
      if ((n128_u64 - 16) != a1)
      {
        *a1 = *v58;
      }

      a4 = 0;
      *v58 = result;
    }
  }

  v59 = (n128_u64 + 16);
  v60 = *(n128_u64 + 16);
  v61 = v9->n128_u64[0];
  if (v60 >= *n128_u64)
  {
    if (v61 >= v60)
    {
      return result;
    }

    result = *v59;
    *v59 = *v9;
    *v9 = result;
    goto LABEL_189;
  }

  if (v61 < v60)
  {
    goto LABEL_106;
  }

  v131 = *n128_u64;
  *n128_u64 = *v59;
  result = v131;
  *v59 = v131;
  if (v9->n128_u64[0] < *(n128_u64 + 16))
  {
    result = *v59;
    *v59 = *v9;
    goto LABEL_107;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,0>(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (v4->n128_u64[0] >= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) < *a1)
      {
        v41 = *a1;
        *a1 = *v6;
        *v6 = v41;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_u64[0] < v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 >= v17)
    {
      v38 = *a1;
      *a1 = *v6;
      *v6 = v38;
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v20->n128_u64[0] >= v18->n128_u64[0])
    {
      return 1;
    }

    v39 = *v18;
    *v18 = *v20;
    *v20 = v39;
    if (v18->n128_u64[0] >= v6->n128_u64[0])
    {
      return 1;
    }

    v40 = *v6;
    *v6 = *v18;
    *v18 = v40;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 >= *a1)
  {
    if (v12 < v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_u64[0] < v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 >= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 >= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = v30->n128_u64[0];
    if (v30->n128_u64[0] < v11->n128_u64[0])
    {
      v34 = v30->n128_i64[1];
      v35 = v31;
      while (1)
      {
        *(a1 + v35 + 48) = *(a1 + v35 + 32);
        if (v35 == -32)
        {
          break;
        }

        v36 = *(a1 + v35 + 16);
        v35 -= 16;
        if (v33 >= v36)
        {
          v37 = (a1 + v35 + 48);
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      *v37 = v33;
      v37[1] = v34;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

void minijson::detail::anonymous namespace::adjust_stream_settings(uint64_t *a1)
{
  v2 = (a1 + *(*a1 - 24));
  v3 = std::locale::classic();
  std::ios_base::getloc(v2);
  std::ios_base::imbue(v2, v3);
  std::locale::~locale(&v8);
  rdbuf = v2->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, v3);
    std::locale::locale(&v7, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, v3);
    std::locale::~locale(&v7);
  }

  std::locale::~locale(&v6);
  v5 = *a1;
  *(a1 + *(*a1 - 24) + 8) &= 0xFFFFF3FF;
  *(a1 + *(v5 - 24) + 8) = *(a1 + *(v5 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(a1 + *(v5 - 24) + 24) = 0;
}

uint64_t minijson::writer::next_field(minijson::writer *this)
{
  v2 = *(this + 1);
  if (v2 == 1)
  {
    v3 = *(this + 1);
    v5 = 44;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, &v5, 1);
  }

  else if (!v2)
  {
    minijson::writer::write_opening_bracket(*this, *(this + 1));
  }

  result = minijson::writer::write_pretty_print_token(this, 0);
  *(this + 1) = 1;
  return result;
}

uint64_t minijson::writer::write_field_name(std::locale::__imp **this, char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = this[1];
  LOBYTE(v6) = 58;
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, &v6, 1);
  if (*(this + 24) == 1)
  {
    v6 = this[1];
    v8 = 1;
    v7 = 32;
    result = std::ostream::write();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t minijson::detail::anonymous namespace::write_quoted_string(std::locale::__imp *a1, _BYTE *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *(a1 + *(*a1 - 24) + 8) = *(a1 + *(*a1 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(a1 + *(v4 - 24) + 8) = *(a1 + *(v4 - 24) + 8) & 0xFFFFFF4F | 0x80;
  v5 = a1 + *(v4 - 24);
  if (*(v5 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(v4 - 24)));
    v6 = std::locale::use_facet(&v13, MEMORY[0x1E69E5318]);
    v7 = (v6->__vftable[2].~facet_0)(v6, 32);
    std::locale::~locale(&v13);
    *(v5 + 36) = v7;
  }

  *(v5 + 36) = 48;
  v13.__locale_ = a1;
  v15 = 1;
  v14[0] = 34;
  while (1)
  {
    v8 = *a2;
    if (v8 > 0xC)
    {
      switch(v8)
      {
        case 0xDu:
          minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v13, "\\r");
          goto LABEL_22;
        case 0x5Cu:
          minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v13, "\\\");
          goto LABEL_22;
        case 0x22u:
          minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v13, "\\"");
          goto LABEL_22;
      }

      goto LABEL_16;
    }

    if (v8 == 9)
    {
      minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v13, "\\t");
      goto LABEL_22;
    }

    if (v8 == 10)
    {
      minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v13, "\\n");
      goto LABEL_22;
    }

    if (!*a2)
    {
      break;
    }

LABEL_16:
    if (v8 == 127 || v8 - 1 <= 0x1E)
    {
      minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v13, "\\u");
      std::ostream::write();
      v15 = 0;
      *(a1 + *(*a1 - 24) + 24) = 4;
      MEMORY[0x1E12C1210](a1, *a2);
    }

    else
    {
      v9 = v15;
      if (v15 == 128)
      {
        std::ostream::write();
        v9 = 0;
      }

      v15 = v9 + 1;
      v14[v9] = v8;
    }

LABEL_22:
    ++a2;
  }

  v10 = v15;
  if (v15 == 128)
  {
    std::ostream::write();
    v10 = 0;
  }

  v15 = v10 + 1;
  v14[v10] = 34;
  result = std::ostream::write();
  v15 = 0;
  *(a1 + *(*a1 - 24) + 8) = *(a1 + *(*a1 - 24) + 8) & 0xFFFFFFB5 | 2;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *minijson::detail::buffered_writer<128ul>::operator<<<3ul>(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  v5 = a1 + 1;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = *(a2 + v4);
    v9 = a1[17];
    if (v9 == 128)
    {
      v10 = *a1;
      std::ostream::write();
      v9 = 0;
    }

    v6 = 0;
    a1[17] = v9 + 1;
    *(v5 + v9) = v8;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  return a1;
}

void *minijson::writer::write_opening_bracket(minijson::writer *this, void *a2)
{
  if (this)
  {
    v5 = 91;
    v3 = &v5;
  }

  else
  {
    v6 = 123;
    v3 = &v6;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v3, 1);
}

uint64_t minijson::writer::write_pretty_print_token(uint64_t result, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(result + 24) == 1)
  {
    v2 = result;
    v9 = *(result + 8);
    v11 = 0;
    if (a2)
    {
      if (a2 == 2)
      {
        if (*(result + 4))
        {
          goto LABEL_5;
        }
      }

      else
      {
        v11 = 1;
        v10[0] = 32;
      }

LABEL_20:
      result = std::ostream::write();
      goto LABEL_21;
    }

LABEL_5:
    v3 = *(result + 40);
    v4 = *(result + 16);
    if (!a2)
    {
      ++v4;
    }

    if ((*(result + 40) & 1) == 0)
    {
      v4 *= *(result + 32);
    }

    v11 = 1;
    v10[0] = 10;
    if (v4)
    {
      v5 = v4 - 1;
      v6 = 1;
      while (1)
      {
        v7 = (v3 & 1) != 0 ? 9 : 32;
        if (v6 == 16)
        {
          std::ostream::write();
          v6 = 0;
        }

        v11 = v6 + 1;
        v10[v6] = v7;
        if (!v5)
        {
          break;
        }

        v6 = v11;
        v3 = *(v2 + 40);
        --v5;
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(uint64_t result, char *a2, unsigned int *a3)
{
  if (*(result + 4) != 2)
  {
    v6 = result;
    minijson::writer::next_field(v6);
    if (a2)
    {
      minijson::writer::write_field_name(v6, a2);
    }

    v7 = *(v6 + 1);
    v8 = *a3;

    JUMPOUT(0x1E12C1210);
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,false>(__int128 *a1, __int128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v237 = (a1 + 40);
  v241 = a1 + 88;
  v228 = a1 - 4;
  v229 = a1 - 104;
  v226 = a1 - 12;
  v227 = a1 - 1;
  v224 = a1 + 92;
  v225 = a1 - 8;
  v245 = a1;
  v223 = a1 + 6;
  while (1)
  {
    v6 = a2;
    v7 = a2 - v245;
    v8 = 0x4EC4EC4EC4EC4EC5 * ((a2 - v245) >> 3);
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(v245, (v245 + 104), (a2 - 104));
          return;
        case 4:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(v245, (v245 + 104), v245 + 13, (a2 - 104));
          return;
        case 5:
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(v245, (v245 + 104), v245 + 13, (v245 + 312), (a2 - 104));
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
        *&v256 = a2 - 104;
        *(&v256 + 1) = a2 - 4;
        *&v257 = a2 - 1;
        *(&v257 + 1) = a2 - 12;
        v258 = a2 - 8;
        *&v246 = v245;
        *(&v246 + 1) = v245 + 40;
        *&v247 = v245 + 88;
        *(&v247 + 1) = v245 + 92;
        v248 = v245 + 6;
        v99 = std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v256, &v246);
        if (v99 < 0)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(v245, (a2 - 104));
        }

        return;
      }
    }

    if (v7 <= 2495)
    {
      break;
    }

    if (!a3)
    {
      if (v245 != v6)
      {
        v122 = (v8 - 2) >> 1;
        v243 = v122;
        do
        {
          v123 = v122;
          if (v243 >= v122)
          {
            v124 = (2 * v122) | 1;
            v125 = v245 + 104 * v124;
            if (2 * v122 + 2 < v8)
            {
              *&v256 = v245 + 104 * v124;
              *(&v256 + 1) = v125 + 40;
              *&v257 = v125 + 88;
              *(&v257 + 1) = v125 + 92;
              v258 = v125 + 96;
              *&v246 = v125 + 104;
              *(&v246 + 1) = v125 + 144;
              *&v247 = v125 + 192;
              *(&v247 + 1) = v125 + 196;
              v248 = (v125 + 200);
              if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v256, &v246) & 0x80u) != 0)
              {
                v125 += 104;
                v124 = 2 * v123 + 2;
              }
            }

            *&v256 = v125;
            *(&v256 + 1) = v125 + 40;
            v126 = v245 + 104 * v123;
            *&v257 = v125 + 88;
            *(&v257 + 1) = v125 + 92;
            v258 = v125 + 96;
            *&v246 = v126;
            *(&v246 + 1) = v126 + 40;
            *&v247 = v126 + 88;
            *(&v247 + 1) = v126 + 92;
            v248 = (v126 + 96);
            if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v256, &v246) & 0x80) == 0)
            {
              v231 = v123;
              v127 = *v126;
              v128 = *(v126 + 1);
              v258 = *(v126 + 4);
              v256 = v127;
              v257 = v128;
              v259 = *(v126 + 40);
              v260 = *(v126 + 7);
              *(v126 + 5) = 0;
              *(v126 + 6) = 0;
              *(v126 + 7) = 0;
              v261 = *(v126 + 4);
              v262 = *(v126 + 10);
              *(v126 + 8) = 0;
              *(v126 + 9) = 0;
              *(v126 + 10) = 0;
              v129 = *(v126 + 11);
              v264 = v126[96];
              v263 = v129;
              do
              {
                v130 = 0;
                v131 = v125;
                v132 = *v125;
                v133 = *(v125 + 1);
                *(v126 + 4) = *(v125 + 4);
                *v126 = v132;
                *(v126 + 1) = v133;
                do
                {
                  v134 = &v126[v130];
                  v135 = &v125[v130];
                  std::vector<std::string>::__vdeallocate(&v126[v130 + 40]);
                  *(v134 + 40) = *&v125[v130 + 40];
                  *(v134 + 7) = *&v125[v130 + 56];
                  *(v135 + 5) = 0;
                  *(v135 + 6) = 0;
                  *(v135 + 7) = 0;
                  v130 += 24;
                }

                while (v130 != 48);
                v136 = *(v125 + 11);
                v126[96] = v125[96];
                *(v126 + 11) = v136;
                if (v243 < v124)
                {
                  break;
                }

                v137 = (2 * v124) | 1;
                v125 = v245 + 104 * v137;
                if (2 * v124 + 2 < v8)
                {
                  *&v246 = v245 + 104 * v137;
                  *(&v246 + 1) = v125 + 40;
                  *&v247 = v125 + 88;
                  *(&v247 + 1) = v125 + 92;
                  v248 = (v125 + 96);
                  v265 = (v125 + 104);
                  v266 = (v125 + 144);
                  v267 = (v125 + 192);
                  v268 = v125 + 196;
                  v269 = v125 + 200;
                  if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v246, &v265) & 0x80u) != 0)
                  {
                    v125 += 104;
                    v137 = 2 * v124 + 2;
                  }
                }

                *&v246 = v125;
                *(&v246 + 1) = v125 + 40;
                *&v247 = v125 + 88;
                *(&v247 + 1) = v125 + 92;
                v248 = (v125 + 96);
                v265 = &v256;
                v266 = &v259;
                v267 = &v263;
                v268 = &v263 + 4;
                v269 = &v264;
                v126 = v131;
                v124 = v137;
              }

              while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v246, &v265) & 0x80) == 0);
              v138 = 0;
              v139 = v256;
              v140 = v257;
              *(v131 + 4) = v258;
              *v131 = v139;
              *(v131 + 1) = v140;
              do
              {
                v141 = &v131[v138];
                v142 = (&v256 + v138);
                std::vector<std::string>::__vdeallocate(&v131[v138 + 40]);
                *(v141 + 40) = *(&v259 + v138);
                *(v141 + 7) = *(&v260 + v138);
                v142[5] = 0;
                v142[6] = 0;
                v142[7] = 0;
                v138 += 24;
              }

              while (v138 != 48);
              v143 = v263;
              v131[96] = v264;
              *(v131 + 11) = v143;
              for (i = 64; i != 16; i -= 24)
              {
                *&v246 = &v256 + i;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v246);
              }

              v123 = v231;
            }
          }

          v122 = v123 - 1;
        }

        while (v123);
        v145 = 0x4EC4EC4EC4EC4EC5 * ((a2 - v245) >> 3);
        do
        {
          if (v145 >= 2)
          {
            v146 = 0;
            v147 = v245;
            v148 = *v245;
            v149 = v245[1];
            v150 = *(v245 + 4);
            v249 = *(v245 + 40);
            v250 = *(v245 + 7);
            *(v245 + 6) = 0;
            *(v245 + 7) = 0;
            *(v245 + 5) = 0;
            v251 = v245[4];
            v248 = v150;
            v151 = *(v245 + 11);
            v252 = *(v245 + 10);
            *(v245 + 9) = 0;
            *(v245 + 10) = 0;
            *(v245 + 8) = 0;
            v254 = *(v245 + 96);
            v253 = v151;
            v246 = v148;
            v247 = v149;
            do
            {
              v152 = v147 + 104 * v146;
              v153 = (v152 + 104);
              v154 = 2 * v146;
              v146 = (2 * v146) | 1;
              v155 = v154 + 2;
              if (v154 + 2 < v145)
              {
                v156 = (v152 + 208);
                *&v256 = v152 + 104;
                *(&v256 + 1) = v152 + 144;
                *&v257 = v152 + 192;
                *(&v257 + 1) = v152 + 196;
                v258 = (v152 + 200);
                v265 = (v152 + 208);
                v266 = (v152 + 248);
                v267 = (v152 + 296);
                v268 = (v152 + 300);
                v269 = (v152 + 304);
                if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v256, &v265) & 0x80u) != 0)
                {
                  v153 = v156;
                  v146 = v155;
                }
              }

              v157 = 0;
              v158 = *v153;
              v159 = v153[1];
              *(v147 + 4) = *(v153 + 4);
              *v147 = v158;
              v147[1] = v159;
              v160 = (v153 + 40);
              do
              {
                v161 = v147 + v157;
                v162 = (v153 + v157);
                std::vector<std::string>::__vdeallocate((v147 + v157 + 40));
                *(v161 + 40) = *(v153 + v157 + 40);
                *(v161 + 56) = *(v153 + v157 + 56);
                v162[5] = 0;
                v162[6] = 0;
                v162[7] = 0;
                v157 += 24;
              }

              while (v157 != 48);
              v164 = v153 + 11;
              v163 = *(v153 + 11);
              *(v147 + 96) = *(v153 + 96);
              *(v147 + 11) = v163;
              v147 = v153;
            }

            while (v146 <= ((v145 - 2) >> 1));
            if (v153 == (a2 - 104))
            {
              v197 = v246;
              v198 = v247;
              *(v153 + 4) = v248;
              *v153 = v197;
              v153[1] = v198;
              v199 = &v249;
              v200 = 2;
              do
              {
                std::vector<std::string>::__vdeallocate(v160);
                *&v160->__begin_ = *v199;
                v160->__end_cap_.__value_ = *(v199 + 2);
                *v199 = 0;
                *(v199 + 1) = 0;
                *(v199 + 2) = 0;
                v199 = (v199 + 24);
                ++v160;
                --v200;
              }

              while (v200);
              v201 = v253;
              *(v164 + 8) = v254;
              *v164 = v201;
            }

            else
            {
              v165 = 0;
              v166 = *(a2 - 104);
              v167 = *(a2 - 88);
              *(v153 + 4) = *(a2 - 9);
              *v153 = v166;
              v153[1] = v167;
              do
              {
                v168 = v153 + v165;
                v169 = a2 + v165;
                std::vector<std::string>::__vdeallocate((v153 + v165 + 40));
                *(v168 + 40) = *(a2 + v165 - 64);
                *(v168 + 56) = *(a2 + v165 - 48);
                *(v169 - 8) = 0;
                *(v169 - 7) = 0;
                *(v169 - 6) = 0;
                v165 += 24;
              }

              while (v165 != 48);
              v170 = 0;
              v171 = *(a2 - 2);
              *(v153 + 96) = *(a2 - 8);
              *v164 = v171;
              v172 = v246;
              v173 = v247;
              *(a2 - 9) = v248;
              *(a2 - 104) = v172;
              *(a2 - 88) = v173;
              do
              {
                v174 = a2 + v170;
                v175 = (&v246 + v170);
                std::vector<std::string>::__vdeallocate((a2 + v170 - 64));
                *(v174 - 4) = *(&v249 + v170);
                *(v174 - 6) = *(&v250 + v170);
                v175[5] = 0;
                v175[6] = 0;
                v175[7] = 0;
                v170 += 24;
              }

              while (v170 != 48);
              v176 = v253;
              *(a2 - 8) = v254;
              *(a2 - 2) = v176;
              v177 = v153 - v245 + 104;
              if (v177 >= 105)
              {
                v178 = (0x4EC4EC4EC4EC4EC5 * (v177 >> 3) - 2) >> 1;
                v179 = v245 + 104 * v178;
                *&v256 = v179;
                *(&v256 + 1) = v179 + 40;
                *&v257 = v179 + 88;
                *(&v257 + 1) = v179 + 92;
                v258 = v179 + 96;
                v265 = v153;
                v266 = (v153 + 40);
                v267 = (v153 + 88);
                v268 = v153 + 92;
                v269 = (v153 + 6);
                if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v256, &v265) & 0x80) != 0)
                {
                  v180 = *v153;
                  v181 = v153[1];
                  v258 = *(v153 + 4);
                  v256 = v180;
                  v257 = v181;
                  v259 = *(v153 + 40);
                  v260 = *(v153 + 7);
                  v160->__begin_ = 0;
                  *(v153 + 6) = 0;
                  *(v153 + 7) = 0;
                  v261 = v153[4];
                  v262 = *(v153 + 10);
                  *(v153 + 8) = 0;
                  *(v153 + 9) = 0;
                  *(v153 + 10) = 0;
                  v182 = *v164;
                  v264 = *(v153 + 96);
                  v263 = v182;
                  do
                  {
                    v183 = 0;
                    v184 = v179;
                    v185 = *v179;
                    v186 = *(v179 + 1);
                    *(v153 + 4) = *(v179 + 4);
                    *v153 = v185;
                    v153[1] = v186;
                    do
                    {
                      v187 = v153 + v183;
                      v188 = &v179[v183];
                      std::vector<std::string>::__vdeallocate((v153 + v183 + 40));
                      *(v187 + 40) = *&v179[v183 + 40];
                      *(v187 + 56) = *&v179[v183 + 56];
                      *(v188 + 5) = 0;
                      *(v188 + 6) = 0;
                      *(v188 + 7) = 0;
                      v183 += 24;
                    }

                    while (v183 != 48);
                    v189 = *(v179 + 11);
                    *(v153 + 96) = v179[96];
                    *(v153 + 11) = v189;
                    if (!v178)
                    {
                      break;
                    }

                    v178 = (v178 - 1) >> 1;
                    v179 = v245 + 104 * v178;
                    v265 = v179;
                    v266 = (v179 + 40);
                    v267 = (v179 + 88);
                    v268 = v179 + 92;
                    v269 = v179 + 96;
                    v255[0] = &v256;
                    v255[1] = &v259;
                    v255[2] = &v263;
                    v255[3] = &v263 + 4;
                    v255[4] = &v264;
                    v153 = v184;
                  }

                  while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v265, v255) & 0x80) != 0);
                  v190 = 0;
                  v191 = v256;
                  v192 = v257;
                  *(v184 + 4) = v258;
                  *v184 = v191;
                  v184[1] = v192;
                  do
                  {
                    v193 = v184 + v190;
                    v194 = (&v256 + v190);
                    std::vector<std::string>::__vdeallocate((v184 + v190 + 40));
                    *(v193 + 40) = *(&v259 + v190);
                    *(v193 + 56) = *(&v260 + v190);
                    v194[5] = 0;
                    v194[6] = 0;
                    v194[7] = 0;
                    v190 += 24;
                  }

                  while (v190 != 48);
                  v195 = v263;
                  *(v184 + 96) = v264;
                  *(v184 + 11) = v195;
                  for (j = 64; j != 16; j -= 24)
                  {
                    v265 = (&v256 + j);
                    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v265);
                  }
                }
              }
            }

            for (k = 64; k != 16; k -= 24)
            {
              *&v256 = &v246 + k;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v256);
            }
          }

          a2 = (a2 - 104);
        }

        while (v145-- > 2);
      }

      return;
    }

    v9 = v8 >> 1;
    v10 = v245;
    v11 = (v245 + 104 * v9);
    v12 = (v6 - 104);
    v234 = v6 - 13;
    if (v7 < 0x3401)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(v11, v245, v12);
    }

    else
    {
      v238 = a3;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(v245, v11, v12);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>((v245 + 104), (v11 - 104), v6 - 13);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(v245 + 13, (v11 + 104), (v6 - 312));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>((v11 - 104), v11, (v11 + 104));
      v13 = 0;
      v14 = *v245;
      v15 = v245[1];
      v258 = *(v245 + 4);
      v256 = v14;
      v257 = v15;
      v259 = *(v245 + 40);
      v260 = *(v245 + 7);
      v237->__begin_ = 0;
      v237->__end_ = 0;
      v237->__end_cap_.__value_ = 0;
      v261 = v245[4];
      v262 = *(v245 + 10);
      *(v245 + 8) = 0;
      *(v245 + 9) = 0;
      *(v245 + 10) = 0;
      v16 = *v241;
      v264 = v241[8];
      v263 = v16;
      v17 = *v11;
      v18 = v11[1];
      *(v245 + 4) = *(v11 + 4);
      *v245 = v17;
      v245[1] = v18;
      do
      {
        v19 = v245 + v13;
        v20 = v11 + v13;
        std::vector<std::string>::__vdeallocate((v245 + v13 + 40));
        *(v19 + 40) = *(v11 + v13 + 40);
        *(v19 + 7) = *(v11 + v13 + 56);
        *(v20 + 5) = 0;
        *(v20 + 6) = 0;
        *(v20 + 7) = 0;
        v13 += 24;
      }

      while (v13 != 48);
      v21 = 0;
      v22 = *(v11 + 11);
      v241[8] = *(v11 + 96);
      *v241 = v22;
      v23 = v256;
      v24 = v257;
      *(v11 + 4) = v258;
      *v11 = v23;
      v11[1] = v24;
      do
      {
        v25 = v11 + v21;
        v26 = (&v256 + v21);
        std::vector<std::string>::__vdeallocate((v11 + v21 + 40));
        *(v25 + 40) = *(&v259 + v21);
        *(v25 + 7) = *(&v260 + v21);
        v26[5] = 0;
        v26[6] = 0;
        v26[7] = 0;
        v21 += 24;
      }

      while (v21 != 48);
      v27 = v263;
      *(v11 + 96) = v264;
      *(v11 + 11) = v27;
      for (m = 64; m != 16; m -= 24)
      {
        *&v246 = &v256 + m;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v246);
      }

      v6 = a2;
      v10 = v245;
      a3 = v238;
    }

    v239 = a3 - 1;
    if ((a4 & 1) == 0)
    {
      *&v256 = v229;
      *(&v256 + 1) = v228;
      *&v257 = v227;
      *(&v257 + 1) = v226;
      v258 = v225;
      *&v246 = v10;
      *(&v246 + 1) = v237;
      *&v247 = v241;
      *(&v247 + 1) = v224;
      v248 = v223;
      if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v256, &v246) & 0x80) == 0)
      {
        v66 = (v10 + 40);
        v67 = *(v10 + 40);
        v68 = v10[1];
        v69 = *(v10 + 4);
        v256 = *v10;
        v257 = v68;
        v259 = v67;
        v70 = *(v10 + 7);
        v258 = v69;
        v260 = v70;
        *(v10 + 5) = 0;
        *(v10 + 6) = 0;
        *(v10 + 7) = 0;
        v261 = v10[4];
        v262 = *(v10 + 10);
        *(v10 + 9) = 0;
        *(v10 + 10) = 0;
        v71 = *(v10 + 11);
        *(v10 + 8) = 0;
        v242 = v10 + 88;
        v264 = *(v10 + 96);
        v263 = v71;
        *&v246 = &v256;
        *(&v246 + 1) = &v259;
        *&v247 = &v263;
        *(&v247 + 1) = &v263 + 4;
        v248 = &v264;
        v265 = v234;
        v266 = v6 - 4;
        v267 = v6 - 1;
        v268 = v6 - 12;
        v269 = v6 - 8;
        if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v246, &v265) & 0x80) != 0)
        {
          v73 = v10;
          do
          {
            a1 = (v73 + 104);
            *&v246 = &v256;
            *(&v246 + 1) = &v259;
            *&v247 = &v263;
            *(&v247 + 1) = &v263 + 4;
            v248 = &v264;
            v265 = v73 + 13;
            v266 = v73 + 9;
            v267 = v73 + 12;
            v268 = v73 + 196;
            v269 = v73 + 200;
            v74 = std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v246, &v265);
            v73 = a1;
          }

          while ((v74 & 0x80) == 0);
        }

        else
        {
          v72 = v10 + 200;
          do
          {
            a1 = (v72 - 96);
            if (v72 - 96 >= a2)
            {
              break;
            }

            *&v246 = &v256;
            *(&v246 + 1) = &v259;
            *&v247 = &v263;
            *(&v247 + 1) = &v263 + 4;
            v248 = &v264;
            v265 = (v72 - 96);
            v266 = (v72 - 56);
            v267 = (v72 - 8);
            v268 = v72 - 4;
            v269 = v72;
            v72 += 104;
          }

          while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v246, &v265) & 0x80) == 0);
        }

        v75 = a2;
        if (a1 < a2)
        {
          v76 = a2;
          do
          {
            v75 = (v76 - 104);
            *&v246 = &v256;
            *(&v246 + 1) = &v259;
            *&v247 = &v263;
            *(&v247 + 1) = &v263 + 4;
            v248 = &v264;
            v265 = v76 - 13;
            v266 = v76 - 4;
            v267 = v76 - 1;
            v268 = v76 - 12;
            v269 = v76 - 8;
            v77 = std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v246, &v265);
            v76 = v75;
          }

          while (v77 < 0);
        }

        while (a1 < v75)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a1, v75);
          do
          {
            *&v246 = &v256;
            *(&v246 + 1) = &v259;
            v78 = a1 + 9;
            v79 = a1 + 12;
            v80 = a1 + 196;
            v81 = a1 + 200;
            a1 = (a1 + 104);
            *&v247 = &v263;
            *(&v247 + 1) = &v263 + 4;
            v248 = &v264;
            v265 = a1;
            v266 = v78;
            v267 = v79;
            v268 = v80;
            v269 = v81;
          }

          while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v246, &v265) & 0x80) == 0);
          do
          {
            *&v246 = &v256;
            *(&v246 + 1) = &v259;
            v82 = v75 - 4;
            v83 = v75 - 1;
            v84 = v75 - 12;
            v85 = v75 - 8;
            v75 = (v75 - 104);
            *&v247 = &v263;
            *(&v247 + 1) = &v263 + 4;
            v248 = &v264;
            v265 = v75;
            v266 = v82;
            v267 = v83;
            v268 = v84;
            v269 = v85;
          }

          while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v246, &v265) & 0x80) != 0);
        }

        v86 = (a1 - 104);
        if ((a1 - 104) != v245)
        {
          v87 = *v86;
          v88 = *(a1 - 88);
          *(v245 + 4) = *(a1 - 9);
          *v245 = v87;
          v245[1] = v88;
          v89 = a1 - 4;
          v90 = 2;
          do
          {
            std::vector<std::string>::__vdeallocate(v66);
            *&v66->__begin_ = *v89;
            v66->__end_cap_.__value_ = *(v89 + 2);
            *v89 = 0;
            *(v89 + 1) = 0;
            *(v89 + 2) = 0;
            v89 = (v89 + 24);
            ++v66;
            --v90;
          }

          while (v90);
          v91 = *(a1 - 2);
          *(v242 + 8) = *(a1 - 8);
          *v242 = v91;
        }

        v92 = 0;
        v93 = v256;
        v94 = v257;
        *(a1 - 9) = v258;
        *v86 = v93;
        *(a1 - 88) = v94;
        do
        {
          v95 = a1 + v92;
          v96 = (&v256 + v92);
          std::vector<std::string>::__vdeallocate((a1 + v92 - 64));
          *(v95 - 4) = *(&v259 + v92);
          *(v95 - 6) = *(&v260 + v92);
          v96[5] = 0;
          v96[6] = 0;
          v96[7] = 0;
          v92 += 24;
        }

        while (v92 != 48);
        v97 = v263;
        *(a1 - 8) = v264;
        *(a1 - 2) = v97;
        for (n = 64; n != 16; n -= 24)
        {
          *&v246 = &v256 + n;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v246);
        }

        a4 = 0;
        a3 = v239;
        goto LABEL_1;
      }
    }

    v29 = 0;
    v30 = *v10;
    v31 = v10[1];
    v32 = *(v10 + 4);
    v259 = *(v10 + 40);
    v33 = *(v10 + 7);
    v258 = v32;
    v260 = v33;
    v237->__end_ = 0;
    v237->__end_cap_.__value_ = 0;
    v237->__begin_ = 0;
    v261 = v10[4];
    v262 = *(v10 + 10);
    *(v10 + 9) = 0;
    *(v10 + 10) = 0;
    *(v10 + 8) = 0;
    v34 = *v241;
    v264 = v241[8];
    v256 = v30;
    v257 = v31;
    v263 = v34;
    do
    {
      *&v246 = v10 + v29 + 104;
      *(&v246 + 1) = v10 + v29 + 144;
      *&v247 = v10 + v29 + 192;
      *(&v247 + 1) = v10 + v29 + 196;
      v248 = (v10 + v29 + 200);
      v265 = &v256;
      v266 = &v259;
      v267 = &v263;
      v268 = &v263 + 4;
      v269 = &v264;
      v29 += 104;
    }

    while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v246, &v265) & 0x80) != 0);
    v35 = (v10 + v29);
    v36 = v6;
    if ((v10 + v29 - 104) == v10)
    {
      v39 = v6;
      while (v35 < v39)
      {
        v37 = (v39 - 104);
        *&v246 = v39 - 104;
        *(&v246 + 1) = v39 - 4;
        *&v247 = v39 - 1;
        *(&v247 + 1) = v39 - 12;
        v248 = (v39 - 8);
        v265 = &v256;
        v266 = &v259;
        v267 = &v263;
        v268 = &v263 + 4;
        v269 = &v264;
        v40 = std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v246, &v265);
        v39 = v37;
        if (v40 < 0)
        {
          goto LABEL_32;
        }
      }

      v37 = v39;
    }

    else
    {
      do
      {
        v37 = (v36 - 104);
        *&v246 = v36 - 104;
        *(&v246 + 1) = v36 - 4;
        *&v247 = v36 - 1;
        *(&v247 + 1) = v36 - 12;
        v248 = (v36 - 8);
        v265 = &v256;
        v266 = &v259;
        v267 = &v263;
        v268 = &v263 + 4;
        v269 = &v264;
        v38 = std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v246, &v265);
        v36 = v37;
      }

      while ((v38 & 0x80) == 0);
    }

LABEL_32:
    v232 = v35;
    a1 = v35;
    if (v35 < v37)
    {
      v41 = v37;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a1, v41);
        do
        {
          v42 = a1 + 9;
          v43 = a1 + 12;
          v44 = a1 + 196;
          v45 = (a1 + 200);
          a1 = (a1 + 104);
          *&v246 = a1;
          *(&v246 + 1) = v42;
          *&v247 = v43;
          *(&v247 + 1) = v44;
          v248 = v45;
          v265 = &v256;
          v266 = &v259;
          v267 = &v263;
          v268 = &v263 + 4;
          v269 = &v264;
        }

        while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v246, &v265) & 0x80) != 0);
        do
        {
          v46 = v41 - 4;
          v47 = v41 - 1;
          v48 = v41 - 12;
          v49 = (v41 - 8);
          v41 = (v41 - 104);
          *&v246 = v41;
          *(&v246 + 1) = v46;
          *&v247 = v47;
          *(&v247 + 1) = v48;
          v248 = v49;
          v265 = &v256;
          v266 = &v259;
          v267 = &v263;
          v268 = &v263 + 4;
          v269 = &v264;
        }

        while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v246, &v265) & 0x80) == 0);
      }

      while (a1 < v41);
    }

    v50 = a1 - 104;
    v235 = (a1 - 104);
    if ((a1 - 104) != v245)
    {
      v51 = *v50;
      v52 = *(a1 - 88);
      *(v245 + 4) = *(a1 - 9);
      *v245 = v51;
      v245[1] = v52;
      v53 = a1 - 4;
      v54 = v237;
      v55 = 2;
      do
      {
        std::vector<std::string>::__vdeallocate(v54);
        *&v54->__begin_ = *v53;
        v54->__end_cap_.__value_ = *(v53 + 2);
        *v53 = 0;
        *(v53 + 1) = 0;
        *(v53 + 2) = 0;
        v53 = (v53 + 24);
        ++v54;
        --v55;
      }

      while (v55);
      v56 = *(a1 - 2);
      v241[8] = *(a1 - 8);
      *v241 = v56;
      v50 = a1 - 104;
    }

    v57 = 0;
    v58 = v256;
    v59 = v257;
    *(v50 + 4) = v258;
    *v50 = v58;
    *(v50 + 1) = v59;
    do
    {
      v60 = a1 + v57;
      v61 = (&v256 + v57);
      std::vector<std::string>::__vdeallocate((a1 + v57 - 64));
      *(v60 - 4) = *(&v259 + v57);
      *(v60 - 6) = *(&v260 + v57);
      v61[5] = 0;
      v61[6] = 0;
      v61[7] = 0;
      v57 += 24;
    }

    while (v57 != 48);
    v62 = v263;
    *(a1 - 8) = v264;
    *(a1 - 2) = v62;
    for (ii = 64; ii != 16; ii -= 24)
    {
      *&v246 = &v256 + ii;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v246);
    }

    v64 = v232 >= v37;
    a3 = v239;
    if (!v64)
    {
      goto LABEL_52;
    }

    v65 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *>(v245, v235);
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *>(a1, a2))
    {
      if (v65)
      {
        goto LABEL_1;
      }

LABEL_52:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,false>(v245, v235, v239, a4 & 1);
      a4 = 0;
      goto LABEL_1;
    }

    a2 = (a1 - 104);
    if (v65)
    {
      return;
    }
  }

  if (a4)
  {
    if (v245 != v6)
    {
      v100 = v245 + 104;
      if ((v245 + 104) != a2)
      {
        v101 = 0;
        v102 = v245;
        do
        {
          v103 = v100;
          *&v256 = v100;
          *(&v256 + 1) = v102 + 9;
          *&v257 = v102 + 12;
          *(&v257 + 1) = v102 + 196;
          v258 = v102 + 200;
          *&v246 = v102;
          *(&v246 + 1) = v102 + 40;
          *&v247 = v102 + 88;
          *(&v247 + 1) = v102 + 92;
          v248 = v102 + 6;
          if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v256, &v246) & 0x80) != 0)
          {
            v104 = v103[1];
            v105 = *(v103 + 4);
            v256 = *v103;
            v257 = v104;
            v259 = v102[9];
            v106 = *(v102 + 20);
            v258 = v105;
            v260 = v106;
            *(v102 + 19) = 0;
            *(v102 + 20) = 0;
            *(v102 + 18) = 0;
            v261 = *(v102 + 168);
            v262 = *(v102 + 23);
            *(v102 + 21) = 0;
            *(v102 + 22) = 0;
            *(v102 + 23) = 0;
            v107 = *(v102 + 24);
            v264 = *(v102 + 200);
            v233 = v103;
            v236 = v101;
            v108 = v101;
            v263 = v107;
            while (1)
            {
              v109 = v102;
              v110 = v102[1];
              *v103 = *v102;
              v103[1] = v110;
              *(v103 + 4) = *(v102 + 4);
              v111 = v108;
              v112 = 2;
              do
              {
                v113 = v245 + v111;
                std::vector<std::string>::__vdeallocate((v245 + v111 + 144));
                *(v113 + 9) = *(v113 + 40);
                *(v113 + 20) = *(v113 + 7);
                *(v113 + 6) = 0;
                *(v113 + 7) = 0;
                *(v113 + 5) = 0;
                v111 += 24;
                --v112;
              }

              while (v112);
              *(v103 + 11) = *(v109 + 11);
              *(v103 + 96) = *(v109 + 96);
              if (v109 == v245)
              {
                break;
              }

              v102 = (v109 - 104);
              *&v246 = &v256;
              *(&v246 + 1) = &v259;
              *&v247 = &v263;
              *(&v247 + 1) = &v263 + 4;
              v248 = &v264;
              v265 = v109 - 13;
              v266 = v109 - 4;
              v267 = v109 - 1;
              v268 = v109 - 12;
              v269 = v109 - 8;
              v108 -= 104;
              v103 = v109;
              if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v246, &v265) & 0x80) == 0)
              {
                v114 = v109;
                goto LABEL_94;
              }
            }

            v114 = v245;
LABEL_94:
            v115 = 0;
            v116 = v256;
            v117 = v257;
            *(v114 + 4) = v258;
            *v114 = v116;
            v114[1] = v117;
            v103 = v233;
            do
            {
              v118 = v109 + v115;
              v119 = (&v256 + v115);
              std::vector<std::string>::__vdeallocate((v109 + v115 + 40));
              *(v118 + 40) = *(&v259 + v115);
              *(v118 + 56) = *(&v260 + v115);
              v119[5] = 0;
              v119[6] = 0;
              v119[7] = 0;
              v115 += 24;
            }

            while (v115 != 48);
            v120 = v263;
            *(v109 + 96) = v264;
            *(v109 + 11) = v120;
            for (jj = 64; jj != 16; jj -= 24)
            {
              *&v246 = &v256 + jj;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v246);
            }

            v101 = v236;
          }

          v100 = v103 + 104;
          v101 += 104;
          v102 = v103;
        }

        while ((v103 + 104) != a2);
      }
    }
  }

  else if (v245 != v6)
  {
    v204 = v245 + 104;
    if ((v245 + 104) != a2)
    {
      do
      {
        v205 = v204;
        v206 = v245;
        *&v256 = v204;
        *(&v256 + 1) = v245 + 9;
        *&v257 = v245 + 12;
        *(&v257 + 1) = v245 + 196;
        v258 = v245 + 200;
        *&v246 = v245;
        *(&v246 + 1) = v245 + 40;
        *&v247 = v245 + 88;
        *(&v247 + 1) = v245 + 92;
        v248 = v245 + 6;
        if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v256, &v246) & 0x80) != 0)
        {
          v207 = v205[1];
          v208 = *(v205 + 4);
          v256 = *v205;
          v257 = v207;
          v259 = v245[9];
          v209 = *(v245 + 20);
          v258 = v208;
          v260 = v209;
          *(v245 + 19) = 0;
          *(v245 + 20) = 0;
          *(v245 + 18) = 0;
          v261 = *(v245 + 168);
          v262 = *(v245 + 23);
          *(v245 + 21) = 0;
          *(v245 + 22) = 0;
          *(v245 + 23) = 0;
          v210 = *(v245 + 24);
          v264 = *(v245 + 200);
          v240 = v205;
          v263 = v210;
          do
          {
            v211 = 0;
            v212 = v206;
            v213 = v206[1];
            *v205 = *v206;
            v205[1] = v213;
            *(v205 + 4) = *(v206 + 4);
            do
            {
              v214 = v206 + v211;
              std::vector<std::string>::__vdeallocate((v206 + v211 + 144));
              *(v214 + 144) = *(v214 + 40);
              *(v214 + 160) = *(v214 + 56);
              *(v214 + 48) = 0;
              *(v214 + 56) = 0;
              *(v214 + 40) = 0;
              v211 += 24;
            }

            while (v211 != 48);
            v215 = v206 + 88;
            *(v205 + 11) = *(v206 + 11);
            *(v205 + 96) = *(v206 + 96);
            v206 = (v206 - 104);
            *&v246 = &v256;
            *(&v246 + 1) = &v259;
            *&v247 = &v263;
            *(&v247 + 1) = &v263 + 4;
            v248 = &v264;
            v265 = v212 - 13;
            v266 = v212 - 4;
            v267 = v212 - 1;
            v268 = v212 - 12;
            v269 = v212 - 8;
            v205 = v212;
          }

          while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v246, &v265) & 0x80) != 0);
          v216 = 0;
          v217 = v256;
          v218 = v257;
          *(v212 + 4) = v258;
          *v212 = v217;
          v212[1] = v218;
          do
          {
            v219 = v206 + v216;
            v220 = (&v256 + v216);
            std::vector<std::string>::__vdeallocate((v206 + v216 + 144));
            *(v219 + 144) = *(&v259 + v216);
            *(v219 + 160) = *(&v260 + v216);
            v220[5] = 0;
            v220[6] = 0;
            v220[7] = 0;
            v216 += 24;
          }

          while (v216 != 48);
          v221 = v263;
          *(v215 + 8) = v264;
          *v215 = v221;
          for (kk = 64; kk != 16; kk -= 24)
          {
            *&v246 = &v256 + kk;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v246);
          }

          v205 = v240;
        }

        v204 = v205 + 104;
        v245 = v205;
      }

      while ((v205 + 104) != a2);
    }
  }
}

unsigned __int8 *AMCP::write_json_object_array<AMCP::Terminal_Description>(uint64_t a1, char *a2, uint64_t *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  minijson::writer::next_field(a1);
  minijson::writer::write_field_name(a1, v5);
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = *(a1 + 40);
  v18[0] = 1;
  v19 = 0;
  v20 = v7;
  v21 = v6 + 1;
  v8 = *a3;
  if (*a3 != a3[1])
  {
    minijson::writer::next_field(v18);
    v9 = v20;
    v16 = v22;
    v17 = v23;
    LOBYTE(v13) = 0;
    HIDWORD(v13) = 0;
    v14 = v20;
    v15 = v21 + 1;
    std::string::basic_string[abi:ne200100]<0>(buf, "Format");
    if (v25 >= 0)
    {
      v10 = buf;
    }

    else
    {
      v10 = *buf;
    }

    minijson::writer::next_field(&v13);
    minijson::writer::write_field_name(&v13, v10);
    v29 = v16;
    v30 = v17;
    LOBYTE(v26) = 0;
    HIDWORD(v26) = 0;
    v27 = v14;
    v28 = v15 + 1;
    minijson::writer::next_field(&v26);
    minijson::writer::write_field_name(&v26, "SampleRate");
    if ((*v8 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      MEMORY[0x1E12C11E0](v27);
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "null", 4);
    }

    minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v26, "FormatID", (v8 + 8));
    minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v26, "FormatFlags", (v8 + 12));
    minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v26, "BytesPerPacket", (v8 + 16));
    minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v26, "FramesPerPacket", (v8 + 20));
    minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v26, "BytesPerFrame", (v8 + 24));
    minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v26, "ChannelsPerFrame", (v8 + 28));
    minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v26, "BitsPerChannel", (v8 + 32));
    minijson::writer::close(&v26);
    if (v25 < 0)
    {
      operator delete(*buf);
    }

    std::string::basic_string[abi:ne200100]<0>(&v26, "PublishTags");
    AMCP::write_json_array<std::string>(&v13, &v26, v8 + 40);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v26);
    }

    std::string::basic_string[abi:ne200100]<0>(&v26, "SubscribeToTags");
    AMCP::write_json_array<std::string>(&v13, &v26, v8 + 64);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v26);
    }

    AMCP::get_enum_string_bimap<AMCP::Terminal_Source_Mix_Policy>();
    v27 = &v29 + 1;
    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Terminal_Source_Mix_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Terminal_Source_Mix_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Terminal_Source_Mix_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::multi_index_container();
  }

  result = minijson::writer::close(v18);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE6C8E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42, char a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v46 - 240);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a43);
  MEMORY[0x1E12C0F00](&a41);
  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (v44)
  {
    __cxa_free_exception(v43);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v46 - 241));
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~multi_index_container(v45 + 16);
  _Unwind_Resume(a1);
}

unsigned __int8 *minijson::writer::close(unsigned __int8 *this)
{
  if (*(this + 1) != 2)
  {
    v8 = v1;
    v9 = v2;
    v3 = this;
    if (!*(v3 + 1))
    {
      minijson::writer::write_opening_bracket(*v3, *(v3 + 1));
    }

    minijson::writer::write_pretty_print_token(v3, 2);
    v4 = *(v3 + 1);
    if (*v3 == 1)
    {
      v6 = 93;
      v5 = &v6;
    }

    else
    {
      v7 = 125;
      v5 = &v7;
    }

    this = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, 1);
    *(v3 + 1) = 2;
  }

  return this;
}

unsigned __int8 *AMCP::write_json_array<std::string>(uint64_t a1, char *a2, uint64_t a3)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  minijson::writer::next_field(a1);
  minijson::writer::write_field_name(a1, v5);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 40);
  v11[0] = 1;
  v12 = 0;
  v13 = v6;
  v14 = v7 + 1;
  v8 = *a3;
  v9 = *(a3 + 8);
  while (v8 != v9)
  {
    minijson::writer::write_helper<std::string,minijson::default_value_writer<std::string,void>>(v11, 0, v8);
    v8 += 24;
  }

  return minijson::writer::close(v11);
}

uint64_t minijson::writer::write_helper<int,minijson::default_value_writer<int,void>>(uint64_t result, char *a2, unsigned int *a3)
{
  if (*(result + 4) != 2)
  {
    v6 = result;
    minijson::writer::next_field(v6);
    if (a2)
    {
      minijson::writer::write_field_name(v6, a2);
    }

    v7 = *(v6 + 1);
    v8 = *a3;

    JUMPOUT(0x1E12C1200);
  }

  return result;
}

minijson::writer *minijson::writer::write_helper<BOOL,minijson::default_value_writer<BOOL,void>>(minijson::writer *result, char *a2, _BYTE *a3)
{
  if (*(result + 1) != 2)
  {
    v6 = result;
    minijson::writer::next_field(v6);
    if (a2)
    {
      minijson::writer::write_field_name(v6, a2);
    }

    v7 = *(v6 + 1);
    if (*a3 == 1)
    {
      v8 = "true";
      v9 = 4;
    }

    else
    {
      v8 = "false";
      v9 = 5;
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
  }

  return result;
}

void sub_1DE6C9838(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6C9860);
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(*a1 + 8);
  v7 = v6 != 0;
  v8 = *(*a2 + 8);
  if (!v6)
  {
    LOBYTE(v13) = 0;
LABEL_22:
    v9 = v6 == 1819304813;
    v11 = v8 == 1819304813;
    goto LABEL_23;
  }

  v9 = v6 == 1819304813;
  if (v8)
  {
    v10 = v6 == v8;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v15 = v8 != 1819304813 && v6 < v8;
    LOBYTE(v13) = v6 == 1819304813 || v15;
    goto LABEL_22;
  }

  v11 = v8 == 1819304813;
  if (v6 == 1819304813 && v8 == 1819304813)
  {
    v49 = *(v5 + 12);
    LOBYTE(v13) = (v49 & 0x40) == 0;
    if ((*(v4 + 12) & 0x40) != 0)
    {
      v11 = 1;
      v9 = 1;
      v7 = (v49 & 0x40) == 0;
    }

    else
    {
      if ((v49 & 0x40) != 0)
      {
        goto LABEL_53;
      }

      LOBYTE(v13) = 0;
      v7 = 0;
      v11 = 1;
      v9 = 1;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
    v7 = 0;
  }

LABEL_23:
  v17 = !v9 || v7 || !v11;
  if (!v17 && (*(v4 + 12) & 1) != (*(v5 + 12) & 1))
  {
    v13 = *(v5 + 12);
    LOBYTE(v7) = 1;
  }

  if (!v7)
  {
    v18 = *(v4 + 32);
    if (!v18 || ((v19 = *(v5 + 32)) != 0 ? (v20 = v18 == v19) : (v20 = 1), v20))
    {
      v21 = *v4;
      if (*v4 != 0.0 && *v5 != 0.0 && v21 != *v5)
      {
        if (v21 > *v5)
        {
          return 255;
        }

        goto LABEL_52;
      }

      v23 = *(v4 + 28);
      if (v23)
      {
        v24 = *(v5 + 28);
        v10 = v23 == v24;
        v25 = v23 < v24;
        if (!v10 && v24 != 0)
        {
          LOBYTE(v13) = v25;
        }

        if (v13)
        {
          return 255;
        }

        goto LABEL_52;
      }
    }

    else
    {
      LOBYTE(v13) = v18 > v19;
    }
  }

  if (v13)
  {
    return 255;
  }

LABEL_52:
  if (!v8)
  {
    v32 = 0;
    v31 = 0;
LABEL_73:
    v27 = v8 == 1819304813;
    v29 = v6 == 1819304813;
    goto LABEL_74;
  }

LABEL_53:
  v27 = v8 == 1819304813;
  if (v6)
  {
    v28 = v8 == v6;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    v34 = v6 != 1819304813 && v8 < v6;
    v32 = 1;
    v31 = v8 == 1819304813 || v34;
    goto LABEL_73;
  }

  v10 = v6 == 1819304813;
  v29 = v6 == 1819304813;
  if (v10 && v8 == 1819304813)
  {
    v51 = *(v4 + 12);
    v31 = (v51 & 0x40) == 0;
    if ((*(v5 + 12) & 0x40) != 0)
    {
      v29 = 1;
      v27 = 1;
      v32 = (v51 & 0x40) == 0;
    }

    else
    {
      if ((v51 & 0x40) != 0)
      {
        goto LABEL_120;
      }

      v31 = 0;
      v32 = 0;
      v29 = 1;
      v27 = 1;
    }
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

LABEL_74:
  if (v29 && v27 && !v32)
  {
    if ((*(v5 + 12) & 1) == (*(v4 + 12) & 1))
    {
      v38 = v32;
    }

    else
    {
      v31 = *(v4 + 12);
      v38 = 1;
    }

    v37 = v31;
    if (v38)
    {
      goto LABEL_118;
    }
  }

  else
  {
    v37 = v31;
    if (v32)
    {
      goto LABEL_118;
    }
  }

  v39 = *(v5 + 32);
  if (!v39 || (v40 = *(v4 + 32), v41 = v39 == v40, v37 = v39 > v40, !v40) || v41)
  {
    v42 = *v5;
    if (*v5 == 0.0 || ((v37 = v42 > *v4, *v4 != 0.0) ? (v43 = v42 == *v4) : (v43 = 1), v43))
    {
      v44 = *(v5 + 28);
      if (v44)
      {
        v45 = *(v4 + 28);
        v10 = v44 == v45;
        v46 = v44 < v45;
        if (v10 || v45 == 0)
        {
          v48 = v31;
        }

        else
        {
          v48 = v46;
        }

        if (v48)
        {
          return 1;
        }

        goto LABEL_120;
      }

      v37 = v31;
    }
  }

LABEL_118:
  if (v37)
  {
    return 1;
  }

LABEL_120:
  v52 = 0;
  v53 = a1[1];
  v54 = a2[1];
  do
  {
    v55 = _ZNSt3__145__lexicographical_compare_three_way_fast_pathB8ne200100INS_11__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEESA_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EESB_SB_SE_SE_RT1_(*(v53 + v52), *(v53 + v52 + 8), *(v54 + v52), *(v54 + v52 + 8));
    if (v55)
    {
      return (v55 >> 31) | 1u;
    }

    v52 += 24;
  }

  while (v52 != 48);
  v56 = *a1[2];
  v57 = *a2[2];
  if (v56 < v57)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

  if (v56 == v57)
  {
    v58 = *a1[3];
    v59 = *a2[3];
    result = v58 < v59 ? 0xFFFFFFFFLL : 1;
    if (v58 == v59)
    {
      v60 = *a1[4];
      v61 = *a2[4];
      v62 = v60 == v61;
      if (v60 < v61)
      {
        v63 = -1;
      }

      else
      {
        v63 = 1;
      }

      if (v62)
      {
        return 0;
      }

      else
      {
        return v63;
      }
    }
  }

  return result;
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(__int128 *a1, __int128 *a2)
{
  v4 = 0;
  v5 = a1[1];
  v19 = *a1;
  v20 = v5;
  v21 = *(a1 + 4);
  v22 = *(a1 + 40);
  v23 = *(a1 + 7);
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  v24 = a1[4];
  v6 = *(a1 + 10);
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  *(a1 + 10) = 0;
  v27 = *(a1 + 96);
  v8 = a1 + 88;
  v7 = *(a1 + 11);
  v25 = v6;
  v26 = v7;
  v9 = *a2;
  v10 = a2[1];
  *(a1 + 4) = *(a2 + 4);
  *a1 = v9;
  a1[1] = v10;
  do
  {
    v11 = a1 + v4;
    v12 = (a2 + v4);
    std::vector<std::string>::__vdeallocate((a1 + v4 + 40));
    *(v11 + 40) = *(a2 + v4 + 40);
    *(v11 + 56) = *(a2 + v4 + 56);
    v12[5] = 0;
    v12[6] = 0;
    v12[7] = 0;
    v4 += 24;
  }

  while (v4 != 48);
  v13 = 0;
  v14 = *(a2 + 11);
  *(v8 + 8) = *(a2 + 96);
  *v8 = v14;
  v15 = v20;
  *a2 = v19;
  a2[1] = v15;
  *(a2 + 4) = v21;
  do
  {
    v16 = a2 + v13;
    v17 = (&v19 + v13);
    std::vector<std::string>::__vdeallocate((a2 + v13 + 40));
    *(v16 + 40) = *(&v22 + v13);
    *(v16 + 56) = *(&v23 + v13);
    v17[6] = 0;
    v17[7] = 0;
    v17[5] = 0;
    v13 += 24;
  }

  while (v13 != 48);
  *(a2 + 11) = v26;
  *(a2 + 96) = v27;
  for (i = 64; i != 16; i -= 24)
  {
    v28 = (&v19 + i);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
  }
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v21 = a2;
  v22 = a2 + 40;
  v15 = a2 + 40;
  v16 = a1;
  v6 = a2 + 88;
  v7 = a2 + 92;
  v8 = a2 + 6;
  v23 = a2 + 88;
  v24 = a2 + 92;
  v25 = a2 + 6;
  v13 = a1 + 88;
  v14 = a1 + 40;
  v17 = a1 + 40;
  v18 = a1 + 88;
  v11 = a1 + 6;
  v12 = a1 + 92;
  v19 = a1 + 92;
  v20 = a1 + 6;
  if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v21, &v16) & 0x80) != 0)
  {
    v21 = a3;
    v22 = a3 + 40;
    v23 = a3 + 88;
    v24 = a3 + 92;
    v25 = a3 + 6;
    v16 = a2;
    v17 = v15;
    v18 = v6;
    v19 = v7;
    v20 = v8;
    if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v21, &v16) & 0x80) != 0)
    {
      v9 = a1;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a1, a2);
      v21 = a3;
      v22 = a3 + 40;
      v23 = a3 + 88;
      v24 = a3 + 92;
      v25 = a3 + 6;
      v16 = a2;
      v17 = v15;
      v18 = v6;
      v19 = v7;
      v20 = v8;
      if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v21, &v16) & 0x80) == 0)
      {
        return;
      }

      v9 = a2;
    }

    v10 = a3;
  }

  else
  {
    v21 = a3;
    v22 = a3 + 40;
    v23 = a3 + 88;
    v24 = a3 + 92;
    v25 = a3 + 6;
    v16 = a2;
    v17 = v15;
    v18 = v6;
    v19 = v7;
    v20 = v8;
    if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v21, &v16) & 0x80) == 0)
    {
      return;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a2, a3);
    v21 = a2;
    v22 = v15;
    v23 = v6;
    v24 = v7;
    v25 = v8;
    v16 = a1;
    v17 = v14;
    v18 = v13;
    v19 = v12;
    v20 = v11;
    if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v21, &v16) & 0x80) == 0)
    {
      return;
    }

    v9 = a1;
    v10 = a2;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(v9, v10);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(a1, a2, a3);
  v13 = a4;
  v14 = a4 + 40;
  v15 = a4 + 88;
  v16 = a4 + 92;
  v17 = a4 + 6;
  v8 = a3;
  v9 = a3 + 40;
  v10 = a3 + 88;
  v11 = a3 + 92;
  v12 = a3 + 6;
  if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v13, &v8) & 0x80) != 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a3, a4);
    v13 = a3;
    v14 = a3 + 40;
    v15 = a3 + 88;
    v16 = a3 + 92;
    v17 = a3 + 6;
    v8 = a2;
    v9 = a2 + 40;
    v10 = a2 + 88;
    v11 = a2 + 92;
    v12 = a2 + 6;
    if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v13, &v8) & 0x80) != 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a2, a3);
      v13 = a2;
      v14 = a2 + 40;
      v15 = a2 + 88;
      v16 = a2 + 92;
      v17 = a2 + 6;
      v8 = a1;
      v9 = a1 + 40;
      v10 = a1 + 88;
      v11 = a1 + 92;
      v12 = a1 + 6;
      if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v13, &v8) & 0x80) != 0)
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a1, a2);
      }
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(a1, a2, a3, a4);
  v15 = a5;
  v16 = a5 + 40;
  v17 = a5 + 88;
  v18 = a5 + 92;
  v19 = a5 + 6;
  v10 = a4;
  v11 = a4 + 40;
  v12 = a4 + 88;
  v13 = a4 + 92;
  v14 = a4 + 6;
  if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v15, &v10) & 0x80) != 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a4, a5);
    v15 = a4;
    v16 = a4 + 40;
    v17 = a4 + 88;
    v18 = a4 + 92;
    v19 = a4 + 6;
    v10 = a3;
    v11 = a3 + 40;
    v12 = a3 + 88;
    v13 = a3 + 92;
    v14 = a3 + 6;
    if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v15, &v10) & 0x80) != 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a3, a4);
      v15 = a3;
      v16 = a3 + 40;
      v17 = a3 + 88;
      v18 = a3 + 92;
      v19 = a3 + 6;
      v10 = a2;
      v11 = a2 + 40;
      v12 = a2 + 88;
      v13 = a2 + 92;
      v14 = a2 + 6;
      if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v15, &v10) & 0x80) != 0)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a2, a3);
        v15 = a2;
        v16 = a2 + 40;
        v17 = a2 + 88;
        v18 = a2 + 92;
        v19 = a2 + 6;
        v10 = a1;
        v11 = a1 + 40;
        v12 = a1 + 88;
        v13 = a1 + 92;
        v14 = a1 + 6;
        if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v15, &v10) & 0x80) != 0)
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *>(__int128 *a1, __int128 *a2)
{
  v2 = a2;
  v4 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        *&v33 = a2 - 104;
        *(&v33 + 1) = a2 - 4;
        *&v34 = a2 - 1;
        *(&v34 + 1) = a2 - 12;
        v35 = (a2 - 8);
        v43 = a1;
        v44 = (a1 + 40);
        v45 = a1 + 11;
        v46 = a1 + 92;
        v47 = (a1 + 6);
        if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v33, &v43) & 0x80) != 0)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a1, (v2 - 104));
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(a1, (a1 + 104), (a2 - 104));
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(a1, (a1 + 104), a1 + 13, (a2 - 104));
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(a1, (a1 + 104), a1 + 13, (a1 + 312), (a2 - 104));
      return 1;
  }

LABEL_11:
  v5 = a1 + 13;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(a1, (a1 + 104), a1 + 13);
  v6 = (a1 + 312);
  if ((a1 + 312) == v2)
  {
    return 1;
  }

  v7 = 0;
  v8 = 0;
  v30 = v2;
  while (1)
  {
    *&v33 = v6;
    *(&v33 + 1) = v6 + 40;
    *&v34 = v6 + 88;
    *(&v34 + 1) = v6 + 92;
    v35 = v6 + 6;
    v43 = v5;
    v44 = (v5 + 40);
    v45 = v5 + 11;
    v46 = v5 + 92;
    v47 = (v5 + 6);
    if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v33, &v43) & 0x80) != 0)
    {
      v31 = v8;
      v9 = v6[1];
      v33 = *v6;
      v34 = v9;
      v35 = *(v6 + 4);
      v36 = *(v6 + 40);
      v37 = *(v6 + 7);
      *(v6 + 6) = 0;
      *(v6 + 7) = 0;
      *(v6 + 5) = 0;
      v38 = v6[4];
      v39 = *(v6 + 10);
      *(v6 + 8) = 0;
      *(v6 + 9) = 0;
      *(v6 + 10) = 0;
      v10 = *(v6 + 11);
      v41 = *(v6 + 96);
      v32 = v7;
      v11 = v7;
      v12 = v6;
      v40 = v10;
      while (1)
      {
        v13 = v5;
        v14 = v11;
        v15 = v5[1];
        *v12 = *v5;
        v12[1] = v15;
        *(v12 + 4) = *(v5 + 4);
        v16 = v11;
        v17 = 2;
        do
        {
          v18 = a1 + v16;
          std::vector<std::string>::__vdeallocate((a1 + v16 + 352));
          *(v18 + 352) = *(v18 + 248);
          *(v18 + 368) = *(v18 + 264);
          *(v18 + 256) = 0;
          *(v18 + 264) = 0;
          *(v18 + 248) = 0;
          v16 += 24;
          --v17;
        }

        while (v17);
        v19 = v13 + 88;
        *(v12 + 11) = *(v13 + 11);
        *(v12 + 96) = *(v13 + 96);
        if (v13 == a1)
        {
          break;
        }

        v5 = (v13 - 104);
        v43 = &v33;
        v44 = &v36;
        v45 = &v40;
        v46 = &v40 + 4;
        v47 = &v41;
        v42[0] = v13 - 104;
        v42[1] = (v13 - 4);
        v42[2] = (v13 - 1);
        v42[3] = v13 - 12;
        v42[4] = v13 - 8;
        v20 = std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v43, v42);
        v11 = v14 - 104;
        v12 = v13;
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_21;
        }
      }

      v13 = a1;
LABEL_21:
      v21 = 0;
      v22 = v33;
      v23 = v34;
      *(v13 + 4) = v35;
      *v13 = v22;
      v13[1] = v23;
      v24 = a1 + v14;
      do
      {
        v25 = v24 + v21;
        v26 = (&v33 + v21);
        std::vector<std::string>::__vdeallocate((v24 + v21 + 248));
        *(v25 + 248) = *(&v36 + v21);
        *(v25 + 264) = *(&v37 + v21);
        v26[6] = 0;
        v26[7] = 0;
        v26[5] = 0;
        v21 += 24;
      }

      while (v21 != 48);
      v27 = v40;
      *(v19 + 8) = v41;
      *v19 = v27;
      v8 = v31 + 1;
      v28 = 64;
      v7 = v32;
      do
      {
        v43 = (&v33 + v28);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v43);
        v28 -= 24;
      }

      while (v28 != 16);
      v2 = v30;
      if (v31 == 7)
      {
        return (v6 + 104) == v30;
      }
    }

    v5 = v6;
    v7 += 104;
    v6 = (v6 + 104);
    if (v6 == v2)
    {
      return 1;
    }
  }
}

uint64_t _ZNSt3__145__lexicographical_compare_three_way_fast_pathB8ne200100INS_11__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEESA_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EESB_SB_SE_SE_RT1_(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  v5 = (a4 - a3) >> 3;
  v6 = 0xAAAAAAAAAAAAAAABLL * v5;
  if ((0xAAAAAAAAAAAAAAABLL * v5) >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * v5;
  }

  if (v7 < 1)
  {
LABEL_8:
    if (v4 < v6)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    if (v4 == v6)
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
    v8 = a3;
    v9 = a1;
    while (1)
    {
      result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v9, v8);
      if (result)
      {
        break;
      }

      v9 += 3;
      v8 += 3;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }
  }

  return result;
}

void sub_1DE6CAD70(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CAD98);
}

void sub_1DE6CB488(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CB4B0);
}

void sub_1DE6CBBA0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CBBC8);
}

void sub_1DE6CC2B8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CC2E0);
}

void AMCP::write_json_object<AMCP::Terminal_Identifier>(uint64_t a1, char *a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x1E69E9840];
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  minijson::writer::next_field(a1);
  minijson::writer::write_field_name(a1, v5);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 40);
  LOBYTE(v8) = 0;
  HIDWORD(v8) = 0;
  v9 = v6;
  v10 = v7 + 1;
  minijson::writer::write_helper<std::string,minijson::default_value_writer<std::string,void>>(&v8, "node", a3);
  if (HIDWORD(v8) != 2)
  {
    minijson::writer::next_field(&v8);
    minijson::writer::write_field_name(&v8, "terminal_index");
    MEMORY[0x1E12C1220](v9, *(a3 + 24));
  }

  AMCP::get_enum_string_bimap<AMCP::Direction>();
  v13 = v14;
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Direction,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::multi_index_container();
}

void sub_1DE6CC700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, char a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v40 - 192);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a37);
  MEMORY[0x1E12C0F00](&a35);
  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (v39)
  {
    __cxa_free_exception(v37);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v40 - 193));
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~multi_index_container(v38 + 16);
  _Unwind_Resume(a1);
}

void AMCP::enum_to_string<AMCP::Resampler_Type>()
{
  v1[4] = *MEMORY[0x1E69E9840];
  AMCP::get_enum_string_bimap<AMCP::Resampler_Type>();
  v0 = v1;
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::multi_index_container();
}

void sub_1DE6CCAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(&a35);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v37)
  {
    __cxa_free_exception(v35);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a34);
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~multi_index_container(v36 + 16);
  _Unwind_Resume(a1);
}

void AMCP::enum_to_string<AMCP::Resampler_Quality>()
{
  v1[4] = *MEMORY[0x1E69E9840];
  AMCP::get_enum_string_bimap<AMCP::Resampler_Quality>();
  v0 = v1;
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Quality,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::multi_index_container();
}

void sub_1DE6CCEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(&a35);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v37)
  {
    __cxa_free_exception(v35);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a34);
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~multi_index_container(v36 + 16);
  _Unwind_Resume(a1);
}

void sub_1DE6CD668(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CD690);
}

void sub_1DE6CDD80(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CDDA8);
}

void sub_1DE6CE498(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CE4C0);
}

void sub_1DE6CEBB0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CEBD8);
}

void sub_1DE6CF2C8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CF2F0);
}

void sub_1DE6CF9E0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CFA08);
}

void sub_1DE6D00F8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6D0120);
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~multi_index_container(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 56);
  if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL) - 56;
  }

  else
  {
    v3 = 0;
  }

  boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<std::string>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::delete_all_nodes(v3);
  operator delete(*(a1 + 8));
  return a1;
}

void boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<std::string>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::delete_all_nodes(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      v3 = v2 - 56;
    }

    else
    {
      v3 = 0;
    }

    boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<std::string>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::delete_all_nodes(v3);
    v4 = *(a1 + 72);
    if (v4)
    {
      v5 = v4 - 56;
    }

    else
    {
      v5 = 0;
    }

    boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<std::string>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::delete_all_nodes(v5);
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    operator delete(a1);
  }
}

void AMCP::write_json(uint64_t a1, uint64_t *a2)
{
  v38[4] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = 0;
  v24 = 0;
  std::vector<AMCP::Node_Description>::__init_with_size[abi:ne200100]<AMCP::Node_Description*,AMCP::Node_Description*>(&v22, *a2, a2[1], 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 3));
  v4 = 126 - 2 * __clz(0xEEEEEEEEEEEEEEEFLL * ((v23 - v22) >> 3));
  if (v23 == v22)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,false>(v22, v23, v5, 1);
  p_p = &__p;
  std::string::basic_string[abi:ne200100]<0>(&__p, "nodes");
  v16 = a2;
  if (v21 < 0)
  {
    p_p = __p;
  }

  minijson::writer::next_field(a1);
  minijson::writer::write_field_name(a1, p_p);
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v35 = *(a1 + 24);
  v36 = *(a1 + 40);
  v31[0] = 1;
  v32 = 0;
  v33 = v8;
  v34 = v7 + 1;
  if (v22 != v23)
  {
    minijson::writer::next_field(v31);
    v29 = v35;
    v30 = v36;
    v25[0] = 0;
    v26 = 0;
    v27 = v33;
    v28 = v34 + 1;
    AMCP::get_enum_string_bimap<AMCP::Node_Type>();
    v37[1] = v38;
    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::multi_index_container();
  }

  minijson::writer::close(v31);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v20 = 0;
  v21 = 0;
  std::vector<AMCP::Wire_Description>::__init_with_size[abi:ne200100]<AMCP::Wire_Description*,AMCP::Wire_Description*>(&__p, v16[3], v16[4], 0xAAAAAAAAAAAAAAABLL * ((v16[4] - v16[3]) >> 6));
  v9 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v20 - __p) >> 6));
  if (v20 == __p)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,false>(__p, v20, v10, 1);
  v11 = &v17;
  std::string::basic_string[abi:ne200100]<0>(&v17, "wires");
  if (v18 < 0)
  {
    v11 = v17.__vftable;
  }

  minijson::writer::next_field(a1);
  minijson::writer::write_field_name(a1, v11);
  v13 = *(a1 + 8);
  v12 = *(a1 + 16);
  v35 = *(a1 + 24);
  v36 = *(a1 + 40);
  v31[0] = 1;
  v32 = 0;
  v33 = v13;
  v34 = v12 + 1;
  v14 = __p;
  if (__p != v20)
  {
    minijson::writer::next_field(v31);
    v29 = v35;
    v30 = v36;
    v25[0] = 0;
    v26 = 0;
    v27 = v33;
    v28 = v34 + 1;
    std::string::basic_string[abi:ne200100]<0>(v37, "Source");
    AMCP::write_json_object<AMCP::Terminal_Identifier>(v25, v37, v14);
  }

  minijson::writer::close(v31);
  if (v18 < 0)
  {
    operator delete(v17.__vftable);
  }

  v37[0] = &__p;
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](v37);
  v37[0] = &v22;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](v37);
  v15 = *MEMORY[0x1E69E9840];
}